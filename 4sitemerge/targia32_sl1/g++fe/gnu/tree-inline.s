	.file	"tree-inline.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl flag_inline_trees
	.bss
	.align 4
	.type	flag_inline_trees, @object
	.size	flag_inline_trees, 4
flag_inline_trees:
	.zero	4
	.section	.rodata
	.type	__FUNCTION__.12747, @object
	.size	__FUNCTION__.12747, 11
__FUNCTION__.12747:
	.string	"remap_decl"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/tree-inline.c"
	.text
	.type	remap_decl, @function
remap_decl:
.LFB15:
	.file 1 "../../../kg++fe/gnu/tree-inline.c"
	.loc 1 146 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$64, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 151 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 152 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L2
	.loc 1 153 0
	movl	$0, -44(%ebp)
	jmp	.L4
.L2:
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -32(%ebp)
	.loc 1 159 0
	cmpl	$0, -32(%ebp)
	jne	.L5
.LBB2:
	.loc 1 164 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl_for_inlining@PLT
	movl	%eax, -24(%ebp)
	.loc 1 167 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L7
	.loc 1 168 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 33(%eax)
.L7:
	.loc 1 173 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L9
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L9
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 176 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 177 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %esi
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 16(%esi)
	.loc 1 179 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	leal	64(%eax), %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	copy_body_r@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
