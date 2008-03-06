	.file	"sched-rgn.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	is_cfg_nonregular, @function
is_cfg_nonregular:
.LFB15:
	.file 1 "../../../kg++fe/gnu/sched-rgn.c"
	.loc 1 316 0
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
	.loc 1 323 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 324 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L2:
	.loc 1 327 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L5
	.loc 1 328 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L5:
	.loc 1 332 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L7
	.loc 1 333 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L7:
	.loc 1 338 0
	call	current_function_has_exception_handlers@PLT
	testb	%al, %al
	je	.L9
	.loc 1 339 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L9:
	.loc 1 344 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L11
.L12:
	.loc 1 345 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L13:
	.loc 1 347 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 348 0
	movl	-12(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L14
	cmpl	$43, -12(%ebp)
	je	.L14
.LBB2:
	.loc 1 350 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 352 0
	cmpl	$0, -8(%ebp)
	je	.L14
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L18
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$13, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L14
.L18:
	.loc 1 356 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L14:
.LBE2:
	.loc 1 359 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L20
	.loc 1 345 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 361 0
	jmp	.L13
.L20:
	.loc 1 344 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L11:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L12
	.loc 1 364 0
	movl	$0, -24(%ebp)
.L4:
	movl	-24(%ebp), %eax
	.loc 1 365 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	is_cfg_nonregular, .-is_cfg_nonregular
	.type	build_control_flow, @function
build_control_flow:
.LFB16:
	.loc 1 378 0
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
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 391 0
	movl	$0, -20(%ebp)
	.loc 1 392 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L25
.L26:
	.loc 1 394 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L27
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L29
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L29
.L27:
	.loc 1 397 0
	movl	$1, -20(%ebp)
.L29:
	.loc 1 392 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L25:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L26
	.loc 1 401 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, in_edges@GOTOFF(%ebx)
	.loc 1 402 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, out_edges@GOTOFF(%ebx)
	.loc 1 403 0
	movl	-16(%ebp), %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, edge_table@GOTOFF(%ebx)
	.loc 1 405 0
	movl	$0, nr_edges@GOTOFF(%ebx)
	.loc 1 406 0
	movl	$0, -24(%ebp)
	jmp	.L32
.L33:
.LBB3:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 410 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L34
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L34
	.loc 1 412 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_edge
.L34:
.LBE3:
	.loc 1 406 0
	addl	$1, -24(%ebp)
.L32:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L33
	.loc 1 416 0
	movl	nr_edges@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, nr_edges@GOTOFF(%ebx)
	.loc 1 418 0
	movl	-20(%ebp), %eax
	.loc 1 419 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	build_control_flow, .-build_control_flow
	.type	new_edge, @function
new_edge:
.LFB17:
	.loc 1 430 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$16, %esp
.LCFI10:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 435 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 436 0
	jmp	.L40
.L41:
	.loc 1 438 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L42
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L51
.L42:
	.loc 1 444 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 446 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L45
.L40:
	.loc 1 436 0
	cmpl	$0, -8(%ebp)
	jne	.L41
.L45:
	.loc 1 450 0
	movl	nr_edges@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, nr_edges@GOTOFF(%ecx)
	movl	nr_edges@GOTOFF(%ecx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 452 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 453 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 455 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 457 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 458 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 459 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L48
.L46:
	.loc 1 463 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 464 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L48:
	.loc 1 467 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L49
	.loc 1 469 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 470 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 471 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L51
.L49:
	.loc 1 475 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 476 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
.L51:
	.loc 1 478 0
	leave
	ret
.LFE17:
	.size	new_edge, .-new_edge
	.type	extract_bitlst, @function
extract_bitlst:
.LFB18:
	.loc 1 486 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%edi
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$52, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 490 0
	movl	$0, bitlst_table_last@GOTOFF(%ebx)
	.loc 1 492 0
	movl	bitlst_table_last@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bitlst_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 493 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
.LBB4:
	.loc 1 496 0
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L53
.L54:
.LBB5:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L55
	jmp	.L57
.L58:
.LBB6:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L63
	movl	%eax, %edx
	xorl	%eax, %eax
.L63:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L59
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	bitlst_table_last@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bitlst_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, bitlst_table_last@GOTOFF(%ebx)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L55
.L59:
.LBE6:
	addl	$1, -28(%ebp)
.L57:
	cmpl	$63, -28(%ebp)
	jbe	.L58
.L55:
.LBE5:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L53:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L54
.LBE4:
	.loc 1 502 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	extract_bitlst, .-extract_bitlst
	.section	.rodata
	.type	__FUNCTION__.10959, @object
	.size	__FUNCTION__.10959, 14
__FUNCTION__.10959:
	.string	"debug_regions"
	.align 4
.LC0:
	.string	"\n;;   ------------ REGIONS ----------\n\n"
.LC1:
	.string	";;\trgn %d nr_blocks %d:\n"
.LC2:
	.string	";;\tbb/block: "
	.align 4
.LC3:
	.string	"../../../kg++fe/gnu/sched-rgn.c"
.LC4:
	.string	" %d/%d "
.LC5:
	.string	"\n\n"
	.text
.globl debug_regions
	.type	debug_regions, @function
debug_regions:
.LFB19:
	.loc 1 510 0
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
	.loc 1 513 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 514 0
	movl	$0, -12(%ebp)
	jmp	.L65
.L66:
	.loc 1 516 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 518 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 520 0
	movl	$0, -8(%ebp)
	jmp	.L67
.L68:
	.loc 1 522 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, current_blocks@GOTOFF(%ebx)
	.loc 1 524 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L69
	.loc 1 525 0
	leal	__FUNCTION__.10959@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$525, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L69:
	.loc 1 527 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 520 0
	addl	$1, -8(%ebp)
.L67:
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L68
	.loc 1 530 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 514 0
	addl	$1, -12(%ebp)
.L65:
	movl	nr_regions@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L66
	.loc 1 532 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	debug_regions, .-debug_regions
	.type	find_single_block_region, @function
find_single_block_region:
.LFB20:
	.loc 1 540 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$16, %esp
.LCFI23:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 543 0
	movl	$0, nr_regions@GOTOFF(%ecx)
	.loc 1 545 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L75
.L76:
	.loc 1 547 0
	movl	nr_regions@GOTOFF(%ecx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 548 0
	movl	nr_regions@GOTOFF(%ecx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 549 0
	movl	nr_regions@GOTOFF(%ecx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	nr_regions@GOTOFF(%ecx), %eax
	movl	%eax, 4(%edx)
	.loc 1 550 0
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	nr_regions@GOTOFF(%ecx), %eax
	movl	%eax, (%edx)
	.loc 1 551 0
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 552 0
	movl	nr_regions@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, nr_regions@GOTOFF(%ecx)
	.loc 1 545 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
.L75:
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jne	.L76
	.loc 1 554 0
	leave
	ret
.LFE20:
	.size	find_single_block_region, .-find_single_block_region
	.type	too_large, @function
too_large:
.LFB21:
	.loc 1 563 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%esi
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$4, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 564 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 565 0
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %esi
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 567 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jg	.L80
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$100, %eax
	jle	.L82
.L80:
	.loc 1 568 0
	movl	$1, -12(%ebp)
	jmp	.L83
.L82:
	.loc 1 570 0
	movl	$0, -12(%ebp)
.L83:
	movl	-12(%ebp), %eax
	.loc 1 571 0
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	too_large, .-too_large
	.type	find_rgns, @function
find_rgns:
.LFB22:
	.loc 1 623 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%edi
.LCFI31:
	pushl	%esi
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$412, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 625 0
	movb	$1, -17(%ebp)
	.loc 1 627 0
	movl	$0, -100(%ebp)
	movl	$0, -92(%ebp)
	movl	out_edges@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 647 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 659 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -140(%ebp)
	.loc 1 660 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -136(%ebp)
	.loc 1 661 0
	movl	nr_edges@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -132(%ebp)
	.loc 1 663 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 664 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 666 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 667 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 669 0
	movl	nr_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 670 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 672 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 673 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 675 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 676 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 678 0
	movl	$0, -112(%ebp)
	jmp	.L86
.L87:
	.loc 1 679 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 678 0
	addl	$1, -112(%ebp)
.L86:
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -112(%ebp)
	jl	.L87
	.loc 1 683 0
	movl	$-1, -96(%ebp)
	jmp	.L215
.L89:
.L215:
	.loc 1 686 0
	cmpl	$0, -88(%ebp)
	je	.L93
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L241
	movl	%edi, %esi
	xorl	%edi, %edi
.L241:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L92
	.loc 1 691 0
	jmp	.L93
.L94:
	.loc 1 695 0
	movl	-96(%ebp), %eax
	sall	$2, %eax
	addl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	subl	$1, -96(%ebp)
	.loc 1 696 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 697 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 698 0
	movl	-120(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -396(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-120(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L240
	movl	%eax, %edx
	xorl	%eax, %eax
.L240:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-392(%ebp), %eax
	andl	%esi, %eax
	movl	-388(%ebp), %edx
	andl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	-396(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 699 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L95
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L239
	movl	%edi, %esi
	xorl	%edi, %edi
.L239:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L95
	.loc 1 700 0
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L98
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L95
.L98:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L100
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -380(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -376(%ebp)
	movl	%edi, -372(%ebp)
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L238
	movl	%eax, %edx
	xorl	%eax, %eax
.L238:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-376(%ebp), %eax
	andl	%esi, %eax
	movl	-372(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-380(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L95
.L100:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L95
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -364(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L237
	movl	%eax, %edx
	xorl	%eax, %eax
.L237:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-360(%ebp), %eax
	andl	%esi, %eax
	movl	-356(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-364(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
.L95:
	.loc 1 701 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
.L93:
	.loc 1 691 0
	cmpl	$0, -96(%ebp)
	js	.L103
	cmpl	$0, -88(%ebp)
	je	.L94
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L236
	movl	%edi, %esi
	xorl	%edi, %edi
.L236:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L94
.L103:
	.loc 1 705 0
	cmpl	$0, -96(%ebp)
	jns	.L89
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L235
	movl	%edi, %esi
	xorl	%edi, %edi
.L235:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L108
	.loc 1 709 0
	jmp	.L89
.L92:
	.loc 1 713 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 714 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 715 0
	movl	-124(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -348(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-124(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L233
	movl	%esi, %edi
	xorl	%esi, %esi
.L233:
	movl	-344(%ebp), %eax
	orl	%esi, %eax
	movl	-340(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	-348(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 716 0
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-136(%ebp), %edx
	addl	$1, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 721 0
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-56(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-120(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L234
	movl	%edi, %esi
	xorl	%edi, %edi
.L234:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L110
	.loc 1 723 0
	movb	$0, -17(%ebp)
	.loc 1 724 0
	movl	-120(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -332(%ebp)
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -328(%ebp)
	movl	%edi, -324(%ebp)
	movl	-120(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L232
	movl	%esi, %edi
	xorl	%esi, %esi
.L232:
	movl	-328(%ebp), %eax
	orl	%esi, %eax
	movl	-324(%ebp), %edx
	orl	%edi, %edx
	movl	-68(%ebp), %ecx
	movl	-332(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 725 0
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L112
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L114
.L112:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L115
	movl	-120(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -316(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -312(%ebp)
	movl	%edi, -308(%ebp)
	movl	-120(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L231
	movl	%eax, %edx
	xorl	%eax, %eax
.L231:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-312(%ebp), %eax
	andl	%esi, %eax
	movl	-308(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-316(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L114
.L115:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L114
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -300(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L230
	movl	%eax, %edx
	xorl	%eax, %eax
.L230:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-296(%ebp), %eax
	andl	%esi, %eax
	movl	-292(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-300(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
.L114:
	.loc 1 726 0
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -284(%ebp)
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -280(%ebp)
	movl	%edi, -276(%ebp)
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L229
	movl	%esi, %edi
	xorl	%esi, %esi
.L229:
	movl	-280(%ebp), %eax
	orl	%esi, %eax
	movl	-276(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	-284(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 727 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 728 0
	jmp	.L89
.L110:
	.loc 1 734 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L118
	.loc 1 736 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L120
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L228
	movl	%edi, %esi
	xorl	%edi, %edi
.L228:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L120
	.loc 1 737 0
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L123
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L120
.L123:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L125
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -268(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -264(%ebp)
	movl	%edi, -260(%ebp)
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L227
	movl	%eax, %edx
	xorl	%eax, %eax
.L227:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-264(%ebp), %eax
	andl	%esi, %eax
	movl	-260(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-268(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L120
.L125:
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L120
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -252(%ebp)
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -248(%ebp)
	movl	%edi, -244(%ebp)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L226
	movl	%eax, %edx
	xorl	%eax, %eax
.L226:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-248(%ebp), %eax
	andl	%esi, %eax
	movl	-244(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	-252(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-140(%ebp), %edx
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
.L120:
	.loc 1 738 0
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -236(%ebp)
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -232(%ebp)
	movl	%edi, -228(%ebp)
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L225
	movl	%esi, %edi
	xorl	%esi, %esi
.L225:
	movl	-232(%ebp), %eax
	orl	%esi, %eax
	movl	-228(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	-236(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 739 0
	movl	-88(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 740 0
	jmp	.L89
.L118:
	.loc 1 744 0
	addl	$1, -96(%ebp)
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-132(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 745 0
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -220(%ebp)
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L224
	movl	%esi, %edi
	xorl	%esi, %esi
.L224:
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	-220(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 746 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 760 0
	cmpl	$0, -88(%ebp)
	jne	.L89
	.loc 1 761 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-136(%ebp), %edx
	addl	$1, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 762 0
	jmp	.L89
.L108:
	.loc 1 771 0
	movl	$0, -84(%ebp)
	.loc 1 772 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L129
.L130:
	.loc 1 773 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L131
	.loc 1 775 0
	movl	$1, -84(%ebp)
	.loc 1 776 0
	jmp	.L133
.L131:
	.loc 1 772 0
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
.L129:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jne	.L130
.L133:
	.loc 1 781 0
	movl	-136(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 783 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L134
.L135:
	.loc 1 784 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-128(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 783 0
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
.L134:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jne	.L135
	.loc 1 785 0
	movl	$0, -112(%ebp)
	jmp	.L137
.L138:
.LBB7:
	.loc 1 787 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-112(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 789 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L139
	.loc 1 790 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-128(%ebp), %edx
	movl	(%edx), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
.L139:
.LBE7:
	.loc 1 785 0
	addl	$1, -112(%ebp)
.L137:
	movl	-112(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L138
	.loc 1 795 0
	cmpl	$0, -84(%ebp)
	jne	.L142
.LBB8:
	.loc 1 799 0
	cmpb	$0, -17(%ebp)
	je	.L144
	.loc 1 800 0
	movl	-68(%ebp), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	-68(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
.L144:
	.loc 1 805 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 809 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L146
.L147:
	.loc 1 811 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-68(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L223
	movl	%edi, %esi
	xorl	%edi, %edi
.L223:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L148
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L222
	movl	%edi, %esi
	xorl	%edi, %edi
.L222:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L148
.LBB9:
	.loc 1 827 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L151
.L152:
	.loc 1 831 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L153
	movl	-76(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L153
	.loc 1 835 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L156
.L153:
	.loc 1 827 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L151:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L152
.L156:
	.loc 1 843 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L148
	.loc 1 848 0
	movl	$-1, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 849 0
	movl	$0, -80(%ebp)
	.loc 1 850 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 854 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L158
.L159:
	.loc 1 855 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L160
	.loc 1 856 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-128(%ebp), %edx
	movl	(%edx), %eax
	subl	$1, %eax
	movl	%eax, (%edx)
.L160:
	.loc 1 854 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L158:
	cmpl	$0, -40(%ebp)
	jne	.L159
	.loc 1 859 0
	movl	$1, -144(%ebp)
	.loc 1 860 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -148(%ebp)
	.loc 1 867 0
	cmpb	$0, -17(%ebp)
	je	.L163
	.loc 1 869 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L165
.L166:
	.loc 1 872 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L167
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L167
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L167
	.loc 1 876 0
	addl	$1, -104(%ebp)
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 877 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -204(%ebp)
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L221
	movl	%esi, %edi
	xorl	%esi, %esi
.L221:
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	-204(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 879 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	leal	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	too_large
	testl	%eax, %eax
	je	.L167
	.loc 1 881 0
	movl	$1, -80(%ebp)
	.loc 1 882 0
	jmp	.L216
.L167:
	.loc 1 869 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L165:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L166
	jmp	.L216
.L163:
.LBB10:
	.loc 1 890 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L174
.L175:
	.loc 1 892 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L176
	.loc 1 895 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 897 0
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L176
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	.L176
	.loc 1 900 0
	addl	$1, -104(%ebp)
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 901 0
	movl	-124(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -188(%ebp)
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-124(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L220
	movl	%esi, %edi
	xorl	%esi, %esi
.L220:
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	-188(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 903 0
	leal	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	too_large
	testl	%eax, %eax
	je	.L176
	.loc 1 905 0
	movl	$1, -80(%ebp)
	.loc 1 906 0
	jmp	.L216
.L176:
	.loc 1 890 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L174:
	cmpl	$0, -32(%ebp)
	jne	.L175
	.loc 1 942 0
	jmp	.L216
.L182:
.LBE10:
.LBB11:
	.loc 1 945 0
	addl	$1, -108(%ebp)
	movl	-108(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 947 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L183
.L184:
	.loc 1 949 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 953 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L185
	movl	-124(%ebp), %eax
	sall	$2, %eax
	addl	-140(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-116(%ebp), %eax
	je	.L187
.L185:
	.loc 1 956 0
	movl	$-1, -104(%ebp)
	.loc 1 957 0
	jmp	.L181
.L187:
	.loc 1 959 0
	movl	-124(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-60(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-124(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L219
	movl	%edi, %esi
	xorl	%edi, %edi
.L219:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L188
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	.L188
	.loc 1 961 0
	addl	$1, -104(%ebp)
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 962 0
	movl	-124(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -172(%ebp)
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	-124(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L218
	movl	%esi, %edi
	xorl	%esi, %esi
.L218:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	-172(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 964 0
	leal	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	too_large
	testl	%eax, %eax
	je	.L188
	.loc 1 966 0
	movl	$1, -80(%ebp)
	.loc 1 967 0
	jmp	.L181
.L188:
	.loc 1 947 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L183:
	cmpl	$0, -28(%ebp)
	jne	.L184
.L181:
.L216:
.LBE11:
	.loc 1 942 0
	movl	-108(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jge	.L192
	cmpl	$0, -80(%ebp)
	je	.L182
.L192:
	.loc 1 973 0
	cmpl	$0, -104(%ebp)
	js	.L148
	cmpl	$0, -80(%ebp)
	jne	.L148
	.loc 1 976 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-128(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 977 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 978 0
	movl	nr_regions@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 979 0
	movl	nr_regions@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%eax, 4(%edx)
	addl	$1, -92(%ebp)
	.loc 1 980 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	nr_regions@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 981 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	$0, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 987 0
	jmp	.L217
.L197:
	.loc 1 989 0
	cmpl	$0, -108(%ebp)
	jns	.L198
	.loc 1 990 0
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
.L198:
	.loc 1 991 0
	movl	-108(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 992 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-128(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L200
.LBB12:
	.loc 1 996 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-128(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 997 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -92(%ebp)
	.loc 1 998 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	addl	$1, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 999 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	nr_regions@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 1000 0
	movl	-108(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-104(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	subl	$1, -104(%ebp)
	.loc 1 1002 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1003 0
	jmp	.L202
.L203:
	.loc 1 1005 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L204
	.loc 1 1006 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-128(%ebp), %edx
	movl	(%edx), %eax
	subl	$1, %eax
	movl	%eax, (%edx)
.L204:
	.loc 1 1004 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L202:
	.loc 1 1003 0
	cmpl	$0, -24(%ebp)
	jne	.L203
	jmp	.L196
.L200:
.LBE12:
	.loc 1 1009 0
	subl	$1, -108(%ebp)
.L196:
.L217:
	.loc 1 987 0
	cmpl	$0, -104(%ebp)
	jns	.L197
	.loc 1 1011 0
	movl	nr_regions@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, nr_regions@GOTOFF(%ebx)
.L148:
.LBE9:
	.loc 1 809 0
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
.L146:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jne	.L147
	.loc 1 1015 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L142:
.LBE8:
	.loc 1 1020 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L209
.L210:
	.loc 1 1021 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-128(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L211
	.loc 1 1023 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1024 0
	movl	nr_regions@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 1025 0
	movl	nr_regions@GOTOFF(%ebx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%eax, 4(%edx)
	addl	$1, -92(%ebp)
	.loc 1 1026 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	nr_regions@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, %eax
	movl	%eax, nr_regions@GOTOFF(%ebx)
	.loc 1 1027 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L211:
	.loc 1 1020 0
	movl	-76(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -76(%ebp)
.L209:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jne	.L210
	.loc 1 1030 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1031 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1032 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1033 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1034 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1035 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1036 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1037 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1038 0
	addl	$412, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	find_rgns, .-find_rgns
	.section	.rodata
.LC10:
	.string	";;  bb_prob(%d, %d) = %3d\n"
	.align 8
.LC8:
	.long	-858993459
	.long	1072483532
	.align 8
.LC9:
	.long	0
	.long	1079574528
	.text
	.type	compute_dom_prob_ps, @function
compute_dom_prob_ps:
.LFB23:
	.loc 1 1048 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%edi
.LCFI37:
	pushl	%esi
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$140, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1052 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	$0x00000000, %eax
	movl	%eax, (%edx)
	.loc 1 1053 0
	cmpl	$0, 8(%ebp)
	jne	.L243
	.loc 1 1055 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 1056 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	$0x3f800000, %eax
	movl	%eax, (%edx)
	.loc 1 1057 0
	jmp	.L259
.L243:
	.loc 1 1060 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1063 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
.L246:
	.loc 1 1067 0
	movl	-44(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1068 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
	.loc 1 1069 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	.loc 1 1071 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L262
	movl	%esi, %edi
	xorl	%esi, %esi
.L262:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1073 0
	movl	$1, -24(%ebp)
	.loc 1 1074 0
	movl	$0, -20(%ebp)
	.loc 1 1075 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1076 0
	movl	-32(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1078 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	.loc 1 1080 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L263
	movl	%esi, %edi
	xorl	%esi, %esi
.L263:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1083 0
	movl	-32(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L249
	.loc 1 1085 0
	addl	$1, -20(%ebp)
	.loc 1 1087 0
	jmp	.L249
.L250:
	.loc 1 1089 0
	addl	$1, -24(%ebp)
	.loc 1 1091 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L251
	.loc 1 1093 0
	addl	$1, -20(%ebp)
.L251:
	.loc 1 1094 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L261
	movl	%esi, %edi
	xorl	%esi, %esi
.L261:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1095 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L249:
	.loc 1 1087 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L250
	.loc 1 1102 0
	movl	-20(%ebp), %eax
	subl	%eax, -24(%ebp)
	.loc 1 1103 0
	cmpl	$0, -20(%ebp)
	jle	.L254
	.loc 1 1104 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	fldl	.LC8@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fildl	-24(%ebp)
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	-52(%ebp)
	flds	-52(%ebp)
	fstps	(%ecx)
	jmp	.L256
.L254:
	.loc 1 1106 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	fildl	-24(%ebp)
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	(%ecx)
.L256:
	.loc 1 1107 0
	movl	-44(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1109 0
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L246
	.loc 1 1111 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L260
	movl	%esi, %edi
	xorl	%esi, %esi
.L260:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1112 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 1114 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L259
	.loc 1 1115 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	fldl	.LC9@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-54(%ebp)
	movzwl	-54(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -56(%ebp)
	fldcw	-56(%ebp)
	fistpl	-60(%ebp)
	fldcw	-54(%ebp)
	movl	-60(%ebp), %esi
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L259:
	.loc 1 1117 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	compute_dom_prob_ps, .-compute_dom_prob_ps
	.type	split_edges, @function
split_edges:
.LFB24:
	.loc 1 1129 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$36, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1130 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1131 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 1133 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	pot_split@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 1134 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bitlst
	.loc 1 1135 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1136 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	split_edges, .-split_edges
	.section	.rodata
	.type	__FUNCTION__.12558, @object
	.size	__FUNCTION__.12558, 17
__FUNCTION__.12558:
	.string	"compute_trg_info"
	.align 8
.LC11:
	.long	0
	.long	1079574528
	.text
	.type	compute_trg_info, @function
compute_trg_info:
.LFB25:
	.loc 1 1145 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%edi
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$76, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1145 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1152 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1153 0
	movl	-52(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 1154 0
	movl	-52(%ebp), %eax
	movb	$0, 1(%eax)
	.loc 1 1155 0
	movl	-52(%ebp), %eax
	movl	$100, 4(%eax)
	.loc 1 1157 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.L267
.L268:
	.loc 1 1159 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1161 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	dom@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L298
	movl	%edx, %eax
	xorl	%edx, %edx
.L298:
	movl	%eax, %edx
	andl	$1, %edx
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 1162 0
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L269
	.loc 1 1164 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	prob@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	flds	(%eax)
	fdivrp	%st, %st(1)
	fldl	.LC11@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-62(%ebp)
	movzwl	-62(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -64(%ebp)
	fldcw	-64(%ebp)
	fistpl	-68(%ebp)
	fldcw	-62(%ebp)
	movl	-68(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1165 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$39, %eax
	setg	%dl
	movl	-52(%ebp), %eax
	movb	%dl, (%eax)
.L269:
	.loc 1 1168 0
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L271
	.loc 1 1170 0
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	split_edges
	.loc 1 1171 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	setne	%dl
	movl	-52(%ebp), %eax
	movb	%dl, 1(%eax)
	.loc 1 1172 0
	movl	-52(%ebp), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L271
	movl	flag_schedule_speculative@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L271
	.loc 1 1173 0
	movl	-52(%ebp), %eax
	movb	$0, (%eax)
.L271:
	.loc 1 1176 0
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L275
.LBB13:
	.loc 1 1182 0
	movl	bblst_last@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bblst_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1183 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1184 0
	movl	$0, -36(%ebp)
	jmp	.L277
.L278:
	.loc 1 1185 0
	movl	bblst_last@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bblst_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-60(%ebp), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1184 0
	movl	bblst_last@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, bblst_last@GOTOFF(%ebx)
	addl	$1, -36(%ebp)
.L277:
	movl	-56(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jg	.L278
	.loc 1 1187 0
	movl	bblst_last@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bblst_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1195 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1196 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1198 0
	movl	$0, -44(%ebp)
	.loc 1 1199 0
	movl	$0, -36(%ebp)
	jmp	.L280
.L281:
	.loc 1 1201 0
	movl	-60(%ebp), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1202 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L282:
	.loc 1 1205 0
	movl	-24(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L283
	.loc 1 1207 0
	movl	$0, -32(%ebp)
	jmp	.L285
.L286:
	.loc 1 1208 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-60(%ebp), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L287
	.loc 1 1207 0
	addl	$1, -32(%ebp)
.L285:
	movl	-56(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jg	.L286
.L287:
	.loc 1 1211 0
	movl	-56(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jg	.L283
	.loc 1 1213 0
	movl	bblst_last@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bblst_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-24(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esi)
	leal	1(%ecx), %eax
	movl	%eax, bblst_last@GOTOFF(%ebx)
	.loc 1 1214 0
	movl	-24(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	addl	-20(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 1215 0
	addl	$1, -44(%ebp)
.L283:
	.loc 1 1219 0
	movl	-24(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1221 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L282
	.loc 1 1199 0
	addl	$1, -36(%ebp)
.L280:
	movl	-56(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jg	.L281
	.loc 1 1223 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1226 0
	movl	bblst_last@GOTOFF(%ebx), %edx
	movl	bblst_size@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L294
	.loc 1 1227 0
	leal	__FUNCTION__.12558@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1227, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L275:
.LBE13:
	.loc 1 1231 0
	movl	-52(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-52(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1233 0
	movl	-52(%ebp), %eax
	movb	$0, 1(%eax)
	.loc 1 1234 0
	movl	-52(%ebp), %eax
	movl	$0, 4(%eax)
.L294:
	.loc 1 1157 0
	addl	$1, -40(%ebp)
.L267:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L268
	.loc 1 1237 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L297
	call	__stack_chk_fail_local
.L297:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	compute_trg_info, .-compute_trg_info
	.section	.rodata
.LC12:
	.string	"src b %d bb %d speculative \n"
.LC13:
	.string	"split path: "
.LC14:
	.string	" %d "
.LC15:
	.string	"update path: "
.LC16:
	.string	" src %d equivalent\n"
	.text
.globl debug_candidate
	.type	debug_candidate, @function
debug_candidate:
.LFB26:
	.loc 1 1244 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$36, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1245 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L310
	.loc 1 1248 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L302
.LBB14:
	.loc 1 1251 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1253 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1254 0
	movl	$0, -16(%ebp)
	jmp	.L304
.L305:
.LBB15:
	.loc 1 1256 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1258 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.LBE15:
	.loc 1 1254 0
	addl	$1, -16(%ebp)
.L304:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L305
	.loc 1 1260 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1262 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1263 0
	movl	$0, -16(%ebp)
	jmp	.L307
.L308:
.LBB16:
	.loc 1 1265 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1267 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.LBE16:
	.loc 1 1263 0
	addl	$1, -16(%ebp)
.L307:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L308
	.loc 1 1269 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	jmp	.L310
.L302:
.LBE14:
	.loc 1 1273 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L310:
	.loc 1 1275 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	debug_candidate, .-debug_candidate
	.section	.rodata
	.align 4
.LC17:
	.string	"----------- candidate table: target: b=%d bb=%d ---\n"
	.text
.globl debug_candidates
	.type	debug_candidates, @function
debug_candidates:
.LFB27:
	.loc 1 1282 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$36, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1285 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1287 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L312
.L313:
	.loc 1 1288 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_candidate@PLT
	.loc 1 1287 0
	addl	$1, -8(%ebp)
.L312:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L313
	.loc 1 1289 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	debug_candidates, .-debug_candidates
	.type	check_live_1, @function
check_live_1:
.LFB28:
	.loc 1 1300 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$52, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1303 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1305 0
	cmpl	$0, -24(%ebp)
	jne	.L320
	.loc 1 1306 0
	movl	$1, -40(%ebp)
	jmp	.L319
.L321:
	.loc 1 1311 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L320:
	.loc 1 1308 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L321
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L321
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L321
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L321
	.loc 1 1313 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L326
.LBB17:
	.loc 1 1317 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L328
.L329:
	.loc 1 1318 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L330
	.loc 1 1319 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live_1
	testl	%eax, %eax
	je	.L330
	.loc 1 1320 0
	movl	$1, -40(%ebp)
	jmp	.L319
.L330:
	.loc 1 1317 0
	subl	$1, -20(%ebp)
.L328:
	cmpl	$0, -20(%ebp)
	jns	.L329
	.loc 1 1322 0
	movl	$0, -40(%ebp)
	jmp	.L319
.L326:
.LBE17:
	.loc 1 1325 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L334
	.loc 1 1326 0
	movl	$1, -40(%ebp)
	jmp	.L319
.L334:
	.loc 1 1328 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1330 0
	cmpl	$175, -28(%ebp)
	jg	.L336
	movl	-28(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L336
	.loc 1 1333 0
	movl	$0, -40(%ebp)
	jmp	.L319
.L336:
	.loc 1 1337 0
	cmpl	$175, -28(%ebp)
	jg	.L339
.LBB18:
	.loc 1 1340 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1341 0
	jmp	.L341
.L342:
	.loc 1 1343 0
	movl	$0, -32(%ebp)
	jmp	.L343
.L344:
.LBB19:
	.loc 1 1345 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1347 0
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %ecx
	addl	%eax, %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L345
	.loc 1 1350 0
	movl	$0, -40(%ebp)
	jmp	.L319
.L345:
.LBE19:
	.loc 1 1343 0
	addl	$1, -32(%ebp)
.L343:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L344
.L341:
	.loc 1 1341 0
	subl	$1, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jns	.L342
	jmp	.L348
.L339:
.LBE18:
	.loc 1 1358 0
	movl	$0, -32(%ebp)
	jmp	.L349
.L350:
.LBB20:
	.loc 1 1360 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1362 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L351
	.loc 1 1364 0
	movl	$0, -40(%ebp)
	jmp	.L319
.L351:
.LBE20:
	.loc 1 1358 0
	addl	$1, -32(%ebp)
.L349:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L350
.L348:
	.loc 1 1370 0
	movl	$1, -40(%ebp)
.L319:
	movl	-40(%ebp), %eax
	.loc 1 1371 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	check_live_1, .-check_live_1
	.type	update_live_1, @function
update_live_1:
.LFB29:
	.loc 1 1380 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$52, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1383 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1385 0
	cmpl	$0, -24(%ebp)
	je	.L382
	.loc 1 1388 0
	jmp	.L357
.L358:
	.loc 1 1391 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L357:
	.loc 1 1388 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L358
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L358
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L358
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L358
	.loc 1 1393 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L363
.LBB21:
	.loc 1 1397 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L365
.L366:
	.loc 1 1398 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L367
	.loc 1 1399 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_live_1
.L367:
	.loc 1 1397 0
	subl	$1, -20(%ebp)
.L365:
	cmpl	$0, -20(%ebp)
	jns	.L366
	.loc 1 1401 0
	jmp	.L382
.L363:
.LBE21:
	.loc 1 1404 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L382
	.loc 1 1410 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1412 0
	cmpl	$175, -28(%ebp)
	jg	.L371
	movl	-28(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L382
.L371:
	.loc 1 1414 0
	cmpl	$175, -28(%ebp)
	jg	.L373
.LBB22:
	.loc 1 1416 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1417 0
	jmp	.L375
.L376:
	.loc 1 1419 0
	movl	$0, -32(%ebp)
	jmp	.L377
.L378:
.LBB23:
	.loc 1 1421 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1423 0
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %ecx
	addl	%eax, %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE23:
	.loc 1 1419 0
	addl	$1, -32(%ebp)
.L377:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L378
.L375:
	.loc 1 1417 0
	subl	$1, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jns	.L376
	jmp	.L382
.L373:
.LBE22:
	.loc 1 1430 0
	movl	$0, -32(%ebp)
	jmp	.L380
.L381:
.LBB24:
	.loc 1 1432 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1434 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.LBE24:
	.loc 1 1430 0
	addl	$1, -32(%ebp)
.L380:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L381
.L382:
	.loc 1 1438 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	update_live_1, .-update_live_1
	.type	check_live, @function
check_live:
.LFB30:
	.loc 1 1448 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	subl	$40, %esp
.LCFI69:
	.loc 1 1450 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L384
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L386
.L384:
	.loc 1 1452 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live_1
	movl	%eax, -20(%ebp)
	jmp	.L387
.L386:
	.loc 1 1453 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L388
.LBB25:
	.loc 1 1456 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L390
.L391:
	.loc 1 1457 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L392
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L394
.L392:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live_1
	testl	%eax, %eax
	jne	.L394
	.loc 1 1460 0
	movl	$0, -20(%ebp)
	jmp	.L387
.L394:
	.loc 1 1456 0
	subl	$1, -4(%ebp)
.L390:
	cmpl	$0, -4(%ebp)
	jns	.L391
	.loc 1 1462 0
	movl	$1, -20(%ebp)
	jmp	.L387
.L388:
.LBE25:
	.loc 1 1465 0
	movl	$1, -20(%ebp)
.L387:
	movl	-20(%ebp), %eax
	.loc 1 1466 0
	leave
	ret
.LFE30:
	.size	check_live, .-check_live
	.type	update_live, @function
update_live:
.LFB31:
	.loc 1 1475 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	subl	$24, %esp
.LCFI72:
	.loc 1 1477 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L399
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L401
.L399:
	.loc 1 1479 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_live_1
	.loc 1 1477 0
	jmp	.L409
.L401:
	.loc 1 1480 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L409
.LBB26:
	.loc 1 1483 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L404
.L405:
	.loc 1 1484 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L406
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L408
.L406:
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_live_1
.L408:
	.loc 1 1483 0
	subl	$1, -4(%ebp)
.L404:
	cmpl	$0, -4(%ebp)
	jns	.L405
.L409:
.LBE26:
	.loc 1 1488 0
	leave
	ret
.LFE31:
	.size	update_live, .-update_live
	.type	set_spec_fed, @function
set_spec_fed:
.LFB32:
	.loc 1 1502 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$16, %esp
.LCFI75:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1505 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ecx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L411
.L412:
	.loc 1 1506 0
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L413
	.loc 1 1507 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ecx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
.L413:
	.loc 1 1505 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L411:
	cmpl	$0, -4(%ebp)
	jne	.L412
	.loc 1 1508 0
	leave
	ret
.LFE32:
	.size	set_spec_fed, .-set_spec_fed
	.type	find_conditional_protection, @function
find_conditional_protection:
.LFB33:
	.loc 1 1517 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%esi
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$28, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1521 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L418
.L419:
.LBB27:
	.loc 1 1523 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1524 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L420
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L422
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L422
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_blocks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_blocks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L432
	movl	%edi, %esi
	xorl	%edi, %edi
.L432:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L420
.L422:
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L420
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L420
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L427
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_conditional_protection
	testl	%eax, %eax
	je	.L420
.L427:
	.loc 1 1531 0
	movl	$1, -32(%ebp)
	jmp	.L429
.L420:
.LBE27:
	.loc 1 1521 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L418:
	cmpl	$0, -20(%ebp)
	jne	.L419
	.loc 1 1533 0
	movl	$0, -32(%ebp)
.L429:
	movl	-32(%ebp), %eax
	.loc 1 1534 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	find_conditional_protection, .-find_conditional_protection
	.type	is_conditionally_protected, @function
is_conditionally_protected:
.LFB34:
	.loc 1 1554 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%edi
.LCFI84:
	pushl	%esi
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$32, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1557 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L434
.L435:
.LBB28:
	.loc 1 1559 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1562 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L436
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L436
	.loc 1 1567 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L436
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L436
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L441
	cmpl	$0, 16(%ebp)
	je	.L441
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L453
	movl	%edi, %esi
	xorl	%edi, %edi
.L453:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L441
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L441
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	movl	16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_blocks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_blocks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	in_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L452
	movl	%edi, %esi
	xorl	%edi, %edi
.L452:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L436
.L441:
	.loc 1 1575 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_conditional_protection
	testl	%eax, %eax
	je	.L447
	.loc 1 1576 0
	movl	$1, -32(%ebp)
	jmp	.L449
.L447:
	.loc 1 1579 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	is_conditionally_protected
	movl	%eax, -32(%ebp)
	jmp	.L449
.L436:
.LBE28:
	.loc 1 1557 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L434:
	cmpl	$0, -20(%ebp)
	jne	.L435
	.loc 1 1583 0
	movl	$0, -32(%ebp)
.L449:
	movl	-32(%ebp), %eax
	.loc 1 1584 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	is_conditionally_protected, .-is_conditionally_protected
	.type	is_pfree, @function
is_pfree:
.LFB35:
	.loc 1 1606 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$52, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1608 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1610 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L455
	.loc 1 1612 0
	movl	$0, -40(%ebp)
	jmp	.L457
.L455:
	.loc 1 1614 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1615 0
	jmp	.L458
.L459:
.LBB29:
	.loc 1 1617 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1619 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L460
.LBB30:
	.loc 1 1624 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1625 0
	jmp	.L462
.L463:
.LBB31:
	.loc 1 1627 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1628 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L464
	.loc 1 1631 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	haifa_classify_insn@PLT
	cmpl	$2, %eax
	jne	.L464
	.loc 1 1635 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L467
	.loc 1 1637 0
	movl	$1, -40(%ebp)
	jmp	.L457
.L467:
	.loc 1 1639 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L464
	.loc 1 1641 0
	movl	$1, -40(%ebp)
	jmp	.L457
.L464:
.LBE31:
	.loc 1 1625 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L462:
	cmpl	$0, -12(%ebp)
	jne	.L463
.L460:
.LBE30:
.LBE29:
	.loc 1 1615 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L458:
	cmpl	$0, -24(%ebp)
	jne	.L459
	.loc 1 1648 0
	movl	$0, -40(%ebp)
.L457:
	movl	-40(%ebp), %eax
	.loc 1 1649 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	is_pfree, .-is_pfree
	.type	is_prisky, @function
is_prisky:
.LFB36:
	.loc 1 1659 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$16, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1660 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L473
	.loc 1 1661 0
	movl	$1, -8(%ebp)
	jmp	.L475
.L473:
	.loc 1 1663 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L476
	.loc 1 1665 0
	movl	$1, -8(%ebp)
	jmp	.L475
.L476:
	.loc 1 1667 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_conditionally_protected
	testl	%eax, %eax
	je	.L478
	.loc 1 1668 0
	movl	$1, -8(%ebp)
	jmp	.L475
.L478:
	.loc 1 1670 0
	movl	$0, -8(%ebp)
.L475:
	movl	-8(%ebp), %eax
	.loc 1 1671 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	is_prisky, .-is_prisky
	.type	is_exception_free, @function
is_exception_free:
.LFB37:
	.loc 1 1681 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$52, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1682 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	haifa_classify_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1685 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L483
	cmpl	$5, -28(%ebp)
	je	.L484
	jmp	.L482
.L483:
	.loc 1 1688 0
	movl	$1, -24(%ebp)
	jmp	.L485
.L484:
	.loc 1 1690 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L482:
	.loc 1 1695 0
	movl	flag_schedule_speculative_load@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L486
	.loc 1 1696 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L486:
	.loc 1 1697 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$4, %eax
	movb	%al, 38(%edx)
	.loc 1 1698 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$2, -32(%ebp)
	je	.L490
	cmpl	$2, -32(%ebp)
	jg	.L493
	cmpl	$1, -32(%ebp)
	je	.L489
	jmp	.L488
.L493:
	cmpl	$3, -32(%ebp)
	je	.L491
	cmpl	$4, -32(%ebp)
	je	.L492
	jmp	.L488
.L489:
	.loc 1 1701 0
	movl	$1, -24(%ebp)
	jmp	.L485
.L492:
	.loc 1 1703 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L490:
	.loc 1 1705 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_pfree
	testl	%eax, %eax
	je	.L491
	.loc 1 1706 0
	movl	$1, -24(%ebp)
	jmp	.L485
.L491:
	.loc 1 1709 0
	movl	flag_schedule_speculative_load_dangerous@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L495
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_prisky
	testl	%eax, %eax
	je	.L488
.L495:
	.loc 1 1711 0
	movl	$0, -24(%ebp)
	jmp	.L485
.L488:
	.loc 1 1716 0
	movl	flag_schedule_speculative_load_dangerous@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L485:
	movl	-24(%ebp), %eax
	.loc 1 1717 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	is_exception_free, .-is_exception_free
	.type	schedule_more_p, @function
schedule_more_p:
.LFB38:
	.loc 1 1743 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	subl	$4, %esp
.LCFI102:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1744 0
	movl	last_was_jump@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L499
	movl	sched_target_n_insns@GOTOFF(%ecx), %edx
	movl	target_n_insns@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	jge	.L499
	movl	$1, -4(%ebp)
	jmp	.L502
.L499:
	movl	$0, -4(%ebp)
.L502:
	movl	-4(%ebp), %eax
	.loc 1 1745 0
	leave
	ret
.LFE38:
	.size	schedule_more_p, .-schedule_more_p
	.type	init_ready_list, @function
init_ready_list:
.LFB39:
	.loc 1 1753 0
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
	.loc 1 1754 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1755 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1759 0
	movl	$0, target_n_insns@GOTOFF(%ebx)
	.loc 1 1760 0
	movl	$0, sched_target_n_insns@GOTOFF(%ebx)
	.loc 1 1761 0
	movl	$0, sched_n_insns@GOTOFF(%ebx)
	.loc 1 1762 0
	movl	$0, last_was_jump@GOTOFF(%ebx)
	.loc 1 1765 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jle	.L505
	.loc 1 1766 0
	call	debug_dependencies@PLT
.L505:
	.loc 1 1769 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L507
	.loc 1 1771 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, candidate_table@GOTOFF(%ebx)
	.loc 1 1774 0
	movl	$0, bblst_last@GOTOFF(%ebx)
	.loc 1 1779 0
	movl	current_nr_blocks@GOTOFF(%ebx), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	subl	%eax, %edx
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	imull	%edx, %eax
	movl	%eax, bblst_size@GOTOFF(%ebx)
	.loc 1 1780 0
	movl	bblst_size@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bblst_table@GOTOFF(%ebx)
	.loc 1 1782 0
	movl	$0, bitlst_table_last@GOTOFF(%ebx)
	.loc 1 1783 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	movl	%eax, bitlst_table_size@GOTOFF(%ebx)
	.loc 1 1784 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bitlst_table@GOTOFF(%ebx)
	.loc 1 1786 0
	movl	target_bb@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	compute_trg_info
.L507:
	.loc 1 1791 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L509
.L510:
.LBB32:
	.loc 1 1795 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L511
	.loc 1 1797 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1799 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L513
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L515
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L513
.L515:
	.loc 1 1801 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
.L513:
	.loc 1 1802 0
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L511
	.loc 1 1803 0
	movl	target_n_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, target_n_insns@GOTOFF(%ebx)
.L511:
.LBE32:
	.loc 1 1791 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L509:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L510
	.loc 1 1809 0
	movl	target_bb@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L519
.L520:
	.loc 1 1810 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L521
.LBB33:
	.loc 1 1816 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 1817 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1818 0
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1820 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L523
.L524:
	.loc 1 1822 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L525
	.loc 1 1825 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L525
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L528
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L530
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L532
.L530:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_issue_delay@PLT
	cmpl	$3, %eax
	jle	.L533
.L532:
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L525
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L525
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L536
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L533
	jmp	.L539
.L536:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	testl	%eax, %eax
	js	.L533
.L539:
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	min_insn_conflict_delay@PLT
	cmpl	$3, %eax
	jg	.L525
.L533:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live
	testl	%eax, %eax
	je	.L525
	movl	target_bb@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	is_exception_free
	testl	%eax, %eax
	je	.L525
.L528:
.LBB34:
	.loc 1 1843 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1844 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L525
	cmpl	$0, -8(%ebp)
	je	.L542
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L542
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L525
.L542:
	.loc 1 1848 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
.L525:
.LBE34:
	.loc 1 1820 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L523:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L524
.L521:
.LBE33:
	.loc 1 1809 0
	addl	$1, -28(%ebp)
.L519:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L520
	.loc 1 1852 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	init_ready_list, .-init_ready_list
	.type	can_schedule_ready_p, @function
can_schedule_ready_p:
.LFB40:
	.loc 1 1860 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$36, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1861 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L548
	.loc 1 1862 0
	movl	$1, last_was_jump@GOTOFF(%ebx)
.L548:
	.loc 1 1865 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L550
.LBB35:
	.loc 1 1870 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L552
	.loc 1 1872 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live
	testl	%eax, %eax
	jne	.L554
	.loc 1 1873 0
	movl	$0, -24(%ebp)
	jmp	.L556
.L554:
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_live
	.loc 1 1877 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L557
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L559
.L557:
	.loc 1 1878 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_spec_fed
.L559:
	.loc 1 1880 0
	movl	nr_spec@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, nr_spec@GOTOFF(%ebx)
.L552:
	.loc 1 1882 0
	movl	nr_inter@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, nr_inter@GOTOFF(%ebx)
	.loc 1 1889 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1890 0
	jmp	.L560
.L561:
	.loc 1 1891 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L560:
	.loc 1 1890 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L561
	.loc 1 1894 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1895 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L563
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L563
.LBB36:
	.loc 1 1900 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-99, (%esp)
	call	emit_note_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1901 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1902 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1895 0
	jmp	.L570
.L563:
.LBE36:
	.loc 1 1904 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L567
	.loc 1 1909 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L570
.L567:
	.loc 1 1911 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L570
	.loc 1 1916 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L570
.L550:
.LBE35:
	.loc 1 1922 0
	movl	sched_target_n_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, sched_target_n_insns@GOTOFF(%ebx)
.L570:
	.loc 1 1924 0
	movl	sched_n_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, sched_n_insns@GOTOFF(%ebx)
	.loc 1 1926 0
	movl	$1, -24(%ebp)
.L556:
	movl	-24(%ebp), %eax
	.loc 1 1927 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	can_schedule_ready_p, .-can_schedule_ready_p
	.type	new_ready, @function
new_ready:
.LFB41:
	.loc 1 1935 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$20, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1938 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L573
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L575
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L575
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L573
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L579
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L579
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L582
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L579
	jmp	.L585
.L582:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	testl	%eax, %eax
	js	.L579
.L585:
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	min_insn_conflict_delay@PLT
	cmpl	$3, %eax
	jg	.L575
.L579:
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L586
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L588
.L586:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_issue_delay@PLT
	cmpl	$3, %eax
	jg	.L575
.L588:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_live
	testl	%eax, %eax
	je	.L575
	movl	target_bb@GOTOFF(%ebx), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_exception_free
	testl	%eax, %eax
	jne	.L573
.L575:
	.loc 1 1953 0
	movl	$0, -8(%ebp)
	jmp	.L590
.L573:
	.loc 1 1954 0
	movl	$1, -8(%ebp)
.L590:
	movl	-8(%ebp), %eax
	.loc 1 1955 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	new_ready, .-new_ready
	.local	tmp.14085
	.comm	tmp.14085,80,32
	.section	.rodata
.LC18:
	.string	"b%3d: i%4d"
.LC19:
	.string	"%d/b%d"
.LC20:
	.string	"%d"
	.text
	.type	rgn_print_insn, @function
rgn_print_insn:
.LFB42:
	.loc 1 1966 0
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
	.loc 1 1969 0
	cmpl	$0, 12(%ebp)
	je	.L593
	.loc 1 1970 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	tmp.14085@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L595
.L593:
	.loc 1 1973 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L596
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L596
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	tmp.14085@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1973 0
	jmp	.L595
.L596:
	.loc 1 1976 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	tmp.14085@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L595:
	.loc 1 1978 0
	leal	tmp.14085@GOTOFF(%ebx), %eax
	.loc 1 1979 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	rgn_print_insn, .-rgn_print_insn
	.type	rgn_rank, @function
rgn_rank:
.LFB43:
	.loc 1 1988 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$20, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1990 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L601
.LBB37:
	.loc 1 1995 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L603
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L603
	.loc 1 1996 0
	movl	$1, -24(%ebp)
	jmp	.L606
.L603:
	.loc 1 1997 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L607
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	target_bb@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L607
	.loc 1 1998 0
	movl	$-1, -24(%ebp)
	jmp	.L606
.L607:
	.loc 1 2001 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2002 0
	cmpl	$0, -12(%ebp)
	je	.L610
	.loc 1 2003 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L606
.L610:
	.loc 1 2006 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	candidate_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2007 0
	cmpl	$0, -8(%ebp)
	je	.L601
	.loc 1 2008 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L606
.L601:
.LBE37:
	.loc 1 2010 0
	movl	$0, -24(%ebp)
.L606:
	movl	-24(%ebp), %eax
	.loc 1 2011 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	rgn_rank, .-rgn_rank
	.type	contributes_to_priority, @function
contributes_to_priority:
.LFB44:
	.loc 1 2020 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	.loc 1 2021 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 2022 0
	popl	%ebp
	ret
.LFE44:
	.size	contributes_to_priority, .-contributes_to_priority
	.type	compute_jump_reg_dependencies, @function
compute_jump_reg_dependencies:
.LFB45:
	.loc 1 2035 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	.loc 1 2038 0
	popl	%ebp
	ret
.LFE45:
	.size	compute_jump_reg_dependencies, .-compute_jump_reg_dependencies
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	region_sched_info, @object
	.size	region_sched_info, 52
region_sched_info:
	.long	init_ready_list
	.long	can_schedule_ready_p
	.long	schedule_more_p
	.long	new_ready
	.long	rgn_rank
	.long	rgn_print_insn
	.long	contributes_to_priority
	.long	compute_jump_reg_dependencies
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.zero	3
	.text
	.type	sets_likely_spilled, @function
sets_likely_spilled:
.LFB46:
	.loc 1 2064 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$36, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2065 0
	movb	$0, -5(%ebp)
	.loc 1 2066 0
	leal	-5(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	sets_likely_spilled_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
	.loc 1 2067 0
	movzbl	-5(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 2068 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	sets_likely_spilled, .-sets_likely_spilled
	.type	sets_likely_spilled_1, @function
sets_likely_spilled_1:
.LFB47:
	.loc 1 2074 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	subl	$16, %esp
.LCFI133:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2075 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2077 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L626
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L626
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L626
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ecx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L626
	.loc 1 2081 0
	movl	-4(%ebp), %eax
	movb	$1, (%eax)
.L626:
	.loc 1 2082 0
	leave
	ret
.LFE47:
	.size	sets_likely_spilled_1, .-sets_likely_spilled_1
	.type	add_branch_dependences, @function
add_branch_dependences:
.LFB48:
	.loc 1 2090 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$36, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2109 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2110 0
	movl	$0, -12(%ebp)
	.loc 1 2111 0
	jmp	.L628
.L629:
	.loc 1 2124 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L630
	.loc 1 2126 0
	cmpl	$0, -12(%ebp)
	je	.L632
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_insn_list@PLT
	testl	%eax, %eax
	jne	.L632
	.loc 1 2128 0
	movl	$14, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 2129 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	24(%edx), %eax
	addl	$1, %eax
	movl	%eax, 24(%edx)
.L632:
	.loc 1 2132 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	38(%edx), %eax
	orl	$1, %eax
	movb	%al, 38(%edx)
	.loc 1 2134 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2140 0
	jmp	.L635
.L636:
.LBB38:
	.loc 1 2142 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2143 0
	movl	$14, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 2144 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L635:
.LBE38:
	.loc 1 2140 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L636
.L630:
	.loc 1 2149 0
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L637
	.loc 1 2152 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L628:
	.loc 1 2111 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L629
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L629
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L641
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L629
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L629
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L629
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L641
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	sets_likely_spilled
	testb	%al, %al
	jne	.L629
.L641:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L629
.L637:
	.loc 1 2156 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2157 0
	cmpl	$0, -16(%ebp)
	je	.L654
	.loc 1 2158 0
	jmp	.L655
.L650:
	.loc 1 2160 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2162 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L649
	.loc 1 2165 0
	movl	$14, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	.loc 1 2166 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$1, 24(%eax)
	.loc 1 2169 0
	jmp	.L652
.L653:
	.loc 1 2170 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
.L652:
	.loc 1 2169 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L653
.L649:
.L655:
	.loc 1 2158 0
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L650
.L654:
	.loc 1 2172 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	add_branch_dependences, .-add_branch_dependences
	.type	concat_INSN_LIST, @function
concat_INSN_LIST:
.LFB49:
	.loc 1 2187 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$36, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2188 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2189 0
	jmp	.L657
.L658:
	.loc 1 2190 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2189 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
.L657:
	cmpl	$0, 8(%ebp)
	jne	.L658
	.loc 1 2191 0
	movl	-8(%ebp), %eax
	.loc 1 2192 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	concat_INSN_LIST, .-concat_INSN_LIST
	.type	concat_insn_mem_list, @function
concat_insn_mem_list:
.LFB50:
	.loc 1 2198 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$36, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2199 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2200 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2202 0
	jmp	.L662
.L663:
	.loc 1 2204 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2205 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2206 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2207 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
.L662:
	.loc 1 2202 0
	cmpl	$0, 8(%ebp)
	jne	.L663
	.loc 1 2210 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2211 0
	movl	20(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2212 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	concat_insn_mem_list, .-concat_insn_mem_list
	.type	propagate_deps, @function
propagate_deps:
.LFB51:
	.loc 1 2220 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%esi
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$80, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2221 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2225 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	out_edges@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2226 0
	cmpl	$0, -64(%ebp)
	jle	.L667
.L668:
.LBB39:
	.loc 1 2229 0
	movl	-64(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2230 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2231 0
	movl	-52(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2235 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L669
	movl	-52(%ebp), %eax
	cmpl	8(%ebp), %eax
	jg	.L671
.L669:
	.loc 1 2238 0
	movl	-64(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2239 0
	jmp	.L672
.L671:
.LBB40:
	.loc 1 2243 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L673
.L674:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L673:
	cmpl	$0, -40(%ebp)
	je	.L675
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L674
.L675:
	cmpl	$0, -40(%ebp)
	je	.L680
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L680
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L680
.L683:
.LBB41:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L684
	jmp	.L686
.L687:
.LBB42:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L688
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
.LBB43:
	movl	12(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-48(%ebp), %eax
	movl	48(%eax), %ecx
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
.LBE43:
	cmpl	$0, -24(%ebp)
	je	.L684
.L688:
.LBE42:
	addl	$1, -32(%ebp)
.L686:
	cmpl	$31, -32(%ebp)
	jbe	.L687
.L684:
	movl	$0, -32(%ebp)
.LBE41:
	addl	$1, -28(%ebp)
.L682:
	cmpl	$3, -28(%ebp)
	jbe	.L683
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L680:
	cmpl	$0, -40(%ebp)
	jne	.L682
.LBE40:
	.loc 1 2255 0
	movl	12(%ebp), %eax
	addl	$52, %eax
	movl	-48(%ebp), %edx
	addl	$52, %edx
	movl	-48(%ebp), %ecx
	addl	$52, %ecx
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 2258 0
	movl	-48(%ebp), %ecx
	addl	$4, %ecx
	movl	-48(%ebp), %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_insn_mem_list
	.loc 1 2262 0
	movl	-48(%ebp), %ecx
	addl	$12, %ecx
	movl	-48(%ebp), %esi
	addl	$8, %esi
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_insn_mem_list
	.loc 1 2267 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 2271 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2272 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2275 0
	movl	-48(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2280 0
	movl	-48(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_INSN_LIST
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 2284 0
	movl	-64(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
.L672:
.LBE39:
	.loc 1 2286 0
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L668
.L667:
	.loc 1 2290 0
	movl	8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 2291 0
	movl	8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2292 0
	movl	8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 2293 0
	movl	8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 2296 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2297 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 2298 0
	movl	12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 2299 0
	movl	12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 2300 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE51:
	.size	propagate_deps, .-propagate_deps
	.type	compute_block_backward_dependences, @function
compute_block_backward_dependences:
.LFB52:
	.loc 1 2322 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$116, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2326 0
	movl	8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	leal	-96(%ebp), %ecx
	movl	%eax, %edx
	movl	$84, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 2329 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2330 0
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze@PLT
	.loc 1 2331 0
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_branch_dependences
	.loc 1 2333 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L694
	.loc 1 2334 0
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_deps
.L694:
	.loc 1 2337 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	free_deps@PLT
	.loc 1 2338 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	compute_block_backward_dependences, .-compute_block_backward_dependences
	.type	free_pending_lists, @function
free_pending_lists:
.LFB53:
	.loc 1 2345 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$20, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2348 0
	movl	$0, -8(%ebp)
	jmp	.L698
.L699:
	.loc 1 2350 0
	movl	-8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 2351 0
	movl	-8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
	.loc 1 2352 0
	movl	-8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 2353 0
	movl	-8(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 2348 0
	addl	$1, -8(%ebp)
.L698:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L699
	.loc 1 2355 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	free_pending_lists, .-free_pending_lists
	.section	.rodata
	.align 4
.LC21:
	.string	";;   --------------- forward dependences: ------------ \n"
	.align 4
.LC22:
	.string	"\n;;   --- Region Dependences --- b %d bb %d \n"
.LC23:
	.string	"reservation"
.LC24:
	.string	"cost"
.LC25:
	.string	"prio"
.LC26:
	.string	"dep"
.LC27:
	.string	"bb"
.LC28:
	.string	"code"
.LC29:
	.string	"insn"
.LC30:
	.string	";;   %7s%6s%6s%6s%6s%6s%14s\n"
.LC31:
	.string	"-----------"
.LC32:
	.string	"----"
.LC33:
	.string	"---"
.LC34:
	.string	"--"
.LC35:
	.string	"units"
.LC36:
	.string	"blockage"
	.align 4
.LC37:
	.string	";;   %7s%6s%6s%6s%6s%6s%11s%6s\n"
.LC38:
	.string	"-----"
.LC39:
	.string	"--------"
.LC40:
	.string	";;   %6d "
.LC41:
	.string	"%s\n"
.LC42:
	.string	"line %d, file %s\n"
.LC43:
	.string	" {%s}\n"
.LC44:
	.string	"+"
.LC45:
	.string	" "
.LC46:
	.string	";;   %s%5d%6d%6d%6d%6d%6d   "
.LC47:
	.string	"nothing"
	.align 4
.LC48:
	.string	";;   %s%5d%6d%6d%6d%6d%6d  %3d -%3d   "
.LC49:
	.string	"\t: "
.LC50:
	.string	"%d "
	.text
.globl debug_dependencies
	.type	debug_dependencies, @function
debug_dependencies:
.LFB54:
	.loc 1 2361 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$164, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2364 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$56, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2365 0
	movl	$0, -32(%ebp)
	jmp	.L703
.L704:
.LBB44:
	.loc 1 2373 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2374 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2375 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2378 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L705
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L705
	.loc 1 2381 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2384 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2378 0
	jmp	.L708
.L705:
	.loc 1 2390 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2392 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L708:
	.loc 1 2396 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L709
.L710:
.LBB45:
	.loc 1 2400 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L711
.LBB46:
	.loc 1 2403 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2404 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L713
	.loc 1 2406 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2407 0
	cmpl	$0, -16(%ebp)
	jns	.L715
	.loc 1 2408 0
	movl	-16(%ebp), %edx
	addl	$100, %edx
	movl	note_insn_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L719
.L715:
	.loc 1 2410 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L719
.L713:
	.loc 1 2414 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2415 0
	jmp	.L719
.L711:
.LBE46:
	.loc 1 2418 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L720
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L720
	.loc 1 2421 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_cost@PLT
	movl	%eax, -124(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -108(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L723
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L725
.L723:
	leal	.LC45@GOTOFF(%ebx), %edx
	movl	%edx, -100(%ebp)
.L725:
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2431 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L726
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -93(%ebp)
	jmp	.L728
.L726:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -93(%ebp)
.L728:
	cmpb	$0, -93(%ebp)
	je	.L729
	.loc 1 2432 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L732
.L729:
	.loc 1 2434 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_reservation@PLT
	.loc 1 2418 0
	jmp	.L732
.L720:
.LBB47:
	.loc 1 2438 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_unit@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2443 0
	cmpl	$0, -12(%ebp)
	js	.L733
	movl	-12(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L733
	movl	-12(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -92(%ebp)
	jmp	.L736
.L733:
	movl	$0, -92(%ebp)
.L736:
	movl	-92(%ebp), %edx
	movl	%edx, -8(%ebp)
	.loc 1 2444 0
	movzwl	-8(%ebp),%eax
	movl	%eax, -88(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sarl	$16, %edx
	movl	%edx, -84(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_cost@PLT
	movl	%eax, -80(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	block_to_bb@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L737
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L739
.L737:
	leal	.LC45@GOTOFF(%ebx), %edx
	movl	%edx, -56(%ebp)
.L739:
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2455 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_print_units@PLT
.L732:
.LBE47:
	.loc 1 2458 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2459 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L740
.L741:
	.loc 1 2460 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2459 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L740:
	cmpl	$0, -20(%ebp)
	jne	.L741
	.loc 1 2461 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L719:
.LBE45:
	.loc 1 2396 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L709:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L710
.LBE44:
	.loc 1 2365 0
	addl	$1, -32(%ebp)
.L703:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jl	.L704
	.loc 1 2465 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 2466 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	debug_dependencies, .-debug_dependencies
	.section	.rodata
	.type	__FUNCTION__.14883, @object
	.size	__FUNCTION__.14883, 16
__FUNCTION__.14883:
	.string	"schedule_region"
	.text
	.type	schedule_region, @function
schedule_region:
.LFB55:
	.loc 1 2475 0
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
	.loc 1 2477 0
	movl	$0, -24(%ebp)
	.loc 1 2478 0
	movl	$0, -20(%ebp)
	.loc 1 2481 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, current_nr_blocks@GOTOFF(%ebx)
	.loc 1 2482 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, current_blocks@GOTOFF(%ebx)
	.loc 1 2484 0
	call	init_deps_global@PLT
	.loc 1 2487 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	imull	$84, %eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bb_deps@GOTOFF(%ebx)
	.loc 1 2488 0
	movl	$0, -28(%ebp)
	jmp	.L747
.L748:
	.loc 1 2489 0
	movl	-28(%ebp), %eax
	imull	$84, %eax, %eax
	movl	%eax, %edx
	movl	bb_deps@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	init_deps@PLT
	.loc 1 2488 0
	addl	$1, -28(%ebp)
.L747:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L748
	.loc 1 2492 0
	movl	$0, -28(%ebp)
	jmp	.L750
.L751:
	.loc 1 2493 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_block_backward_dependences
	.loc 1 2492 0
	addl	$1, -28(%ebp)
.L750:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L751
	.loc 1 2496 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L753
.L754:
.LBB48:
	.loc 1 2499 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2501 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	compute_forward_dependences@PLT
.LBE48:
	.loc 1 2496 0
	subl	$1, -28(%ebp)
.L753:
	cmpl	$0, -28(%ebp)
	jns	.L754
	.loc 1 2505 0
	movl	$0, -28(%ebp)
	jmp	.L756
.L757:
.LBB49:
	.loc 1 2508 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2510 0
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_priorities@PLT
	addl	%eax, -24(%ebp)
.LBE49:
	.loc 1 2505 0
	addl	$1, -28(%ebp)
.L756:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L757
	.loc 1 2514 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L759
.LBB50:
	.loc 1 2518 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, prob@GOTOFF(%ebx)
	.loc 1 2520 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, dom@GOTOFF(%ebx)
	.loc 1 2521 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	dom@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2523 0
	movl	$0, rgn_nr_edges@GOTOFF(%ebx)
	.loc 1 2524 0
	movl	nr_edges@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, edge_to_bit@GOTOFF(%ebx)
	.loc 1 2525 0
	movl	$1, -16(%ebp)
	jmp	.L761
.L762:
	.loc 1 2526 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L763
	.loc 1 2527 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, %eax
	movl	%eax, rgn_nr_edges@GOTOFF(%ebx)
.L763:
	.loc 1 2525 0
	addl	$1, -16(%ebp)
.L761:
	movl	nr_edges@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L762
	.loc 1 2528 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, rgn_edges@GOTOFF(%ebx)
	.loc 1 2530 0
	movl	$0, rgn_nr_edges@GOTOFF(%ebx)
	.loc 1 2531 0
	movl	$1, -16(%ebp)
	jmp	.L766
.L767:
	.loc 1 2532 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	edge_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	containing_rgn@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L768
	.loc 1 2533 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_edges@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, rgn_nr_edges@GOTOFF(%ebx)
.L768:
	.loc 1 2531 0
	addl	$1, -16(%ebp)
.L766:
	movl	nr_edges@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L767
	.loc 1 2536 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, pot_split@GOTOFF(%ebx)
	.loc 1 2537 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	pot_split@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2538 0
	movl	rgn_nr_edges@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, ancestor_edges@GOTOFF(%ebx)
	.loc 1 2539 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	movl	ancestor_edges@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 2542 0
	movl	$0, -28(%ebp)
	jmp	.L771
.L772:
	.loc 1 2543 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_dom_prob_ps
	.loc 1 2542 0
	addl	$1, -28(%ebp)
.L771:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L772
.L759:
.LBE50:
	.loc 1 2547 0
	movl	$0, -28(%ebp)
	jmp	.L773
.L774:
.LBB51:
	.loc 1 2550 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2552 0
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2554 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	no_real_insns_p@PLT
	testl	%eax, %eax
	jne	.L775
	.loc 1 2557 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%edx)
	.loc 1 2558 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 2560 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L777
	.loc 1 2562 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_line_notes@PLT
	.loc 1 2563 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rm_line_notes@PLT
.L777:
	.loc 1 2572 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L779
.LBB52:
	.loc 1 2576 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L781
.L782:
	.loc 1 2577 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$23, %al
	jne	.L783
	.loc 1 2579 0
	movl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
	.loc 1 2580 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2581 0
	movl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
.L783:
	.loc 1 2576 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L781:
	cmpl	$0, -8(%ebp)
	jne	.L782
.L779:
.LBE52:
	.loc 1 2588 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rm_other_notes@PLT
	.loc 1 2590 0
	movl	-28(%ebp), %eax
	movl	%eax, target_bb@GOTOFF(%ebx)
	.loc 1 2592 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L785
	movl	flag_schedule_interblock@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L785
	movl	$1, -40(%ebp)
	jmp	.L788
.L785:
	movl	$0, -40(%ebp)
.L788:
	movzbl	-40(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-44(%ebp), %ecx
	movzbl	48(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movl	-44(%ebp), %edx
	movb	%al, 48(%edx)
	.loc 1 2595 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_block@PLT
	.loc 1 2596 0
	movl	sched_n_insns@GOTOFF(%ebx), %eax
	addl	%eax, -20(%ebp)
	.loc 1 2599 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L789
	.loc 1 2600 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, (%edx)
.L789:
	.loc 1 2601 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L791
	.loc 1 2602 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%edx)
.L791:
	.loc 1 2605 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L775
	.loc 1 2607 0
	movl	candidate_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2608 0
	movl	bblst_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2609 0
	movl	bitlst_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L775:
.LBE51:
	.loc 1 2547 0
	addl	$1, -28(%ebp)
.L773:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L774
	.loc 1 2614 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L795
	.loc 1 2615 0
	leal	__FUNCTION__.14883@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2615, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L795:
	.loc 1 2618 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L797
	.loc 1 2620 0
	movl	$0, -28(%ebp)
	jmp	.L799
.L800:
.LBB53:
	.loc 1 2623 0
	movl	current_blocks@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 2624 0
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	restore_line_notes@PLT
.LBE53:
	.loc 1 2620 0
	addl	$1, -28(%ebp)
.L799:
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L800
.L797:
	.loc 1 2629 0
	call	free_pending_lists
	.loc 1 2631 0
	call	finish_deps_global@PLT
	.loc 1 2633 0
	movl	bb_deps@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2635 0
	movl	current_nr_blocks@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L803
	.loc 1 2637 0
	movl	prob@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2638 0
	movl	dom@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2639 0
	movl	pot_split@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2640 0
	movl	ancestor_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2641 0
	movl	edge_to_bit@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2642 0
	movl	rgn_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L803:
	.loc 1 2644 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	schedule_region, .-schedule_region
	.type	init_regions, @function
init_regions:
.LFB56:
	.loc 1 2654 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$52, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2658 0
	movl	$0, nr_regions@GOTOFF(%ebx)
	.loc 1 2659 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, rgn_table@GOTOFF(%ebx)
	.loc 1 2660 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, rgn_bb_table@GOTOFF(%ebx)
	.loc 1 2661 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, block_to_bb@GOTOFF(%ebx)
	.loc 1 2662 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, containing_rgn@GOTOFF(%ebx)
	.loc 1 2665 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L805
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L805
	movl	flag_schedule_interblock@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L808
.L805:
	.loc 1 2669 0
	call	find_single_block_region
	.loc 1 2665 0
	jmp	.L809
.L808:
	.loc 1 2674 0
	call	is_cfg_nonregular
	testl	%eax, %eax
	je	.L810
	.loc 1 2676 0
	call	find_single_block_region
	jmp	.L809
.L810:
.LBB54:
	.loc 1 2694 0
	call	create_edge_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2697 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2702 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_control_flow
	testl	%eax, %eax
	je	.L812
	.loc 1 2703 0
	call	find_single_block_region
	jmp	.L814
.L812:
	.loc 1 2705 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_rgns
.L814:
	.loc 1 2707 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jle	.L815
	.loc 1 2708 0
	call	debug_regions@PLT
.L815:
	.loc 1 2711 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 1 2715 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
.L809:
.LBE54:
	.loc 1 2738 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	count_or_remove_death_notes@PLT
	.loc 1 2739 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	init_regions, .-init_regions
	.section	.rodata
	.type	__FUNCTION__.15259, @object
	.size	__FUNCTION__.15259, 15
__FUNCTION__.15259:
	.string	"schedule_insns"
	.align 4
.LC51:
	.string	"\n;; Procedure interblock/speculative motions == %d/%d \n"
	.text
.globl schedule_insns
	.type	schedule_insns, @function
schedule_insns:
.LFB57:
	.loc 1 2747 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%edi
.LCFI173:
	pushl	%esi
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$108, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2755 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L855
	.loc 1 2758 0
	movl	$0, nr_inter@GOTOFF(%ebx)
	.loc 1 2759 0
	movl	$0, nr_spec@GOTOFF(%ebx)
	.loc 1 2761 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_init@PLT
	.loc 1 2763 0
	call	init_regions
	.loc 1 2765 0
	movl	current_sched_info@GOT(%ebx), %edx
	leal	region_sched_info@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 2768 0
	movl	$0, -28(%ebp)
	jmp	.L821
.L822:
	.loc 1 2769 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_region
	.loc 1 2768 0
	addl	$1, -28(%ebp)
.L821:
	movl	nr_regions@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L822
	.loc 1 2784 0
	call	allocate_reg_life_data@PLT
	.loc 1 2785 0
	call	compute_bb_for_insn@PLT
	.loc 1 2787 0
	movl	$0, -24(%ebp)
	.loc 1 2788 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2789 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 2790 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L824
.L825:
	.loc 1 2791 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -100(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L858
	movl	%esi, %edi
	xorl	%esi, %esi
.L858:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-100(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2790 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L824:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L825
	.loc 1 2793 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2794 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 2800 0
	movl	$0, -28(%ebp)
	jmp	.L827
.L828:
	.loc 1 2801 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L829
	.loc 1 2802 0
	movl	$1, -24(%ebp)
	jmp	.L831
.L829:
	.loc 1 2805 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -84(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L856
	movl	%esi, %edi
	xorl	%esi, %esi
.L856:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-84(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2806 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -68(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	rgn_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L857
	movl	%eax, %edx
	xorl	%eax, %eax
.L857:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-68(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L831:
	.loc 1 2800 0
	addl	$1, -28(%ebp)
.L827:
	movl	nr_regions@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L828
	.loc 1 2811 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L833
	movl	$1, -52(%ebp)
	jmp	.L835
.L833:
	movl	$5, -52(%ebp)
.L835:
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
	.loc 1 2814 0
	cmpl	$0, -24(%ebp)
	je	.L836
	.loc 1 2816 0
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
.L836:
	.loc 1 2839 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L838
	.loc 1 2840 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	reposition_prologue_and_epilogue_notes@PLT
.L838:
	.loc 1 2843 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L840
	.loc 1 2844 0
	call	rm_redundant_line_notes@PLT
.L840:
	.loc 1 2846 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L842
	.loc 1 2848 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L844
	movl	flag_schedule_interblock@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L844
	.loc 1 2850 0
	movl	nr_spec@GOTOFF(%ebx), %edx
	movl	nr_inter@GOTOFF(%ebx), %ecx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2848 0
	jmp	.L847
.L844:
	.loc 1 2856 0
	movl	nr_inter@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jle	.L847
	.loc 1 2857 0
	leal	__FUNCTION__.15259@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2857, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L847:
	.loc 1 2859 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L842:
	.loc 1 2863 0
	movl	rgn_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2864 0
	movl	rgn_bb_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2865 0
	movl	block_to_bb@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2866 0
	movl	containing_rgn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2868 0
	call	sched_finish@PLT
	.loc 1 2870 0
	movl	edge_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L849
	.loc 1 2872 0
	movl	edge_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2873 0
	movl	$0, edge_table@GOTOFF(%ebx)
.L849:
	.loc 1 2876 0
	movl	in_edges@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L851
	.loc 1 2878 0
	movl	in_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2879 0
	movl	$0, in_edges@GOTOFF(%ebx)
.L851:
	.loc 1 2881 0
	movl	out_edges@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L853
	.loc 1 2883 0
	movl	out_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2884 0
	movl	$0, out_edges@GOTOFF(%ebx)
.L853:
	.loc 1 2887 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2888 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L855:
	.loc 1 2889 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE57:
	.size	schedule_insns, .-schedule_insns
	.local	nr_inter
	.comm	nr_inter,4,4
	.local	nr_spec
	.comm	nr_spec,4,4
	.local	edge_table
	.comm	edge_table,4,4
	.local	nr_edges
	.comm	nr_edges,4,4
	.local	in_edges
	.comm	in_edges,4,4
	.local	out_edges
	.comm	out_edges,4,4
	.local	nr_regions
	.comm	nr_regions,4,4
	.local	rgn_table
	.comm	rgn_table,4,4
	.local	rgn_bb_table
	.comm	rgn_bb_table,4,4
	.local	block_to_bb
	.comm	block_to_bb,4,4
	.local	containing_rgn
	.comm	containing_rgn,4,4
	.local	current_nr_blocks
	.comm	current_nr_blocks,4,4
	.local	current_blocks
	.comm	current_blocks,4,4
	.local	bitlst_table_last
	.comm	bitlst_table_last,4,4
	.local	bitlst_table_size
	.comm	bitlst_table_size,4,4
	.local	bitlst_table
	.comm	bitlst_table,4,4
	.local	candidate_table
	.comm	candidate_table,4,4
	.local	bblst_table
	.comm	bblst_table,4,4
	.local	bblst_size
	.comm	bblst_size,4,4
	.local	bblst_last
	.comm	bblst_last,4,4
	.local	target_bb
	.comm	target_bb,4,4
	.local	dom
	.comm	dom,4,4
	.local	prob
	.comm	prob,4,4
	.local	rgn_nr_edges
	.comm	rgn_nr_edges,4,4
	.local	rgn_edges
	.comm	rgn_edges,4,4
	.local	edge_to_bit
	.comm	edge_to_bit,4,4
	.local	pot_split
	.comm	pot_split,4,4
	.local	ancestor_edges
	.comm	ancestor_edges,4,4
	.local	sched_target_n_insns
	.comm	sched_target_n_insns,4,4
	.local	target_n_insns
	.comm	target_n_insns,4,4
	.local	sched_n_insns
	.comm	sched_n_insns,4,4
	.local	last_was_jump
	.comm	last_was_jump,4,4
	.local	bb_deps
	.comm	bb_deps,4,4
	.local	deaths_in_region
	.comm	deaths_in_region,4,4
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
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI12
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
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI24-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI25
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
	.long	.LCFI29-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI35-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI36
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI41-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
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
	.long	.LCFI45-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI46
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI51-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
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
	.long	.LCFI55-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI59-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI60
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
	.long	.LCFI63-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI67-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
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
	.long	.LCFI70-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI73-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI76-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI77
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI82-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI83
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI103-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI107-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI108
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
	.long	.LCFI111-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI112
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
	.long	.LCFI115-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI119-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI120
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
	.long	.LCFI123-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI125-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI134-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI137-.LCFI135
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
	.long	.LCFI138-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI139
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
	.long	.LCFI142-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI145-.LCFI143
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
	.long	.LCFI146-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI147
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI151-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI152
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
	.long	.LCFI155-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI156
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
	.long	.LCFI159-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI163-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI167-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI170-.LCFI168
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
	.long	.LCFI171-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI172
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE84:
	.file 2 "../../../kg++fe/gnu/basic-block.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/sched-int.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 14 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 15 "../../../kg++fe/gnu/varray.h"
	.file 16 "../../../kg++fe/gnu/regs.h"
	.file 17 "../../../kg++fe/gnu/function.h"
	.file 18 "../../../kg++fe/gnu/flags.h"
	.file 19 "../../../kg++fe/gnu/MIPS/insn-attr.h"
	.file 20 "../../../kg++fe/gnu/target.h"
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
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
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
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI82-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI83-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
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
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI139-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI143-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI171-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI172-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x62f6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/sched-rgn.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0xade
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x895
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x8e
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x91
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x99
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xb4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xbb
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xc9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x16fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x8
	.long	0x210
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x395
	.string	"reg_class"
	.byte	0x4
	.byte	0xd
	.value	0x7ec
	.uleb128 0xb
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xb
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xb
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xb
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xb
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xb
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xb
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xb
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xb
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xb
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xb
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xb
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xb
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xb
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xb
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xb
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xb
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xb
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xb
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xb
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xb
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xb
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xb
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xb
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xb
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xb
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xc
	.long	0x467
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x47e
	.long	0x9e
	.uleb128 0x10
	.long	0x47e
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x395
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x467
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xb
	.byte	0x3b
	.long	0x503
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xb
	.byte	0x90
	.long	0x54d
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xb
	.byte	0x91
	.long	0x52e
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0x2
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x57e
	.uleb128 0x13
	.long	0x7f9
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xa
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xa
	.value	0x111
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xa
	.value	0x112
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xa
	.value	0x113
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xa
	.value	0x114
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xa
	.value	0x115
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xa
	.value	0x116
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xa
	.value	0x117
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xa
	.value	0x118
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xa
	.value	0x11a
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xa
	.value	0x11b
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xa
	.value	0x11c
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xa
	.value	0x11e
	.long	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xa
	.value	0x120
	.long	0x856
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xa
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xa
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xa
	.value	0x128
	.long	0x53e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xa
	.value	0x12c
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xa
	.value	0x12d
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xa
	.value	0x12e
	.long	0x85c
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xa
	.value	0x132
	.long	0x86c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xa
	.value	0x13b
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xa
	.value	0x144
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xa
	.value	0x145
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xa
	.value	0x146
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xa
	.value	0x147
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xa
	.value	0x148
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xa
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xa
	.value	0x14c
	.long	0x872
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ab
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xa
	.byte	0xb0
	.uleb128 0x4
	.long	0x850
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xa
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xa
	.byte	0xb7
	.long	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xa
	.byte	0xb8
	.long	0x856
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xa
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80d
	.uleb128 0x3
	.byte	0x4
	.long	0x57e
	.uleb128 0xf
	.long	0x86c
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ff
	.uleb128 0xf
	.long	0x882
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0x27
	.byte	0x0
	.uleb128 0x8
	.long	0x218
	.uleb128 0x3
	.byte	0x4
	.long	0x218
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x88d
	.uleb128 0x16
	.long	0xade
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0xb
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xb
	.string	"BImode"
	.sleb128 1
	.uleb128 0xb
	.string	"QImode"
	.sleb128 2
	.uleb128 0xb
	.string	"HImode"
	.sleb128 3
	.uleb128 0xb
	.string	"SImode"
	.sleb128 4
	.uleb128 0xb
	.string	"DImode"
	.sleb128 5
	.uleb128 0xb
	.string	"TImode"
	.sleb128 6
	.uleb128 0xb
	.string	"OImode"
	.sleb128 7
	.uleb128 0xb
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xb
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xb
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xb
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xb
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xb
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xb
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xb
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xb
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xb
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xb
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xb
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xb
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xb
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xb
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xb
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xb
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xb
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xb
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xb
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xb
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xb
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xb
	.string	"COImode"
	.sleb128 30
	.uleb128 0xb
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xb
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xb
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xb
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xb
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xb
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xb
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xb
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xb
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xb
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xb
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xb
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xb
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xb
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xb
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xb
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xb
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xb
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xb
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xb
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xb
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xb
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xb
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xb
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x16
	.long	0x12ad
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0xb
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xb
	.string	"NIL"
	.sleb128 1
	.uleb128 0xb
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xb
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xb
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xb
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xb
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xb
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xb
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xb
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xb
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xb
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xb
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xb
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xb
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xb
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xb
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xb
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xb
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xb
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xb
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xb
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xb
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xb
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xb
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xb
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xb
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xb
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xb
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xb
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xb
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xb
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xb
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xb
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xb
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xb
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xb
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xb
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xb
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xb
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xb
	.string	"INSN"
	.sleb128 42
	.uleb128 0xb
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xb
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xb
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xb
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xb
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xb
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xb
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xb
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xb
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xb
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xb
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xb
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xb
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xb
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xb
	.string	"SET"
	.sleb128 57
	.uleb128 0xb
	.string	"USE"
	.sleb128 58
	.uleb128 0xb
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xb
	.string	"CALL"
	.sleb128 60
	.uleb128 0xb
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xb
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xb
	.string	"RESX"
	.sleb128 63
	.uleb128 0xb
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xb
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xb
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xb
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xb
	.string	"CONST"
	.sleb128 68
	.uleb128 0xb
	.string	"PC"
	.sleb128 69
	.uleb128 0xb
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xb
	.string	"REG"
	.sleb128 71
	.uleb128 0xb
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xb
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xb
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xb
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xb
	.string	"MEM"
	.sleb128 76
	.uleb128 0xb
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xb
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xb
	.string	"CC0"
	.sleb128 79
	.uleb128 0xb
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xb
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xb
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xb
	.string	"COND"
	.sleb128 83
	.uleb128 0xb
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xb
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xb
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xb
	.string	"NEG"
	.sleb128 87
	.uleb128 0xb
	.string	"MULT"
	.sleb128 88
	.uleb128 0xb
	.string	"DIV"
	.sleb128 89
	.uleb128 0xb
	.string	"MOD"
	.sleb128 90
	.uleb128 0xb
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xb
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xb
	.string	"AND"
	.sleb128 93
	.uleb128 0xb
	.string	"IOR"
	.sleb128 94
	.uleb128 0xb
	.string	"XOR"
	.sleb128 95
	.uleb128 0xb
	.string	"NOT"
	.sleb128 96
	.uleb128 0xb
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xb
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xb
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xb
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xb
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xb
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xb
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xb
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xb
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xb
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xb
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xb
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xb
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xb
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xb
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xb
	.string	"NE"
	.sleb128 112
	.uleb128 0xb
	.string	"EQ"
	.sleb128 113
	.uleb128 0xb
	.string	"GE"
	.sleb128 114
	.uleb128 0xb
	.string	"GT"
	.sleb128 115
	.uleb128 0xb
	.string	"LE"
	.sleb128 116
	.uleb128 0xb
	.string	"LT"
	.sleb128 117
	.uleb128 0xb
	.string	"GEU"
	.sleb128 118
	.uleb128 0xb
	.string	"GTU"
	.sleb128 119
	.uleb128 0xb
	.string	"LEU"
	.sleb128 120
	.uleb128 0xb
	.string	"LTU"
	.sleb128 121
	.uleb128 0xb
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xb
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xb
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xb
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xb
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xb
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xb
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xb
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xb
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xb
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xb
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xb
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xb
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xb
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xb
	.string	"FIX"
	.sleb128 136
	.uleb128 0xb
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xb
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xb
	.string	"ABS"
	.sleb128 139
	.uleb128 0xb
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xb
	.string	"FFS"
	.sleb128 141
	.uleb128 0xb
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xb
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xb
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xb
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xb
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xb
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xb
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xb
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xb
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xb
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xb
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xb
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xb
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xb
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xb
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xb
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xb
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xb
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xb
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xb
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xb
	.string	"PHI"
	.sleb128 162
	.uleb128 0xb
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x1387
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x467
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x4b
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x4c
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x4e
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x50
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x52
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x55
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x57
	.long	0x467
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x3
	.byte	0x58
	.long	0x12ad
	.uleb128 0x13
	.long	0x13fe
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0x13a2
	.uleb128 0x19
	.long	0x14db
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x503
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x218
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x467
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x205
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9e
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x895
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1387
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x14ef
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1557
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e7
	.uleb128 0x1a
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x16e1
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x16e7
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x14db
	.uleb128 0x4
	.long	0x1557
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x17b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x17b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14f5
	.uleb128 0x4
	.long	0x16e1
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x2
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x1ed2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x1ed2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x1e02
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x1e02
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x1e02
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x1e02
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x214d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x155d
	.uleb128 0x3
	.byte	0x4
	.long	0x13fe
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1409
	.uleb128 0xf
	.long	0x170c
	.long	0x16ed
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x171c
	.long	0x9e
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x4d2
	.uleb128 0x4
	.long	0x178c
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x6
	.byte	0x35
	.long	0x178c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x178c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1735
	.uleb128 0xf
	.long	0x17a2
	.long	0x1722
	.uleb128 0x10
	.long	0x47e
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x1735
	.uleb128 0x3
	.byte	0x4
	.long	0x17a2
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x6
	.byte	0x42
	.long	0x14f5
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1557
	.uleb128 0x4
	.long	0x1839
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1839
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x1849
	.long	0x514
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1858
	.uleb128 0x3
	.byte	0x4
	.long	0x17df
	.uleb128 0x3
	.byte	0x4
	.long	0x514
	.uleb128 0x4
	.long	0x189a
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xf
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xf
	.byte	0x36
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x1a35
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xf
	.byte	0x3c
	.uleb128 0xb
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xb
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xb
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xb
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xb
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xb
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xb
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xb
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xb
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xb
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xb
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xb
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xb
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xb
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xb
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xb
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xb
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xb
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xb
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xb
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xb
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x19
	.long	0x1b31
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xf
	.byte	0x55
	.uleb128 0x1a
	.string	"c"
	.byte	0xf
	.byte	0x56
	.long	0x85c
	.uleb128 0x1a
	.string	"uc"
	.byte	0xf
	.byte	0x58
	.long	0x1b31
	.uleb128 0x1a
	.string	"s"
	.byte	0xf
	.byte	0x5a
	.long	0x1b41
	.uleb128 0x1a
	.string	"us"
	.byte	0xf
	.byte	0x5c
	.long	0x1b51
	.uleb128 0x1a
	.string	"i"
	.byte	0xf
	.byte	0x5e
	.long	0x1b61
	.uleb128 0x1a
	.string	"u"
	.byte	0xf
	.byte	0x60
	.long	0x1b71
	.uleb128 0x1a
	.string	"l"
	.byte	0xf
	.byte	0x62
	.long	0x1b81
	.uleb128 0x1a
	.string	"ul"
	.byte	0xf
	.byte	0x64
	.long	0x1b91
	.uleb128 0x1a
	.string	"hint"
	.byte	0xf
	.byte	0x66
	.long	0x1ba1
	.uleb128 0x1a
	.string	"uhint"
	.byte	0xf
	.byte	0x68
	.long	0x1839
	.uleb128 0x1a
	.string	"generic"
	.byte	0xf
	.byte	0x6a
	.long	0x1bb1
	.uleb128 0x1a
	.string	"cptr"
	.byte	0xf
	.byte	0x6c
	.long	0x1bc1
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xf
	.byte	0x6e
	.long	0x1bd1
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0xf
	.byte	0x70
	.long	0x1be1
	.uleb128 0x1a
	.string	"tree"
	.byte	0xf
	.byte	0x72
	.long	0x1bf1
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0xf
	.byte	0x74
	.long	0x1c01
	.uleb128 0x1a
	.string	"reg"
	.byte	0xf
	.byte	0x76
	.long	0x1c11
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0xf
	.byte	0x78
	.long	0x1d0d
	.uleb128 0x1a
	.string	"bb"
	.byte	0xf
	.byte	0x7a
	.long	0x1d1d
	.uleb128 0x1a
	.string	"te"
	.byte	0xf
	.byte	0x7c
	.long	0x1d2d
	.byte	0x0
	.uleb128 0xf
	.long	0x1b41
	.long	0x4ab
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b51
	.long	0x4f6
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b61
	.long	0x4bc
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b71
	.long	0x218
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b81
	.long	0x467
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b91
	.long	0x54d
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ba1
	.long	0x4d2
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bb1
	.long	0x503
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bc1
	.long	0x56a
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bd1
	.long	0x56c
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1be1
	.long	0xa9
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bf1
	.long	0x1ac
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c01
	.long	0x1f3
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c11
	.long	0x1557
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1c21
	.long	0x1d07
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1d07
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xf
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x10
	.byte	0x31
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x10
	.byte	0x32
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x10
	.byte	0x33
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x10
	.byte	0x36
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x10
	.byte	0x39
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x10
	.byte	0x3a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x10
	.byte	0x3b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x10
	.byte	0x3c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x10
	.byte	0x3d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x10
	.byte	0x3e
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x10
	.byte	0x3f
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c21
	.uleb128 0xf
	.long	0x1d1d
	.long	0x1864
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d2d
	.long	0x16e1
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1d3d
	.long	0x1d48
	.uleb128 0x10
	.long	0x47e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1d3d
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xf
	.byte	0x7e
	.long	0x1a35
	.uleb128 0x4
	.long	0x1dd6
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xf
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xf
	.byte	0x82
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xf
	.byte	0x83
	.long	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xf
	.byte	0x85
	.long	0x189a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xf
	.byte	0x86
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xf
	.byte	0x87
	.long	0x1d4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xf
	.byte	0x8a
	.long	0x1de9
	.uleb128 0x3
	.byte	0x4
	.long	0x1d61
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x2
	.byte	0x20
	.long	0x17be
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x17d1
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x503
	.uleb128 0x4
	.long	0x1ecc
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1ecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1ecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x16e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e21
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x1ecc
	.uleb128 0x4
	.long	0x214d
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x2153
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x2153
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x2153
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x2176
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x2153
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x2153
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x1849
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x2176
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x2176
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x1849
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x217c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x214d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x214d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF4
	.byte	0x2
	.value	0x1b7
	.long	0x214d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ede
	.uleb128 0x18
	.long	.LASF5
	.byte	0x2
	.byte	0xe6
	.long	0x16e1
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x2
	.value	0x170
	.long	0x216a
	.uleb128 0x3
	.byte	0x4
	.long	0x2170
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ed2
	.uleb128 0x3
	.byte	0x4
	.long	0x214d
	.uleb128 0x20
	.long	0x21ce
	.long	.LASF7
	.byte	0xc
	.byte	0x2
	.value	0x23b
	.uleb128 0xd
	.string	"num_blocks"
	.byte	0x2
	.value	0x23c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x2
	.value	0x23d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"index_to_edge"
	.byte	0x2
	.value	0x23e
	.long	0x2176
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x2233
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x11
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x11
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x11
	.byte	0x19
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x11
	.byte	0x1a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x11
	.byte	0x1b
	.long	0x2233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21ce
	.uleb128 0x13
	.long	0x2281
	.long	.LASF9
	.byte	0x10
	.byte	0x11
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x11
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x11
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x11
	.byte	0x28
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x11
	.byte	0x29
	.long	0x2281
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2239
	.uleb128 0x4
	.long	0x23d6
	.string	"emit_status"
	.byte	0x34
	.byte	0x11
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x11
	.byte	0x3a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x11
	.byte	0x3d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x11
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x11
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x11
	.byte	0x4a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x11
	.byte	0x50
	.long	0x2281
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x11
	.byte	0x54
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x11
	.byte	0x58
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x11
	.byte	0x59
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x11
	.byte	0x5f
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x11
	.byte	0x65
	.long	0x7f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x11
	.byte	0x69
	.long	0x23d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x11
	.byte	0x70
	.long	0x171c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7
	.uleb128 0x4
	.long	0x24bc
	.string	"expr_status"
	.byte	0x1c
	.byte	0x11
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x11
	.byte	0x80
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x11
	.byte	0x91
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x11
	.byte	0x97
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x11
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x11
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x11
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x11
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x21
	.long	0x2526
	.long	.LASF11
	.byte	0x4
	.byte	0x11
	.value	0x1f1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x22
	.long	0x2ee5
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x11
	.byte	0xb5
	.long	0x2ef1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x11
	.byte	0xb6
	.long	0x2f05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x11
	.byte	0xb7
	.long	0x2f0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x11
	.byte	0xb8
	.long	0x2f11
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x11
	.byte	0xb9
	.long	0x2f27
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x11
	.byte	0xbe
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x11
	.byte	0xc1
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x11
	.byte	0xc4
	.long	0x2f2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x11
	.byte	0xc9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x11
	.byte	0xce
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x11
	.byte	0xd3
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x11
	.byte	0xd7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x11
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x11
	.byte	0xdf
	.long	0x485
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x11
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x11
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x11
	.byte	0xec
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x11
	.byte	0xf0
	.long	0x2f4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x11
	.byte	0xf3
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x11
	.byte	0xf8
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x11
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x11
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x11
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x11
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x11
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x11
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x11
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x11
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x11
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x11
	.value	0x121
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x11
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x11
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x11
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x11
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x11
	.value	0x138
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x11
	.value	0x13d
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x11
	.value	0x146
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x11
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x11
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x11
	.value	0x151
	.long	0x467
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x11
	.value	0x157
	.long	0x171c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x11
	.value	0x15a
	.long	0x2f5c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x11
	.value	0x15d
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x11
	.value	0x160
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x11
	.value	0x166
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x11
	.value	0x16a
	.long	0x2233
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x11
	.value	0x16d
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x11
	.value	0x16e
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x11
	.value	0x16f
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x11
	.value	0x170
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x11
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x11
	.value	0x175
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x11
	.value	0x178
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x11
	.value	0x17d
	.long	0x2f75
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x11
	.value	0x17f
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x11
	.value	0x181
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x11
	.value	0x184
	.long	0x2f8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x11
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x23
	.string	"returns_struct"
	.byte	0x11
	.value	0x190
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pcc_struct"
	.byte	0x11
	.value	0x194
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pointer"
	.byte	0x11
	.value	0x197
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"needs_context"
	.byte	0x11
	.value	0x19a
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_setjmp"
	.byte	0x11
	.value	0x19d
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_longjmp"
	.byte	0x11
	.value	0x1a0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_alloca"
	.byte	0x11
	.value	0x1a4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_eh_return"
	.byte	0x11
	.value	0x1a7
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_label"
	.byte	0x11
	.value	0x1ab
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_goto"
	.byte	0x11
	.value	0x1af
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"contains_functions"
	.byte	0x11
	.value	0x1b2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_computed_jump"
	.byte	0x11
	.value	0x1b5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"is_thunk"
	.byte	0x11
	.value	0x1ba
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"all_throwers_are_sibcalls"
	.byte	0x11
	.value	0x1c1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"instrument_entry_exit"
	.byte	0x11
	.value	0x1c5
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arc_profile"
	.byte	0x11
	.value	0x1c8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"profile"
	.byte	0x11
	.value	0x1cb
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"limit_stack"
	.byte	0x11
	.value	0x1cf
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"stdarg"
	.byte	0x11
	.value	0x1d2
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_whole_function_mode_p"
	.byte	0x11
	.value	0x1d8
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x11
	.value	0x1e1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_const_pool"
	.byte	0x11
	.value	0x1e4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_pic_offset_table"
	.byte	0x11
	.value	0x1e7
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_eh_lsda"
	.byte	0x11
	.value	0x1ea
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arg_pointer_save_area_init"
	.byte	0x11
	.value	0x1ed
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x11
	.value	0x1fa
	.long	0x24bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x11
	.value	0x1fe
	.long	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ee5
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ef7
	.uleb128 0x3
	.byte	0x4
	.long	0x23dc
	.uleb128 0x3
	.byte	0x4
	.long	0x2287
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f17
	.uleb128 0x3
	.byte	0x4
	.long	0x2526
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f33
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f50
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f62
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f7b
	.uleb128 0x16
	.long	0x301f
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x12
	.byte	0x21
	.uleb128 0xb
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0xb
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0xb
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0xb
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0xb
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0xb
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0xb
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0xb
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x4
	.long	0x314f
	.string	"function_unit_desc"
	.byte	0x2c
	.byte	0x13
	.byte	0x3e
	.uleb128 0x6
	.string	"name"
	.byte	0x13
	.byte	0x3f
	.long	0x314f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bitmask"
	.byte	0x13
	.byte	0x40
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"multiplicity"
	.byte	0x13
	.byte	0x41
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"simultaneity"
	.byte	0x13
	.byte	0x42
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"default_cost"
	.byte	0x13
	.byte	0x43
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"max_issue_delay"
	.byte	0x13
	.byte	0x44
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ready_cost_function"
	.byte	0x13
	.byte	0x45
	.long	0x3164
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"conflict_cost_function"
	.byte	0x13
	.byte	0x46
	.long	0x3184
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"max_blockage"
	.byte	0x13
	.byte	0x47
	.long	0x882
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"blockage_range_function"
	.byte	0x13
	.byte	0x48
	.long	0x319f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"blockage_function"
	.byte	0x13
	.byte	0x49
	.long	0x3184
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x8
	.long	0x205
	.uleb128 0x24
	.long	0x3164
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x9e
	.byte	0x0
	.uleb128 0x8
	.long	0x3169
	.uleb128 0x3
	.byte	0x4
	.long	0x3154
	.uleb128 0x24
	.long	0x3184
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x9e
	.byte	0x0
	.uleb128 0x8
	.long	0x3189
	.uleb128 0x3
	.byte	0x4
	.long	0x316f
	.uleb128 0x24
	.long	0x319f
	.byte	0x1
	.long	0x467
	.uleb128 0x25
	.long	0x9e
	.byte	0x0
	.uleb128 0x8
	.long	0x31a4
	.uleb128 0x3
	.byte	0x4
	.long	0x318f
	.uleb128 0x2
	.string	"state_t"
	.byte	0x13
	.byte	0x82
	.long	0x56a
	.uleb128 0x4
	.long	0x322c
	.string	"deps_reg"
	.byte	0x14
	.byte	0x8
	.byte	0x68
	.uleb128 0x6
	.string	"uses"
	.byte	0x8
	.byte	0x69
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sets"
	.byte	0x8
	.byte	0x6a
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"clobbers"
	.byte	0x8
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses_length"
	.byte	0x8
	.byte	0x6c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"clobbers_length"
	.byte	0x8
	.byte	0x6d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x33ed
	.string	"deps"
	.byte	0x54
	.byte	0x8
	.byte	0x1f
	.uleb128 0x6
	.string	"pending_read_insns"
	.byte	0x8
	.byte	0x2a
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"pending_read_mems"
	.byte	0x8
	.byte	0x2d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pending_write_insns"
	.byte	0x8
	.byte	0x30
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pending_write_mems"
	.byte	0x8
	.byte	0x33
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pending_lists_length"
	.byte	0x8
	.byte	0x39
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pending_flush_length"
	.byte	0x8
	.byte	0x3d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"last_pending_memory_flush"
	.byte	0x8
	.byte	0x48
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"last_function_call"
	.byte	0x8
	.byte	0x4d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"sched_before_next_call"
	.byte	0x8
	.byte	0x53
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"in_post_call_group_p"
	.byte	0x8
	.byte	0x57
	.long	0x33ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"libcall_block_tail_insn"
	.byte	0x8
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"max_reg"
	.byte	0x8
	.byte	0x61
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"reg_last"
	.byte	0x8
	.byte	0x6e
	.long	0x33f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"reg_last_in_use"
	.byte	0x8
	.byte	0x72
	.long	0x1def
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"reg_conditional_sets"
	.byte	0x8
	.byte	0x75
	.long	0x1def
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x31b9
	.uleb128 0x4
	.long	0x34fd
	.string	"sched_info"
	.byte	0x34
	.byte	0x8
	.byte	0x7e
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x8
	.byte	0x81
	.long	0x351c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x8
	.byte	0x84
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x8
	.byte	0x86
	.long	0x3528
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x8
	.byte	0x8a
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"rank"
	.byte	0x8
	.byte	0x8e
	.long	0x3189
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"print_insn"
	.byte	0x8
	.byte	0x93
	.long	0x3543
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x8
	.byte	0x96
	.long	0x3189
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x8
	.byte	0x9a
	.long	0x3564
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x8
	.byte	0x9d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x8
	.byte	0x9d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x8
	.byte	0xa1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x8
	.byte	0xa1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"queue_must_finish_empty"
	.byte	0x8
	.byte	0xa4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"use_cselib"
	.byte	0x8
	.byte	0xa9
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x26
	.long	0x3509
	.byte	0x1
	.uleb128 0x25
	.long	0x3509
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x350f
	.uleb128 0x1b
	.string	"ready_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34fd
	.uleb128 0x27
	.byte	0x1
	.long	0x218
	.uleb128 0x3
	.byte	0x4
	.long	0x3522
	.uleb128 0x24
	.long	0x3543
	.byte	0x1
	.long	0x205
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x352e
	.uleb128 0x26
	.long	0x3564
	.byte	0x1
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x1e02
	.uleb128 0x25
	.long	0x1e02
	.uleb128 0x25
	.long	0x1e02
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3549
	.uleb128 0x4
	.long	0x36b3
	.string	"haifa_insn_data"
	.byte	0x28
	.byte	0x8
	.byte	0xb2
	.uleb128 0x6
	.string	"depend"
	.byte	0x8
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line_note"
	.byte	0x8
	.byte	0xb9
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0x8
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"priority"
	.byte	0x8
	.byte	0xbf
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"dep_count"
	.byte	0x8
	.byte	0xc4
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"blockage"
	.byte	0x8
	.byte	0xc8
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ref_count"
	.byte	0x8
	.byte	0xcb
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"tick"
	.byte	0x8
	.byte	0xcf
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"cost"
	.byte	0x8
	.byte	0xd1
	.long	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"units"
	.byte	0x8
	.byte	0xd5
	.long	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x6
	.string	"reg_weight"
	.byte	0x8
	.byte	0xd9
	.long	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"cant_move"
	.byte	0x8
	.byte	0xdc
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"fed_by_spec_load"
	.byte	0x8
	.byte	0xe0
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"is_load_insn"
	.byte	0x8
	.byte	0xe1
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"priority_known"
	.byte	0x8
	.byte	0xe4
	.long	0x467
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x4
	.long	0x36fb
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x14
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x14
	.byte	0x3b
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x14
	.byte	0x3c
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x14
	.byte	0x3d
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x14
	.byte	0x3e
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x3931
	.string	"asm_out"
	.byte	0x70
	.byte	0x14
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x14
	.byte	0x35
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x14
	.byte	0x35
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x14
	.byte	0x38
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x36b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x36b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x14
	.byte	0x46
	.long	0x394b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x14
	.byte	0x49
	.long	0x3968
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x14
	.byte	0x4d
	.long	0x397f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x14
	.byte	0x50
	.long	0x3996
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x14
	.byte	0x53
	.long	0x39a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x14
	.byte	0x56
	.long	0x39a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x14
	.byte	0x59
	.long	0x3996
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x14
	.byte	0x5d
	.long	0x39bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x14
	.byte	0x60
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x14
	.byte	0x63
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x14
	.byte	0x6a
	.long	0x39db
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x14
	.byte	0x6e
	.long	0x39f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x14
	.byte	0x73
	.long	0x397f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x14
	.byte	0x76
	.long	0x3a0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x14
	.byte	0x79
	.long	0x3a0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x14
	.byte	0x80
	.long	0x3a34
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x14
	.byte	0x8b
	.long	0x3a59
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x24
	.long	0x394b
	.byte	0x1
	.long	0x33ed
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x467
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3931
	.uleb128 0x26
	.long	0x3962
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x205
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x572
	.uleb128 0x3
	.byte	0x4
	.long	0x3951
	.uleb128 0x26
	.long	0x397f
	.byte	0x1
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x396e
	.uleb128 0x26
	.long	0x3996
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x503
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3985
	.uleb128 0x26
	.long	0x39a8
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x399c
	.uleb128 0x26
	.long	0x39bf
	.byte	0x1
	.uleb128 0x25
	.long	0x205
	.uleb128 0x25
	.long	0x467
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x39ae
	.uleb128 0x26
	.long	0x39db
	.byte	0x1
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x218
	.uleb128 0x25
	.long	0x514
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x39c5
	.uleb128 0x26
	.long	0x39f7
	.byte	0x1
	.uleb128 0x25
	.long	0x895
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x514
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x39e1
	.uleb128 0x26
	.long	0x3a0e
	.byte	0x1
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x39fd
	.uleb128 0x26
	.long	0x3a34
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x503
	.uleb128 0x25
	.long	0x503
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a14
	.uleb128 0x24
	.long	0x3a59
	.byte	0x1
	.long	0x33ed
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x503
	.uleb128 0x25
	.long	0x503
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a3a
	.uleb128 0x4
	.long	0x3c1a
	.string	"sched"
	.byte	0x40
	.byte	0x14
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x14
	.byte	0x97
	.long	0x3c39
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x14
	.byte	0x9b
	.long	0x3c54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x14
	.byte	0xa0
	.long	0x3528
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x14
	.byte	0xa4
	.long	0x3c79
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x14
	.byte	0xa7
	.long	0x3c95
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x14
	.byte	0xaa
	.long	0x3cac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x14
	.byte	0xae
	.long	0x3cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x14
	.byte	0xaf
	.long	0x3cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x14
	.byte	0xb4
	.long	0x3528
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc2
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc3
	.long	0x3ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc4
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc5
	.long	0x3ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x14
	.byte	0xcd
	.long	0x3528
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x14
	.byte	0xd8
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x14
	.byte	0xd9
	.long	0x3cf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x24
	.long	0x3c39
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c1a
	.uleb128 0x24
	.long	0x3c54
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c3f
	.uleb128 0x24
	.long	0x3c79
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x218
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c5a
	.uleb128 0x26
	.long	0x3c95
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x218
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c7f
	.uleb128 0x26
	.long	0x3cac
	.byte	0x1
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c9b
	.uleb128 0x24
	.long	0x3cd6
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x3962
	.uleb128 0x25
	.long	0x218
	.uleb128 0x25
	.long	0x171c
	.uleb128 0x25
	.long	0x887
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cb2
	.uleb128 0x27
	.byte	0x1
	.long	0x9e
	.uleb128 0x3
	.byte	0x4
	.long	0x3cdc
	.uleb128 0x24
	.long	0x3cf8
	.byte	0x1
	.long	0x9e
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3ce8
	.uleb128 0x4
	.long	0x3fe7
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x14
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x14
	.byte	0x8f
	.long	0x36fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x14
	.byte	0xda
	.long	0x3a5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x14
	.byte	0xdd
	.long	0x3ffc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x14
	.byte	0xe0
	.long	0x3ffc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x14
	.byte	0xe4
	.long	0x4013
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x14
	.byte	0xe9
	.long	0x4033
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x14
	.byte	0xec
	.long	0x4045
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x14
	.byte	0xef
	.long	0x405c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x14
	.byte	0xf3
	.long	0x4072
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x14
	.byte	0xf7
	.long	0x4072
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x14
	.byte	0xfa
	.long	0x88f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x14
	.byte	0xfd
	.long	0x409c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x14
	.value	0x103
	.long	0x40bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x14
	.value	0x107
	.long	0x40c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x14
	.value	0x10a
	.long	0x40de
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x14
	.value	0x10d
	.long	0x4072
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x14
	.value	0x111
	.long	0x4072
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x14
	.value	0x115
	.long	0x397f
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x14
	.value	0x118
	.long	0x40f4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x14
	.value	0x11d
	.long	0x33ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x14
	.value	0x121
	.long	0x33ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x14
	.value	0x124
	.long	0x33ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x14
	.value	0x127
	.long	0x33ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x14
	.value	0x12a
	.long	0x33ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x24
	.long	0x3ffc
	.byte	0x1
	.long	0x1e7
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3fe7
	.uleb128 0x1b
	.string	"attribute_spec"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4019
	.uleb128 0x8
	.long	0x4002
	.uleb128 0x24
	.long	0x4033
	.byte	0x1
	.long	0x218
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x401e
	.uleb128 0x26
	.long	0x4045
	.byte	0x1
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4039
	.uleb128 0x26
	.long	0x405c
	.byte	0x1
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x23d6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x404b
	.uleb128 0x24
	.long	0x4072
	.byte	0x1
	.long	0x33ed
	.uleb128 0x25
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4062
	.uleb128 0x24
	.long	0x409c
	.byte	0x1
	.long	0x9e
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x9e
	.uleb128 0x25
	.long	0x895
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4078
	.uleb128 0x24
	.long	0x40bc
	.byte	0x1
	.long	0x467
	.uleb128 0x25
	.long	0x1e7
	.uleb128 0x25
	.long	0x205
	.uleb128 0x25
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40a2
	.uleb128 0x27
	.byte	0x1
	.long	0x33ed
	.uleb128 0x3
	.byte	0x4
	.long	0x40c2
	.uleb128 0x24
	.long	0x40de
	.byte	0x1
	.long	0x33ed
	.uleb128 0x25
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40ce
	.uleb128 0x24
	.long	0x40f4
	.byte	0x1
	.long	0x205
	.uleb128 0x25
	.long	0x205
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40e4
	.uleb128 0x17
	.long	0x4150
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.uleb128 0x6
	.string	"from_block"
	.byte	0x1
	.byte	0x5d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"to_block"
	.byte	0x1
	.byte	0x5e
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"next_in"
	.byte	0x1
	.byte	0x5f
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_out"
	.byte	0x1
	.byte	0x60
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"haifa_edge"
	.byte	0x1
	.byte	0x62
	.long	0x40fa
	.uleb128 0x17
	.long	0x4198
	.byte	0x8
	.byte	0x1
	.byte	0x7d
	.uleb128 0x6
	.string	"rgn_nr_blocks"
	.byte	0x1
	.byte	0x7e
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rgn_blocks"
	.byte	0x1
	.byte	0x7f
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"region"
	.byte	0x1
	.byte	0x81
	.long	0x4162
	.uleb128 0x17
	.long	0x41db
	.byte	0x8
	.byte	0x1
	.byte	0xa9
	.uleb128 0x6
	.string	"first_member"
	.byte	0x1
	.byte	0xaa
	.long	0x887
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"nr_members"
	.byte	0x1
	.byte	0xab
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"bitlst"
	.byte	0x1
	.byte	0xad
	.long	0x41a6
	.uleb128 0x2
	.string	"bblst"
	.byte	0x1
	.byte	0xbb
	.long	0x41db
	.uleb128 0x17
	.long	0x4267
	.byte	0x18
	.byte	0x1
	.byte	0xbd
	.uleb128 0x6
	.string	"is_valid"
	.byte	0x1
	.byte	0xbe
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"is_speculative"
	.byte	0x1
	.byte	0xbf
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"src_prob"
	.byte	0x1
	.byte	0xc0
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"split_bbs"
	.byte	0x1
	.byte	0xc1
	.long	0x41e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"update_bbs"
	.byte	0x1
	.byte	0xc2
	.long	0x41e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"candidate"
	.byte	0x1
	.byte	0xc4
	.long	0x41f6
	.uleb128 0x2
	.string	"edgelst"
	.byte	0x1
	.byte	0xd9
	.long	0x41db
	.uleb128 0x2
	.string	"edgeset"
	.byte	0x1
	.byte	0xf7
	.long	0x1849
	.uleb128 0x28
	.long	0x4308
	.string	"is_cfg_nonregular"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	0x218
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x13d
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x13e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"code"
	.byte	0x1
	.value	0x13f
	.long	0xade
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x15e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x4393
	.string	"build_control_flow"
	.byte	0x1
	.value	0x17a
	.byte	0x1
	.long	0x218
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x179
	.long	0x4393
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x17b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x17b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x17b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x17c
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x198
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2182
	.uleb128 0x2d
	.long	0x4422
	.string	"new_edge"
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.string	"source"
	.byte	0x1
	.value	0x1ad
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"target"
	.byte	0x1
	.value	0x1ad
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x1af
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"next_edge"
	.byte	0x1
	.value	0x1af
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"curr_edge"
	.byte	0x1
	.value	0x1b0
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x1b0
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x44f0
	.string	"extract_bitlst"
	.byte	0x1
	.value	0x1e6
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x1e4
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1e5
	.long	0x44f0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1e7
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x1f0
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x1f0
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"size_"
	.byte	0x1
	.value	0x1f0
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"ptr_"
	.byte	0x1
	.value	0x1f0
	.long	0x185e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x29
	.string	"word_"
	.byte	0x1
	.value	0x1f0
	.long	0x514
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x29
	.string	"_mask"
	.byte	0x1
	.value	0x1f0
	.long	0x514
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x41db
	.uleb128 0x2f
	.long	0x4548
	.byte	0x1
	.string	"debug_regions"
	.byte	0x1
	.value	0x1fe
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x29
	.string	"rgn"
	.byte	0x1
	.value	0x1ff
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1ff
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF26
	.long	0x5c41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10959
	.byte	0x0
	.uleb128 0x2d
	.long	0x4585
	.string	"find_single_block_region"
	.byte	0x1
	.value	0x21c
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x21d
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x28
	.long	0x45dc
	.string	"too_large"
	.byte	0x1
	.value	0x233
	.byte	0x1
	.long	0x218
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2e
	.string	"block"
	.byte	0x1
	.value	0x232
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"num_bbs"
	.byte	0x1
	.value	0x232
	.long	0x887
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x232
	.long	0x887
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2d
	.long	0x48a5
	.string	"find_rgns"
	.byte	0x1
	.value	0x26f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x26d
	.long	0x4393
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dom"
	.byte	0x1
	.value	0x26e
	.long	0x215e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"max_hdr"
	.byte	0x1
	.value	0x270
	.long	0x887
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.string	"dfs_nr"
	.byte	0x1
	.value	0x270
	.long	0x887
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.string	"stack"
	.byte	0x1
	.value	0x270
	.long	0x887
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x29
	.string	"degree"
	.byte	0x1
	.value	0x270
	.long	0x887
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.string	"no_loops"
	.byte	0x1
	.value	0x271
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x29
	.string	"node"
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.string	"child"
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"loop_head"
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x272
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.string	"count"
	.byte	0x1
	.value	0x273
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x273
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"idx"
	.byte	0x1
	.value	0x273
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.string	"current_edge"
	.byte	0x1
	.value	0x273
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"num_bbs"
	.byte	0x1
	.value	0x274
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x274
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x274
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"too_large_failure"
	.byte	0x1
	.value	0x275
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x276
	.long	0x2153
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.string	"passed"
	.byte	0x1
	.value	0x279
	.long	0x1849
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"header"
	.byte	0x1
	.value	0x27c
	.long	0x1849
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"inner"
	.byte	0x1
	.value	0x27f
	.long	0x1849
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"in_queue"
	.byte	0x1
	.value	0x282
	.long	0x1849
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"in_stack"
	.byte	0x1
	.value	0x285
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0x287
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.long	0x4816
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x313
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.string	"queue"
	.byte	0x1
	.value	0x31d
	.long	0x887
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x32d
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"jbb"
	.byte	0x1
	.value	0x32e
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.long	0x4870
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x378
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x31
	.long	0x488b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x3b0
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x3e2
	.long	0x1ed2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x497f
	.string	"compute_dom_prob_ps"
	.byte	0x1
	.value	0x418
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x417
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"nxt_in_edge"
	.byte	0x1
	.value	0x419
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"fst_in_edge"
	.byte	0x1
	.value	0x419
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"pred"
	.byte	0x1
	.value	0x419
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"fst_out_edge"
	.byte	0x1
	.value	0x41a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"nxt_out_edge"
	.byte	0x1
	.value	0x41a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"nr_out_edges"
	.byte	0x1
	.value	0x41a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"nr_rgn_out_edges"
	.byte	0x1
	.value	0x41a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	0x49dc
	.string	"split_edges"
	.byte	0x1
	.value	0x469
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x466
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x467
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x468
	.long	0x49dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x46a
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4278
	.uleb128 0x2d
	.long	0x4ae3
	.string	"compute_trg_info"
	.byte	0x1
	.value	0x479
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2e
	.string	"trg"
	.byte	0x1
	.value	0x478
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x47a
	.long	0x4ae3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"el"
	.byte	0x1
	.value	0x47b
	.long	0x4278
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"check_block"
	.byte	0x1
	.value	0x47c
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"update_idx"
	.byte	0x1
	.value	0x47c
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x47d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x47d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x47d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x47d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"nxt_edge"
	.byte	0x1
	.value	0x47d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x4ad2
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x29
	.string	"update_blocks"
	.byte	0x1
	.value	0x49a
	.long	0x56c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x5c2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12558
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4267
	.uleb128 0x2f
	.long	0x4b66
	.byte	0x1
	.string	"debug_candidate"
	.byte	0x1
	.value	0x4dc
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x4db
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x4e2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	0x4b4d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x4e8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x4f1
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x4baa
	.byte	0x1
	.string	"debug_candidates"
	.byte	0x1
	.value	0x502
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.string	"trg"
	.byte	0x1
	.value	0x501
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x503
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x4c7e
	.string	"check_live_1"
	.byte	0x1
	.value	0x514
	.byte	0x1
	.long	0x218
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x512
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x513
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x515
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"regno"
	.byte	0x1
	.value	0x516
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x517
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x4c34
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x523
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0x4c66
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x53c
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x541
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x550
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4d4f
	.string	"update_live_1"
	.byte	0x1
	.value	0x564
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x562
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x563
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x565
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"regno"
	.byte	0x1
	.value	0x566
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x567
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x4d05
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x573
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0x4d37
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x588
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x58d
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x598
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x4da9
	.string	"check_live"
	.byte	0x1
	.value	0x5a8
	.byte	0x1
	.long	0x218
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x5a6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x5a7
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x5af
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4e00
	.string	"update_live"
	.byte	0x1
	.value	0x5c3
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x5c1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x5c2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x5ca
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4e42
	.string	"set_spec_fed"
	.byte	0x1
	.value	0x5de
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x5dd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x5df
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x28
	.long	0x4ec8
	.string	"find_conditional_protection"
	.byte	0x1
	.value	0x5ed
	.byte	0x1
	.long	0x218
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x5eb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"load_insn_bb"
	.byte	0x1
	.value	0x5ec
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x5ee
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x5f3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x4f55
	.string	"is_conditionally_protected"
	.byte	0x1
	.value	0x612
	.byte	0x1
	.long	0x218
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x610
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x611
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x611
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x613
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x29
	.string	"insn1"
	.byte	0x1
	.value	0x617
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x5020
	.string	"is_pfree"
	.byte	0x1
	.value	0x646
	.byte	0x1
	.long	0x218
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x644
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x645
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x645
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"back_link"
	.byte	0x1
	.value	0x647
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"candp"
	.byte	0x1
	.value	0x648
	.long	0x4ae3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x29
	.string	"insn1"
	.byte	0x1
	.value	0x651
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x29
	.string	"fore_link"
	.byte	0x1
	.value	0x656
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x29
	.string	"insn2"
	.byte	0x1
	.value	0x65b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x5071
	.string	"is_prisky"
	.byte	0x1
	.value	0x67b
	.byte	0x1
	.long	0x218
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x679
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x67a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x67a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x28
	.long	0x50e0
	.string	"is_exception_free"
	.byte	0x1
	.value	0x691
	.byte	0x1
	.long	0x218
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x68f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x690
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x690
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"insn_class"
	.byte	0x1
	.value	0x692
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	.LASF14
	.byte	0x1
	.value	0x6cf
	.byte	0x1
	.long	0x218
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x33
	.long	0x51eb
	.long	.LASF12
	.byte	0x1
	.value	0x6d9
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.string	"ready"
	.byte	0x1
	.value	0x6d8
	.long	0x3509
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x6da
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x6db
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF28
	.byte	0x1
	.value	0x6dc
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x6dd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x517c
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x701
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x29
	.string	"src_head"
	.byte	0x1
	.value	0x714
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"src_next_tail"
	.byte	0x1
	.value	0x715
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x716
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x716
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x72e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x525a
	.long	.LASF13
	.byte	0x1
	.value	0x744
	.byte	0x1
	.long	0x218
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x743
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0x74b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"b1"
	.byte	0x1
	.value	0x74c
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x76c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x5287
	.long	.LASF15
	.byte	0x1
	.value	0x78f
	.byte	0x1
	.long	0x218
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x78e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x52e4
	.string	"rgn_print_insn"
	.byte	0x1
	.value	0x7ae
	.byte	0x1
	.long	0x205
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x7ac
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"aligned"
	.byte	0x1
	.value	0x7ad
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x7af
	.long	0x5c0c
	.byte	0x5
	.byte	0x3
	.long	tmp.14085
	.byte	0x0
	.uleb128 0x28
	.long	0x535b
	.string	"rgn_rank"
	.byte	0x1
	.value	0x7c4
	.byte	0x1
	.long	0x218
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2e
	.string	"insn1"
	.byte	0x1
	.value	0x7c3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"insn2"
	.byte	0x1
	.value	0x7c3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x29
	.string	"spec_val"
	.byte	0x1
	.value	0x7c8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"prob_val"
	.byte	0x1
	.value	0x7c8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x5397
	.long	.LASF16
	.byte	0x1
	.value	0x7e4
	.byte	0x1
	.long	0x218
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x7e3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x7e3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x53f3
	.long	.LASF17
	.byte	0x1
	.value	0x7f3
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x7ef
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"cond_set"
	.byte	0x1
	.value	0x7f0
	.long	0x1e02
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"used"
	.byte	0x1
	.value	0x7f1
	.long	0x1e02
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x7f2
	.long	0x1e02
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x28
	.long	0x543f
	.string	"sets_likely_spilled"
	.byte	0x1
	.value	0x810
	.byte	0x1
	.long	0x33ed
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x80f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x811
	.long	0x33ed
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x2d
	.long	0x54a6
	.string	"sets_likely_spilled_1"
	.byte	0x1
	.value	0x81a
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x818
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x818
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x819
	.long	0x56a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x81b
	.long	0x54a6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33ed
	.uleb128 0x2d
	.long	0x5530
	.string	"add_branch_dependences"
	.byte	0x1
	.value	0x82a
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0x829
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x829
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x82b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"last"
	.byte	0x1
	.value	0x82b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0x85e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x5589
	.string	"concat_INSN_LIST"
	.byte	0x1
	.value	0x88b
	.byte	0x1
	.long	0x9e
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2e
	.string	"copy"
	.byte	0x1
	.value	0x88a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"old"
	.byte	0x1
	.value	0x88a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.value	0x88c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x5635
	.string	"concat_insn_mem_list"
	.byte	0x1
	.value	0x896
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2e
	.string	"copy_insns"
	.byte	0x1
	.value	0x894
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"copy_mems"
	.byte	0x1
	.value	0x894
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"old_insns_p"
	.byte	0x1
	.value	0x895
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"old_mems_p"
	.byte	0x1
	.value	0x895
	.long	0x171c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.string	"new_insns"
	.byte	0x1
	.value	0x897
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"new_mems"
	.byte	0x1
	.value	0x898
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x57b2
	.string	"propagate_deps"
	.byte	0x1
	.value	0x8ac
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x8aa
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pred_deps"
	.byte	0x1
	.value	0x8ab
	.long	0x57b2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x8ad
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x8ae
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"first_edge"
	.byte	0x1
	.value	0x8ae
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x29
	.string	"b_succ"
	.byte	0x1
	.value	0x8b5
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"bb_succ"
	.byte	0x1
	.value	0x8b6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"succ_deps"
	.byte	0x1
	.value	0x8b7
	.long	0x57b2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x8b8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x29
	.string	"ptr_"
	.byte	0x1
	.value	0x8c3
	.long	0x17b8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"indx_"
	.byte	0x1
	.value	0x8c3
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x8c3
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x8c3
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x29
	.string	"word_"
	.byte	0x1
	.value	0x8c3
	.long	0x1722
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x29
	.string	"mask_"
	.byte	0x1
	.value	0x8c3
	.long	0x1722
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x29
	.string	"pred_rl"
	.byte	0x1
	.value	0x8c3
	.long	0x33f6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"succ_rl"
	.byte	0x1
	.value	0x8c3
	.long	0x33f6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x322c
	.uleb128 0x2d
	.long	0x5832
	.string	"compute_block_backward_dependences"
	.byte	0x1
	.value	0x912
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x911
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x913
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x913
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"tmp_deps"
	.byte	0x1
	.value	0x914
	.long	0x322c
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x2d
	.long	0x5869
	.string	"free_pending_lists"
	.byte	0x1
	.value	0x929
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x92a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5947
	.byte	0x1
	.string	"debug_dependencies"
	.byte	0x1
	.value	0x939
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x93a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x941
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x941
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x942
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x943
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x95e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	0x5919
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x962
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x29
	.string	"unit"
	.byte	0x1
	.value	0x986
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"range"
	.byte	0x1
	.value	0x987
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5ac0
	.string	"schedule_region"
	.byte	0x1
	.value	0x9ab
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2e
	.string	"rgn"
	.byte	0x1
	.value	0x9aa
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x9ac
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"rgn_n_insns"
	.byte	0x1
	.value	0x9ad
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"sched_rgn_n_insns"
	.byte	0x1
	.value	0x9ae
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	0x59e9
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x9c2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x9c2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x31
	.long	0x5a15
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x9cb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x9cb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x31
	.long	0x5a30
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x9d4
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x5a83
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0x9f5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x9f5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x9f6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0xa0e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x5aaf
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0xa3e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0xa3e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x30
	.long	.LASF26
	.long	0x5c07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14883
	.byte	0x0
	.uleb128 0x2d
	.long	0x5b2c
	.string	"init_regions"
	.byte	0x1
	.value	0xa5e
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x29
	.string	"blocks"
	.byte	0x1
	.value	0xa5f
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"rgn"
	.byte	0x1
	.value	0xa60
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x29
	.string	"dom"
	.byte	0x1
	.value	0xa78
	.long	0x215e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0xa79
	.long	0x4393
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5be2
	.byte	0x1
	.string	"schedule_insns"
	.byte	0x1
	.value	0xabb
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2e
	.string	"dump_file"
	.byte	0x1
	.value	0xaba
	.long	0x3962
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"large_region_blocks"
	.byte	0x1
	.value	0xabc
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"blocks"
	.byte	0x1
	.value	0xabc
	.long	0x1849
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"rgn"
	.byte	0x1
	.value	0xabd
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"any_large_regions"
	.byte	0x1
	.value	0xabe
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xabf
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF26
	.long	0x5bf2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15259
	.byte	0x0
	.uleb128 0xf
	.long	0x5bf2
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x5be2
	.uleb128 0xf
	.long	0x5c07
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x5bf7
	.uleb128 0xf
	.long	0x5c1c
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0x4f
	.byte	0x0
	.uleb128 0xf
	.long	0x5c2c
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x5c1c
	.uleb128 0xf
	.long	0x5c41
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x5c31
	.uleb128 0x35
	.string	"nr_inter"
	.byte	0x1
	.byte	0x58
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	nr_inter
	.uleb128 0x35
	.string	"nr_spec"
	.byte	0x1
	.byte	0x58
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	nr_spec
	.uleb128 0x35
	.string	"edge_table"
	.byte	0x1
	.byte	0x63
	.long	0x5c89
	.byte	0x5
	.byte	0x3
	.long	edge_table
	.uleb128 0x3
	.byte	0x4
	.long	0x4150
	.uleb128 0x35
	.string	"nr_edges"
	.byte	0x1
	.byte	0x6c
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	nr_edges
	.uleb128 0x35
	.string	"in_edges"
	.byte	0x1
	.byte	0x6f
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	in_edges
	.uleb128 0x35
	.string	"out_edges"
	.byte	0x1
	.byte	0x70
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	out_edges
	.uleb128 0x35
	.string	"nr_regions"
	.byte	0x1
	.byte	0x84
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	nr_regions
	.uleb128 0x35
	.string	"rgn_table"
	.byte	0x1
	.byte	0x87
	.long	0x5d01
	.byte	0x5
	.byte	0x3
	.long	rgn_table
	.uleb128 0x3
	.byte	0x4
	.long	0x4198
	.uleb128 0x35
	.string	"rgn_bb_table"
	.byte	0x1
	.byte	0x8a
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	rgn_bb_table
	.uleb128 0x35
	.string	"block_to_bb"
	.byte	0x1
	.byte	0x90
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	block_to_bb
	.uleb128 0x35
	.string	"containing_rgn"
	.byte	0x1
	.byte	0x93
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	containing_rgn
	.uleb128 0x35
	.string	"current_nr_blocks"
	.byte	0x1
	.byte	0xa2
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	current_nr_blocks
	.uleb128 0x35
	.string	"current_blocks"
	.byte	0x1
	.byte	0xa3
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	current_blocks
	.uleb128 0x35
	.string	"bitlst_table_last"
	.byte	0x1
	.byte	0xaf
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	bitlst_table_last
	.uleb128 0x35
	.string	"bitlst_table_size"
	.byte	0x1
	.byte	0xb0
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	bitlst_table_size
	.uleb128 0x35
	.string	"bitlst_table"
	.byte	0x1
	.byte	0xb1
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	bitlst_table
	.uleb128 0x35
	.string	"candidate_table"
	.byte	0x1
	.byte	0xc6
	.long	0x4ae3
	.byte	0x5
	.byte	0x3
	.long	candidate_table
	.uleb128 0x35
	.string	"bblst_table"
	.byte	0x1
	.byte	0xcf
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	bblst_table
	.uleb128 0x35
	.string	"bblst_size"
	.byte	0x1
	.byte	0xcf
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	bblst_size
	.uleb128 0x35
	.string	"bblst_last"
	.byte	0x1
	.byte	0xcf
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	bblst_last
	.uleb128 0x35
	.string	"target_bb"
	.byte	0x1
	.byte	0xd6
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	target_bb
	.uleb128 0x35
	.string	"dom"
	.byte	0x1
	.byte	0xe3
	.long	0x5e77
	.byte	0x5
	.byte	0x3
	.long	dom
	.uleb128 0x3
	.byte	0x4
	.long	0x1849
	.uleb128 0x35
	.string	"prob"
	.byte	0x1
	.byte	0xee
	.long	0x5e8f
	.byte	0x5
	.byte	0x3
	.long	prob
	.uleb128 0x3
	.byte	0x4
	.long	0x5e95
	.uleb128 0x9
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x35
	.string	"rgn_nr_edges"
	.byte	0x1
	.byte	0xfa
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	rgn_nr_edges
	.uleb128 0x35
	.string	"rgn_edges"
	.byte	0x1
	.byte	0xfd
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	rgn_edges
	.uleb128 0x29
	.string	"edge_to_bit"
	.byte	0x1
	.value	0x101
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	edge_to_bit
	.uleb128 0x29
	.string	"pot_split"
	.byte	0x1
	.value	0x10a
	.long	0x5f01
	.byte	0x5
	.byte	0x3
	.long	pot_split
	.uleb128 0x3
	.byte	0x4
	.long	0x4287
	.uleb128 0x29
	.string	"ancestor_edges"
	.byte	0x1
	.value	0x10d
	.long	0x5f01
	.byte	0x5
	.byte	0x3
	.long	ancestor_edges
	.uleb128 0x29
	.string	"sched_target_n_insns"
	.byte	0x1
	.value	0x6b8
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	sched_target_n_insns
	.uleb128 0x29
	.string	"target_n_insns"
	.byte	0x1
	.value	0x6ba
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	target_n_insns
	.uleb128 0x29
	.string	"sched_n_insns"
	.byte	0x1
	.value	0x6bc
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	sched_n_insns
	.uleb128 0x29
	.string	"last_was_jump"
	.byte	0x1
	.value	0x6be
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	last_was_jump
	.uleb128 0x29
	.string	"region_sched_info"
	.byte	0x1
	.value	0x7fb
	.long	0x33fc
	.byte	0x5
	.byte	0x3
	.long	region_sched_info
	.uleb128 0x29
	.string	"bb_deps"
	.byte	0x1
	.value	0x884
	.long	0x57b2
	.byte	0x5
	.byte	0x3
	.long	bb_deps
	.uleb128 0x29
	.string	"deaths_in_region"
	.byte	0x1
	.value	0xa58
	.long	0x887
	.byte	0x5
	.byte	0x3
	.long	deaths_in_region
	.uleb128 0xf
	.long	0x5ffc
	.long	0x21f
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.string	"mips_regno_to_class"
	.byte	0xd
	.value	0x85d
	.long	0x601a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x5ff1
	.uleb128 0xf
	.long	0x602f
	.long	0x205
	.uleb128 0x10
	.long	0x47e
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_name"
	.byte	0x3
	.byte	0x39
	.long	0x6041
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x601f
	.uleb128 0xf
	.long	0x6056
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x6069
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x6046
	.uleb128 0xf
	.long	0x607e
	.long	0x205
	.uleb128 0x10
	.long	0x47e
	.byte	0x13
	.byte	0x0
	.uleb128 0x37
	.string	"note_insn_name"
	.byte	0x3
	.value	0x37a
	.long	0x6097
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x606e
	.uleb128 0x37
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x60c7
	.long	0x210
	.uleb128 0x10
	.long	0x47e
	.byte	0xaf
	.byte	0x0
	.uleb128 0x37
	.string	"global_regs"
	.byte	0xe
	.value	0x1b4
	.long	0x60b7
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x60ed
	.long	0x467
	.uleb128 0x10
	.long	0x47e
	.byte	0x18
	.byte	0x0
	.uleb128 0x37
	.string	"reg_class_size"
	.byte	0xe
	.value	0x1cf
	.long	0x60dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"n_basic_blocks"
	.byte	0x2
	.byte	0xf2
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"last_basic_block"
	.byte	0x2
	.byte	0xf6
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"basic_block_info"
	.byte	0x2
	.byte	0xfe
	.long	0x1dd6
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6162
	.long	0x155d
	.uleb128 0x10
	.long	0x47e
	.byte	0x1
	.byte	0x0
	.uleb128 0x37
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x6152
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"cfun"
	.byte	0x11
	.value	0x202
	.long	0x2f2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"write_symbols"
	.byte	0x12
	.byte	0x2e
	.long	0x2f95
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_schedule_interblock"
	.byte	0x12
	.value	0x1bd
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_schedule_speculative"
	.byte	0x12
	.value	0x1be
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_schedule_speculative_load"
	.byte	0x12
	.value	0x1bf
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_schedule_speculative_load_dangerous"
	.byte	0x12
	.value	0x1c0
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6252
	.long	0x301f
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x38
	.string	"function_units"
	.byte	0x13
	.byte	0x4a
	.long	0x626a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x6247
	.uleb128 0x38
	.string	"curr_state"
	.byte	0x8
	.byte	0x18
	.long	0x31aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"current_sched_info"
	.byte	0x8
	.byte	0xac
	.long	0x629f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x33fc
	.uleb128 0x38
	.string	"h_i_d"
	.byte	0x8
	.byte	0xe7
	.long	0x62b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x356a
	.uleb128 0x37
	.string	"sched_dump"
	.byte	0x8
	.value	0x105
	.long	0x3962
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"sched_verbose"
	.byte	0x8
	.value	0x106
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"targetm"
	.byte	0x14
	.value	0x12d
	.long	0x3cfe
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.long	0x73
	.value	0x2
	.long	.Ldebug_info0
	.long	0x62fa
	.long	0x44f6
	.string	"debug_regions"
	.long	0x4ae9
	.string	"debug_candidate"
	.long	0x4b66
	.string	"debug_candidates"
	.long	0x5869
	.string	"debug_dependencies"
	.long	0x5b2c
	.string	"schedule_insns"
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
.LASF8:
	.string	"num_edges"
.LASF22:
	.string	"unreachable"
.LASF27:
	.string	"num_insns"
.LASF4:
	.string	"next"
.LASF13:
	.string	"can_schedule_ready_p"
.LASF23:
	.string	"fst_edge"
.LASF17:
	.string	"compute_jump_reg_dependencies"
.LASF5:
	.string	"basic_block"
.LASF18:
	.string	"prev_head"
.LASF6:
	.string	"dominance_info"
.LASF7:
	.string	"edge_list"
.LASF24:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF15:
	.string	"new_ready"
.LASF21:
	.string	"insn"
.LASF28:
	.string	"bb_src"
.LASF9:
	.string	"sequence_stack"
.LASF20:
	.string	"tail"
.LASF16:
	.string	"contributes_to_priority"
.LASF1:
	.string	"_IO_FILE"
.LASF30:
	.string	"load_insn"
.LASF3:
	.string	"head"
.LASF14:
	.string	"schedule_more_p"
.LASF19:
	.string	"next_tail"
.LASF26:
	.string	"__FUNCTION__"
.LASF25:
	.string	"bit_num_"
.LASF11:
	.string	"function_frequency"
.LASF12:
	.string	"init_ready_list"
.LASF10:
	.string	"sequence_rtl_expr"
.LASF29:
	.string	"bb_trg"
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
