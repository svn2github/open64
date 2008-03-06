	.file	"init.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl begin_init_stmts
	.type	begin_init_stmts, @function
begin_init_stmts:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/init.c"
	.loc 1 70 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 71 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 72 0
	call	begin_stmt_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L4
.L2:
	.loc 1 74 0
	call	begin_global_stmt_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L4:
	.loc 1 76 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 77 0
	movl	$1, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L7:
	.loc 1 78 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	begin_init_stmts, .-begin_init_stmts
.globl finish_init_stmts
	.type	finish_init_stmts, @function
finish_init_stmts:
.LFB16:
	.loc 1 88 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 89 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 90 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	finish_compound_stmt@PLT
.L9:
	.loc 1 92 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_stmt_expr@PLT
	movl	%eax, 8(%ebp)
	.loc 1 95 0
	movl	8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	jmp	.L13
.L11:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_global_stmt_expr@PLT
	movl	%eax, 8(%ebp)
.L13:
	.loc 1 102 0
	cmpl	$0, 8(%ebp)
	je	.L14
	.loc 1 103 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L14:
	.loc 1 105 0
	movl	8(%ebp), %eax
	.loc 1 106 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	finish_init_stmts, .-finish_init_stmts
	.type	dfs_initialize_vtbl_ptrs, @function
dfs_initialize_vtbl_ptrs:
.LFB17:
	.loc 1 118 0
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
	subl	$44, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L18
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L20
.L18:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L20
.LBB2:
	.loc 1 122 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 124 0
	movl	$1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -16(%ebp)
	.loc 1 126 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_virtual_init
.L20:
.LBE2:
	.loc 1 129 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L22
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L24
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L26
.L24:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L27
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L27
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L27
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L27
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L26
.L27:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	orl	$1, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L33
.L26:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L33
.L22:
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$1, %edx
	movb	%dl, 11(%eax)
.L33:
	.loc 1 131 0
	movl	$0, %eax
	.loc 1 132 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	dfs_initialize_vtbl_ptrs, .-dfs_initialize_vtbl_ptrs
.globl initialize_vtbl_ptrs
	.type	initialize_vtbl_ptrs, @function
initialize_vtbl_ptrs:
.LFB18:
	.loc 1 140 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 151 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	dfs_unmarked_real_bases_queue_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_initialize_vtbl_ptrs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk_real@PLT
	.loc 1 153 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	dfs_marked_real_bases_queue_p@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	dfs_unmark@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk@PLT
	.loc 1 155 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	initialize_vtbl_ptrs, .-initialize_vtbl_ptrs
	.section	.rodata
	.type	__FUNCTION__.16124, @object
	.size	__FUNCTION__.16124, 16
__FUNCTION__.16124:
	.string	"build_zero_init"
.LC0:
	.string	"../../../kg++fe/gnu/cp/init.c"
	.text
.globl build_zero_init
	.type	build_zero_init, @function
build_zero_init:
.LFB19:
	.loc 1 170 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$68, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movb	%al, -40(%ebp)
	.loc 1 171 0
	movl	$0, -28(%ebp)
	.loc 1 191 0
	cmpl	$0, 12(%ebp)
	je	.L38
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L40
.L38:
	movl	$1, -48(%ebp)
	jmp	.L41
.L40:
	movl	$0, -48(%ebp)
