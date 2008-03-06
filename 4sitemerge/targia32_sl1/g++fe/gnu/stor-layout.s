	.file	"stor-layout.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl set_alignment
	.bss
	.align 4
	.type	set_alignment, @object
	.size	set_alignment, 4
set_alignment:
	.zero	4
	.local	reference_types_internal
	.comm	reference_types_internal,4,4
	.text
.globl internal_reference_types
	.type	internal_reference_types, @function
internal_reference_types:
.LFB15:
	.file 1 "../../../kg++fe/gnu/stor-layout.c"
	.loc 1 92 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 93 0
	movl	$1, reference_types_internal@GOTOFF(%ecx)
	.loc 1 94 0
	popl	%ebp
	ret
.LFE15:
	.size	internal_reference_types, .-internal_reference_types
.globl get_pending_sizes
	.type	get_pending_sizes, @function
get_pending_sizes:
.LFB16:
	.loc 1 100 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	subl	$16, %esp
.LCFI4:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 101 0
	movl	pending_sizes@GOTOFF(%ecx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 105 0
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L4
.L5:
	.loc 1 106 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, 24(%edx)
	.loc 1 105 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L4:
	cmpl	$0, -4(%ebp)
	jne	.L5
	.loc 1 108 0
	movl	$0, pending_sizes@GOTOFF(%ecx)
	.loc 1 109 0
	movl	-8(%ebp), %eax
	.loc 1 110 0
	leave
	ret
.LFE16:
	.size	get_pending_sizes, .-get_pending_sizes
.globl is_pending_size
	.type	is_pending_size, @function
is_pending_size:
.LFB17:
	.loc 1 117 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 120 0
	movl	pending_sizes@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L10:
	.loc 1 121 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L11
	.loc 1 122 0
	movl	$1, -20(%ebp)
	jmp	.L13
.L11:
	.loc 1 120 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L9:
	cmpl	$0, -4(%ebp)
	jne	.L10
	.loc 1 123 0
	movl	$0, -20(%ebp)
.L13:
	movl	-20(%ebp), %eax
	.loc 1 124 0
	leave
	ret
.LFE17:
	.size	is_pending_size, .-is_pending_size
.globl put_pending_size
	.type	put_pending_size, @function
put_pending_size:
.LFB18:
	.loc 1 131 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 134 0
	jmp	.L17
.L18:
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L17:
	.loc 1 134 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L18
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	jne	.L20
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L18
.L20:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L24
	.loc 1 140 0
	movl	pending_sizes@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, pending_sizes@GOTOFF(%ebx)
.L24:
	.loc 1 141 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	put_pending_size, .-put_pending_size
	.section	.rodata
	.type	__FUNCTION__.12338, @object
	.size	__FUNCTION__.12338, 18
__FUNCTION__.12338:
	.string	"put_pending_sizes"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/stor-layout.c"
	.text
.globl put_pending_sizes
	.type	put_pending_sizes, @function
put_pending_sizes:
.LFB19:
	.loc 1 149 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 150 0
	movl	pending_sizes@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L26
	.loc 1 151 0
	leal	__FUNCTION__.12338@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$151, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L26:
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	%eax, pending_sizes@GOTOFF(%ebx)
	.loc 1 154 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	put_pending_sizes, .-put_pending_sizes
	.section	.rodata
	.align 4
.LC1:
	.string	"type size can't be explicitly evaluated"
	.align 4
.LC2:
	.string	"variable-size type declared outside of any function"
	.text
.globl variable_size
	.type	variable_size, @function
variable_size:
.LFB20:
	.loc 1 162 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$20, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 167 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L30
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	js	.L30
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	je	.L33
.L30:
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L33:
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
	.loc 1 182 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L35
	.loc 1 183 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L35:
	.loc 1 185 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L37
	.loc 1 187 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L39
	.loc 1 188 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L41
.L39:
	.loc 1 190 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L41:
	.loc 1 192 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L37:
	.loc 1 195 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 198 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	jmp	.L44
.L42:
	.loc 1 200 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L45
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L45
	jmp	.L44
.L45:
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_pending_size@PLT
.L44:
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L34:
	movl	-8(%ebp), %eax
	.loc 1 208 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	variable_size, .-variable_size
.globl mode_for_size
	.type	mode_for_size, @function
mode_for_size:
.LFB21:
	.loc 1 224 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	subl	$24, %esp
.LCFI22:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 227 0
	cmpl	$0, 16(%ebp)
	je	.L50
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L52
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L54
.L52:
	movl	$128, -24(%ebp)
	jmp	.L55
.L54:
	movl	$64, -24(%ebp)
.L55:
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jae	.L50
	.loc 1 228 0
	movl	$52, -20(%ebp)
	jmp	.L57
.L50:
	.loc 1 231 0
	movl	12(%ebp), %eax
	movl	class_narrowest_mode@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -4(%ebp)
	jmp	.L58
.L59:
	.loc 1 233 0
	movl	-4(%ebp), %edx
	movl	mode_bitsize@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	8(%ebp), %eax
	jne	.L60
	.loc 1 234 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L57
.L60:
	.loc 1 232 0
	movl	-4(%ebp), %edx
	movl	mode_wider_mode@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
.L58:
	.loc 1 231 0
	cmpl	$0, -4(%ebp)
	jne	.L59
	.loc 1 236 0
	movl	$52, -20(%ebp)
.L57:
	movl	-20(%ebp), %eax
	.loc 1 237 0
	leave
	ret
.LFE21:
	.size	mode_for_size, .-mode_for_size
.globl mode_for_size_tree
	.type	mode_for_size_tree, @function
mode_for_size_tree:
.LFB22:
	.loc 1 246 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$20, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 247 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L65
	movl	$1000, 4(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L67
.L65:
	.loc 1 252 0
	movl	$52, -8(%ebp)
	jmp	.L68
.L67:
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -8(%ebp)
.L68:
	movl	-8(%ebp), %eax
	.loc 1 255 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	mode_for_size_tree, .-mode_for_size_tree
	.section	.rodata
	.type	__FUNCTION__.12436, @object
	.size	__FUNCTION__.12436, 23
__FUNCTION__.12436:
	.string	"smallest_mode_for_size"
	.text
.globl smallest_mode_for_size
	.type	smallest_mode_for_size, @function
smallest_mode_for_size:
.LFB23:
	.loc 1 264 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$36, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 269 0
	movl	12(%ebp), %eax
	movl	class_narrowest_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L71
.L72:
	.loc 1 271 0
	movl	-8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	8(%ebp), %eax
	jb	.L73
	.loc 1 272 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L70
.L73:
	.loc 1 270 0
	movl	-8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L71:
	.loc 1 269 0
	cmpl	$0, -8(%ebp)
	jne	.L72
	.loc 1 274 0
	leal	__FUNCTION__.12436@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$274, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L70:
	.loc 1 275 0
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	smallest_mode_for_size, .-smallest_mode_for_size
	.section	.rodata
	.type	__FUNCTION__.12461, @object
	.size	__FUNCTION__.12461, 18
__FUNCTION__.12461:
	.string	"int_mode_for_mode"
	.text
.globl int_mode_for_mode
	.type	int_mode_for_mode, @function
int_mode_for_mode:
.LFB24:
	.loc 1 282 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$20, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 283 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -8(%ebp)
	cmpl	$8, -8(%ebp)
	ja	.L78
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-8(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	$10, %eax
	testl	%eax, %eax
	jne	.L82
	movl	-12(%ebp), %eax
	andl	$484, %eax
	testl	%eax, %eax
	jne	.L81
	movl	-12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L79
	jmp	.L78
.L81:
	.loc 1 294 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%ebp)
	.loc 1 295 0
	jmp	.L82
.L79:
	.loc 1 298 0
	cmpl	$52, 8(%ebp)
	je	.L82
.L78:
	.loc 1 305 0
	leal	__FUNCTION__.12461@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$305, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L82:
	.loc 1 308 0
	movl	8(%ebp), %eax
	.loc 1 309 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	int_mode_for_mode, .-int_mode_for_mode
.globl get_mode_alignment
	.type	get_mode_alignment, @function
get_mode_alignment:
.LFB25:
	.loc 1 317 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L85
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$5, %eax
	jne	.L87
.L85:
	.loc 1 322 0
	movl	8(%ebp), %edx
	movl	mode_unit_size@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 1 320 0
	jmp	.L88
.L87:
	.loc 1 324 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
.L88:
	.loc 1 327 0
	movl	-4(%ebp), %eax
	negl	%eax
	andl	%eax, -4(%ebp)
	.loc 1 328 0
	sall	$3, -4(%ebp)
	.loc 1 330 0
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L89
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L91
.L89:
	movl	$128, -32(%ebp)
	jmp	.L92
.L91:
	movl	$64, -32(%ebp)
.L92:
	cmpl	$0, -4(%ebp)
	je	.L93
	movl	-4(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L95
.L93:
	movl	$1, -28(%ebp)
.L95:
	movl	-28(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jae	.L96
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L98
	movl	mips_abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L100
.L98:
	movl	$128, -24(%ebp)
	jmp	.L101
.L100:
	movl	$64, -24(%ebp)
.L101:
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L102
.L96:
	cmpl	$0, -4(%ebp)
	je	.L103
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L105
.L103:
	movl	$1, -20(%ebp)
.L105:
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L102:
	movl	-36(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 331 0
	movl	-4(%ebp), %eax
	.loc 1 332 0
	leave
	ret
.LFE25:
	.size	get_mode_alignment, .-get_mode_alignment
.globl round_up
	.type	round_up, @function
round_up:
.LFB26:
	.loc 1 341 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_type_wide@PLT
	movl	%eax, -8(%ebp)
	.loc 1 344 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	.loc 1 345 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	round_up, .-round_up
.globl round_down
	.type	round_down, @function
round_down:
.LFB27:
	.loc 1 353 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_type_wide@PLT
	movl	%eax, -8(%ebp)
	.loc 1 356 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	.loc 1 357 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	round_down, .-round_down
	.section	.rodata
	.type	__FUNCTION__.12547, @object
	.size	__FUNCTION__.12547, 12
__FUNCTION__.12547:
	.string	"layout_decl"
.LC3:
	.string	"size of `%s' is %d bytes"
	.align 4
.LC4:
	.string	"size of `%s' is larger than %d bytes"
	.text
.globl layout_decl
	.type	layout_decl, @function
layout_decl:
.LFB28:
	.loc 1 376 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$84, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 378 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 379 0
	movl	$0, -20(%ebp)
	.loc 1 381 0
	cmpl	$33, -24(%ebp)
	je	.L189
	.loc 1 383 0
	cmpl	$35, -24(%ebp)
	je	.L114
	cmpl	$36, -24(%ebp)
	je	.L114
	cmpl	$37, -24(%ebp)
	je	.L114
	cmpl	$34, -24(%ebp)
	je	.L114
	cmpl	$38, -24(%ebp)
	je	.L114
	.loc 1 385 0
	leal	__FUNCTION__.12547@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$385, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L114:
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L120
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L122
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L124
.L122:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -60(%ebp)
.L124:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L125
.L120:
	movl	$0, -64(%ebp)
.L125:
	movl	-64(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 389 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L126
	.loc 1 390 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -28(%ebp)
.L126:
	.loc 1 402 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 403 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	jne	.L128
	.loc 1 404 0
	movl	-28(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 32(%eax)
.L128:
	.loc 1 406 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L130
	.loc 1 408 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 409 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	jmp	.L132
.L130:
	.loc 1 412 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
.L132:
	.loc 1 419 0
	cmpl	$38, -24(%ebp)
	jne	.L133
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L135
.L133:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	testl	%eax, %eax
	je	.L136
	cmpl	$38, -24(%ebp)
	jne	.L138
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L135
.L138:
	movl	-28(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	cmpl	%eax, %edx
	jbe	.L135
.L136:
	.loc 1 424 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 425 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	movb	%al, 37(%edx)
.L135:
	.loc 1 429 0
	cmpl	$38, -24(%ebp)
	jne	.L140
	.loc 1 431 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L142
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L144
.L142:
	movl	$0, -56(%ebp)
.L144:
	movl	8(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%edx, 64(%eax)
	.loc 1 432 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L145
	.loc 1 433 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jbe	.L147
	movl	-52(%ebp), %edx
	movl	%edx, -48(%ebp)
.L147:
	movl	-48(%ebp), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	jmp	.L140
.L145:
	.loc 1 439 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L140
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L149
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L149
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L140
.L149:
	.loc 1 444 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -44(%ebp)
	cmpl	$8, -44(%ebp)
	jle	.L152
	movl	$8, -44(%ebp)
.L152:
	movl	-44(%ebp), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 445 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	movb	%al, 37(%edx)
.L140:
	.loc 1 452 0
	cmpl	$38, -24(%ebp)
	jne	.L153
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L153
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L153
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L153
	movl	-28(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L153
.LBB2:
	.loc 1 458 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size_tree@PLT
	movl	%eax, -16(%ebp)
	.loc 1 460 0
	cmpl	$52, -16(%ebp)
	je	.L153
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	12(%ebp), %eax
	ja	.L153
	.loc 1 462 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	cmpl	%eax, %edx
	jbe	.L161
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, %edx
	andl	$16777215, %edx
	movl	%edx, -40(%ebp)
	jmp	.L163
.L161:
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	andl	$16777215, %edx
	movl	%edx, -40(%ebp)
.L163:
	movl	8(%ebp), %edx
	movl	-40(%ebp), %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 464 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 32(%eax)
	.loc 1 465 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-17, %eax
	movb	%al, 33(%edx)
.L153:
.LBE2:
	.loc 1 470 0
	cmpl	$38, -24(%ebp)
	jne	.L164
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L164
	movl	-28(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L164
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	cmpb	$52, %al
	jne	.L164
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	12(%ebp), %eax
	ja	.L164
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jb	.L164
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L164
	.loc 1 475 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 33(%eax)
.L164:
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L172
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L172
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	variable_size@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
.L172:
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L175
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L175
	.loc 1 482 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	variable_size@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
.L175:
	.loc 1 485 0
	movl	warn_larger_than@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L178
	cmpl	$35, -24(%ebp)
	je	.L180
	cmpl	$36, -24(%ebp)
	jne	.L178
.L180:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L178
.LBB3:
	.loc 1 489 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 491 0
	cmpl	$0, -12(%ebp)
	je	.L178
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L178
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L178
.LBB4:
	.loc 1 494 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 496 0
	movl	-8(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jne	.L186
	.loc 1 497 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L178
.L186:
	.loc 1 499 0
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L178:
.LBE4:
.LBE3:
	.loc 1 505 0
	cmpl	$0, -20(%ebp)
	je	.L189
	.loc 1 507 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	-20(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 508 0
	movl	8(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 509 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 510 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 104(%edx)
.L189:
	.loc 1 512 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	layout_decl, .-layout_decl
.globl lang_adjust_rli
	.bss
	.align 4
	.type	lang_adjust_rli, @object
	.size	lang_adjust_rli, 4
lang_adjust_rli:
	.zero	4
	.text
.globl set_lang_adjust_rli
	.type	set_lang_adjust_rli, @function
set_lang_adjust_rli:
.LFB29:
	.loc 1 522 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 523 0
	movl	lang_adjust_rli@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 524 0
	popl	%ebp
	ret
.LFE29:
	.size	set_lang_adjust_rli, .-set_lang_adjust_rli
	.type	assign_field_ids, @function
assign_field_ids:
.LFB30:
	.loc 1 531 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	subl	$24, %esp
.LCFI54:
	.loc 1 536 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L203
	.loc 1 538 0
	movl	$1, -8(%ebp)
	.loc 1 539 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L195
.L196:
	.loc 1 541 0
	movl	-8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 144(%edx)
	.loc 1 542 0
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movl	100(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 543 0
	cmpl	$0, -4(%ebp)
	jne	.L197
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L199
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L199
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L197
.L199:
	.loc 1 547 0
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	assign_field_ids
	.loc 1 548 0
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movl	100(%eax), %eax
	movl	%eax, -4(%ebp)
.L197:
	.loc 1 550 0
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 539 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L195:
	cmpl	$0, -20(%ebp)
	jne	.L196
	.loc 1 553 0
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
.L203:
	.loc 1 554 0
	leave
	ret
.LFE30:
	.size	assign_field_ids, .-assign_field_ids
.globl start_record_layout
	.type	start_record_layout, @function
start_record_layout:
.LFB31:
	.loc 1 567 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$52, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 569 0
	movl	$44, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 571 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 576 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	cmpl	$8, -44(%ebp)
	jae	.L205
	movl	$8, -44(%ebp)
.L205:
	movl	-8(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 577 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 578 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L206
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L208
.L206:
	movl	$128, -32(%ebp)
	jmp	.L209
.L208:
	movl	$64, -32(%ebp)
.L209:
	movl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jbe	.L210
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L212
.L210:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L213
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L215
.L213:
	movl	$128, -28(%ebp)
	jmp	.L216
.L215:
	movl	$64, -28(%ebp)
.L216:
	movl	-28(%ebp), %edx
	movl	%edx, -40(%ebp)
.L212:
	movl	-8(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 582 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L217
	.loc 1 583 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$8, -24(%ebp)
	jae	.L219
	movl	$8, -24(%ebp)
.L219:
	movl	-8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 16(%eax)
.L217:
	.loc 1 586 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 587 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 588 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 589 0
	movl	-8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 590 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 592 0
	movl	-8(%ebp), %eax
	.loc 1 593 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	start_record_layout, .-start_record_layout
.globl bit_from_pos
	.type	bit_from_pos, @function
bit_from_pos:
.LFB32:
	.loc 1 601 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%esi
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$16, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 602 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	.loc 1 605 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	bit_from_pos, .-bit_from_pos
.globl byte_from_pos
	.type	byte_from_pos, @function
byte_from_pos:
.LFB33:
	.loc 1 610 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$20, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 611 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$63, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	.loc 1 615 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	byte_from_pos, .-byte_from_pos
.globl pos_from_byte
	.type	pos_from_byte, @function
pos_from_byte:
.LFB34:
	.loc 1 622 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%esi
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$16, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 623 0
	movl	16(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 630 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %esi
	movl	16(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$69, (%esp)
	call	size_binop@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 634 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	pos_from_byte, .-pos_from_byte
.globl pos_from_bit
	.type	pos_from_bit, @function
pos_from_bit:
.LFB35:
	.loc 1 641 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%esi
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$16, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 642 0
	movl	16(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 647 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$69, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 648 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	pos_from_bit, .-pos_from_bit
.globl normalize_offset
	.type	normalize_offset, @function
normalize_offset:
.LFB36:
	.loc 1 657 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%esi
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$32, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 660 0
	movl	16(%ebp), %edx
	movl	$0, %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L232
.LBB5:
	.loc 1 663 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	size_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 665 0
	movl	16(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 670 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$69, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L232:
.LBE5:
	.loc 1 673 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	normalize_offset, .-normalize_offset
	.section	.rodata
.LC5:
	.string	"type"
.LC6:
	.string	"\noffset"
.LC7:
	.string	" bitpos"
	.align 4
.LC8:
	.string	"\naligns: rec = %u, unpack = %u, unpad = %u, off = %u\n"
.LC9:
	.string	"packed may be necessary\n"
.LC10:
	.string	"pending statics:\n"
	.text
.globl debug_rli
	.type	debug_rli, @function
debug_rli:
.LFB37:
	.loc 1 680 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%edi
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$28, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	print_node_brief@PLT
	.loc 1 682 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	print_node_brief@PLT
	.loc 1 683 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	print_node_brief@PLT
	.loc 1 685 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	8(%ebp), %eax
	movl	16(%eax), %edi
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 688 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L234
	.loc 1 689 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L234:
	.loc 1 691 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L238
	.loc 1 693 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 694 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	debug_tree@PLT
.L238:
	.loc 1 696 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	debug_rli, .-debug_rli
.globl normalize_rli
	.type	normalize_rli, @function
normalize_rli:
.LFB38:
	.loc 1 704 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$20, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %ecx
	addl	$4, %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	normalize_offset@PLT
	.loc 1 706 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	normalize_rli, .-normalize_rli
.globl rli_size_unit_so_far
	.type	rli_size_unit_so_far, @function
rli_size_unit_so_far:
.LFB39:
	.loc 1 713 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$20, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 714 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	byte_from_pos@PLT
	.loc 1 715 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	rli_size_unit_so_far, .-rli_size_unit_so_far
.globl rli_size_so_far
	.type	rli_size_so_far, @function
rli_size_so_far:
.LFB40:
	.loc 1 722 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$20, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bit_from_pos@PLT
	.loc 1 724 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	rli_size_so_far, .-rli_size_so_far
	.type	update_alignment_for_field, @function
update_alignment_for_field:
.LFB41:
	.loc 1 736 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$164, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 740 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 747 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -24(%ebp)
	.loc 1 748 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 749 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 750 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L246
	.loc 1 752 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -24(%ebp)
	.loc 1 753 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
.L246:
	.loc 1 773 0
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	xorl	$1, %eax
	testb	%al, %al
	jne	.L248
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L248
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L248
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L248
	.loc 1 784 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L253
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	sete	-105(%ebp)
	jmp	.L255
.L253:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L256
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L256
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L256
	movl	$1, -104(%ebp)
	jmp	.L260
.L256:
	movl	$0, -104(%ebp)
.L260:
	movzbl	-104(%ebp), %eax
	movb	%al, -105(%ebp)
.L255:
	cmpb	$0, -105(%ebp)
	je	.L261
.LBB6:
	.loc 1 790 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 791 0
	movl	-16(%ebp), %edx
	movl	%edx, -116(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -112(%ebp)
	jae	.L263
	movl	-116(%ebp), %eax
	movl	%eax, -112(%ebp)
.L263:
	movl	-112(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 792 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L264
	.loc 1 793 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, -124(%ebp)
	movl	%eax, -120(%ebp)
	movl	-124(%ebp), %eax
	cmpl	%eax, -120(%ebp)
	jbe	.L266
	movl	-124(%ebp), %edx
	movl	%edx, -120(%ebp)
.L266:
	movl	-120(%ebp), %eax
	movl	%eax, -16(%ebp)
.L264:
	.loc 1 794 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, -128(%ebp)
	movl	%eax, -100(%ebp)
	movl	-128(%ebp), %eax
	cmpl	%eax, -100(%ebp)
	jae	.L267
	movl	-128(%ebp), %edx
	movl	%edx, -100(%ebp)
.L267:
	movl	8(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 795 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	jae	.L268
	movl	-96(%ebp), %edx
	movl	%edx, -92(%ebp)
.L268:
	movl	8(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%edx, 20(%eax)
	.loc 1 796 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-88(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jae	.L269
	movl	-88(%ebp), %edx
	movl	%edx, -84(%ebp)
.L269:
	movl	8(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%edx, 24(%eax)
	jmp	.L271
.L261:
.LBE6:
	.loc 1 799 0
	movl	$1, -24(%ebp)
	.loc 1 773 0
	jmp	.L271
.L248:
	.loc 1 803 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L272
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L272
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L272
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L272
	.loc 1 812 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L277
	.loc 1 813 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, -132(%ebp)
	movl	%eax, -80(%ebp)
	movl	-132(%ebp), %eax
	cmpl	%eax, -80(%ebp)
	jae	.L279
	movl	-132(%ebp), %edx
	movl	%edx, -80(%ebp)
.L279:
	movl	8(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	%edx, 16(%eax)
	jmp	.L280
.L277:
	.loc 1 814 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L280
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L280
	.loc 1 815 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
.L280:
	.loc 1 819 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L271
.LBB7:
	.loc 1 821 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 828 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L285
	.loc 1 829 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, -140(%ebp)
	movl	%eax, -136(%ebp)
	movl	-140(%ebp), %eax
	cmpl	%eax, -136(%ebp)
	jbe	.L287
	movl	-140(%ebp), %edx
	movl	%edx, -136(%ebp)
.L287:
	movl	-136(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L288
.L285:
	.loc 1 830 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L288
	.loc 1 831 0
	movl	-12(%ebp), %edx
	movl	%edx, -144(%ebp)
	cmpl	$8, -144(%ebp)
	jbe	.L290
	movl	$8, -144(%ebp)
.L290:
	movl	-144(%ebp), %eax
	movl	%eax, -12(%ebp)
.L288:
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, -148(%ebp)
	movl	%eax, -76(%ebp)
	movl	-148(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	jae	.L291
	movl	-148(%ebp), %edx
	movl	%edx, -76(%ebp)
.L291:
	movl	8(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 834 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-72(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jae	.L292
	movl	-72(%ebp), %edx
	movl	%edx, -68(%ebp)
.L292:
	movl	8(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, 24(%eax)
	.loc 1 835 0
	movl	warn_packed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L293
	.loc 1 836 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jae	.L295
	movl	-64(%ebp), %edx
	movl	%edx, -60(%ebp)
.L295:
	movl	8(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 20(%eax)
.L293:
	.loc 1 837 0
	movzbl	-5(%ebp), %edx
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 803 0
	jmp	.L271
.L272:
.LBE7:
	.loc 1 843 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, -152(%ebp)
	movl	%eax, -56(%ebp)
	movl	-152(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jae	.L296
	movl	-152(%ebp), %edx
	movl	%edx, -56(%ebp)
.L296:
	movl	8(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 844 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jae	.L297
	movl	-52(%ebp), %edx
	movl	%edx, -48(%ebp)
.L297:
	movl	8(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 20(%eax)
	.loc 1 845 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	movl	-44(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jae	.L298
	movl	-44(%ebp), %edx
	movl	%edx, -40(%ebp)
.L298:
	movl	8(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 24(%eax)
.L271:
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	-5(%ebp), %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	39(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 850 0
	movl	-24(%ebp), %eax
	andl	$16777215, %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 852 0
	movl	-24(%ebp), %eax
	.loc 1 853 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	update_alignment_for_field, .-update_alignment_for_field
	.type	place_union_field, @function
place_union_field:
.LFB42:
	.loc 1 861 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%esi
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$32, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 862 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_alignment_for_field
	.loc 1 864 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 865 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 112(%eax)
	.loc 1 866 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L301
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L303
.L301:
	movl	$128, -16(%ebp)
	jmp	.L304
.L303:
	movl	$64, -16(%ebp)
.L304:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L305
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L307
.L305:
	movl	$-128, -12(%ebp)
	jmp	.L308
.L307:
	movl	$-64, -12(%ebp)
.L308:
	movl	-16(%ebp), %eax
	andl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 43(%eax)
	.loc 1 870 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L309
	.loc 1 871 0
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L313
.L309:
	.loc 1 872 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L313
	.loc 1 873 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	48(%eax), %esi
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L313:
	.loc 1 876 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE42:
	.size	place_union_field, .-place_union_field
	.section	.rodata
	.align 4
.LC11:
	.string	"packed attribute causes inefficient alignment for `%s'"
.LC12:
	.string	"padding struct to align `%s'"
.globl __divdi3
	.text
.globl place_field
	.type	place_field, @function
place_field:
.LFB43:
	.loc 1 887 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%edi
.LCFI112:
	pushl	%esi
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$188, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 895 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 897 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L423
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L317
	.loc 1 898 0
	jmp	.L423
.L317:
	.loc 1 904 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L319
	.loc 1 906 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 908 0
	jmp	.L423
.L319:
	.loc 1 913 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L423
	.loc 1 918 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L322
	.loc 1 920 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	place_union_field
	.loc 1 921 0
	jmp	.L423
.L322:
	.loc 1 926 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L324
	.loc 1 927 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	negl	%eax
	andl	%esi, %eax
	movl	%eax, -56(%ebp)
	jmp	.L326
.L324:
	.loc 1 929 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L327
	.loc 1 930 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L329
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L331
.L329:
	movl	$128, -156(%ebp)
	jmp	.L332
.L331:
	movl	$64, -156(%ebp)
.L332:
	movl	-156(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L326
.L327:
	.loc 1 931 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L333
	.loc 1 932 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, -56(%ebp)
	jmp	.L326
.L333:
	.loc 1 936 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
.L326:
	.loc 1 938 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_alignment_for_field
	movl	%eax, -60(%ebp)
	.loc 1 940 0
	movl	warn_packed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L335
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L335
	.loc 1 942 0
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-56(%ebp), %eax
	jae	.L338
	.loc 1 944 0
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-60(%ebp), %eax
	jbe	.L335
	.loc 1 947 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L335
.L338:
	.loc 1 953 0
	movl	8(%ebp), %eax
	movl	$1, 40(%eax)
.L335:
	.loc 1 958 0
	movl	-56(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jae	.L342
	.loc 1 963 0
	movl	warn_padded@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 964 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L344:
	.loc 1 968 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jbe	.L346
	.loc 1 969 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L348
.L346:
	.loc 1 973 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 978 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 980 0
	movl	-60(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L348:
	.loc 1 983 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L342
	.loc 1 984 0
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%edx)
.L342:
	.loc 1 991 0
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	xorl	$1, %eax
	testb	%al, %al
	je	.L350
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L350
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L350
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L350
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L350
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L350
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L350
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L350
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L350
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L350
.LBB8:
	.loc 1 1003 0
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1004 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1005 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1006 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 1016 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-88(%ebp), %esi
	adcl	-84(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-72(%ebp), %esi
	adcl	-68(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-124(%ebp), %edi
	cmpl	%edi, -132(%ebp)
	jl	.L361
	movl	-124(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	jg	.L363
	movl	-128(%ebp), %edx
	cmpl	%edx, -136(%ebp)
	jbe	.L361
.L363:
	.loc 1 1021 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L361:
	.loc 1 1023 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	orl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	39(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
.L350:
.LBE8:
	.loc 1 1084 0
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L364
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L366
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L368
.L366:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L364
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L364
.L368:
.LBB9:
	.loc 1 1090 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1094 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L370
	.loc 1 1102 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L372
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L372
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L372
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	je	.L372
.LBB10:
	.loc 1 1111 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1112 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1114 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-32(%ebp), %eax
	jge	.L377
	.loc 1 1117 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1118 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	112(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1121 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1122 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
.L377:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	subl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1102 0
	jmp	.L379
.L372:
.LBE10:
	.loc 1 1137 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L380
.LBB11:
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	112(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L382
.L380:
.LBE11:
	.loc 1 1148 0
	movl	$0, -36(%ebp)
.L382:
	.loc 1 1153 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L383
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L379
.L383:
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L379:
	.loc 1 1159 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
.L370:
	.loc 1 1174 0
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L385
	cmpl	$0, -36(%ebp)
	je	.L387
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	je	.L385
	jmp	.L364
.L387:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L364
.L385:
.LBB12:
	.loc 1 1180 0
	movl	$8, -20(%ebp)
	.loc 1 1187 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L389
	.loc 1 1188 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
.L389:
	.loc 1 1193 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L391
	.loc 1 1194 0
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	movl	-20(%ebp), %edi
	movl	%edi, -164(%ebp)
	movl	%eax, -160(%ebp)
	movl	-164(%ebp), %eax
	cmpl	%eax, -160(%ebp)
	jae	.L393
	movl	-164(%ebp), %edx
	movl	%edx, -160(%ebp)
.L393:
	movl	-160(%ebp), %esi
	movl	%esi, -20(%ebp)
.L391:
	.loc 1 1196 0
	cmpl	$0, -36(%ebp)
	je	.L394
	movl	-36(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L394
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L394
	.loc 1 1202 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	-20(%ebp), %edi
	movl	%edi, -172(%ebp)
	movl	%eax, -168(%ebp)
	movl	-172(%ebp), %eax
	cmpl	%eax, -168(%ebp)
	jae	.L398
	movl	-172(%ebp), %edx
	movl	%edx, -168(%ebp)
.L398:
	movl	-168(%ebp), %esi
	movl	%esi, -20(%ebp)
.L394:
	.loc 1 1205 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L399
	.loc 1 1206 0
	movl	maximum_field_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edi
	movl	%edi, -180(%ebp)
	movl	%eax, -176(%ebp)
	movl	-180(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jbe	.L401
	movl	-180(%ebp), %edx
	movl	%edx, -176(%ebp)
.L401:
	movl	-176(%ebp), %esi
	movl	%esi, -20(%ebp)
.L399:
	.loc 1 1208 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1211 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L364:
.LBE12:
.LBE9:
	.loc 1 1216 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
	.loc 1 1217 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1218 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 112(%eax)
	.loc 1 1219 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	negl	%eax
	andl	%edx, %eax
	movl	$0, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 43(%eax)
	.loc 1 1224 0
	movl	12(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L402
	.loc 1 1225 0
	movl	12(%ebp), %eax
	movl	112(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	112(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	negl	%eax
	andl	%esi, %eax
	movl	%eax, -52(%ebp)
	jmp	.L404
.L402:
	.loc 1 1227 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L405
	.loc 1 1228 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L407
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L409
.L407:
	movl	$128, -116(%ebp)
	jmp	.L410
.L409:
	movl	$64, -116(%ebp)
.L410:
	movl	-116(%ebp), %edi
	movl	%edi, -52(%ebp)
	jmp	.L404
.L405:
	.loc 1 1229 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L411
	.loc 1 1230 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, -52(%ebp)
	jmp	.L404
.L411:
	.loc 1 1234 0
	movl	12(%ebp), %eax
	movzbl	43(%eax), %eax
	movzbl	%al, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L424
	movl	%eax, %edx
	xorl	%eax, %eax
.L424:
	movl	%eax, -52(%ebp)
.L404:
	.loc 1 1236 0
	movl	-56(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L413
	.loc 1 1237 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L413:
	.loc 1 1240 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L415
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L415
	.loc 1 1241 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
.L415:
	.loc 1 1250 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L423
	.loc 1 1252 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L419
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L421
.L419:
	.loc 1 1255 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1260 0
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1262 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1263 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	cmpl	%eax, -100(%ebp)
	jbe	.L422
	movl	-104(%ebp), %edx
	movl	%edx, -100(%ebp)
.L422:
	movl	8(%ebp), %eax
	movl	-100(%ebp), %esi
	movl	%esi, 8(%eax)
	.loc 1 1252 0
	jmp	.L423
.L421:
	.loc 1 1267 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
.L423:
	.loc 1 1270 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	place_field, .-place_field
	.section	.rodata
	.align 4
.LC13:
	.string	"padding struct size to alignment boundary"
	.align 4
.LC14:
	.string	"packed attribute causes inefficient alignment"
	.text
	.type	finalize_record_size, @function
finalize_record_size:
.LFB44:
	.loc 1 1279 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%esi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$48, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1284 0
	movl	8(%ebp), %eax
	movl	$8, 8(%eax)
	.loc 1 1285 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
	.loc 1 1292 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jae	.L426
	movl	-40(%ebp), %edx
	movl	%edx, -36(%ebp)
.L426:
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1298 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_so_far@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1299 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_unit_so_far@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1300 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L427
	.loc 1 1301 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -20(%ebp)
.L427:
	.loc 1 1306 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L429
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	76(%eax), %eax
	movl	16(%eax), %eax
	cmpl	$6, %eax
	jle	.L429
	.loc 1 1308 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	76(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 1309 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	76(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 48(%edx)
.L429:
	.loc 1 1320 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, 20(%esi)
	.loc 1 1321 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	shrl	$3, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, 24(%esi)
	.loc 1 1325 0
	movl	warn_padded@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L432
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L432
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	jne	.L432
	.loc 1 1327 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L432:
	.loc 1 1329 0
	movl	warn_packed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L449
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L449
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L449
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L449
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L449
.LBB13:
	.loc 1 1339 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jae	.L442
	movl	-32(%ebp), %edx
	movl	%edx, -28(%ebp)
.L442:
	movl	8(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 20(%eax)
	.loc 1 1346 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1349 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	je	.L449
	.loc 1 1351 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	38(%edx), %eax
	andl	$-17, %eax
	movb	%al, 38(%edx)
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L444
.LBB14:
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L446
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L448
.L446:
	.loc 1 1360 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
.L448:
	.loc 1 1363 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L449
.L444:
.LBE14:
	.loc 1 1370 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L449:
.LBE13:
	.loc 1 1376 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	finalize_record_size, .-finalize_record_size
.globl __udivdi3
.globl __moddi3
.globl compute_record_mode
	.type	compute_record_mode, @function
compute_record_mode:
.LFB45:
	.loc 1 1383 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%edi
.LCFI123:
	pushl	%esi
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$92, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1385 0
	movl	$0, -20(%ebp)
	.loc 1 1391 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	.loc 1 1393 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L488
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L453
.L454:
.LBB15:
	.loc 1 1403 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L455
	.loc 1 1406 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L488
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L459
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L488
.L459:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L488
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L488
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L463
	.loc 1 1412 0
	jmp	.L488
.L463:
	.loc 1 1414 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1418 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L464
	movl	$64, -88(%ebp)
	movl	$0, -84(%ebp)
	jmp	.L466
.L464:
	movl	$32, -88(%ebp)
	movl	$0, -84(%ebp)
.L466:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L467
	movl	$64, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L469
.L467:
	movl	$32, -64(%ebp)
	movl	$0, -60(%ebp)
.L469:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	-76(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-80(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L470
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L472
	movl	$64, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L474
.L472:
	movl	$32, -48(%ebp)
	movl	$0, -44(%ebp)
.L474:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L488
.L470:
	.loc 1 1428 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	je	.L455
	.loc 1 1429 0
	movl	-24(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
.L455:
.LBE15:
	.loc 1 1399 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L453:
	cmpl	$0, -24(%ebp)
	jne	.L454
	.loc 1 1442 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L477
	cmpl	$0, -20(%ebp)
	je	.L477
	.loc 1 1443 0
	movl	-20(%ebp), %eax
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1442 0
	jmp	.L480
.L477:
	.loc 1 1445 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size_tree@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L480:
	.loc 1 1449 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L488
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L482
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L484
.L482:
	movl	$128, -36(%ebp)
	jmp	.L485
.L484:
	movl	$64, -36(%ebp)
.L485:
	movl	-36(%ebp), %edi
	cmpl	%edi, -40(%ebp)
	jae	.L488
	movl	8(%ebp), %eax
	movl	40(%eax), %esi
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	%eax, %esi
	jae	.L488
	.loc 1 1456 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 1457 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
.L488:
	.loc 1 1459 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	compute_record_mode, .-compute_record_mode
	.type	finalize_type_size, @function
finalize_type_size:
.LFB46:
	.loc 1 1467 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$52, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1473 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L490
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L490
	.loc 1 1479 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1480 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
.L490:
	.loc 1 1491 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L493
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L493
	.loc 1 1495 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$65, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L493:
	.loc 1 1500 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L496
	.loc 1 1509 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1510 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L496:
	.loc 1 1516 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L498
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L498
	.loc 1 1517 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	variable_size@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L498:
	.loc 1 1518 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L501
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L501
	.loc 1 1520 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	variable_size@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L501:
	.loc 1 1523 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L504
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L509
.L504:
.LBB16:
	.loc 1 1528 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1529 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1530 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1531 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1532 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1535 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1536 0
	jmp	.L507
.L508:
	.loc 1 1539 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1540 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1541 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1542 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 1543 0
	movl	-8(%ebp), %eax
	andl	$127, %eax
	movl	-28(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1537 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -28(%ebp)
.L507:
	.loc 1 1536 0
	cmpl	$0, -28(%ebp)
	jne	.L508
.L509:
.LBE16:
	.loc 1 1546 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	finalize_type_size, .-finalize_type_size
.globl finish_record_layout
	.type	finish_record_layout, @function
finish_record_layout:
.LFB47:
	.loc 1 1558 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$20, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1560 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finalize_record_size
	.loc 1 1563 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	compute_record_mode@PLT
	.loc 1 1566 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	finalize_type_size
	.loc 1 1570 0
	jmp	.L511
.L512:
	.loc 1 1572 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 1573 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
.L511:
	.loc 1 1570 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L512
	.loc 1 1577 0
	cmpl	$0, 12(%ebp)
	je	.L516
	.loc 1 1578 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L516:
	.loc 1 1579 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	finish_record_layout, .-finish_record_layout
	.section	.rodata
	.type	__FUNCTION__.13852, @object
	.size	__FUNCTION__.13852, 12
__FUNCTION__.13852:
	.string	"layout_type"
	.text
.globl layout_type
	.type	layout_type, @function
layout_type:
.LFB48:
	.loc 1 1594 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%edi
.LCFI137:
	pushl	%esi
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$204, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1595 0
	cmpl	$0, 8(%ebp)
	jne	.L518
	.loc 1 1596 0
	leal	__FUNCTION__.13852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1596, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L518:
	.loc 1 1599 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L665
	.loc 1 1602 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$6, %eax
	movl	%eax, -192(%ebp)
	cmpl	$19, -192(%ebp)
	ja	.L522
	movl	-192(%ebp), %eax
	sall	$2, %eax
	movl	.L537@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L537:
	.long	.L523@GOTOFF
	.long	.L524@GOTOFF
	.long	.L525@GOTOFF
	.long	.L526@GOTOFF
	.long	.L527@GOTOFF
	.long	.L524@GOTOFF
	.long	.L528@GOTOFF
	.long	.L524@GOTOFF
	.long	.L529@GOTOFF
	.long	.L530@GOTOFF
	.long	.L529@GOTOFF
	.long	.L531@GOTOFF
	.long	.L532@GOTOFF
	.long	.L533@GOTOFF
	.long	.L534@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L531@GOTOFF
	.long	.L536@GOTOFF
	.text
.L536:
	.loc 1 1607 0
	leal	__FUNCTION__.13852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1607, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L528:
	.loc 1 1610 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	testw	%ax, %ax
	jne	.L524
	.loc 1 1611 0
	movl	8(%ebp), %edx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	$1, %eax
	movw	%ax, 36(%edx)
.L524:
	.loc 1 1618 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L539
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	js	.L539
	.loc 1 1620 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$32, %edx
	movb	%dl, 9(%eax)
.L539:
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	smallest_mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1624 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1625 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1626 0
	jmp	.L542
.L525:
	.loc 1 1629 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1630 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1631 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1632 0
	jmp	.L542
.L526:
	.loc 1 1635 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1636 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L543
	movl	$5, -188(%ebp)
	jmp	.L545
.L543:
	movl	$6, -188(%ebp)
.L545:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	addl	%eax, %eax
	movl	$0, 8(%esp)
	movl	-188(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1641 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1642 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1643 0
	jmp	.L542
.L527:
.LBB17:
	.loc 1 1649 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1650 0
	movl	-68(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1652 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1654 0
	jmp	.L542
.L523:
.LBE17:
	.loc 1 1658 0
	movl	8(%ebp), %eax
	movl	$1, 40(%eax)
	.loc 1 1659 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
	.loc 1 1660 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	movb	%al, 37(%edx)
	.loc 1 1661 0
	jmp	.L542
.L530:
	.loc 1 1664 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L546
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L546
	movl	$64, -184(%ebp)
	movl	$0, -180(%ebp)
	jmp	.L549
.L546:
	movl	$32, -184(%ebp)
	movl	$0, -180(%ebp)
.L549:
	movl	$3, 8(%esp)
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1665 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L550
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L550
	movl	$8, -176(%ebp)
	movl	$0, -172(%ebp)
	jmp	.L553
.L550:
	movl	$4, -176(%ebp)
	movl	$0, -172(%ebp)
.L553:
	movl	$0, 8(%esp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1668 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L554
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L554
	movl	$64, -168(%ebp)
	jmp	.L557
.L554:
	movl	$32, -168(%ebp)
.L557:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-168(%ebp), %edx
	movl	%edx, (%esp)
	call	mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1669 0
	jmp	.L542
.L531:
	.loc 1 1673 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L558
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L558
	movl	$128, -164(%ebp)
	jmp	.L561
.L558:
	movl	$64, -164(%ebp)
.L561:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1674 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L562
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L562
	movl	$128, -160(%ebp)
	movl	$0, -156(%ebp)
	jmp	.L565
.L562:
	movl	$64, -160(%ebp)
	movl	$0, -156(%ebp)
.L565:
	movl	$3, 8(%esp)
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1675 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L566
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L566
	movl	$16, -152(%ebp)
	movl	$0, -148(%ebp)
	jmp	.L569
.L566:
	movl	$8, -152(%ebp)
	movl	$0, -148(%ebp)
.L569:
	movl	$0, 8(%esp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1676 0
	jmp	.L542
.L529:
.LBB18:
	.loc 1 1683 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L570
	movl	reference_types_internal@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L570
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L573
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L573
	movl	$5, -140(%ebp)
	jmp	.L576
.L573:
	movl	$4, -140(%ebp)
.L576:
	movl	-140(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -144(%ebp)
	jmp	.L577
.L570:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L578
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L578
	movl	$64, -136(%ebp)
	jmp	.L581
.L578:
	movl	$32, -136(%ebp)
.L581:
	movl	-136(%ebp), %edx
	movl	%edx, -144(%ebp)
.L577:
	movl	-144(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1685 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L582
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L582
	movl	$64, -128(%ebp)
	jmp	.L585
.L582:
	movl	$32, -128(%ebp)
.L585:
	movl	-128(%ebp), %edx
	cmpl	-64(%ebp), %edx
	je	.L586
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L588
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L588
	movb	$5, -121(%ebp)
	jmp	.L591
.L588:
	movb	$4, -121(%ebp)
.L591:
	movzbl	-121(%ebp), %eax
	movb	%al, -129(%ebp)
	jmp	.L592
.L586:
	movl	ptr_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$127, %edx
	movb	%dl, -129(%ebp)
.L592:
	movl	8(%ebp), %edx
	movzbl	-129(%ebp), %ecx
	addl	%ecx, %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 1686 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1687 0
	movl	-64(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1688 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$32, %eax
	movb	%al, 9(%edx)
	.loc 1 1689 0
	movl	-64(%ebp), %eax
	andw	$511, %ax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 1691 0
	jmp	.L542
.L533:
.LBE18:
.LBB19:
	.loc 1 1695 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1696 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1698 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	.loc 1 1701 0
	cmpl	$0, -60(%ebp)
	je	.L593
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L593
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L593
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L593
.LBB20:
	.loc 1 1704 0
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1705 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1711 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1718 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1719 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L598
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L600
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L600
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L600
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L598
.L600:
	movl	-56(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L604
	movl	-56(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L598
.L604:
	movl	-56(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L598
.LBB21:
	.loc 1 1725 0
	movl	-56(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1727 0
	movl	-56(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 1729 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L598
	movl	-88(%ebp), %eax
	xorl	$1, %eax
	orl	-84(%ebp), %eax
	testl	%eax, %eax
	je	.L608
	movl	-88(%ebp), %eax
	orl	-84(%ebp), %eax
	testl	%eax, %eax
	jne	.L598
.L608:
	.loc 1 1731 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
.L598:
.LBE21:
	.loc 1 1734 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1745 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L593
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	jne	.L593
	.loc 1 1746 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L593:
.LBE20:
	.loc 1 1757 0
	movl	-56(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -120(%ebp)
	cmpl	$8, -120(%ebp)
	jae	.L612
	movl	$8, -120(%ebp)
.L612:
	movl	8(%ebp), %eax
	movl	-120(%ebp), %edx
	movl	%edx, 40(%eax)
	.loc 1 1759 0
	movl	-56(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 1776 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	.loc 1 1777 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L542
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L615
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L542
.L615:
	.loc 1 1787 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	testl	%eax, %eax
	je	.L617
	.loc 1 1789 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	jmp	.L619
.L617:
	.loc 1 1791 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size_tree@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L619:
	.loc 1 1794 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L542
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L621
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L623
.L621:
	movl	$128, -112(%ebp)
	jmp	.L624
.L623:
	movl	$64, -112(%ebp)
.L624:
	movl	-112(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jae	.L542
	movl	8(%ebp), %eax
	movl	40(%eax), %esi
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	%eax, %esi
	jae	.L542
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L542
	.loc 1 1799 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 1800 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	.loc 1 1803 0
	jmp	.L542
.L535:
.LBE19:
.LBB22:
	.loc 1 1814 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_record_layout@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1819 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L628
	.loc 1 1820 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L628:
	.loc 1 1823 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L630
.L631:
	.loc 1 1824 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	place_field@PLT
	.loc 1 1823 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L630:
	cmpl	$0, -36(%ebp)
	jne	.L631
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L633
	.loc 1 1827 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L633:
	.loc 1 1829 0
	movl	lang_adjust_rli@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L635
	.loc 1 1830 0
	movl	lang_adjust_rli@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L635:
	.loc 1 1833 0
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_record_layout@PLT
	.loc 1 1835 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_field_ids
	.loc 1 1838 0
	jmp	.L542
.L534:
.LBE22:
	.loc 1 1841 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L637
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L639
.L637:
	.loc 1 1843 0
	leal	__FUNCTION__.13852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1843, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L639:
.LBB23:
	.loc 1 1850 0
	movl	set_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L640
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L642
	movl	$64, -104(%ebp)
	jmp	.L644
.L642:
	movl	$32, -104(%ebp)
.L644:
	movl	-104(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L645
.L640:
	movl	set_alignment@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
.L645:
	movl	-108(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1853 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1855 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	subl	$1, %eax
	movl	$0, %edx
	divl	-28(%ebp)
	imull	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1857 0
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L646
	.loc 1 1858 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	jmp	.L648
.L646:
	.loc 1 1860 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	andl	$127, %eax
	movl	8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L648:
	.loc 1 1862 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1863 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1864 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1865 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
	.loc 1 1866 0
	movl	-24(%ebp), %eax
	andw	$511, %ax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 1868 0
	jmp	.L542
.L532:
.LBE23:
	.loc 1 1873 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L649
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L651
.L649:
	movl	$128, -100(%ebp)
	jmp	.L652
.L651:
	movl	$64, -100(%ebp)
.L652:
	movl	8(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edx, 40(%eax)
	.loc 1 1874 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
	.loc 1 1875 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	.loc 1 1876 0
	jmp	.L542
.L522:
	.loc 1 1879 0
	leal	__FUNCTION__.13852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1879, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L542:
	.loc 1 1885 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L653
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L653
	.loc 1 1888 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finalize_type_size
.L653:
	.loc 1 1892 0
	movl	sizetype_set@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L657
	.loc 1 1893 0
	movl	early_type_list@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, early_type_list@GOTOFF(%ebx)
.L657:
	.loc 1 1900 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L659
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L659
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L659
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L659
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L665
.L659:
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L665
	.loc 1 1901 0
	movl	8(%ebp), %eax
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
.L665:
	.loc 1 1902 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	layout_type, .-layout_type
.globl make_signed_type
	.type	make_signed_type, @function
make_signed_type:
.LFB49:
	.loc 1 1909 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$20, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1910 0
	movl	$7, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1912 0
	movl	8(%ebp), %eax
	andw	$511, %ax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 1914 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_signed_type@PLT
	.loc 1 1915 0
	movl	-8(%ebp), %eax
	.loc 1 1916 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	make_signed_type, .-make_signed_type
.globl make_unsigned_type
	.type	make_unsigned_type, @function
make_unsigned_type:
.LFB50:
	.loc 1 1923 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$20, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1924 0
	movl	$7, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1926 0
	movl	8(%ebp), %eax
	andw	$511, %ax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 1928 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_unsigned_type@PLT
	.loc 1 1929 0
	movl	-8(%ebp), %eax
	.loc 1 1930 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	make_unsigned_type, .-make_unsigned_type
.globl initialize_sizetypes
	.type	initialize_sizetypes, @function
initialize_sizetypes:
.LFB51:
	.loc 1 1937 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$36, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1938 0
	movl	$7, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1942 0
	movl	integer_types@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1944 0
	movl	-8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$8, %eax
	movb	%al, 37(%edx)
	.loc 1 1945 0
	movl	$4, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1946 0
	movl	-8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
	.loc 1 1947 0
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	8(%eax), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1948 0
	movl	mode_size@GOT(%ebx), %eax
	movzbl	4(%eax), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1949 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$32, %eax
	movb	%al, 9(%edx)
	.loc 1 1950 0
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	8(%eax), %eax
	andw	$511, %ax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 1951 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1952 0
	movl	-8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 1956 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1000, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 1960 0
	movl	sizetype_tab@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1961 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 12(%eax)
	.loc 1 1962 0
	movl	integer_types@GOT(%ebx), %eax
	movl	$0, 20(%eax)
	.loc 1 1963 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	initialize_sizetypes, .-initialize_sizetypes
	.section	.rodata
	.type	__FUNCTION__.14355, @object
	.size	__FUNCTION__.14355, 13
__FUNCTION__.14355:
	.string	"set_sizetype"
.LC15:
	.string	"bit_size_type"
	.text
.globl set_sizetype
	.type	set_sizetype, @function
set_sizetype:
.LFB52:
	.loc 1 1971 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%esi
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$32, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1972 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1977 0
	cmpl	$123, -24(%ebp)
	jg	.L673
	movl	-24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	jmp	.L675
.L673:
	movl	$128, -28(%ebp)
.L675:
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1982 0
	movl	sizetype_set@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L676
	.loc 1 1983 0
	leal	__FUNCTION__.14355@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1983, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L676:
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1987 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1988 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 1989 0
	movl	$7, (%esp)
	call	make_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 12(%eax)
	.loc 1 1990 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 1991 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	andw	$511, %ax
	movl	%eax, %edx
	andw	$511, %dx
	movzwl	36(%ecx), %eax
	andw	$-512, %ax
	orl	%edx, %eax
	movw	%ax, 36(%ecx)
	.loc 1 1992 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 1994 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L678
	.loc 1 1995 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	fixup_unsigned_type@PLT
	jmp	.L680
.L678:
	.loc 1 1997 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	fixup_signed_type@PLT
.L680:
	.loc 1 1999 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 2001 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L681
	.loc 1 2003 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 8(%eax)
	.loc 1 2004 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
	.loc 1 2005 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_signed_type@PLT
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 2006 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_signed_type@PLT
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 16(%eax)
	jmp	.L683
.L681:
	.loc 1 2010 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 2011 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 16(%eax)
	.loc 1 2012 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	make_unsigned_type@PLT
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 8(%eax)
	.loc 1 2013 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_unsigned_type@PLT
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
.L683:
	.loc 1 2016 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %esi
	movl	$13, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, 56(%esi)
	.loc 1 2019 0
	movl	$0, -16(%ebp)
	jmp	.L684
.L685:
	.loc 1 2021 0
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 2022 0
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 72(%ecx)
	.loc 1 2023 0
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	$0, 68(%eax)
	.loc 1 2024 0
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	$0, 44(%eax)
	.loc 1 2025 0
	movl	-16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	$0, 48(%eax)
	.loc 1 2019 0
	addl	$1, -16(%ebp)
.L684:
	cmpl	$5, -16(%ebp)
	jbe	.L685
	.loc 1 2030 0
	movl	early_type_list@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L687
.L688:
	.loc 1 2032 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L689
	.loc 1 2033 0
	leal	__FUNCTION__.14355@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2033, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L689:
	.loc 1 2035 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2036 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2030 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L687:
	cmpl	$0, -12(%ebp)
	jne	.L688
	.loc 1 2039 0
	movl	$0, early_type_list@GOTOFF(%ebx)
	.loc 1 2040 0
	movl	$1, sizetype_set@GOTOFF(%ebx)
	.loc 1 2041 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE52:
	.size	set_sizetype, .-set_sizetype
.globl fixup_signed_type
	.type	fixup_signed_type, @function
fixup_signed_type:
.LFB53:
	.loc 1 2051 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%edi
.LCFI160:
	pushl	%esi
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$76, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2052 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2057 0
	cmpl	$128, -20(%ebp)
	jle	.L694
	.loc 1 2058 0
	movl	$128, -20(%ebp)
.L694:
	.loc 1 2060 0
	cmpl	$65, -20(%ebp)
	jle	.L696
	movl	-20(%ebp), %ecx
	subl	$65, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L712
	movl	%esi, %edi
	xorl	%esi, %esi
.L712:
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	jmp	.L698
.L696:
	movl	$-1, -64(%ebp)
	movl	$-1, -60(%ebp)
.L698:
	cmpl	$64, -20(%ebp)
	jg	.L699
	movl	-20(%ebp), %ecx
	subl	$1, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L711
	movl	%eax, %edx
	xorl	%eax, %eax
.L711:
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	jmp	.L701
.L699:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
.L701:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 2067 0
	cmpl	$65, -20(%ebp)
	jle	.L702
	movl	-20(%ebp), %ecx
	subl	$65, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L710
	movl	%eax, %edx
	xorl	%eax, %eax
.L710:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	jmp	.L704
.L702:
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
.L704:
	cmpl	$64, -20(%ebp)
	jg	.L705
	movl	-20(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L709
	movl	%eax, %edx
	xorl	%eax, %eax
.L709:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L707
.L705:
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L707:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 2075 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2076 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2079 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 2080 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	fixup_signed_type, .-fixup_signed_type
.globl fixup_unsigned_type
	.type	fixup_unsigned_type, @function
fixup_unsigned_type:
.LFB54:
	.loc 1 2089 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$52, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2090 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2095 0
	cmpl	$128, -12(%ebp)
	jle	.L714
	.loc 1 2096 0
	movl	$128, -12(%ebp)
.L714:
	.loc 1 2098 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 2099 0
	cmpl	$64, -12(%ebp)
	jle	.L716
	movl	$128, %eax
	movl	%eax, %ecx
	subl	-12(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L724
	movl	%edx, %eax
	xorl	%edx, %edx
.L724:
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L718
.L716:
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
.L718:
	cmpl	$63, -12(%ebp)
	jg	.L719
	movl	-12(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L723
	movl	%eax, %edx
	xorl	%eax, %eax
.L723:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L721
.L719:
	movl	$-1, -32(%ebp)
	movl	$-1, -28(%ebp)
.L721:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2108 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2111 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 2112 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	fixup_unsigned_type, .-fixup_unsigned_type
.globl get_best_mode
	.type	get_best_mode, @function
get_best_mode:
.LFB55:
	.loc 1 2135 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$52, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2137 0
	movl	$0, -16(%ebp)
	.loc 1 2140 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L726
.L727:
	.loc 1 2143 0
	movl	-20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2144 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	divl	-16(%ebp)
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L728
	.loc 1 2141 0
	movl	-20(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
.L726:
	.loc 1 2140 0
	cmpl	$0, -20(%ebp)
	jne	.L727
.L728:
	.loc 1 2148 0
	cmpl	$0, -20(%ebp)
	je	.L730
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L732
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L734
.L732:
	movl	$128, -48(%ebp)
	jmp	.L735
.L734:
	movl	$64, -48(%ebp)
.L735:
	movl	-48(%ebp), %eax
	cmpl	-16(%ebp), %eax
	ja	.L736
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L738
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L740
.L738:
	movl	$128, -44(%ebp)
	jmp	.L741
.L740:
	movl	$64, -44(%ebp)
.L741:
	movl	-44(%ebp), %edx
	movl	%edx, -52(%ebp)
	jmp	.L742
.L736:
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
.L742:
	movl	-52(%ebp), %edx
	cmpl	16(%ebp), %edx
	ja	.L730
	cmpl	$0, 20(%ebp)
	je	.L744
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	jae	.L744
.L730:
	.loc 1 2158 0
	movl	$0, -40(%ebp)
	jmp	.L746
.L744:
	.loc 1 2160 0
	cmpl	$0, 24(%ebp)
	jne	.L747
.LBB24:
	.loc 1 2162 0
	movl	$0, -12(%ebp)
	.loc 1 2164 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L749
.L750:
	.loc 1 2167 0
	movl	-8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2168 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	divl	-16(%ebp)
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	addl	12(%ebp), %eax
	subl	$1, %eax
	movl	$0, %edx
	divl	-16(%ebp)
	cmpl	%eax, -56(%ebp)
	jne	.L751
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L753
	movl	$64, -36(%ebp)
	jmp	.L755
.L753:
	movl	$32, -36(%ebp)
.L755:
	movl	-36(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L751
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L757
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L759
.L757:
	movl	$128, -28(%ebp)
	jmp	.L760
.L759:
	movl	$64, -28(%ebp)
.L760:
	movl	-28(%ebp), %edx
	cmpl	16(%ebp), %edx
	ja	.L761
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L763
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L765
.L763:
	movl	$128, -24(%ebp)
	jmp	.L766
.L765:
	movl	$64, -24(%ebp)
.L766:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L767
.L761:
	movl	16(%ebp), %edx
	movl	%edx, -32(%ebp)
.L767:
	movl	-32(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L751
	cmpl	$0, 20(%ebp)
	je	.L769
	movl	20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-16(%ebp), %eax
	jb	.L751
.L769:
	.loc 1 2173 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L751:
	.loc 1 2165 0
	movl	-8(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L749:
	.loc 1 2164 0
	cmpl	$0, -8(%ebp)
	jne	.L750
	.loc 1 2176 0
	cmpl	$0, -12(%ebp)
	je	.L747
	.loc 1 2177 0
	movl	-12(%ebp), %edx
	movl	%edx, -40(%ebp)
	jmp	.L746
.L747:
.LBE24:
	.loc 1 2180 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L746:
	movl	-40(%ebp), %eax
	.loc 1 2181 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	get_best_mode, .-get_best_mode
.globl gt_ggc_r_gt_stor_layout_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_stor_layout_h, @object
	.size	gt_ggc_r_gt_stor_layout_h, 32
gt_ggc_r_gt_stor_layout_h:
	.long	pending_sizes
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
	.local	sizetype_set
	.comm	sizetype_set,4,4
	.local	early_type_list
	.comm	early_type_list,4,4
	.local	pending_sizes
	.comm	pending_sizes,4,4
	.comm	sizetype_tab,24,4
	.comm	maximum_field_alignment,4,4
	.comm	immediate_size_expand,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
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
	.long	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0x83
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
	.long	.LCFI12-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI16-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
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
	.long	.LCFI20-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI23-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI27-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI31-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI35-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI38-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
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
	.long	.LCFI42-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI43
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
	.long	.LCFI46-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
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
	.long	.LCFI50-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI52-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI55-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI56
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
	.long	.LCFI59-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI64-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI65
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
	.long	.LCFI68-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI69
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI73-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI77-.LCFI74
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI78-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI79
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI83-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI84
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI89-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI90
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
	.long	.LCFI93-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI94
	.byte	0x83
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
	.long	.LCFI97-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI98
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI101-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI102
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
	.long	.LCFI105-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI106
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI110-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI111
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI116-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI117
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI121-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI122
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI127-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI128
	.byte	0x83
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
	.long	.LCFI131-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI135-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI136
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI141-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI142
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
	.long	.LCFI145-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
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
	.long	.LCFI149-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
	.byte	0x83
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
	.long	.LCFI153-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI154
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI158-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI159
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI164-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI165
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
	.long	.LCFI168-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/gnu/function.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/omp_types.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/target.h"
	.file 17 "../../../kg++fe/gnu/langhooks.h"
	.file 18 "../../../kg++fe/gnu/MIPS/gt-stor-layout.h"
	.file 19 "../../../kg++fe/gnu/ggc.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI136-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI164-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI165-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8da8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/stor-layout.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xab
	.uleb128 0x3
	.byte	0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0xb14
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
	.long	0x81c
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x156a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ad
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3
	.uleb128 0x4
	.long	0x1e8
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x157a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1fa
	.uleb128 0x8
	.long	0x2d3
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x887
	.long	0x3c4c
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3f6a
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3fb2
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x40d2
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x4013
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x407d
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x4158
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x51b1
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x43ba
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x418f
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x41d6
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x4224
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x4270
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5b88
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d9
	.uleb128 0xb
	.long	0x2de
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3bf
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3d6
	.long	0xa0
	.uleb128 0x11
	.long	0x3d6
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x2ed
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x3bf
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
	.byte	0xd
	.byte	0x3b
	.long	0x45b
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x4a5
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x486
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2de
	.uleb128 0x2
	.string	"FILE"
	.byte	0xb
	.byte	0x2e
	.long	0x4d6
	.uleb128 0x14
	.long	0x751
	.long	.LASF4
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x7cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x496
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x7d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x757
	.uleb128 0xb
	.long	0x403
	.uleb128 0x3
	.byte	0x4
	.long	0x403
	.uleb128 0x3
	.byte	0x4
	.long	0x768
	.uleb128 0x15
	.long	0x774
	.byte	0x1
	.uleb128 0x16
	.long	0x4c2
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c5
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x7cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xc
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x782
	.uleb128 0x3
	.byte	0x4
	.long	0x4d6
	.uleb128 0x10
	.long	0x7e1
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x774
	.uleb128 0x10
	.long	0x7f7
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x2e6
	.uleb128 0x3
	.byte	0x4
	.long	0x2e6
	.uleb128 0x3
	.byte	0x4
	.long	0x808
	.uleb128 0x15
	.long	0x814
	.byte	0x1
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x814
	.uleb128 0x19
	.long	0xa65
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x1a
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1a
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1a
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1a
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1a
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1a
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1a
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1a
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1a
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1a
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1a
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1a
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1a
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1a
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1a
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1a
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1a
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1a
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1a
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1a
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1a
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1a
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1a
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1a
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1a
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1a
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1a
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1a
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1a
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1a
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1a
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1a
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1a
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1a
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1a
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1a
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1a
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1a
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1a
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1a
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1a
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1a
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1a
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1a
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1a
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1a
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1a
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1a
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1a
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1a
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1a
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1a
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1a
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1a
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1a
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1b
	.long	0xb14
	.long	.LASF5
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x1a
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x1a
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x1a
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x1a
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x1a
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x1a
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x1a
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x1a
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x1a
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x1a
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x19
	.long	0x12e3
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x1a
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1a
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1a
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1a
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1a
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1a
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1a
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1a
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1a
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1a
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1a
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1a
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1a
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1a
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1a
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1a
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1a
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1a
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1a
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1a
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1a
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1a
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1a
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1a
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1a
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1a
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1a
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1a
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1a
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1a
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1a
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1a
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1a
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1a
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1a
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1a
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1a
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1a
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1a
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1a
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1a
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1a
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1a
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1a
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1a
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1a
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1a
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1a
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1a
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1a
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1a
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1a
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1a
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1a
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1a
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1a
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1a
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1a
	.string	"SET"
	.sleb128 57
	.uleb128 0x1a
	.string	"USE"
	.sleb128 58
	.uleb128 0x1a
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1a
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1a
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1a
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1a
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1a
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1a
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1a
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1a
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1a
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1a
	.string	"PC"
	.sleb128 69
	.uleb128 0x1a
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1a
	.string	"REG"
	.sleb128 71
	.uleb128 0x1a
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1a
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1a
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1a
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1a
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1a
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1a
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1a
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1a
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1a
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1a
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1a
	.string	"COND"
	.sleb128 83
	.uleb128 0x1a
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1a
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1a
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1a
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1a
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1a
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1a
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1a
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1a
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1a
	.string	"AND"
	.sleb128 93
	.uleb128 0x1a
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1a
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1a
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1a
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1a
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1a
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1a
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1a
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1a
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1a
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1a
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1a
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1a
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1a
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1a
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1a
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1a
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1a
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1a
	.string	"NE"
	.sleb128 112
	.uleb128 0x1a
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1a
	.string	"GE"
	.sleb128 114
	.uleb128 0x1a
	.string	"GT"
	.sleb128 115
	.uleb128 0x1a
	.string	"LE"
	.sleb128 116
	.uleb128 0x1a
	.string	"LT"
	.sleb128 117
	.uleb128 0x1a
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1a
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1a
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1a
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1a
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1a
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1a
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1a
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1a
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1a
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1a
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1a
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1a
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1a
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1a
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1a
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1a
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1a
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1a
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1a
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1a
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1a
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1a
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1a
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1a
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1a
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1a
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1a
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1a
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1a
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1a
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1a
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1a
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1a
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1a
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1a
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1a
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1a
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1a
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1a
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1a
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1a
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1a
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1a
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1a
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1a
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1c
	.long	0x13bd
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x12e3
	.uleb128 0x14
	.long	0x142e
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x4
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x4
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x4
	.byte	0x67
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0x13d8
	.uleb128 0x8
	.long	0x150b
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1f
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x45b
	.uleb128 0x1f
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e6
	.uleb128 0x1f
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3bf
	.uleb128 0x1f
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d3
	.uleb128 0x1f
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0xa0
	.uleb128 0x1f
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x1a0
	.uleb128 0x1f
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x81c
	.uleb128 0x1f
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x13bd
	.uleb128 0x1f
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x151f
	.uleb128 0x1f
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x1537
	.uleb128 0x1f
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e8
	.uleb128 0x1f
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x154f
	.uleb128 0x1f
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x1555
	.byte	0x0
	.uleb128 0x20
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x150b
	.uleb128 0x20
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1525
	.uleb128 0x20
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x153d
	.uleb128 0x3
	.byte	0x4
	.long	0x142e
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x1439
	.uleb128 0x10
	.long	0x157a
	.long	0x155b
	.uleb128 0x11
	.long	0x3d6
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x158a
	.long	0xa0
	.uleb128 0x11
	.long	0x3d6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x4
	.long	0x15c2
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x1590
	.uleb128 0x19
	.long	0x1ef6
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x1a
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1a
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1a
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1a
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1a
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1a
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1a
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1a
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1a
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1a
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1a
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1a
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1a
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1a
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1a
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1a
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1a
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1a
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1a
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1a
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1a
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1a
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1a
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1a
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1a
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1a
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1a
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1a
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1a
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1a
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1a
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1a
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1a
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1a
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1a
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1a
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1a
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1a
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1a
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1a
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1a
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1a
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1a
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1a
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1a
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1a
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1a
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1a
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1a
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1a
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1a
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1a
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1a
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1a
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1a
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1a
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1a
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1a
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1a
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1a
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1a
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1a
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1a
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1a
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1a
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1a
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1a
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1a
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1a
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1a
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1a
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1a
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1a
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1a
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1a
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1a
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1a
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1a
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1a
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1a
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1a
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1a
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1a
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1a
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1a
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1a
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1a
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1a
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1a
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1a
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1a
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1a
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1a
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1a
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1a
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1a
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1a
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1a
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1a
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1a
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1a
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1a
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1a
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1a
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1a
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1a
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1a
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1a
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1a
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1a
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1a
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1a
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1a
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1a
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1a
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1a
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1a
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1a
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1a
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1a
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1a
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1a
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1a
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1a
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1a
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1a
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1a
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1a
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1a
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1a
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1a
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1a
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1a
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1a
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1a
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1a
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1a
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1a
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1a
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1a
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1a
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1a
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1a
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1a
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1a
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1a
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1a
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3bf
	.uleb128 0x4
	.long	0x1f43
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x3
	.byte	0x30
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1f4d
	.uleb128 0x20
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x1fa2
	.long	.LASF10
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x1a
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x19
	.long	0x3c4c
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x1a
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1a
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1a
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1a
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1a
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1a
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1a
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1a
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1a
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1a
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1a
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1a
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1a
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1a
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1a
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1a
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1a
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1a
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1a
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1a
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1a
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1a
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1a
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1a
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1a
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1a
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1a
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1a
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1a
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1a
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1a
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1a
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1a
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1a
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1a
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1a
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1a
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1a
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1a
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1a
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1a
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1a
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1a
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1a
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1a
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1a
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1a
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1a
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1a
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1a
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1a
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1a
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1a
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1a
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1a
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1a
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1a
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1a
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1a
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1a
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1a
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1a
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1a
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1a
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1a
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1a
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1a
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1a
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1a
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1a
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1a
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1a
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1a
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1a
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1a
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1a
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1a
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1a
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1a
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1a
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1a
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1a
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1a
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1a
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1a
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1a
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1a
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1a
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1a
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1a
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1a
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1a
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1a
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1a
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1a
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1a
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1a
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1a
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1a
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1a
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1a
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1a
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1a
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1a
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1a
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1a
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1a
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1a
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1a
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1a
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1a
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1a
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1a
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1a
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1a
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1a
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1a
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1a
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1a
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1a
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1a
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1a
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1a
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1a
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1a
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1a
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1a
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1a
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1a
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1a
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1a
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1a
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1a
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1a
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1a
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1a
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1a
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1a
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1a
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1a
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1a
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1a
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1a
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1a
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1a
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1a
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1a
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1a
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1a
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1a
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1a
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1a
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3f2e
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF2
	.byte	0x3
	.byte	0x8e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x15d4
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
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
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3f6a
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3fb2
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x304
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3f2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4000
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x400d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4000
	.uleb128 0xd
	.long	0x4077
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x334
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x336
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x4077
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f43
	.uleb128 0xd
	.long	0x40d2
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x343
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x411a
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x356
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x4158
	.long	.LASF20
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x751
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x418f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x377
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x411a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x41d6
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x381
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4214
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x38f
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x390
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x4214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4224
	.long	0x1e8
	.uleb128 0x11
	.long	0x3d6
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x4270
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x3d5
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x4214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4360
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x40b
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF21
	.byte	0x3
	.value	0x40e
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3bf
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
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x414
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x43a7
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e6
	.uleb128 0xa
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4c4
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x43b4
	.byte	0x0
	.uleb128 0x20
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x43a7
	.uleb128 0xd
	.long	0x46fd
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x552
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x554
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x555
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x556
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF25
	.byte	0x3
	.value	0x559
	.long	0x3bf
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF0
	.byte	0x3
	.value	0x55a
	.long	0x81c
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x3
	.value	0x562
	.long	0x3bf
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x564
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x565
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x3
	.value	0x566
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x3
	.value	0x567
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x3
	.value	0x568
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x3
	.value	0x569
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF17
	.byte	0x3
	.value	0x56a
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF27
	.byte	0x3
	.value	0x56b
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x3
	.value	0x56d
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x4360
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x21
	.long	.LASF28
	.byte	0x3
	.value	0x576
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x21
	.long	.LASF29
	.byte	0x3
	.value	0x57f
	.long	0x4709
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1f07
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x20
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x46fd
	.uleb128 0xd
	.long	0x474c
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x23
	.long	.LASF9
	.byte	0x3
	.value	0x818
	.long	0x3bf
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF30
	.byte	0x3
	.value	0x819
	.long	0x3bf
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4781
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1fa2
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x45b
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x470f
	.byte	0x0
	.uleb128 0x24
	.long	0x47c0
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x5173
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0xa0
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e8
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e6
	.byte	0x0
	.uleb128 0x25
	.long	0x5173
	.long	.LASF31
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x6184
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x6198
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x619e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x61a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x61ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x8
	.byte	0xbe
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x8
	.byte	0xc1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x5173
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x8
	.byte	0xce
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x8
	.byte	0xec
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x61d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x45b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x158a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x61e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5e8a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x6202
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x8
	.value	0x184
	.long	0x621c
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x22
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.long	.LASF33
	.byte	0x8
	.value	0x1fa
	.long	0x610e
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x47c0
	.uleb128 0x26
	.long	0x51b1
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x4077
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1ef6
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3bf
	.byte	0x0
	.uleb128 0xd
	.long	0x58f8
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x7c6
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x15c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF8
	.byte	0x3
	.value	0x7c9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.long	.LASF0
	.byte	0x3
	.value	0x7ca
	.long	0x81c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF21
	.byte	0x3
	.value	0x7d3
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x3
	.value	0x7ed
	.long	0x1f52
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x3
	.value	0x7f0
	.long	0x3bf
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF27
	.byte	0x3
	.value	0x7f2
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x7fa
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x7fb
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x3
	.value	0x7fc
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x3
	.value	0x7fd
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x3
	.value	0x7fe
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x3
	.value	0x7ff
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF17
	.byte	0x3
	.value	0x800
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF18
	.byte	0x3
	.value	0x801
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3bf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3bf
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
	.long	0x474c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x81d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF28
	.byte	0x3
	.value	0x81e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x82b
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x82e
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x4781
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x45b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF29
	.byte	0x3
	.value	0x848
	.long	0x5904
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3bf
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3bf
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
	.long	0x5179
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1f07
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x20
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x58f8
	.uleb128 0x19
	.long	0x5b88
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.uleb128 0x1a
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1a
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1a
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1a
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1a
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1a
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1a
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1a
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1a
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1a
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1a
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1a
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1a
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1a
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1a
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1a
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1a
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1a
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1a
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1a
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1a
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1a
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1a
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1a
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1a
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1a
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1a
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1a
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1a
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1a
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1a
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1a
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1a
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x5bd7
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x21
	.long	.LASF1
	.byte	0x3
	.value	0x865
	.long	0x3c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x590a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5c92
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x21
	.long	.LASF28
	.byte	0x3
	.value	0xa20
	.long	0x5c92
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x5c97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x5c97
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x5c97
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x5cd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2d3
	.uleb128 0xb
	.long	0x5c9c
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x27
	.long	0x5cc9
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x5cc9
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x5ccf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x3
	.byte	0x4
	.long	0x5c9c
	.uleb128 0xb
	.long	0x5cda
	.uleb128 0x3
	.byte	0x4
	.long	0x5ca5
	.uleb128 0xd
	.long	0x5e03
	.string	"record_layout_info_s"
	.byte	0x2c
	.byte	0x3
	.value	0xaaf
	.uleb128 0xe
	.string	"t"
	.byte	0x3
	.value	0xab1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF7
	.byte	0x3
	.value	0xab4
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"offset_align"
	.byte	0x3
	.value	0xab6
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF34
	.byte	0x3
	.value	0xab8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"record_align"
	.byte	0x3
	.value	0xaba
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"unpacked_align"
	.byte	0x3
	.value	0xabc
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"unpadded_align"
	.byte	0x3
	.value	0xabf
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"prev_field"
	.byte	0x3
	.value	0xac1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"pending_statics"
	.byte	0x3
	.value	0xac4
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"remaining_in_alignment"
	.byte	0x3
	.value	0xac6
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"packed_maybe_necessary"
	.byte	0x3
	.value	0xac7
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.string	"record_layout_info"
	.byte	0x3
	.value	0xac8
	.long	0x5e1e
	.uleb128 0x3
	.byte	0x4
	.long	0x5ce0
	.uleb128 0x4
	.long	0x5e8a
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5e8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e24
	.uleb128 0x14
	.long	0x5ed9
	.long	.LASF35
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF36
	.byte	0x8
	.byte	0x28
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x5ed9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e90
	.uleb128 0x4
	.long	0x602e
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF36
	.byte	0x8
	.byte	0x4a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF35
	.byte	0x8
	.byte	0x50
	.long	0x5ed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x75c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x5cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x158a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x610e
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6178
	.long	.LASF33
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x20
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6178
	.uleb128 0x20
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x618a
	.uleb128 0x3
	.byte	0x4
	.long	0x602e
	.uleb128 0x3
	.byte	0x4
	.long	0x5edf
	.uleb128 0x20
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61aa
	.uleb128 0x20
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61c0
	.uleb128 0x20
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61dd
	.uleb128 0x20
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61ef
	.uleb128 0x20
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6208
	.uleb128 0x4
	.long	0x6274
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x13
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0x13
	.byte	0x33
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x13
	.byte	0x34
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x13
	.byte	0x35
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x13
	.byte	0x36
	.long	0x762
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x62bc
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x10
	.byte	0x3b
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x10
	.byte	0x3c
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x10
	.byte	0x3d
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x10
	.byte	0x3e
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x64f2
	.string	"asm_out"
	.byte	0x70
	.byte	0x10
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x10
	.byte	0x35
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x10
	.byte	0x35
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x10
	.byte	0x38
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x10
	.byte	0x3f
	.long	0x6274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x10
	.byte	0x3f
	.long	0x6274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x10
	.byte	0x46
	.long	0x650c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x10
	.byte	0x49
	.long	0x6529
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x10
	.byte	0x4d
	.long	0x6540
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x10
	.byte	0x50
	.long	0x6557
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x10
	.byte	0x53
	.long	0x6569
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x10
	.byte	0x56
	.long	0x6569
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x10
	.byte	0x59
	.long	0x6557
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x10
	.byte	0x5d
	.long	0x6580
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x10
	.byte	0x60
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x10
	.byte	0x63
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x10
	.byte	0x6a
	.long	0x659c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x10
	.byte	0x6e
	.long	0x65b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x10
	.byte	0x73
	.long	0x6540
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x10
	.byte	0x76
	.long	0x65cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x10
	.byte	0x79
	.long	0x65cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x10
	.byte	0x80
	.long	0x65f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x10
	.byte	0x8b
	.long	0x661a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x27
	.long	0x650c
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x3bf
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64f2
	.uleb128 0x15
	.long	0x6523
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x2d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ca
	.uleb128 0x3
	.byte	0x4
	.long	0x6512
	.uleb128 0x15
	.long	0x6540
	.byte	0x1
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x652f
	.uleb128 0x15
	.long	0x6557
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x45b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6546
	.uleb128 0x15
	.long	0x6569
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x655d
	.uleb128 0x15
	.long	0x6580
	.byte	0x1
	.uleb128 0x16
	.long	0x2d3
	.uleb128 0x16
	.long	0x3bf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x656f
	.uleb128 0x15
	.long	0x659c
	.byte	0x1
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x46c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6586
	.uleb128 0x15
	.long	0x65b8
	.byte	0x1
	.uleb128 0x16
	.long	0x81c
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x46c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65a2
	.uleb128 0x15
	.long	0x65cf
	.byte	0x1
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65be
	.uleb128 0x15
	.long	0x65f5
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x45b
	.uleb128 0x16
	.long	0x45b
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65d5
	.uleb128 0x27
	.long	0x661a
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x45b
	.uleb128 0x16
	.long	0x45b
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65fb
	.uleb128 0x4
	.long	0x67db
	.string	"sched"
	.byte	0x40
	.byte	0x10
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x10
	.byte	0x97
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x10
	.byte	0x9b
	.long	0x6815
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x10
	.byte	0xa0
	.long	0x6821
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x10
	.byte	0xa4
	.long	0x6846
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x10
	.byte	0xa7
	.long	0x6862
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x10
	.byte	0xaa
	.long	0x6879
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x10
	.byte	0xae
	.long	0x68a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x10
	.byte	0xaf
	.long	0x68a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x10
	.byte	0xb4
	.long	0x6821
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x10
	.byte	0xc2
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x10
	.byte	0xc3
	.long	0x68af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x10
	.byte	0xc4
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x10
	.byte	0xc5
	.long	0x68af
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x10
	.byte	0xcd
	.long	0x6821
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x10
	.byte	0xd8
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x10
	.byte	0xd9
	.long	0x68c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x27
	.long	0x67fa
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67db
	.uleb128 0x27
	.long	0x6815
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6800
	.uleb128 0x29
	.byte	0x1
	.long	0x2e6
	.uleb128 0x3
	.byte	0x4
	.long	0x681b
	.uleb128 0x27
	.long	0x6846
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6827
	.uleb128 0x15
	.long	0x6862
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x684c
	.uleb128 0x15
	.long	0x6879
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6868
	.uleb128 0x27
	.long	0x68a3
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x158a
	.uleb128 0x16
	.long	0x7fc
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x687f
	.uleb128 0x29
	.byte	0x1
	.long	0xa0
	.uleb128 0x3
	.byte	0x4
	.long	0x68a9
	.uleb128 0x27
	.long	0x68c5
	.byte	0x1
	.long	0xa0
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68b5
	.uleb128 0x4
	.long	0x6ba8
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x10
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x10
	.byte	0x8f
	.long	0x62bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x10
	.byte	0xda
	.long	0x6620
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x10
	.byte	0xdd
	.long	0x6bbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x10
	.byte	0xe0
	.long	0x6bbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x10
	.byte	0xe4
	.long	0x6bc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x10
	.byte	0xe9
	.long	0x6be3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x10
	.byte	0xec
	.long	0x6bf5
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x10
	.byte	0xef
	.long	0x6c0c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x10
	.byte	0xf3
	.long	0x6c22
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x10
	.byte	0xf7
	.long	0x6c22
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x10
	.byte	0xfa
	.long	0x816
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x10
	.byte	0xfd
	.long	0x6c4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x10
	.value	0x103
	.long	0x6c6c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x10
	.value	0x107
	.long	0x6c78
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x10
	.value	0x10a
	.long	0x6c8e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x10
	.value	0x10d
	.long	0x6c22
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x10
	.value	0x111
	.long	0x6c22
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x10
	.value	0x115
	.long	0x6540
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x10
	.value	0x118
	.long	0x6ca4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x10
	.value	0x11d
	.long	0x5c9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x10
	.value	0x121
	.long	0x5c9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x10
	.value	0x124
	.long	0x5c9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x10
	.value	0x127
	.long	0x5c9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x10
	.value	0x12a
	.long	0x5c9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x27
	.long	0x6bbd
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ba8
	.uleb128 0x3
	.byte	0x4
	.long	0x6bc9
	.uleb128 0xb
	.long	0x5bd7
	.uleb128 0x27
	.long	0x6be3
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bce
	.uleb128 0x15
	.long	0x6bf5
	.byte	0x1
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6be9
	.uleb128 0x15
	.long	0x6c0c
	.byte	0x1
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x5cc9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bfb
	.uleb128 0x27
	.long	0x6c22
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c12
	.uleb128 0x27
	.long	0x6c4c
	.byte	0x1
	.long	0xa0
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x81c
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c28
	.uleb128 0x27
	.long	0x6c6c
	.byte	0x1
	.long	0x3bf
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2d3
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c52
	.uleb128 0x29
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x3
	.byte	0x4
	.long	0x6c72
	.uleb128 0x27
	.long	0x6c8e
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x16
	.long	0xa0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c7e
	.uleb128 0x27
	.long	0x6ca4
	.byte	0x1
	.long	0x2d3
	.uleb128 0x16
	.long	0x2d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c94
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x11
	.byte	0x1d
	.long	0x6cc6
	.uleb128 0x3
	.byte	0x4
	.long	0x6ccc
	.uleb128 0x15
	.long	0x6ce2
	.byte	0x1
	.uleb128 0x16
	.long	0x6523
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x4
	.long	0x6e68
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x11
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x11
	.byte	0x24
	.long	0x6eb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x11
	.byte	0x29
	.long	0x6ec8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x11
	.byte	0x2a
	.long	0x6ede
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x11
	.byte	0x2b
	.long	0x6ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x11
	.byte	0x2d
	.long	0x6ede
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x11
	.byte	0x2e
	.long	0x6f14
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x11
	.byte	0x2f
	.long	0x6f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x11
	.byte	0x34
	.long	0x6ede
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x11
	.byte	0x35
	.long	0x6f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x11
	.byte	0x36
	.long	0x6ede
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x11
	.byte	0x37
	.long	0x6f6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x11
	.byte	0x38
	.long	0x6f8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x27
	.long	0x6e8c
	.byte	0x1
	.long	0x1f4
	.uleb128 0x16
	.long	0x6e8c
	.uleb128 0x16
	.long	0x7fc
	.uleb128 0x16
	.long	0x6e92
	.uleb128 0x16
	.long	0x4c2
	.uleb128 0x16
	.long	0x4c2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x6e98
	.uleb128 0x27
	.long	0x6eb2
	.byte	0x1
	.long	0x1f4
	.uleb128 0x16
	.long	0x6e8c
	.uleb128 0x16
	.long	0x7fc
	.uleb128 0x16
	.long	0x4c2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e68
	.uleb128 0x27
	.long	0x6ec8
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x6e8c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6eb8
	.uleb128 0x27
	.long	0x6ede
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ece
	.uleb128 0x27
	.long	0x6ef9
	.byte	0x1
	.long	0x1f4
	.uleb128 0x16
	.long	0x4c2
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ee4
	.uleb128 0x27
	.long	0x6f14
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6eff
	.uleb128 0x27
	.long	0x6f43
	.byte	0x1
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x4c2
	.uleb128 0x16
	.long	0x7fc
	.uleb128 0x16
	.long	0x4c2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f1a
	.uleb128 0x27
	.long	0x6f59
	.byte	0x1
	.long	0x5c9c
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f49
	.uleb128 0x15
	.long	0x6f6b
	.byte	0x1
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f5f
	.uleb128 0x27
	.long	0x6f8b
	.byte	0x1
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.uleb128 0x16
	.long	0x1f4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f71
	.uleb128 0x4
	.long	0x7000
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x11
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x11
	.byte	0x42
	.long	0x700c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x11
	.byte	0x45
	.long	0x700c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x11
	.byte	0x48
	.long	0x700c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x11
	.byte	0x4b
	.long	0x700c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x700c
	.byte	0x1
	.uleb128 0x16
	.long	0x5173
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7000
	.uleb128 0x4
	.long	0x705d
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x11
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x11
	.byte	0x54
	.long	0x7072
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x11
	.byte	0x57
	.long	0x7088
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	0x7072
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x4c2
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x705d
	.uleb128 0x27
	.long	0x7088
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7078
	.uleb128 0x4
	.long	0x717b
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x11
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x11
	.byte	0x60
	.long	0x718b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x11
	.byte	0x64
	.long	0x71a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x11
	.byte	0x68
	.long	0x71c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x11
	.byte	0x6c
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x11
	.byte	0x70
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x11
	.byte	0x74
	.long	0x71f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x11
	.byte	0x7a
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x11
	.byte	0x80
	.long	0x7209
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x27
	.long	0x718b
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x15d4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x717b
	.uleb128 0x27
	.long	0x71a6
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x81c
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7191
	.uleb128 0x27
	.long	0x71c1
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x3bf
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71ac
	.uleb128 0x27
	.long	0x71d7
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71c7
	.uleb128 0x27
	.long	0x71f2
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71dd
	.uleb128 0x15
	.long	0x7209
	.byte	0x1
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71f8
	.uleb128 0x4
	.long	0x7315
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x11
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x11
	.byte	0x89
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x11
	.byte	0x90
	.long	0x732f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x11
	.byte	0x94
	.long	0x6821
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x11
	.byte	0x99
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x11
	.byte	0x9c
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x11
	.byte	0xa2
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x11
	.byte	0xa5
	.long	0x733b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x11
	.byte	0xa9
	.long	0x6c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x11
	.byte	0xad
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x11
	.byte	0xb0
	.long	0x6c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x27
	.long	0x732f
	.byte	0x1
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7315
	.uleb128 0x29
	.byte	0x1
	.long	0x1e8
	.uleb128 0x3
	.byte	0x4
	.long	0x7335
	.uleb128 0x25
	.long	0x7766
	.long	.LASF38
	.value	0x120
	.byte	0x11
	.byte	0xb6
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x11
	.byte	0xb8
	.long	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x11
	.byte	0xbc
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x11
	.byte	0xc0
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x11
	.byte	0xca
	.long	0x7781
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x11
	.byte	0xd6
	.long	0x6c78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x11
	.byte	0xde
	.long	0x6ca4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x11
	.byte	0xe1
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x11
	.byte	0xe5
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x11
	.byte	0xe8
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x11
	.byte	0xec
	.long	0x7797
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x11
	.byte	0xf1
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x11
	.byte	0xf5
	.long	0x77bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x11
	.value	0x102
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x11
	.value	0x106
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x11
	.value	0x10f
	.long	0x77d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x11
	.value	0x113
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x11
	.value	0x118
	.long	0x7088
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x11
	.value	0x11d
	.long	0x6c22
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x11
	.value	0x120
	.long	0x7088
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x11
	.value	0x124
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x11
	.value	0x129
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x11
	.value	0x12d
	.long	0x71d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x11
	.value	0x134
	.long	0x6bf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x11
	.value	0x138
	.long	0x6c78
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x11
	.value	0x13b
	.long	0x5c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x11
	.value	0x13f
	.long	0x816
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x11
	.value	0x143
	.long	0x6caa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x11
	.value	0x147
	.long	0x6caa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x11
	.value	0x148
	.long	0x6caa
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x11
	.value	0x149
	.long	0x6caa
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x11
	.value	0x151
	.long	0x77f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x11
	.value	0x154
	.long	0x7824
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x11
	.value	0x15b
	.long	0x71d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF37
	.byte	0x11
	.value	0x162
	.long	0x6bc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x11
	.value	0x163
	.long	0x6bc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x11
	.value	0x164
	.long	0x6bc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF31
	.byte	0x11
	.value	0x167
	.long	0x6f91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x11
	.value	0x169
	.long	0x6ce2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x11
	.value	0x16b
	.long	0x7012
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x11
	.value	0x16d
	.long	0x720f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x11
	.value	0x16f
	.long	0x708e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x27
	.long	0x777b
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0x2e6
	.uleb128 0x16
	.long	0x777b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c4
	.uleb128 0x3
	.byte	0x4
	.long	0x7766
	.uleb128 0x27
	.long	0x7797
	.byte	0x1
	.long	0x45b
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7787
	.uleb128 0x27
	.long	0x77bc
	.byte	0x1
	.long	0xa0
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x81c
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x779d
	.uleb128 0x27
	.long	0x77d7
	.byte	0x1
	.long	0x2e6
	.uleb128 0x16
	.long	0xa0
	.uleb128 0x16
	.long	0x1e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77c2
	.uleb128 0x27
	.long	0x77f2
	.byte	0x1
	.long	0x2d3
	.uleb128 0x16
	.long	0x1e8
	.uleb128 0x16
	.long	0x2e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77dd
	.uleb128 0x15
	.long	0x7809
	.byte	0x1
	.uleb128 0x16
	.long	0x7809
	.uleb128 0x16
	.long	0x2d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x780f
	.uleb128 0x20
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x77f8
	.uleb128 0x2a
	.byte	0x1
	.string	"internal_reference_types"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.long	0x789c
	.byte	0x1
	.string	"get_pending_sizes"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x1e8
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"chain"
	.byte	0x1
	.byte	0x65
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0x66
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x78e1
	.byte	0x1
	.string	"is_pending_size"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x2e6
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2d
	.string	"expr"
	.byte	0x1
	.byte	0x74
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0x76
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x7917
	.byte	0x1
	.string	"put_pending_size"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2d
	.string	"expr"
	.byte	0x1
	.byte	0x82
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x795f
	.byte	0x1
	.string	"put_pending_sizes"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2d
	.string	"chain"
	.byte	0x1
	.byte	0x94
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12338
	.byte	0x0
	.uleb128 0x2b
	.long	0x7995
	.byte	0x1
	.string	"variable_size"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	0x1e8
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.byte	0xa1
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x79f9
	.byte	0x1
	.string	"mode_for_size"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0x81c
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.byte	0xdd
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"class"
	.byte	0x1
	.byte	0xde
	.long	0xa65
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"limit"
	.byte	0x1
	.byte	0xdf
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.byte	0xe1
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x7a54
	.byte	0x1
	.string	"mode_for_size_tree"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	0x81c
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.byte	0xf3
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"class"
	.byte	0x1
	.byte	0xf4
	.long	0xa65
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"limit"
	.byte	0x1
	.byte	0xf5
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x32
	.long	0x7ac5
	.byte	0x1
	.string	"smallest_mode_for_size"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0x81c
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x33
	.long	.LASF8
	.byte	0x1
	.value	0x106
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"class"
	.byte	0x1
	.value	0x107
	.long	0xa65
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x109
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12436
	.byte	0x0
	.uleb128 0x32
	.long	0x7b11
	.byte	0x1
	.string	"int_mode_for_mode"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x81c
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x119
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12461
	.byte	0x0
	.uleb128 0x32
	.long	0x7b5d
	.byte	0x1
	.string	"get_mode_alignment"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0x3bf
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x13c
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF40
	.byte	0x1
	.value	0x13e
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7bb4
	.byte	0x1
	.string	"round_up"
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	0x1e8
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x153
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"divisor"
	.byte	0x1
	.value	0x154
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x156
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7c0d
	.byte	0x1
	.string	"round_down"
	.byte	0x1
	.value	0x161
	.byte	0x1
	.long	0x1e8
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x34
	.string	"value"
	.byte	0x1
	.value	0x15f
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"divisor"
	.byte	0x1
	.value	0x160
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"arg"
	.byte	0x1
	.value	0x162
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x7cea
	.byte	0x1
	.string	"layout_decl"
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x34
	.string	"decl"
	.byte	0x1
	.value	0x176
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF41
	.byte	0x1
	.value	0x177
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x179
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"code"
	.byte	0x1
	.value	0x17a
	.long	0x15d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"rtl"
	.byte	0x1
	.value	0x17b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	0x7c9b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x36
	.string	"xmode"
	.byte	0x1
	.value	0x1c9
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	0x7cd9
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x1e9
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x36
	.string	"size_as_int"
	.byte	0x1
	.value	0x1ee
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12547
	.byte	0x0
	.uleb128 0x37
	.long	0x7d22
	.byte	0x1
	.string	"set_lang_adjust_rli"
	.byte	0x1
	.value	0x20a
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.value	0x209
	.long	0x7d2e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.long	0x7d2e
	.byte	0x1
	.uleb128 0x16
	.long	0x5e03
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d22
	.uleb128 0x3a
	.long	0x7dad
	.string	"assign_field_ids"
	.byte	0x1
	.value	0x213
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x34
	.string	"rec"
	.byte	0x1
	.value	0x212
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF42
	.byte	0x1
	.value	0x214
	.long	0x1e8
	.byte	0x2
	.byte	0x75
	.sleb128 -20
	.uleb128 0x36
	.string	"next_field_id"
	.byte	0x1
	.value	0x215
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.string	"fields_in_field"
	.byte	0x1
	.value	0x216
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7df8
	.byte	0x1
	.string	"start_record_layout"
	.byte	0x1
	.value	0x237
	.byte	0x1
	.long	0x5e03
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x236
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"rli"
	.byte	0x1
	.value	0x238
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7e3e
	.byte	0x1
	.string	"bit_from_pos"
	.byte	0x1
	.value	0x259
	.byte	0x1
	.long	0x1e8
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x33
	.long	.LASF7
	.byte	0x1
	.value	0x258
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF34
	.byte	0x1
	.value	0x258
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x7e85
	.byte	0x1
	.string	"byte_from_pos"
	.byte	0x1
	.value	0x262
	.byte	0x1
	.long	0x1e8
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x33
	.long	.LASF7
	.byte	0x1
	.value	0x261
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF34
	.byte	0x1
	.value	0x261
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x7ee6
	.byte	0x1
	.string	"pos_from_byte"
	.byte	0x1
	.value	0x26e
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.long	.LASF43
	.byte	0x1
	.value	0x26b
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x26b
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF30
	.byte	0x1
	.value	0x26c
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"pos"
	.byte	0x1
	.value	0x26d
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x37
	.long	0x7f46
	.byte	0x1
	.string	"pos_from_bit"
	.byte	0x1
	.value	0x281
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x33
	.long	.LASF43
	.byte	0x1
	.value	0x27e
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x27e
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF30
	.byte	0x1
	.value	0x27f
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"pos"
	.byte	0x1
	.value	0x280
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x37
	.long	0x7fbd
	.byte	0x1
	.string	"normalize_offset"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.long	.LASF43
	.byte	0x1
	.value	0x28f
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.value	0x28f
	.long	0x5cc9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF30
	.byte	0x1
	.value	0x290
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x36
	.string	"extra_aligns"
	.byte	0x1
	.value	0x296
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7fed
	.byte	0x1
	.string	"debug_rli"
	.byte	0x1
	.value	0x2a8
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x2a7
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x8021
	.byte	0x1
	.string	"normalize_rli"
	.byte	0x1
	.value	0x2c0
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x2bf
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x8060
	.byte	0x1
	.string	"rli_size_unit_so_far"
	.byte	0x1
	.value	0x2c9
	.byte	0x1
	.long	0x1e8
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x2c8
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x809a
	.byte	0x1
	.string	"rli_size_so_far"
	.byte	0x1
	.value	0x2d2
	.byte	0x1
	.long	0x1e8
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x2d1
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x815f
	.string	"update_alignment_for_field"
	.byte	0x1
	.value	0x2e0
	.byte	0x1
	.long	0x3bf
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x2dd
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF42
	.byte	0x1
	.value	0x2de
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF41
	.byte	0x1
	.value	0x2df
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF45
	.byte	0x1
	.value	0x2e2
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x2e4
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF27
	.byte	0x1
	.value	0x2e6
	.long	0x5c9c
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x38
	.long	0x8145
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x316
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x335
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x81a5
	.string	"place_union_field"
	.byte	0x1
	.value	0x35d
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x35b
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF42
	.byte	0x1
	.value	0x35c
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x831e
	.byte	0x1
	.string	"place_field"
	.byte	0x1
	.value	0x377
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x375
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF42
	.byte	0x1
	.value	0x376
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF45
	.byte	0x1
	.value	0x379
	.long	0x3bf
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF41
	.byte	0x1
	.value	0x37c
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.string	"actual_align"
	.byte	0x1
	.value	0x37d
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x37f
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	0x8297
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x3eb
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"dsize"
	.byte	0x1
	.value	0x3ec
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"field_size"
	.byte	0x1
	.value	0x3ed
	.long	0x45b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF7
	.byte	0x1
	.value	0x3ee
	.long	0x45b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.string	"bit_offset"
	.byte	0x1
	.value	0x3ef
	.long	0x45b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x39
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x36
	.string	"prev_saved"
	.byte	0x1
	.value	0x442
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.long	0x82e6
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x36
	.string	"bitsize"
	.byte	0x1
	.value	0x457
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x458
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x38
	.long	0x8303
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x473
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x49c
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x83cb
	.string	"finalize_record_size"
	.byte	0x1
	.value	0x4ff
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x4fe
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"unpadded_size"
	.byte	0x1
	.value	0x500
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"unpadded_size_unit"
	.byte	0x1
	.value	0x500
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x36
	.string	"unpacked_size"
	.byte	0x1
	.value	0x535
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x54b
	.long	0x2d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x843c
	.byte	0x1
	.string	"compute_record_mode"
	.byte	0x1
	.value	0x567
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x566
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF42
	.byte	0x1
	.value	0x568
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x569
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x579
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x84dc
	.string	"finalize_type_size"
	.byte	0x1
	.value	0x5bb
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x5ba
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x36
	.string	"variant"
	.byte	0x1
	.value	0x5f6
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x5f8
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x5f9
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF9
	.byte	0x1
	.value	0x5fa
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF27
	.byte	0x1
	.value	0x5fb
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x5fc
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8529
	.byte	0x1
	.string	"finish_record_layout"
	.byte	0x1
	.value	0x616
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x34
	.string	"rli"
	.byte	0x1
	.value	0x614
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"free_p"
	.byte	0x1
	.value	0x615
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x86da
	.byte	0x1
	.string	"layout_type"
	.byte	0x1
	.value	0x63a
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x639
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	0x857c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x36
	.string	"subtype"
	.byte	0x1
	.value	0x66f
	.long	0x1e8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x38
	.long	0x859c
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x36
	.string	"nbits"
	.byte	0x1
	.value	0x691
	.long	0x2e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x38
	.long	0x8650
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x36
	.string	"index"
	.byte	0x1
	.value	0x69f
	.long	0x1e8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.string	"element"
	.byte	0x1
	.value	0x6a0
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x36
	.string	"ub"
	.byte	0x1
	.value	0x6a8
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.string	"lb"
	.byte	0x1
	.value	0x6a9
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x6aa
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"element_size"
	.byte	0x1
	.value	0x6ab
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x36
	.string	"maxvalue"
	.byte	0x1
	.value	0x6bc
	.long	0x45b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.string	"minvalue"
	.byte	0x1
	.value	0x6be
	.long	0x45b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x867c
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x35
	.long	.LASF42
	.byte	0x1
	.value	0x712
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"rli"
	.byte	0x1
	.value	0x713
	.long	0x5e03
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x38
	.long	0x86c9
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x35
	.long	.LASF40
	.byte	0x1
	.value	0x739
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"size_in_bits"
	.byte	0x1
	.value	0x73b
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"rounded_size"
	.byte	0x1
	.value	0x73e
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13852
	.byte	0x0
	.uleb128 0x32
	.long	0x8724
	.byte	0x1
	.string	"make_signed_type"
	.byte	0x1
	.value	0x775
	.byte	0x1
	.long	0x1e8
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x33
	.long	.LASF25
	.byte	0x1
	.value	0x774
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x776
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x8770
	.byte	0x1
	.string	"make_unsigned_type"
	.byte	0x1
	.value	0x783
	.byte	0x1
	.long	0x1e8
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x33
	.long	.LASF25
	.byte	0x1
	.value	0x782
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x784
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x87a9
	.byte	0x1
	.string	"initialize_sizetypes"
	.byte	0x1
	.value	0x791
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x792
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x882b
	.byte	0x1
	.string	"set_sizetype"
	.byte	0x1
	.value	0x7b3
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x7b2
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"oprecision"
	.byte	0x1
	.value	0x7b4
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x7b9
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x7bb
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x7bc
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF39
	.long	0x89a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14355
	.byte	0x0
	.uleb128 0x37
	.long	0x8872
	.byte	0x1
	.string	"fixup_signed_type"
	.byte	0x1
	.value	0x803
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x802
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x804
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0x88bb
	.byte	0x1
	.string	"fixup_unsigned_type"
	.byte	0x1
	.value	0x829
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x828
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x82a
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x8991
	.byte	0x1
	.string	"get_best_mode"
	.byte	0x1
	.value	0x857
	.byte	0x1
	.long	0x81c
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x34
	.string	"bitsize"
	.byte	0x1
	.value	0x853
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF34
	.byte	0x1
	.value	0x853
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF9
	.byte	0x1
	.value	0x854
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"largest_mode"
	.byte	0x1
	.value	0x855
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"volatilep"
	.byte	0x1
	.value	0x856
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x858
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"unit"
	.byte	0x1
	.value	0x859
	.long	0x3bf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x36
	.string	"wide_mode"
	.byte	0x1
	.value	0x872
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.string	"tmode"
	.byte	0x1
	.value	0x872
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x89a1
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0x8991
	.uleb128 0x10
	.long	0x89b6
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x89a6
	.uleb128 0xb
	.long	0x89a6
	.uleb128 0x10
	.long	0x89d0
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0x89c0
	.uleb128 0x10
	.long	0x89e5
	.long	0x2de
	.uleb128 0x11
	.long	0x3d6
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0x89d5
	.uleb128 0xb
	.long	0x89c0
	.uleb128 0x2c
	.string	"sizetype_set"
	.byte	0x1
	.byte	0x2f
	.long	0x2e6
	.byte	0x5
	.byte	0x3
	.long	sizetype_set
	.uleb128 0x2c
	.string	"early_type_list"
	.byte	0x1
	.byte	0x33
	.long	0x1e8
	.byte	0x5
	.byte	0x3
	.long	early_type_list
	.uleb128 0x2c
	.string	"reference_types_internal"
	.byte	0x1
	.byte	0x44
	.long	0x2e6
	.byte	0x5
	.byte	0x3
	.long	reference_types_internal
	.uleb128 0x2c
	.string	"pending_sizes"
	.byte	0x1
	.byte	0x50
	.long	0x1e8
	.byte	0x5
	.byte	0x3
	.long	pending_sizes
	.uleb128 0x3c
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"mips_abi"
	.byte	0x9
	.value	0x3ca
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"stderr"
	.byte	0xb
	.byte	0x90
	.long	0x7cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8ab0
	.long	0xa65
	.uleb128 0x11
	.long	0x3d6
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0x8abd
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8aa0
	.uleb128 0x10
	.long	0x8ad2
	.long	0x403
	.uleb128 0x11
	.long	0x3d6
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x8ae5
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8ac2
	.uleb128 0x3c
	.string	"mode_unit_size"
	.byte	0x5
	.byte	0x5e
	.long	0x8b02
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8ac2
	.uleb128 0x10
	.long	0x8b17
	.long	0x414
	.uleb128 0x11
	.long	0x3d6
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0x8b2d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8b07
	.uleb128 0x3c
	.string	"mode_wider_mode"
	.byte	0x5
	.byte	0x84
	.long	0x8b4b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8ac2
	.uleb128 0x10
	.long	0x8b60
	.long	0x81c
	.uleb128 0x11
	.long	0x3d6
	.byte	0x8
	.byte	0x0
	.uleb128 0x3c
	.string	"class_narrowest_mode"
	.byte	0x5
	.byte	0xa6
	.long	0x8b7e
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8b50
	.uleb128 0x3c
	.string	"ptr_mode"
	.byte	0x5
	.byte	0xae
	.long	0x81c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8ba0
	.long	0x2de
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x3c
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x8bb8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x8b95
	.uleb128 0x10
	.long	0x8bcd
	.long	0x1e8
	.uleb128 0x11
	.long	0x3d6
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3d
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x8bbd
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8bf4
	.long	0x1e8
	.uleb128 0x11
	.long	0x3d6
	.byte	0xa
	.byte	0x0
	.uleb128 0x3d
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x8be4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8c1c
	.long	0x1e8
	.uleb128 0x11
	.long	0x3d6
	.byte	0x5
	.byte	0x0
	.uleb128 0x40
	.string	"sizetype_tab"
	.byte	0x1
	.byte	0x37
	.long	0x8c0c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sizetype_tab
	.uleb128 0x40
	.string	"maximum_field_alignment"
	.byte	0x1
	.byte	0x3b
	.long	0x3bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	maximum_field_alignment
	.uleb128 0x40
	.string	"set_alignment"
	.byte	0x1
	.byte	0x3f
	.long	0x3bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	set_alignment
	.uleb128 0x40
	.string	"immediate_size_expand"
	.byte	0x1
	.byte	0x55
	.long	0x2e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	immediate_size_expand
	.uleb128 0x3d
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"warn_larger_than"
	.byte	0xf
	.byte	0xa6
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"larger_than_size"
	.byte	0xf
	.byte	0xa7
	.long	0x45b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"warn_packed"
	.byte	0xf
	.byte	0xb0
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"warn_padded"
	.byte	0xf
	.byte	0xb4
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x5173
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"targetm"
	.byte	0x10
	.value	0x12d
	.long	0x68cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF38
	.byte	0x11
	.value	0x176
	.long	0x8d4a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x7341
	.uleb128 0x42
	.string	"lang_adjust_rli"
	.byte	0x1
	.value	0x205
	.long	0x7d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_adjust_rli
	.uleb128 0x10
	.long	0x8d7e
	.long	0x6222
	.uleb128 0x11
	.long	0x3d6
	.byte	0x1
	.byte	0x0
	.uleb128 0x40
	.string	"gt_ggc_r_gt_stor_layout_h"
	.byte	0x12
	.byte	0x19
	.long	0x8da6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_stor_layout_h
	.uleb128 0xb
	.long	0x8d6e
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x379
	.value	0x2
	.long	.Ldebug_info0
	.long	0x8dac
	.long	0x782a
	.string	"internal_reference_types"
	.long	0x7854
	.string	"get_pending_sizes"
	.long	0x789c
	.string	"is_pending_size"
	.long	0x78e1
	.string	"put_pending_size"
	.long	0x7917
	.string	"put_pending_sizes"
	.long	0x795f
	.string	"variable_size"
	.long	0x7995
	.string	"mode_for_size"
	.long	0x79f9
	.string	"mode_for_size_tree"
	.long	0x7a54
	.string	"smallest_mode_for_size"
	.long	0x7ac5
	.string	"int_mode_for_mode"
	.long	0x7b11
	.string	"get_mode_alignment"
	.long	0x7b5d
	.string	"round_up"
	.long	0x7bb4
	.string	"round_down"
	.long	0x7c0d
	.string	"layout_decl"
	.long	0x7cea
	.string	"set_lang_adjust_rli"
	.long	0x7dad
	.string	"start_record_layout"
	.long	0x7df8
	.string	"bit_from_pos"
	.long	0x7e3e
	.string	"byte_from_pos"
	.long	0x7e85
	.string	"pos_from_byte"
	.long	0x7ee6
	.string	"pos_from_bit"
	.long	0x7f46
	.string	"normalize_offset"
	.long	0x7fbd
	.string	"debug_rli"
	.long	0x7fed
	.string	"normalize_rli"
	.long	0x8021
	.string	"rli_size_unit_so_far"
	.long	0x8060
	.string	"rli_size_so_far"
	.long	0x81a5
	.string	"place_field"
	.long	0x83cb
	.string	"compute_record_mode"
	.long	0x84dc
	.string	"finish_record_layout"
	.long	0x8529
	.string	"layout_type"
	.long	0x86da
	.string	"make_signed_type"
	.long	0x8724
	.string	"make_unsigned_type"
	.long	0x8770
	.string	"initialize_sizetypes"
	.long	0x87a9
	.string	"set_sizetype"
	.long	0x882b
	.string	"fixup_signed_type"
	.long	0x8872
	.string	"fixup_unsigned_type"
	.long	0x88bb
	.string	"get_best_mode"
	.long	0x8c1c
	.string	"sizetype_tab"
	.long	0x8c37
	.string	"maximum_field_alignment"
	.long	0x8c5d
	.string	"set_alignment"
	.long	0x8c79
	.string	"immediate_size_expand"
	.long	0x8d4f
	.string	"lang_adjust_rli"
	.long	0x8d7e
	.string	"gt_ggc_r_gt_stor_layout_h"
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
	.string	"common"
.LASF19:
	.string	"length"
.LASF10:
	.string	"built_in_class"
.LASF33:
	.string	"function_frequency"
.LASF26:
	.string	"pointer_depth"
.LASF9:
	.string	"align"
.LASF0:
	.string	"mode"
.LASF20:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF8:
	.string	"size"
.LASF6:
	.string	"mem_attrs"
.LASF46:
	.string	"type_align"
.LASF22:
	.string	"abstract_origin"
.LASF41:
	.string	"known_align"
.LASF29:
	.string	"lang_specific"
.LASF23:
	.string	"size_unit"
.LASF28:
	.string	"name"
.LASF32:
	.string	"args_size"
.LASF37:
	.string	"attribute_table"
.LASF47:
	.string	"type_size"
.LASF31:
	.string	"function"
.LASF35:
	.string	"sequence_stack"
.LASF44:
	.string	"pbitpos"
.LASF25:
	.string	"precision"
.LASF43:
	.string	"poffset"
.LASF4:
	.string	"_IO_FILE"
.LASF15:
	.string	"lang_flag_4"
.LASF17:
	.string	"lang_flag_6"
.LASF13:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_5"
.LASF18:
	.string	"lang_flag_7"
.LASF21:
	.string	"abstract_flag"
.LASF27:
	.string	"user_align"
.LASF40:
	.string	"alignment"
.LASF24:
	.string	"attributes"
.LASF11:
	.string	"lang_flag_0"
.LASF12:
	.string	"lang_flag_1"
.LASF14:
	.string	"lang_flag_3"
.LASF45:
	.string	"desired_align"
.LASF2:
	.string	"type"
.LASF38:
	.string	"lang_hooks"
.LASF39:
	.string	"__FUNCTION__"
.LASF5:
	.string	"mode_class"
.LASF34:
	.string	"bitpos"
.LASF36:
	.string	"sequence_rtl_expr"
.LASF30:
	.string	"off_align"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"field"
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
