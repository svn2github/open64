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
	.type	__FUNCTION__.12688, @object
	.size	__FUNCTION__.12688, 11
__FUNCTION__.12688:
	.string	"remap_decl"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/tree-inline.c"
	.text
	.type	remap_decl, @function
remap_decl:
.LFB15:
	.file 1 "../../../kgccfe/gnu/tree-inline.c"
	.loc 1 150 0
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
	.loc 1 155 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 156 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	180(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L2
	.loc 1 157 0
	movl	$0, -44(%ebp)
	jmp	.L4
.L2:
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -32(%ebp)
	.loc 1 163 0
	cmpl	$0, -32(%ebp)
	jne	.L5
.LBB2:
	.loc 1 168 0
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
	.loc 1 171 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L7
	.loc 1 172 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 33(%eax)
.L7:
	.loc 1 177 0
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
	.loc 1 180 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 181 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %esi
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 16(%esi)
	.loc 1 183 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	leal	68(%eax), %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	copy_body_r@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree@PLT
.L9:
	.loc 1 188 0
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
	.loc 1 194 0
	movl	$0, -20(%ebp)
	.loc 1 197 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L17
.L18:
.LBB4:
	.loc 1 200 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remap_decl
	movl	%eax, -12(%ebp)
	.loc 1 202 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 203 0
	leal	__FUNCTION__.12688@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$203, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L19:
	.loc 1 204 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
.LBE4:
	.loc 1 198 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L17:
	.loc 1 197 0
	cmpl	$0, -16(%ebp)
	jne	.L18
	.loc 1 206 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 60(%eax)
.L13:
.LBE3:
	.loc 1 212 0
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
	.loc 1 217 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L4:
	movl	-44(%ebp), %eax
	.loc 1 218 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	remap_decl, .-remap_decl
	.section	.rodata
	.type	__FUNCTION__.12774, @object
	.size	__FUNCTION__.12774, 12
__FUNCTION__.12774:
	.string	"remap_block"
	.text
	.type	remap_block, @function
remap_block:
.LFB16:
	.loc 1 240 0
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
	.loc 1 249 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 251 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 252 0
	jmp	.L50
.L24:
	.loc 1 256 0
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
	.loc 1 264 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 265 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, -28(%ebp)
	.loc 1 266 0
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
	.loc 1 267 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 268 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 271 0
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
	.loc 1 272 0
	jmp	.L33
.L34:
.LBB6:
	.loc 1 278 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_decl
	movl	%eax, -16(%ebp)
	.loc 1 284 0
	cmpl	$0, -16(%ebp)
	je	.L35
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L35
	.loc 1 288 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 289 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 294 0
	movl	-16(%ebp), %eax
	movl	128(%eax), %eax
	testl	%eax, %eax
	je	.L35
	.loc 1 295 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	Create_ST_For_Tree@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 128(%eax)
.L35:
.LBE6:
	.loc 1 273 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L33:
	.loc 1 272 0
	cmpl	$0, -24(%ebp)
	jne	.L34
	.loc 1 300 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 301 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 302 0
	movl	16(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L40
	.loc 1 306 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L42
.L40:
.LBB7:
	.loc 1 313 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 314 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L45
.L43:
	.loc 1 316 0
	movl	-20(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -12(%ebp)
.L45:
	.loc 1 317 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 318 0
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L42:
.LBE7:
	.loc 1 321 0
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
	.loc 1 256 0
	jmp	.L50
.L27:
.LBE5:
	.loc 1 327 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L50
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L50
.LBB8:
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 334 0
	cmpl	$0, -8(%ebp)
	jne	.L48
	.loc 1 335 0
	leal	__FUNCTION__.12774@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$335, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L48:
	.loc 1 336 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L50:
.LBE8:
	.loc 1 401 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	remap_block, .-remap_block
	.type	copy_scope_stmt, @function
copy_scope_stmt:
.LFB17:
	.loc 1 411 0
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
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 420 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_tree_r@PLT
	.loc 1 422 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	remap_block
	.loc 1 426 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	copy_scope_stmt, .-copy_scope_stmt
	.section	.rodata
	.type	__FUNCTION__.12859, @object
	.size	__FUNCTION__.12859, 12
__FUNCTION__.12859:
	.string	"copy_body_r"
	.text
	.type	copy_body_r, @function
copy_body_r:
.LFB18:
	.loc 1 436 0
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
	.loc 1 441 0
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 442 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 461 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-93, %al
	jne	.L54
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L54
.LBB9:
	.loc 1 466 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 471 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$167, (%esp)
	call	build_stmt@PLT
	movl	%eax, -24(%ebp)
	.loc 1 472 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 473 0
	movl	-24(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 484 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 486 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 488 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
	.loc 1 490 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L60
.L57:
	.loc 1 502 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 461 0
	jmp	.L60
.L54:
.LBE9:
	.loc 1 508 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	180(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testl	%eax, %eax
	je	.L61
.LBB10:
	.loc 1 513 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remap_decl
	movl	%eax, -20(%ebp)
	.loc 1 514 0
	cmpl	$0, -20(%ebp)
	jne	.L65
	.loc 1 515 0
	leal	__FUNCTION__.12859@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$515, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L66:
	.loc 1 517 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L65:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L67
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L67
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L70
.L67:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L70
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L66
.L70:
	.loc 1 518 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L60
.L61:
.LBE10:
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L72
	.loc 1 526 0
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
	jmp	.L60
.L72:
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$121, %al
	jne	.L74
	.loc 1 530 0
	leal	__FUNCTION__.12859@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$530, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L74:
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L76
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L76
	.loc 1 535 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_scope_stmt
	.loc 1 534 0
	jmp	.L60
.L76:
	.loc 1 566 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L79
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L79
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L79
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L79
	.loc 1 568 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	38(%edx), %eax
	orl	$-128, %eax
	movb	%al, 38(%edx)
.L79:
	.loc 1 570 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_tree_r@PLT
	.loc 1 574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L84
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 576 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 24(%edx)
	.loc 1 577 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 32(%eax)
	.loc 1 574 0
	jmp	.L60
.L84:
	.loc 1 579 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$49, %al
	jne	.L60
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L60
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
	je	.L60
.LBB11:
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 590 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 591 0
	cmpl	$0, -8(%ebp)
	je	.L60
	.loc 1 593 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 594 0
	jmp	.L91
.L92:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L91:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L93
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L93
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L96
.L93:
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L96
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L92
.L96:
	.loc 1 595 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L98
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L60
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L60
.L98:
	.loc 1 596 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L60:
.LBE11:
	.loc 1 602 0
	movl	$0, %eax
	.loc 1 603 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	copy_body_r, .-copy_body_r
	.type	copy_body, @function
copy_body:
.LFB19:
	.loc 1 611 0
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
	.loc 1 614 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	100(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 615 0
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	copy_body_r@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree@PLT
	.loc 1 617 0
	movl	-8(%ebp), %eax
	.loc 1 618 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	copy_body, .-copy_body
	.type	initialize_inlined_parameters, @function
initialize_inlined_parameters:
.LFB20:
	.loc 1 635 0
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
	.loc 1 645 0
	movl	16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 648 0
	movl	$0, -52(%ebp)
	.loc 1 652 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L105
.L106:
.LBB12:
	.loc 1 664 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	204(%eax), %eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L107
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L109
.L107:
	movl	$0, -64(%ebp)
.L109:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	*-68(%ebp)
	movl	%eax, -24(%ebp)
	.loc 1 670 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L110
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L110
	cmpl	$0, -24(%ebp)
	je	.L110
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L110
	.loc 1 675 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L115
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -60(%ebp)
	jmp	.L117
.L115:
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
.L117:
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 682 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L118
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L110
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L110
.L118:
	.loc 1 687 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L121
	.loc 1 688 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L123
.L121:
	.loc 1 691 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L123
	.loc 1 692 0
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
.L123:
	.loc 1 694 0
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
	.loc 1 697 0
	jmp	.L125
.L110:
	.loc 1 702 0
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
	.loc 1 707 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L126
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L128
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L126
.L128:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L126
	.loc 1 710 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -20(%ebp)
	.loc 1 707 0
	jmp	.L131
.L126:
	.loc 1 712 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L131:
	.loc 1 717 0
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
	.loc 1 723 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -36(%ebp)
	.loc 1 724 0
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 725 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 736 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L132
	.loc 1 738 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 68(%edx)
	jmp	.L134
.L132:
	.loc 1 750 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-17, %eax
	movb	%al, 9(%edx)
	.loc 1 753 0
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
	.loc 1 759 0
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 760 0
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
.L134:
	.loc 1 764 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -32(%ebp)
	.loc 1 765 0
	cmpl	$0, -32(%ebp)
	je	.L125
.LBB13:
	.loc 1 769 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$175, (%esp)
	call	build_stmt@PLT
	movl	%eax, -16(%ebp)
	.loc 1 772 0
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 773 0
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
.L125:
.LBE13:
.LBE12:
	.loc 1 653 0
	cmpl	$0, -44(%ebp)
	je	.L136
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L138
.L136:
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
.L138:
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L105:
	.loc 1 652 0
	cmpl	$0, -40(%ebp)
	jne	.L106
	.loc 1 793 0
	jmp	.L140
.L141:
.LBB14:
	.loc 1 796 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 798 0
	cmpl	$0, -8(%ebp)
	je	.L142
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L142
	.loc 1 801 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, -12(%ebp)
	.loc 1 802 0
	movl	-12(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 803 0
	movl	-12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L142:
.LBE14:
	.loc 1 793 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L140:
	cmpl	$0, -44(%ebp)
	jne	.L141
	.loc 1 808 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	.loc 1 813 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	initialize_inlined_parameters, .-initialize_inlined_parameters
	.type	declare_return_variable, @function
declare_return_variable:
.LFB21:
	.loc 1 831 0
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
	.loc 1 832 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 833 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 837 0
	movl	$1, -28(%ebp)
	.loc 1 841 0
	cmpl	$0, -20(%ebp)
	je	.L148
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L150
.L148:
	.loc 1 844 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 848 0
	movl	$0, -32(%ebp)
	jmp	.L151
.L150:
	.loc 1 852 0
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
	.loc 1 859 0
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
	.loc 1 865 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L152
	.loc 1 866 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$156, (%esp)
	call	build_stmt@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L154
.L152:
	.loc 1 868 0
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
.L154:
	.loc 1 871 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 875 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 876 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -32(%ebp)
	jmp	.L151
.L155:
	.loc 1 892 0
	movl	$0, -32(%ebp)
.L151:
	movl	-32(%ebp), %eax
	.loc 1 893 0
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
	.loc 1 900 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$8, %esp
.LCFI33:
	.loc 1 901 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	inlinable_function_p
	.loc 1 902 0
	leave
	ret
.LFE22:
	.size	tree_inlinable_function_p, .-tree_inlinable_function_p
	.type	find_alloca_call_1, @function
find_alloca_call_1:
.LFB23:
	.loc 1 910 0
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
	.loc 1 911 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	alloca_call_p@PLT
	testb	%al, %al
	je	.L161
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L163
.L161:
	.loc 1 913 0
	movl	$0, -8(%ebp)
.L163:
	movl	-8(%ebp), %eax
	.loc 1 914 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	find_alloca_call_1, .-find_alloca_call_1
	.type	find_alloca_call, @function
find_alloca_call:
.LFB24:
	.loc 1 920 0
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
	.loc 1 921 0
	movl	$0, 8(%esp)
	leal	find_alloca_call_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree_without_duplicates@PLT
	.loc 1 922 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	find_alloca_call, .-find_alloca_call
	.type	find_builtin_longjmp_call_1, @function
find_builtin_longjmp_call_1:
.LFB25:
	.loc 1 929 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	subl	$20, %esp
.LCFI44:
	.loc 1 930 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 932 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L168
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L168
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L168
	movl	-4(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$12, %al
	jne	.L168
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$244, %eax
	jne	.L168
	.loc 1 938 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L174
.L168:
	.loc 1 940 0
	movl	$0, -20(%ebp)
.L174:
	movl	-20(%ebp), %eax
	.loc 1 941 0
	leave
	ret
.LFE25:
	.size	find_builtin_longjmp_call_1, .-find_builtin_longjmp_call_1
	.type	find_builtin_longjmp_call, @function
find_builtin_longjmp_call:
.LFB26:
	.loc 1 946 0
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
	.loc 1 947 0
	movl	$0, 8(%esp)
	leal	find_builtin_longjmp_call_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree_without_duplicates@PLT
	.loc 1 948 0
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
	.loc 1 958 0
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
	.loc 1 961 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 965 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L179
	.loc 1 966 0
	movl	$0, -48(%ebp)
	jmp	.L181
.L179:
	.loc 1 969 0
	movl	$0, -40(%ebp)
	.loc 1 974 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L182
	.loc 1 975 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L182:
	.loc 1 978 0
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
	.loc 1 981 0
	movl	flag_inline_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L184
	.loc 1 989 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L184
	.loc 1 999 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	168(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L187
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jle	.L187
	jmp	.L184
.L187:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	find_builtin_longjmp_call
	testl	%eax, %eax
	jne	.L184
	.loc 1 1014 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	jne	.L191
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	find_alloca_call
	testl	%eax, %eax
	je	.L191
	jmp	.L184
.L191:
	.loc 1 1022 0
	movl	$1, -40(%ebp)
.L184:
	.loc 1 1025 0
	movl	8(%ebp), %ecx
	cmpl	$0, -40(%ebp)
	sete	%al
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	37(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
	.loc 1 1029 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	168(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L194
	cmpl	$0, -40(%ebp)
	je	.L194
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jge	.L194
.LBB15:
	.loc 1 1034 0
	cmpl	$0, 12(%ebp)
	je	.L198
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -44(%ebp)
	jmp	.L200
.L198:
	movl	$0, -44(%ebp)
.L200:
	movl	-44(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1038 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	sall	$7, %eax
	cmpl	-28(%ebp), %eax
	jge	.L201
	.loc 1 1039 0
	movl	$0, -40(%ebp)
	jmp	.L194
.L201:
	.loc 1 1044 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jge	.L194
.LBB16:
	.loc 1 1047 0
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
	.loc 1 1048 0
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L194
	.loc 1 1049 0
	movl	$0, -40(%ebp)
.L194:
.LBE16:
.LBE15:
	.loc 1 1053 0
	cmpl	$0, -40(%ebp)
	je	.L205
	movl	lang_hooks@GOT(%ebx), %eax
	movl	164(%eax), %eax
	leal	8(%ebp), %esi
	movl	%esi, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	.L205
	.loc 1 1054 0
	movl	$0, -40(%ebp)
.L205:
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L208
	.loc 1 1059 0
	movl	$0, -40(%ebp)
.L208:
	.loc 1 1062 0
	cmpl	$0, -40(%ebp)
	je	.L210
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L212
.L210:
	.loc 1 1063 0
	movl	$0, -48(%ebp)
	jmp	.L181
.L212:
	.loc 1 1067 0
	cmpl	$0, 12(%ebp)
	je	.L213
.LBB17:
	.loc 1 1071 0
	movl	$0, -20(%ebp)
	jmp	.L215
.L216:
	.loc 1 1072 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L217
	.loc 1 1073 0
	movl	$0, -48(%ebp)
	jmp	.L181
.L217:
	.loc 1 1071 0
	addl	$1, -20(%ebp)
.L215:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	ja	.L216
	.loc 1 1075 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L213
.LBB18:
	.loc 1 1078 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1080 0
	movl	$0, -16(%ebp)
	jmp	.L221
.L222:
	.loc 1 1081 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L223
	.loc 1 1082 0
	movl	$0, -48(%ebp)
	jmp	.L181
.L223:
	.loc 1 1080 0
	addl	$1, -16(%ebp)
.L221:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L222
.L213:
.LBE18:
.LBE17:
	.loc 1 1087 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
.L181:
	movl	-48(%ebp), %eax
	.loc 1 1088 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	inlinable_function_p, .-inlinable_function_p
	.section	.rodata
	.type	__FUNCTION__.13436, @object
	.size	__FUNCTION__.13436, 19
__FUNCTION__.13436:
	.string	"expand_call_inline"
	.text
	.type	expand_call_inline, @function
expand_call_inline:
.LFB28:
	.loc 1 1097 0
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
	.loc 1 1115 0
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1116 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1120 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L227
.LBB19:
	.loc 1 1123 0
	movl	$51, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1126 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1129 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L229
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
.L229:
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
	.loc 1 1134 0
	movl	$0, -24(%ebp)
	jmp	.L231
.L232:
	.loc 1 1136 0
	cmpl	$2, -24(%ebp)
	jne	.L233
	.loc 1 1137 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%eax)
.L233:
	.loc 1 1138 0
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
	.loc 1 1140 0
	cmpl	$2, -24(%ebp)
	jne	.L235
	.loc 1 1141 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%eax)
.L235:
	.loc 1 1134 0
	addl	$1, -24(%ebp)
.L231:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L232
	.loc 1 1145 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1147 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L227:
.LBE19:
	.loc 1 1152 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-108, %al
	jne	.L239
	.loc 1 1155 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1157 0
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
	.loc 1 1158 0
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
	.loc 1 1161 0
	call	pop_srcloc@PLT
	.loc 1 1163 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L239:
	.loc 1 1166 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L241
	.loc 1 1170 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L241:
	.loc 1 1173 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	je	.L243
	.loc 1 1174 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L243:
	.loc 1 1178 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1179 0
	cmpl	$0, -36(%ebp)
	jne	.L245
	.loc 1 1180 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L245:
	.loc 1 1189 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L247
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L247
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L247
	.loc 1 1192 0
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -36(%ebp)
.L247:
	.loc 1 1196 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	inlinable_function_p
	testl	%eax, %eax
	jne	.L251
	.loc 1 1198 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L253
	movl	-36(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L253
.L253:
	.loc 1 1207 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L251:
	.loc 1 1210 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	196(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L257
	.loc 1 1211 0
	movl	$0, -88(%ebp)
	jmp	.L238
.L257:
	.loc 1 1218 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_srcloc@PLT
	.loc 1 1226 0
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
	.loc 1 1228 0
	movl	-52(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1229 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1241 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1242 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	splay_tree_compare_pointers@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1247 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_inlined_parameters
	movl	%eax, -68(%ebp)
	.loc 1 1252 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_calls_inline
	.loc 1 1254 0
	movl	-68(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1274 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L259
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
.L259:
	movl	-60(%ebp), %eax
	movl	(%eax), %esi
	movl	-60(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1278 0
	movl	-36(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	jne	.L261
.LBB20:
	.loc 1 1282 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L263
.L264:
	.loc 1 1283 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	cmpl	-36(%ebp), %eax
	je	.L265
	.loc 1 1282 0
	subl	$1, -16(%ebp)
.L263:
	cmpl	$0, -16(%ebp)
	jns	.L264
.L265:
	.loc 1 1285 0
	cmpl	$0, -16(%ebp)
	jns	.L261
	.loc 1 1286 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L268
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
.L268:
	movl	-60(%ebp), %eax
	movl	24(%eax), %esi
	movl	-60(%ebp), %eax
	movl	24(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L261:
.LBE20:
	.loc 1 1291 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$32, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1292 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 1294 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L270
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$5, %al
	je	.L272
.L270:
	.loc 1 1296 0
	leal	__FUNCTION__.13436@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1296, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L272:
	.loc 1 1302 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$170, (%esp)
	call	build_stmt@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1303 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$1, %eax
	movb	%al, 11(%edx)
	.loc 1 1304 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 1305 0
	movl	-36(%ebp), %eax
	movl	60(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_block
	.loc 1 1306 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1307 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1311 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L273
	.loc 1 1312 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L275
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L277
.L275:
	movl	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
.L277:
	movl	-80(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 32(%edx)
.L273:
	.loc 1 1315 0
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
	.loc 1 1335 0
	movl	-48(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1336 0
	jmp	.L278
.L279:
	.loc 1 1337 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L278:
	.loc 1 1336 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L279
	.loc 1 1338 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_body
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1356 0
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
	.loc 1 1371 0
	movl	-64(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1374 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$170, (%esp)
	call	build_stmt@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1375 0
	movl	-40(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 1376 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_block
	.loc 1 1377 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1395 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
	.loc 1 1396 0
	movl	-60(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1399 0
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
	.loc 1 1405 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1406 0
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
	.loc 1 1413 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 1415 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1417 0
	call	pop_srcloc@PLT
	.loc 1 1422 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1425 0
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
	.loc 1 1427 0
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
	.loc 1 1430 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_calls_inline
	.loc 1 1431 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 1435 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L281
	.loc 1 1436 0
	movl	-60(%ebp), %eax
	movl	$0, 28(%eax)
.L281:
	.loc 1 1439 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1441 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	200(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1444 0
	movl	$0, -88(%ebp)
.L238:
	movl	-88(%ebp), %eax
	.loc 1 1445 0
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
	.loc 1 1453 0
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
	.loc 1 1460 0
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
	.loc 1 1461 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	expand_calls_inline, .-expand_calls_inline
	.section	.rodata
.LC2:
	.string	"fns"
.LC3:
	.string	"target_exprs"
.LC4:
	.string	"inlined_fns"
	.text
.globl optimize_inline_calls
	.type	optimize_inline_calls, @function
optimize_inline_calls:
.LFB30:
	.loc 1 1468 0
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
	.loc 1 1473 0
	leal	-60(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 1476 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1477 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L287
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -60(%ebp)
.L287:
	movl	-60(%ebp), %esi
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1479 0
	movl	$0, -20(%ebp)
	.loc 1 1480 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L289
	.loc 1 1482 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L291
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -60(%ebp)
.L291:
	movl	-60(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	4(%esi), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%esi)
	.loc 1 1483 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L289:
	.loc 1 1486 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 1490 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1493 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1497 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1501 0
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
	.loc 1 1503 0
	movl	8(%ebp), %edx
	addl	$100, %edx
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_calls_inline
	.loc 1 1506 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L297
.LBB21:
	.loc 1 1509 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1511 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L295
	.loc 1 1512 0
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
.L295:
	.loc 1 1514 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 104(%edx)
.L297:
.LBE21:
	.loc 1 1516 0
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
	.loc 1 1526 0
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
	.loc 1 1533 0
	leal	-52(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 1534 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$2, (%esp)
	call	varray_init@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1535 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L299
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -52(%ebp)
.L299:
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1536 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L301
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -52(%ebp)
.L301:
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 1537 0
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1541 0
	movb	$1, -20(%ebp)
	.loc 1 1544 0
	movl	8(%ebp), %eax
	movl	100(%eax), %esi
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_body
	movl	%eax, (%esi)
	.loc 1 1545 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	clone_body, .-clone_body
	.section	.rodata
	.type	__FUNCTION__.13826, @object
	.size	__FUNCTION__.13826, 10
__FUNCTION__.13826:
	.string	"walk_tree"
	.text
.globl walk_tree
	.type	walk_tree, @function
walk_tree:
.LFB32:
	.loc 1 1560 0
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
	.loc 1 1561 0
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L398
.L305:
.L398:
	.loc 1 1585 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L306
	.loc 1 1586 0
	movl	$0, -56(%ebp)
	jmp	.L308
.L306:
	.loc 1 1588 0
	cmpl	$0, -36(%ebp)
	je	.L309
.LBB22:
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1595 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L311
	.loc 1 1596 0
	movl	$0, -56(%ebp)
	jmp	.L308
.L311:
	.loc 1 1597 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
.L309:
.LBE22:
	.loc 1 1601 0
	movl	$1, -40(%ebp)
	.loc 1 1602 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -28(%ebp)
	.loc 1 1605 0
	cmpl	$0, -28(%ebp)
	je	.L313
	.loc 1 1606 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L313:
	.loc 1 1608 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1613 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L315
	.loc 1 1615 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	jne	.L317
	cmpl	$3, -32(%ebp)
	je	.L317
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L320
.L317:
	.loc 1 1618 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L320:
	.loc 1 1620 0
	movl	$0, -56(%ebp)
	jmp	.L308
.L315:
	.loc 1 1624 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L321
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L321
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L321
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	je	.L321
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$114, %al
	je	.L321
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$115, %al
	jne	.L327
.L321:
.LBB23:
	.loc 1 1640 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L328
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L328
	.loc 1 1641 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L328:
	.loc 1 1645 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1648 0
	cmpl	$51, -32(%ebp)
	jne	.L331
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L331
	.loc 1 1650 0
	subl	$1, -16(%ebp)
.L331:
	.loc 1 1653 0
	movl	$0, -20(%ebp)
	jmp	.L334
.L335:
	.loc 1 1654 0
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
	je	.L336
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L336:
	.loc 1 1653 0
	addl	$1, -20(%ebp)
.L334:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L335
	.loc 1 1659 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L339
	.loc 1 1661 0
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
	.loc 1 1670 0
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
	jmp	.L308
.L345:
	.loc 1 1671 0
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
	jmp	.L308
.L347:
	.loc 1 1672 0
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
	jmp	.L308
.L341:
	.loc 1 1676 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L339:
	.loc 1 1681 0
	movl	$0, -56(%ebp)
	jmp	.L308
.L327:
.LBE23:
	.loc 1 1683 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$100, %al
	jne	.L350
	.loc 1 1685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L350:
	.loc 1 1687 0
	movl	-32(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$116, %al
	jne	.L352
	.loc 1 1689 0
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
	jmp	.L308
.L354:
	.loc 1 1690 0
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
	je	.L352
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L352:
	.loc 1 1694 0
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
	.loc 1 1696 0
	cmpl	$0, -28(%ebp)
	jne	.L357
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L359
.L357:
	.loc 1 1697 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L359:
	.loc 1 1701 0
	cmpl	$47, -32(%ebp)
	ja	.L360
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L372@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L372:
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L360@GOTOFF
	.long	.L362@GOTOFF
	.long	.L363@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L364@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L365@GOTOFF
	.long	.L366@GOTOFF
	.long	.L365@GOTOFF
	.long	.L367@GOTOFF
	.long	.L360@GOTOFF
	.long	.L368@GOTOFF
	.long	.L360@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L360@GOTOFF
	.long	.L369@GOTOFF
	.long	.L360@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L370@GOTOFF
	.long	.L373@GOTOFF
	.long	.L373@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L360@GOTOFF
	.long	.L371@GOTOFF
	.text
.L365:
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L362:
	.loc 1 1729 0
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
	je	.L374
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L374:
	.loc 1 1730 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L363:
.LBB24:
	.loc 1 1735 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1737 0
	cmpl	$0, -12(%ebp)
	je	.L373
	.loc 1 1741 0
	jmp	.L377
.L378:
	.loc 1 1742 0
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
	je	.L377
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L377:
	.loc 1 1741 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L378
	.loc 1 1745 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L370:
.LBE24:
	.loc 1 1749 0
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
	je	.L381
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L381:
	.loc 1 1750 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L371:
	.loc 1 1753 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L367:
	.loc 1 1756 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
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
	je	.L369
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L369:
	.loc 1 1760 0
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
	je	.L384
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L384:
.LBB25:
	.loc 1 1762 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1765 0
	jmp	.L386
.L387:
	.loc 1 1766 0
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
	je	.L388
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L388:
	.loc 1 1765 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L386:
	cmpl	$0, -8(%ebp)
	jne	.L387
	.loc 1 1768 0
	jmp	.L373
.L368:
.LBE25:
	.loc 1 1771 0
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
	je	.L391
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L391:
	.loc 1 1772 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L364:
	.loc 1 1775 0
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
	je	.L393
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L393:
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$68, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L366:
	.loc 1 1779 0
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
	je	.L395
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L308
.L395:
	.loc 1 1780 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$68, %eax
	movl	%eax, 8(%ebp)
	jmp	.L305
.L360:
	.loc 1 1791 0
	leal	__FUNCTION__.13826@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1791, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L373:
	.loc 1 1795 0
	movl	$0, -56(%ebp)
.L308:
	movl	-56(%ebp), %eax
	.loc 1 1799 0
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
	.loc 1 1809 0
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
	.loc 1 1813 0
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
	.loc 1 1814 0
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
	.loc 1 1815 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 1816 0
	movl	-12(%ebp), %eax
	.loc 1 1817 0
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
	.loc 1 1826 0
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
	.loc 1 1827 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1830 0
	movl	-12(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$114, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	je	.L402
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$115, %al
	je	.L402
	cmpl	$3, -12(%ebp)
	je	.L402
	cmpl	$4, -12(%ebp)
	je	.L402
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L412
.L402:
.LBB26:
	.loc 1 1840 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1843 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1847 0
	cmpl	$36, -12(%ebp)
	je	.L413
	cmpl	$3, -12(%ebp)
	je	.L413
	movl	lang_hooks@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L413
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	statement_code_p@PLT
	testl	%eax, %eax
	je	.L417
.L413:
	.loc 1 1851 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L417:
	.loc 1 1855 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-86, %al
	jne	.L420
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 20(%eax)
	.loc 1 1830 0
	jmp	.L420
.L412:
.LBE26:
	.loc 1 1862 0
	movl	-12(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$116, %al
	jne	.L420
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L420
	.loc 1 1864 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L420:
	.loc 1 1866 0
	movl	$0, %eax
	.loc 1 1867 0
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
	.loc 1 1880 0
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
	.loc 1 1881 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1885 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1888 0
	cmpl	$0, -12(%ebp)
	jne	.L425
.LBB27:
	.loc 1 1890 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1894 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1896 0
	movl	-8(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	$0, (%eax)
	.loc 1 1898 0
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
	.loc 1 1902 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	jmp	.L427
.L425:
.LBE27:
	.loc 1 1908 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L427:
	.loc 1 1911 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1912 0
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
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/hashtable.h"
	.file 7 "../../../kgccfe/gnu/location.h"
	.file 8 "../../../kgccfe/omp_types.h"
	.file 9 "../../../kgccfe/gnu/varray.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "../../../include/gnu/splay-tree.h"
	.file 12 "../../../include/gnu/hashtab.h"
	.file 13 "../../../kgccfe/gnu/input.h"
	.file 14 "../../../kgccfe/gnu/flags.h"
	.file 15 "../../../kgccfe/gnu/params.h"
	.file 16 "../../../kgccfe/gnu/langhooks.h"
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
	.long	0x7251
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/tree-inline.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
	.long	0x430b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x8d
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
	.byte	0x94
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
	.byte	0x97
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
	.byte	0x9f
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
	.byte	0xa8
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
	.byte	0xba
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
	.byte	0xc1
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
	.byte	0xc6
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
	.byte	0xcf
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
	.byte	0xd4
	.long	0x4d67
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
	.byte	0xf8
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x4d77
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
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x855
	.long	0x2c02
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x2f1c
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x2f64
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3087
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x859
	.long	0x2fc5
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3032
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x310d
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x85c
	.long	0x37e8
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x85d
	.long	0x3370
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3144
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x3189
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x31da
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x3226
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x417d
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
	.byte	0x27
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
	.byte	0x31
	.long	0x2ef
	.uleb128 0x4
	.long	0x1345
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x32
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x134f
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x13a4
	.long	.LASF3
	.byte	0x4
	.byte	0x3
	.byte	0x5a
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
	.long	0x2c02
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x19
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x19
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x19
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x19
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x19
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x19
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x19
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x19
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x19
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x19
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x19
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x19
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x19
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x19
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x19
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x19
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x19
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x19
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x19
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x19
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x19
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x19
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x19
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x19
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x19
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x19
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x19
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x19
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x19
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x19
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x19
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x19
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x19
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x19
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x19
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x19
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x19
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x19
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x19
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x19
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x19
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x19
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x19
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x19
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x19
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x19
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x19
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x19
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x19
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x19
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x19
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x19
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x19
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x19
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x19
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x19
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x19
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x19
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x19
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x19
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x19
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x19
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x19
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x19
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x19
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x19
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x19
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x19
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x19
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x19
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x19
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x19
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x19
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x19
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x19
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x19
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x19
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x19
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x19
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x19
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x19
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x19
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x19
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x19
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x19
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x19
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x19
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x19
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x19
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x19
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x19
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x19
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x19
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x19
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x19
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x19
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x19
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x19
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x19
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x19
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x19
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x19
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x19
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x19
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x19
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x19
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x19
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x19
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x19
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x19
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x19
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x19
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x19
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x19
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x19
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x19
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x19
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x19
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x19
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x2ee0
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x90
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
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
	.byte	0x94
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
	.byte	0x95
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
	.byte	0x96
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
	.byte	0x97
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
	.byte	0x98
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
	.byte	0x99
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
	.byte	0x9a
	.long	0x2ef
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
	.byte	0x9d
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
	.byte	0x9e
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
	.byte	0x9f
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
	.byte	0xa0
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
	.byte	0xa1
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
	.byte	0xa2
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
	.byte	0xa3
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
	.byte	0xa4
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
	.byte	0xa6
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
	.byte	0xa7
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
	.byte	0xa8
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
	.byte	0xa9
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
	.byte	0xaa
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
	.byte	0xab
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
	.byte	0xac
	.long	0x2ef
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
	.byte	0xaf
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
	.byte	0xb0
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
	.byte	0xb1
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
	.byte	0xb2
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
	.byte	0xb3
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x2f1c
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xf
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x2f64
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x2f0
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x2ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x2fb2
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x30c
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x2fbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fb2
	.uleb128 0x1d
	.long	0x302c
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2c02
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
	.string	"length"
	.byte	0x3
	.value	0x322
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x302c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1345
	.uleb128 0x1d
	.long	0x3087
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x32f
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x30cf
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x341
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x310d
	.long	.LASF11
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
	.long	0x3144
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x360
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x30cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1d
	.long	0x3189
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x36a
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.value	0x36c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x31ca
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x378
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x3
	.value	0x379
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x31ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x31da
	.long	0x1e9
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x3226
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x3be
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x31ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x3316
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x3f4
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x3f7
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
	.value	0x3f8
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
	.value	0x3fa
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.value	0x3fd
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x335d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2e8
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x3cc
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x336a
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x335d
	.uleb128 0x1d
	.long	0x36c3
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x540
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x543
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x3
	.value	0x544
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x3
	.value	0x547
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
	.value	0x548
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
	.value	0x54a
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
	.value	0x54b
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
	.value	0x54c
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
	.value	0x54d
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
	.value	0x54e
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
	.value	0x54f
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x550
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
	.value	0x552
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
	.value	0x553
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
	.value	0x554
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
	.value	0x555
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
	.value	0x556
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
	.value	0x557
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
	.value	0x558
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x559
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"align"
	.byte	0x3
	.value	0x55f
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x3316
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0x568
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x571
	.long	0x36cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x1306
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x36c3
	.uleb128 0x1d
	.long	0x371a
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x1f
	.string	"align"
	.byte	0x3
	.value	0x7f1
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
	.value	0x7f2
	.long	0x2ef
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x374f
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x13a4
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x363
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x36d5
	.byte	0x0
	.uleb128 0x21
	.long	0x378e
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x3794
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0xa0
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e9
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2e8
	.byte	0x0
	.uleb128 0x22
	.long	.LASF20
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x378e
	.uleb128 0x23
	.long	0x37d2
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x302c
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x12f5
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x2ef
	.byte	0x0
	.uleb128 0x23
	.long	0x37e8
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x302c
	.byte	0x0
	.uleb128 0x1d
	.long	0x3f1a
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x7a1
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x9c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x7a4
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x3
	.value	0x7a5
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
	.value	0x7a7
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
	.value	0x7a8
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
	.value	0x7a9
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
	.value	0x7aa
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
	.value	0x7ab
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
	.value	0x7ac
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
	.value	0x7ad
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.value	0x7ae
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
	.value	0x7b2
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
	.value	0x7b3
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
	.value	0x7b4
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
	.value	0x7b5
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
	.value	0x7b6
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
	.value	0x7ba
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
	.value	0x7bb
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
	.value	0x7bc
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
	.value	0x7bd
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
	.value	0x7be
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
	.value	0x7bf
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
	.value	0x7c0
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
	.value	0x7c1
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
	.value	0x7c3
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
	.value	0x7c4
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
	.value	0x7c5
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
	.value	0x7c6
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
	.value	0x7c7
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
	.value	0x7c8
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
	.value	0x7c9
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x7cb
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
	.value	0x7cc
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x7cd
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
	.value	0x7ce
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
	.value	0x7cf
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
	.value	0x7d0
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
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
	.value	0x7d5
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
	.value	0x7d6
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
	.value	0x7d7
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
	.value	0x7d8
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
	.value	0x7d9
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
	.value	0x7da
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
	.value	0x7db
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
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
	.value	0x7df
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
	.value	0x7e0
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x371a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x7f6
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0x7f7
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x3
	.value	0x7fa
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.value	0x7fc
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x3
	.value	0x7ff
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x374f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x3
	.value	0x814
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x3
	.value	0x819
	.long	0x3f26
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x2ef
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x2ef
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x379a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x37d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x1306
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3f1a
	.uleb128 0x18
	.long	0x417d
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x8
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x19
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x19
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x19
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x19
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x19
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x19
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x19
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x19
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x19
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x19
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0x1d
	.long	0x41cc
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x3
	.value	0x833
	.long	0x2c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x3f2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x4288
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0xf
	.string	"name"
	.byte	0x3
	.value	0x9de
	.long	0x4288
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x428d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x428d
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x428d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x42cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d5
	.uleb128 0xa
	.long	0x4292
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	0x42bf
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x42bf
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x42c5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e9
	.uleb128 0x3
	.byte	0x4
	.long	0x4292
	.uleb128 0xa
	.long	0x42d0
	.uleb128 0x3
	.byte	0x4
	.long	0x429b
	.uleb128 0x24
	.string	"walk_tree_fn"
	.byte	0x3
	.value	0xd28
	.long	0x42eb
	.uleb128 0x3
	.byte	0x4
	.long	0x42f1
	.uleb128 0x15
	.long	0x430b
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x42bf
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x18
	.long	0x4ada
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
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
	.long	0x4bb4
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x54
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
	.byte	0x56
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
	.byte	0x58
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
	.byte	0x5b
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
	.byte	0x5d
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
	.byte	0x5e
	.long	0x4ada
	.uleb128 0xe
	.long	0x4c2b
	.long	.LASF23
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF23
	.byte	0x4
	.byte	0x6e
	.long	0x4bcf
	.uleb128 0x7
	.long	0x4d08
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x363
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2e8
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x2ef
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2d5
	.uleb128 0x27
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0xa0
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x1a1
	.uleb128 0x27
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x746
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x4bb4
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x4d1c
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x4d34
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e9
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x4d4c
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x4d52
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4d08
	.uleb128 0x1a
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4d22
	.uleb128 0x1a
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4d3a
	.uleb128 0x3
	.byte	0x4
	.long	0x4c2b
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x4c36
	.uleb128 0x13
	.long	0x4d77
	.long	0x4d58
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x4d87
	.long	0xa0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x4dc2
	.long	.LASF24
	.byte	0xc
	.byte	0xf
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0xf
	.byte	0x30
	.long	0x4288
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x28
	.long	.LASF12
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
	.long	0x4288
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x26
	.long	.LASF24
	.byte	0xf
	.byte	0x35
	.long	0x4d87
	.uleb128 0x4
	.long	0x4e03
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
	.long	0x4f9e
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
	.long	0x509a
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
	.long	0x509a
	.uleb128 0x27
	.string	"s"
	.byte	0x9
	.byte	0x5a
	.long	0x50aa
	.uleb128 0x27
	.string	"us"
	.byte	0x9
	.byte	0x5c
	.long	0x50ba
	.uleb128 0x27
	.string	"i"
	.byte	0x9
	.byte	0x5e
	.long	0x50ca
	.uleb128 0x27
	.string	"u"
	.byte	0x9
	.byte	0x60
	.long	0x50da
	.uleb128 0x27
	.string	"l"
	.byte	0x9
	.byte	0x62
	.long	0x50ea
	.uleb128 0x27
	.string	"ul"
	.byte	0x9
	.byte	0x64
	.long	0x50fa
	.uleb128 0x27
	.string	"hint"
	.byte	0x9
	.byte	0x66
	.long	0x510a
	.uleb128 0x27
	.string	"uhint"
	.byte	0x9
	.byte	0x68
	.long	0x511a
	.uleb128 0x27
	.string	"generic"
	.byte	0x9
	.byte	0x6a
	.long	0x512a
	.uleb128 0x27
	.string	"cptr"
	.byte	0x9
	.byte	0x6c
	.long	0x513a
	.uleb128 0x27
	.string	"rtx"
	.byte	0x9
	.byte	0x6e
	.long	0x514a
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x9
	.byte	0x70
	.long	0x515a
	.uleb128 0x27
	.string	"tree"
	.byte	0x9
	.byte	0x72
	.long	0x516a
	.uleb128 0x27
	.string	"bitmap"
	.byte	0x9
	.byte	0x74
	.long	0x517a
	.uleb128 0x27
	.string	"reg"
	.byte	0x9
	.byte	0x76
	.long	0x518a
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0x9
	.byte	0x78
	.long	0x51af
	.uleb128 0x27
	.string	"bb"
	.byte	0x9
	.byte	0x7a
	.long	0x51bf
	.uleb128 0x27
	.string	"te"
	.byte	0x9
	.byte	0x7c
	.long	0x51cf
	.byte	0x0
	.uleb128 0x13
	.long	0x50aa
	.long	0x30b
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x50ba
	.long	0x356
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x50ca
	.long	0x31c
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x50da
	.long	0x2e8
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x50ea
	.long	0x2ef
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x50fa
	.long	0x3ad
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x510a
	.long	0x332
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x511a
	.long	0x363
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x512a
	.long	0x374
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x513a
	.long	0x3ca
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x514a
	.long	0x3cc
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x515a
	.long	0xab
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x516a
	.long	0x1ae
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x517a
	.long	0x1f5
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x518a
	.long	0x4d34
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x519a
	.long	0x51a9
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x519a
	.uleb128 0x13
	.long	0x51bf
	.long	0x4dcd
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x51cf
	.long	0x4d4c
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x51df
	.long	0x51ea
	.uleb128 0x14
	.long	0x2f6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x51df
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x9
	.byte	0x7e
	.long	0x4f9e
	.uleb128 0x4
	.long	0x5277
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
	.long	0x4e03
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
	.long	.LASF25
	.byte	0x9
	.byte	0x87
	.long	0x51f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x9
	.byte	0x8a
	.long	0x528a
	.uleb128 0x3
	.byte	0x4
	.long	0x5203
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0xc
	.byte	0x32
	.long	0x2ef
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0xc
	.byte	0x37
	.long	0x52b2
	.uleb128 0x3
	.byte	0x4
	.long	0x52b8
	.uleb128 0x15
	.long	0x52c8
	.byte	0x1
	.long	0x5290
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
	.long	0x52f9
	.uleb128 0x3
	.byte	0x4
	.long	0x52ff
	.uleb128 0x15
	.long	0x5314
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
	.long	0x53f8
	.string	"htab"
	.byte	0x2c
	.byte	0xc
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0xc
	.byte	0x5b
	.long	0x52a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0xc
	.byte	0x5e
	.long	0x52c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0xc
	.byte	0x61
	.long	0x52d7
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
	.long	0x52e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0xc
	.byte	0x79
	.long	0x5314
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0xc
	.byte	0x7c
	.long	0x5406
	.uleb128 0x3
	.byte	0x4
	.long	0x5325
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
	.long	0x5451
	.uleb128 0x3
	.byte	0x4
	.long	0x5457
	.uleb128 0x4
	.long	0x54ad
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xb
	.byte	0x33
	.uleb128 0x6
	.string	"key"
	.byte	0xb
	.byte	0x54
	.long	0x540c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x28
	.long	.LASF12
	.byte	0xb
	.byte	0x57
	.long	0x5422
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xb
	.byte	0x5a
	.long	0x543a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xb
	.byte	0x5b
	.long	0x543a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xb
	.byte	0x37
	.long	0x54ca
	.uleb128 0x3
	.byte	0x4
	.long	0x54d0
	.uleb128 0x15
	.long	0x54e5
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x540c
	.uleb128 0x11
	.long	0x540c
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xb
	.byte	0x3b
	.long	0x5505
	.uleb128 0x3
	.byte	0x4
	.long	0x550b
	.uleb128 0x10
	.long	0x5517
	.byte	0x1
	.uleb128 0x11
	.long	0x540c
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xb
	.byte	0x3f
	.long	0x5539
	.uleb128 0x3
	.byte	0x4
	.long	0x553f
	.uleb128 0x10
	.long	0x554b
	.byte	0x1
	.uleb128 0x11
	.long	0x5422
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xb
	.byte	0x48
	.long	0x5569
	.uleb128 0x3
	.byte	0x4
	.long	0x556f
	.uleb128 0x15
	.long	0x5584
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
	.long	0x55a4
	.uleb128 0x3
	.byte	0x4
	.long	0x55aa
	.uleb128 0x10
	.long	0x55bb
	.byte	0x1
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x4
	.long	0x565b
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xb
	.byte	0x60
	.uleb128 0x6
	.string	"root"
	.byte	0xb
	.byte	0x62
	.long	0x543a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"comp"
	.byte	0xb
	.byte	0x65
	.long	0x54ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"delete_key"
	.byte	0xb
	.byte	0x68
	.long	0x54e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"delete_value"
	.byte	0xb
	.byte	0x6b
	.long	0x5517
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"allocate"
	.byte	0xb
	.byte	0x6e
	.long	0x554b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"deallocate"
	.byte	0xb
	.byte	0x6f
	.long	0x5584
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
	.long	0x566d
	.uleb128 0x3
	.byte	0x4
	.long	0x55bb
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x10
	.byte	0x1d
	.long	0x568f
	.uleb128 0x3
	.byte	0x4
	.long	0x5695
	.uleb128 0x10
	.long	0x56ab
	.byte	0x1
	.uleb128 0x11
	.long	0x56ab
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d2
	.uleb128 0x4
	.long	0x582d
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x10
	.byte	0x23
	.uleb128 0x28
	.long	.LASF26
	.byte	0x10
	.byte	0x24
	.long	0x5877
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x10
	.byte	0x29
	.long	0x588d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x10
	.byte	0x2a
	.long	0x58a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x10
	.byte	0x2b
	.long	0x58be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x10
	.byte	0x2d
	.long	0x58a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x10
	.byte	0x2e
	.long	0x58d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x10
	.byte	0x2f
	.long	0x5908
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x10
	.byte	0x34
	.long	0x58a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x10
	.byte	0x35
	.long	0x591e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x10
	.byte	0x36
	.long	0x58a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x10
	.byte	0x37
	.long	0x5930
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x10
	.byte	0x38
	.long	0x5950
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x15
	.long	0x5851
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x5851
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x5857
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
	.long	0x585d
	.uleb128 0x15
	.long	0x5877
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x5851
	.uleb128 0x11
	.long	0x704
	.uleb128 0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x582d
	.uleb128 0x15
	.long	0x588d
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x5851
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x587d
	.uleb128 0x15
	.long	0x58a3
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5893
	.uleb128 0x15
	.long	0x58be
	.byte	0x1
	.long	0x1f5
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58a9
	.uleb128 0x15
	.long	0x58d9
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1f5
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58c4
	.uleb128 0x15
	.long	0x5908
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
	.long	0x58df
	.uleb128 0x15
	.long	0x591e
	.byte	0x1
	.long	0x4292
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x590e
	.uleb128 0x10
	.long	0x5930
	.byte	0x1
	.uleb128 0x11
	.long	0x1f5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5924
	.uleb128 0x15
	.long	0x5950
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
	.long	0x5936
	.uleb128 0x4
	.long	0x59c5
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x10
	.byte	0x42
	.long	0x59d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x10
	.byte	0x45
	.long	0x59d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x10
	.byte	0x48
	.long	0x59d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x10
	.byte	0x4b
	.long	0x59d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x59d1
	.byte	0x1
	.uleb128 0x11
	.long	0x3794
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59c5
	.uleb128 0x4
	.long	0x5a22
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x10
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x10
	.byte	0x54
	.long	0x5a37
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x10
	.byte	0x57
	.long	0x5a4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x5a37
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x3ca
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a22
	.uleb128 0x15
	.long	0x5a4d
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a3d
	.uleb128 0x4
	.long	0x5b40
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x10
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x10
	.byte	0x60
	.long	0x5b50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x10
	.byte	0x64
	.long	0x5b6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x10
	.byte	0x68
	.long	0x5b86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x10
	.byte	0x6c
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x10
	.byte	0x70
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x10
	.byte	0x74
	.long	0x5bb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x10
	.byte	0x7a
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x10
	.byte	0x80
	.long	0x5bce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x15
	.long	0x5b50
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x9d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b40
	.uleb128 0x15
	.long	0x5b6b
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x746
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b56
	.uleb128 0x15
	.long	0x5b86
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x2ef
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b71
	.uleb128 0x15
	.long	0x5b9c
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b8c
	.uleb128 0x15
	.long	0x5bb7
	.byte	0x1
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ba2
	.uleb128 0x10
	.long	0x5bce
	.byte	0x1
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bbd
	.uleb128 0x4
	.long	0x5cda
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
	.long	0x5cf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x10
	.byte	0x94
	.long	0x5d00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x10
	.byte	0x99
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x10
	.byte	0x9c
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x10
	.byte	0xa2
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x10
	.byte	0xa5
	.long	0x5d1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x10
	.byte	0xa9
	.long	0x5d34
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
	.long	0x5d34
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x15
	.long	0x5cf4
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
	.long	0x5cda
	.uleb128 0x29
	.byte	0x1
	.long	0x2e8
	.uleb128 0x3
	.byte	0x4
	.long	0x5cfa
	.uleb128 0x10
	.long	0x5d12
	.byte	0x1
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d06
	.uleb128 0x29
	.byte	0x1
	.long	0x1e9
	.uleb128 0x3
	.byte	0x4
	.long	0x5d18
	.uleb128 0x15
	.long	0x5d34
	.byte	0x1
	.long	0x4292
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d24
	.uleb128 0x2a
	.long	0x616c
	.long	.LASF27
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
	.long	0x6187
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x10
	.byte	0xd6
	.long	0x6193
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x10
	.byte	0xde
	.long	0x61a9
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
	.long	0x61bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x10
	.byte	0xf1
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x10
	.byte	0xf5
	.long	0x61e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"truthvalue_conversion"
	.byte	0x10
	.value	0x102
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"insert_default_attributes"
	.byte	0x10
	.value	0x106
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"safe_from_p"
	.byte	0x10
	.value	0x10f
	.long	0x61ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"finish_incomplete_decl"
	.byte	0x10
	.value	0x113
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"unsafe_for_reeval"
	.byte	0x10
	.value	0x118
	.long	0x5a4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"mark_addressable"
	.byte	0x10
	.value	0x11d
	.long	0x5d34
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"staticp"
	.byte	0x10
	.value	0x120
	.long	0x5a4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"dup_lang_specific_decl"
	.byte	0x10
	.value	0x124
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"unsave_expr_now"
	.byte	0x10
	.value	0x129
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"maybe_build_cleanup"
	.byte	0x10
	.value	0x12d
	.long	0x5b9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"set_decl_assembler_name"
	.byte	0x10
	.value	0x134
	.long	0x5d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"can_use_bit_fields_p"
	.byte	0x10
	.value	0x138
	.long	0x6193
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"honor_readonly"
	.byte	0x10
	.value	0x13b
	.long	0x4292
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
	.long	0x5673
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"print_decl"
	.byte	0x10
	.value	0x147
	.long	0x5673
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"print_type"
	.byte	0x10
	.value	0x148
	.long	0x5673
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"print_identifier"
	.byte	0x10
	.value	0x149
	.long	0x5673
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"decl_printable_name"
	.byte	0x10
	.value	0x151
	.long	0x621a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"print_error_function"
	.byte	0x10
	.value	0x154
	.long	0x624c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"expr_size"
	.byte	0x10
	.value	0x15b
	.long	0x5b9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"attribute_table"
	.byte	0x10
	.value	0x162
	.long	0x6252
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.string	"common_attribute_table"
	.byte	0x10
	.value	0x163
	.long	0x6252
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.string	"format_attribute_table"
	.byte	0x10
	.value	0x164
	.long	0x6252
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x10
	.value	0x167
	.long	0x5956
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"tree_inlining"
	.byte	0x10
	.value	0x169
	.long	0x56b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.string	"tree_dump"
	.byte	0x10
	.value	0x16b
	.long	0x59d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xf
	.string	"decls"
	.byte	0x10
	.value	0x16d
	.long	0x5bd4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"types"
	.byte	0x10
	.value	0x16f
	.long	0x5a53
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x15
	.long	0x6181
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0x2e8
	.uleb128 0x11
	.long	0x6181
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cc
	.uleb128 0x3
	.byte	0x4
	.long	0x616c
	.uleb128 0x29
	.byte	0x1
	.long	0x4292
	.uleb128 0x3
	.byte	0x4
	.long	0x618d
	.uleb128 0x15
	.long	0x61a9
	.byte	0x1
	.long	0x2d5
	.uleb128 0x11
	.long	0x2d5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6199
	.uleb128 0x15
	.long	0x61bf
	.byte	0x1
	.long	0x363
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x61af
	.uleb128 0x15
	.long	0x61e4
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
	.long	0x61c5
	.uleb128 0x15
	.long	0x61ff
	.byte	0x1
	.long	0x2e8
	.uleb128 0x11
	.long	0xa0
	.uleb128 0x11
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x61ea
	.uleb128 0x15
	.long	0x621a
	.byte	0x1
	.long	0x2d5
	.uleb128 0x11
	.long	0x1e9
	.uleb128 0x11
	.long	0x2e8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6205
	.uleb128 0x10
	.long	0x6231
	.byte	0x1
	.uleb128 0x11
	.long	0x6231
	.uleb128 0x11
	.long	0x2d5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6237
	.uleb128 0x1a
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6220
	.uleb128 0x3
	.byte	0x4
	.long	0x6258
	.uleb128 0xa
	.long	0x41cc
	.uleb128 0xe
	.long	0x633f
	.long	.LASF28
	.byte	0x28
	.byte	0x1
	.byte	0x4e
	.uleb128 0x6
	.string	"fns"
	.byte	0x1
	.byte	0x55
	.long	0x5277
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"first_inlined_fn"
	.byte	0x1
	.byte	0x58
	.long	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ret_label"
	.byte	0x1
	.byte	0x5c
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decl_map"
	.byte	0x1
	.byte	0x5f
	.long	0x565b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"in_target_cleanup_p"
	.byte	0x1
	.byte	0x62
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"target_exprs"
	.byte	0x1
	.byte	0x64
	.long	0x5277
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.byte	0x66
	.long	0x5277
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"inlined_stmts"
	.byte	0x1
	.byte	0x69
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"cloning_p"
	.byte	0x1
	.byte	0x6e
	.long	0x4292
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"tree_pruner"
	.byte	0x1
	.byte	0x71
	.long	0x53f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x26
	.long	.LASF28
	.byte	0x1
	.byte	0x72
	.long	0x625d
	.uleb128 0x2b
	.long	0x6412
	.string	"remap_decl"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.long	0x1e9
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"decl"
	.byte	0x1
	.byte	0x94
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"id"
	.byte	0x1
	.byte	0x95
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.byte	0x97
	.long	0x543a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"fn"
	.byte	0x1
	.byte	0x98
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x6401
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.byte	0xa5
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
	.byte	0xc2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.byte	0xc3
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
	.byte	0xc8
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF29
	.long	0x7135
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12688
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x633f
	.uleb128 0x31
	.long	0x652a
	.string	"remap_block"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF30
	.byte	0x1
	.byte	0xe9
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"decls"
	.byte	0x1
	.byte	0xee
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"id"
	.byte	0x1
	.byte	0xef
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	0x64fe
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"old_block"
	.byte	0x1
	.value	0x102
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"new_block"
	.byte	0x1
	.value	0x103
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"old_var"
	.byte	0x1
	.value	0x104
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x105
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x64dc
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"new_var"
	.byte	0x1
	.value	0x113
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
	.value	0x138
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6519
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x149
	.long	0x543a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF29
	.long	0x7120
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12774
	.byte	0x0
	.uleb128 0x34
	.long	0x658c
	.string	"copy_scope_stmt"
	.byte	0x1
	.value	0x19b
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x198
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x199
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x19a
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x19c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x66a0
	.string	"copy_body_r"
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	0x1e9
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x1b1
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x1b2
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x1b3
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x1b5
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x1b6
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	0x6633
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"return_stmt"
	.byte	0x1
	.value	0x1d2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"goto_stmt"
	.byte	0x1
	.value	0x1d3
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x6655
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"new_decl"
	.byte	0x1
	.value	0x1fe
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x668f
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"decl"
	.byte	0x1
	.value	0x24b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x24b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x24c
	.long	0x543a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF29
	.long	0x711b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12859
	.byte	0x0
	.uleb128 0x37
	.long	0x66e2
	.string	"copy_body"
	.byte	0x1
	.value	0x263
	.byte	0x1
	.long	0x1e9
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x262
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"body"
	.byte	0x1
	.value	0x264
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x6832
	.string	"initialize_inlined_parameters"
	.byte	0x1
	.value	0x27b
	.byte	0x1
	.long	0x1e9
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x275
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"args"
	.byte	0x1
	.value	0x276
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x277
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"init_stmts"
	.byte	0x1
	.value	0x27c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"parms"
	.byte	0x1
	.value	0x27d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"a"
	.byte	0x1
	.value	0x27e
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x27f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	0x6809
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.long	.LASF31
	.byte	0x1
	.value	0x290
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"cleanup"
	.byte	0x1
	.value	0x291
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"var"
	.byte	0x1
	.value	0x293
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x294
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"var_sub"
	.byte	0x1
	.value	0x295
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
	.value	0x2ff
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
	.long	.LASF31
	.byte	0x1
	.value	0x31b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x31c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x68c9
	.string	"declare_return_variable"
	.byte	0x1
	.value	0x33f
	.byte	0x1
	.long	0x1e9
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x337
	.long	0x68c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x338
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x340
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LASF21
	.byte	0x1
	.value	0x341
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"var"
	.byte	0x1
	.value	0x343
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"need_return_decl"
	.byte	0x1
	.value	0x345
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x625d
	.uleb128 0x39
	.long	0x6912
	.byte	0x1
	.string	"tree_inlinable_function_p"
	.byte	0x1
	.value	0x384
	.byte	0x1
	.long	0x2e8
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x383
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x696b
	.string	"find_alloca_call_1"
	.byte	0x1
	.value	0x38e
	.byte	0x1
	.long	0x1e9
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x38b
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x38c
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x38d
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x37
	.long	0x69a5
	.string	"find_alloca_call"
	.byte	0x1
	.value	0x398
	.byte	0x1
	.long	0x1e9
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0x397
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x6a26
	.string	"find_builtin_longjmp_call_1"
	.byte	0x1
	.value	0x3a1
	.byte	0x1
	.long	0x1e9
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x39e
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x39f
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x3a0
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"exp"
	.byte	0x1
	.value	0x3a2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"decl"
	.byte	0x1
	.value	0x3a2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0x6a69
	.string	"find_builtin_longjmp_call"
	.byte	0x1
	.value	0x3b2
	.byte	0x1
	.long	0x1e9
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0x3b1
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x6b82
	.string	"inlinable_function_p"
	.byte	0x1
	.value	0x3be
	.byte	0x1
	.long	0x2e8
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x3bc
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x3bd
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"inlinable"
	.byte	0x1
	.value	0x3bf
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"currfn_insns"
	.byte	0x1
	.value	0x3c0
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"max_inline_insns_single"
	.byte	0x1
	.value	0x3c1
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	0x6b44
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"sum_insns"
	.byte	0x1
	.value	0x409
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
	.value	0x416
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
	.value	0x42d
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
	.value	0x435
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF22
	.byte	0x1
	.value	0x436
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x6ce6
	.string	"expand_call_inline"
	.byte	0x1
	.value	0x449
	.byte	0x1
	.long	0x1e9
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x446
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x447
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x448
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x44a
	.long	0x6412
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x44b
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"expr"
	.byte	0x1
	.value	0x44c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"stmt"
	.byte	0x1
	.value	0x44d
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"chain"
	.byte	0x1
	.value	0x44f
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x450
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF32
	.byte	0x1
	.value	0x451
	.long	0x1e9
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"fn"
	.byte	0x1
	.value	0x455
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"arg_inits"
	.byte	0x1
	.value	0x456
	.long	0x1e9
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"inlined_body"
	.byte	0x1
	.value	0x457
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"st"
	.byte	0x1
	.value	0x458
	.long	0x565b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x6cba
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x463
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x463
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x6cd5
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x500
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF29
	.long	0x7106
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13436
	.byte	0x0
	.uleb128 0x34
	.long	0x6d2c
	.string	"expand_calls_inline"
	.byte	0x1
	.value	0x5ad
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x5ab
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x5ac
	.long	0x6412
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3a
	.long	0x6da2
	.byte	0x1
	.string	"optimize_inline_calls"
	.byte	0x1
	.value	0x5bc
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x5bb
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x5bd
	.long	0x633f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"prev_fn"
	.byte	0x1
	.value	0x5be
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
	.value	0x5e5
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x6e04
	.byte	0x1
	.string	"clone_body"
	.byte	0x1
	.value	0x5f6
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x35
	.string	"clone"
	.byte	0x1
	.value	0x5f4
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x5f4
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"arg_map"
	.byte	0x1
	.value	0x5f5
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x5f7
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x39
	.long	0x6f4c
	.byte	0x1
	.string	"walk_tree"
	.byte	0x1
	.value	0x618
	.byte	0x1
	.long	0x1e9
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x614
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"func"
	.byte	0x1
	.value	0x615
	.long	0x42d6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x616
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"htab_"
	.byte	0x1
	.value	0x617
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"htab"
	.byte	0x1
	.value	0x619
	.long	0x53f8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x61a
	.long	0x9d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF26
	.byte	0x1
	.value	0x61b
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF21
	.byte	0x1
	.value	0x61c
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.string	"tail_recurse"
	.byte	0x1
	.value	0x652
	.long	.L305
	.uleb128 0x2e
	.long	0x6ed7
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x636
	.long	0x664
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2e
	.long	0x6f01
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x663
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x663
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	0x6f1e
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x6c7
	.long	0x2e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x6f3b
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x6e2
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF29
	.long	0x70f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13826
	.byte	0x0
	.uleb128 0x39
	.long	0x6fd0
	.byte	0x1
	.string	"walk_tree_without_duplicates"
	.byte	0x1
	.value	0x711
	.byte	0x1
	.long	0x1e9
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x70e
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"func"
	.byte	0x1
	.value	0x70f
	.long	0x42d6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x710
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF21
	.byte	0x1
	.value	0x712
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"htab"
	.byte	0x1
	.value	0x713
	.long	0x53f8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x704e
	.byte	0x1
	.string	"copy_tree_r"
	.byte	0x1
	.value	0x722
	.byte	0x1
	.long	0x1e9
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x71f
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x720
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0x721
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x723
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
	.value	0x730
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x70e1
	.byte	0x1
	.string	"remap_save_expr"
	.byte	0x1
	.value	0x758
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0x754
	.long	0x42bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"st_"
	.byte	0x1
	.value	0x755
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"fn"
	.byte	0x1
	.value	0x756
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x757
	.long	0x704
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"st"
	.byte	0x1
	.value	0x759
	.long	0x565b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x75a
	.long	0x543a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x762
	.long	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x70f1
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x9
	.byte	0x0
	.uleb128 0xa
	.long	0x70e1
	.uleb128 0x13
	.long	0x7106
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x70f6
	.uleb128 0x13
	.long	0x711b
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x710b
	.uleb128 0xa
	.long	0x710b
	.uleb128 0x13
	.long	0x7135
	.long	0x2e0
	.uleb128 0x14
	.long	0x2f6
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x7125
	.uleb128 0x13
	.long	0x7145
	.long	0x2e0
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x3d
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0x715d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x713a
	.uleb128 0x13
	.long	0x7172
	.long	0x1e9
	.uleb128 0x14
	.long	0x2f6
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3e
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x7162
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
	.value	0xbc8
	.long	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_inline_trees"
	.byte	0x1
	.byte	0x3d
	.long	0x2e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inline_trees
	.uleb128 0x3d
	.string	"warn_inline"
	.byte	0xe
	.byte	0x75
	.long	0x2e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"compiler_params"
	.byte	0xf
	.byte	0x3a
	.long	0x7207
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4dc2
	.uleb128 0x3d
	.string	"htab_hash_pointer"
	.byte	0xc
	.byte	0xa0
	.long	0x52a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"htab_eq_pointer"
	.byte	0xc
	.byte	0xa3
	.long	0x52c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF27
	.byte	0x10
	.value	0x176
	.long	0x724f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x5d3a
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
	.long	0x7255
	.long	0x68cf
	.string	"tree_inlinable_function_p"
	.long	0x6d2c
	.string	"optimize_inline_calls"
	.long	0x6da2
	.string	"clone_body"
	.long	0x6e04
	.string	"walk_tree"
	.long	0x6f4c
	.string	"walk_tree_without_duplicates"
	.long	0x6fd0
	.string	"copy_tree_r"
	.long	0x704e
	.string	"remap_save_expr"
	.long	0x71b9
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
.LASF4:
	.string	"lang_flag_0"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF10:
	.string	"lang_flag_6"
.LASF28:
	.string	"inline_data"
.LASF23:
	.string	"mem_attrs"
.LASF0:
	.string	"common"
.LASF19:
	.string	"lang_specific"
.LASF21:
	.string	"result"
.LASF7:
	.string	"lang_flag_3"
.LASF20:
	.string	"function"
.LASF1:
	.string	"unsigned int"
.LASF14:
	.string	"abstract_origin"
.LASF17:
	.string	"pointer_depth"
.LASF30:
	.string	"scope_stmt"
.LASF18:
	.string	"user_align"
.LASF32:
	.string	"use_stmt"
.LASF27:
	.string	"lang_hooks"
.LASF15:
	.string	"size_unit"
.LASF26:
	.string	"walk_subtrees"
.LASF12:
	.string	"value"
.LASF3:
	.string	"built_in_class"
.LASF8:
	.string	"lang_flag_4"
.LASF9:
	.string	"lang_flag_5"
.LASF13:
	.string	"abstract_flag"
.LASF24:
	.string	"param_info"
.LASF11:
	.string	"ht_identifier"
.LASF25:
	.string	"data"
.LASF31:
	.string	"init_stmt"
.LASF29:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF22:
	.string	"inlined_fns"
.LASF16:
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