.L41:
	cmpl	$0, -48(%ebp)
	jne	.L42
	leal	__FUNCTION__.16124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$192, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L42:
	.loc 1 194 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L44
	.loc 1 196 0
	movzbl	-40(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L46
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	zero_init_p@PLT
	testl	%eax, %eax
	je	.L46
	jmp	.L44
.L46:
	.loc 1 202 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L49
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L49
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L49
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L49
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L54
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L49
.L54:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L56
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L49
.L56:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L58
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L58
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L58
.L49:
	.loc 1 203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -28(%ebp)
	.loc 1 202 0
	jmp	.L44
.L58:
	.loc 1 204 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L61
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L63
.L61:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L64
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L64
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L64
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L64
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L63
.L64:
.LBB3:
	.loc 1 210 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 212 0
	movl	$0, -20(%ebp)
	.loc 1 213 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L69
.L70:
	.loc 1 215 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L71
	.loc 1 222 0
	cmpb	$0, -40(%ebp)
	je	.L73
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	zero_init_p@PLT
	testl	%eax, %eax
	jne	.L73
	.loc 1 223 0
	movzbl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_zero_init@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
.L73:
	.loc 1 230 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L76
.L71:
	.loc 1 213 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L69:
	cmpl	$0, -24(%ebp)
	jne	.L70
.L76:
	.loc 1 233 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 204 0
	jmp	.L44
.L63:
.LBE3:
	.loc 1 235 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L77
.LBB4:
	.loc 1 242 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 244 0
	movl	$0, -8(%ebp)
	.loc 1 245 0
	cmpl	$0, 12(%ebp)
	jne	.L79
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts@PLT
	movl	%eax, -44(%ebp)
	jmp	.L81
.L79:
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L81:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 246 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L82
	leal	__FUNCTION__.16124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$246, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L82:
	.loc 1 248 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 249 0
	jmp	.L84
.L85:
	.loc 1 251 0
	movzbl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_zero_init@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 250 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -16(%ebp)
.L84:
	.loc 1 249 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L85
	.loc 1 256 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L44
.L77:
.LBE4:
	.loc 1 258 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L44
	.loc 1 261 0
	leal	__FUNCTION__.16124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$261, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L44:
	.loc 1 264 0
	cmpl	$0, -28(%ebp)
	je	.L88
	.loc 1 265 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
.L88:
	.loc 1 267 0
	movl	-28(%ebp), %eax
	.loc 1 268 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	build_zero_init, .-build_zero_init
	.type	build_default_init, @function
build_default_init:
.LFB20:
	.loc 1 281 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 309 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L92
	cmpl	$0, 12(%ebp)
	je	.L94
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L94
.L92:
	.loc 1 311 0
	movl	$0, -8(%ebp)
	jmp	.L96
.L94:
	.loc 1 315 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_zero_init@PLT
	movl	%eax, -8(%ebp)
.L96:
	movl	-8(%ebp), %eax
	.loc 1 316 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	build_default_init, .-build_default_init
	.section	.rodata
	.align 4
.LC1:
	.string	"`%D' should be initialized in the member initialization list"
	.align 4
.LC2:
	.string	"default-initialization of `%#D', which has reference type"
	.align 4
.LC3:
	.string	"uninitialized reference member `%D'"
	.align 4
.LC4:
	.string	"initializer list treated as compound expression"
	.text
	.type	perform_member_init, @function
perform_member_init:
.LFB21:
	.loc 1 324 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$52, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 329 0
	cmpl	$0, 12(%ebp)
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 333 0
	movl	warn_ecpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L99
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L99
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L99
	.loc 1 334 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L99:
	.loc 1 338 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L103
	.loc 1 339 0
	movl	$0, 12(%ebp)
.L103:
	.loc 1 342 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L105
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L107
.L105:
	movl	$0, -28(%ebp)
.L107:
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 345 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L151
	.loc 1 351 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L110
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L112
.L110:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L113
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L113
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L113
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L113
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L112
.L113:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L112
	.loc 1 353 0
	cmpl	$0, 12(%ebp)
	je	.L121
	.loc 1 355 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	.loc 1 356 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 351 0
	jmp	.L121
.L112:
	.loc 1 359 0
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L122
	cmpl	$0, 12(%ebp)
	je	.L124
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L124
.L122:
	.loc 1 362 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L126
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L126
	cmpl	$0, 12(%ebp)
	je	.L126
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L126
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L126
	.loc 1 369 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_init@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 362 0
	jmp	.L121
.L126:
	.loc 1 373 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_aggr_init@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 359 0
	jmp	.L121
.L124:
	.loc 1 377 0
	cmpl	$0, 12(%ebp)
	jne	.L133
	.loc 1 379 0
	cmpb	$0, -5(%ebp)
	je	.L135
	.loc 1 381 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_default_init
	movl	%eax, 12(%ebp)
	.loc 1 382 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L141
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L141
.L135:
	.loc 1 388 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L141
	.loc 1 389 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L141
.L133:
	.loc 1 391 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L141
	.loc 1 395 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 397 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 398 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, 12(%ebp)
	jmp	.L141
.L143:
	.loc 1 401 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L141:
	.loc 1 404 0
	cmpl	$0, 12(%ebp)
	je	.L121
	.loc 1 405 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$50, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L121:
	.loc 1 408 0
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L151
.LBB5:
	.loc 1 412 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L147
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L149
.L147:
	movl	$0, -24(%ebp)
.L149:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 415 0
	movl	$0, 16(%esp)
	movl	$520, 12(%esp)
	movl	$5, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_delete@PLT
	movl	%eax, -12(%ebp)
	.loc 1 418 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L151
	.loc 1 419 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_eh_cleanup@PLT
.L151:
.LBE5:
	.loc 1 421 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	perform_member_init, .-perform_member_init
	.type	build_field_list, @function
build_field_list:
.LFB22:
	.loc 1 431 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 434 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 437 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L153
	.loc 1 438 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L153:
	.loc 1 440 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L155
.L156:
	.loc 1 443 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L157
	movl	-8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L157
	.loc 1 447 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L160
	.loc 1 448 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L160:
	.loc 1 453 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L162
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L164
.L162:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L165
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L165
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L165
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L165
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L164
.L165:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L164
	.loc 1 457 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 12(%ebp)
	.loc 1 459 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_field_list
	movl	%eax, 12(%ebp)
	.loc 1 453 0
	jmp	.L157
.L164:
	.loc 1 463 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L157
	.loc 1 464 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 12(%ebp)
.L157:
	.loc 1 440 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L155:
	cmpl	$0, -8(%ebp)
	jne	.L156
	.loc 1 467 0
	movl	12(%ebp), %eax
	.loc 1 468 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	build_field_list, .-build_field_list
	.section	.rodata
	.align 4
.LC5:
	.string	"`%D' will be initialized after"
	.align 4
.LC6:
	.string	"base `%T' will be initialized after"
.LC7:
	.string	"  `%#D'"
.LC8:
	.string	"  base `%T'"
	.align 4
.LC9:
	.string	"multiple initializations given for `%D'"
	.align 4
.LC10:
	.string	"multiple initializations given for base `%T'"
	.align 4
.LC11:
	.string	"initializations for multiple members of `%T'"
	.text
	.type	sort_mem_initializers, @function
sort_mem_initializers:
.LFB23:
	.loc 1 480 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$84, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 492 0
	movl	$0, -44(%ebp)
	.loc 1 494 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L175
.L176:
	.loc 1 495 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
	.loc 1 494 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L175:
	cmpl	$0, -48(%ebp)
	jne	.L176
	.loc 1 497 0
	movl	$0, -36(%ebp)
	jmp	.L178
.L179:
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 500 0
	movl	-48(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L180
	.loc 1 501 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
.L180:
	.loc 1 497 0
	addl	$1, -36(%ebp)
.L178:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L182
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L184
.L182:
	movl	$0, -72(%ebp)
.L184:
	movl	-72(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jg	.L179
	.loc 1 504 0
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_field_list
	movl	%eax, -44(%ebp)
	.loc 1 507 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -44(%ebp)
	.loc 1 513 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 517 0
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L186
.L187:
.LBB6:
	.loc 1 522 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 527 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 528 0
	jmp	.L188
.L189:
	.loc 1 530 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L190
	.loc 1 529 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L188:
	.loc 1 528 0
	cmpl	$0, -28(%ebp)
	jne	.L189
.L190:
	.loc 1 535 0
	movl	warn_reorder@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L192
	cmpl	$0, -28(%ebp)
	jne	.L192
	.loc 1 537 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L195
	.loc 1 538 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	jmp	.L197
.L195:
	.loc 1 541 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L197:
	.loc 1 543 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L198
	.loc 1 544 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	jmp	.L192
.L198:
	.loc 1 546 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L192:
	.loc 1 550 0
	cmpl	$0, -28(%ebp)
	jne	.L200
	.loc 1 552 0
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 553 0
	jmp	.L202
.L203:
	.loc 1 554 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L202:
	.loc 1 553 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L203
.L200:
	.loc 1 559 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L204
	.loc 1 561 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L206
	.loc 1 562 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L204
.L206:
	.loc 1 564 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L204:
	.loc 1 569 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 570 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.LBE6:
	.loc 1 517 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L186:
	cmpl	$0, -52(%ebp)
	jne	.L187
	.loc 1 578 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L209
.LBB7:
	.loc 1 580 0
	movl	$0, -24(%ebp)
	.loc 1 581 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L211
.L212:
.LBB8:
	.loc 1 588 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L213
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L213
	.loc 1 593 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 594 0
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 595 0
	jmp	.L216
.L217:
	.loc 1 597 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L218
	.loc 1 596 0
	movl	-16(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -16(%ebp)
.L216:
	.loc 1 595 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L217
.L218:
	.loc 1 600 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L213
	.loc 1 605 0
	cmpl	$0, -24(%ebp)
	jne	.L221
	.loc 1 607 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 608 0
	jmp	.L213
.L221:
	.loc 1 619 0
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 620 0
	movl	$0, -12(%ebp)
.L223:
.LBB9:
	.loc 1 625 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
.L224:
	.loc 1 628 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L225
	.loc 1 630 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L227
	.loc 1 631 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L227:
	.loc 1 633 0
	movl	$1, -12(%ebp)
	.loc 1 634 0
	jmp	.L229
.L225:
	.loc 1 637 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L229
	.loc 1 640 0
	movl	-8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 641 0
	jmp	.L224
.L229:
	.loc 1 645 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L231
	.loc 1 648 0
	movl	-16(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -16(%ebp)
.LBE9:
	.loc 1 650 0
	cmpl	$0, -12(%ebp)
	je	.L223
.L231:
	.loc 1 652 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L213:
.LBE8:
	.loc 1 581 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L211:
	cmpl	$0, -52(%ebp)
	jne	.L212
.L209:
.LBE7:
	.loc 1 656 0
	movl	-44(%ebp), %eax
	.loc 1 657 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	sort_mem_initializers, .-sort_mem_initializers
	.section	.rodata
	.align 4
.LC12:
	.string	"base class `%#T' should be explicitly initialized in the copy constructor"
	.text
.globl emit_mem_initializers
	.type	emit_mem_initializers, @function
emit_mem_initializers:
.LFB24:
	.loc 1 668 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$52, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 671 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sort_mem_initializers
	movl	%eax, 8(%ebp)
	.loc 1 673 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$1, 64(%eax)
	.loc 1 676 0
	jmp	.L235
.L236:
.LBB10:
	.loc 1 679 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 685 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L237
	cmpl	$0, -12(%ebp)
	jne	.L237
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L237
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_fn_p@PLT
	testl	%eax, %eax
	jle	.L237
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L237
	.loc 1 688 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L237:
	.loc 1 694 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L243
	.loc 1 695 0
	movl	$0, -12(%ebp)
.L243:
	.loc 1 698 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L245
	.loc 1 699 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_virtual_base
	jmp	.L247
.L245:
.LBB11:
	.loc 1 704 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L250
.L248:
	movl	$0, -28(%ebp)
.L250:
	movl	$1, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -8(%ebp)
	.loc 1 706 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, %edx
	movl	$3, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_aggr_init_1
	.loc 1 710 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_cleanup_for_base
.L247:
.LBE11:
	.loc 1 713 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L235:
.LBE10:
	.loc 1 676 0
	cmpl	$0, 8(%ebp)
	je	.L251
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L236
.L251:
	.loc 1 715 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$0, 64(%eax)
	.loc 1 718 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L253
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L255
.L253:
	movl	$0, -24(%ebp)
.L255:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_vtbl_ptrs@PLT
	.loc 1 721 0
	jmp	.L256
.L257:
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	perform_member_init
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L256:
	.loc 1 721 0
	cmpl	$0, 8(%ebp)
	jne	.L257
	.loc 1 727 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	emit_mem_initializers, .-emit_mem_initializers
	.type	build_vtbl_address, @function
build_vtbl_address:
.LFB25:
	.loc 1 735 0
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
	.loc 1 736 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 739 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L261
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L261
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L261
	.loc 1 746 0
	jmp	.L265
.L266:
	.loc 1 747 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
.L265:
	.loc 1 746 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L266
.L261:
	.loc 1 751 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 752 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
	.loc 1 753 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 756 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 757 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L267
	.loc 1 759 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 760 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
.L267:
	.loc 1 763 0
	movl	-8(%ebp), %eax
	.loc 1 764 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	build_vtbl_address, .-build_vtbl_address
	.section	.rodata
	.type	__FUNCTION__.16670, @object
	.size	__FUNCTION__.16670, 20
__FUNCTION__.16670:
	.string	"expand_virtual_init"
	.text
	.type	expand_virtual_init, @function
expand_virtual_init:
.LFB26:
	.loc 1 775 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$64, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 780 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtbl_address
	movl	%eax, -28(%ebp)
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 785 0
	cmpl	$0, -20(%ebp)
	je	.L271
.LBB12:
	.loc 1 791 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 792 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 796 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 801 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	36(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
.L271:
.LBE12:
	.loc 1 810 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_vfield_ref@PLT
	movl	%eax, -24(%ebp)
	.loc 1 812 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L273
	leal	__FUNCTION__.16670@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$812, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L273:
	.loc 1 815 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_force@PLT
	movl	%eax, -28(%ebp)
	.loc 1 816 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 817 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	expand_virtual_init, .-expand_virtual_init
	.type	expand_cleanup_for_base, @function
expand_cleanup_for_base:
.LFB27:
	.loc 1 829 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$48, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 832 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L284
	.loc 1 836 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L279
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L281
.L279:
	movl	$0, -28(%ebp)
.L281:
	movl	$11, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -12(%ebp)
	.loc 1 841 0
	cmpl	$0, 12(%ebp)
	je	.L282
	.loc 1 842 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_truthvalue_conversion@PLT
	movl	%eax, %ecx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	%esi, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
.L282:
	.loc 1 846 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_eh_cleanup@PLT
.L284:
	.loc 1 847 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	expand_cleanup_for_base, .-expand_cleanup_for_base
	.type	construct_virtual_base, @function
construct_virtual_base:
.LFB28:
	.loc 1 854 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$52, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 874 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 875 0
	call	begin_if_stmt@PLT
	movl	%eax, -20(%ebp)
	.loc 1 876 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_if_stmt_cond@PLT
	.loc 1 877 0
	movl	$1, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -16(%ebp)
	.loc 1 883 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L286
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L288
.L286:
	movl	$0, -28(%ebp)
.L288:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_base_statically@PLT
	movl	%eax, -12(%ebp)
	.loc 1 885 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L289
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L291
.L289:
	movl	$0, -24(%ebp)
.L291:
	movl	$2, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_aggr_init_1
	.loc 1 887 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 888 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_then_clause@PLT
	.loc 1 889 0
	call	finish_if_stmt@PLT
	.loc 1 891 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_cleanup_for_base
	.loc 1 892 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	construct_virtual_base, .-construct_virtual_base
	.type	initializing_context, @function
initializing_context:
.LFB29:
	.loc 1 899 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	subl	$16, %esp
.LCFI62:
	.loc 1 900 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 904 0
	jmp	.L294
.L295:
	.loc 1 905 0
	movl	-4(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -4(%ebp)
.L294:
	.loc 1 904 0
	cmpl	$0, -4(%ebp)
	je	.L296
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L298
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L296
.L298:
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L300
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L300
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L300
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L300
	movl	-4(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L296
.L300:
	movl	-4(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L295
.L296:
	.loc 1 906 0
	movl	-4(%ebp), %eax
	.loc 1 907 0
	leave
	ret
.LFE29:
	.size	initializing_context, .-initializing_context
	.section	.rodata
	.align 4
.LC13:
	.string	"class `%T' does not have any field named `%D'"
	.align 4
.LC14:
	.string	"field `%#D' is static; the only point of initialization is its definition"
	.text
	.type	member_init_ok_or_else, @function
member_init_ok_or_else:
.LFB30:
	.loc 1 921 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$20, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 922 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L307
	.loc 1 923 0
	movl	$0, -8(%ebp)
	jmp	.L309
.L307:
	.loc 1 924 0
	cmpl	$0, 8(%ebp)
	je	.L310
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializing_context
	cmpl	12(%ebp), %eax
	je	.L312
.L310:
	.loc 1 926 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 928 0
	movl	$0, -8(%ebp)
	jmp	.L309
.L312:
	.loc 1 930 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L313
	.loc 1 932 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 934 0
	movl	$0, -8(%ebp)
	jmp	.L309
.L313:
	.loc 1 937 0
	movl	$1, -8(%ebp)
.L309:
	movl	-8(%ebp), %eax
	.loc 1 938 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	member_init_ok_or_else, .-member_init_ok_or_else
	.section	.rodata
	.align 4
.LC15:
	.string	"unnamed initializer for `%T', which has no base classes"
	.align 4
.LC16:
	.string	"unnamed initializer for `%T', which uses multiple inheritance"
	.align 4
.LC17:
	.string	"type `%D' is not a direct or virtual base of `%T'"
	.align 4
.LC18:
	.string	"type `%D' is not a direct base of `%T'"
	.text
.globl expand_member_init
	.type	expand_member_init, @function
expand_member_init:
.LFB31:
	.loc 1 951 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$52, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 955 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L317
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L319
.L317:
	.loc 1 956 0
	movl	$0, -28(%ebp)
	jmp	.L320
.L319:
	.loc 1 958 0
	cmpl	$0, 8(%ebp)
	jne	.L321
	.loc 1 962 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L323
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L325
.L323:
	movl	$0, -24(%ebp)
.L325:
	cmpl	$0, -24(%ebp)
	je	.L327
	cmpl	$1, -24(%ebp)
	je	.L328
	jmp	.L326
.L327:
	.loc 1 965 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 967 0
	movl	$0, -28(%ebp)
	jmp	.L320
.L328:
	.loc 1 969 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L329
.L326:
	.loc 1 972 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 974 0
	movl	$0, -28(%ebp)
	jmp	.L320
.L321:
	.loc 1 977 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L330
	.loc 1 979 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 980 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L329
.L330:
	.loc 1 982 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L332
	.loc 1 983 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L329
.L332:
	.loc 1 985 0
	movl	$0, -16(%ebp)
.L329:
	.loc 1 987 0
	cmpl	$0, -16(%ebp)
	je	.L334
.LBB13:
	.loc 1 991 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L336
	.loc 1 992 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L320
.L336:
	.loc 1 994 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
	.loc 1 996 0
	cmpl	$0, -8(%ebp)
	je	.L338
	.loc 1 998 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L340
	.loc 1 999 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -8(%ebp)
	jmp	.L338
.L340:
	.loc 1 1000 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	je	.L338
	.loc 1 1002 0
	movl	$0, -8(%ebp)
.L338:
	.loc 1 1004 0
	cmpl	$0, -8(%ebp)
	jne	.L343
	.loc 1 1006 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L345
	.loc 1 1007 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L347
.L345:
	.loc 1 1010 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L347:
	.loc 1 1012 0
	movl	$0, -28(%ebp)
	jmp	.L320
.L343:
	.loc 1 1015 0
	cmpl	$0, -8(%ebp)
	je	.L350
	.loc 1 1016 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L320
.L334:
.LBE13:
	.loc 1 1020 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L351
	.loc 1 1021 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_field@PLT
	movl	%eax, -12(%ebp)
	jmp	.L353
.L351:
	.loc 1 1023 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L353:
	.loc 1 1025 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	member_init_ok_or_else
	testl	%eax, %eax
	je	.L350
	.loc 1 1026 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L320
.L350:
	.loc 1 1029 0
	movl	$0, -28(%ebp)
.L320:
	movl	-28(%ebp), %eax
	.loc 1 1030 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	expand_member_init, .-expand_member_init
	.section	.rodata
.LC19:
	.string	"bad array initializer"
	.text
.globl build_aggr_init
	.type	build_aggr_init, @function
build_aggr_init:
.LFB32:
	.loc 1 1067 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$68, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1071 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1073 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1075 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L357
	.loc 1 1076 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L359
.L357:
	.loc 1 1078 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-17, %eax
	movb	%al, 9(%edx)
	.loc 1 1079 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-9, %eax
	movb	%al, 9(%edx)
	.loc 1 1081 0
	cmpl	$0, 12(%ebp)
	je	.L360
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L360
	.loc 1 1082 0
	orl	$128, 16(%ebp)
.L360:
	.loc 1 1084 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L363
.LBB14:
	.loc 1 1088 0
	cmpl	$0, 12(%ebp)
	je	.L365
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L367
.L365:
	movl	$0, -44(%ebp)
.L367:
	movl	-44(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1090 0
	cmpl	$0, 12(%ebp)
	je	.L368
	cmpl	$0, -8(%ebp)
	jne	.L368
	.loc 1 1104 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1105 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L359
.L368:
	.loc 1 1107 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	je	.L371
	.loc 1 1108 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L371:
	.loc 1 1109 0
	cmpl	$0, -8(%ebp)
	je	.L373
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	je	.L373
	.loc 1 1110 0
	movl	-8(%ebp), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L373:
	.loc 1 1111 0
	cmpl	$0, 12(%ebp)
	je	.L376
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L376
	movl	$1, -40(%ebp)
	jmp	.L379
.L376:
	movl	$0, -40(%ebp)
.L379:
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_init@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1114 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1115 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1116 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1117 0
	cmpl	$0, 12(%ebp)
	je	.L380
	.loc 1 1118 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
.L380:
	.loc 1 1119 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L359
.L363:
.LBE14:
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L382
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L384
.L382:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L384:
	.loc 1 1126 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1127 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	begin_init_stmts@PLT
	.loc 1 1128 0
	call	stmts_are_full_exprs_p@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1129 0
	call	current_stmt_tree@PLT
	movl	$0, 12(%eax)
	.loc 1 1130 0
	movl	16(%ebp), %edx
	orl	$3, %edx
	movl	-20(%ebp), %eax
	movl	76(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_aggr_init_1
	.loc 1 1132 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_init_stmts@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1133 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1134 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1135 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1136 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1138 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
.L359:
	movl	-48(%ebp), %eax
	.loc 1 1139 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	build_aggr_init, .-build_aggr_init
.globl build_init
	.type	build_init, @function
build_init:
.LFB33:
	.loc 1 1147 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$36, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1150 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L387
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L387
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L387
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L387
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L387
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L393
.L387:
	.loc 1 1152 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_aggr_init@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1150 0
	jmp	.L394
.L393:
	.loc 1 1154 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
.L394:
	.loc 1 1156 0
	movl	-8(%ebp), %eax
	.loc 1 1157 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	build_init, .-build_init
	.section	.rodata
	.type	__FUNCTION__.17026, @object
	.size	__FUNCTION__.17026, 20
__FUNCTION__.17026:
	.string	"expand_default_init"
	.text
	.type	expand_default_init, @function
expand_default_init:
.LFB34:
	.loc 1 1165 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$52, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1166 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1178 0
	cmpl	$0, 20(%ebp)
	je	.L397
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L397
	movl	24(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L397
	.loc 1 1182 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L401
	.loc 1 1183 0
	leal	__FUNCTION__.17026@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1183, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L401:
	.loc 1 1185 0
	movl	24(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L403
	.loc 1 1191 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L405
	movl	20(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L405
	.loc 1 1195 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L408
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L410
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L412
.L410:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L413
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L413
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L413
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L413
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L412
.L413:
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L412
.L408:
	movl	$1, -24(%ebp)
	jmp	.L418
.L412:
	movl	$0, -24(%ebp)
.L418:
	cmpl	$0, -24(%ebp)
	jne	.L419
	leal	__FUNCTION__.17026@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1195, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L419:
	.loc 1 1196 0
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, 20(%ebp)
	.loc 1 1191 0
	jmp	.L403
.L405:
	.loc 1 1199 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$65, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ocp_convert@PLT
	movl	%eax, 20(%ebp)
.L403:
	.loc 1 1201 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-120, %al
	jne	.L421
	.loc 1 1206 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L423
.L421:
	.loc 1 1209 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, 20(%ebp)
.L423:
	.loc 1 1210 0
	movl	20(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 1211 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 1212 0
	jmp	.L438
.L397:
	.loc 1 1215 0
	cmpl	$0, 20(%ebp)
	je	.L425
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L427
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L427
.L425:
	.loc 1 1218 0
	movl	20(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1219 0
	cmpl	$0, -8(%ebp)
	je	.L431
	.loc 1 1220 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 1215 0
	jmp	.L431
.L427:
	.loc 1 1223 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -8(%ebp)
.L431:
	.loc 1 1225 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L432
	.loc 1 1226 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L434
.L432:
	.loc 1 1228 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	movl	%eax, -16(%ebp)
.L434:
	.loc 1 1230 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1231 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L438
	.loc 1 1233 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L436
	.loc 1 1234 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	jmp	.L438
.L436:
	.loc 1 1236 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_expr_stmt@PLT
.L438:
	.loc 1 1238 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	expand_default_init, .-expand_default_init
	.section	.rodata
	.type	__FUNCTION__.17118, @object
	.size	__FUNCTION__.17118, 19
__FUNCTION__.17118:
	.string	"expand_aggr_init_1"
	.text
	.type	expand_aggr_init_1, @function
expand_aggr_init_1:
.LFB35:
	.loc 1 1266 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$52, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1267 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1269 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L440
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L440
	movl	$1, -24(%ebp)
	jmp	.L443
.L440:
	movl	$0, -24(%ebp)
.L443:
	cmpl	$0, -24(%ebp)
	jne	.L444
	leal	__FUNCTION__.17118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1269, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L444:
	.loc 1 1270 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L446
	leal	__FUNCTION__.17118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1270, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L446:
	.loc 1 1278 0
	cmpl	$0, 20(%ebp)
	je	.L448
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L448
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L448
	movl	20(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L448
	.loc 1 1285 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	store_init_value@PLT
	testl	%eax, %eax
	je	.L456
	.loc 1 1286 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 1287 0
	jmp	.L456
.L448:
	.loc 1 1292 0
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
	call	expand_default_init
.L456:
	.loc 1 1293 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	expand_aggr_init_1, .-expand_aggr_init_1
	.section	.rodata
.LC20:
	.string	"`%T' is not an aggregate type"
	.text
.globl is_aggr_type
	.type	is_aggr_type, @function
is_aggr_type:
.LFB36:
	.loc 1 1302 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1303 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L458
	.loc 1 1304 0
	movl	$0, -8(%ebp)
	jmp	.L460
.L458:
	.loc 1 1306 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L461
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L461
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L461
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L461
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L461
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L461
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L461
	.loc 1 1310 0
	cmpl	$0, 12(%ebp)
	je	.L469
	.loc 1 1311 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L469:
	.loc 1 1312 0
	movl	$0, -8(%ebp)
	jmp	.L460
.L461:
	.loc 1 1314 0
	movl	$1, -8(%ebp)
.L460:
	movl	-8(%ebp), %eax
	.loc 1 1315 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	is_aggr_type, .-is_aggr_type
	.section	.rodata
	.align 4
.LC21:
	.string	"`%T' fails to be an aggregate typedef"
	.align 4
.LC22:
	.string	"type `%T' is of non-aggregate type"
	.text
.globl get_aggr_from_typedef
	.type	get_aggr_from_typedef, @function
get_aggr_from_typedef:
.LFB37:
	.loc 1 1323 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$36, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1326 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L473
	.loc 1 1327 0
	movl	$0, -24(%ebp)
	jmp	.L475
.L473:
	.loc 1 1329 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	testl	%eax, %eax
	je	.L476
	.loc 1 1330 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1338 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	jne	.L478
	jmp	.L479
.L476:
	.loc 1 1333 0
	cmpl	$0, 12(%ebp)
	je	.L480
	.loc 1 1334 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L480:
	.loc 1 1335 0
	movl	$0, -24(%ebp)
	jmp	.L475
.L478:
	.loc 1 1338 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L479
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L479
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L479
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L479
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L479
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L479
	.loc 1 1342 0
	cmpl	$0, 12(%ebp)
	je	.L488
	.loc 1 1343 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L488:
	.loc 1 1344 0
	movl	$0, -24(%ebp)
	jmp	.L475
.L479:
	.loc 1 1346 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L475:
	movl	-24(%ebp), %eax
	.loc 1 1347 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	get_aggr_from_typedef, .-get_aggr_from_typedef
.globl get_type_value
	.type	get_type_value, @function
get_type_value:
.LFB38:
	.loc 1 1352 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$20, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1353 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L492
	.loc 1 1354 0
	movl	$0, -8(%ebp)
	jmp	.L494
.L492:
	.loc 1 1356 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	testl	%eax, %eax
	je	.L495
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	movl	%eax, -8(%ebp)
	jmp	.L494
.L495:
	.loc 1 1359 0
	movl	$0, -8(%ebp)
.L494:
	movl	-8(%ebp), %eax
	.loc 1 1360 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	get_type_value, .-get_type_value
	.section	.rodata
	.type	__FUNCTION__.17250, @object
	.size	__FUNCTION__.17250, 18
__FUNCTION__.17250:
	.string	"build_member_call"
	.align 4
.LC23:
	.string	"cannot call destructor `%T::~%T' without object"
	.align 4
.LC24:
	.string	"invalid use of non-static field `%D'"
.LC25:
	.string	"invalid use of member `%D'"
.LC26:
	.string	"no method `%T::%D'"
	.text
.globl build_member_call
	.type	build_member_call, @function
build_member_call:
.LFB39:
	.loc 1 1372 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$68, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1376 0
	movl	$0, -16(%ebp)
	.loc 1 1379 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L499
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L499
	.loc 1 1384 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1389 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L502
	.loc 1 1391 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_namespace_name@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1393 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
.L502:
	.loc 1 1395 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L504
	leal	__FUNCTION__.17250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1395, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L504:
	.loc 1 1396 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_call_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L499:
	.loc 1 1399 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L507
	.loc 1 1400 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 12(%ebp)
.L507:
	.loc 1 1402 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L509
	.loc 1 1403 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_namespace_name@PLT
	movl	%eax, %edx
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_call_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L509:
	.loc 1 1407 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L511
	.loc 1 1409 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1410 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L513
	.loc 1 1411 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
.L513:
	.loc 1 1412 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L515
	.loc 1 1413 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L517
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L519
.L517:
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
.L519:
	movl	-44(%ebp), %edx
	movl	52(%edx), %eax
	movl	%eax, -24(%ebp)
.L515:
	.loc 1 1414 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L520
.L511:
	.loc 1 1417 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L520:
	.loc 1 1419 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L521
	.loc 1 1421 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1422 0
	movl	$1, -16(%ebp)
.L521:
	.loc 1 1427 0
	cmpl	$0, 8(%ebp)
	je	.L523
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L523
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_aggr_from_typedef@PLT
	testl	%eax, %eax
	jne	.L523
.LBB15:
	.loc 1 1430 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1431 0
	cmpl	$0, -8(%ebp)
	je	.L523
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L523
	.loc 1 1432 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_namespace_name@PLT
	movl	%eax, %edx
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_call_expr@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L523:
.LBE15:
	.loc 1 1437 0
	cmpl	$0, 8(%ebp)
	je	.L529
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_aggr_type@PLT
	testl	%eax, %eax
	jne	.L531
.L529:
	.loc 1 1438 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L531:
	.loc 1 1441 0
	cmpl	$0, 12(%ebp)
	jne	.L532
	.loc 1 1442 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L532:
	.loc 1 1444 0
	cmpl	$0, -16(%ebp)
	je	.L534
	.loc 1 1446 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1448 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L534:
	.loc 1 1451 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_dummy_object@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1453 0
	movl	-32(%ebp), %edx
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1454 0
	cmpl	$0, -20(%ebp)
	je	.L536
	.loc 1 1456 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L538
	.loc 1 1457 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$203, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
.L538:
	.loc 1 1460 0
	movl	$11, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_method_call@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L536:
	.loc 1 1467 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L540
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L542
.L540:
	movl	$0, -40(%ebp)
.L542:
	movl	-40(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L543
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L543
	.loc 1 1473 0
	movl	$0, -32(%ebp)
	.loc 1 1474 0
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_scoped_ref@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1475 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L543
	.loc 1 1476 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L543:
	.loc 1 1479 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_p@PLT
	testb	%al, %al
	je	.L547
	.loc 1 1480 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_functional_cast@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L547:
	.loc 1 1481 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L549
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_field@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L549
	.loc 1 1484 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L552
	.loc 1 1485 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L552:
	.loc 1 1486 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L554
	.loc 1 1488 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	je	.L556
	.loc 1 1490 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1491 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L556:
	.loc 1 1493 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$40, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	jmp	.L558
.L554:
	.loc 1 1495 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L559
	.loc 1 1496 0
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L558
.L559:
	.loc 1 1499 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1500 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L506
.L558:
	.loc 1 1502 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L561
	.loc 1 1503 0
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$54, (%esp)
	call	build_opfncall@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L561:
	.loc 1 1505 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -48(%ebp)
	jmp	.L506
.L549:
	.loc 1 1509 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1510 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L506:
	movl	-48(%ebp), %eax
	.loc 1 1512 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	build_member_call, .-build_member_call
	.section	.rodata
	.type	__FUNCTION__.17395, @object
	.size	__FUNCTION__.17395, 17
__FUNCTION__.17395:
	.string	"build_offset_ref"
	.align 4
.LC27:
	.string	"qualified type `%T' does not match destructor name `~%T'"
	.align 4
.LC28:
	.string	"incomplete type `%T' does not have member `%D'"
	.align 4
.LC29:
	.string	"`%D' is not a member of type `%T'"
	.align 4
.LC30:
	.string	"invalid pointer to bit-field `%D'"
	.text
.globl build_offset_ref
	.type	build_offset_ref, @function
build_offset_ref:
.LFB40:
	.loc 1 1527 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$68, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1528 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1530 0
	movl	$0, -28(%ebp)
	.loc 1 1531 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1534 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L565
	.loc 1 1535 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L565:
	.loc 1 1537 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L568
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	uses_template_parms@PLT
	testl	%eax, %eax
	je	.L570
.L568:
	.loc 1 1538 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$185, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -48(%ebp)
	jmp	.L567
.L570:
	.loc 1 1540 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L571
	.loc 1 1546 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1548 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L573
	.loc 1 1549 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L575
.L573:
	.loc 1 1552 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-50, %al
	jne	.L576
	.loc 1 1554 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L575
.L576:
	.loc 1 1557 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L578
	.loc 1 1558 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L578:
	.loc 1 1559 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L575
	.loc 1 1560 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L581
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L583
.L581:
	movl	12(%ebp), %edx
	movl	%edx, -44(%ebp)
.L583:
	movl	-44(%ebp), %edx
	movl	52(%edx), %eax
	movl	%eax, 12(%ebp)
.L575:
	.loc 1 1564 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L571
	leal	__FUNCTION__.17395@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1564, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L571:
	.loc 1 1567 0
	cmpl	$0, 8(%ebp)
	jne	.L586
	.loc 1 1568 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L586:
	.loc 1 1571 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L588
	.loc 1 1573 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_namespace_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1574 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L590
	.loc 1 1575 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L590:
	.loc 1 1576 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L592
	.loc 1 1578 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$203, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
.L592:
	.loc 1 1580 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	jne	.L594
	.loc 1 1582 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 1583 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -20(%ebp)
.L594:
	.loc 1 1585 0
	movl	-20(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L567
.L588:
	.loc 1 1588 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_aggr_type@PLT
	testl	%eax, %eax
	jne	.L596
	.loc 1 1589 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L596:
	.loc 1 1591 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L598
	.loc 1 1593 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_dtor_name@PLT
	testl	%eax, %eax
	jne	.L600
	.loc 1 1594 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L600:
	.loc 1 1596 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	200(%eax), %eax
	movl	%eax, 12(%ebp)
.L598:
	.loc 1 1599 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L602
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L602
	.loc 1 1602 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1604 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L602:
	.loc 1 1607 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_dummy_object@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1609 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L605
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L607
.L605:
	.loc 1 1610 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1609 0
	jmp	.L608
.L607:
	.loc 1 1613 0
	movl	-28(%ebp), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_member@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1615 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L608
	.loc 1 1616 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L608:
	.loc 1 1620 0
	cmpl	$0, -16(%ebp)
	je	.L610
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L610
.LBB16:
	.loc 1 1623 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1624 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1626 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L613
	.loc 1 1635 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L615
	.loc 1 1638 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ovl_cons@PLT
	movl	%eax, -20(%ebp)
.L615:
	.loc 1 1640 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$203, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1642 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1644 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1646 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L613:
	.loc 1 1649 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L617
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	jne	.L617
	.loc 1 1652 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L620
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L622
.L620:
	movl	-20(%ebp), %edx
	movl	%edx, -40(%ebp)
.L622:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1655 0
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	enforce_access@PLT
	testl	%eax, %eax
	jne	.L623
	.loc 1 1656 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L623:
	.loc 1 1657 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 1658 0
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L625
	.loc 1 1659 0
	movl	-20(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L567
.L625:
	.loc 1 1660 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1661 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1662 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L617:
	.loc 1 1665 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1667 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1668 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1669 0
	movl	-20(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L567
.L610:
.LBE16:
	.loc 1 1672 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1674 0
	cmpl	$0, -20(%ebp)
	jne	.L627
	.loc 1 1676 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1677 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L627:
	.loc 1 1680 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L629
	.loc 1 1682 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
	.loc 1 1683 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L629:
	.loc 1 1687 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L631
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L633
.L631:
	.loc 1 1689 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 1690 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -48(%ebp)
	jmp	.L567
.L633:
	.loc 1 1693 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L634
	movl	-20(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L634
	.loc 1 1695 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1696 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L567
.L634:
	.loc 1 1700 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L637
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L637
	.loc 1 1702 0
	leal	__FUNCTION__.17395@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1702, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L637:
	.loc 1 1707 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_offset_type@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$179, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1708 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1709 0
	movl	-20(%ebp), %edx
	movl	%edx, -48(%ebp)
.L567:
	movl	-48(%ebp), %eax
	.loc 1 1710 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	build_offset_ref, .-build_offset_ref
	.section	.rodata
	.type	__FUNCTION__.17570, @object
	.size	__FUNCTION__.17570, 19
__FUNCTION__.17570:
	.string	"resolve_offset_ref"
	.align 4
.LC31:
	.string	"object missing in use of pointer-to-member construct"
	.align 4
.LC32:
	.string	"member `%D' is non-static but referenced as a static member"
.LC33:
	.string	"at this point in file"
.LC34:
	.string	"object missing in `%E'"
	.text
.globl resolve_offset_ref
	.type	resolve_offset_ref, @function
resolve_offset_ref:
.LFB41:
	.loc 1 1718 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%esi
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$64, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1719 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1720 0
	movl	$0, -20(%ebp)
	.loc 1 1724 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L642
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1727 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L644
.L642:
	.loc 1 1731 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	je	.L645
	leal	__FUNCTION__.17570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1731, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L645:
	.loc 1 1732 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L647
	.loc 1 1734 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1735 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L647:
	.loc 1 1737 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1738 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1739 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L650
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L652
.L650:
	movl	$0, -52(%ebp)
.L652:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
.L644:
	.loc 1 1742 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L653
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	jne	.L655
.L653:
	.loc 1 1743 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -56(%ebp)
	jmp	.L649
.L655:
	.loc 1 1745 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L656
	.loc 1 1747 0
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L658
	.loc 1 1750 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ovl_cons@PLT
	movl	%eax, 8(%ebp)
.L658:
	.loc 1 1752 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -56(%ebp)
	jmp	.L649
.L656:
	.loc 1 1755 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L660
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L662
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L662
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L660
.L662:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L665
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L665
.L660:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L667
.L665:
	.loc 1 1761 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L668
	.loc 1 1762 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L668:
	.loc 1 1763 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L667:
	.loc 1 1766 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L670
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L670
	.loc 1 1768 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L670:
	.loc 1 1772 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L673
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L675
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L673
.L675:
	.loc 1 1774 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1776 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1777 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L673:
	.loc 1 1781 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L677
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L679
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L681
.L679:
	movl	$0, -48(%ebp)
.L681:
	movl	-48(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L682
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	je	.L677
.L682:
.LBB17:
	.loc 1 1784 0
	movl	$0, -32(%ebp)
	.loc 1 1788 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L684
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L686
.L684:
	movl	$0, -44(%ebp)
.L686:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1791 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L687
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L687
	.loc 1 1792 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_scoped_ref@PLT
	movl	%eax, -20(%ebp)
.L687:
	.loc 1 1794 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -56(%ebp)
	jmp	.L649
.L677:
.LBE17:
	.loc 1 1800 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_dummy_object@PLT
	testl	%eax, %eax
	je	.L690
	.loc 1 1801 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L692
.L690:
	.loc 1 1807 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -28(%ebp)
.L692:
	.loc 1 1809 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L693
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L693
	.loc 1 1811 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L696
	.loc 1 1813 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1814 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L649
.L696:
	.loc 1 1817 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1818 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1820 0
	movl	-28(%ebp), %edx
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1822 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1824 0
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1825 0
	movl	-28(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -56(%ebp)
	jmp	.L649
.L693:
	.loc 1 1827 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L698
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L698
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L698
	.loc 1 1829 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_member_function_from_ptrfunc@PLT
	movl	%eax, -56(%ebp)
	jmp	.L649
.L698:
	.loc 1 1831 0
	leal	__FUNCTION__.17570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1831, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L649:
	movl	-56(%ebp), %eax
	.loc 1 1834 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE41:
	.size	resolve_offset_ref, .-resolve_offset_ref
.globl decl_constant_value
	.type	decl_constant_value, @function
decl_constant_value:
.LFB42:
	.loc 1 1842 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	subl	$4, %esp
.LCFI114:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1843 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L704
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L704
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L704
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L704
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L704
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	je	.L704
	.loc 1 1853 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L712
.L704:
	.loc 1 1854 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L712:
	movl	-4(%ebp), %eax
	.loc 1 1855 0
	leave
	ret
.LFE42:
	.size	decl_constant_value, .-decl_constant_value
	.type	build_builtin_delete_call, @function
build_builtin_delete_call:
.LFB43:
	.loc 1 1864 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$20, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1865 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 1866 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	148(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_call@PLT
	.loc 1 1867 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	build_builtin_delete_call, .-build_builtin_delete_call
	.section	.rodata
	.type	__FUNCTION__.17791, @object
	.size	__FUNCTION__.17791, 10
__FUNCTION__.17791:
	.string	"build_new"
	.align 4
.LC35:
	.string	"new of array type fails to specify size"
	.align 4
.LC36:
	.string	"size in array new must have integral type"
	.align 4
.LC37:
	.string	"zero size array reserves no space"
	.align 4
.LC38:
	.string	"new cannot be applied to a reference type"
	.align 4
.LC39:
	.string	"new cannot be applied to a function type"
	.text
.globl build_new
	.type	build_new, @function
build_new:
.LFB44:
	.loc 1 1900 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%esi
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$64, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1902 0
	movl	$0, -32(%ebp)
	.loc 1 1903 0
	movl	$0, -24(%ebp)
	.loc 1 1905 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L717
	.loc 1 1906 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L719
.L717:
	.loc 1 1908 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L720
.LBB18:
	.loc 1 1910 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1911 0
	movl	$0, -16(%ebp)
	.loc 1 1913 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L722
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L722
	.loc 1 1915 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L722
	leal	__FUNCTION__.17791@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1915, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L722:
	.loc 1 1917 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1919 0
	cmpl	$0, -20(%ebp)
	je	.L730
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L730
	.loc 1 1920 0
	leal	__FUNCTION__.17791@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1920, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L731:
	.loc 1 1923 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1924 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L730:
	.loc 1 1921 0
	cmpl	$0, -20(%ebp)
	je	.L732
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	je	.L731
.L732:
	.loc 1 1927 0
	cmpl	$0, -20(%ebp)
	je	.L734
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L734
	.loc 1 1932 0
	jmp	.L737
.L738:
.LBB19:
	.loc 1 1935 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1936 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L737:
	.loc 1 1932 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L739
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	je	.L738
.L739:
	.loc 1 1939 0
	movl	$1, -24(%ebp)
	.loc 1 1940 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1941 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L741
	.loc 1 1943 0
	cmpl	$0, -12(%ebp)
	jne	.L743
	.loc 1 1944 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L734
.L743:
	.loc 1 1945 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L746
	.loc 1 1947 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1948 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L734
.L746:
	.loc 1 1952 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	build_expr_type_conversion@PLT
	testl	%eax, %eax
	jne	.L748
	.loc 1 1955 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L748:
	.loc 1 1957 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1958 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1959 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L750
	.loc 1 1961 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1962 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L734
.L750:
	.loc 1 1965 0
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -32(%ebp)
	jmp	.L734
.L741:
	.loc 1 1969 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
.L734:
.LBE19:
	.loc 1 1972 0
	cmpl	$0, -16(%ebp)
	je	.L752
	.loc 1 1973 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L754
.L752:
	.loc 1 1975 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
.L754:
	.loc 1 1977 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	groktypename@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1978 0
	cmpl	$0, -40(%ebp)
	je	.L755
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L758
.L755:
	.loc 1 1979 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L719
.L720:
.LBE18:
	.loc 1 1981 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L759
	.loc 1 1983 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	testl	%eax, %eax
	je	.L761
	.loc 1 1986 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type_value@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1987 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L758
.L761:
	.loc 1 1992 0
	movl	$1, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1993 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L764
	leal	__FUNCTION__.17791@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1993, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L764:
	.loc 1 1994 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L758
.L759:
	.loc 1 1997 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L766
	.loc 1 1999 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L758
.L766:
	.loc 1 2003 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2004 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L758:
	.loc 1 2007 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L768
	.loc 1 2009 0
	cmpl	$0, -24(%ebp)
	je	.L770
	.loc 1 2010 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$44, (%esp)
	call	build_min_nt@PLT
	movl	%eax, %esi
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L770:
	.loc 1 2014 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L772:
	.loc 1 2016 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$181, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2017 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 2018 0
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L719
.L768:
	.loc 1 2024 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L773
	.loc 1 2026 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2027 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L773:
	.loc 1 2030 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L775
	.loc 1 2032 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2033 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L719
.L775:
	.loc 1 2039 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L777
	cmpl	$0, -24(%ebp)
	jne	.L777
	.loc 1 2041 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts_top@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2042 0
	movl	$1, -24(%ebp)
	.loc 1 2043 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L777:
	.loc 1 2046 0
	cmpl	$0, -24(%ebp)
	je	.L780
	.loc 1 2047 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	build_nt@PLT
	movl	%eax, -28(%ebp)
	jmp	.L782
.L780:
	.loc 1 2049 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L782:
	.loc 1 2051 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$181, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2052 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	movl	-36(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 2053 0
	movl	-36(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 2054 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_new_1
	movl	%eax, -36(%ebp)
	.loc 1 2055 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L783
	.loc 1 2056 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L719
.L783:
	.loc 1 2059 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2060 0
	movl	-36(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 2062 0
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
.L719:
	movl	-44(%ebp), %eax
	.loc 1 2063 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	build_new, .-build_new
	.local	CL_suffix.17934
	.comm	CL_suffix.17934,4,4
	.section	.rodata
.LC40:
	.string	"class$"
.LC41:
	.string	"jclass"
	.align 4
.LC42:
	.string	"call to Java constructor, while `jclass' undefined"
.LC43:
	.string	"can't find class$"
	.text
.globl build_java_class_ref
	.type	build_java_class_ref, @function
build_java_class_ref:
.LFB45:
	.loc 1 2070 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%esi
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$32, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2071 0
	movl	$0, -20(%ebp)
	.loc 1 2073 0
	movl	CL_suffix.17934@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L787
	.loc 1 2074 0
	movl	$6, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, CL_suffix.17934@GOTOFF(%ebx)
.L787:
	.loc 1 2075 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	268(%eax), %eax
	testl	%eax, %eax
	jne	.L789
	.loc 1 2077 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$6, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 268(%eax)
	.loc 1 2078 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	268(%eax), %eax
	testl	%eax, %eax
	jne	.L791
	.loc 1 2079 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_error@PLT
.L791:
	.loc 1 2081 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	268(%eax), %eax
	movl	4(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 268(%eax)
.L789:
.LBB20:
	.loc 1 2087 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L793
.L794:
	.loc 1 2088 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	CL_suffix.17934@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L795
	.loc 1 2090 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_decl@PLT
	.loc 1 2091 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2092 0
	jmp	.L797
.L795:
	.loc 1 2087 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L793:
	cmpl	$0, -12(%ebp)
	jne	.L794
.L797:
	.loc 1 2094 0
	cmpl	$0, -12(%ebp)
	jne	.L798
	.loc 1 2095 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L798:
.LBE20:
	.loc 1 2098 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2099 0
	cmpl	$0, -16(%ebp)
	jne	.L800
	.loc 1 2101 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	268(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2102 0
	movl	-16(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 2103 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 2104 0
	movl	-16(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 2105 0
	movl	-16(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2106 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$64, %eax
	movb	%al, 33(%edx)
	.loc 1 2107 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level@PLT
	.loc 1 2108 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
.L800:
	.loc 1 2110 0
	movl	-16(%ebp), %eax
	.loc 1 2111 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	build_java_class_ref, .-build_java_class_ref
	.type	get_cookie_size, @function
get_cookie_size:
.LFB46:
	.loc 1 2120 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%edi
.LCFI131:
	pushl	%esi
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$76, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2128 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2129 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2130 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jb	.L804
	movl	-52(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	ja	.L806
	movl	-56(%ebp), %ecx
	cmpl	%ecx, -64(%ebp)
	jb	.L804
.L806:
	movl	-20(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L807
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	ja	.L807
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L804
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jae	.L807
.L804:
	.loc 1 2131 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2130 0
	jmp	.L810
.L807:
	.loc 1 2133 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L810:
	.loc 1 2135 0
	movl	-28(%ebp), %eax
	.loc 1 2136 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	get_cookie_size, .-get_cookie_size
	.section	.rodata
	.type	alloc_name.18034, @object
	.size	alloc_name.18034, 16
alloc_name.18034:
	.string	"_Jv_AllocObject"
	.type	__FUNCTION__.18040, @object
	.size	__FUNCTION__.18040, 12
__FUNCTION__.18040:
	.string	"build_new_1"
.LC44:
	.string	"invalid type `void' for new"
	.align 4
.LC45:
	.string	"call to Java constructor with `%s' undefined"
	.align 4
.LC46:
	.string	"ISO C++ forbids initialization in array new"
	.align 4
.LC47:
	.string	"initializer list being treated as compound expression"
	.align 4
.LC48:
	.string	"ISO C++ forbids aggregate initializer to new"
	.align 4
.LC49:
	.string	"uninitialized const in `new' of `%#T'"
	.text
	.type	build_new_1, @function
build_new_1:
.LFB47:
	.loc 1 2144 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$240, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2148 0
	movl	$0, -148(%ebp)
	.loc 1 2149 0
	movl	$0, -144(%ebp)
	.loc 1 2153 0
	movl	$0, -116(%ebp)
	.loc 1 2161 0
	movl	$0, -88(%ebp)
	.loc 1 2165 0
	movl	$0, -84(%ebp)
	.loc 1 2170 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -180(%ebp)
	.loc 1 2171 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -172(%ebp)
	.loc 1 2172 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 2173 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	.loc 1 2175 0
	movl	-172(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L813
	.loc 1 2177 0
	movl	$1, -116(%ebp)
	.loc 1 2178 0
	movl	-172(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 2179 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
	.loc 1 2182 0
	movl	$0, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -152(%ebp)
	jmp	.L815
.L813:
	.loc 1 2185 0
	movl	-172(%ebp), %eax
	movl	%eax, -152(%ebp)
.L815:
	.loc 1 2187 0
	movl	-172(%ebp), %eax
	movl	%eax, -168(%ebp)
	.loc 1 2189 0
	cmpl	$0, -116(%ebp)
	je	.L816
	movl	$182, -216(%ebp)
	jmp	.L818
.L816:
	movl	$181, -216(%ebp)
.L818:
	movl	-216(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 2193 0
	jmp	.L819
.L820:
.LBB21:
	.loc 1 2195 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts_top@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2196 0
	movl	$1, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -144(%ebp)
	.loc 1 2197 0
	movl	-168(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -168(%ebp)
.L819:
.LBE21:
	.loc 1 2193 0
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L820
	.loc 1 2200 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	jne	.L822
	.loc 1 2201 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L824
.L822:
	.loc 1 2203 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -164(%ebp)
	.loc 1 2204 0
	cmpl	$0, -116(%ebp)
	je	.L825
	.loc 1 2205 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -164(%ebp)
.L825:
	.loc 1 2207 0
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L827
	.loc 1 2209 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2210 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L824
.L827:
	.loc 1 2213 0
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	abstract_virtuals_error@PLT
	testl	%eax, %eax
	je	.L829
	.loc 1 2214 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L824
.L829:
	.loc 1 2218 0
	cmpl	$0, -96(%ebp)
	jne	.L831
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L833
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L833
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L833
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L833
	movl	-168(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L831
.L833:
	cmpl	$0, -116(%ebp)
	je	.L838
	movl	-168(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L831
	jmp	.L841
.L838:
	movl	-168(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L831
.L841:
	.loc 1 2223 0
	movl	$0, -92(%ebp)
	.loc 1 2218 0
	jmp	.L842
.L831:
	.loc 1 2225 0
	movl	$1, -92(%ebp)
.L842:
	.loc 1 2229 0
	cmpl	$0, -116(%ebp)
	je	.L843
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L845
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L843
.L845:
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L847
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L847
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L847
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L847
	movl	-168(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L843
.L847:
	movl	-168(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L852
.L843:
	.loc 1 2230 0
	movl	$0, -108(%ebp)
	.loc 1 2229 0
	jmp	.L853
.L852:
	.loc 1 2234 0
	cmpl	$0, -180(%ebp)
	je	.L854
	movl	-180(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L854
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-180(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L854
	.loc 1 2237 0
	cmpl	$0, -92(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	.loc 1 2234 0
	jmp	.L853
.L854:
	.loc 1 2240 0
	movl	$1, -108(%ebp)
.L853:
	.loc 1 2244 0
	cmpl	$0, -108(%ebp)
	je	.L858
	.loc 1 2246 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cookie_size
	movl	%eax, -84(%ebp)
	.loc 1 2247 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -164(%ebp)
.L858:
	.loc 1 2252 0
	cmpl	$0, -180(%ebp)
	jne	.L860
	movl	-168(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L860
.LBB22:
	.loc 1 2255 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	build_java_class_ref@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2256 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2258 0
	movl	$1, -88(%ebp)
	.loc 1 2259 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	alloc_name.18034@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2260 0
	cmpl	$0, -72(%ebp)
	jne	.L863
	.loc 1 2261 0
	leal	alloc_name.18034@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_error@PLT
.L863:
	.loc 1 2264 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2265 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -140(%ebp)
	.loc 1 2252 0
	jmp	.L865
.L860:
.LBE22:
.LBB23:
	.loc 1 2275 0
	movl	-180(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2276 0
	movl	-112(%ebp), %eax
	movl	operator_name_info@GOT(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2278 0
	cmpl	$0, -92(%ebp)
	je	.L866
	.loc 1 2279 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_function_nonclass@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_new_function_call@PLT
	movl	%eax, -140(%ebp)
	jmp	.L865
.L866:
	.loc 1 2283 0
	movl	-168(%ebp), %eax
	movl	76(%eax), %esi
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	build_dummy_object@PLT
	movl	%eax, %edx
	movl	$3, 16(%esp)
	movl	%esi, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_method_call@PLT
	movl	%eax, -140(%ebp)
.L865:
.LBE23:
	.loc 1 2289 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-140(%ebp), %eax
	jne	.L868
	.loc 1 2290 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L824
.L868:
	.loc 1 2295 0
	movl	-140(%ebp), %eax
	movl	%eax, -156(%ebp)
	.loc 1 2296 0
	jmp	.L870
.L871:
	.loc 1 2297 0
	movl	-156(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -156(%ebp)
.L870:
	.loc 1 2296 0
	movl	-156(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	je	.L871
	.loc 1 2298 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -128(%ebp)
	.loc 1 2299 0
	cmpl	$0, -128(%ebp)
	jne	.L873
	leal	__FUNCTION__.18040@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2299, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L873:
	.loc 1 2310 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	type_num_arguments@PLT
	cmpl	$1, %eax
	jg	.L875
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	varargs_function_p@PLT
	testl	%eax, %eax
	je	.L877
.L875:
	movl	$1, -208(%ebp)
	jmp	.L878
.L877:
	movl	$0, -208(%ebp)
.L878:
	movzbl	-208(%ebp), %edx
	movb	%dl, -9(%ebp)
	.loc 1 2324 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L879
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L879
	movl	$1, -204(%ebp)
	jmp	.L882
.L879:
	movl	$0, -204(%ebp)
.L882:
	movl	-204(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2325 0
	movl	flag_check_new@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L883
	cmpl	$0, -104(%ebp)
	je	.L885
.L883:
	cmpl	$0, -88(%ebp)
	jne	.L885
	movl	$1, -200(%ebp)
	jmp	.L887
.L885:
	movl	$0, -200(%ebp)
.L887:
	movl	-200(%ebp), %edx
	movl	%edx, -100(%ebp)
	.loc 1 2327 0
	movl	-140(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 2329 0
	cmpl	$0, -108(%ebp)
	je	.L888
	.loc 1 2331 0
	movl	-136(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -136(%ebp)
.L888:
	.loc 1 2336 0
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -136(%ebp)
	.loc 1 2339 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	get_target_expr@PLT
	movl	%eax, -136(%ebp)
	.loc 1 2340 0
	movl	-136(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -132(%ebp)
	.loc 1 2343 0
	cmpl	$0, -108(%ebp)
	je	.L890
.LBB24:
	.loc 1 2350 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2352 0
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2354 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2355 0
	movl	-124(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	jmp	.L892
.L890:
.LBE24:
	.loc 1 2358 0
	movl	$0, -124(%ebp)
.L892:
	.loc 1 2361 0
	movl	$0, -120(%ebp)
	.loc 1 2362 0
	movl	-172(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L893
	cmpl	$0, -176(%ebp)
	je	.L895
.L893:
	.loc 1 2364 0
	movl	$0, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2366 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	cmpl	-176(%ebp), %eax
	jne	.L896
	.loc 1 2367 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	build_default_init
	movl	%eax, -176(%ebp)
	jmp	.L898
.L896:
	.loc 1 2368 0
	cmpl	$0, -176(%ebp)
	je	.L898
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L898
	cmpl	$0, -116(%ebp)
	je	.L898
	.loc 1 2369 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L898:
	.loc 1 2371 0
	cmpl	$0, -116(%ebp)
	je	.L902
	.loc 1 2372 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_init@PLT
	movl	%eax, -120(%ebp)
	jmp	.L904
.L902:
	.loc 1 2377 0
	movl	-172(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L905
	.loc 1 2378 0
	movl	-168(%ebp), %eax
	movl	76(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %ecx
	movl	$3, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -120(%ebp)
	jmp	.L904
.L905:
	.loc 1 2387 0
	movl	-176(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L907
	.loc 1 2389 0
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L909
	.loc 1 2390 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L909:
	.loc 1 2392 0
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -176(%ebp)
	jmp	.L911
.L907:
	.loc 1 2394 0
	movl	-176(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L911
	movl	-176(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L911
	.loc 1 2397 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2398 0
	movl	$0, 8(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	digest_init@PLT
	movl	%eax, -176(%ebp)
.L911:
	.loc 1 2401 0
	movl	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$50, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -120(%ebp)
.L904:
	.loc 1 2404 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-120(%ebp), %eax
	jne	.L914
	.loc 1 2405 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L824
.L914:
	.loc 1 2415 0
	movl	flag_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L929
	cmpl	$0, -88(%ebp)
	jne	.L929
.LBB25:
	.loc 1 2417 0
	cmpl	$0, -116(%ebp)
	je	.L919
	movl	$184, -196(%ebp)
	jmp	.L921
.L919:
	movl	$183, -196(%ebp)
.L921:
	movl	-196(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2420 0
	movl	-96(%ebp), %eax
	sall	$4, %eax
	orl	$3, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2423 0
	cmpl	$0, -108(%ebp)
	je	.L922
	.loc 1 2426 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -36(%ebp)
	jmp	.L924
.L922:
	.loc 1 2429 0
	movl	-132(%ebp), %eax
	movl	%eax, -36(%ebp)
.L924:
	.loc 1 2434 0
	orl	$64, -40(%ebp)
	.loc 1 2436 0
	cmpb	$0, -9(%ebp)
	je	.L925
	movl	-140(%ebp), %edx
	movl	%edx, -192(%ebp)
	jmp	.L927
.L925:
	movl	$0, -192(%ebp)
.L927:
	movl	-192(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_op_delete_call@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2461 0
	cmpl	$0, -44(%ebp)
	je	.L929
.LBB26:
	.loc 1 2465 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	get_target_expr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2466 0
	movl	-24(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 2468 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2470 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2474 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$49, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2477 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -120(%ebp)
	.loc 1 2362 0
	jmp	.L929
.L895:
.LBE26:
.LBE25:
	.loc 1 2484 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L929
	.loc 1 2485 0
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L929:
	.loc 1 2489 0
	movl	-132(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 2491 0
	cmpl	$0, -120(%ebp)
	je	.L931
	.loc 1 2492 0
	movl	-160(%ebp), %eax
	movl	4(%eax), %edx
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -160(%ebp)
.L931:
	.loc 1 2493 0
	cmpl	$0, -124(%ebp)
	je	.L933
	.loc 1 2494 0
	movl	-160(%ebp), %eax
	movl	4(%eax), %edx
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -160(%ebp)
.L933:
	.loc 1 2496 0
	movl	-160(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jne	.L935
	.loc 1 2499 0
	movl	-136(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L937
.L935:
	.loc 1 2502 0
	cmpl	$0, -100(%ebp)
	je	.L938
.LBB27:
	.loc 1 2507 0
	cmpl	$0, -108(%ebp)
	jne	.L940
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L942
.L940:
	movl	-84(%ebp), %edx
	movl	%edx, -188(%ebp)
.L942:
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	-188(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2509 0
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2510 0
	movl	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_conditional_expr@PLT
	movl	%eax, -160(%ebp)
.L938:
.LBE27:
	.loc 1 2513 0
	movl	-160(%ebp), %eax
	movl	4(%eax), %edx
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -160(%ebp)
.L937:
	.loc 1 2518 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -160(%ebp)
	.loc 1 2520 0
	movl	-160(%ebp), %eax
	movl	%eax, -212(%ebp)
.L824:
	movl	-212(%ebp), %eax
	.loc 1 2521 0
	addl	$240, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE47:
	.size	build_new_1, .-build_new_1
	.section	.rodata
	.type	__FUNCTION__.18355, @object
	.size	__FUNCTION__.18355, 19
__FUNCTION__.18355:
	.string	"build_vec_delete_1"
	.text
	.type	build_vec_delete_1, @function
build_vec_delete_1:
.LFB48:
	.loc 1 2528 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%esi
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$80, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2530 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2531 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2544 0
	movl	$0, -24(%ebp)
	.loc 1 2550 0
	movl	$0, -20(%ebp)
	.loc 1 2553 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L945
	.loc 1 2554 0
	leal	__FUNCTION__.18355@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2554, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L945:
	.loc 1 2556 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L947
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L947
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L947
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L947
	movl	16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L952
.L947:
	movl	16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L953
.L952:
	.loc 1 2558 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2559 0
	jmp	.L954
.L953:
	.loc 1 2563 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2566 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	create_temporary_var@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2567 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2571 0
	movl	-40(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$4, %eax
	movb	%al, 33(%edx)
	.loc 1 2572 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$53, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2573 0
	movl	-20(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 2575 0
	movl	$0, -32(%ebp)
	.loc 1 2577 0
	movl	$1, 16(%esp)
	movl	$515, 12(%esp)
	movl	$5, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_delete@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2582 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2586 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$144, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2591 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$145, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2593 0
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2595 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -28(%ebp)
.L954:
	.loc 1 2600 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2601 0
	cmpl	$6, 20(%ebp)
	je	.L955
.LBB28:
	.loc 1 2606 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2609 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L957
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L959
.L957:
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L960
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L960
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L960
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L960
	movl	16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L959
.L960:
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L965
.L959:
	.loc 1 2611 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2609 0
	jmp	.L966
.L965:
.LBB29:
	.loc 1 2616 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_cookie_size
	movl	%eax, -12(%ebp)
	.loc 1 2617 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2624 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -52(%ebp)
.L966:
.LBE29:
	.loc 1 2627 0
	cmpl	$7, 20(%ebp)
	jne	.L955
	.loc 1 2628 0
	movl	24(%ebp), %edx
	orl	$2, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_x_delete@PLT
	movl	%eax, -24(%ebp)
.L955:
.LBE28:
	.loc 1 2633 0
	cmpl	$0, -28(%ebp)
	je	.L968
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L968
	.loc 1 2635 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2637 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2633 0
	jmp	.L971
.L968:
	.loc 1 2640 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L971:
	.loc 1 2643 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %ecx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	%esi, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2647 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2649 0
	cmpl	$0, -20(%ebp)
	je	.L972
	.loc 1 2651 0
	movl	-20(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2652 0
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L974
.L972:
	.loc 1 2655 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, -60(%ebp)
.L974:
	movl	-60(%ebp), %eax
	.loc 1 2656 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	build_vec_delete_1, .-build_vec_delete_1
.globl create_temporary_var
	.type	create_temporary_var, @function
create_temporary_var:
.LFB49:
	.loc 1 2663 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$36, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2666 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2667 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2668 0
	movl	-8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2669 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2670 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2671 0
	movl	-8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$64, %eax
	movb	%al, 33(%edx)
	.loc 1 2672 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 2674 0
	movl	-8(%ebp), %eax
	.loc 1 2675 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	create_temporary_var, .-create_temporary_var
	.type	get_temp_regvar, @function
get_temp_regvar:
.LFB50:
	.loc 1 2687 0
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
	.loc 1 2690 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_temporary_var@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2691 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L979
	.loc 1 2692 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_decl_stmt@PLT
.L979:
	.loc 1 2693 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L981
	.loc 1 2694 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 104(%eax)
.L981:
	.loc 1 2695 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$50, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2697 0
	movl	-8(%ebp), %eax
	.loc 1 2698 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	get_temp_regvar, .-get_temp_regvar
	.section	.rodata
	.type	__FUNCTION__.18525, @object
	.size	__FUNCTION__.18525, 15
__FUNCTION__.18525:
	.string	"build_vec_init"
.LC50:
	.string	"initializer ends prematurely"
	.align 4
.LC51:
	.string	"cannot initialize multi-dimensional array with initializer"
	.text
.globl build_vec_init
	.type	build_vec_init, @function
build_vec_init:
.LFB51:
	.loc 1 2720 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%edi
.LCFI155:
	pushl	%esi
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$156, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2722 0
	movl	$0, -100(%ebp)
	.loc 1 2724 0
	movl	$0, -92(%ebp)
	.loc 1 2727 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2729 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2735 0
	movl	$0, -68(%ebp)
	.loc 1 2736 0
	movl	$0, -64(%ebp)
	.loc 1 2737 0
	movl	$0, -60(%ebp)
	.loc 1 2739 0
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L985
	.loc 1 2740 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts@PLT
	movl	%eax, 12(%ebp)
.L985:
	.loc 1 2742 0
	cmpl	$0, 12(%ebp)
	je	.L987
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L989
.L987:
	.loc 1 2743 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L990
.L989:
	.loc 1 2745 0
	cmpl	$0, 16(%ebp)
	je	.L991
	cmpl	$2, 20(%ebp)
	jne	.L993
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L995
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L997
.L995:
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L998
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L998
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L998
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L998
	movl	-80(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L997
.L998:
	movl	-80(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1003
.L997:
	movl	$1, -128(%ebp)
	jmp	.L1004
.L1003:
	movl	$0, -128(%ebp)
.L1004:
	movzbl	-128(%ebp), %eax
	movb	%al, -129(%ebp)
	jmp	.L1005
.L993:
	movl	-80(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	sete	-129(%ebp)
.L1005:
	cmpb	$0, -129(%ebp)
	je	.L991
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1007
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1009
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	target_type@PLT
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1009
.L1007:
	cmpl	$0, 20(%ebp)
	je	.L991
.L1009:
	.loc 1 2760 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, -108(%ebp)
	.loc 1 2761 0
	movl	-108(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L990
.L991:
	.loc 1 2764 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2765 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -76(%ebp)
	.loc 1 2766 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -96(%ebp)
	.loc 1 2767 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1011
	.loc 1 2768 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, 8(%ebp)
.L1011:
	.loc 1 2799 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	begin_init_stmts@PLT
	.loc 1 2800 0
	call	stmts_are_full_exprs_p@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2801 0
	call	current_stmt_tree@PLT
	movl	$0, 12(%eax)
	.loc 1 2802 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	get_temp_regvar
	movl	%eax, -104(%ebp)
	.loc 1 2803 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	get_temp_regvar
	movl	%eax, 8(%ebp)
	.loc 1 2804 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_temp_regvar
	movl	%eax, -88(%ebp)
	.loc 1 2809 0
	movl	flag_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1013
	movl	-80(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1013
	cmpl	$2, 20(%ebp)
	je	.L1013
	.loc 1 2812 0
	call	begin_try_block@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2813 0
	movl	$1, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -64(%ebp)
.L1013:
	.loc 1 2816 0
	cmpl	$0, 16(%ebp)
	je	.L1017
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1017
.LBB30:
	.loc 1 2822 0
	movl	$0, 20(%ebp)
	.loc 1 2824 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1020
.L1021:
.LBB31:
	.loc 1 2826 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2827 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2829 0
	addl	$1, -60(%ebp)
	.loc 1 2831 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1022
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1022
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1022
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1022
	movl	-80(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1022
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1028
.L1022:
	.loc 1 2832 0
	movl	$0, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_aggr_init@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2831 0
	jmp	.L1029
.L1028:
	.loc 1 2834 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L1029:
	.loc 1 2837 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	build_unary_op@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2838 0
	movl	$0, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	build_unary_op@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.LBE31:
	.loc 1 2824 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1020:
	cmpl	$0, -56(%ebp)
	jne	.L1021
	.loc 1 2842 0
	movl	$0, 16(%ebp)
	.loc 1 2816 0
	jmp	.L1031
.L1017:
.LBE30:
	.loc 1 2844 0
	cmpl	$0, 20(%ebp)
	je	.L1031
	.loc 1 2849 0
	cmpl	$0, 16(%ebp)
	je	.L1033
	.loc 1 2851 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, -100(%ebp)
	.loc 1 2852 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2853 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_temp_regvar
	movl	%eax, -100(%ebp)
	.loc 1 2854 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1031
.L1033:
	.loc 1 2856 0
	movl	-80(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1031
	movl	-80(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1031
	movl	-80(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1031
	.loc 1 2860 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2861 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L990
.L1031:
	.loc 1 2871 0
	cmpl	$0, 20(%ebp)
	jne	.L1038
	movl	-80(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1040
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1038
	movl	-60(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	$1, %eax
	adcl	$0, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1040
.L1038:
.LBB32:
	.loc 1 2884 0
	call	begin_if_stmt@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2885 0
	movl	global_trees@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_if_stmt_cond@PLT
	.loc 1 2890 0
	call	begin_do_stmt@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2891 0
	movl	$1, (%esp)
	call	begin_compound_stmt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2904 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1043
	.loc 1 2905 0
	call	expand_start_target_temps@PLT
.L1043:
	.loc 1 2907 0
	cmpl	$0, 20(%ebp)
	je	.L1045
.LBB33:
	.loc 1 2909 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2912 0
	cmpl	$0, -100(%ebp)
	je	.L1047
	.loc 1 2913 0
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1049
.L1047:
	.loc 1 2915 0
	movl	$0, -24(%ebp)
.L1049:
	.loc 1 2917 0
	cmpl	$2, 20(%ebp)
	jne	.L1050
	.loc 1 2918 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1057
.L1050:
	.loc 1 2919 0
	movl	-80(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1053
	.loc 1 2920 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_aggr_init@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1057
.L1053:
	.loc 1 2921 0
	cmpl	$0, -24(%ebp)
	je	.L1055
	.loc 1 2922 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$117, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_modify_expr@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1057
.L1055:
	.loc 1 2924 0
	leal	__FUNCTION__.18525@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2924, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1045:
.LBE33:
	.loc 1 2926 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1058
	.loc 1 2928 0
	cmpl	$0, 16(%ebp)
	je	.L1060
	.loc 1 2929 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L1060:
	.loc 1 2931 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_vec_init@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1057
.L1058:
	.loc 1 2935 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_aggr_init@PLT
	movl	%eax, -32(%ebp)
.L1057:
	.loc 1 2940 0
	call	current_stmt_tree@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1062
	.loc 1 2942 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	genrtl_expr_stmt@PLT
	.loc 1 2943 0
	call	expand_end_target_temps@PLT
	jmp	.L1064
.L1062:
	.loc 1 2947 0
	call	current_stmt_tree@PLT
	movl	$1, 12(%eax)
	.loc 1 2948 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2949 0
	call	current_stmt_tree@PLT
	movl	$0, 12(%eax)
.L1064:
	.loc 1 2952 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	build_unary_op@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2953 0
	cmpl	$0, -100(%ebp)
	je	.L1065
	.loc 1 2954 0
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	build_unary_op@PLT
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
.L1065:
	.loc 1 2956 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 2957 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_do_body@PLT
	.loc 1 2958 0
	movl	global_trees@GOT(%ebx), %eax
	movl	52(%eax), %esi
	movl	$0, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_do_stmt@PLT
	.loc 1 2963 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_then_clause@PLT
	.loc 1 2964 0
	call	finish_if_stmt@PLT
.L1040:
.LBE32:
	.loc 1 2968 0
	movl	flag_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1067
	movl	-80(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1067
	cmpl	$2, 20(%ebp)
	je	.L1067
.LBB34:
	.loc 1 2972 0
	movl	$1, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2976 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1071
	.loc 1 2978 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts_total@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2980 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -80(%ebp)
.L1071:
	.loc 1 2983 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	finish_compound_stmt@PLT
	.loc 1 2984 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_cleanup_try_block@PLT
	.loc 1 2985 0
	movl	$0, 16(%esp)
	movl	$6, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_delete_1
	movl	%eax, -20(%ebp)
	.loc 1 2989 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_cleanup@PLT
.L1067:
.LBE34:
	.loc 1 2994 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_expr_stmt@PLT
	.loc 1 2996 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_init_stmts@PLT
	movl	%eax, -108(%ebp)
	.loc 1 2997 0
	call	current_stmt_tree@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2998 0
	movl	-108(%ebp), %eax
	movl	%eax, -136(%ebp)
.L990:
	movl	-136(%ebp), %eax
	.loc 1 2999 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	build_vec_init, .-build_vec_init
.globl build_x_delete
	.type	build_x_delete, @function
build_x_delete:
.LFB52:
	.loc 1 3020 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$52, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3021 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3022 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3023 0
	cmpl	$0, -16(%ebp)
	je	.L1075
	movl	$184, -24(%ebp)
	jmp	.L1077
.L1075:
	movl	$183, -24(%ebp)
.L1077:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3024 0
	movl	-20(%ebp), %eax
	sall	$4, %eax
	orl	$3, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3026 0
	movl	$0, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_op_delete_call@PLT
	.loc 1 3027 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	build_x_delete, .-build_x_delete
	.section	.rodata
	.type	__FUNCTION__.18770, @object
	.size	__FUNCTION__.18770, 16
__FUNCTION__.18770:
	.string	"build_dtor_call"
	.text
	.type	build_dtor_call, @function
build_dtor_call:
.LFB53:
	.loc 1 3037 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$52, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3040 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$6, -24(%ebp)
	je	.L1082
	cmpl	$7, -24(%ebp)
	je	.L1083
	cmpl	$5, -24(%ebp)
	je	.L1081
	jmp	.L1080
.L1081:
	.loc 1 3043 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3044 0
	jmp	.L1084
.L1082:
	.loc 1 3047 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3048 0
	jmp	.L1084
.L1083:
	.loc 1 3051 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3052 0
	jmp	.L1084
.L1080:
	.loc 1 3055 0
	leal	__FUNCTION__.18770@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3055, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1084:
	.loc 1 3057 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_method_call@PLT
	.loc 1 3059 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	build_dtor_call, .-build_dtor_call
	.section	.rodata
	.type	__FUNCTION__.18785, @object
	.size	__FUNCTION__.18785, 13
__FUNCTION__.18785:
	.string	"build_delete"
.LC52:
	.string	"unknown array size in delete"
	.text
.globl build_delete
	.type	build_delete, @function
build_delete:
.LFB54:
	.loc 1 3076 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%esi
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$48, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3079 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1087
	.loc 1 3080 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1087:
	.loc 1 3084 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1090
	.loc 1 3085 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1090:
	.loc 1 3087 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3089 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1092
	.loc 1 3091 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3092 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1094
	.loc 1 3095 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1096
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	testl	%eax, %eax
	je	.L1096
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1099
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1099
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1099
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1099
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1099
.L1096:
	.loc 1 3106 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_delete_call
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1099:
	.loc 1 3108 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1104
	.loc 1 3109 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
.L1104:
	.loc 1 3112 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_force@PLT
	movl	%eax, 12(%ebp)
	jmp	.L1106
.L1092:
	.loc 1 3114 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1107
.L1094:
	.loc 1 3118 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1108
	.loc 1 3120 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3121 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1108:
	.loc 1 3123 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_delete@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1107:
	.loc 1 3131 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3132 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1110
	.loc 1 3133 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
.L1110:
	.loc 1 3135 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_force@PLT
	movl	%eax, 12(%ebp)
.L1106:
	.loc 1 3138 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1112
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1112
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1112
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1112
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1117
.L1112:
	movl	$1, -28(%ebp)
	jmp	.L1118
.L1117:
	movl	$0, -28(%ebp)
.L1118:
	cmpl	$0, -28(%ebp)
	jne	.L1119
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3138, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1119:
	.loc 1 3140 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1121
	.loc 1 3142 0
	cmpl	$7, 16(%ebp)
	je	.L1123
	.loc 1 3143 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1123:
	.loc 1 3145 0
	movl	24(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %esi
	orl	$3, %esi
	movl	$0, 8(%esp)
	movl	$153, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$183, (%esp)
	call	build_op_delete_call@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1089
.L1121:
.LBB35:
	.loc 1 3152 0
	movl	$0, -16(%ebp)
	.loc 1 3155 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1125
	leal	__FUNCTION__.18785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3155, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1125:
	.loc 1 3160 0
	cmpl	$0, 24(%ebp)
	je	.L1127
	cmpl	$7, 16(%ebp)
	jne	.L1127
	.loc 1 3163 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3165 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_builtin_delete_call
	movl	%eax, -16(%ebp)
	.loc 1 3168 0
	movl	$5, 16(%ebp)
	.loc 1 3160 0
	jmp	.L1130
.L1127:
	.loc 1 3173 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1131
	cmpl	$7, 16(%ebp)
	jne	.L1131
	.loc 1 3177 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3179 0
	movl	$0, 8(%esp)
	movl	$153, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$183, (%esp)
	call	build_op_delete_call@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3185 0
	movl	$5, 16(%ebp)
	.loc 1 3173 0
	jmp	.L1130
.L1131:
	.loc 1 3187 0
	cmpl	$7, 16(%ebp)
	jne	.L1130
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1130
	.loc 1 3192 0
	movl	$0, 8(%esp)
	movl	$153, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_sizeof_or_alignof_type@PLT
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$183, (%esp)
	call	build_op_delete_call@PLT
.L1130:
	.loc 1 3196 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_dtor_call
	movl	%eax, -20(%ebp)
	.loc 1 3198 0
	cmpl	$0, -16(%ebp)
	je	.L1136
	.loc 1 3199 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
.L1136:
	.loc 1 3201 0
	movl	20(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1138
	.loc 1 3203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1140
.L1138:
	.loc 1 3206 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build_binary_op@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
.L1140:
	.loc 1 3208 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L1141
	.loc 1 3209 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
.L1141:
	.loc 1 3212 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1089:
	movl	-32(%ebp), %eax
.LBE35:
	.loc 1 3214 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE54:
	.size	build_delete, .-build_delete
.globl push_base_cleanups
	.type	push_base_cleanups, @function
push_base_cleanups:
.LFB55:
	.loc 1 3223 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$100, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3230 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1145
.LBB36:
	.loc 1 3236 0
	movl	integer_two_node@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	36(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	condition_conversion@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3238 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3241 0
	jmp	.L1147
.L1148:
.LBB37:
	.loc 1 3244 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3245 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3247 0
	movl	-20(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1149
	.loc 1 3249 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1151
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1153
.L1151:
	movl	$0, -72(%ebp)
.L1153:
	movl	$11, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3255 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3257 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_decl_cleanup@PLT
.L1149:
.LBE37:
	.loc 1 3242 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1147:
	.loc 1 3241 0
	cmpl	$0, -32(%ebp)
	jne	.L1148
.L1145:
.LBE36:
	.loc 1 3262 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3263 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1154
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1156
.L1154:
	movl	$0, -68(%ebp)
.L1156:
	movl	-68(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3266 0
	movl	$0, -48(%ebp)
	jmp	.L1157
.L1158:
.LBB38:
	.loc 1 3268 0
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3269 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1159
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1159
	.loc 1 3273 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1162
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1164
.L1162:
	movl	$0, -60(%ebp)
.L1164:
	movl	$11, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_special_member_call@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3277 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_decl_cleanup@PLT
.L1159:
.LBE38:
	.loc 1 3266 0
	addl	$1, -48(%ebp)
.L1157:
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L1158
	.loc 1 3280 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1166
.L1167:
	.loc 1 3283 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1168
	movl	-40(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1168
	.loc 1 3285 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1168
.LBB39:
	.loc 1 3290 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1172
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1174
.L1172:
	movl	$0, -56(%ebp)
.L1174:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	build_class_member_access_expr@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3291 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3292 0
	movl	$0, 16(%esp)
	movl	$523, 12(%esp)
	movl	$5, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_delete@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3296 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	finish_decl_cleanup@PLT
.L1168:
.LBE39:
	.loc 1 3281 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1166:
	.loc 1 3280 0
	cmpl	$0, -40(%ebp)
	jne	.L1167
	.loc 1 3299 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	push_base_cleanups, .-push_base_cleanups
	.section	.rodata
	.type	__FUNCTION__.19041, @object
	.size	__FUNCTION__.19041, 19
__FUNCTION__.19041:
	.string	"build_vbase_delete"
	.text
.globl build_vbase_delete
	.type	build_vbase_delete, @function
build_vbase_delete:
.LFB56:
	.loc 1 3306 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$36, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3307 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3308 0
	movl	$0, -16(%ebp)
	.loc 1 3309 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3311 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1180
	leal	__FUNCTION__.19041@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3311, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1181:
.LBB40:
	.loc 1 3317 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_force@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3318 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	$515, 12(%esp)
	movl	$6, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_delete@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3323 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1180:
.LBE40:
	.loc 1 3313 0
	cmpl	$0, -20(%ebp)
	jne	.L1181
	.loc 1 3325 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, (%esp)
	call	build_compound_expr@PLT
	.loc 1 3326 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	build_vbase_delete, .-build_vbase_delete
	.section	.rodata
	.align 4
.LC53:
	.string	"type to vector delete is neither pointer or array type"
	.text
.globl build_vec_delete
	.type	build_vec_delete, @function
build_vec_delete:
.LFB57:
	.loc 1 3349 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	pushl	%esi
.LCFI182:
	pushl	%ebx
.LCFI183:
	subl	$48, %esp
.LCFI184:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3352 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L1185
	.loc 1 3353 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 8(%ebp)
.L1185:
	.loc 1 3355 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3357 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3359 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1187
.LBB41:
	.loc 1 3364 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1189
	.loc 1 3365 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
.L1189:
	.loc 1 3366 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3367 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3371 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, 12(%ebp)
	jmp	.L1191
.L1187:
.LBE41:
	.loc 1 3373 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1192
	.loc 1 3376 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	array_type_nelts_total@PLT
	movl	%eax, 12(%ebp)
	.loc 1 3377 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3378 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3379 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1191
	.loc 1 3380 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
	jmp	.L1191
.L1192:
	.loc 1 3384 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1196
	.loc 1 3385 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1196:
	.loc 1 3386 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1198
.L1191:
	.loc 1 3389 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vec_delete_1
	movl	%eax, -28(%ebp)
.L1198:
	movl	-28(%ebp), %eax
	.loc 1 3391 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE57:
	.size	build_vec_delete, .-build_vec_delete
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI8-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI14-.LFB18
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI18-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
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
	.long	.LCFI22-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI27
	.byte	0x83
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
	.long	.LCFI30-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI31
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
	.long	.LCFI34-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI38-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI42-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI46-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI47
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI51-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI52
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI56-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
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
	.long	.LCFI60-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
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
	.long	.LCFI63-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI64
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
	.long	.LCFI67-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
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
	.long	.LCFI71-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
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
	.long	.LCFI79-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
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
	.long	.LCFI83-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
	.byte	0x83
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
	.long	.LCFI87-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
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
	.long	.LCFI91-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
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
	.long	.LCFI99-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI102-.LCFI100
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
	.long	.LCFI103-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
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
	.long	.LCFI107-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI108
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI112-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
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
	.long	.LCFI115-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI116
	.byte	0x83
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
	.long	.LCFI119-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI120
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
	.long	.LCFI124-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI125
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI129-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI130
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI135-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI136
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI144-.LCFI141
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI145-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI149-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI153-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI154
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI159-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI160
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
	.long	.LCFI163-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI164
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
	.long	.LCFI167-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI168
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI172-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
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
	.long	.LCFI176-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
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
	.long	.LCFI180-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI184-.LCFI181
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE84:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/gnu/function.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 11 "../../../kg++fe/gnu/c-common.h"
	.file 12 "../../../kg++fe/gnu/varray.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kg++fe/omp_types.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI23-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x96c9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/init.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
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
	.long	0x4da3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x4c6
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x57fc
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
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x580c
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
	.uleb128 0x7
	.long	0x2c8
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x2dce
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x30ec
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3134
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3257
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3195
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3202
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88d
	.long	0x32dd
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x434b
	.uleb128 0x8
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x3542
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3314
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x335b
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x33ac
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x33f8
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x4d45
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2ce
	.uleb128 0xa
	.long	0x2d3
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3b4
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3cb
	.long	0x9c
	.uleb128 0x10
	.long	0x3cb
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x2e2
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x3b4
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d3
	.uleb128 0x3
	.byte	0x4
	.long	0x495
	.uleb128 0xa
	.long	0x3f8
	.uleb128 0x3
	.byte	0x4
	.long	0x3f8
	.uleb128 0xf
	.long	0x4b0
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x4c0
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x13
	.long	0x70f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x14
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x14
	.string	"BImode"
	.sleb128 1
	.uleb128 0x14
	.string	"QImode"
	.sleb128 2
	.uleb128 0x14
	.string	"HImode"
	.sleb128 3
	.uleb128 0x14
	.string	"SImode"
	.sleb128 4
	.uleb128 0x14
	.string	"DImode"
	.sleb128 5
	.uleb128 0x14
	.string	"TImode"
	.sleb128 6
	.uleb128 0x14
	.string	"OImode"
	.sleb128 7
	.uleb128 0x14
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x14
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x14
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x14
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x14
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x14
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x14
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x14
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x14
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x14
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x14
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x14
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x14
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x14
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x14
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x14
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x14
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x14
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x14
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x14
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x14
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x14
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x14
	.string	"COImode"
	.sleb128 30
	.uleb128 0x14
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x14
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x14
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x14
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x14
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x14
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x14
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x14
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x14
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x14
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x14
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x14
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x14
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x14
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x14
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x14
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x14
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x14
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x14
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x14
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x14
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x14
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x14
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x14
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0x741
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x70f
	.uleb128 0x13
	.long	0x1075
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x14
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x14
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x14
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x14
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x14
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x14
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x14
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x14
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x14
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x14
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x14
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x14
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x14
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x14
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x14
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x14
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x14
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x14
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x14
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x14
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x14
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x14
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x14
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x14
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x14
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x14
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x14
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x14
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x14
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x14
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x14
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x14
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x14
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x14
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x14
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x14
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x14
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x14
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x14
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x14
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x14
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x14
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x14
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x14
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x14
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x14
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x14
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x14
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x14
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x14
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x14
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x14
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x14
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x14
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x14
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x14
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x14
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x14
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x14
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x14
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x14
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x14
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x14
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x14
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x14
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x14
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x14
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x14
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x14
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x14
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x14
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x14
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x14
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x14
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x14
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x14
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x14
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x14
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x14
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x14
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x14
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x14
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x14
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x14
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x14
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x14
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x14
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x14
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x14
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x14
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x14
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x14
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x14
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x14
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x14
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x14
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x14
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x14
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x14
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x14
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x14
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x14
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x14
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x14
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x14
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x14
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x14
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x14
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x14
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x14
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x14
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x14
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x14
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x14
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x14
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x14
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x14
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x14
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x14
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x14
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x14
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x14
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x14
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x14
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x14
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x14
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x14
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x14
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x14
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x14
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x14
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x14
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x14
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x14
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x14
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x14
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x14
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x14
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x14
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x14
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x14
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x14
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x14
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x14
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x14
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x14
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x14
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x14
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x14
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3b4
	.uleb128 0x4
	.long	0x10c5
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x10cf
	.uleb128 0x15
	.string	"st"
	.byte	0x1
	.uleb128 0x16
	.long	0x1124
	.long	.LASF5
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x14
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x13
	.long	0x2dce
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x14
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x14
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x14
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x14
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x14
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x14
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x14
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x14
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x14
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x14
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x14
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x14
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x14
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x14
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x14
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x14
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x14
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x14
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x14
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x14
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x14
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x14
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x14
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x14
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x14
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x14
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x14
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x14
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x14
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x14
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x14
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x14
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x14
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x14
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x14
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x14
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x14
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x14
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x14
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x14
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x14
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x14
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x14
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x14
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x14
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x14
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x14
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x14
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x14
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x14
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x14
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x14
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x14
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x14
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x14
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x14
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x14
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x14
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x14
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x14
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x14
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x14
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x14
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x14
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x14
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x14
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x14
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x14
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x14
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x14
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x14
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x14
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x14
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x14
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x14
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x14
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x14
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x14
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x14
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x14
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x14
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x14
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x14
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x14
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x14
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x14
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x14
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x14
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x14
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x14
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x14
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x14
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x14
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x14
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x14
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x14
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x14
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x14
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x14
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x14
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x14
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x14
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x14
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x14
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x14
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x14
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x14
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x14
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x14
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x14
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x14
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x14
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x14
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x14
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x14
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x14
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x14
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x14
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x14
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x14
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x14
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x14
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x14
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x14
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x14
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x14
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x14
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x14
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x14
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x14
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x14
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x14
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x14
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x14
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x14
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x14
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x14
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x14
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x14
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x14
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x14
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x14
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x14
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x14
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x14
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x14
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x14
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x14
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x14
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x14
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x14
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x14
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x14
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x14
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x14
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x14
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x14
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x14
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x14
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x14
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x14
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x14
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x14
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x14
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x14
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x14
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x14
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x14
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x14
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x14
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x14
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x14
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x14
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x14
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x14
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x14
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x14
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x14
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x14
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x14
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x14
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x14
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x14
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x14
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x14
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x14
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x14
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x14
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x14
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x14
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x14
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x14
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x14
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x14
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x14
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x14
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x14
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x14
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x14
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x14
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x14
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x14
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x14
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x14
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x14
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x14
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x14
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x14
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x14
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x14
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x14
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x30b0
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF3
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
	.long	0x753
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x30ec
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3134
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x30b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3182
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x318f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3182
	.uleb128 0xc
	.long	0x31fc
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x31fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x10c5
	.uleb128 0xc
	.long	0x3257
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x329f
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	0x32dd
	.long	.LASF14
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x48f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3314
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x329f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x335b
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x339c
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x339c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x33ac
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x33f8
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x339c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x34e8
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x40e
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3b4
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.long	.LASF16
	.byte	0x3
	.value	0x414
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x352f
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2db
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x489
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x353c
	.byte	0x0
	.uleb128 0x15
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x352f
	.uleb128 0xc
	.long	0x3887
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x555
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF18
	.byte	0x3
	.value	0x556
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b4
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x4c6
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x562
	.long	0x3b4
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x56b
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.long	.LASF21
	.byte	0x3
	.value	0x56d
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x34e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.value	0x576
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.value	0x57b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF24
	.byte	0x3
	.value	0x57c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.long	.LASF25
	.byte	0x3
	.value	0x57f
	.long	0x38a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1086
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xc
	.long	0x38a8
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x6eab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3887
	.uleb128 0xc
	.long	0x38f1
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.value	0x818
	.long	0x3b4
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3b4
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x3926
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1124
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x450
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x38ae
	.byte	0x0
	.uleb128 0x1d
	.long	0x3965
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x430d
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9c
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e5
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2db
	.byte	0x0
	.uleb128 0x1e
	.long	0x430d
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x5b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5b96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF26
	.byte	0x8
	.byte	0xb7
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x5ba2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x5bb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF22
	.byte	0x8
	.byte	0xbe
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.long	.LASF2
	.byte	0x8
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x8
	.byte	0xc4
	.long	0x430d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.long	.LASF27
	.byte	0x8
	.byte	0xce
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x8
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x8
	.byte	0xdf
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x8
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x8
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.long	.LASF28
	.byte	0x8
	.byte	0xec
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x5bd5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x8
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x8
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x8
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x8
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x8
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x8
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x8
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x8
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x8
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x8
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x8
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x8
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x8
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x8
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x8
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x8
	.value	0x138
	.long	0x450
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x8
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x8
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x8
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x8
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x8
	.value	0x151
	.long	0x3b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x581c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x5be7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5888
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x8
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x8
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x8
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x8
	.value	0x175
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x5c00
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x19
	.long	.LASF29
	.byte	0x8
	.value	0x184
	.long	0x5e3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x8
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1b
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pcc_struct"
	.byte	0x8
	.value	0x194
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pointer"
	.byte	0x8
	.value	0x197
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"needs_context"
	.byte	0x8
	.value	0x19a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_setjmp"
	.byte	0x8
	.value	0x19d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_longjmp"
	.byte	0x8
	.value	0x1a0
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_alloca"
	.byte	0x8
	.value	0x1a4
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_eh_return"
	.byte	0x8
	.value	0x1a7
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_label"
	.byte	0x8
	.value	0x1ab
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_goto"
	.byte	0x8
	.value	0x1af
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"contains_functions"
	.byte	0x8
	.value	0x1b2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_computed_jump"
	.byte	0x8
	.value	0x1b5
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"is_thunk"
	.byte	0x8
	.value	0x1ba
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"all_throwers_are_sibcalls"
	.byte	0x8
	.value	0x1c1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"instrument_entry_exit"
	.byte	0x8
	.value	0x1c5
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arc_profile"
	.byte	0x8
	.value	0x1c8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"profile"
	.byte	0x8
	.value	0x1cb
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"limit_stack"
	.byte	0x8
	.value	0x1cf
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"stdarg"
	.byte	0x8
	.value	0x1d2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_whole_function_mode_p"
	.byte	0x8
	.value	0x1d8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x8
	.value	0x1e1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_const_pool"
	.byte	0x8
	.value	0x1e4
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_pic_offset_table"
	.byte	0x8
	.value	0x1e7
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_eh_lsda"
	.byte	0x8
	.value	0x1ea
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arg_pointer_save_area_init"
	.byte	0x8
	.value	0x1ed
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x19
	.long	.LASF30
	.byte	0x8
	.value	0x1fa
	.long	0x5b0c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3965
	.uleb128 0x1f
	.long	0x434b
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x31fc
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1075
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b4
	.byte	0x0
	.uleb128 0xc
	.long	0x4a8a
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x741
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x4c6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x7d3
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0x10d4
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x7f0
	.long	0x3b4
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x7f2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x38f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x81d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.value	0x81e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.long	.LASF24
	.byte	0x3
	.value	0x81f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x19
	.long	.LASF31
	.byte	0x3
	.value	0x820
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF16
	.byte	0x3
	.value	0x82b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF18
	.byte	0x3
	.value	0x82e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3926
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x450
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x19
	.long	.LASF25
	.byte	0x3
	.value	0x848
	.long	0x4ac1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1b
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1b
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4313
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1086
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xc
	.long	0x4ac1
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x6f65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x7384
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a8a
	.uleb128 0x13
	.long	0x4d45
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x14
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x14
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x14
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x14
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x14
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x14
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x14
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x14
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x14
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x14
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x14
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x14
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x14
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x14
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x14
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x14
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x14
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x14
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x14
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x14
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x14
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x14
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x14
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x14
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x14
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x14
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x14
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x14
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x14
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x14
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x14
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x14
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x14
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x14
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x14
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x4d94
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x2dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4ac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x487
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x13
	.long	0x5572
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x14
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x14
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x14
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x14
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x14
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x14
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x14
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x14
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x14
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x14
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x14
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x14
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x14
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x14
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x14
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x14
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x14
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x14
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x14
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x14
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x14
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x14
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x14
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x14
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x14
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x14
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x14
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x14
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x14
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x14
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x14
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x14
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x14
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x14
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x14
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x14
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x14
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x14
	.string	"INSN"
	.sleb128 42
	.uleb128 0x14
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x14
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x14
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x14
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x14
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x14
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x14
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x14
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x14
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x14
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x14
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x14
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x14
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x14
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x14
	.string	"SET"
	.sleb128 57
	.uleb128 0x14
	.string	"USE"
	.sleb128 58
	.uleb128 0x14
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x14
	.string	"CALL"
	.sleb128 60
	.uleb128 0x14
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x14
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x14
	.string	"RESX"
	.sleb128 63
	.uleb128 0x14
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x14
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x14
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x14
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x14
	.string	"CONST"
	.sleb128 68
	.uleb128 0x14
	.string	"PC"
	.sleb128 69
	.uleb128 0x14
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x14
	.string	"REG"
	.sleb128 71
	.uleb128 0x14
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x14
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x14
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x14
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x14
	.string	"MEM"
	.sleb128 76
	.uleb128 0x14
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x14
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x14
	.string	"CC0"
	.sleb128 79
	.uleb128 0x14
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x14
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x14
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x14
	.string	"COND"
	.sleb128 83
	.uleb128 0x14
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x14
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x14
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x14
	.string	"NEG"
	.sleb128 87
	.uleb128 0x14
	.string	"MULT"
	.sleb128 88
	.uleb128 0x14
	.string	"DIV"
	.sleb128 89
	.uleb128 0x14
	.string	"MOD"
	.sleb128 90
	.uleb128 0x14
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x14
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x14
	.string	"AND"
	.sleb128 93
	.uleb128 0x14
	.string	"IOR"
	.sleb128 94
	.uleb128 0x14
	.string	"XOR"
	.sleb128 95
	.uleb128 0x14
	.string	"NOT"
	.sleb128 96
	.uleb128 0x14
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x14
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x14
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x14
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x14
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x14
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x14
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x14
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x14
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x14
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x14
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x14
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x14
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x14
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x14
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x14
	.string	"NE"
	.sleb128 112
	.uleb128 0x14
	.string	"EQ"
	.sleb128 113
	.uleb128 0x14
	.string	"GE"
	.sleb128 114
	.uleb128 0x14
	.string	"GT"
	.sleb128 115
	.uleb128 0x14
	.string	"LE"
	.sleb128 116
	.uleb128 0x14
	.string	"LT"
	.sleb128 117
	.uleb128 0x14
	.string	"GEU"
	.sleb128 118
	.uleb128 0x14
	.string	"GTU"
	.sleb128 119
	.uleb128 0x14
	.string	"LEU"
	.sleb128 120
	.uleb128 0x14
	.string	"LTU"
	.sleb128 121
	.uleb128 0x14
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x14
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x14
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x14
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x14
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x14
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x14
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x14
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x14
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x14
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x14
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x14
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x14
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x14
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x14
	.string	"FIX"
	.sleb128 136
	.uleb128 0x14
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x14
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x14
	.string	"ABS"
	.sleb128 139
	.uleb128 0x14
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x14
	.string	"FFS"
	.sleb128 141
	.uleb128 0x14
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x14
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x14
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x14
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x14
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x14
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x14
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x14
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x14
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x14
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x14
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x14
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x14
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x14
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x14
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x14
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x14
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x14
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x14
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x14
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x14
	.string	"PHI"
	.sleb128 162
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x20
	.long	0x564c
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x3b4
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
	.long	0x5572
	.uleb128 0x1a
	.long	0x56c0
	.long	.LASF32
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF26
	.byte	0x4
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF21
	.byte	0x4
	.byte	0x67
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	.LASF32
	.byte	0x4
	.byte	0x68
	.long	0x5667
	.uleb128 0x7
	.long	0x579d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x22
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x450
	.uleb128 0x22
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2db
	.uleb128 0x22
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b4
	.uleb128 0x22
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2c8
	.uleb128 0x22
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9c
	.uleb128 0x22
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19d
	.uleb128 0x22
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x4c6
	.uleb128 0x22
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x564c
	.uleb128 0x22
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x57b1
	.uleb128 0x22
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x57c9
	.uleb128 0x22
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e5
	.uleb128 0x22
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x57e1
	.uleb128 0x22
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x57e7
	.byte	0x0
	.uleb128 0x15
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x579d
	.uleb128 0x15
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57b7
	.uleb128 0x15
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57cf
	.uleb128 0x3
	.byte	0x4
	.long	0x56c0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x56cb
	.uleb128 0xf
	.long	0x580c
	.long	0x57ed
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x581c
	.long	0x9c
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x5888
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x8
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x8
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x8
	.byte	0x19
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5888
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5822
	.uleb128 0x1a
	.long	0x58d7
	.long	.LASF33
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x8
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF34
	.byte	0x8
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x29
	.long	0x58d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x588e
	.uleb128 0x4
	.long	0x5a2c
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x8
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x8
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.long	.LASF34
	.byte	0x8
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF33
	.byte	0x8
	.byte	0x50
	.long	0x58d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x49a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x4d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x581c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5b0c
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x8
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x8
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x8
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x8
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x23
	.long	0x5b76
	.long	.LASF30
	.byte	0x4
	.byte	0x8
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x15
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b76
	.uleb128 0x15
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b88
	.uleb128 0x3
	.byte	0x4
	.long	0x5a2c
	.uleb128 0x3
	.byte	0x4
	.long	0x58dd
	.uleb128 0x15
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ba8
	.uleb128 0x15
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bbe
	.uleb128 0x15
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bdb
	.uleb128 0x15
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bed
	.uleb128 0xc
	.long	0x5e3b
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0x19
	.long	.LASF35
	.byte	0xa
	.value	0x370
	.long	0x638e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_dtor_label"
	.byte	0xa
	.value	0x372
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"x_current_class_ptr"
	.byte	0xa
	.value	0x373
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"x_current_class_ref"
	.byte	0xa
	.value	0x374
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"x_eh_spec_block"
	.byte	0xa
	.value	0x375
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"x_in_charge_parm"
	.byte	0xa
	.value	0x376
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_vtt_parm"
	.byte	0xa
	.value	0x377
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_return_value"
	.byte	0xa
	.value	0x378
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"returns_value"
	.byte	0xa
	.value	0x37a
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1b
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x4d94
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"x_named_label_uses"
	.byte	0xa
	.value	0x384
	.long	0x66fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x6713
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF36
	.byte	0xa
	.value	0x386
	.long	0x6431
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x62ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.long	.LASF28
	.byte	0xa
	.value	0x389
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x6729
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c06
	.uleb128 0x4
	.long	0x5e77
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x6012
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.uleb128 0x14
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x14
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x14
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x14
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x14
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x14
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x14
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x14
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x14
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x14
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x14
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x14
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x14
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x14
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x14
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x14
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x14
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x14
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x14
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x14
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x14
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x610e
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x22
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x4a0
	.uleb128 0x22
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x610e
	.uleb128 0x22
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x611e
	.uleb128 0x22
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x612e
	.uleb128 0x22
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x613e
	.uleb128 0x22
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x614e
	.uleb128 0x22
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x615e
	.uleb128 0x22
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x616e
	.uleb128 0x22
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x617e
	.uleb128 0x22
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x618e
	.uleb128 0x22
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x619e
	.uleb128 0x22
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x61ae
	.uleb128 0x22
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x61be
	.uleb128 0x22
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x61ce
	.uleb128 0x22
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x61de
	.uleb128 0x22
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x61ee
	.uleb128 0x22
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x61fe
	.uleb128 0x22
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x6223
	.uleb128 0x22
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x6233
	.uleb128 0x22
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x6243
	.byte	0x0
	.uleb128 0xf
	.long	0x611e
	.long	0x3f8
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x612e
	.long	0x443
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x613e
	.long	0x409
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x614e
	.long	0x2db
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x615e
	.long	0x3b4
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x616e
	.long	0x47b
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x617e
	.long	0x41f
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x618e
	.long	0x450
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x619e
	.long	0x461
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61ae
	.long	0x487
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61be
	.long	0x489
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61ce
	.long	0xa7
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61de
	.long	0x1aa
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61ee
	.long	0x1f1
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x61fe
	.long	0x57c9
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x620e
	.long	0x621d
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x620e
	.uleb128 0xf
	.long	0x6233
	.long	0x5e41
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6243
	.long	0x57e1
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6253
	.long	0x625e
	.uleb128 0x10
	.long	0x3cb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6253
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x6012
	.uleb128 0x4
	.long	0x62ea
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF3
	.byte	0xc
	.byte	0x85
	.long	0x5e77
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF22
	.byte	0xc
	.byte	0x86
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x6264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x62fd
	.uleb128 0x3
	.byte	0x4
	.long	0x6277
	.uleb128 0xc
	.long	0x638e
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xb
	.value	0x101
	.uleb128 0xd
	.string	"x_last_stmt"
	.byte	0xb
	.value	0x103
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_last_expr_type"
	.byte	0xb
	.value	0x106
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"x_last_expr_filename"
	.byte	0xb
	.value	0x108
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x63d9
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x19
	.long	.LASF37
	.byte	0xb
	.value	0x122
	.long	0x6303
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"x_scope_stmt_stack"
	.byte	0xb
	.value	0x124
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x640d
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x1b
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	.LASF38
	.byte	0xa
	.byte	0xe4
	.long	0x6418
	.uleb128 0x24
	.long	.LASF38
	.byte	0x1
	.uleb128 0x15
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x641e
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x644d
	.uleb128 0x3
	.byte	0x4
	.long	0x6453
	.uleb128 0x15
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xc
	.long	0x66d7
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xd
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x66d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"old_namespace"
	.byte	0xa
	.value	0x318
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"decl_ns_list"
	.byte	0xa
	.value	0x319
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"class_name"
	.byte	0xa
	.value	0x31a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"class_type"
	.byte	0xa
	.value	0x31b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"access_specifier"
	.byte	0xa
	.value	0x31c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"function_decl"
	.byte	0xa
	.value	0x31d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"lang_base"
	.byte	0xa
	.value	0x31e
	.long	0x62ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"lang_name"
	.byte	0xa
	.value	0x31f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"template_parms"
	.byte	0xa
	.value	0x320
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"x_previous_class_type"
	.byte	0xa
	.value	0x321
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"x_previous_class_values"
	.byte	0xa
	.value	0x322
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"x_saved_tree"
	.byte	0xa
	.value	0x323
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"lookups"
	.byte	0xa
	.value	0x324
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"last_parms"
	.byte	0xa
	.value	0x325
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"x_processing_template_decl"
	.byte	0xa
	.value	0x327
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF37
	.byte	0xa
	.value	0x32c
	.long	0x6303
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x6431
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF36
	.byte	0xa
	.value	0x32f
	.long	0x6431
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x66dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x640d
	.uleb128 0x3
	.byte	0x4
	.long	0x6465
	.uleb128 0x15
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66e3
	.uleb128 0x15
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6700
	.uleb128 0x15
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6719
	.uleb128 0x25
	.long	0x6769
	.string	"languages"
	.byte	0x4
	.byte	0xa
	.value	0x3f1
	.uleb128 0x14
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x14
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x14
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xc
	.long	0x6888
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x1b
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_type_conversion"
	.byte	0xa
	.value	0x467
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_init_ref"
	.byte	0xa
	.value	0x468
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_default_ctor"
	.byte	0xa
	.value	0x469
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"uses_multiple_inheritance"
	.byte	0xa
	.value	0x46a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"const_needs_init"
	.byte	0xa
	.value	0x46b
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"ref_needs_init"
	.byte	0xa
	.value	0x46c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_const_assign_ref"
	.byte	0xa
	.value	0x46d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x6e71
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x6769
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF21
	.byte	0xa
	.value	0x481
	.long	0x3f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"com_interface"
	.byte	0xa
	.value	0x484
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"non_pod_class"
	.byte	0xa
	.value	0x485
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nearly_empty_p"
	.byte	0xa
	.value	0x486
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF20
	.byte	0xa
	.value	0x487
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_assign_ref"
	.byte	0xa
	.value	0x488
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_new"
	.byte	0xa
	.value	0x489
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_new"
	.byte	0xa
	.value	0x48a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"gets_delete"
	.byte	0xa
	.value	0x48c
	.long	0x3b4
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_call_overloaded"
	.byte	0xa
	.value	0x48d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_ref_overloaded"
	.byte	0xa
	.value	0x48e
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_arrow_overloaded"
	.byte	0xa
	.value	0x48f
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_only"
	.byte	0xa
	.value	0x490
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_unknown"
	.byte	0xa
	.value	0x491
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"marks"
	.byte	0xa
	.value	0x493
	.long	0x3b4
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"vec_new_uses_cookie"
	.byte	0xa
	.value	0x494
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"declared_class"
	.byte	0xa
	.value	0x495
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"being_defined"
	.byte	0xa
	.value	0x497
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"redefined"
	.byte	0xa
	.value	0x498
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"debug_requested"
	.byte	0xa
	.value	0x499
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF39
	.byte	0xa
	.value	0x49a
	.long	0x3b4
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"got_semicolon"
	.byte	0xa
	.value	0x49b
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"ptrmemfunc_flag"
	.byte	0xa
	.value	0x49c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"was_anonymous"
	.byte	0xa
	.value	0x49d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_real_assign_ref"
	.byte	0xa
	.value	0x49f
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_const_init_ref"
	.byte	0xa
	.value	0x4a0
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_init_ref"
	.byte	0xa
	.value	0x4a1
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_assign_ref"
	.byte	0xa
	.value	0x4a2
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_abstract_assign_ref"
	.byte	0xa
	.value	0x4a3
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_aggregate"
	.byte	0xa
	.value	0x4a4
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"is_partial_instantiation"
	.byte	0xa
	.value	0x4a5
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"java_interface"
	.byte	0xa
	.value	0x4a6
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"anon_aggr"
	.byte	0xa
	.value	0x4a8
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_zero_init"
	.byte	0xa
	.value	0x4a9
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"empty_p"
	.byte	0xa
	.value	0x4aa
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"contains_empty_class_p"
	.byte	0xa
	.value	0x4ab
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_implicit_copy_constructor"
	.byte	0xa
	.value	0x4b7
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"dummy"
	.byte	0xa
	.value	0x4b8
	.long	0x3b4
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"primary_base"
	.byte	0xa
	.value	0x4bd
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"vfields"
	.byte	0xa
	.value	0x4be
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vcall_indices"
	.byte	0xa
	.value	0x4bf
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"vtables"
	.byte	0xa
	.value	0x4c0
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"typeinfo_var"
	.byte	0xa
	.value	0x4c1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.long	.LASF40
	.byte	0xa
	.value	0x4c2
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"nested_udts"
	.byte	0xa
	.value	0x4c3
	.long	0x6437
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"as_base"
	.byte	0xa
	.value	0x4c4
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pure_virtuals"
	.byte	0xa
	.value	0x4c5
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"friend_classes"
	.byte	0xa
	.value	0x4c6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"methods"
	.byte	0xa
	.value	0x4c7
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"key_method"
	.byte	0xa
	.value	0x4c8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"decl_list"
	.byte	0xa
	.value	0x4c9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.long	.LASF41
	.byte	0xa
	.value	0x4ca
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x19
	.long	.LASF42
	.byte	0xa
	.value	0x4cb
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"copy_constructor"
	.byte	0xa
	.value	0x4cf
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xc
	.long	0x6eab
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x6769
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"record"
	.byte	0xa
	.value	0x4d6
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x6ee4
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x6769
	.uleb128 0x9
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x6888
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x6e71
	.byte	0x0
	.uleb128 0x1d
	.long	0x6f14
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x8
	.long	.LASF41
	.byte	0xa
	.value	0x725
	.long	0x1e5
	.uleb128 0x9
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x6431
	.byte	0x0
	.uleb128 0x1d
	.long	0x6f65
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x9
	.string	"access"
	.byte	0xa
	.value	0x72d
	.long	0x1e5
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2db
	.uleb128 0x9
	.string	"vcall_offset"
	.byte	0xa
	.value	0x734
	.long	0x1e5
	.byte	0x0
	.uleb128 0xc
	.long	0x7240
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0x19
	.long	.LASF35
	.byte	0xa
	.value	0x704
	.long	0x63d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF29
	.byte	0xa
	.value	0x706
	.long	0x672f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"operator_attr"
	.byte	0xa
	.value	0x708
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"constructor_attr"
	.byte	0xa
	.value	0x709
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"destructor_attr"
	.byte	0xa
	.value	0x70a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"friend_attr"
	.byte	0xa
	.value	0x70b
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"static_function"
	.byte	0xa
	.value	0x70c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"pure_virtual"
	.byte	0xa
	.value	0x70d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_in_charge_parm_p"
	.byte	0xa
	.value	0x70e
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_vtt_parm_p"
	.byte	0xa
	.value	0x70f
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"deferred"
	.byte	0xa
	.value	0x711
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF39
	.byte	0xa
	.value	0x712
	.long	0x3b4
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nonconverting"
	.byte	0xa
	.value	0x713
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"not_really_extern"
	.byte	0xa
	.value	0x714
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"needs_final_overrider"
	.byte	0xa
	.value	0x715
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"initialized_in_class"
	.byte	0xa
	.value	0x716
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"assignment_operator_p"
	.byte	0xa
	.value	0x717
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_ctor_p"
	.byte	0xa
	.value	0x719
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_dtor_p"
	.byte	0xa
	.value	0x71a
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"anticipated_p"
	.byte	0xa
	.value	0x71b
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"template_conv_p"
	.byte	0xa
	.value	0x71c
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u1sel"
	.byte	0xa
	.value	0x71d
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u2sel"
	.byte	0xa
	.value	0x71e
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"can_be_full"
	.byte	0xa
	.value	0x71f
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"unused"
	.byte	0xa
	.value	0x720
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x729
	.long	0x6ee4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x6f14
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x72a9
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xa
	.value	0x75c
	.uleb128 0x9
	.string	"sorted_fields"
	.byte	0xa
	.value	0x75d
	.long	0x1e5
	.uleb128 0x9
	.string	"pending_inline_info"
	.byte	0xa
	.value	0x75e
	.long	0x6729
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x5e3b
	.byte	0x0
	.uleb128 0xc
	.long	0x7384
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x19
	.long	.LASF42
	.byte	0xa
	.value	0x740
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF24
	.byte	0xa
	.value	0x745
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cloned_function"
	.byte	0xa
	.value	0x748
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"delta"
	.byte	0xa
	.value	0x74c
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"named_return_object"
	.byte	0xa
	.value	0x751
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"operator_code"
	.byte	0xa
	.value	0x756
	.long	0x753
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"pending_inline_p"
	.byte	0xa
	.value	0x759
	.long	0x3b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x761
	.long	0x7240
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1d
	.long	0x73a5
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x72a9
	.byte	0x0
	.uleb128 0x23
	.long	0x746d
	.long	.LASF43
	.byte	0x4
	.byte	0xa
	.value	0xc49
	.uleb128 0x14
	.string	"sfk_none"
	.sleb128 0
	.uleb128 0x14
	.string	"sfk_constructor"
	.sleb128 1
	.uleb128 0x14
	.string	"sfk_copy_constructor"
	.sleb128 2
	.uleb128 0x14
	.string	"sfk_assignment_operator"
	.sleb128 3
	.uleb128 0x14
	.string	"sfk_destructor"
	.sleb128 4
	.uleb128 0x14
	.string	"sfk_complete_destructor"
	.sleb128 5
	.uleb128 0x14
	.string	"sfk_base_destructor"
	.sleb128 6
	.uleb128 0x14
	.string	"sfk_deleting_destructor"
	.sleb128 7
	.uleb128 0x14
	.string	"sfk_conversion"
	.sleb128 8
	.byte	0x0
	.uleb128 0x26
	.long	.LASF43
	.byte	0xa
	.value	0xc57
	.long	0x73a5
	.uleb128 0x27
	.long	0x74ce
	.long	.LASF44
	.byte	0x10
	.byte	0xa
	.value	0xe26
	.uleb128 0x19
	.long	.LASF1
	.byte	0xa
	.value	0xe28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF22
	.byte	0xa
	.value	0xe2a
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"mangled_name"
	.byte	0xa
	.value	0xe2c
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"arity"
	.byte	0xa
	.value	0xe2e
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x26
	.long	.LASF44
	.byte	0xa
	.value	0xe2f
	.long	0x7479
	.uleb128 0x28
	.long	0x7531
	.byte	0x1
	.string	"begin_init_stmts"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.string	"stmt_expr_p"
	.byte	0x1
	.byte	0x44
	.long	0x4d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"compound_stmt_p"
	.byte	0x1
	.byte	0x45
	.long	0x4d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x7579
	.byte	0x1
	.string	"finish_init_stmts"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x1e5
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2b
	.long	.LASF45
	.byte	0x1
	.byte	0x55
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF46
	.byte	0x1
	.byte	0x56
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2c
	.long	0x75e5
	.string	"dfs_initialize_vtbl_ptrs"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x1e5
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2b
	.long	.LASF23
	.byte	0x1
	.byte	0x74
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"data"
	.byte	0x1
	.byte	0x75
	.long	0x487
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"base_ptr"
	.byte	0x1
	.byte	0x7a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x763b
	.byte	0x1
	.string	"initialize_vtbl_ptrs"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2b
	.long	.LASF47
	.byte	0x1
	.byte	0x8b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"list"
	.byte	0x1
	.byte	0x8d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF3
	.byte	0x1
	.byte	0x8e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x7728
	.byte	0x1
	.string	"build_zero_init"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0x1e5
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.byte	0xa9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF48
	.byte	0x1
	.byte	0xa9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"static_storage_p"
	.byte	0x1
	.byte	0xa9
	.long	0x4d94
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF49
	.byte	0x1
	.byte	0xab
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x76d5
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2f
	.long	.LASF50
	.byte	0x1
	.byte	0xce
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"inits"
	.byte	0x1
	.byte	0xcf
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	0x7717
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.string	"index"
	.byte	0x1
	.byte	0xed
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"max_index"
	.byte	0x1
	.byte	0xee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"inits"
	.byte	0x1
	.byte	0xef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9445
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16124
	.byte	0x0
	.uleb128 0x32
	.long	0x7773
	.string	"build_default_init"
	.byte	0x1
	.value	0x119
	.byte	0x1
	.long	0x1e5
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x117
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x118
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x7806
	.string	"perform_member_init"
	.byte	0x1
	.value	0x144
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x33
	.long	.LASF52
	.byte	0x1
	.value	0x143
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x143
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x145
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x146
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"explicit"
	.byte	0x1
	.value	0x147
	.long	0x4d94
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0x19a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x786f
	.string	"build_field_list"
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.long	0x1e5
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.value	0x1ac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"list"
	.byte	0x1
	.value	0x1ad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x1ae
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"fields"
	.byte	0x1
	.value	0x1b0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x79e2
	.string	"sort_mem_initializers"
	.byte	0x1
	.value	0x1e0
	.byte	0x1
	.long	0x1e5
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.value	0x1df
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x1df
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x1e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x1e2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"sorted_inits"
	.byte	0x1
	.value	0x1e3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"next_subobject"
	.byte	0x1
	.value	0x1e4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0x1e5
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x1e6
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	0x795d
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x207
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"subobject_init"
	.byte	0x1
	.value	0x208
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x36
	.string	"last_field"
	.byte	0x1
	.value	0x244
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.long	.LASF50
	.byte	0x1
	.value	0x247
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"field_type"
	.byte	0x1
	.value	0x248
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"done"
	.byte	0x1
	.value	0x249
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x36
	.string	"last_field_type"
	.byte	0x1
	.value	0x26f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7a65
	.byte	0x1
	.string	"emit_mem_initializers"
	.byte	0x1
	.value	0x29c
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.long	.LASF54
	.byte	0x1
	.value	0x29b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x2a7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x2a8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x36
	.string	"base_addr"
	.byte	0x1
	.value	0x2be
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7ac6
	.string	"build_vtbl_address"
	.byte	0x1
	.value	0x2df
	.byte	0x1
	.long	0x1e5
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x2de
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"binfo_for"
	.byte	0x1
	.value	0x2e0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.string	"vtbl"
	.byte	0x1
	.value	0x2e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7b8a
	.string	"expand_virtual_init"
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x306
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x306
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"vtbl"
	.byte	0x1
	.value	0x308
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"vtbl_ptr"
	.byte	0x1
	.value	0x308
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"vtt_index"
	.byte	0x1
	.value	0x309
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	0x7b79
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x36
	.string	"vtbl2"
	.byte	0x1
	.value	0x313
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"vtt_parm"
	.byte	0x1
	.value	0x314
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9440
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16670
	.byte	0x0
	.uleb128 0x34
	.long	0x7be6
	.string	"expand_cleanup_for_base"
	.byte	0x1
	.value	0x33d
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x33b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"flag"
	.byte	0x1
	.value	0x33c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0x33e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0x7c7a
	.string	"construct_virtual_base"
	.byte	0x1
	.value	0x356
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x37
	.string	"vbase"
	.byte	0x1
	.value	0x355
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0x355
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"inner_if_stmt"
	.byte	0x1
	.value	0x357
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x358
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"exp"
	.byte	0x1
	.value	0x359
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.string	"flag"
	.byte	0x1
	.value	0x35a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7cc5
	.string	"initializing_context"
	.byte	0x1
	.value	0x383
	.byte	0x1
	.long	0x1e5
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF50
	.byte	0x1
	.value	0x382
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x384
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7d2b
	.string	"member_init_ok_or_else"
	.byte	0x1
	.value	0x399
	.byte	0x1
	.long	0x2db
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.long	.LASF50
	.byte	0x1
	.value	0x396
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x397
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"member_name"
	.byte	0x1
	.value	0x398
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0x7d9f
	.byte	0x1
	.string	"expand_member_init"
	.byte	0x1
	.value	0x3b7
	.byte	0x1
	.long	0x1e5
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.value	0x3b6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x3b8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF50
	.byte	0x1
	.value	0x3b9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x3dd
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x7e7b
	.byte	0x1
	.string	"build_aggr_init"
	.byte	0x1
	.value	0x42b
	.byte	0x1
	.long	0x1e5
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x429
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x429
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x42a
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF45
	.byte	0x1
	.value	0x42c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0x42d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF58
	.byte	0x1
	.value	0x42e
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x42f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"was_const"
	.byte	0x1
	.value	0x430
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"was_volatile"
	.byte	0x1
	.value	0x431
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x36
	.string	"itype"
	.byte	0x1
	.value	0x440
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x7edd
	.byte	0x1
	.string	"build_init"
	.byte	0x1
	.value	0x47b
	.byte	0x1
	.long	0x1e5
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x479
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x479
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x47a
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0x47c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7fa7
	.string	"expand_default_init"
	.byte	0x1
	.value	0x48d
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x489
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0x48a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x48a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x48b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x48c
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x48e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"ctor_name"
	.byte	0x1
	.value	0x48f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"rval"
	.byte	0x1
	.value	0x497
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.string	"parms"
	.byte	0x1
	.value	0x498
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF51
	.long	0x943b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17026
	.byte	0x0
	.uleb128 0x34
	.long	0x803a
	.string	"expand_aggr_init_1"
	.byte	0x1
	.value	0x4f2
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x4ee
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.value	0x4ef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x4ef
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x4f0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0x4f1
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x4f3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF51
	.long	0x9436
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17118
	.byte	0x0
	.uleb128 0x39
	.long	0x8084
	.byte	0x1
	.string	"is_aggr_type"
	.byte	0x1
	.value	0x516
	.byte	0x1
	.long	0x2db
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x514
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"or_else"
	.byte	0x1
	.value	0x515
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x39
	.long	0x80e6
	.byte	0x1
	.string	"get_aggr_from_typedef"
	.byte	0x1
	.value	0x52b
	.byte	0x1
	.long	0x1e5
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.value	0x529
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"or_else"
	.byte	0x1
	.value	0x52a
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x52c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x811f
	.byte	0x1
	.string	"get_type_value"
	.byte	0x1
	.value	0x548
	.byte	0x1
	.long	0x1e5
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.value	0x547
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8215
	.byte	0x1
	.string	"build_member_call"
	.byte	0x1
	.value	0x55c
	.byte	0x1
	.long	0x1e5
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x55b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.value	0x55b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"parmlist"
	.byte	0x1
	.value	0x55b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x55d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"method_name"
	.byte	0x1
	.value	0x55e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"fns"
	.byte	0x1
	.value	0x55f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"dtor"
	.byte	0x1
	.value	0x560
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"basetype_path"
	.byte	0x1
	.value	0x561
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x561
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	0x8204
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x36
	.string	"ns"
	.byte	0x1
	.value	0x596
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9431
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17250
	.byte	0x0
	.uleb128 0x39
	.long	0x82e6
	.byte	0x1
	.string	"build_offset_ref"
	.byte	0x1
	.value	0x5f7
	.byte	0x1
	.long	0x1e5
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x5f6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF22
	.byte	0x1
	.value	0x5f6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x5f8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x5f8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF52
	.byte	0x1
	.value	0x5f9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"basebinfo"
	.byte	0x1
	.value	0x5fa
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"orig_name"
	.byte	0x1
	.value	0x5fb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	0x82d5
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x36
	.string	"fnfields"
	.byte	0x1
	.value	0x657
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x941c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17395
	.byte	0x0
	.uleb128 0x39
	.long	0x839b
	.byte	0x1
	.string	"resolve_offset_ref"
	.byte	0x1
	.value	0x6b6
	.byte	0x1
	.long	0x1e5
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x6b5
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x6b7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x6b8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF52
	.byte	0x1
	.value	0x6b9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x6ba
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x6ba
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x838a
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x6f8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9407
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17570
	.byte	0x0
	.uleb128 0x39
	.long	0x83d9
	.byte	0x1
	.string	"decl_constant_value"
	.byte	0x1
	.value	0x732
	.byte	0x1
	.long	0x1e5
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x731
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x841c
	.string	"build_builtin_delete_call"
	.byte	0x1
	.value	0x748
	.byte	0x1
	.long	0x1e5
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0x747
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8527
	.byte	0x1
	.string	"build_new"
	.byte	0x1
	.value	0x76c
	.byte	0x1
	.long	0x1e5
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0x769
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0x76a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x76a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0x76b
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x76d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"rval"
	.byte	0x1
	.value	0x76d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x76e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x76e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x76f
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	0x8516
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x36
	.string	"absdcl"
	.byte	0x1
	.value	0x776
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"last_absdcl"
	.byte	0x1
	.value	0x777
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.long	.LASF63
	.byte	0x1
	.value	0x78a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9402
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17791
	.byte	0x0
	.uleb128 0x39
	.long	0x85b9
	.byte	0x1
	.string	"build_java_class_ref"
	.byte	0x1
	.value	0x816
	.byte	0x1
	.long	0x1e5
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x815
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF22
	.byte	0x1
	.value	0x817
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF64
	.byte	0x1
	.value	0x817
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	0x85a0
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x35
	.long	.LASF50
	.byte	0x1
	.value	0x826
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.string	"CL_suffix"
	.byte	0x1
	.value	0x818
	.long	0x1e5
	.byte	0x5
	.byte	0x3
	.long	CL_suffix.17934
	.byte	0x0
	.uleb128 0x32
	.long	0x8630
	.string	"get_cookie_size"
	.byte	0x1
	.value	0x848
	.byte	0x1
	.long	0x1e5
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x847
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF65
	.byte	0x1
	.value	0x849
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"sizetype_size"
	.byte	0x1
	.value	0x84d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"type_align"
	.byte	0x1
	.value	0x84e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x32
	.long	0x8a43
	.string	"build_new_1"
	.byte	0x1
	.value	0x860
	.byte	0x1
	.long	0x1e5
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0x85f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF60
	.byte	0x1
	.value	0x861
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x861
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x862
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x36
	.string	"true_type"
	.byte	0x1
	.value	0x862
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.string	"size"
	.byte	0x1
	.value	0x862
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x36
	.string	"rval"
	.byte	0x1
	.value	0x862
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x862
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x36
	.string	"full_type"
	.byte	0x1
	.value	0x863
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.string	"outer_nelts"
	.byte	0x1
	.value	0x864
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x865
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.string	"alloc_call"
	.byte	0x1
	.value	0x866
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x36
	.string	"alloc_expr"
	.byte	0x1
	.value	0x866
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.string	"alloc_node"
	.byte	0x1
	.value	0x866
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x36
	.string	"alloc_fn"
	.byte	0x1
	.value	0x867
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x36
	.string	"cookie_expr"
	.byte	0x1
	.value	0x868
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x36
	.string	"init_expr"
	.byte	0x1
	.value	0x868
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x869
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x36
	.string	"code"
	.byte	0x1
	.value	0x86a
	.long	0x753
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.string	"use_cookie"
	.byte	0x1
	.value	0x86b
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x36
	.string	"nothrow"
	.byte	0x1
	.value	0x86b
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.string	"check_new"
	.byte	0x1
	.value	0x86b
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.string	"globally_qualified_p"
	.byte	0x1
	.value	0x86d
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF61
	.byte	0x1
	.value	0x870
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.string	"use_java_new"
	.byte	0x1
	.value	0x871
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF65
	.byte	0x1
	.value	0x875
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.string	"placement_allocation_fn_p"
	.byte	0x1
	.value	0x878
	.long	0x4d94
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x30
	.long	0x889f
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x35
	.long	.LASF63
	.byte	0x1
	.value	0x893
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x30
	.long	0x8902
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x36
	.string	"class_addr"
	.byte	0x1
	.value	0x8ce
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x36
	.string	"alloc_decl"
	.byte	0x1
	.value	0x8ce
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF64
	.byte	0x1
	.value	0x8cf
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.string	"class_size"
	.byte	0x1
	.value	0x8d0
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x30
	.long	0x8933
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x36
	.string	"fnname"
	.byte	0x1
	.value	0x8e0
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.string	"args"
	.byte	0x1
	.value	0x8e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x30
	.long	0x8953
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x36
	.string	"cookie"
	.byte	0x1
	.value	0x929
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x30
	.long	0x89e7
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x36
	.string	"dcode"
	.byte	0x1
	.value	0x971
	.long	0x753
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"cleanup"
	.byte	0x1
	.value	0x972
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF57
	.byte	0x1
	.value	0x973
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"delete_node"
	.byte	0x1
	.value	0x975
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.value	0x99f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"sentry"
	.byte	0x1
	.value	0x99f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"begin"
	.byte	0x1
	.value	0x99f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8a19
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x36
	.string	"nullexp"
	.byte	0x1
	.value	0x9c8
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"ifexp"
	.byte	0x1
	.value	0x9c9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x93d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18040
	.uleb128 0x36
	.string	"alloc_name"
	.byte	0x1
	.value	0x8d1
	.long	0x93ed
	.byte	0x5
	.byte	0x3
	.long	alloc_name.18034
	.byte	0x0
	.uleb128 0x32
	.long	0x8bc8
	.string	"build_vec_delete_1"
	.byte	0x1
	.value	0x9e0
	.byte	0x1
	.long	0x1e5
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x33
	.long	.LASF35
	.byte	0x1
	.value	0x9dd
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF66
	.byte	0x1
	.value	0x9dd
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x9dd
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0x9de
	.long	0x746d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF68
	.byte	0x1
	.value	0x9df
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF69
	.byte	0x1
	.value	0x9e1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.string	"ptype"
	.byte	0x1
	.value	0x9e2
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"size_exp"
	.byte	0x1
	.value	0x9e3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"tbase"
	.byte	0x1
	.value	0x9e6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"tbase_init"
	.byte	0x1
	.value	0x9e6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"body"
	.byte	0x1
	.value	0x9ea
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"loop"
	.byte	0x1
	.value	0x9ed
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"deallocate_expr"
	.byte	0x1
	.value	0x9f0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"controller"
	.byte	0x1
	.value	0x9f6
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"no_destructor"
	.byte	0x1
	.value	0xa25
	.long	.L954
	.uleb128 0x30
	.long	0x8bb7
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x36
	.string	"base_tbd"
	.byte	0x1
	.value	0xa2b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x35
	.long	.LASF65
	.byte	0x1
	.value	0xa36
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x93c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18355
	.byte	0x0
	.uleb128 0x39
	.long	0x8c16
	.byte	0x1
	.string	"create_temporary_var"
	.byte	0x1
	.value	0xa67
	.byte	0x1
	.long	0x1e5
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xa66
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xa68
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x8c6d
	.string	"get_temp_regvar"
	.byte	0x1
	.value	0xa7f
	.byte	0x1
	.long	0x1e5
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xa7e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0xa7e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0xa80
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8eea
	.byte	0x1
	.string	"build_vec_init"
	.byte	0x1
	.value	0xaa0
	.byte	0x1
	.long	0x1e5
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x33
	.long	.LASF35
	.byte	0x1
	.value	0xa9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF66
	.byte	0x1
	.value	0xa9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0xa9e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.string	"from_array"
	.byte	0x1
	.value	0xa9f
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.string	"rval"
	.byte	0x1
	.value	0xaa1
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.string	"base2"
	.byte	0x1
	.value	0xaa2
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.string	"size"
	.byte	0x1
	.value	0xaa3
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.string	"itype"
	.byte	0x1
	.value	0xaa4
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.string	"iterator"
	.byte	0x1
	.value	0xaa5
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.string	"atype"
	.byte	0x1
	.value	0xaa7
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0xaa9
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.string	"ptype"
	.byte	0x1
	.value	0xaab
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF45
	.byte	0x1
	.value	0xaac
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x35
	.long	.LASF46
	.byte	0x1
	.value	0xaad
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF58
	.byte	0x1
	.value	0xaae
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.string	"try_block"
	.byte	0x1
	.value	0xaaf
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.string	"try_body"
	.byte	0x1
	.value	0xab0
	.long	0x1e5
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.string	"num_initialized_elts"
	.byte	0x1
	.value	0xab1
	.long	0x2db
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	0x8e2e
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x36
	.string	"elts"
	.byte	0x1
	.value	0xb05
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x36
	.string	"elt"
	.byte	0x1
	.value	0xb0a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.string	"baseref"
	.byte	0x1
	.value	0xb0b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8eb1
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x36
	.string	"if_stmt"
	.byte	0x1
	.value	0xb3f
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.string	"do_stmt"
	.byte	0x1
	.value	0xb40
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"do_body"
	.byte	0x1
	.value	0xb41
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.string	"elt_init"
	.byte	0x1
	.value	0xb42
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0xb5d
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.string	"from"
	.byte	0x1
	.value	0xb5e
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8ed9
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0xb9b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"m"
	.byte	0x1
	.value	0xb9c
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x93be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18525
	.byte	0x0
	.uleb128 0x39
	.long	0x8f92
	.byte	0x1
	.string	"build_x_delete"
	.byte	0x1
	.value	0xbcc
	.byte	0x1
	.long	0x1e5
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0xbc9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"which_delete"
	.byte	0x1
	.value	0xbca
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF69
	.byte	0x1
	.value	0xbcb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF68
	.byte	0x1
	.value	0xbcd
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"use_vec_delete"
	.byte	0x1
	.value	0xbce
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"code"
	.byte	0x1
	.value	0xbcf
	.long	0x753
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF57
	.byte	0x1
	.value	0xbd0
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x900e
	.string	"build_dtor_call"
	.byte	0x1
	.value	0xbdd
	.byte	0x1
	.long	0x1e5
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x37
	.string	"exp"
	.byte	0x1
	.value	0xbda
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"dtor_kind"
	.byte	0x1
	.value	0xbdb
	.long	0x746d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0xbdc
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF22
	.byte	0x1
	.value	0xbde
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF51
	.long	0x93a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18770
	.byte	0x0
	.uleb128 0x39
	.long	0x90f1
	.byte	0x1
	.string	"build_delete"
	.byte	0x1
	.value	0xc04
	.byte	0x1
	.long	0x1e5
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xc00
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF47
	.byte	0x1
	.value	0xc00
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"auto_delete"
	.byte	0x1
	.value	0xc01
	.long	0x746d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF57
	.byte	0x1
	.value	0xc02
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF68
	.byte	0x1
	.value	0xc03
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0xc05
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"handle_array"
	.byte	0x1
	.value	0xc2c
	.long	.L1094
	.uleb128 0x30
	.long	0x90e0
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x36
	.string	"do_delete"
	.byte	0x1
	.value	0xc50
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"ifexp"
	.byte	0x1
	.value	0xc51
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x9394
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18785
	.byte	0x0
	.uleb128 0x38
	.long	0x9228
	.byte	0x1
	.string	"push_base_cleanups"
	.byte	0x1
	.value	0xc97
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x36
	.string	"binfos"
	.byte	0x1
	.value	0xc98
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.value	0xc99
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"n_baseclasses"
	.byte	0x1
	.value	0xc99
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF52
	.byte	0x1
	.value	0xc9a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0xc9b
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	0x91cd
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x35
	.long	.LASF40
	.byte	0x1
	.value	0xca0
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"cond"
	.byte	0x1
	.value	0xca1
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x36
	.string	"vbase"
	.byte	0x1
	.value	0xcac
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.string	"base_type"
	.byte	0x1
	.value	0xcad
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x91f1
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x36
	.string	"base_binfo"
	.byte	0x1
	.value	0xcc4
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x36
	.string	"this_member"
	.byte	0x1
	.value	0xcd7
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.string	"this_type"
	.byte	0x1
	.value	0xcdb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x92d7
	.byte	0x1
	.string	"build_vbase_delete"
	.byte	0x1
	.value	0xcea
	.byte	0x1
	.long	0x1e5
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xce9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF2
	.byte	0x1
	.value	0xce9
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF40
	.byte	0x1
	.value	0xceb
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.string	"result"
	.byte	0x1
	.value	0xcec
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0xced
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	0x92c6
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x36
	.string	"this_addr"
	.byte	0x1
	.value	0xcf3
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF51
	.long	0x937f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19041
	.byte	0x0
	.uleb128 0x39
	.long	0x936f
	.byte	0x1
	.string	"build_vec_delete"
	.byte	0x1
	.value	0xd15
	.byte	0x1
	.long	0x1e5
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x33
	.long	.LASF35
	.byte	0x1
	.value	0xd12
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF66
	.byte	0x1
	.value	0xd12
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0xd13
	.long	0x746d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF68
	.byte	0x1
	.value	0xd14
	.long	0x2db
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0xd16
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x36
	.string	"cookie_addr"
	.byte	0x1
	.value	0xd22
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x937f
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x936f
	.uleb128 0xf
	.long	0x9394
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x9384
	.uleb128 0xf
	.long	0x93a9
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x9399
	.uleb128 0xf
	.long	0x93be
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x93ae
	.uleb128 0xa
	.long	0x936f
	.uleb128 0xf
	.long	0x93d8
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x93c8
	.uleb128 0xf
	.long	0x93ed
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x93dd
	.uleb128 0xf
	.long	0x9402
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x9
	.byte	0x0
	.uleb128 0xa
	.long	0x93f2
	.uleb128 0xa
	.long	0x936f
	.uleb128 0xf
	.long	0x941c
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x940c
	.uleb128 0xf
	.long	0x9431
	.long	0x2d3
	.uleb128 0x10
	.long	0x3cb
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0x9421
	.uleb128 0xa
	.long	0x936f
	.uleb128 0xa
	.long	0x4b0
	.uleb128 0xa
	.long	0x4b0
	.uleb128 0xa
	.long	0x9399
	.uleb128 0xf
	.long	0x9455
	.long	0x2d3
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x946d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x944a
	.uleb128 0xf
	.long	0x9482
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3d
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x9472
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x94a9
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0xa
	.byte	0x0
	.uleb128 0x3d
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x9499
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x94d1
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0x5
	.byte	0x0
	.uleb128 0x3d
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0x94c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"immediate_size_expand"
	.byte	0x3
	.value	0xc03
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x430d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9571
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0x1e
	.byte	0x0
	.uleb128 0x3c
	.string	"c_global_trees"
	.byte	0xb
	.byte	0xee
	.long	0x9561
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_ms_extensions"
	.byte	0xb
	.value	0x19b
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_check_new"
	.byte	0xb
	.value	0x2cb
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_reorder"
	.byte	0xb
	.value	0x31b
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"warn_ecpp"
	.byte	0xb
	.value	0x328
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x95fa
	.long	0x1e5
	.uleb128 0x10
	.long	0x3cb
	.byte	0x49
	.byte	0x0
	.uleb128 0x3d
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0x95ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x66dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"global_namespace"
	.byte	0xa
	.value	0x3d4
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"integer_two_node"
	.byte	0xa
	.value	0xca7
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x966b
	.long	0x74ce
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3d
	.string	"operator_name_info"
	.byte	0xa
	.value	0xe32
	.long	0x9660
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"extra_warnings"
	.byte	0xf
	.byte	0x5f
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"pedantic"
	.byte	0xf
	.byte	0xe3
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_exceptions"
	.byte	0xf
	.value	0x1ec
	.long	0x2db
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x16
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
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x38
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x20c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x96cd
	.long	0x74da
	.string	"begin_init_stmts"
	.long	0x7531
	.string	"finish_init_stmts"
	.long	0x75e5
	.string	"initialize_vtbl_ptrs"
	.long	0x763b
	.string	"build_zero_init"
	.long	0x79e2
	.string	"emit_mem_initializers"
	.long	0x7d2b
	.string	"expand_member_init"
	.long	0x7d9f
	.string	"build_aggr_init"
	.long	0x7e7b
	.string	"build_init"
	.long	0x803a
	.string	"is_aggr_type"
	.long	0x8084
	.string	"get_aggr_from_typedef"
	.long	0x80e6
	.string	"get_type_value"
	.long	0x811f
	.string	"build_member_call"
	.long	0x8215
	.string	"build_offset_ref"
	.long	0x82e6
	.string	"resolve_offset_ref"
	.long	0x839b
	.string	"decl_constant_value"
	.long	0x841c
	.string	"build_new"
	.long	0x8527
	.string	"build_java_class_ref"
	.long	0x8bc8
	.string	"create_temporary_var"
	.long	0x8c6d
	.string	"build_vec_init"
	.long	0x8eea
	.string	"build_x_delete"
	.long	0x900e
	.string	"build_delete"
	.long	0x90f1
	.string	"push_base_cleanups"
	.long	0x9228
	.string	"build_vbase_delete"
	.long	0x92d7
	.string	"build_vec_delete"
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
.LASF43:
	.string	"special_function_kind"
.LASF22:
	.string	"name"
.LASF35:
	.string	"base"
.LASF28:
	.string	"cannot_inline"
.LASF6:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_6"
.LASF42:
	.string	"befriending_classes"
.LASF46:
	.string	"compound_stmt"
.LASF60:
	.string	"placement"
.LASF32:
	.string	"mem_attrs"
.LASF36:
	.string	"bindings"
.LASF64:
	.string	"class_decl"
.LASF61:
	.string	"use_global_new"
.LASF26:
	.string	"expr"
.LASF23:
	.string	"binfo"
.LASF62:
	.string	"has_array"
.LASF0:
	.string	"common"
.LASF25:
	.string	"lang_specific"
.LASF34:
	.string	"sequence_rtl_expr"
.LASF68:
	.string	"use_global_delete"
.LASF47:
	.string	"addr"
.LASF52:
	.string	"member"
.LASF67:
	.string	"auto_delete_vec"
.LASF38:
	.string	"cxx_saved_binding"
.LASF33:
	.string	"sequence_stack"
.LASF30:
	.string	"function_frequency"
.LASF9:
	.string	"lang_flag_3"
.LASF56:
	.string	"basetype"
.LASF4:
	.string	"unsigned int"
.LASF44:
	.string	"operator_name_info_t"
.LASF45:
	.string	"stmt_expr"
.LASF16:
	.string	"abstract_origin"
.LASF21:
	.string	"align"
.LASF69:
	.string	"virtual_size"
.LASF19:
	.string	"pointer_depth"
.LASF39:
	.string	"use_template"
.LASF63:
	.string	"this_nelts"
.LASF58:
	.string	"destroy_temps"
.LASF20:
	.string	"user_align"
.LASF17:
	.string	"size_unit"
.LASF3:
	.string	"type"
.LASF29:
	.string	"language"
.LASF55:
	.string	"subobject"
.LASF49:
	.string	"init"
.LASF27:
	.string	"args_size"
.LASF50:
	.string	"field"
.LASF54:
	.string	"mem_inits"
.LASF5:
	.string	"built_in_class"
.LASF31:
	.string	"arguments"
.LASF1:
	.string	"identifier"
.LASF10:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_5"
.LASF13:
	.string	"lang_flag_7"
.LASF15:
	.string	"abstract_flag"
.LASF37:
	.string	"x_stmt_tree"
.LASF59:
	.string	"true_exp"
.LASF24:
	.string	"context"
.LASF40:
	.string	"vbases"
.LASF14:
	.string	"ht_identifier"
.LASF41:
	.string	"template_info"
.LASF51:
	.string	"__FUNCTION__"
.LASF66:
	.string	"maxindex"
.LASF57:
	.string	"flags"
.LASF48:
	.string	"nelts"
.LASF53:
	.string	"uses_unions_p"
.LASF65:
	.string	"cookie_size"
.LASF18:
	.string	"attributes"
.LASF2:
	.string	"decl"
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