.L9:
	.loc 1 184 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L13
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L13
	movl	lang_hooks@GOT(%ebx), %eax
	movl	188(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L13
.LBB3:
	.loc 1 190 0
	movl	$0, -20(%ebp)
	.loc 1 193 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L17
.L18:
.LBB4:
	.loc 1 196 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remap_decl
	movl	%eax, -12(%ebp)
	.loc 1 198 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 199 0
	leal	__FUNCTION__.12747@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$199, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L19:
	.loc 1 200 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
.LBE4:
	.loc 1 194 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L17:
	.loc 1 193 0
	cmpl	$0, -16(%ebp)
	jne	.L18
	.loc 1 202 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 60(%eax)
.L13:
.LBE3:
	.loc 1 208 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	movl	%eax, -32(%ebp)
.L5:
.LBE2:
	.loc 1 213 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L4:
	movl	-44(%ebp), %eax
	.loc 1 214 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	remap_decl, .-remap_decl
	.section	.rodata
	.type	__FUNCTION__.12833, @object
	.size	__FUNCTION__.12833, 12
__FUNCTION__.12833:
	.string	"remap_block"
	.text
	.type	remap_block, @function
remap_block:
.LFB16:
	.loc 1 236 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$52, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 245 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 247 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 248 0
	jmp	.L49
.L24:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L27
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L27
.LBB5:
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 261 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, -28(%ebp)
	.loc 1 262 0
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 10(%edx)
	.loc 1 263 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 264 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 267 0
	cmpl	$0, 12(%ebp)
	jne	.L30
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L32
.L30:
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L32:
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 268 0
	jmp	.L33
.L34:
.LBB6:
	.loc 1 274 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_decl
	movl	%eax, -16(%ebp)
	.loc 1 280 0
	cmpl	$0, -16(%ebp)
	je	.L35
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L35
	.loc 1 284 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 285 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
.L35:
.LBE6:
	.loc 1 269 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L33:
	.loc 1 268 0
	cmpl	$0, -24(%ebp)
	jne	.L34
	.loc 1 289 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 290 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 291 0
	movl	16(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L39
	.loc 1 295 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L41
.L39:
.LBB7:
	.loc 1 302 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 303 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L44
.L42:
	.loc 1 305 0
	movl	-20(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -12(%ebp)
.L44:
	.loc 1 306 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 307 0
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L41:
.LBE7:
	.loc 1 310 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	.loc 1 252 0
	jmp	.L49
.L27:
.LBE5:
	.loc 1 316 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L49
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L49
.LBB8:
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 323 0
	cmpl	$0, -8(%ebp)
	jne	.L47
	.loc 1 324 0
	leal	__FUNCTION__.12833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$324, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L47:
	.loc 1 325 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L49:
.LBE8:
	.loc 1 390 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	remap_block, .-remap_block
	.type	copy_scope_stmt, @function
copy_scope_stmt:
.LFB17:
	.loc 1 400 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$36, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 409 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_tree_r@PLT
	.loc 1 411 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	remap_block
	.loc 1 415 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	copy_scope_stmt, .-copy_scope_stmt
	.section	.rodata
	.type	__FUNCTION__.12914, @object
	.size	__FUNCTION__.12914, 12
__FUNCTION__.12914:
	.string	"copy_body_r"
	.text
	.type	copy_body_r, @function
copy_body_r:
.LFB18:
	.loc 1 425 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$52, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 430 0
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 431 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-93, %al
	jne	.L53
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L53
.LBB9:
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 460 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$167, (%esp)
	call	build_stmt@PLT
	movl	%eax, -24(%ebp)
	.loc 1 461 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 462 0
	movl	-24(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 473 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L56
	.loc 1 475 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 477 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L59
.L56:
	.loc 1 491 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 450 0
	jmp	.L59
.L53:
.LBE9:
	.loc 1 497 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	180(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	je	.L60
.LBB10:
	.loc 1 502 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remap_decl
	movl	%eax, -20(%ebp)
	.loc 1 503 0
	cmpl	$0, -20(%ebp)
	jne	.L64
	.loc 1 504 0
	leal	__FUNCTION__.12914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$504, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L65:
	.loc 1 506 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L64:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L66
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L66
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L69
.L66:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L69
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L65
.L69:
	.loc 1 507 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L59
.L60:
.LBE10:
	.loc 1 514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L71
	.loc 1 515 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_save_expr@PLT
	jmp	.L59
.L71:
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$121, %al
	jne	.L73
	.loc 1 519 0
	leal	__FUNCTION__.12914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$519, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L73:
	.loc 1 523 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L75
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 524 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_scope_stmt
	.loc 1 523 0
	jmp	.L59
.L75:
	.loc 1 553 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_tree_r@PLT
	.loc 1 557 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L78
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L78
	.loc 1 559 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 24(%edx)
	.loc 1 560 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 32(%eax)
	.loc 1 557 0
	jmp	.L59
.L78:
	.loc 1 562 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$49, %al
	jne	.L59
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L59
	movl	lang_hooks@GOT(%ebx), %eax
	movl	180(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	je	.L59
.LBB11:
	.loc 1 570 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 573 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 574 0
	cmpl	$0, -8(%ebp)
	je	.L59
	.loc 1 576 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 577 0
	jmp	.L85
.L86:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L85:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L87
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L87
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L90
.L87:
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L90
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L86
.L90:
	.loc 1 578 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L92
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L59
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L59
.L92:
	.loc 1 579 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L59:
.LBE11:
	.loc 1 585 0
	movl	$0, %eax
	.loc 1 586 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	copy_body_r, .-copy_body_r
	.type	copy_body, @function
copy_body:
.LFB19:
	.loc 1 594 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$36, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 597 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	116(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 598 0
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	copy_body_r@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree@PLT
	.loc 1 600 0
	movl	-8(%ebp), %eax
	.loc 1 601 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	copy_body, .-copy_body
	.type	initialize_inlined_parameters, @function
initialize_inlined_parameters:
.LFB20:
	.loc 1 618 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$84, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 628 0
	movl	16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 631 0
	movl	$0, -52(%ebp)
	.loc 1 635 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L99
.L100:
.LBB12:
	.loc 1 647 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	204(%eax), %eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L101
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L103
.L101:
	movl	$0, -64(%ebp)
.L103:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	*-68(%ebp)
	movl	%eax, -24(%ebp)
	.loc 1 653 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L104
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L104
	cmpl	$0, -24(%ebp)
	je	.L104
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L104
	.loc 1 658 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L109
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -60(%ebp)
	jmp	.L111
.L109:
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
.L111:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 665 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L112
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L104
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L104
.L112:
	.loc 1 670 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L115
	.loc 1 671 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L117
.L115:
	.loc 1 674 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L117
	.loc 1 675 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
.L117:
	.loc 1 677 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	.loc 1 680 0
	jmp	.L119
.L104:
	.loc 1 685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl_for_inlining@PLT
	movl	%eax, -28(%ebp)
	.loc 1 690 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L120
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L122
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L120
.L122:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L120
	.loc 1 693 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -20(%ebp)
	.loc 1 690 0
	jmp	.L125
.L120:
	.loc 1 695 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L125:
	.loc 1 700 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	.loc 1 706 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 707 0
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 708 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 719 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L126
	.loc 1 721 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 68(%edx)
	jmp	.L128
.L126:
	.loc 1 733 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-17, %eax
	movb	%al, 9(%edx)
	.loc 1 736 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$50, (%esp)
	call	build@PLT
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 742 0
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 743 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
.L128:
	.loc 1 747 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -32(%ebp)
	.loc 1 748 0
	cmpl	$0, -32(%ebp)
	je	.L119
.LBB13:
	.loc 1 752 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$175, (%esp)
	call	build_stmt@PLT
	movl	%eax, -16(%ebp)
	.loc 1 755 0
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 756 0
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
.L119:
.LBE13:
.LBE12:
	.loc 1 636 0
	cmpl	$0, -44(%ebp)
	je	.L130
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L132
.L130:
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
.L132:
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L99:
	.loc 1 635 0
	cmpl	$0, -40(%ebp)
	jne	.L100
	.loc 1 776 0
	jmp	.L134
.L135:
.LBB14:
	.loc 1 779 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 781 0
	cmpl	$0, -8(%ebp)
	je	.L136
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L136
	.loc 1 784 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, -12(%ebp)
	.loc 1 785 0
	movl	-12(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 786 0
	movl	-12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L136:
.LBE14:
	.loc 1 776 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L134:
	cmpl	$0, -44(%ebp)
	jne	.L135
	.loc 1 791 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	.loc 1 796 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	initialize_inlined_parameters, .-initialize_inlined_parameters
	.type	declare_return_variable, @function
declare_return_variable:
.LFB21:
	.loc 1 814 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%esi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$44, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 815 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 816 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 820 0
	movl	$1, -28(%ebp)
	.loc 1 824 0
	cmpl	$0, -20(%ebp)
	je	.L142
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L144
.L142:
	.loc 1 827 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 831 0
	movl	$0, -32(%ebp)
	jmp	.L145
.L144:
	.loc 1 835 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	184(%eax), %edi
	movl	8(%ebp), %ecx
	addl	$20, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	%ecx, 20(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edi
	movl	%eax, -16(%ebp)
	.loc 1 842 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	.loc 1 848 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L146
	.loc 1 849 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L148
.L146:
	.loc 1 851 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L148:
	.loc 1 854 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 858 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L149
	.loc 1 859 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -32(%ebp)
	jmp	.L145
.L149:
	.loc 1 875 0
	movl	$0, -32(%ebp)
.L145:
	movl	-32(%ebp), %eax
	.loc 1 876 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	declare_return_variable, .-declare_return_variable
.globl tree_inlinable_function_p
	.type	tree_inlinable_function_p, @function
tree_inlinable_function_p:
.LFB22:
	.loc 1 883 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$8, %esp
.LCFI33:
	.loc 1 884 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	inlinable_function_p
	.loc 1 885 0
	leave
	ret
.LFE22:
	.size	tree_inlinable_function_p, .-tree_inlinable_function_p
	.type	find_alloca_call_1, @function
find_alloca_call_1:
.LFB23:
	.loc 1 893 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$20, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 894 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	alloca_call_p@PLT
	testb	%al, %al
	je	.L155
	.loc 1 895 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L157
.L155:
	.loc 1 896 0
	movl	$0, -8(%ebp)
.L157:
	movl	-8(%ebp), %eax
	.loc 1 897 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	find_alloca_call_1, .-find_alloca_call_1
	.type	find_alloca_call, @function
find_alloca_call:
.LFB24:
	.loc 1 903 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$20, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 904 0
	movl	$0, 8(%esp)
	leal	find_alloca_call_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree_without_duplicates@PLT
	.loc 1 905 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	find_alloca_call, .-find_alloca_call
	.type	find_builtin_longjmp_call_1, @function
find_builtin_longjmp_call_1:
.LFB25:
	.loc 1 912 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	subl	$20, %esp
.LCFI44:
	.loc 1 913 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 915 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L162
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L162
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L162
	movl	-4(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$12, %al
	jne	.L162
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$304, %eax
	jne	.L162
	.loc 1 921 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L168
.L162:
	.loc 1 923 0
	movl	$0, -20(%ebp)
.L168:
	movl	-20(%ebp), %eax
	.loc 1 924 0
	leave
	ret
.LFE25:
	.size	find_builtin_longjmp_call_1, .-find_builtin_longjmp_call_1
	.type	find_builtin_longjmp_call, @function
find_builtin_longjmp_call:
.LFB26:
	.loc 1 929 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$20, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 930 0
	movl	$0, 8(%esp)
	leal	find_builtin_longjmp_call_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree_without_duplicates@PLT
	.loc 1 931 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	find_builtin_longjmp_call, .-find_builtin_longjmp_call
	.section	.rodata
.LC1:
	.string	"always_inline"
	.text
	.type	inlinable_function_p, @function
inlinable_function_p:
.LFB27:
	.loc 1 941 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$48, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 944 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 948 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L173
	.loc 1 949 0
	movl	$0, -48(%ebp)
	jmp	.L175
.L173:
	.loc 1 952 0
	movl	$0, -40(%ebp)
	.loc 1 957 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L176
	.loc 1 958 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L176:
	.loc 1 961 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	imull	$10, %edx, %ecx
	imull	$0, %eax, %esi
	addl	%esi, %ecx
	movl	$10, %esi
	mull	%esi
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -36(%ebp)
	.loc 1 964 0
	movl	flag_inline_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L178
	.loc 1 972 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L178
	.loc 1 982 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	168(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L181
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jle	.L181
	jmp	.L178
.L181:
	.loc 1 991 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, (%esp)
	call	find_builtin_longjmp_call
	testl	%eax, %eax
	jne	.L178
	.loc 1 997 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	jne	.L185
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, (%esp)
	call	find_alloca_call
	testl	%eax, %eax
	je	.L185
	jmp	.L178
.L185:
	.loc 1 1005 0
	movl	$1, -40(%ebp)
.L178:
	.loc 1 1008 0
	movl	8(%ebp), %ecx
	cmpl	$0, -40(%ebp)
	sete	%al
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	37(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
	.loc 1 1012 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	168(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L188
	cmpl	$0, -40(%ebp)
	je	.L188
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jge	.L188
.LBB15:
	.loc 1 1017 0
	cmpl	$0, 12(%ebp)
	je	.L192
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -44(%ebp)
	jmp	.L194
.L192:
	movl	$0, -44(%ebp)
.L194:
	movl	-44(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1021 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	sall	$7, %eax
	cmpl	-28(%ebp), %eax
	jge	.L195
	.loc 1 1022 0
	movl	$0, -40(%ebp)
	jmp	.L188
.L195:
	.loc 1 1027 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jge	.L188
.LBB16:
	.loc 1 1030 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$36, %eax
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%esi
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1031 0
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L188
	.loc 1 1032 0
	movl	$0, -40(%ebp)
.L188:
.LBE16:
.LBE15:
	.loc 1 1036 0
	cmpl	$0, -40(%ebp)
	je	.L199
	movl	lang_hooks@GOT(%ebx), %eax
	movl	164(%eax), %eax
	leal	8(%ebp), %esi
	movl	%esi, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	.L199
	.loc 1 1037 0
	movl	$0, -40(%ebp)
.L199:
	.loc 1 1041 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	jne	.L202
	.loc 1 1042 0
	movl	$0, -40(%ebp)
.L202:
	.loc 1 1045 0
	cmpl	$0, -40(%ebp)
	je	.L204
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L206
.L204:
	.loc 1 1046 0
	movl	$0, -48(%ebp)
	jmp	.L175
.L206:
	.loc 1 1050 0
	cmpl	$0, 12(%ebp)
	je	.L207
.LBB17:
	.loc 1 1054 0
	movl	$0, -20(%ebp)
	jmp	.L209
.L210:
	.loc 1 1055 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L211
	.loc 1 1056 0
	movl	$0, -48(%ebp)
	jmp	.L175
.L211:
	.loc 1 1054 0
	addl	$1, -20(%ebp)
.L209:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	ja	.L210
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L207
.LBB18:
	.loc 1 1061 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1063 0
	movl	$0, -16(%ebp)
	jmp	.L215
.L216:
	.loc 1 1064 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L217
	.loc 1 1065 0
	movl	$0, -48(%ebp)
	jmp	.L175
.L217:
	.loc 1 1063 0
	addl	$1, -16(%ebp)
.L215:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L216
.L207:
.LBE18:
.LBE17:
	.loc 1 1070 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
.L175:
	movl	-48(%ebp), %eax
	.loc 1 1071 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	inlinable_function_p, .-inlinable_function_p
	.section	.rodata
	.type	__FUNCTION__.13471, @object
	.size	__FUNCTION__.13471, 19
__FUNCTION__.13471:
	.string	"expand_call_inline"
	.align 4
.LC2:
	.string	"inlining failed in call to `%s'"
.LC3:
	.string	"called from here"
	.text
	.type	expand_call_inline, @function
expand_call_inline:
.LFB28:
	.loc 1 1080 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%edi
.LCFI56:
	pushl	%esi
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$92, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1098 0
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1099 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1103 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L221
.LBB19:
	.loc 1 1106 0
	movl	$51, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1109 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1112 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L223
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax)
.L223:
	movl	-60(%ebp), %eax
	movl	20(%eax), %esi
	movl	-60(%ebp), %eax
	movl	20(%eax), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1117 0
	movl	$0, -24(%ebp)
	jmp	.L225
.L226:
	.loc 1 1119 0
	cmpl	$2, -24(%ebp)
	jne	.L227
	.loc 1 1120 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%eax)
.L227:
	.loc 1 1121 0
	movl	-60(%ebp), %eax
	movl	36(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	expand_call_inline@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	.loc 1 1123 0
	cmpl	$2, -24(%ebp)
	jne	.L229
	.loc 1 1124 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%eax)
.L229:
	.loc 1 1117 0
	addl	$1, -24(%ebp)
.L225:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L226
	.loc 1 1128 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1130 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L221:
.LBE19:
	.loc 1 1135 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-108, %al
	jne	.L233
	.loc 1 1138 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1140 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	sarl	$12, %edx
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_srcloc@PLT
	.loc 1 1141 0
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	movl	-56(%ebp), %edx
	addl	$20, %edx
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	expand_call_inline@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	.loc 1 1144 0
	call	pop_srcloc@PLT
	.loc 1 1146 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L233:
	.loc 1 1149 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L235
	.loc 1 1153 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L235:
	.loc 1 1156 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	je	.L237
	.loc 1 1157 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L237:
	.loc 1 1161 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1162 0
	cmpl	$0, -36(%ebp)
	jne	.L239
	.loc 1 1163 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L239:
	.loc 1 1172 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L241
	movl	-36(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L241
	movl	-36(%ebp), %eax
	movl	88(%eax), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L241
	.loc 1 1175 0
	movl	-36(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
.L241:
	.loc 1 1179 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	inlinable_function_p
	testl	%eax, %eax
	jne	.L245
	.loc 1 1181 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L247
	movl	-36(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L247
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L247
	movl	-36(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L247
	.loc 1 1184 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1185 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L247:
	.loc 1 1187 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L245:
	.loc 1 1190 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	196(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L252
	.loc 1 1191 0
	movl	$0, -88(%ebp)
	jmp	.L232
.L252:
	.loc 1 1198 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_srcloc@PLT
	.loc 1 1206 0
	movl	$157, (%esp)
	call	make_node@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$173, (%esp)
	call	build1@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1208 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1209 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1221 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1222 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	splay_tree_compare_pointers@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1227 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_inlined_parameters
	movl	%eax, -68(%ebp)
	.loc 1 1232 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_calls_inline
	.loc 1 1234 0
	movl	-68(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1254 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L254
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax)
.L254:
	movl	-60(%ebp), %eax
	movl	(%eax), %esi
	movl	-60(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1258 0
	movl	-36(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	jne	.L256
.LBB20:
	.loc 1 1262 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L258
.L259:
	.loc 1 1263 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	cmpl	-36(%ebp), %eax
	je	.L260
	.loc 1 1262 0
	subl	$1, -16(%ebp)
.L258:
	cmpl	$0, -16(%ebp)
	jns	.L259
.L260:
	.loc 1 1265 0
	cmpl	$0, -16(%ebp)
	jns	.L256
	.loc 1 1266 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L263
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 24(%eax)
.L263:
	movl	-60(%ebp), %eax
	movl	24(%eax), %esi
	movl	-60(%ebp), %eax
	movl	24(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L256:
.LBE20:
	.loc 1 1271 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$32, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1272 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 1274 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L265
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$5, %al
	je	.L267
.L265:
	.loc 1 1276 0
	leal	__FUNCTION__.13471@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1276, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L267:
	.loc 1 1282 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$170, (%esp)
	call	build_stmt@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1283 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1284 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 1285 0
	movl	-36(%ebp), %eax
	movl	60(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_block
	.loc 1 1286 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1287 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1291 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L268
	.loc 1 1292 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L270
	movl	-36(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L272
.L270:
	movl	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
.L272:
	movl	-80(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 32(%edx)
.L268:
	.loc 1 1295 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	declare_return_variable
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1315 0
	movl	-48(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1316 0
	jmp	.L273
.L274:
	.loc 1 1317 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L273:
	.loc 1 1316 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L274
	.loc 1 1318 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_body
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1336 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$168, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1351 0
	movl	-64(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1354 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$170, (%esp)
	call	build_stmt@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1355 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 1356 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_block
	.loc 1 1357 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1375 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
	.loc 1 1376 0
	movl	-60(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1379 0
	movl	-56(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	movl	-52(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
	.loc 1 1385 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1386 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_expr_wfl@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1393 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 1395 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1397 0
	call	pop_srcloc@PLT
	.loc 1 1402 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1405 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	40(%eax), %esi
	movl	44(%eax), %edi
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	.loc 1 1407 0
	movl	-60(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	leal	(%ecx,%eax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1410 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_calls_inline
	.loc 1 1411 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1415 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L276
	.loc 1 1416 0
	movl	-60(%ebp), %eax
	movl	$0, 28(%eax)
.L276:
	.loc 1 1419 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1421 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	200(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1424 0
	movl	$0, -88(%ebp)
.L232:
	movl	-88(%ebp), %eax
	.loc 1 1425 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	expand_call_inline, .-expand_call_inline
	.type	expand_calls_inline, @function
expand_calls_inline:
.LFB29:
	.loc 1 1433 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$20, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1440 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	expand_call_inline@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree@PLT
	.loc 1 1441 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	expand_calls_inline, .-expand_calls_inline
	.section	.rodata
.LC4:
	.string	"fns"
.LC5:
	.string	"target_exprs"
.LC6:
	.string	"inlined_fns"
	.text
.globl optimize_inline_calls
	.type	optimize_inline_calls, @function
optimize_inline_calls:
.LFB30:
	.loc 1 1448 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%edi
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$76, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1453 0
	leal	-60(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 1456 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1457 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L282
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -60(%ebp)
.L282:
	movl	-60(%ebp), %esi
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1459 0
	movl	$0, -20(%ebp)
	.loc 1 1460 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L284
	.loc 1 1462 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L286
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -60(%ebp)
.L286:
	movl	-60(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	4(%esi), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%esi)
	.loc 1 1463 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L284:
	.loc 1 1466 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 1470 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1473 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1477 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1481 0
	movl	htab_eq_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$37, (%esp)
	call	htab_create@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1483 0
	movl	8(%ebp), %edx
	addl	$116, %edx
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_calls_inline
	.loc 1 1486 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 1487 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L292
.LBB21:
	.loc 1 1489 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1491 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L290
	.loc 1 1492 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	-36(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L290:
	.loc 1 1494 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 120(%edx)
.L292:
.LBE21:
	.loc 1 1496 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	optimize_inline_calls, .-optimize_inline_calls
.globl clone_body
	.type	clone_body, @function
clone_body:
.LFB31:
	.loc 1 1506 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%edi
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$60, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1513 0
	leal	-52(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 1514 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$2, (%esp)
	call	varray_init@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1515 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L294
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -52(%ebp)
.L294:
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1516 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L296
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -52(%ebp)
.L296:
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1517 0
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1521 0
	movb	$1, -20(%ebp)
	.loc 1 1524 0
	movl	8(%ebp), %eax
	movl	116(%eax), %esi
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_body
	movl	%eax, (%esi)
	.loc 1 1525 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	clone_body, .-clone_body
	.section	.rodata
	.type	__FUNCTION__.13863, @object
	.size	__FUNCTION__.13863, 10
__FUNCTION__.13863:
	.string	"walk_tree"
	.text
.globl walk_tree
	.type	walk_tree, @function
walk_tree:
.LFB32:
	.loc 1 1540 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$84, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1541 0
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L408
.L300:
.L408:
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L301
	.loc 1 1566 0
	movl	$0, -56(%ebp)
	jmp	.L303
.L301:
	.loc 1 1568 0
	cmpl	$0, -36(%ebp)
	je	.L304
.LBB22:
	.loc 1 1574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1575 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L306
	.loc 1 1576 0
	movl	$0, -56(%ebp)
	jmp	.L303
.L306:
	.loc 1 1577 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
.L304:
.LBE22:
	.loc 1 1581 0
	movl	$1, -40(%ebp)
	.loc 1 1582 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	.loc 1 1585 0
	cmpl	$0, -28(%ebp)
	je	.L308
	.loc 1 1586 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L308:
	.loc 1 1588 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1593 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L310
	.loc 1 1595 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	jne	.L312
	cmpl	$3, -32(%ebp)
	je	.L312
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L315
.L312:
	.loc 1 1598 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L315:
	.loc 1 1600 0
	movl	$0, -56(%ebp)
	jmp	.L303
.L310:
	.loc 1 1604 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L316
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L316
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L316
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	je	.L316
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$114, %al
	je	.L316
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$115, %al
	jne	.L322
.L316:
.LBB23:
	.loc 1 1620 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L323
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L323
	.loc 1 1621 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L323:
	.loc 1 1625 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1628 0
	cmpl	$51, -32(%ebp)
	jne	.L326
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L326
	.loc 1 1630 0
	subl	$1, -16(%ebp)
.L326:
	.loc 1 1633 0
	movl	$0, -20(%ebp)
	jmp	.L329
.L330:
	.loc 1 1634 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L331
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L331:
	.loc 1 1633 0
	addl	$1, -20(%ebp)
.L329:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L330
	.loc 1 1639 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L334
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L334
	cmpl	$117, -32(%ebp)
	jne	.L334
	.loc 1 1641 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L334
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L334:
	.loc 1 1646 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L339
	.loc 1 1648 0
	cmpl	$158, -32(%ebp)
	jne	.L341
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L341
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L341
	.loc 1 1657 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	leal	68(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L345
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L345:
	.loc 1 1658 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	leal	28(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L347
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L347:
	.loc 1 1659 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	leal	48(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L341
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L341:
	.loc 1 1663 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L339:
	.loc 1 1668 0
	movl	$0, -56(%ebp)
	jmp	.L303
.L322:
.LBE23:
	.loc 1 1670 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$100, %al
	jne	.L350
	.loc 1 1672 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L350:
	.loc 1 1674 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$116, %al
	jne	.L352
	.loc 1 1676 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L354
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L354:
	.loc 1 1677 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L356
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L356:
	.loc 1 1679 0
	cmpl	$14, -32(%ebp)
	je	.L358
	cmpl	$16, -32(%ebp)
	je	.L358
	cmpl	$19, -32(%ebp)
	jne	.L361
.L358:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	testb	%al, %al
	je	.L361
	.loc 1 1682 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L361
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L361:
	.loc 1 1683 0
	cmpl	$19, -32(%ebp)
	jne	.L352
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L352
	.loc 1 1685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	leal	64(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L352
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L352:
	.loc 1 1691 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	160(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 1693 0
	cmpl	$0, -28(%ebp)
	jne	.L367
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L369
.L367:
	.loc 1 1694 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L369:
	.loc 1 1698 0
	cmpl	$47, -32(%ebp)
	ja	.L370
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L382@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L382:
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L370@GOTOFF
	.long	.L372@GOTOFF
	.long	.L373@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L374@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L375@GOTOFF
	.long	.L376@GOTOFF
	.long	.L375@GOTOFF
	.long	.L377@GOTOFF
	.long	.L370@GOTOFF
	.long	.L378@GOTOFF
	.long	.L370@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L370@GOTOFF
	.long	.L379@GOTOFF
	.long	.L370@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L380@GOTOFF
	.long	.L383@GOTOFF
	.long	.L383@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L370@GOTOFF
	.long	.L381@GOTOFF
	.text
.L375:
	.loc 1 1722 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L372:
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L384
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L384:
	.loc 1 1727 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L373:
.LBB24:
	.loc 1 1732 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1734 0
	cmpl	$0, -12(%ebp)
	je	.L383
	.loc 1 1738 0
	jmp	.L387
.L388:
	.loc 1 1739 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L387
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L387:
	.loc 1 1738 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L388
	.loc 1 1742 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L380:
.LBE24:
	.loc 1 1746 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L391
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L391:
	.loc 1 1747 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L381:
	.loc 1 1750 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L377:
	.loc 1 1753 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	64(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L379
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L379:
	.loc 1 1757 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L394
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L394:
.LBB25:
	.loc 1 1759 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1762 0
	jmp	.L396
.L397:
	.loc 1 1763 0
	movl	-8(%ebp), %edx
	addl	$20, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L398
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L398:
	.loc 1 1762 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L396:
	cmpl	$0, -8(%ebp)
	jne	.L397
	.loc 1 1765 0
	jmp	.L383
.L378:
.LBE25:
	.loc 1 1768 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L401
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L401:
	.loc 1 1769 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L374:
	.loc 1 1772 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	60(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L403
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L403:
	.loc 1 1773 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$64, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L376:
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L405
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L303
.L405:
	.loc 1 1777 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$64, %eax
	movl	%eax, 8(%ebp)
	jmp	.L300
.L370:
	.loc 1 1788 0
	leal	__FUNCTION__.13863@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1788, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L383:
	.loc 1 1792 0
	movl	$0, -56(%ebp)
.L303:
	movl	-56(%ebp), %eax
	.loc 1 1796 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	walk_tree, .-walk_tree
.globl walk_tree_without_duplicates
	.type	walk_tree_without_duplicates, @function
walk_tree_without_duplicates:
.LFB33:
	.loc 1 1806 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1810 0
	movl	htab_eq_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$37, (%esp)
	call	htab_create@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1811 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1812 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 1813 0
	movl	-12(%ebp), %eax
	.loc 1 1814 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	walk_tree_without_duplicates, .-walk_tree_without_duplicates
.globl copy_tree_r
	.type	copy_tree_r, @function
copy_tree_r:
.LFB34:
	.loc 1 1823 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$20, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1824 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1827 0
	movl	-12(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$114, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L412
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$115, %al
	je	.L412
	cmpl	$3, -12(%ebp)
	je	.L412
	cmpl	$4, -12(%ebp)
	je	.L412
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L422
.L412:
.LBB26:
	.loc 1 1837 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1840 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1844 0
	cmpl	$36, -12(%ebp)
	je	.L423
	cmpl	$3, -12(%ebp)
	je	.L423
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L423
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L427
.L423:
	.loc 1 1848 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L427:
	.loc 1 1852 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L430
	.loc 1 1853 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 20(%eax)
	.loc 1 1827 0
	jmp	.L430
.L422:
.LBE26:
	.loc 1 1859 0
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$116, %al
	jne	.L430
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L430
	.loc 1 1861 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L430:
	.loc 1 1863 0
	movl	$0, %eax
	.loc 1 1864 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	copy_tree_r, .-copy_tree_r
.globl remap_save_expr
	.type	remap_save_expr, @function
remap_save_expr:
.LFB35:
	.loc 1 1877 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$36, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1878 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1882 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1885 0
	cmpl	$0, -12(%ebp)
	jne	.L435
.LBB27:
	.loc 1 1887 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1891 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1893 0
	movl	-8(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	$0, (%eax)
	.loc 1 1895 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1899 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	jmp	.L437
.L435:
.LBE27:
	.loc 1 1905 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L437:
	.loc 1 1908 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1909 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	remap_save_expr, .-remap_save_expr
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
	.long	.LCFI4-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI6
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
	.long	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
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
	.long	.LCFI13-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI14
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
	.long	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
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
	.long	.LCFI21-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI25-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI26
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI31-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI45-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI49-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI50
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
	.long	.LCFI54-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI55
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.byte	0x4
	.long	.LCFI63-.LCFI61
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
	.long	.LCFI64-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI65
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI70-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI71
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI76-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
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
	.long	.LCFI80-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
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
	.long	.LCFI84-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
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
	.long	.LCFI88-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/omp_types.h"
	.file 9 "../../../kg++fe/gnu/varray.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "../../../include/gnu/splay-tree.h"
	.file 12 "../../../include/gnu/hashtab.h"
	.file 13 "../../../kg++fe/gnu/input.h"
	.file 14 "../../../kg++fe/gnu/flags.h"
	.file 15 "../../../kg++fe/gnu/params.h"
	.file 16 "../../../kg++fe/gnu/langhooks.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/libio.h"
	.file 19 "/usr/include/bits/types.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI26-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI71-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x76bf
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/tree-inline.c"
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
	.long	0x1a1
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x477b
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
	.long	0x746
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x51d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ae
	.uleb128 0x3
	.byte	0x4
	.long	0x1b4
	.uleb128 0x4
	.long	0x1e9
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x51e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f5
	.uleb128 0x3
	.byte	0x4
	.long	0x1fb
	.uleb128 0x7
	.long	0x2d5
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x304e
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x336d
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x33b5
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x34d8
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3416
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3483
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x355e
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x3c1e
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x37c1
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3595
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x35da
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x362b
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3677
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x45ed
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0xa
	.long	0x2e0
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xa
	.byte	0xd6
	.long	0x2ef
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x13
	.byte	0x3b
	.long	0x363
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x13
	.byte	0x90
	.long	0x3ad
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x13
	.byte	0x91
	.long	0x38e
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2e0
	.uleb128 0x2
	.string	"FILE"
	.byte	0x11
	.byte	0x2e
	.long	0x3de
	.uleb128 0xe
	.long	0x659
	.long	.LASF2
	.byte	0x94
	.byte	0x11
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0x12
	.value	0x10c
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0x12
	.value	0x111
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0x12
	.value	0x112
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0x12
	.value	0x113
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0x12
	.value	0x114
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0x12
	.value	0x115
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0x12
	.value	0x116
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0x12
	.value	0x117
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0x12
	.value	0x118
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0x12
	.value	0x11a
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0x12
	.value	0x11b
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0x12
	.value	0x11c
	.long	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0x12
	.value	0x11e
	.long	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0x12
	.value	0x120
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0x12
	.value	0x122
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0x12
	.value	0x126
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0x12
	.value	0x128
	.long	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0x12
	.value	0x12c
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0x12
	.value	0x12d
	.long	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0x12
	.value	0x12e
	.long	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0x12
	.value	0x132
	.long	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0x12
	.value	0x13b
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0x12
	.value	0x144
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0x12
	.value	0x145
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0x12
	.value	0x146
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0x12
	.value	0x147
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0x12
	.value	0x148
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0x12
	.value	0x14a
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0x12
	.value	0x14c
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65f
	.uleb128 0xa
	.long	0x30b
	.uleb128 0x3
	.byte	0x4
	.long	0x3ca
	.uleb128 0x3
	.byte	0x4
	.long	0x670
	.uleb128 0x10
	.long	0x67c
	.byte	0x1
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0x12
	.byte	0xb0
	.uleb128 0x4
	.long	0x6cd
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x12
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x12
	.byte	0xb7
	.long	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x12
	.byte	0xb8
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x12
	.byte	0xbc
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68a
	.uleb128 0x3
	.byte	0x4
	.long	0x3de
	.uleb128 0x13
	.long	0x6e9
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67c
	.uleb128 0x13
	.long	0x6ff
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x27
	.byte	0x0
	.uleb128 0xa
	.long	0x2e8
	.uleb128 0x3
	.byte	0x4
	.long	0x2e8
	.uleb128 0x3
	.byte	0x4
	.long	0x710
	.uleb128 0x15
	.long	0x725
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x725
	.uleb128 0x11
	.long	0x725
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72b
	.uleb128 0x16
	.uleb128 0x3
	.byte	0x4
	.long	0x732
	.uleb128 0x10
	.long	0x73e
	.byte	0x1
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x73e
	.uleb128 0x18
	.long	0x98f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x19
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x19
	.string	"BImode"
	.sleb128 1
	.uleb128 0x19
	.string	"QImode"
	.sleb128 2
	.uleb128 0x19
	.string	"HImode"
	.sleb128 3
	.uleb128 0x19
	.string	"SImode"
	.sleb128 4
	.uleb128 0x19
	.string	"DImode"
	.sleb128 5
	.uleb128 0x19
	.string	"TImode"
	.sleb128 6
	.uleb128 0x19
	.string	"OImode"
	.sleb128 7
	.uleb128 0x19
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x19
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x19
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x19
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x19
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x19
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x19
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x19
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x19
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x19
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x19
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x19
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x19
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x19
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x19
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x19
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x19
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x19
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x19
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x19
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x19
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x19
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x19
	.string	"COImode"
	.sleb128 30
	.uleb128 0x19
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x19
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x19
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x19
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x19
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x19
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x19
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x19
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x19
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x19
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x19
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x19
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x19
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x19
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x19
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x19
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x19
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x19
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x19
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x19
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x19
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x19
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x19
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x19
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0x9c1
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x98f
	.uleb128 0x18
	.long	0x12f5
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x19
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x19
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x19
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x19
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x19
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x19
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x19
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x19
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x19
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x19
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x19
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x19
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x19
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x19
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x19
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x19
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x19
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x19
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x19
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x19
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x19
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x19
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x19
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x19
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x19
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x19
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x19
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x19
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x19
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x19
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x19
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x19
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x19
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x19
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x19
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x19
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x19
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x19
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x19
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x19
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x19
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x19
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x19
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x19
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x19
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x19
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x19
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x19
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x19
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x19
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x19
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x19
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x19
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x19
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x19
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x19
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x19
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x19
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x19
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x19
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x19
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x19
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x19
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x19
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x19
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x19
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x19
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x19
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x19
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x19
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x19
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x19
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x19
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x19
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x19
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x19
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x19
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x19
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x19
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x19
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x19
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x19
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x19
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x19
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x19
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x19
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x19
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x19
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x19
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x19
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x19
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x19
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x19
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x19
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x19
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x19
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x19
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x19
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x19
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x19
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x19
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x19
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x19
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x19
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x19
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x19
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x19
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x19
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x19
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x19
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x19
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x19
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x19
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x19
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x19
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x19
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x19
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x19
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x19
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x19
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x19
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x19
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x19
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x19
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x19
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x19
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x19
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x19
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x19
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x19
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x19
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x19
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x19
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x19
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x19
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x19
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x19
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x19
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x19
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x19
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x19
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x19
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x19
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x19
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x19
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x19
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x19
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x19
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x19
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x2ef
	.uleb128 0x4
	.long	0x1345
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x134f
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x13a4
	.long	.LASF3
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x19
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x18
	.long	0x304e
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x19
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x19
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x19
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x19
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x19
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x19
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x19
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x19
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x19
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x19
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x19
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x19
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x19
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x19
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x19
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x19
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x19
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x19
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x19
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x19
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x19
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x19
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x19
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x19
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x19
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x19
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x19
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x19
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x19
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x19
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x19
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x19
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x19
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x19
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x19
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x19
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x19
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x19
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x19
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x19
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x19
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x19
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x19
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x19
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x19
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x19
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x19
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x19
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x19
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x19
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x19
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x19
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x19
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x19
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x19
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x19
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x19
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x19
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x19
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x19
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x19
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x19
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x19
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x19
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x19
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x19
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x19
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x19
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x19
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x19
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x19
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x19
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x19
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x19
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x19
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x19
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x19
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x19
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x19
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x19
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x19
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x19
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x19
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x19
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x19
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x19
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x19
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x19
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x19
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x19
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x19
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x19
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x19
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x19
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x19
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x19
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x19
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x19
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x19
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x19
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x19
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x19
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x19
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x19
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x19
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x19
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x19
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x19
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x19
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x19
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x19
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x19
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x19
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x19
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x19
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x19
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x19
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x19
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x19
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x19
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x19
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x19
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x19
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x19
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x19
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x19
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x19
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x19
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x19
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x19
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x19
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x19
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x19
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x19
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x19
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x19
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x19
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x19
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x19
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x19
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x19
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x19
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x19
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x19
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x19
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x19
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x19
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x19
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x19
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x19
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x19
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x19
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x19
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x19
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x19
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x19
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x19
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x19
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x19
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x19
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x19
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x19
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x19
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x19
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x19
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x19
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x19
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x19
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x19
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x19
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x19
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x19
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x19
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x19
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x19
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x19
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x19
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x19
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x19
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x19
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x19
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x19
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x19
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x19
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x19
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x19
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x19
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x19
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x19
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x19
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x19
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x19
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x19
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x19
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x19
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x19
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x19
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x19
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x19
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x19
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x19
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x19
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x19
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x19
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x19
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x19
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x19
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x19
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x19
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x19
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x19
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3331
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x9d3
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x3
	.byte	0xa8
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.byte	0xa9
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.byte	0xaa
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.byte	0xab
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.byte	0xac
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.byte	0xad
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.byte	0xae
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.byte	0xb0
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x336d
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xf
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x33b5
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3331
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3403
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3410
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3403
	.uleb128 0x1d
	.long	0x347d
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x347d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1345
	.uleb128 0x1d
	.long	0x34d8
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x3520
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x355e
	.long	.LASF12
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x659
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x3595
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x3520
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1d
	.long	0x35da
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.value	0x383
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x361b
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x361b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x362b
	.long	0x1e9
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x3677
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x361b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3767
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.value	0x40e
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2ef
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x414
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x37ae
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e8
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x3cc
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x37bb
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x37ae
	.uleb128 0x1d
	.long	0x3b0f
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x3
	.value	0x555
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x3
	.value	0x556
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2ef
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x746
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x562
	.long	0x2ef
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF4
	.byte	0x3
	.value	0x564
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x3
	.value	0x565
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x3
	.value	0x566
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x567
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x568
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x569
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x56a
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF19
	.byte	0x3
	.value	0x56b
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x3767
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0x576
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x3
	.value	0x57f
	.long	0x3b1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1306
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3b0f
	.uleb128 0x1d
	.long	0x3b66
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1f
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2ef
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2ef
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3b9b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x13a4
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x363
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3b21
	.byte	0x0
	.uleb128 0x21
	.long	0x3bda
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x3be0
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0xa0
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e9
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e8
	.byte	0x0
	.uleb128 0x22
	.long	.LASF21
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3bda
	.uleb128 0x23
	.long	0x3c1e
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x347d
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x12f5
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2ef
	.byte	0x0
	.uleb128 0x1d
	.long	0x435d
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x9c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x746
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.value	0x7d3
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF3
	.byte	0x3
	.value	0x7ed
	.long	0x1354
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x7f0
	.long	0x2ef
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF19
	.byte	0x3
	.value	0x7f2
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF4
	.byte	0x3
	.value	0x7fa
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x3
	.value	0x7fb
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x3
	.value	0x7fc
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x3
	.value	0x7fd
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.value	0x7fe
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.value	0x7ff
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.value	0x800
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.value	0x801
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3b66
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x3
	.value	0x81d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0x81e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x3
	.value	0x821
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x82b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x3
	.value	0x82e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x3
	.value	0x843
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x363
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x3
	.value	0x848
	.long	0x4369
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2ef
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x3be6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1306
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x435d
	.uleb128 0x18
	.long	0x45ed
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uleb128 0x19
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x19
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x19
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x19
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x19
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x19
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x19
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x19
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x19
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x19
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x19
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x19
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x19
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x19
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x19
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x19
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x19
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x19
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x19
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x19
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x19
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x19
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x19
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x19
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x19
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x19
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x19
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x19
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x19
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x19
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x19
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x19
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x19
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x19
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x19
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x1d
	.long	0x463c
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x304e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x436f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x46f8
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0xa20
	.long	0x46f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x46fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x46fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x46fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x473b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d5
	.uleb128 0xa
	.long	0x4702
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	0x472f
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x472f
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x4735
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e9
	.uleb128 0x3
	.byte	0x4
	.long	0x4702
	.uleb128 0xa
	.long	0x4740
	.uleb128 0x3
	.byte	0x4
	.long	0x470b
	.uleb128 0x24
	.string	"walk_tree_fn"
	.byte	0x3
	.value	0xd67
	.long	0x475b
	.uleb128 0x3
	.byte	0x4
	.long	0x4761
	.uleb128 0x15
	.long	0x477b
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x472f
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x18
	.long	0x4f4a
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x19
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0x19
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x19
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x19
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x19
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x19
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x19
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x19
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x19
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x19
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x19
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x19
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x19
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x19
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x19
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x19
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x19
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x19
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x19
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x19
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x19
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x19
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x19
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x19
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x19
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x19
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x19
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x19
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x19
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x19
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x19
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x19
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x19
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x19
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x19
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x19
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x19
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x19
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x19
	.string	"INSN"
	.sleb128 42
	.uleb128 0x19
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x19
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x19
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x19
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x19
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x19
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x19
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x19
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x19
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x19
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x19
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x19
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x19
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x19
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x19
	.string	"SET"
	.sleb128 57
	.uleb128 0x19
	.string	"USE"
	.sleb128 58
	.uleb128 0x19
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x19
	.string	"CALL"
	.sleb128 60
	.uleb128 0x19
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x19
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x19
	.string	"RESX"
	.sleb128 63
	.uleb128 0x19
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x19
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x19
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x19
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x19
	.string	"CONST"
	.sleb128 68
	.uleb128 0x19
	.string	"PC"
	.sleb128 69
	.uleb128 0x19
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x19
	.string	"REG"
	.sleb128 71
	.uleb128 0x19
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x19
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x19
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x19
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x19
	.string	"MEM"
	.sleb128 76
	.uleb128 0x19
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x19
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x19
	.string	"CC0"
	.sleb128 79
	.uleb128 0x19
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x19
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x19
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x19
	.string	"COND"
	.sleb128 83
	.uleb128 0x19
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x19
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x19
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x19
	.string	"NEG"
	.sleb128 87
	.uleb128 0x19
	.string	"MULT"
	.sleb128 88
	.uleb128 0x19
	.string	"DIV"
	.sleb128 89
	.uleb128 0x19
	.string	"MOD"
	.sleb128 90
	.uleb128 0x19
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x19
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x19
	.string	"AND"
	.sleb128 93
	.uleb128 0x19
	.string	"IOR"
	.sleb128 94
	.uleb128 0x19
	.string	"XOR"
	.sleb128 95
	.uleb128 0x19
	.string	"NOT"
	.sleb128 96
	.uleb128 0x19
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x19
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x19
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x19
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x19
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x19
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x19
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x19
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x19
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x19
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x19
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x19
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x19
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x19
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x19
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x19
	.string	"NE"
	.sleb128 112
	.uleb128 0x19
	.string	"EQ"
	.sleb128 113
	.uleb128 0x19
	.string	"GE"
	.sleb128 114
	.uleb128 0x19
	.string	"GT"
	.sleb128 115
	.uleb128 0x19
	.string	"LE"
	.sleb128 116
	.uleb128 0x19
	.string	"LT"
	.sleb128 117
	.uleb128 0x19
	.string	"GEU"
	.sleb128 118
	.uleb128 0x19
	.string	"GTU"
	.sleb128 119
	.uleb128 0x19
	.string	"LEU"
	.sleb128 120
	.uleb128 0x19
	.string	"LTU"
	.sleb128 121
	.uleb128 0x19
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x19
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x19
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x19
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x19
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x19
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x19
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x19
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x19
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x19
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x19
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x19
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x19
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x19
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x19
	.string	"FIX"
	.sleb128 136
	.uleb128 0x19
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x19
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x19
	.string	"ABS"
	.sleb128 139
	.uleb128 0x19
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x19
	.string	"FFS"
	.sleb128 141
	.uleb128 0x19
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x19
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x19
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x19
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x19
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x19
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x19
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x19
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x19
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x19
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x19
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x19
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x19
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x19
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x19
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x19
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x19
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x19
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x19
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x19
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x19
	.string	"PHI"
	.sleb128 162
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x25
	.long	0x5024
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x2ef
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
	.long	0x4f4a
	.uleb128 0xe
	.long	0x509b
	.long	.LASF24
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF24
	.byte	0x4
	.byte	0x68
	.long	0x503f
	.uleb128 0x7
	.long	0x5178
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x363
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e8
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x2ef
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d5
	.uleb128 0x27
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0xa0
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x1a1
	.uleb128 0x27
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x746
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x5024
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x518c
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x51a4
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e9
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x51bc
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x51c2
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5178
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5192
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x51aa
	.uleb128 0x3
	.byte	0x4
	.long	0x509b
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x50a6
	.uleb128 0x13
	.long	0x51e7
	.long	0x51c8
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x51f7
	.long	0xa0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x5232
	.long	.LASF25
	.byte	0xc
	.byte	0xf
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0xf
	.byte	0x30
	.long	0x46f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x28
	.long	.LASF13
	.byte	0xf
	.byte	0x32
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0xf
	.byte	0x34
	.long	0x46f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x26
	.long	.LASF25
	.byte	0xf
	.byte	0x35
	.long	0x51f7
	.uleb128 0x4
	.long	0x5273
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x9
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x9
	.byte	0x36
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x540e
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x9
	.byte	0x3c
	.uleb128 0x19
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x19
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x19
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x19
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x19
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x19
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x19
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x19
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x19
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x19
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x19
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x19
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x19
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x19
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x19
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x19
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x19
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x19
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x19
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x19
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x19
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x550a
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x9
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0x9
	.byte	0x56
	.long	0x6d9
	.uleb128 0x27
	.string	"uc"
	.byte	0x9
	.byte	0x58
	.long	0x550a
	.uleb128 0x27
	.string	"s"
	.byte	0x9
	.byte	0x5a
	.long	0x551a
	.uleb128 0x27
	.string	"us"
	.byte	0x9
	.byte	0x5c
	.long	0x552a
	.uleb128 0x27
	.string	"i"
	.byte	0x9
	.byte	0x5e
	.long	0x553a
	.uleb128 0x27
	.string	"u"
	.byte	0x9
	.byte	0x60
	.long	0x554a
	.uleb128 0x27
	.string	"l"
	.byte	0x9
	.byte	0x62
	.long	0x555a
	.uleb128 0x27
	.string	"ul"
	.byte	0x9
	.byte	0x64
	.long	0x556a
	.uleb128 0x27
	.string	"hint"
	.byte	0x9
	.byte	0x66
	.long	0x557a
	.uleb128 0x27
	.string	"uhint"
	.byte	0x9
	.byte	0x68
	.long	0x558a
	.uleb128 0x27
	.string	"generic"
	.byte	0x9
	.byte	0x6a
	.long	0x559a
	.uleb128 0x27
	.string	"cptr"
	.byte	0x9
	.byte	0x6c
	.long	0x55aa
	.uleb128 0x27
	.string	"rtx"
	.byte	0x9
	.byte	0x6e
	.long	0x55ba
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x9
	.byte	0x70
	.long	0x55ca
	.uleb128 0x27
	.string	"tree"
	.byte	0x9
	.byte	0x72
	.long	0x55da
	.uleb128 0x27
	.string	"bitmap"
	.byte	0x9
	.byte	0x74
	.long	0x55ea
	.uleb128 0x27
	.string	"reg"
	.byte	0x9
	.byte	0x76
	.long	0x55fa
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0x9
	.byte	0x78
	.long	0x561f
	.uleb128 0x27
	.string	"bb"
	.byte	0x9
	.byte	0x7a
	.long	0x562f
	.uleb128 0x27
	.string	"te"
	.byte	0x9
	.byte	0x7c
	.long	0x563f
	.byte	0x0
	.uleb128 0x13
	.long	0x551a
	.long	0x30b
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x552a
	.long	0x356
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x553a
	.long	0x31c
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x554a
	.long	0x2e8
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x555a
	.long	0x2ef
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x556a
	.long	0x3ad
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x557a
	.long	0x332
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x558a
	.long	0x363
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x559a
	.long	0x374
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55aa
	.long	0x3ca
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55ba
	.long	0x3cc
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55ca
	.long	0xab
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55da
	.long	0x1ae
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55ea
	.long	0x1f5
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x55fa
	.long	0x51a4
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x560a
	.long	0x5619
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x560a
	.uleb128 0x13
	.long	0x562f
	.long	0x523d
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x563f
	.long	0x51bc
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x564f
	.long	0x565a
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x564f
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x9
	.byte	0x7e
	.long	0x540e
	.uleb128 0x4
	.long	0x56e7
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x9
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x9
	.byte	0x82
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x9
	.byte	0x83
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x9
	.byte	0x85
	.long	0x5273
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0x86
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x28
	.long	.LASF26
	.byte	0x9
	.byte	0x87
	.long	0x5660
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x9
	.byte	0x8a
	.long	0x56fa
	.uleb128 0x3
	.byte	0x4
	.long	0x5673
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0xc
	.byte	0x32
	.long	0x2ef
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0xc
	.byte	0x37
	.long	0x5722
	.uleb128 0x3
	.byte	0x4
	.long	0x5728
	.uleb128 0x15
	.long	0x5738
	.byte	0x1
	.long	0x5700
	.uleb128 0x11
	.long	0x725
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0xc
	.byte	0x3e
	.long	0x70a
	.uleb128 0x2
	.string	"htab_del"
	.byte	0xc
	.byte	0x42
	.long	0x66a
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0xc
	.byte	0x4e
	.long	0x5769
	.uleb128 0x3
	.byte	0x4
	.long	0x576f
	.uleb128 0x15
	.long	0x5784
	.byte	0x1
	.long	0x3ca
	.uleb128 0x11
	.long	0x2fd
	.uleb128 0x11
	.long	0x2fd
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0xc
	.byte	0x51
	.long	0x66a
	.uleb128 0x4
	.long	0x5868
	.string	"htab"
	.byte	0x2c
	.byte	0xc
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0xc
	.byte	0x5b
	.long	0x5711
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0xc
	.byte	0x5e
	.long	0x5738
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0xc
	.byte	0x61
	.long	0x5747
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"entries"
	.byte	0xc
	.byte	0x64
	.long	0x664
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0xc
	.byte	0x67
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_elements"
	.byte	0xc
	.byte	0x6a
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_deleted"
	.byte	0xc
	.byte	0x6d
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"searches"
	.byte	0xc
	.byte	0x71
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"collisions"
	.byte	0xc
	.byte	0x75
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"alloc_f"
	.byte	0xc
	.byte	0x78
	.long	0x5757
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0xc
	.byte	0x79
	.long	0x5784
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0xc
	.byte	0x7c
	.long	0x5876
	.uleb128 0x3
	.byte	0x4
	.long	0x5795
	.uleb128 0x2
	.string	"splay_tree_key"
	.byte	0xb
	.byte	0x2f
	.long	0x332
	.uleb128 0x2
	.string	"splay_tree_value"
	.byte	0xb
	.byte	0x30
	.long	0x332
	.uleb128 0x2
	.string	"splay_tree_node"
	.byte	0xb
	.byte	0x33
	.long	0x58c1
	.uleb128 0x3
	.byte	0x4
	.long	0x58c7
	.uleb128 0x4
	.long	0x591d
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xb
	.byte	0x33
	.uleb128 0x6
	.string	"key"
	.byte	0xb
	.byte	0x54
	.long	0x587c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x28
	.long	.LASF13
	.byte	0xb
	.byte	0x57
	.long	0x5892
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xb
	.byte	0x5a
	.long	0x58aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xb
	.byte	0x5b
	.long	0x58aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xb
	.byte	0x37
	.long	0x593a
	.uleb128 0x3
	.byte	0x4
	.long	0x5940
	.uleb128 0x15
	.long	0x5955
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x587c
	.uleb128 0x11
	.long	0x587c
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xb
	.byte	0x3b
	.long	0x5975
	.uleb128 0x3
	.byte	0x4
	.long	0x597b
	.uleb128 0x10
	.long	0x5987
	.byte	0x1
	.uleb128 0x11
	.long	0x587c
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xb
	.byte	0x3f
	.long	0x59a9
	.uleb128 0x3
	.byte	0x4
	.long	0x59af
	.uleb128 0x10
	.long	0x59bb
	.byte	0x1
	.uleb128 0x11
	.long	0x5892
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xb
	.byte	0x48
	.long	0x59d9
	.uleb128 0x3
	.byte	0x4
	.long	0x59df
	.uleb128 0x15
	.long	0x59f4
	.byte	0x1
	.long	0x3ca
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_deallocate_fn"
	.byte	0xb
	.byte	0x4e
	.long	0x5a14
	.uleb128 0x3
	.byte	0x4
	.long	0x5a1a
	.uleb128 0x10
	.long	0x5a2b
	.byte	0x1
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x4
	.long	0x5acb
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xb
	.byte	0x60
	.uleb128 0x6
	.string	"root"
	.byte	0xb
	.byte	0x62
	.long	0x58aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"comp"
	.byte	0xb
	.byte	0x65
	.long	0x591d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"delete_key"
	.byte	0xb
	.byte	0x68
	.long	0x5955
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"delete_value"
	.byte	0xb
	.byte	0x6b
	.long	0x5987
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"allocate"
	.byte	0xb
	.byte	0x6e
	.long	0x59bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"deallocate"
	.byte	0xb
	.byte	0x6f
	.long	0x59f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"allocate_data"
	.byte	0xb
	.byte	0x70
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree"
	.byte	0xb
	.byte	0x72
	.long	0x5add
	.uleb128 0x3
	.byte	0x4
	.long	0x5a2b
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x10
	.byte	0x1d
	.long	0x5aff
	.uleb128 0x3
	.byte	0x4
	.long	0x5b05
	.uleb128 0x10
	.long	0x5b1b
	.byte	0x1
	.uleb128 0x11
	.long	0x5b1b
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d2
	.uleb128 0x4
	.long	0x5c9d
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x10
	.byte	0x23
	.uleb128 0x28
	.long	.LASF27
	.byte	0x10
	.byte	0x24
	.long	0x5ce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x10
	.byte	0x29
	.long	0x5cfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x10
	.byte	0x2a
	.long	0x5d13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x10
	.byte	0x2b
	.long	0x5d2e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x10
	.byte	0x2d
	.long	0x5d13
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x10
	.byte	0x2e
	.long	0x5d49
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x10
	.byte	0x2f
	.long	0x5d78
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x10
	.byte	0x34
	.long	0x5d13
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x10
	.byte	0x35
	.long	0x5d8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x10
	.byte	0x36
	.long	0x5d13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x10
	.byte	0x37
	.long	0x5da0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x10
	.byte	0x38
	.long	0x5dc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x15
	.long	0x5cc1
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x5cc1
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x5cc7
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x3
	.byte	0x4
	.long	0x5ccd
	.uleb128 0x15
	.long	0x5ce7
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x5cc1
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c9d
	.uleb128 0x15
	.long	0x5cfd
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x5cc1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ced
	.uleb128 0x15
	.long	0x5d13
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d03
	.uleb128 0x15
	.long	0x5d2e
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d19
	.uleb128 0x15
	.long	0x5d49
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d34
	.uleb128 0x15
	.long	0x5d78
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d4f
	.uleb128 0x15
	.long	0x5d8e
	.byte	0x1
	.long	0x4702
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d7e
	.uleb128 0x10
	.long	0x5da0
	.byte	0x1
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d94
	.uleb128 0x15
	.long	0x5dc0
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5da6
	.uleb128 0x4
	.long	0x5e35
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x10
	.byte	0x42
	.long	0x5e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x10
	.byte	0x45
	.long	0x5e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x10
	.byte	0x48
	.long	0x5e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x10
	.byte	0x4b
	.long	0x5e41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x5e41
	.byte	0x1
	.uleb128 0x11
	.long	0x3be0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e35
	.uleb128 0x4
	.long	0x5e92
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x10
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x10
	.byte	0x54
	.long	0x5ea7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x10
	.byte	0x57
	.long	0x5ebd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x5ea7
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e92
	.uleb128 0x15
	.long	0x5ebd
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ead
	.uleb128 0x4
	.long	0x5fb0
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x10
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x10
	.byte	0x60
	.long	0x5fc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x10
	.byte	0x64
	.long	0x5fdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x10
	.byte	0x68
	.long	0x5ff6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x10
	.byte	0x6c
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x10
	.byte	0x70
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x10
	.byte	0x74
	.long	0x6027
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x10
	.byte	0x7a
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x10
	.byte	0x80
	.long	0x603e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x15
	.long	0x5fc0
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x9d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5fb0
	.uleb128 0x15
	.long	0x5fdb
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x746
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5fc6
	.uleb128 0x15
	.long	0x5ff6
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x2ef
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5fe1
	.uleb128 0x15
	.long	0x600c
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ffc
	.uleb128 0x15
	.long	0x6027
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6012
	.uleb128 0x10
	.long	0x603e
	.byte	0x1
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x602d
	.uleb128 0x4
	.long	0x614a
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x10
	.byte	0x86
	.uleb128 0x6
	.string	"pushlevel"
	.byte	0x10
	.byte	0x89
	.long	0x72c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"poplevel"
	.byte	0x10
	.byte	0x90
	.long	0x6164
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x10
	.byte	0x94
	.long	0x6170
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x10
	.byte	0x99
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x10
	.byte	0x9c
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x10
	.byte	0xa2
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x10
	.byte	0xa5
	.long	0x618e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x10
	.byte	0xa9
	.long	0x61a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"final_write_globals"
	.byte	0x10
	.byte	0xad
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"ok_for_sibcall"
	.byte	0x10
	.byte	0xb0
	.long	0x61a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x15
	.long	0x6164
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x614a
	.uleb128 0x29
	.byte	0x1
	.long	0x2e8
	.uleb128 0x3
	.byte	0x4
	.long	0x616a
	.uleb128 0x10
	.long	0x6182
	.byte	0x1
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6176
	.uleb128 0x29
	.byte	0x1
	.long	0x1e9
	.uleb128 0x3
	.byte	0x4
	.long	0x6188
	.uleb128 0x15
	.long	0x61a4
	.byte	0x1
	.long	0x4702
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6194
	.uleb128 0x2a
	.long	0x65dc
	.long	.LASF28
	.value	0x120
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"name"
	.byte	0x10
	.byte	0xb8
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"identifier_size"
	.byte	0x10
	.byte	0xbc
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"init_options"
	.byte	0x10
	.byte	0xc0
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decode_option"
	.byte	0x10
	.byte	0xca
	.long	0x65f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x10
	.byte	0xd6
	.long	0x6603
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x10
	.byte	0xde
	.long	0x6619
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"finish"
	.byte	0x10
	.byte	0xe1
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"parse_file"
	.byte	0x10
	.byte	0xe5
	.long	0x72c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"clear_binding_stack"
	.byte	0x10
	.byte	0xe8
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"get_alias_set"
	.byte	0x10
	.byte	0xec
	.long	0x662f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x10
	.byte	0xf1
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x10
	.byte	0xf5
	.long	0x6654
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"truthvalue_conversion"
	.byte	0x10
	.value	0x102
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"insert_default_attributes"
	.byte	0x10
	.value	0x106
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"safe_from_p"
	.byte	0x10
	.value	0x10f
	.long	0x666f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"finish_incomplete_decl"
	.byte	0x10
	.value	0x113
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"unsafe_for_reeval"
	.byte	0x10
	.value	0x118
	.long	0x5ebd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"mark_addressable"
	.byte	0x10
	.value	0x11d
	.long	0x61a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"staticp"
	.byte	0x10
	.value	0x120
	.long	0x5ebd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"dup_lang_specific_decl"
	.byte	0x10
	.value	0x124
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"unsave_expr_now"
	.byte	0x10
	.value	0x129
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"maybe_build_cleanup"
	.byte	0x10
	.value	0x12d
	.long	0x600c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"set_decl_assembler_name"
	.byte	0x10
	.value	0x134
	.long	0x6182
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"can_use_bit_fields_p"
	.byte	0x10
	.value	0x138
	.long	0x6603
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"honor_readonly"
	.byte	0x10
	.value	0x13b
	.long	0x4702
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"print_statistics"
	.byte	0x10
	.value	0x13f
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"print_xnode"
	.byte	0x10
	.value	0x143
	.long	0x5ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"print_decl"
	.byte	0x10
	.value	0x147
	.long	0x5ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"print_type"
	.byte	0x10
	.value	0x148
	.long	0x5ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"print_identifier"
	.byte	0x10
	.value	0x149
	.long	0x5ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"decl_printable_name"
	.byte	0x10
	.value	0x151
	.long	0x668a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"print_error_function"
	.byte	0x10
	.value	0x154
	.long	0x66bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"expr_size"
	.byte	0x10
	.value	0x15b
	.long	0x600c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"attribute_table"
	.byte	0x10
	.value	0x162
	.long	0x66c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.string	"common_attribute_table"
	.byte	0x10
	.value	0x163
	.long	0x66c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.string	"format_attribute_table"
	.byte	0x10
	.value	0x164
	.long	0x66c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x10
	.value	0x167
	.long	0x5dc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"tree_inlining"
	.byte	0x10
	.value	0x169
	.long	0x5b21
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.string	"tree_dump"
	.byte	0x10
	.value	0x16b
	.long	0x5e47
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xf
	.string	"decls"
	.byte	0x10
	.value	0x16d
	.long	0x6044
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"types"
	.byte	0x10
	.value	0x16f
	.long	0x5ec3
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x15
	.long	0x65f1
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x65f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cc
	.uleb128 0x3
	.byte	0x4
	.long	0x65dc
	.uleb128 0x29
	.byte	0x1
	.long	0x4702
	.uleb128 0x3
	.byte	0x4
	.long	0x65fd
	.uleb128 0x15
	.long	0x6619
	.byte	0x1
	.long	0x2d5
	.uleb128 0x11
	.long	0x2d5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6609
	.uleb128 0x15
	.long	0x662f
	.byte	0x1
	.long	0x363
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x661f
	.uleb128 0x15
	.long	0x6654
	.byte	0x1
	.long	0xa0
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0xa0
	.uleb128 0x11
	.long	0x746
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6635
	.uleb128 0x15
	.long	0x666f
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0xa0
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x665a
	.uleb128 0x15
	.long	0x668a
	.byte	0x1
	.long	0x2d5
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6675
	.uleb128 0x10
	.long	0x66a1
	.byte	0x1
	.uleb128 0x11
	.long	0x66a1
	.uleb128 0x11
	.long	0x2d5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x66a7
	.uleb128 0x1a
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6690
	.uleb128 0x3
	.byte	0x4
	.long	0x66c8
	.uleb128 0xa
	.long	0x463c
	.uleb128 0xe
	.long	0x67af
	.long	.LASF29
	.byte	0x28
	.byte	0x1
	.byte	0x4a
	.uleb128 0x6
	.string	"fns"
	.byte	0x1
	.byte	0x51
	.long	0x56e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"first_inlined_fn"
	.byte	0x1
	.byte	0x54
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ret_label"
	.byte	0x1
	.byte	0x58
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decl_map"
	.byte	0x1
	.byte	0x5b
	.long	0x5acb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"in_target_cleanup_p"
	.byte	0x1
	.byte	0x5e
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"target_exprs"
	.byte	0x1
	.byte	0x60
	.long	0x56e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.byte	0x62
	.long	0x56e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"inlined_stmts"
	.byte	0x1
	.byte	0x65
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"cloning_p"
	.byte	0x1
	.byte	0x6a
	.long	0x4702
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"tree_pruner"
	.byte	0x1
	.byte	0x6d
	.long	0x5868
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x26
	.long	.LASF29
	.byte	0x1
	.byte	0x6e
	.long	0x66cd
	.uleb128 0x2b
	.long	0x6882
	.string	"remap_decl"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x1e9
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"decl"
	.byte	0x1
	.byte	0x90
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"id"
	.byte	0x1
	.byte	0x91
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.byte	0x93
	.long	0x58aa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"fn"
	.byte	0x1
	.byte	0x94
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x6871
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.byte	0xa1
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.string	"members"
	.byte	0x1
	.byte	0xbe
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.byte	0xbf
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2d
	.string	"member"
	.byte	0x1
	.byte	0xc4
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x75a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12747
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67af
	.uleb128 0x31
	.long	0x6998
	.string	"remap_block"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.byte	0xe5
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"decls"
	.byte	0x1
	.byte	0xea
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"id"
	.byte	0x1
	.byte	0xeb
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	0x696c
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2d
	.string	"old_block"
	.byte	0x1
	.byte	0xfe
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"new_block"
	.byte	0x1
	.byte	0xff
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"old_var"
	.byte	0x1
	.value	0x100
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x101
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x694a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"new_var"
	.byte	0x1
	.value	0x10f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"first_block"
	.byte	0x1
	.value	0x12d
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6987
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x13e
	.long	0x58aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x758e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12833
	.byte	0x0
	.uleb128 0x34
	.long	0x69fa
	.string	"copy_scope_stmt"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x18d
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x18e
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x18f
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x191
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x6b0e
	.string	"copy_body_r"
	.byte	0x1
	.value	0x1a9
	.byte	0x1
	.long	0x1e9
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x1a6
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x1a7
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x1a8
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x1aa
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x1ab
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	0x6aa1
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"return_stmt"
	.byte	0x1
	.value	0x1c7
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"goto_stmt"
	.byte	0x1
	.value	0x1c8
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x6ac3
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"new_decl"
	.byte	0x1
	.value	0x1f3
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x6afd
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"decl"
	.byte	0x1
	.value	0x23a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF13
	.byte	0x1
	.value	0x23a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x23b
	.long	0x58aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x7589
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12914
	.byte	0x0
	.uleb128 0x37
	.long	0x6b50
	.string	"copy_body"
	.byte	0x1
	.value	0x252
	.byte	0x1
	.long	0x1e9
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x251
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"body"
	.byte	0x1
	.value	0x253
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x6ca0
	.string	"initialize_inlined_parameters"
	.byte	0x1
	.value	0x26a
	.byte	0x1
	.long	0x1e9
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x264
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"args"
	.byte	0x1
	.value	0x265
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x266
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"init_stmts"
	.byte	0x1
	.value	0x26b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"parms"
	.byte	0x1
	.value	0x26c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"a"
	.byte	0x1
	.value	0x26d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x26e
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	0x6c77
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.long	.LASF32
	.byte	0x1
	.value	0x27f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"cleanup"
	.byte	0x1
	.value	0x280
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"var"
	.byte	0x1
	.value	0x282
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LASF13
	.byte	0x1
	.value	0x283
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"var_sub"
	.byte	0x1
	.value	0x284
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"cleanup_stmt"
	.byte	0x1
	.value	0x2ee
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x38
	.long	.LASF32
	.byte	0x1
	.value	0x30a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF13
	.byte	0x1
	.value	0x30b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x6d37
	.string	"declare_return_variable"
	.byte	0x1
	.value	0x32e
	.byte	0x1
	.long	0x1e9
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x326
	.long	0x6d37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF33
	.byte	0x1
	.value	0x327
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x32f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF22
	.byte	0x1
	.value	0x330
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"var"
	.byte	0x1
	.value	0x332
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"need_return_decl"
	.byte	0x1
	.value	0x334
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x66cd
	.uleb128 0x39
	.long	0x6d80
	.byte	0x1
	.string	"tree_inlinable_function_p"
	.byte	0x1
	.value	0x373
	.byte	0x1
	.long	0x2e8
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x372
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x6dd9
	.string	"find_alloca_call_1"
	.byte	0x1
	.value	0x37d
	.byte	0x1
	.long	0x1e9
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x37a
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x37b
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x37c
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x37
	.long	0x6e13
	.string	"find_alloca_call"
	.byte	0x1
	.value	0x387
	.byte	0x1
	.long	0x1e9
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0x386
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x6e94
	.string	"find_builtin_longjmp_call_1"
	.byte	0x1
	.value	0x390
	.byte	0x1
	.long	0x1e9
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x38d
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x38e
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x38f
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"exp"
	.byte	0x1
	.value	0x391
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"decl"
	.byte	0x1
	.value	0x391
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0x6ed7
	.string	"find_builtin_longjmp_call"
	.byte	0x1
	.value	0x3a1
	.byte	0x1
	.long	0x1e9
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0x3a0
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x6ff0
	.string	"inlinable_function_p"
	.byte	0x1
	.value	0x3ad
	.byte	0x1
	.long	0x2e8
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x3ab
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x3ac
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"inlinable"
	.byte	0x1
	.value	0x3ae
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"currfn_insns"
	.byte	0x1
	.value	0x3af
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"max_inline_insns_single"
	.byte	0x1
	.value	0x3b0
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	0x6fb2
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"sum_insns"
	.byte	0x1
	.value	0x3f8
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"max_curr"
	.byte	0x1
	.value	0x405
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x41c
	.long	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x424
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x425
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7154
	.string	"expand_call_inline"
	.byte	0x1
	.value	0x438
	.byte	0x1
	.long	0x1e9
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x435
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x436
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x437
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x439
	.long	0x6882
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x43a
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"expr"
	.byte	0x1
	.value	0x43b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"stmt"
	.byte	0x1
	.value	0x43c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"chain"
	.byte	0x1
	.value	0x43e
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF31
	.byte	0x1
	.value	0x43f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF33
	.byte	0x1
	.value	0x440
	.long	0x1e9
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x444
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"arg_inits"
	.byte	0x1
	.value	0x445
	.long	0x1e9
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"inlined_body"
	.byte	0x1
	.value	0x446
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"st"
	.byte	0x1
	.value	0x447
	.long	0x5acb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x7128
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x452
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x452
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x7143
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x4ec
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x7574
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13471
	.byte	0x0
	.uleb128 0x34
	.long	0x719a
	.string	"expand_calls_inline"
	.byte	0x1
	.value	0x599
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x597
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x598
	.long	0x6882
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3a
	.long	0x7210
	.byte	0x1
	.string	"optimize_inline_calls"
	.byte	0x1
	.value	0x5a8
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x5a7
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x5a9
	.long	0x67af
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"prev_fn"
	.byte	0x1
	.value	0x5aa
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"ifn"
	.byte	0x1
	.value	0x5d1
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x7272
	.byte	0x1
	.string	"clone_body"
	.byte	0x1
	.value	0x5e2
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x35
	.string	"clone"
	.byte	0x1
	.value	0x5e0
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x5e0
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"arg_map"
	.byte	0x1
	.value	0x5e1
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x5e3
	.long	0x67af
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x39
	.long	0x73ba
	.byte	0x1
	.string	"walk_tree"
	.byte	0x1
	.value	0x604
	.byte	0x1
	.long	0x1e9
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x600
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"func"
	.byte	0x1
	.value	0x601
	.long	0x4746
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x602
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"htab_"
	.byte	0x1
	.value	0x603
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"htab"
	.byte	0x1
	.value	0x605
	.long	0x5868
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x606
	.long	0x9d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF27
	.byte	0x1
	.value	0x607
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF22
	.byte	0x1
	.value	0x608
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.string	"tail_recurse"
	.byte	0x1
	.value	0x63e
	.long	.L300
	.uleb128 0x2e
	.long	0x7345
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x622
	.long	0x664
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x736f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x64f
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x64f
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x738c
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x6c4
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x73a9
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x6df
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x755f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13863
	.byte	0x0
	.uleb128 0x39
	.long	0x743e
	.byte	0x1
	.string	"walk_tree_without_duplicates"
	.byte	0x1
	.value	0x70e
	.byte	0x1
	.long	0x1e9
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x70b
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"func"
	.byte	0x1
	.value	0x70c
	.long	0x4746
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x70d
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF22
	.byte	0x1
	.value	0x70f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"htab"
	.byte	0x1
	.value	0x710
	.long	0x5868
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x74bc
	.byte	0x1
	.string	"copy_tree_r"
	.byte	0x1
	.value	0x71f
	.byte	0x1
	.long	0x1e9
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x71c
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x71d
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x71e
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x720
	.long	0x9d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x33
	.string	"chain"
	.byte	0x1
	.value	0x72d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x754f
	.byte	0x1
	.string	"remap_save_expr"
	.byte	0x1
	.value	0x755
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x751
	.long	0x472f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"st_"
	.byte	0x1
	.value	0x752
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x753
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF27
	.byte	0x1
	.value	0x754
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"st"
	.byte	0x1
	.value	0x756
	.long	0x5acb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x757
	.long	0x58aa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x75f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x755f
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x9
	.byte	0x0
	.uleb128 0xa
	.long	0x754f
	.uleb128 0x13
	.long	0x7574
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x7564
	.uleb128 0x13
	.long	0x7589
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x7579
	.uleb128 0xa
	.long	0x7579
	.uleb128 0x13
	.long	0x75a3
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x7593
	.uleb128 0x13
	.long	0x75b3
	.long	0x2e0
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3d
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x75cb
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x75a8
	.uleb128 0x13
	.long	0x75e0
	.long	0x1e9
	.uleb128 0x14
	.long	0x2f6
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3e
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x75d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"lineno"
	.byte	0xd
	.byte	0x1d
	.long	0x2e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_inline_trees"
	.byte	0x1
	.byte	0x39
	.long	0x2e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inline_trees
	.uleb128 0x3d
	.string	"warn_inline"
	.byte	0xe
	.byte	0x73
	.long	0x2e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"compiler_params"
	.byte	0xf
	.byte	0x3a
	.long	0x7675
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5232
	.uleb128 0x3d
	.string	"htab_hash_pointer"
	.byte	0xc
	.byte	0xa0
	.long	0x5711
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"htab_eq_pointer"
	.byte	0xc
	.byte	0xa3
	.long	0x5738
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF28
	.byte	0x10
	.value	0x176
	.long	0x76bd
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x61aa
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.long	0xbe
	.value	0x2
	.long	.Ldebug_info0
	.long	0x76c3
	.long	0x6d3d
	.string	"tree_inlinable_function_p"
	.long	0x719a
	.string	"optimize_inline_calls"
	.long	0x7210
	.string	"clone_body"
	.long	0x7272
	.string	"walk_tree"
	.long	0x73ba
	.string	"walk_tree_without_duplicates"
	.long	0x743e
	.string	"copy_tree_r"
	.long	0x74bc
	.string	"remap_save_expr"
	.long	0x7627
	.string	"flag_inline_trees"
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
.LASF22:
	.string	"result"
.LASF4:
	.string	"lang_flag_0"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF10:
	.string	"lang_flag_6"
.LASF24:
	.string	"mem_attrs"
.LASF0:
	.string	"common"
.LASF20:
	.string	"lang_specific"
.LASF7:
	.string	"lang_flag_3"
.LASF21:
	.string	"function"
.LASF1:
	.string	"unsigned int"
.LASF15:
	.string	"abstract_origin"
.LASF29:
	.string	"inline_data"
.LASF18:
	.string	"pointer_depth"
.LASF31:
	.string	"scope_stmt"
.LASF19:
	.string	"user_align"
.LASF33:
	.string	"use_stmt"
.LASF28:
	.string	"lang_hooks"
.LASF16:
	.string	"size_unit"
.LASF27:
	.string	"walk_subtrees"
.LASF13:
	.string	"value"
.LASF3:
	.string	"built_in_class"
.LASF8:
	.string	"lang_flag_4"
.LASF9:
	.string	"lang_flag_5"
.LASF11:
	.string	"lang_flag_7"
.LASF14:
	.string	"abstract_flag"
.LASF25:
	.string	"param_info"
.LASF12:
	.string	"ht_identifier"
.LASF26:
	.string	"data"
.LASF32:
	.string	"init_stmt"
.LASF30:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF23:
	.string	"inlined_fns"
.LASF17:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
