	.file	"flow.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 4
.LC0:
	.string	"function might be possible candidate for attribute `noreturn'"
	.align 4
.LC1:
	.string	"`noreturn' function does return"
	.align 4
.LC2:
	.string	"control reaches end of non-void function"
	.text
.globl check_function_return_warnings
	.type	check_function_return_warnings, @function
check_function_return_warnings:
.LFB15:
	.file 1 "../../../kgccfe/gnu/flow.c"
	.loc 1 358 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 359 0
	movl	warn_missing_noreturn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	movl	lang_missing_noreturn_ok_p@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	movl	lang_missing_noreturn_ok_p@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L2
	.loc 1 364 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2:
	.loc 1 367 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L8
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L8
	.loc 1 369 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 367 0
	jmp	.L20
.L8:
	.loc 1 373 0
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L20
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	192(%eax), %eax
	testl	%eax, %eax
	je	.L20
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L20
.LBB2:
	.loc 1 377 0
	call	get_max_uid@PLT
	movl	%eax, -12(%ebp)
	.loc 1 383 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	192(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jge	.L20
.LBB3:
	.loc 1 387 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L16
.L17:
	.loc 1 388 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	192(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L18
	.loc 1 390 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 391 0
	jmp	.L20
.L18:
	.loc 1 387 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L16:
	cmpl	$0, -8(%ebp)
	jne	.L17
.L20:
.LBE3:
.LBE2:
	.loc 1 395 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	check_function_return_warnings, .-check_function_return_warnings
	.section	.rodata
	.align 32
	.type	__FUNCTION__.13432, @object
	.size	__FUNCTION__.13432, 34
__FUNCTION__.13432:
	.string	"first_insn_after_basic_block_note"
.LC3:
	.string	"../../../kgccfe/gnu/flow.c"
	.text
.globl first_insn_after_basic_block_note
	.type	first_insn_after_basic_block_note, @function
first_insn_after_basic_block_note:
.LFB16:
	.loc 1 403 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 409 0
	cmpl	$0, -8(%ebp)
	jne	.L22
	.loc 1 410 0
	movl	$0, -24(%ebp)
	jmp	.L24
.L22:
	.loc 1 411 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L25
	.loc 1 412 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L25:
	.loc 1 413 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L27
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L29
.L27:
	.loc 1 414 0
	leal	__FUNCTION__.13432@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$414, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L29:
	.loc 1 416 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L24:
	movl	-24(%ebp), %eax
	.loc 1 417 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	first_insn_after_basic_block_note, .-first_insn_after_basic_block_note
	.section	.rodata
	.align 32
	.type	eliminables.13454, @object
	.size	eliminables.13454, 72
eliminables.13454:
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
	.text
.globl life_analysis
	.type	life_analysis, @function
life_analysis:
.LFB17:
	.loc 1 428 0
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
	subl	$60, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB4:
	.loc 1 437 0
	leal	elim_reg_set@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE4:
	.loc 1 440 0
	movl	$0, -24(%ebp)
	jmp	.L32
.L33:
	.loc 1 441 0
	movl	-24(%ebp), %eax
	movl	eliminables.13454@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -44(%ebp)
	movl	-24(%ebp), %eax
	movl	eliminables.13454@GOTOFF(%ebx,%eax,8), %eax
	shrl	$6, %eax
	movl	elim_reg_set@GOTOFF(%ebx,%eax,8), %edx
	movl	4+elim_reg_set@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	eliminables.13454@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L52
	movl	%esi, %edi
	xorl	%esi, %esi
.L52:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, elim_reg_set@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+elim_reg_set@GOTOFF(%ebx,%ecx,8)
	.loc 1 440 0
	addl	$1, -24(%ebp)
.L32:
	cmpl	$8, -24(%ebp)
	jle	.L33
	.loc 1 448 0
	movl	$1, 4(%esp)
	movl	subregs_of_mode@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 451 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 452 0
	andl	$-99, 16(%ebp)
.L35:
	.loc 1 464 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 465 0
	andl	$-69, 16(%ebp)
.L37:
	.loc 1 468 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L39
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 469 0
	call	init_alias_analysis@PLT
.L39:
	.loc 1 473 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_noop_moves@PLT
	.loc 1 478 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_stack_pointer_modification
.L42:
	.loc 1 483 0
	call	allocate_reg_life_data@PLT
	.loc 1 484 0
	call	allocate_bb_life_data@PLT
	.loc 1 487 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	mark_regs_live_at_end
	.loc 1 493 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L44
	.loc 1 494 0
	movl	regs_ever_live@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	$176, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
.L44:
	.loc 1 495 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
	.loc 1 498 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 499 0
	call	end_alias_analysis@PLT
.L46:
	.loc 1 501 0
	cmpl	$0, 12(%ebp)
	je	.L49
	.loc 1 502 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L49:
	.loc 1 504 0
	movl	$1, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 507 0
	call	delete_dead_jumptables@PLT
	.loc 1 508 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	life_analysis, .-life_analysis
	.type	verify_wide_reg_1, @function
verify_wide_reg_1:
.LFB18:
	.loc 1 518 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	subl	$28, %esp
.LCFI16:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 520 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 522 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L54
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L54
	.loc 1 524 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L57
	movl	$64, -24(%ebp)
	jmp	.L59
.L57:
	movl	$32, -24(%ebp)
.L59:
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jg	.L60
	.loc 1 525 0
	movl	$2, -20(%ebp)
	jmp	.L62
.L60:
	.loc 1 526 0
	movl	$1, -20(%ebp)
	jmp	.L62
.L54:
	.loc 1 528 0
	movl	$0, -20(%ebp)
.L62:
	movl	-20(%ebp), %eax
	.loc 1 529 0
	leave
	ret
.LFE18:
	.size	verify_wide_reg_1, .-verify_wide_reg_1
	.section	.rodata
	.type	__FUNCTION__.13543, @object
	.size	__FUNCTION__.13543, 16
__FUNCTION__.13543:
	.string	"verify_wide_reg"
	.align 4
.LC4:
	.string	"Register %d died unexpectedly.\n"
	.text
	.type	verify_wide_reg, @function
verify_wide_reg:
.LFB19:
	.loc 1 538 0
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
	.loc 1 539 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L65:
	.loc 1 543 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L66
.LBB5:
	.loc 1 545 0
	movl	-16(%ebp), %eax
	addl	$44, %eax
	leal	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	verify_wide_reg_1@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 546 0
	cmpl	$1, -8(%ebp)
	je	.L74
	.loc 1 548 0
	cmpl	$2, -8(%ebp)
	je	.L70
.L66:
.LBE5:
	.loc 1 551 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L70
	.loc 1 553 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 554 0
	jmp	.L65
.L70:
	.loc 1 556 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L72
	.loc 1 558 0
	movl	8(%ebp), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 559 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
.L72:
	.loc 1 561 0
	leal	__FUNCTION__.13543@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$561, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L74:
	.loc 1 562 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	verify_wide_reg, .-verify_wide_reg
	.section	.rodata
	.type	__FUNCTION__.13565, @object
	.size	__FUNCTION__.13565, 27
__FUNCTION__.13565:
	.string	"verify_local_live_at_start"
	.align 4
.LC5:
	.string	"live_at_start mismatch in bb %d, aborting\nNew:\n"
.LC6:
	.string	"Old:\n"
	.text
	.type	verify_local_live_at_start, @function
verify_local_live_at_start:
.LFB20:
	.loc 1 571 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$52, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 572 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L76
	.loc 1 576 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_equal_p@PLT
	testl	%eax, %eax
	jne	.L105
	.loc 1 578 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L80
	.loc 1 580 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 583 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	debug_bitmap_file@PLT
	.loc 1 584 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 585 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
.L80:
	.loc 1 587 0
	leal	__FUNCTION__.13565@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$587, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L76:
.LBB6:
	.loc 1 595 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	$3, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.LBB7:
	.loc 1 597 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L83
.L84:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L83:
	cmpl	$0, -28(%ebp)
	je	.L85
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L84
.L85:
	cmpl	$0, -28(%ebp)
	je	.L90
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L90
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L90
.L93:
.LBB8:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L94
	jmp	.L96
.L97:
.LBB9:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L98
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L100
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L102
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
.L102:
	leal	__FUNCTION__.13565@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$613, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L100:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	verify_wide_reg
	cmpl	$0, -12(%ebp)
	je	.L94
.L98:
.LBE9:
	addl	$1, -20(%ebp)
.L96:
	cmpl	$31, -20(%ebp)
	jbe	.L97
.L94:
	movl	$0, -20(%ebp)
.LBE8:
	addl	$1, -16(%ebp)
.L92:
	cmpl	$3, -16(%ebp)
	jbe	.L93
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L90:
	cmpl	$0, -28(%ebp)
	jne	.L92
.L105:
.LBE7:
.LBE6:
	.loc 1 615 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	verify_local_live_at_start, .-verify_local_live_at_start
	.section	.rodata
	.type	__FUNCTION__.13642, @object
	.size	__FUNCTION__.13642, 17
__FUNCTION__.13642:
	.string	"update_life_info"
.LC7:
	.string	"deleted %i dead insns\n"
	.text
.globl update_life_info
	.type	update_life_info, @function
update_life_info:
.LFB21:
	.loc 1 639 0
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
	subl	$172, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 643 0
	movl	16(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 646 0
	movl	$1, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -100(%ebp)
	.loc 1 647 0
	movl	$0, ndead@GOTOFF(%ebx)
	.loc 1 649 0
	cmpl	$0, 12(%ebp)
	je	.L107
	cmpl	$0, 8(%ebp)
	je	.L109
.L107:
	movl	$7, -152(%ebp)
	jmp	.L110
.L109:
	movl	$6, -152(%ebp)
.L110:
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	timevar_push@PLT
	.loc 1 654 0
	movl	16(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L111
	cmpl	$0, 12(%ebp)
	je	.L113
	cmpl	$0, 8(%ebp)
	je	.L111
.L113:
	.loc 1 656 0
	leal	__FUNCTION__.13642@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$656, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L111:
	.loc 1 659 0
	cmpl	$0, 12(%ebp)
	je	.L115
.L116:
.LBB10:
	.loc 1 663 0
	movl	$0, -84(%ebp)
	.loc 1 665 0
	movl	16(%ebp), %eax
	andl	$304, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_global_regs_live
	.loc 1 670 0
	movl	16(%ebp), %eax
	andl	$40, %eax
	cmpl	$40, %eax
	jne	.L117
	.loc 1 676 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L119
.L120:
	.loc 1 678 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 679 0
	movl	16(%ebp), %eax
	andl	$280, %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	orl	%eax, -84(%ebp)
	.loc 1 676 0
	movl	-88(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L119:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L120
	.loc 1 689 0
	andl	$-281, -92(%ebp)
	.loc 1 693 0
	cmpl	$0, -84(%ebp)
	je	.L117
	.loc 1 700 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 701 0
	jmp	.L116
.L117:
.LBE10:
	.loc 1 704 0
	cmpl	$2, 12(%ebp)
	jne	.L115
	.loc 1 705 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_or_remove_death_notes@PLT
.L115:
	.loc 1 709 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_log_links
.L124:
	.loc 1 712 0
	cmpl	$0, 8(%ebp)
	je	.L126
.LBB11:
	.loc 1 714 0
	movl	$0, -76(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -68(%ebp)
	movl	$0, -80(%ebp)
	jmp	.L128
.L129:
.LBB12:
	movl	-80(%ebp), %eax
	sall	$3, %eax
	addl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	je	.L130
	jmp	.L132
.L133:
.LBB13:
	movl	-76(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L195
	movl	%eax, %edx
	xorl	%eax, %eax
.L195:
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-112(%ebp), %ecx
	movl	-108(%ebp), %esi
	movl	-120(%ebp), %eax
	andl	%ecx, %eax
	movl	-116(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L134
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-120(%ebp), %eax
	andl	%esi, %eax
	movl	-116(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-80(%ebp), %eax
	sall	$6, %eax
	addl	-76(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	cmpl	$0, 12(%ebp)
	jne	.L136
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	verify_local_live_at_start
.L136:
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	je	.L130
.L134:
.LBE13:
	addl	$1, -76(%ebp)
.L132:
	cmpl	$63, -76(%ebp)
	jbe	.L133
.L130:
.LBE12:
	addl	$1, -80(%ebp)
	movl	$0, -76(%ebp)
.L128:
	movl	-80(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jb	.L129
	jmp	.L139
.L126:
.LBE11:
	.loc 1 727 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L140
.L141:
	.loc 1 729 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 731 0
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 733 0
	cmpl	$0, 12(%ebp)
	jne	.L142
	.loc 1 734 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	verify_local_live_at_start
.L142:
	.loc 1 727 0
	movl	-88(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L140:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L141
.L139:
	.loc 1 738 0
	cmpl	$0, -100(%ebp)
	je	.L144
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -100(%ebp)
.L144:
	.loc 1 740 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L146
.LBB14:
	.loc 1 746 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$1, -60(%ebp)
	movl	$16, -56(%ebp)
	movl	$1, -52(%ebp)
	jmp	.L148
.L149:
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L148:
	cmpl	$0, -64(%ebp)
	je	.L150
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jb	.L149
.L150:
	cmpl	$0, -64(%ebp)
	je	.L155
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L155
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L155
.L158:
.LBB15:
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L159
	jmp	.L161
.L162:
.LBB16:
	movl	-56(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	andl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L163
	movl	-44(%ebp), %eax
	notl	%eax
	andl	%eax, -48(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	sall	$5, %eax
	addl	-56(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
	cmpl	$0, -48(%ebp)
	je	.L159
.L163:
.LBE16:
	addl	$1, -56(%ebp)
.L161:
	cmpl	$31, -56(%ebp)
	jbe	.L162
.L159:
	movl	$0, -56(%ebp)
.LBE15:
	addl	$1, -52(%ebp)
.L157:
	cmpl	$3, -52(%ebp)
	jbe	.L158
	movl	$0, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L155:
	cmpl	$0, -64(%ebp)
	jne	.L157
.LBE14:
.LBB17:
	.loc 1 758 0
	movl	regs_live_at_setjmp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, -36(%ebp)
	movl	$16, -32(%ebp)
	movl	$1, -28(%ebp)
	jmp	.L167
.L168:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L167:
	cmpl	$0, -40(%ebp)
	je	.L169
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L168
.L169:
	cmpl	$0, -40(%ebp)
	je	.L174
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L174
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L174
.L177:
.LBB18:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L178
	jmp	.L180
.L181:
.LBB19:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L182
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-96(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L184
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-1, 28(%eax)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-96(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-1, 36(%eax)
.L184:
	cmpl	$0, -24(%ebp)
	je	.L178
.L182:
.LBE19:
	addl	$1, -32(%ebp)
.L180:
	cmpl	$31, -32(%ebp)
	jbe	.L181
.L178:
	movl	$0, -32(%ebp)
.LBE18:
	addl	$1, -28(%ebp)
.L176:
	cmpl	$3, -28(%ebp)
	jbe	.L177
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L174:
	cmpl	$0, -40(%ebp)
	jne	.L176
.L146:
.LBE17:
	.loc 1 768 0
	cmpl	$0, 12(%ebp)
	je	.L187
	cmpl	$0, 8(%ebp)
	je	.L189
.L187:
	movl	$7, -148(%ebp)
	jmp	.L190
.L189:
	movl	$6, -148(%ebp)
.L190:
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	timevar_pop@PLT
	.loc 1 770 0
	movl	ndead@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L191
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L191
	.loc 1 771 0
	movl	ndead@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L191:
	.loc 1 772 0
	movl	ndead@GOTOFF(%ebx), %eax
	.loc 1 773 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	update_life_info, .-update_life_info
.globl update_life_info_in_dirty_blocks
	.type	update_life_info_in_dirty_blocks, @function
update_life_info_in_dirty_blocks:
.LFB22:
	.loc 1 781 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%edi
.LCFI33:
	pushl	%esi
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$76, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 782 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 783 0
	movl	$0, -28(%ebp)
	.loc 1 785 0
	movl	$0, -20(%ebp)
	.loc 1 787 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 788 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L197
.L198:
	.loc 1 790 0
	cmpl	$0, 8(%ebp)
	jne	.L199
	.loc 1 792 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L203
	.loc 1 794 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
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
	je	.L210
	movl	%esi, %edi
	xorl	%esi, %esi
.L210:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 795 0
	addl	$1, -28(%ebp)
	jmp	.L203
.L199:
	.loc 1 802 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
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
	je	.L209
	movl	%esi, %edi
	xorl	%esi, %esi
.L209:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 803 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L203
	.loc 1 804 0
	addl	$1, -28(%ebp)
.L203:
	.loc 1 788 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L197:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L198
	.loc 1 808 0
	cmpl	$0, -28(%ebp)
	je	.L206
	.loc 1 809 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
	movl	%eax, -20(%ebp)
.L206:
	.loc 1 811 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 812 0
	movl	-20(%ebp), %eax
	.loc 1 813 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	update_life_info_in_dirty_blocks, .-update_life_info_in_dirty_blocks
.globl free_basic_block_vars
	.type	free_basic_block_vars, @function
free_basic_block_vars:
.LFB23:
	.loc 1 822 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$4, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 823 0
	cmpl	$0, 8(%ebp)
	jne	.L217
	.loc 1 825 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L214
	.loc 1 827 0
	call	clear_edges@PLT
	.loc 1 828 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L214
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	basic_block_info@GOT(%ebx), %eax
	movl	$0, (%eax)
.L214:
	.loc 1 830 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 831 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 833 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	$0, 40(%eax)
	.loc 1 834 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	$0, 36(%eax)
	.loc 1 835 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 40(%eax)
	.loc 1 836 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 32(%eax)
.L217:
	.loc 1 838 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	free_basic_block_vars, .-free_basic_block_vars
	.section	.rodata
.LC8:
	.string	"deleted %i noop moves"
	.text
.globl delete_noop_moves
	.type	delete_noop_moves, @function
delete_noop_moves:
.LFB24:
	.loc 1 845 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$52, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 848 0
	movl	$0, -20(%ebp)
	.loc 1 850 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L219
.L220:
	.loc 1 852 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L221
.L222:
	.loc 1 854 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 855 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L223
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	noop_move_p@PLT
	testl	%eax, %eax
	je	.L223
.LBB20:
	.loc 1 862 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L226
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L226
.LBB21:
	.loc 1 865 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 867 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 868 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 871 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
.L226:
.LBE21:
	.loc 1 874 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 875 0
	addl	$1, -20(%ebp)
.L223:
.LBE20:
	.loc 1 852 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L221:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L222
	.loc 1 850 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L219:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L220
	.loc 1 879 0
	cmpl	$0, -20(%ebp)
	je	.L231
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L231
	.loc 1 880 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L231:
	.loc 1 881 0
	movl	-20(%ebp), %eax
	.loc 1 882 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	delete_noop_moves, .-delete_noop_moves
	.section	.rodata
.LC9:
	.string	"Dead jumptable %i removed\n"
	.text
.globl delete_dead_jumptables
	.type	delete_dead_jumptables, @function
delete_dead_jumptables:
.LFB25:
	.loc 1 890 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$36, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 892 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L236
.L237:
	.loc 1 894 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 895 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L238
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	.L238
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L238
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L242
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L238
.L242:
	.loc 1 901 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L244
	.loc 1 902 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L244:
	.loc 1 903 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 904 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 905 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L238:
	.loc 1 892 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L236:
	cmpl	$0, -12(%ebp)
	jne	.L237
	.loc 1 908 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	delete_dead_jumptables, .-delete_dead_jumptables
	.type	notice_stack_pointer_modification_1, @function
notice_stack_pointer_modification_1:
.LFB26:
	.loc 1 918 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 919 0
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L249
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L254
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L254
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L254
.L249:
	.loc 1 926 0
	movl	current_function_sp_is_unchanging@GOT(%ecx), %eax
	movl	$0, (%eax)
.L254:
	.loc 1 927 0
	popl	%ebp
	ret
.LFE26:
	.size	notice_stack_pointer_modification_1, .-notice_stack_pointer_modification_1
	.type	notice_stack_pointer_modification, @function
notice_stack_pointer_modification:
.LFB27:
	.loc 1 932 0
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
	.loc 1 937 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %edx
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 938 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
	.loc 1 941 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L258
.L259:
	.loc 1 943 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L260
	.loc 1 946 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	notice_stack_pointer_modification_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 948 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
.L260:
	.loc 1 941 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L258:
	cmpl	$0, -8(%ebp)
	jne	.L259
.L262:
	.loc 1 952 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	notice_stack_pointer_modification, .-notice_stack_pointer_modification
	.section	.rodata
	.type	__FUNCTION__.14028, @object
	.size	__FUNCTION__.14028, 9
__FUNCTION__.14028:
	.string	"mark_reg"
	.text
	.type	mark_reg, @function
mark_reg:
.LFB28:
	.loc 1 961 0
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
	.loc 1 962 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 963 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 965 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L264
	.loc 1 966 0
	leal	__FUNCTION__.14028@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$966, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L264:
	.loc 1 968 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 969 0
	cmpl	$175, -12(%ebp)
	jg	.L270
.LBB22:
	.loc 1 971 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 972 0
	jmp	.L268
.L269:
	.loc 1 973 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L268:
	.loc 1 972 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jg	.L269
.L270:
.LBE22:
	.loc 1 975 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	mark_reg, .-mark_reg
	.type	mark_regs_live_at_end, @function
mark_regs_live_at_end:
.LFB29:
	.loc 1 983 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%edi
.LCFI61:
	pushl	%esi
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$44, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 988 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L272
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L274
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L274
	movl	flag_omit_frame_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L272
.L274:
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L277
.L272:
	.loc 1 995 0
	movl	$29, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L277:
	.loc 1 1002 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L278
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L280
.L278:
	.loc 1 1004 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1008 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L281
	movl	$17, -44(%ebp)
	jmp	.L283
.L281:
	movl	$30, -44(%ebp)
.L283:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L280:
	.loc 1 1016 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L284
	.loc 1 1018 0
	movl	$28, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L284:
	.loc 1 1024 0
	movl	$0, -24(%ebp)
	jmp	.L286
.L287:
	.loc 1 1025 0
	movl	-24(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L288
	.loc 1 1026 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L288:
	.loc 1 1024 0
	addl	$1, -24(%ebp)
.L286:
	cmpl	$175, -24(%ebp)
	jbe	.L287
	.loc 1 1028 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 1031 0
	movl	$0, -24(%ebp)
	jmp	.L293
.L294:
	.loc 1 1032 0
	movl	-24(%ebp), %eax
	movl	regs_ever_live@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L295
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L319
	movl	%edx, %eax
	xorl	%edx, %edx
.L319:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L295
	.loc 1 1034 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L295:
	.loc 1 1031 0
	addl	$1, -24(%ebp)
.L293:
	cmpl	$175, -24(%ebp)
	jbe	.L294
.L291:
	.loc 1 1039 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L298
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L298
	.loc 1 1040 0
	movl	$0, -24(%ebp)
.L301:
.LBB23:
	.loc 1 1042 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L302
	movl	$2, -36(%ebp)
	jmp	.L304
.L302:
	movl	$4, -36(%ebp)
.L304:
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L305
	movl	-24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -40(%ebp)
	jmp	.L307
.L305:
	movl	$-1, -40(%ebp)
.L307:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1043 0
	cmpl	$-1, -20(%ebp)
	je	.L298
	.loc 1 1045 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE23:
	.loc 1 1040 0
	addl	$1, -24(%ebp)
	.loc 1 1046 0
	jmp	.L301
.L298:
	.loc 1 1049 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L309
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L309
.LBB24:
	.loc 1 1052 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L312
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L312
	movl	$5, -32(%ebp)
	jmp	.L315
.L312:
	movl	$4, -32(%ebp)
.L315:
	movl	$3, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1053 0
	cmpl	$0, -16(%ebp)
	je	.L309
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L309
	.loc 1 1054 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg
.L309:
.LBE24:
	.loc 1 1068 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	mark_reg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	diddle_return_value@PLT
	.loc 1 1069 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	mark_regs_live_at_end, .-mark_regs_live_at_end
	.type	set_phi_alternative_reg, @function
set_phi_alternative_reg:
.LFB30:
	.loc 1 1081 0
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
	.loc 1 1082 0
	movl	20(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1083 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1084 0
	movl	$0, %eax
	.loc 1 1085 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	set_phi_alternative_reg, .-set_phi_alternative_reg
	.type	calculate_global_regs_live, @function
calculate_global_regs_live:
.LFB31:
	.loc 1 1097 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%edi
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$236, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1112 0
	movl	$1, 4(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1113 0
	movl	$1, 4(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1114 0
	movl	$1, 4(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1117 0
	movl	$0, -104(%ebp)
	jmp	.L323
.L324:
	.loc 1 1118 0
	movl	-104(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-104(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L434
	movl	%edx, %eax
	xorl	%edx, %edx
.L434:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L325
	.loc 1 1119 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L325:
	.loc 1 1117 0
	addl	$1, -104(%ebp)
.L323:
	cmpl	$175, -104(%ebp)
	jle	.L324
	.loc 1 1124 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -136(%ebp)
	.loc 1 1125 0
	movl	-136(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1126 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1131 0
	cmpl	$0, 8(%ebp)
	je	.L328
	.loc 1 1133 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L330
.L331:
	.loc 1 1134 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L433
	movl	%edi, %esi
	xorl	%edi, %edi
.L433:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L332
	.loc 1 1136 0
	subl	$4, -132(%ebp)
	movl	-132(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1137 0
	movl	-120(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 40(%edx)
.L332:
	.loc 1 1133 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
.L330:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L331
	jmp	.L335
.L328:
	.loc 1 1142 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L336
.L337:
	.loc 1 1144 0
	subl	$4, -132(%ebp)
	movl	-132(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1145 0
	movl	-120(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1142 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
.L336:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L337
.L335:
	.loc 1 1152 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 40(%eax)
	movl	40(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%edx, 40(%eax)
	.loc 1 1154 0
	cmpl	$0, 12(%ebp)
	je	.L430
	.loc 1 1155 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1175 0
	jmp	.L430
.L341:
.LBB25:
	.loc 1 1181 0
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	addl	$4, -132(%ebp)
	.loc 1 1182 0
	movl	-132(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jne	.L342
	.loc 1 1183 0
	movl	-136(%ebp), %eax
	movl	%eax, -132(%ebp)
.L342:
	.loc 1 1184 0
	movl	-92(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1187 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1189 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 1190 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L346
.L347:
.LBB26:
	.loc 1 1192 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1198 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L348
	.loc 1 1200 0
	movl	-84(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1202 0
	movl	$2, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	jmp	.L350
.L348:
	.loc 1 1205 0
	movl	-84(%ebp), %eax
	movl	32(%eax), %eax
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L350:
	.loc 1 1209 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L351
	.loc 1 1210 0
	movl	$0, -104(%ebp)
	jmp	.L353
.L354:
	addl	$1, -104(%ebp)
.L353:
	cmpl	$175, -104(%ebp)
	jle	.L354
.L351:
.LBE26:
	.loc 1 1190 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
.L346:
	cmpl	$0, -88(%ebp)
	jne	.L347
	jmp	.L356
.L344:
	.loc 1 1219 0
	movl	$0, -104(%ebp)
	jmp	.L357
.L358:
	addl	$1, -104(%ebp)
.L357:
	cmpl	$175, -104(%ebp)
	jle	.L358
.L356:
	.loc 1 1225 0
	movl	$29, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1230 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L359
	.loc 1 1234 0
	movl	$1, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1239 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L361
	.loc 1 1240 0
	movl	$0, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L361:
	.loc 1 1245 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L359
	.loc 1 1247 0
	movl	$28, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L359:
	.loc 1 1254 0
	movl	in_ssa_form@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L364
	.loc 1 1255 0
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	set_phi_alternative_reg@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_successor_phi@PLT
.L364:
	.loc 1 1258 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -92(%ebp)
	jne	.L366
	.loc 1 1260 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1261 0
	jmp	.L340
.L366:
	.loc 1 1268 0
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L368
.LBB27:
	.loc 1 1270 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -80(%ebp)
.LBB28:
	movl	-80(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	$16, -72(%ebp)
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-72(%ebp), %eax
	jge	.L370
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L370:
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-72(%ebp), %eax
	addl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE28:
.LBB29:
	movl	-80(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L372
	movl	-68(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L372:
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L374
	movl	-68(%ebp), %eax
	movl	16(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
.L374:
	movl	-68(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-64(%ebp), %eax
.LBE29:
.LBE27:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 24(%eax)
.LBB30:
	.loc 1 1271 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
.LBB31:
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$16, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	-52(%ebp), %eax
	jge	.L376
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L376:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	addl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE31:
.LBB32:
	movl	-60(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L378
	movl	-48(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L378:
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L380
	movl	-48(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
.L380:
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-44(%ebp), %eax
.LBE32:
.LBE30:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1272 0
	movl	$1, -100(%ebp)
	jmp	.L382
.L368:
	.loc 1 1280 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1281 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	$1, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1284 0
	cmpl	$0, -100(%ebp)
	jne	.L383
	.loc 1 1293 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1294 0
	movl	-92(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -100(%ebp)
.L383:
	.loc 1 1298 0
	cmpl	$0, -100(%ebp)
	jne	.L382
	.loc 1 1302 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1303 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	$3, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1305 0
	cmpl	$0, -96(%ebp)
	je	.L340
	.loc 1 1311 0
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -100(%ebp)
.L382:
	.loc 1 1318 0
	cmpl	$0, 12(%ebp)
	je	.L387
	.loc 1 1319 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -220(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-92(%ebp), %eax
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
	je	.L432
	movl	%esi, %edi
	xorl	%esi, %esi
.L432:
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-220(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L387:
	.loc 1 1321 0
	cmpl	$0, -100(%ebp)
	jne	.L389
	.loc 1 1326 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1328 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1330 0
	movl	-92(%ebp), %eax
	movl	32(%eax), %ecx
	movl	-92(%ebp), %eax
	movl	32(%eax), %edx
	movl	$2, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1333 0
	cmpl	$0, -96(%ebp)
	je	.L340
	.loc 1 1334 0
	jmp	.L392
.L389:
	.loc 1 1338 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1342 0
	movl	-92(%ebp), %eax
	movl	28(%eax), %edx
	movl	-92(%ebp), %eax
	movl	24(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 1346 0
	movl	-92(%ebp), %eax
	movl	32(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_equal_p@PLT
	testl	%eax, %eax
	jne	.L340
	.loc 1 1349 0
	movl	-92(%ebp), %eax
	movl	32(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
.L392:
	.loc 1 1354 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L394
.L395:
.LBB33:
	.loc 1 1356 0
	movl	-88(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1357 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L396
	.loc 1 1359 0
	movl	-128(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	addl	$4, -128(%ebp)
	.loc 1 1360 0
	movl	-128(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jne	.L398
	.loc 1 1361 0
	movl	-136(%ebp), %eax
	movl	%eax, -128(%ebp)
.L398:
	.loc 1 1362 0
	movl	-40(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 40(%edx)
.L396:
.LBE33:
	.loc 1 1354 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
.L394:
	cmpl	$0, -88(%ebp)
	jne	.L395
.L340:
.L430:
.LBE25:
	.loc 1 1175 0
	movl	-132(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jne	.L341
	.loc 1 1367 0
	cmpl	$0, -116(%ebp)
	je	.L401
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -116(%ebp)
.L401:
	.loc 1 1368 0
	cmpl	$0, -112(%ebp)
	je	.L403
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -112(%ebp)
.L403:
	.loc 1 1369 0
	cmpl	$0, -108(%ebp)
	je	.L405
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -108(%ebp)
.L405:
	.loc 1 1371 0
	cmpl	$0, 12(%ebp)
	je	.L407
.LBB34:
	.loc 1 1373 0
	movl	$0, -32(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L409
.L410:
.LBB35:
	movl	-36(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	orl	-148(%ebp), %eax
	testl	%eax, %eax
	je	.L411
	jmp	.L413
.L414:
.LBB36:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L431
	movl	%eax, %edx
	xorl	%eax, %eax
.L431:
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %esi
	movl	-152(%ebp), %eax
	andl	%ecx, %eax
	movl	-148(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L415
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-36(%ebp), %eax
	sall	$6, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -104(%ebp)
.LBB37:
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L417
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-20(%ebp), %eax
	movl	$0, 24(%eax)
.L417:
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L419
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-20(%ebp), %eax
	movl	$0, 28(%eax)
.L419:
.LBE37:
	movl	-152(%ebp), %eax
	orl	-148(%ebp), %eax
	testl	%eax, %eax
	je	.L411
.L415:
.LBE36:
	addl	$1, -32(%ebp)
.L413:
	cmpl	$63, -32(%ebp)
	jbe	.L414
.L411:
.LBE35:
	addl	$1, -36(%ebp)
	movl	$0, -32(%ebp)
.L409:
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L410
	jmp	.L422
.L407:
.LBE34:
	.loc 1 1382 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L423
.L424:
	.loc 1 1384 0
	movl	-120(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L425
	movl	-120(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-120(%ebp), %eax
	movl	$0, 24(%eax)
.L425:
	.loc 1 1385 0
	movl	-120(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L427
	movl	-120(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-120(%ebp), %eax
	movl	$0, 28(%eax)
.L427:
	.loc 1 1382 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
.L423:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L424
.L422:
	.loc 1 1389 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1390 0
	addl	$236, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	calculate_global_regs_live, .-calculate_global_regs_live
	.type	find_regno_partial, @function
find_regno_partial:
.LFB32:
	.loc 1 1411 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	subl	$24, %esp
.LCFI77:
	.loc 1 1412 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1413 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1414 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1416 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L436
	.loc 1 1417 0
	movl	$0, -24(%ebp)
	jmp	.L438
.L436:
	.loc 1 1419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	cmpl	$74, -20(%ebp)
	je	.L441
	cmpl	$74, -20(%ebp)
	ja	.L442
	cmpl	$73, -20(%ebp)
	je	.L440
	jmp	.L439
.L442:
	movl	-20(%ebp), %eax
	subl	$142, %eax
	cmpl	$1, %eax
	ja	.L439
.L441:
	.loc 1 1424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L439
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L439
	.loc 1 1426 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1427 0
	movl	$1, -24(%ebp)
	jmp	.L438
.L440:
	.loc 1 1432 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L439
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L439
	.loc 1 1435 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1436 0
	movl	$1, -24(%ebp)
	jmp	.L438
.L439:
	.loc 1 1444 0
	movl	$0, -24(%ebp)
.L438:
	movl	-24(%ebp), %eax
	.loc 1 1445 0
	leave
	ret
.LFE32:
	.size	find_regno_partial, .-find_regno_partial
.globl initialize_uninitialized_subregs
	.type	initialize_uninitialized_subregs, @function
initialize_uninitialized_subregs:
.LFB33:
	.loc 1 1456 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$84, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1459 0
	movl	$0, -44(%ebp)
	.loc 1 1462 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L450
.L451:
.LBB38:
	.loc 1 1464 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1465 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -36(%ebp)
.LBB39:
	.loc 1 1466 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$1, -28(%ebp)
	movl	$16, -24(%ebp)
	movl	$1, -20(%ebp)
	jmp	.L452
.L453:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L452:
	cmpl	$0, -32(%ebp)
	je	.L454
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L453
.L454:
	cmpl	$0, -32(%ebp)
	je	.L459
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L459
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L459
.L462:
.LBB40:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L463
	jmp	.L465
.L466:
.LBB41:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L467
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
.LBB42:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	call	get_insns@PLT
	movl	%eax, -60(%ebp)
	jmp	.L469
.L470:
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L469:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L471
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L470
.L471:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L473
	movl	-48(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	find_regno_partial@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	.L473
	call	start_sequence@PLT
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	-64(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	call	end_sequence@PLT
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
	movl	$1, -44(%ebp)
.L473:
.LBE42:
	cmpl	$0, -16(%ebp)
	je	.L463
.L467:
.LBE41:
	addl	$1, -24(%ebp)
.L465:
	cmpl	$31, -24(%ebp)
	jbe	.L466
.L463:
	movl	$0, -24(%ebp)
.LBE40:
	addl	$1, -20(%ebp)
.L461:
	cmpl	$3, -20(%ebp)
	jbe	.L462
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L459:
	cmpl	$0, -32(%ebp)
	jne	.L461
.LBE39:
.LBE38:
	.loc 1 1462 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L450:
	cmpl	$0, -52(%ebp)
	jne	.L451
	.loc 1 1498 0
	cmpl	$0, -44(%ebp)
	je	.L479
	.loc 1 1499 0
	call	commit_edge_insertions@PLT
.L479:
	.loc 1 1500 0
	movl	-44(%ebp), %eax
	.loc 1 1501 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	initialize_uninitialized_subregs, .-initialize_uninitialized_subregs
.globl allocate_bb_life_data
	.type	allocate_bb_life_data, @function
allocate_bb_life_data:
.LFB34:
	.loc 1 1511 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%esi
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$80, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1514 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L483
.L484:
.LBB43:
	.loc 1 1516 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -68(%ebp)
.LBB44:
	movl	-68(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	$16, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-60(%ebp), %eax
	jge	.L485
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L485:
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE44:
.LBB45:
	movl	-68(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-52(%ebp), %eax
	jne	.L487
	movl	-56(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L487:
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L489
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
.L489:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-52(%ebp), %eax
.LBE45:
.LBE43:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB46:
	.loc 1 1517 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
.LBB47:
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$16, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-40(%ebp), %eax
	jge	.L491
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L491:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE47:
.LBB48:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L493
	movl	-36(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L493:
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L495
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.L495:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %eax
.LBE48:
.LBE46:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1514 0
	movl	-72(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
.L483:
	cmpl	$0, -72(%ebp)
	jne	.L484
.LBB49:
	.loc 1 1520 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB50:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$16, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L498
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L498:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE50:
.LBB51:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L500
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L500:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L502
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L502:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE51:
.LBE49:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	regs_live_at_setjmp@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1521 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	allocate_bb_life_data, .-allocate_bb_life_data
.globl allocate_reg_life_data
	.type	allocate_reg_life_data, @function
allocate_reg_life_data:
.LFB35:
	.loc 1 1525 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$36, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1528 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1532 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 1536 0
	movl	$0, -8(%ebp)
	jmp	.L506
.L507:
	.loc 1 1538 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 12(%eax)
	.loc 1 1539 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 16(%eax)
	.loc 1 1540 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 24(%eax)
	.loc 1 1541 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 32(%eax)
	.loc 1 1542 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 28(%eax)
	.loc 1 1543 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-1, 36(%eax)
	.loc 1 1536 0
	addl	$1, -8(%ebp)
.L506:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L507
	.loc 1 1545 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	allocate_reg_life_data, .-allocate_reg_life_data
	.type	propagate_block_delete_insn, @function
propagate_block_delete_insn:
.LFB36:
	.loc 1 1552 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$52, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1553 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1565 0
	cmpl	$0, -32(%ebp)
	je	.L511
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L511
.LBB52:
	.loc 1 1567 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1573 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L511
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L511
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L511
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L517
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L511
.L517:
.LBB53:
	.loc 1 1579 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1580 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1581 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1584 0
	movl	$0, -8(%ebp)
	jmp	.L519
.L520:
	.loc 1 1585 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 1584 0
	addl	$1, -8(%ebp)
.L519:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L520
	.loc 1 1587 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 1588 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
.L511:
.LBE53:
.LBE52:
	.loc 1 1592 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 1593 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
	.loc 1 1594 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	propagate_block_delete_insn, .-propagate_block_delete_insn
	.type	propagate_block_delete_libcall, @function
propagate_block_delete_libcall:
.LFB37:
	.loc 1 1602 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1603 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1604 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1606 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain_and_edges@PLT
	.loc 1 1607 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
	.loc 1 1608 0
	movl	-8(%ebp), %eax
	.loc 1 1609 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	propagate_block_delete_libcall, .-propagate_block_delete_libcall
	.section	.rodata
	.type	__FUNCTION__.14851, @object
	.size	__FUNCTION__.14851, 19
__FUNCTION__.14851:
	.string	"propagate_one_insn"
	.align 4
.LC10:
	.string	"Attempt to delete prologue/epilogue insn:"
	.text
.globl propagate_one_insn
	.type	propagate_one_insn, @function
propagate_one_insn:
.LFB38:
	.loc 1 1617 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$164, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1618 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1619 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1620 0
	movl	$0, -112(%ebp)
	.loc 1 1621 0
	movl	$0, -108(%ebp)
	.loc 1 1625 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L526
	.loc 1 1626 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L526:
	.loc 1 1628 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1629 0
	movl	-116(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L529
	.loc 1 1631 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_dead_p
	movl	%eax, -112(%ebp)
	.loc 1 1632 0
	cmpl	$0, -112(%ebp)
	je	.L531
	cmpl	$0, -104(%ebp)
	je	.L531
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	libcall_dead_p
	testl	%eax, %eax
	je	.L531
	movl	$1, -136(%ebp)
	jmp	.L535
.L531:
	movl	$0, -136(%ebp)
.L535:
	movl	-136(%ebp), %eax
	movl	%eax, -108(%ebp)
.L529:
	.loc 1 1638 0
	movl	-116(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L536
	cmpl	$0, -112(%ebp)
	je	.L536
	.loc 1 1645 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L539
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L541
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L539
.L541:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	prologue_epilogue_contains@PLT
	testl	%eax, %eax
	jne	.L543
	jmp	.L539
.L543:
	movl	$0, 8(%esp)
	movl	$24, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L539
	.loc 1 1654 0
	leal	__FUNCTION__.14851@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1654, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L539:
	.loc 1 1658 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1663 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1665 0
	cmpl	$0, -108(%ebp)
	je	.L546
	.loc 1 1666 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block_delete_libcall
	movl	%eax, -120(%ebp)
	jmp	.L548
.L546:
	.loc 1 1680 0
	cmpl	$0, -104(%ebp)
	je	.L549
.LBB54:
	.loc 1 1684 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1686 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
.L549:
.LBE54:
	.loc 1 1691 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1692 0
	cmpl	$0, -104(%ebp)
	je	.L551
.LBB55:
	.loc 1 1696 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1698 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
.L551:
.LBE55:
	.loc 1 1702 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block_delete_insn
.L548:
	.loc 1 1705 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L536:
	.loc 1 1731 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1736 0
	cmpl	$0, -108(%ebp)
	je	.L553
	.loc 1 1739 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1741 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1742 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L553:
	.loc 1 1744 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L555
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L555
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L555
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L555
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L555
	.loc 1 1754 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
	.loc 1 1744 0
	jmp	.L561
.L555:
.LBB56:
	.loc 1 1762 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L562
	movl	-116(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L562
.LBB57:
	.loc 1 1763 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	jmp	.L565
.L566:
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
.L565:
	cmpl	$0, -84(%ebp)
	je	.L567
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-80(%ebp), %eax
	jb	.L566
.L567:
	cmpl	$0, -84(%ebp)
	je	.L572
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-80(%ebp), %eax
	je	.L572
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	jmp	.L572
.L575:
.LBB58:
	movl	-72(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L576
	jmp	.L578
.L579:
.LBB59:
	movl	-76(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	andl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L580
	movl	-64(%ebp), %eax
	notl	%eax
	andl	%eax, -68(%ebp)
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	sall	$5, %eax
	addl	-76(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	32(%edx), %eax
	addl	$1, %eax
	movl	%eax, 32(%edx)
	cmpl	$0, -68(%ebp)
	je	.L576
.L580:
.LBE59:
	addl	$1, -76(%ebp)
.L578:
	cmpl	$31, -76(%ebp)
	jbe	.L579
.L576:
	movl	$0, -76(%ebp)
.LBE58:
	addl	$1, -72(%ebp)
.L574:
	cmpl	$3, -72(%ebp)
	jbe	.L575
	movl	$0, -72(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
.L572:
	cmpl	$0, -84(%ebp)
	jne	.L574
.L562:
.LBE57:
	.loc 1 1768 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1770 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L583
.LBB60:
	.loc 1 1777 0
	movl	$0, -52(%ebp)
	.loc 1 1778 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L585
	.loc 1 1779 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L585:
	.loc 1 1784 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L587
	.loc 1 1786 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 1787 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	jmp	.L589
.L587:
	.loc 1 1790 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
.L589:
	.loc 1 1793 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1794 0
	jmp	.L590
.L591:
	.loc 1 1796 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L592
	.loc 1 1797 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$59, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
.L592:
	.loc 1 1795 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
.L590:
	.loc 1 1794 0
	cmpl	$0, -56(%ebp)
	jne	.L591
	.loc 1 1804 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 1805 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1806 0
	movl	$0, -48(%ebp)
	jmp	.L595
.L596:
	.loc 1 1807 0
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L642
	movl	%edx, %eax
	xorl	%edx, %edx
.L642:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L597
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L599
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L599
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %edx
	movl	-48(%ebp), %eax
	addl	$1, %eax
	movl	-48(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L597
.L599:
	.loc 1 1815 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, %ecx
	andl	$-6, %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$59, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
.L597:
	.loc 1 1806 0
	addl	$1, -48(%ebp)
.L595:
	cmpl	$175, -48(%ebp)
	jle	.L596
.L583:
.LBE60:
	.loc 1 1823 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1826 0
	cmpl	$0, -112(%ebp)
	jne	.L602
	.loc 1 1827 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
.L602:
	.loc 1 1828 0
	movl	-116(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L604
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	jne	.L606
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L604
.L606:
	.loc 1 1831 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
.L604:
	.loc 1 1839 0
	cmpl	$0, -112(%ebp)
	jne	.L561
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L561
.LBB61:
	.loc 1 1844 0
	movl	$0, -36(%ebp)
	.loc 1 1845 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L610
	.loc 1 1846 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L610:
	.loc 1 1849 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1850 0
	jmp	.L612
.L613:
	.loc 1 1852 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L614
	.loc 1 1853 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
.L614:
	.loc 1 1851 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L612:
	.loc 1 1850 0
	cmpl	$0, -40(%ebp)
	jne	.L613
	.loc 1 1857 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$29, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1861 0
	movl	$0, -44(%ebp)
	jmp	.L617
.L618:
	.loc 1 1862 0
	movl	-44(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L619
	.loc 1 1863 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_reg
.L619:
	.loc 1 1861 0
	addl	$1, -44(%ebp)
.L617:
	cmpl	$175, -44(%ebp)
	jle	.L618
.L561:
.LBE61:
.LBE56:
	.loc 1 1869 0
	movl	-116(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L621
.LBB62:
	.loc 1 1870 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L623
.L624:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L623:
	cmpl	$0, -32(%ebp)
	je	.L625
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L624
.L625:
	cmpl	$0, -32(%ebp)
	je	.L630
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L630
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L630
.L633:
.LBB63:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L634
	jmp	.L636
.L637:
.LBB64:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L638
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	28(%edx), %eax
	addl	$1, %eax
	movl	%eax, 28(%edx)
	cmpl	$0, -16(%ebp)
	je	.L634
.L638:
.LBE64:
	addl	$1, -24(%ebp)
.L636:
	cmpl	$31, -24(%ebp)
	jbe	.L637
.L634:
	movl	$0, -24(%ebp)
.LBE63:
	addl	$1, -20(%ebp)
.L632:
	cmpl	$3, -20(%ebp)
	jbe	.L633
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L630:
	cmpl	$0, -32(%ebp)
	jne	.L632
.L621:
.LBE62:
	.loc 1 1873 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
.L528:
	movl	-140(%ebp), %eax
	.loc 1 1874 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	propagate_one_insn, .-propagate_one_insn
.globl init_propagate_block_info
	.type	init_propagate_block_info, @function
init_propagate_block_info:
.LFB39:
	.loc 1 1885 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$52, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1886 0
	movl	$40, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1888 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1889 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1890 0
	movl	-24(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1891 0
	movl	-24(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 1892 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1893 0
	movl	-24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1894 0
	movl	-24(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1895 0
	movl	-24(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 1897 0
	movl	24(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L644
	.loc 1 1898 0
	call	max_reg_num@PLT
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L646
.L644:
	.loc 1 1900 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
.L646:
	.loc 1 1902 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2003 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L647
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L649
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L647
.L649:
	movl	24(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L647
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L652
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L647
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L647
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L647
.L652:
.LBB65:
	.loc 1 2014 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L656
.L657:
	.loc 1 2015 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L658
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L660
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L662
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L664
.L662:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L664:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L665
.L660:
	movl	$0, -44(%ebp)
.L665:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L658
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L658
.LBB66:
	.loc 1 2019 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2020 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2026 0
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L658
	.loc 1 2029 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L669
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L658
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L658
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L658
.L669:
	.loc 1 2033 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_mem_set_list
.L658:
.LBE66:
	.loc 1 2014 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L656:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L657
.L647:
.LBE65:
	.loc 1 2037 0
	movl	-24(%ebp), %eax
	.loc 1 2038 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	init_propagate_block_info, .-init_propagate_block_info
.globl free_propagate_block_info
	.type	free_propagate_block_info, @function
free_propagate_block_info:
.LFB40:
	.loc 1 2045 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$4, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2046 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 2048 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L675
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
.L675:
	.loc 1 2055 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L677
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L677:
	.loc 1 2058 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2059 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	free_propagate_block_info, .-free_propagate_block_info
.globl propagate_block
	.type	propagate_block, @function
propagate_block:
.LFB41:
	.loc 1 2086 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$68, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2091 0
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
	call	init_propagate_block_info@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2093 0
	movl	24(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L681
.LBB67:
.LBB68:
	.loc 1 2099 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L683
.L684:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L683:
	cmpl	$0, -28(%ebp)
	je	.L685
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L684
.L685:
	cmpl	$0, -28(%ebp)
	je	.L690
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L690
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L690
.L693:
.LBB69:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L694
	jmp	.L696
.L697:
.LBB70:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L698
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
	cmpl	$0, -12(%ebp)
	je	.L694
.L698:
.LBE70:
	addl	$1, -20(%ebp)
.L696:
	cmpl	$31, -20(%ebp)
	jbe	.L697
.L694:
	movl	$0, -20(%ebp)
.LBE69:
	addl	$1, -16(%ebp)
.L692:
	cmpl	$3, -16(%ebp)
	jbe	.L693
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L690:
	cmpl	$0, -28(%ebp)
	jne	.L692
.L681:
.LBE68:
.LBE67:
	.loc 1 2105 0
	movl	$0, -36(%ebp)
	.loc 1 2106 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L701:
	.loc 1 2110 0
	movl	24(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L702
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L702
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L702
	.loc 1 2113 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	regs_live_at_setjmp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	regs_live_at_setjmp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L702:
	.loc 1 2115 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_one_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2116 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-44(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -36(%ebp)
	.loc 1 2118 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L706
	.loc 1 2106 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2120 0
	jmp	.L701
.L706:
	.loc 1 2122 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free_propagate_block_info@PLT
	.loc 1 2124 0
	movl	-36(%ebp), %eax
	.loc 1 2125 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	propagate_block, .-propagate_block
	.type	insn_dead_p, @function
insn_dead_p:
.LFB42:
	.loc 1 2142 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$68, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2143 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2146 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L710
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L710
	.loc 1 2147 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L710:
	.loc 1 2169 0
	cmpl	$57, -36(%ebp)
	jne	.L714
.LBB71:
	.loc 1 2171 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2179 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L716
	.loc 1 2181 0
	cmpl	$0, 16(%ebp)
	jne	.L720
	.loc 1 2182 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L716:
	.loc 1 2186 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L720
	.loc 1 2187 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L720:
	.loc 1 2189 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L735
.LBB72:
	.loc 1 2193 0
	movl	-32(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L724
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L726
.L724:
	.loc 1 2194 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L726:
	.loc 1 2196 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2204 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L727
.L728:
	.loc 1 2205 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L729
.LBB73:
	.loc 1 2207 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2209 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L729
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L729
	.loc 1 2212 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L729:
.LBE73:
	.loc 1 2204 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L727:
	cmpl	$0, -28(%ebp)
	jne	.L728
	jmp	.L767
.L736:
.LBE72:
	.loc 1 2232 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L735:
	.loc 1 2229 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L736
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L736
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L736
	.loc 1 2234 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L767
.LBB74:
	.loc 1 2236 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2239 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L741
	.loc 1 2240 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L741:
	.loc 1 2244 0
	cmpl	$175, -16(%ebp)
	jg	.L743
.LBB75:
	.loc 1 2246 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2248 0
	jmp	.L745
.L746:
	.loc 1 2249 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L745
	.loc 1 2250 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L745:
	.loc 1 2248 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jg	.L746
.L743:
.LBE75:
	.loc 1 2254 0
	cmpl	$175, -16(%ebp)
	jg	.L748
	movl	-16(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L748
	.loc 1 2255 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L748:
	.loc 1 2258 0
	cmpl	$29, -16(%ebp)
	jne	.L751
	.loc 1 2259 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L751:
	.loc 1 2266 0
	cmpl	$1, -16(%ebp)
	jne	.L753
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L755
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L753
.L755:
	.loc 1 2268 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L753:
	.loc 1 2270 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L757
	movl	$17, -40(%ebp)
	jmp	.L759
.L757:
	movl	$30, -40(%ebp)
.L759:
	movl	-40(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L760
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L762
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L760
.L762:
	.loc 1 2272 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L760:
	.loc 1 2279 0
	cmpl	$0, -16(%ebp)
	jne	.L764
	movl	-16(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L764
	.loc 1 2280 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L764:
	.loc 1 2284 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L714:
.LBE74:
.LBE71:
	.loc 1 2293 0
	cmpl	$49, -36(%ebp)
	jne	.L768
.LBB76:
	.loc 1 2295 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2297 0
	subl	$1, -8(%ebp)
	jmp	.L770
.L771:
	.loc 1 2298 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L772
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L772
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_dead_p
	testl	%eax, %eax
	jne	.L772
	.loc 1 2301 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L772:
	.loc 1 2297 0
	subl	$1, -8(%ebp)
.L770:
	cmpl	$0, -8(%ebp)
	jns	.L771
	.loc 1 2303 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L768:
.LBE76:
	.loc 1 2308 0
	cmpl	$59, -36(%ebp)
	jne	.L767
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L767
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L767
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L767
	.loc 1 2311 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L767:
	.loc 1 2315 0
	movl	$0, -44(%ebp)
.L713:
	movl	-44(%ebp), %eax
	.loc 1 2316 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	insn_dead_p, .-insn_dead_p
	.type	libcall_dead_p, @function
libcall_dead_p:
.LFB43:
	.loc 1 2338 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$68, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2339 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L783
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L785
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L787
.L785:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L787:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L788
.L783:
	movl	$0, -48(%ebp)
.L788:
	movl	-48(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2341 0
	cmpl	$0, -24(%ebp)
	je	.L789
.LBB77:
	.loc 1 2343 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2345 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L789
.LBB78:
	.loc 1 2347 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2352 0
	jmp	.L792
.L793:
	.loc 1 2353 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L792:
	.loc 1 2352 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L794
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L793
.L794:
	.loc 1 2357 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L796
	.loc 1 2358 0
	movl	$0, -40(%ebp)
	jmp	.L798
.L796:
	.loc 1 2362 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2363 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L799
	.loc 1 2365 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L801
.L802:
	.loc 1 2366 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L803
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	je	.L805
.L803:
	.loc 1 2365 0
	subl	$1, -8(%ebp)
.L801:
	cmpl	$0, -8(%ebp)
	jns	.L802
.L805:
	.loc 1 2373 0
	cmpl	$0, -8(%ebp)
	jns	.L806
	.loc 1 2374 0
	movl	$0, -40(%ebp)
	jmp	.L798
.L806:
	.loc 1 2376 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
.L799:
	.loc 1 2379 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_dead_p
	movl	%eax, -40(%ebp)
	jmp	.L798
.L789:
.LBE78:
.LBE77:
	.loc 1 2382 0
	movl	$1, -40(%ebp)
.L798:
	movl	-40(%ebp), %eax
	.loc 1 2383 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	libcall_dead_p, .-libcall_dead_p
.globl regno_uninitialized
	.type	regno_uninitialized, @function
regno_uninitialized:
.LFB44:
	.loc 1 2393 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$52, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2394 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L810
	cmpl	$175, 8(%ebp)
	ja	.L812
	movl	8(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L810
	movl	8(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L810
	movl	8(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L816
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L818
.L816:
	movl	$3, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L819
.L818:
	movl	$7, -40(%ebp)
	movl	$0, -36(%ebp)
.L819:
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L820
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	ja	.L822
	movl	-40(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jbe	.L820
.L822:
	movl	8(%ebp), %eax
	subl	$44, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L823
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L825
.L823:
	movl	$3, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L826
.L825:
	movl	$7, -24(%ebp)
	movl	$0, -20(%ebp)
.L826:
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	ja	.L812
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L828
	movl	-24(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	ja	.L812
.L828:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L829
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L831
.L829:
	movl	$1, -16(%ebp)
	jmp	.L832
.L831:
	movl	$2, -16(%ebp)
.L832:
	movl	8(%ebp), %eax
	movl	$0, %edx
	divl	-16(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L812
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L812
.L820:
	movl	8(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L812
.L810:
	.loc 1 2399 0
	movl	$0, -12(%ebp)
	jmp	.L834
.L812:
	.loc 1 2401 0
	movl	8(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -12(%ebp)
.L834:
	movl	-12(%ebp), %eax
	.loc 1 2402 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	regno_uninitialized, .-regno_uninitialized
.globl regno_clobbered_at_setjmp
	.type	regno_clobbered_at_setjmp, @function
regno_clobbered_at_setjmp:
.LFB45:
	.loc 1 2411 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$20, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2412 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L837
	.loc 1 2413 0
	movl	$0, -12(%ebp)
	jmp	.L839
.L837:
	.loc 1 2415 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jg	.L840
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L842
.L840:
	movl	regs_live_at_setjmp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L842
	movl	$1, -8(%ebp)
	jmp	.L844
.L842:
	movl	$0, -8(%ebp)
.L844:
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L839:
	movl	-12(%ebp), %eax
	.loc 1 2418 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	regno_clobbered_at_setjmp, .-regno_clobbered_at_setjmp
	.type	add_to_mem_set_list, @function
add_to_mem_set_list:
.LFB46:
	.loc 1 2426 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$36, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2431 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L857
	.loc 1 2434 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L849
.L850:
.LBB79:
	.loc 1 2436 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2437 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L851
	.loc 1 2439 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L857
	.loc 1 2448 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2450 0
	jmp	.L857
.L851:
.LBE79:
	.loc 1 2434 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L849:
	cmpl	$0, -12(%ebp)
	jne	.L850
	.loc 1 2454 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$99, %eax
	jg	.L857
	.loc 1 2462 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2463 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
.L857:
	.loc 1 2465 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	add_to_mem_set_list, .-add_to_mem_set_list
	.type	invalidate_mems_from_autoinc, @function
invalidate_mems_from_autoinc:
.LFB47:
	.loc 1 2475 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$36, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2476 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2477 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2479 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L859
	.loc 1 2481 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
	.loc 1 2482 0
	movl	$-1, -24(%ebp)
	jmp	.L861
.L859:
	.loc 1 2485 0
	movl	$0, -24(%ebp)
.L861:
	movl	-24(%ebp), %eax
	.loc 1 2486 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	invalidate_mems_from_autoinc, .-invalidate_mems_from_autoinc
	.type	invalidate_mems_from_set, @function
invalidate_mems_from_set:
.LFB48:
	.loc 1 2494 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$36, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2495 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2496 0
	movl	$0, -12(%ebp)
	.loc 1 2499 0
	jmp	.L864
.L865:
	.loc 1 2501 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2502 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L866
	.loc 1 2505 0
	cmpl	$0, -12(%ebp)
	je	.L868
	.loc 1 2506 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L870
.L868:
	.loc 1 2508 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
.L870:
	.loc 1 2509 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 2510 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L871
.L866:
	.loc 1 2513 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L871:
	.loc 1 2514 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L864:
	.loc 1 2499 0
	cmpl	$0, -16(%ebp)
	jne	.L865
	.loc 1 2516 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	invalidate_mems_from_set, .-invalidate_mems_from_set
	.section	.rodata
	.type	__FUNCTION__.15758, @object
	.size	__FUNCTION__.15758, 14
__FUNCTION__.15758:
	.string	"mark_set_regs"
	.text
	.type	mark_set_regs, @function
mark_set_regs:
.LFB49:
	.loc 1 2529 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$84, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2530 0
	movl	$0, -24(%ebp)
	.loc 1 2534 0
	cmpl	$0, 16(%ebp)
	je	.L875
	.loc 1 2535 0
	movl	16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L877
.L878:
	.loc 1 2537 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L879
	.loc 1 2538 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L881
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L883
.L881:
	movl	$0, -40(%ebp)
.L883:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$57, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
.L879:
	.loc 1 2535 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L877:
	cmpl	$0, -20(%ebp)
	jne	.L878
.L875:
	.loc 1 2544 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$49, -48(%ebp)
	je	.L886
	cmpl	$49, -48(%ebp)
	ja	.L888
	cmpl	$48, -48(%ebp)
	je	.L885
	jmp	.L897
.L888:
	cmpl	$57, -48(%ebp)
	je	.L887
	cmpl	$59, -48(%ebp)
	je	.L887
	jmp	.L897
.L887:
	.loc 1 2548 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
	.loc 1 2549 0
	jmp	.L897
.L885:
	.loc 1 2552 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2553 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2554 0
	jmp	.L875
.L886:
.LBB80:
	.loc 1 2560 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L889
.L890:
.LBB81:
	.loc 1 2562 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2563 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$57, -52(%ebp)
	je	.L893
	cmpl	$59, -52(%ebp)
	je	.L893
	cmpl	$48, -52(%ebp)
	je	.L892
	jmp	.L891
.L892:
	.loc 1 2566 0
	cmpl	$0, -24(%ebp)
	je	.L894
	.loc 1 2567 0
	leal	__FUNCTION__.15758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2567, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L894:
	.loc 1 2569 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2570 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2571 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L893
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L891
.L893:
	.loc 1 2577 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
.L891:
.LBE81:
	.loc 1 2560 0
	subl	$1, -12(%ebp)
.L889:
	cmpl	$0, -12(%ebp)
	jns	.L890
.L897:
.LBE80:
	.loc 1 2590 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	mark_set_regs, .-mark_set_regs
	.type	mark_set_1, @function
mark_set_1:
.LFB50:
	.loc 1 2604 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$148, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2605 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	.loc 1 2606 0
	movl	$0, -40(%ebp)
	.loc 1 2613 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -112(%ebp)
	cmpl	$73, -112(%ebp)
	je	.L902
	cmpl	$73, -112(%ebp)
	ja	.L904
	cmpl	$49, -112(%ebp)
	je	.L900
	cmpl	$71, -112(%ebp)
	je	.L901
	jmp	.L899
.L904:
	cmpl	$74, -112(%ebp)
	je	.L1032
	movl	-112(%ebp), %eax
	subl	$142, %eax
	cmpl	$1, %eax
	ja	.L899
	jmp	.L1032
.L900:
	.loc 1 2619 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L905
.L906:
	.loc 1 2620 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L907
	.loc 1 2621 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_1
.L907:
	.loc 1 2619 0
	subl	$1, -36(%ebp)
.L905:
	cmpl	$0, -36(%ebp)
	jns	.L906
	.loc 1 2623 0
	jmp	.L1031
.L903:
.L1032:
	.loc 1 2630 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 2634 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L903
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L903
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L903
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L903
	.loc 1 2635 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L899
	.loc 1 2637 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -40(%ebp)
.L901:
	.loc 1 2641 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2642 0
	cmpl	$175, -48(%ebp)
	jg	.L899
	.loc 1 2643 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2644 0
	jmp	.L899
.L902:
	.loc 1 2647 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L918
.LBB82:
	.loc 1 2649 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2650 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2655 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2656 0
	cmpl	$175, -48(%ebp)
	jg	.L920
	.loc 1 2658 0
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2661 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2668 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, 16(%ebp)
	jmp	.L899
.L920:
	.loc 1 2678 0
	movl	-32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L923
	movl	$8, -104(%ebp)
	jmp	.L925
.L923:
	movl	$4, -104(%ebp)
.L925:
	movl	-108(%ebp), %eax
	addl	-104(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L926
	movl	$8, -96(%ebp)
	jmp	.L928
.L926:
	movl	$4, -96(%ebp)
.L928:
	movl	-100(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-96(%ebp)
	movl	%eax, -92(%ebp)
	movl	-28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L929
	movl	$8, -84(%ebp)
	jmp	.L931
.L929:
	movl	$4, -84(%ebp)
.L931:
	movl	-88(%ebp), %eax
	addl	-84(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -80(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L932
	movl	$8, -76(%ebp)
	jmp	.L934
.L932:
	movl	$4, -76(%ebp)
.L934:
	movl	-80(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-76(%ebp)
	cmpl	%eax, -92(%ebp)
	jge	.L935
	.loc 1 2682 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -40(%ebp)
.L935:
	.loc 1 2685 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	jmp	.L899
.L918:
.LBE82:
	.loc 1 2689 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
.L899:
	.loc 1 2698 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L937
	movl	28(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L937
	.loc 1 2700 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L940
	.loc 1 2701 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
.L940:
	.loc 1 2706 0
	cmpl	$0, 24(%ebp)
	je	.L942
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L942
	.loc 1 2707 0
	movl	24(%ebp), %eax
	addl	$44, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	invalidate_mems_from_autoinc@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
.L942:
	.loc 1 2709 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L937
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L937
	cmpl	$0, 20(%ebp)
	jne	.L937
	.loc 1 2712 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_mem_set_list
.L937:
	.loc 1 2715 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L948
	cmpl	$1, -48(%ebp)
	jne	.L950
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L948
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L948
.L950:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L953
	movl	$17, -72(%ebp)
	jmp	.L955
.L953:
	movl	$30, -72(%ebp)
.L955:
	movl	-72(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L956
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L948
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L948
.L956:
	cmpl	$0, -48(%ebp)
	jne	.L959
	movl	-48(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L948
.L959:
.LBB83:
	.loc 1 2727 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2729 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L961
.L962:
.LBB84:
	.loc 1 2731 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2732 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L963
	.loc 1 2736 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 2737 0
	cmpl	$0, 20(%ebp)
	je	.L965
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L965
	.loc 1 2739 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 2737 0
	jmp	.L963
.L965:
	.loc 1 2741 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L963:
	.loc 1 2743 0
	cmpl	$59, 12(%ebp)
	je	.L968
	.loc 1 2744 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L968:
	.loc 1 2746 0
	movl	-16(%ebp), %eax
	orl	%eax, -24(%ebp)
	.loc 1 2747 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%ebp)
.LBE84:
	.loc 1 2729 0
	addl	$1, -36(%ebp)
.L961:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L962
	.loc 1 2767 0
	movl	28(%ebp), %eax
	andl	$71, %eax
	testl	%eax, %eax
	je	.L971
.LBB85:
	.loc 1 2771 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2773 0
	movl	$0, -12(%ebp)
	.loc 1 2774 0
	movl	28(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L973
	.loc 1 2776 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2779 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L975
.L976:
	.loc 1 2780 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2779 0
	addl	$1, -36(%ebp)
.L975:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L976
.L973:
	.loc 1 2783 0
	movl	28(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L977
	.loc 1 2785 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L979
.L980:
	.loc 1 2789 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	.loc 1 2790 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movl	%eax, 16(%ecx)
	.loc 1 2791 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -68(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L981
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L983
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L981
.L983:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	jbe	.L985
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %ecx
	movl	$1717986919, -116(%ebp)
	movl	-116(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L987
.L985:
	movl	$1, -56(%ebp)
.L987:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L988
.L981:
	movl	$1000, -60(%ebp)
.L988:
	movl	-64(%ebp), %eax
	addl	-60(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 2797 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	$1, %eax
	movl	%eax, 28(%ecx)
	.loc 1 2785 0
	addl	$1, -36(%ebp)
.L979:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L980
	.loc 1 2801 0
	cmpl	$175, -48(%ebp)
	jg	.L990
	.loc 1 2803 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L992
.L993:
	.loc 1 2804 0
	movl	-36(%ebp), %edx
	movl	regs_ever_live@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 2803 0
	addl	$1, -36(%ebp)
.L992:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L993
	jmp	.L977
.L990:
	.loc 1 2809 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	$-1, %eax
	jne	.L995
	.loc 1 2810 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 36(%edx)
	jmp	.L977
.L995:
	.loc 1 2811 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L977
	.loc 1 2812 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
.L977:
	.loc 1 2816 0
	cmpl	$0, -20(%ebp)
	jne	.L998
	.loc 1 2818 0
	movl	28(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L971
	.loc 1 2829 0
	cmpl	$0, -12(%ebp)
	je	.L971
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L971
	cmpl	$175, -48(%ebp)
	jg	.L1004
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jns	.L971
.L1004:
	.loc 1 2832 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 60(%eax)
	jmp	.L971
.L998:
	.loc 1 2835 0
	cmpl	$0, -40(%ebp)
	jne	.L971
	.loc 1 2837 0
	cmpl	$0, -24(%ebp)
	jne	.L1007
	.loc 1 2839 0
	movl	28(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1009
	.loc 1 2840 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	24(%eax), %eax
	addl	$1, %eax
	movl	%eax, 24(%ecx)
.L1009:
	.loc 1 2842 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L971
	.loc 1 2849 0
	movl	24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L971
.L1007:
	.loc 1 2855 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L971
	.loc 1 2863 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1014
.L1015:
	.loc 1 2864 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L1016
	.loc 1 2865 0
	movl	24(%ebp), %eax
	movl	68(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 68(%eax)
.L1016:
	.loc 1 2863 0
	addl	$1, -36(%ebp)
.L1014:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L1015
.L971:
.LBE85:
	.loc 1 2874 0
	cmpl	$0, -24(%ebp)
	je	.L1031
	cmpl	$29, -48(%ebp)
	je	.L1031
	.loc 1 2881 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1021
.L1022:
	.loc 1 2882 0
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-40(%ebp), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1023
	.loc 1 2883 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
.L1023:
	.loc 1 2881 0
	addl	$1, -36(%ebp)
.L1021:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L1022
	.loc 1 2715 0
	jmp	.L1031
.L948:
.LBE83:
	.loc 1 2886 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1025
	.loc 1 2888 0
	movl	28(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L1031
	.loc 1 2889 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	jmp	.L1031
.L1025:
	.loc 1 2894 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	jne	.L1031
	.loc 1 2896 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1031
	.loc 1 2897 0
	movl	24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 68(%eax)
.L1031:
	.loc 1 2900 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	mark_set_1, .-mark_set_1
	.type	mark_used_reg, @function
mark_used_reg:
.LFB51:
	.loc 1 3573 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%edi
.LCFI153:
	pushl	%esi
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$76, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3577 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3578 0
	cmpl	$175, -44(%ebp)
	ja	.L1034
	.loc 1 3579 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
.L1034:
	.loc 1 3582 0
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3583 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1036
.L1037:
.LBB86:
	.loc 1 3585 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3586 0
	movl	-20(%ebp), %eax
	orl	%eax, -32(%ebp)
	.loc 1 3587 0
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -28(%ebp)
.LBE86:
	.loc 1 3583 0
	addl	$1, -36(%ebp)
.L1036:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1037
	.loc 1 3591 0
	movl	$0, -24(%ebp)
	.loc 1 3592 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1039
.L1040:
	.loc 1 3593 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -24(%ebp)
	.loc 1 3592 0
	addl	$1, -36(%ebp)
.L1039:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1040
	.loc 1 3595 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L1042
	.loc 1 3599 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
.L1042:
	.loc 1 3602 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1044
	.loc 1 3604 0
	cmpl	$175, -44(%ebp)
	ja	.L1046
	.loc 1 3618 0
	movl	-44(%ebp), %eax
	shrl	$6, %eax
	movl	elim_reg_set@GOTOFF(%ebx,%eax,8), %esi
	movl	4+elim_reg_set@GOTOFF(%ebx,%eax,8), %edi
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1090
	movl	%edx, %eax
	xorl	%edx, %edx
.L1090:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1048
	cmpl	$1, -44(%ebp)
	je	.L1044
	cmpl	$0, -44(%ebp)
	je	.L1044
.L1048:
	.loc 1 3621 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1052
.L1053:
	.loc 1 3622 0
	movl	-36(%ebp), %edx
	movl	regs_ever_live@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 3621 0
	addl	$1, -36(%ebp)
.L1052:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1053
	jmp	.L1044
.L1046:
.LBB87:
	.loc 1 3628 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3629 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	$-1, %eax
	jne	.L1054
	.loc 1 3630 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
	jmp	.L1056
.L1054:
	.loc 1 3631 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1056
	.loc 1 3632 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
.L1056:
	.loc 1 3635 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -60(%ebp)
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1058
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1060
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1058
.L1060:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	addl	$9, %eax
	cmpl	$18, %eax
	jbe	.L1062
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	72(%eax), %ecx
	movl	$1717986919, -64(%ebp)
	movl	-64(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L1064
.L1062:
	movl	$1, -48(%ebp)
.L1064:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1065
.L1058:
	movl	$1000, -52(%ebp)
.L1065:
	movl	-56(%ebp), %eax
	addl	-52(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 3636 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	%eax, 16(%edx)
.L1044:
.LBE87:
	.loc 1 3644 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L1066
	cmpl	$0, -28(%ebp)
	je	.L1066
	cmpl	$0, -24(%ebp)
	je	.L1066
	.loc 1 3650 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L1070
	.loc 1 3651 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1072
.L1073:
	.loc 1 3652 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	orl	%eax, -32(%ebp)
	.loc 1 3651 0
	addl	$1, -36(%ebp)
.L1072:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1073
.L1070:
	.loc 1 3656 0
	cmpl	$0, -32(%ebp)
	jne	.L1074
	.loc 1 3658 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1076
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	jne	.L1076
	.loc 1 3660 0
	movl	20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 68(%eax)
.L1076:
	.loc 1 3663 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1066
	.loc 1 3664 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	24(%edx), %eax
	addl	$1, %eax
	movl	%eax, 24(%edx)
	jmp	.L1066
.L1074:
	.loc 1 3670 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1081
.L1082:
	.loc 1 3671 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L1083
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_regno_p@PLT
	testl	%eax, %eax
	jne	.L1083
	.loc 1 3673 0
	movl	20(%ebp), %eax
	movl	68(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 68(%eax)
.L1083:
	.loc 1 3670 0
	addl	$1, -36(%ebp)
.L1081:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1082
.L1066:
	.loc 1 3681 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1086
.L1087:
	.loc 1 3687 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 3681 0
	addl	$1, -36(%ebp)
.L1086:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1087
	.loc 1 3750 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	mark_used_reg, .-mark_used_reg
	.section	.rodata
	.type	__FUNCTION__.16426, @object
	.size	__FUNCTION__.16426, 15
__FUNCTION__.16426:
	.string	"mark_used_regs"
	.text
	.type	mark_used_regs, @function
mark_used_regs:
.LFB52:
	.loc 1 3763 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%ebx
.LCFI159:
	subl	$116, %esp
.LCFI160:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3766 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1195
.L1092:
.L1195:
	.loc 1 3769 0
	cmpl	$0, 12(%ebp)
	je	.L1194
	.loc 1 3771 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	.loc 1 3772 0
	movl	-52(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -100(%ebp)
	cmpl	$114, -100(%ebp)
	ja	.L1095
	movl	-100(%ebp), %eax
	sall	$2, %eax
	movl	.L1105@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1105:
	.long	.L1096@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1097@GOTOFF
	.long	.L1097@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1097@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1099@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1100@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1097@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1101@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1102@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1103@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1194@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1194@GOTOFF
	.text
.L1100:
	.loc 1 3794 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1194
	.loc 1 3795 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3796 0
	jmp	.L1194
.L1103:
	.loc 1 3801 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1095
	movl	-44(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1095
	.loc 1 3805 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1111
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1111
	jmp	.L1114
.L1111:
.LBB88:
	.loc 1 3811 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3812 0
	movl	$0, -36(%ebp)
	.loc 1 3815 0
	jmp	.L1115
.L1116:
	.loc 1 3817 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3818 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L1117
	.loc 1 3821 0
	cmpl	$0, -36(%ebp)
	je	.L1119
	.loc 1 3822 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L1121
.L1119:
	.loc 1 3824 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%edx)
.L1121:
	.loc 1 3825 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 3826 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L1122
.L1117:
	.loc 1 3829 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1122:
	.loc 1 3830 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1115:
	.loc 1 3815 0
	cmpl	$0, -40(%ebp)
	jne	.L1116
.L1114:
.LBE88:
	.loc 1 3837 0
	cmpl	$0, 20(%ebp)
	je	.L1095
	.loc 1 3838 0
	movl	20(%ebp), %eax
	addl	$44, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	invalidate_mems_from_autoinc@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 3845 0
	jmp	.L1095
.L1102:
	.loc 1 3849 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1124
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1124
	.loc 1 3851 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	imull	$54, %eax, %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	subregs_of_mode@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L1124:
	.loc 1 3857 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3858 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1092
.L1101:
	.loc 1 3864 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_reg
	.loc 1 3865 0
	jmp	.L1194
.L1099:
.LBB89:
	.loc 1 3869 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3870 0
	movl	$0, -24(%ebp)
	.loc 1 3874 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1129
	.loc 1 3880 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3881 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3882 0
	jmp	.L1194
.L1130:
	.loc 1 3898 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1131
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1131
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1131
	.loc 1 3901 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	imull	$54, %eax, %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	subregs_of_mode@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L1131:
	.loc 1 3909 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1135
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1137
	movl	$8, -92(%ebp)
	jmp	.L1139
.L1137:
	movl	$4, -92(%ebp)
.L1139:
	movl	-96(%ebp), %eax
	addl	-92(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -88(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1140
	movl	$8, -84(%ebp)
	jmp	.L1142
.L1140:
	movl	$4, -84(%ebp)
.L1142:
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-84(%ebp)
	movl	%eax, -80(%ebp)
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1143
	movl	$8, -72(%ebp)
	jmp	.L1145
.L1143:
	movl	$4, -72(%ebp)
.L1145:
	movl	-76(%ebp), %eax
	addl	-72(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1146
	movl	$8, -64(%ebp)
	jmp	.L1148
.L1146:
	movl	$4, -64(%ebp)
.L1148:
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-64(%ebp)
	cmpl	%eax, -80(%ebp)
	jg	.L1135
	jmp	.L1150
.L1135:
	.loc 1 3916 0
	movl	$1, -24(%ebp)
.L1150:
	.loc 1 3918 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L1129:
	.loc 1 3892 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L1130
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L1130
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L1130
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1130
	.loc 1 3924 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1155
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1157
.L1155:
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1095
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$1, -48(%ebp)
	jne	.L1160
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1162
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1162
.L1160:
	movl	$1, -60(%ebp)
	jmp	.L1164
.L1162:
	movl	$0, -60(%ebp)
.L1164:
	cmpl	$0, -60(%ebp)
	je	.L1095
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1166
	movl	$17, -56(%ebp)
	jmp	.L1168
.L1166:
	movl	$30, -56(%ebp)
.L1168:
	movl	-56(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L1169
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1095
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1095
.L1169:
	cmpl	$0, -48(%ebp)
	jne	.L1157
	movl	-48(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L1095
.L1157:
	.loc 1 3939 0
	cmpl	$0, -24(%ebp)
	je	.L1173
	.loc 1 3940 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
.L1173:
	.loc 1 3941 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3942 0
	jmp	.L1194
.L1097:
.LBE89:
	.loc 1 3966 0
	cmpl	$51, -52(%ebp)
	jne	.L1175
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1177
.L1175:
	.loc 1 3968 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 3969 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L1177:
	.loc 1 3976 0
	cmpl	$51, -52(%ebp)
	jne	.L1095
.LBB90:
	.loc 1 3980 0
	movl	$0, -20(%ebp)
	jmp	.L1180
.L1181:
	.loc 1 3981 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3980 0
	addl	$1, -20(%ebp)
.L1180:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L1181
	.loc 1 3983 0
	jmp	.L1095
.L1096:
.LBE90:
	.loc 1 3987 0
	cmpl	$0, 16(%ebp)
	je	.L1182
	.loc 1 3988 0
	leal	__FUNCTION__.16426@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3988, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1182:
	.loc 1 3990 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3992 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 3993 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3994 0
	jmp	.L1092
.L1095:
.LBB91:
	.loc 1 4011 0
	movl	-52(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4014 0
	movl	-52(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1184
.L1185:
	.loc 1 4016 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1186
	.loc 1 4019 0
	cmpl	$0, -12(%ebp)
	jne	.L1188
	.loc 1 4021 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4022 0
	jmp	.L1092
.L1188:
	.loc 1 4024 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	jmp	.L1190
.L1186:
	.loc 1 4026 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1190
.LBB92:
	.loc 1 4029 0
	movl	$0, -8(%ebp)
	jmp	.L1192
.L1193:
	.loc 1 4030 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 4029 0
	addl	$1, -8(%ebp)
.L1192:
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1193
.L1190:
.LBE92:
	.loc 1 4014 0
	subl	$1, -12(%ebp)
.L1184:
	cmpl	$0, -12(%ebp)
	jns	.L1185
.L1194:
.LBE91:
	.loc 1 4034 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	mark_used_regs, .-mark_used_regs
.globl find_use_as_address
	.type	find_use_as_address, @function
find_use_as_address:
.LFB53:
	.loc 1 4171 0
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
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4172 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4173 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4175 0
	movl	$0, -20(%ebp)
	.loc 1 4178 0
	cmpl	$76, -32(%ebp)
	jne	.L1197
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1197
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L1197
	.loc 1 4179 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1201
.L1197:
	.loc 1 4181 0
	cmpl	$76, -32(%ebp)
	jne	.L1202
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1202
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1202
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1202
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1202
	.loc 1 4185 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1201
.L1202:
	.loc 1 4187 0
	cmpl	$142, -32(%ebp)
	je	.L1208
	cmpl	$143, -32(%ebp)
	jne	.L1210
.L1208:
	.loc 1 4191 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_use_as_address@PLT
	testl	%eax, %eax
	je	.L1210
	.loc 1 4192 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1210:
	.loc 1 4195 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1212
	.loc 1 4196 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1212:
	.loc 1 4198 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1214
.L1215:
	.loc 1 4200 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1216
	.loc 1 4202 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	find_use_as_address@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4203 0
	cmpl	$0, -20(%ebp)
	jne	.L1218
	.loc 1 4204 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1222
.L1218:
	.loc 1 4205 0
	cmpl	$0, -16(%ebp)
	je	.L1222
	.loc 1 4206 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1216:
	.loc 1 4208 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1222
.LBB93:
	.loc 1 4211 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1224
.L1225:
	.loc 1 4213 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	find_use_as_address@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4214 0
	cmpl	$0, -20(%ebp)
	jne	.L1226
	.loc 1 4215 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1228
.L1226:
	.loc 1 4216 0
	cmpl	$0, -16(%ebp)
	je	.L1228
	.loc 1 4217 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1228:
	.loc 1 4211 0
	subl	$1, -12(%ebp)
.L1224:
	cmpl	$0, -12(%ebp)
	jns	.L1225
.L1222:
.LBE93:
	.loc 1 4198 0
	subl	$1, -24(%ebp)
.L1214:
	cmpl	$0, -24(%ebp)
	jns	.L1215
	.loc 1 4222 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1201:
	movl	-52(%ebp), %eax
	.loc 1 4223 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	find_use_as_address, .-find_use_as_address
	.section	.rodata
.LC11:
	.string	" (nil)"
.LC12:
	.string	" %d"
.LC13:
	.string	" [%s]"
	.text
.globl dump_regset
	.type	dump_regset, @function
dump_regset:
.LFB54:
	.loc 1 4232 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	pushl	%ebx
.LCFI167:
	subl	$52, %esp
.LCFI168:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4234 0
	cmpl	$0, 8(%ebp)
	jne	.L1233
	.loc 1 4236 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 4237 0
	jmp	.L1256
.L1233:
.LBB94:
	.loc 1 4240 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L1236
.L1237:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1236:
	cmpl	$0, -28(%ebp)
	je	.L1238
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L1237
.L1238:
	cmpl	$0, -28(%ebp)
	je	.L1243
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L1243
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L1243
.L1246:
.LBB95:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1247
	jmp	.L1249
.L1250:
.LBB96:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L1251
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	cmpl	$175, -32(%ebp)
	jg	.L1253
	movl	-32(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1253:
	cmpl	$0, -12(%ebp)
	je	.L1247
.L1251:
.LBE96:
	addl	$1, -20(%ebp)
.L1249:
	cmpl	$31, -20(%ebp)
	jbe	.L1250
.L1247:
	movl	$0, -20(%ebp)
.LBE95:
	addl	$1, -16(%ebp)
.L1245:
	cmpl	$3, -16(%ebp)
	jbe	.L1246
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1243:
	cmpl	$0, -28(%ebp)
	jne	.L1245
.L1256:
.LBE94:
	.loc 1 4247 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	dump_regset, .-dump_regset
.globl debug_regset
	.type	debug_regset, @function
debug_regset:
.LFB55:
	.loc 1 4256 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$20, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4257 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_regset@PLT
	.loc 1 4258 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 4259 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	debug_regset, .-debug_regset
.globl recompute_reg_usage
	.type	recompute_reg_usage, @function
recompute_reg_usage:
.LFB56:
	.loc 1 4284 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$20, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4285 0
	call	allocate_reg_life_data@PLT
	.loc 1 4286 0
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
	.loc 1 4287 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	recompute_reg_usage, .-recompute_reg_usage
.globl count_or_remove_death_notes
	.type	count_or_remove_death_notes, @function
count_or_remove_death_notes:
.LFB57:
	.loc 1 4297 0
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
	subl	$44, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4298 0
	movl	$0, -44(%ebp)
	.loc 1 4301 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1262
.L1263:
.LBB97:
	.loc 1 4305 0
	cmpl	$0, 8(%ebp)
	je	.L1264
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1284
	movl	%edi, %esi
	xorl	%edi, %edi
.L1284:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1266
.L1264:
	.loc 1 4308 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1267:
	.loc 1 4310 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1268
.LBB98:
	.loc 1 4312 0
	movl	-36(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4313 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4315 0
	jmp	.L1283
.L1271:
	.loc 1 4317 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$1, -48(%ebp)
	je	.L1273
	cmpl	$10, -48(%ebp)
	je	.L1274
	jmp	.L1272
.L1273:
	.loc 1 4320 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1274
.LBB99:
	.loc 1 4322 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4325 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1276
	.loc 1 4326 0
	movl	$1, -20(%ebp)
	jmp	.L1278
.L1276:
	.loc 1 4328 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
.L1278:
	.loc 1 4329 0
	movl	-20(%ebp), %eax
	addl	%eax, -44(%ebp)
.L1274:
.LBE99:
	.loc 1 4334 0
	cmpl	$0, 12(%ebp)
	je	.L1272
.LBB100:
	.loc 1 4336 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4337 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 4338 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4339 0
	jmp	.L1270
.L1272:
.LBE100:
	.loc 1 4344 0
	movl	-28(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4345 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1270:
.L1283:
	.loc 1 4315 0
	cmpl	$0, -28(%ebp)
	jne	.L1271
.L1268:
.LBE98:
	.loc 1 4351 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1266
	.loc 1 4308 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4353 0
	jmp	.L1267
.L1266:
.LBE97:
	.loc 1 4301 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
.L1262:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1263
	.loc 1 4356 0
	movl	-44(%ebp), %eax
	.loc 1 4357 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE57:
	.size	count_or_remove_death_notes, .-count_or_remove_death_notes
	.type	clear_log_links, @function
clear_log_links:
.LFB58:
	.loc 1 4364 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%edi
.LCFI185:
	pushl	%esi
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$60, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4368 0
	cmpl	$0, 8(%ebp)
	jne	.L1286
	.loc 1 4370 0
	call	get_insns@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1288
.L1289:
	.loc 1 4371 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1290
	.loc 1 4372 0
	movl	-44(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L1290:
	.loc 1 4370 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L1288:
	cmpl	$0, -44(%ebp)
	jne	.L1289
	jmp	.L1307
.L1286:
.LBB101:
	.loc 1 4375 0
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L1294
.L1295:
.LBB102:
	movl	-36(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L1296
	jmp	.L1298
.L1299:
.LBB103:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1308
	movl	%eax, %edx
	xorl	%eax, %eax
.L1308:
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %esi
	movl	-64(%ebp), %eax
	andl	%ecx, %eax
	movl	-60(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1300
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-36(%ebp), %eax
	sall	$6, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
.LBB104:
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1302
.L1303:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1304
	movl	-44(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L1304:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L1302:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1303
.LBE104:
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L1296
.L1300:
.LBE103:
	addl	$1, -32(%ebp)
.L1298:
	cmpl	$63, -32(%ebp)
	jbe	.L1299
.L1296:
.LBE102:
	addl	$1, -36(%ebp)
	movl	$0, -32(%ebp)
.L1294:
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L1295
.L1307:
.LBE101:
	.loc 1 4384 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE58:
	.size	clear_log_links, .-clear_log_links
.globl reg_set_to_hard_reg_set
	.type	reg_set_to_hard_reg_set, @function
reg_set_to_hard_reg_set:
.LFB59:
	.loc 1 4395 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%edi
.LCFI191:
	pushl	%esi
.LCFI192:
	subl	$48, %esp
.LCFI193:
.LBB105:
	.loc 1 4398 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1310
.L1311:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1310:
	cmpl	$0, -32(%ebp)
	je	.L1312
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L1311
.L1312:
	cmpl	$0, -32(%ebp)
	je	.L1317
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1317
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1317
.L1320:
.LBB106:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1321
	jmp	.L1323
.L1324:
.LBB107:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L1325
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$175, -36(%ebp)
	jg	.L1330
	movl	-36(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -52(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-36(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1331
	movl	%esi, %edi
	xorl	%esi, %esi
.L1331:
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-52(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	cmpl	$0, -16(%ebp)
	je	.L1321
.L1325:
.LBE107:
	addl	$1, -24(%ebp)
.L1323:
	cmpl	$31, -24(%ebp)
	jbe	.L1324
.L1321:
	movl	$0, -24(%ebp)
.LBE106:
	addl	$1, -20(%ebp)
.L1319:
	cmpl	$3, -20(%ebp)
	jbe	.L1320
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1317:
	cmpl	$0, -32(%ebp)
	jne	.L1319
.L1330:
.LBE105:
	.loc 1 4405 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE59:
	.size	reg_set_to_hard_reg_set, .-reg_set_to_hard_reg_set
	.local	elim_reg_set
	.comm	elim_reg_set,24,8
	.local	ndead
	.comm	ndead,4,4
	.comm	flow2_completed,4,4
	.comm	regs_live_at_setjmp,4,4
	.comm	max_regno,4,4
	.comm	reg_n_info,4,4
	.comm	regs_may_share,4,4
	.comm	regset_bytes,4,4
	.comm	regset_size,4,4
	.comm	lang_missing_noreturn_ok_p,4,4
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
	.byte	0x4
	.long	.LCFI36-.LCFI32
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
	.long	.LCFI37-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI38
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
	.long	.LCFI48-.LCFI46
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
	.long	.LCFI49-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI54-.LCFI52
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
	.long	.LCFI55-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI59-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI60
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI65-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI69-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI70
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
	.long	.LCFI75-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
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
	.long	.LCFI78-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI79
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
	.long	.LCFI86-.LCFI83
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
	.long	.LCFI87-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI91-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI95-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI99-.LFB38
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
	.byte	0x4
	.long	.LCFI126-.LCFI124
	.byte	0x83
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
	.long	.LCFI127-.LFB45
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
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI138-.LCFI136
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
	.long	.LCFI139-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI140
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
	.long	.LCFI143-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI144
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
	.long	.LCFI147-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI148
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
	.long	.LCFI151-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI152
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
	.long	.LCFI188-.LCFI184
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI189-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI190
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE88:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/tree.h"
	.file 7 "../../../kgccfe/gnu/hashtable.h"
	.file 8 "../../../kgccfe/gnu/location.h"
	.file 9 "../../../kgccfe/gnu/function.h"
	.file 10 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 11 "../../../kgccfe/omp_types.h"
	.file 12 "../../../kgccfe/gnu/basic-block.h"
	.file 13 "../../../kgccfe/gnu/sbitmap.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 19 "../../../include/gnu/obstack.h"
	.file 20 "../../../kgccfe/gnu/regs.h"
	.file 21 "../../../kgccfe/gnu/varray.h"
	.file 22 "../../../kgccfe/gnu/flags.h"
	.file 23 "../../../kgccfe/gnu/output.h"
	.file 24 "../../../kgccfe/gnu/ssa.h"
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
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI139-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI140-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI143-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI144-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI148-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI189-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI190-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x953c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/flow.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa4
	.uleb128 0x3
	.byte	0x4
	.long	0xaa
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xa3d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x7f4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x1647
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac
	.uleb128 0x4
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1657
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x8
	.long	0x2cd
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x6
	.value	0x855
	.long	0x38e0
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x6
	.value	0x856
	.long	0x3bf9
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x6
	.value	0x857
	.long	0x3c41
	.uleb128 0xa
	.string	"vector"
	.byte	0x6
	.value	0x858
	.long	0x3d64
	.uleb128 0xa
	.string	"string"
	.byte	0x6
	.value	0x859
	.long	0x3ca2
	.uleb128 0xa
	.string	"complex"
	.byte	0x6
	.value	0x85a
	.long	0x3d0f
	.uleb128 0xa
	.string	"identifier"
	.byte	0x6
	.value	0x85b
	.long	0x3f98
	.uleb128 0xa
	.string	"decl"
	.byte	0x6
	.value	0x85c
	.long	0x5026
	.uleb128 0xa
	.string	"type"
	.byte	0x6
	.value	0x85d
	.long	0x41fb
	.uleb128 0xa
	.string	"list"
	.byte	0x6
	.value	0x85e
	.long	0x3fcf
	.uleb128 0xa
	.string	"vec"
	.byte	0x6
	.value	0x85f
	.long	0x4014
	.uleb128 0xa
	.string	"exp"
	.byte	0x6
	.value	0x860
	.long	0x4065
	.uleb128 0xa
	.string	"block"
	.byte	0x6
	.value	0x861
	.long	0x40b1
	.uleb128 0xa
	.string	"omp"
	.byte	0x6
	.value	0x863
	.long	0x59c6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d3
	.uleb128 0xb
	.long	0x2d8
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b9
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3d0
	.long	0x99
	.uleb128 0x11
	.long	0x3d0
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2e7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x3b9
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
	.byte	0x10
	.byte	0x3b
	.long	0x455
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x49f
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x480
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x4d0
	.uleb128 0x14
	.long	0x74b
	.long	.LASF3
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x40e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x7d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x7df
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x75b
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x761
	.uleb128 0xb
	.long	0x3fd
	.uleb128 0x3
	.byte	0x4
	.long	0x3fd
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x7bd
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77a
	.uleb128 0x3
	.byte	0x4
	.long	0x4d0
	.uleb128 0x10
	.long	0x7d9
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76c
	.uleb128 0x10
	.long	0x7ef
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x2e0
	.uleb128 0x16
	.long	0xa3d
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x17
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x17
	.string	"BImode"
	.sleb128 1
	.uleb128 0x17
	.string	"QImode"
	.sleb128 2
	.uleb128 0x17
	.string	"HImode"
	.sleb128 3
	.uleb128 0x17
	.string	"SImode"
	.sleb128 4
	.uleb128 0x17
	.string	"DImode"
	.sleb128 5
	.uleb128 0x17
	.string	"TImode"
	.sleb128 6
	.uleb128 0x17
	.string	"OImode"
	.sleb128 7
	.uleb128 0x17
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x17
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x17
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x17
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x17
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x17
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x17
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x17
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x17
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x17
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x17
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x17
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x17
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x17
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x17
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x17
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x17
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x17
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x17
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x17
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x17
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x17
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x17
	.string	"COImode"
	.sleb128 30
	.uleb128 0x17
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x17
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x17
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x17
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x17
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x17
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x17
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x17
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x17
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x17
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x17
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x17
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x17
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x17
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x17
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x17
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x17
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x17
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x17
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x17
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x17
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x17
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x17
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x17
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x16
	.long	0x120c
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x17
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0x17
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x17
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x17
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x17
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x17
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x17
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x17
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x17
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x17
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x17
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x17
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x17
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x17
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x17
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x17
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x17
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x17
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x17
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x17
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x17
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x17
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x17
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x17
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x17
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x17
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x17
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x17
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x17
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x17
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x17
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x17
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x17
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x17
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x17
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x17
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x17
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x17
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x17
	.string	"INSN"
	.sleb128 42
	.uleb128 0x17
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x17
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x17
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x17
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x17
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x17
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x17
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x17
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x17
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x17
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x17
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x17
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x17
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x17
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x17
	.string	"SET"
	.sleb128 57
	.uleb128 0x17
	.string	"USE"
	.sleb128 58
	.uleb128 0x17
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x17
	.string	"CALL"
	.sleb128 60
	.uleb128 0x17
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x17
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x17
	.string	"RESX"
	.sleb128 63
	.uleb128 0x17
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x17
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x17
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x17
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x17
	.string	"CONST"
	.sleb128 68
	.uleb128 0x17
	.string	"PC"
	.sleb128 69
	.uleb128 0x17
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x17
	.string	"REG"
	.sleb128 71
	.uleb128 0x17
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x17
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x17
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x17
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x17
	.string	"MEM"
	.sleb128 76
	.uleb128 0x17
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x17
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x17
	.string	"CC0"
	.sleb128 79
	.uleb128 0x17
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x17
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x17
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x17
	.string	"COND"
	.sleb128 83
	.uleb128 0x17
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x17
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x17
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x17
	.string	"NEG"
	.sleb128 87
	.uleb128 0x17
	.string	"MULT"
	.sleb128 88
	.uleb128 0x17
	.string	"DIV"
	.sleb128 89
	.uleb128 0x17
	.string	"MOD"
	.sleb128 90
	.uleb128 0x17
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x17
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x17
	.string	"AND"
	.sleb128 93
	.uleb128 0x17
	.string	"IOR"
	.sleb128 94
	.uleb128 0x17
	.string	"XOR"
	.sleb128 95
	.uleb128 0x17
	.string	"NOT"
	.sleb128 96
	.uleb128 0x17
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x17
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x17
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x17
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x17
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x17
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x17
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x17
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x17
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x17
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x17
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x17
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x17
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x17
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x17
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x17
	.string	"NE"
	.sleb128 112
	.uleb128 0x17
	.string	"EQ"
	.sleb128 113
	.uleb128 0x17
	.string	"GE"
	.sleb128 114
	.uleb128 0x17
	.string	"GT"
	.sleb128 115
	.uleb128 0x17
	.string	"LE"
	.sleb128 116
	.uleb128 0x17
	.string	"LT"
	.sleb128 117
	.uleb128 0x17
	.string	"GEU"
	.sleb128 118
	.uleb128 0x17
	.string	"GTU"
	.sleb128 119
	.uleb128 0x17
	.string	"LEU"
	.sleb128 120
	.uleb128 0x17
	.string	"LTU"
	.sleb128 121
	.uleb128 0x17
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x17
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x17
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x17
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x17
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x17
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x17
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x17
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x17
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x17
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x17
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x17
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x17
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x17
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x17
	.string	"FIX"
	.sleb128 136
	.uleb128 0x17
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x17
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x17
	.string	"ABS"
	.sleb128 139
	.uleb128 0x17
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x17
	.string	"FFS"
	.sleb128 141
	.uleb128 0x17
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x17
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x17
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x17
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x17
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x17
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x17
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x17
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x17
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x17
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x17
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x17
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x17
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x17
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x17
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x17
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x17
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x17
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x17
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x17
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x17
	.string	"PHI"
	.sleb128 162
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x18
	.long	0x12e6
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x3
	.byte	0x5d
	.long	0x3b9
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
	.byte	0x5e
	.long	0x120c
	.uleb128 0x14
	.long	0x135d
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF4
	.byte	0x3
	.byte	0x6e
	.long	0x1301
	.uleb128 0x8
	.long	0x143a
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x455
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x2e0
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x3b9
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x2cd
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x99
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x199
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x7f4
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x12e6
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x144e
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x14b4
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e1
	.uleb128 0x1a
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x162c
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1632
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x143a
	.uleb128 0x4
	.long	0x14b4
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x5
	.byte	0x3d
	.long	0x5afb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5afb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1454
	.uleb128 0x4
	.long	0x162c
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x6213
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x6213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0xc1
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF7
	.byte	0xc
	.byte	0xc5
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x162c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x162c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x648c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x6153
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.long	.LASF8
	.byte	0xc
	.byte	0xe5
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14ba
	.uleb128 0x3
	.byte	0x4
	.long	0x135d
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1368
	.uleb128 0x10
	.long	0x1657
	.long	0x1638
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1667
	.long	0x99
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99
	.uleb128 0x4
	.long	0x169f
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x166d
	.uleb128 0x16
	.long	0x1fd3
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x27
	.uleb128 0x17
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x17
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x17
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x17
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x17
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x17
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x17
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x17
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x17
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x17
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x17
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x17
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x17
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x17
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x17
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x17
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x17
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x17
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x17
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x17
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x17
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x17
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x17
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x17
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x17
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x17
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x17
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x17
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x17
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x17
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x17
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x17
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x17
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x17
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x17
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x17
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x17
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x17
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x17
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x17
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x17
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x17
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x17
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x17
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x17
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x17
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x17
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x17
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x17
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x17
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x17
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x17
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x17
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x17
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x17
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x17
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x17
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x17
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x17
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x17
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x17
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x17
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x17
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x17
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x17
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x17
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x17
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x17
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x17
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x17
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x17
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x17
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x17
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x17
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x17
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x17
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x17
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x17
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x17
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x17
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x17
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x17
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x17
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x17
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x17
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x17
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x17
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x17
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x17
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x17
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x17
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x17
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x17
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x17
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x17
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x17
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x17
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x17
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x17
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x17
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x17
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x17
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x17
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x17
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x17
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x17
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x17
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x17
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x17
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x17
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x17
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x17
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x17
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x17
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x17
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x17
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x17
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x17
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x17
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x17
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x17
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x17
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x17
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x17
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x17
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x17
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x17
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x17
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x17
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x17
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x17
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x17
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x17
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x17
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x17
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x17
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x17
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x17
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x17
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x17
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x17
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x17
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x17
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x17
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x17
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x17
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x17
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x17
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x17
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x31
	.long	0x3b9
	.uleb128 0x4
	.long	0x2023
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x6
	.byte	0x32
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"offset"
	.byte	0x6
	.byte	0x32
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x36
	.long	0x202d
	.uleb128 0x1b
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x2082
	.long	.LASF9
	.byte	0x4
	.byte	0x6
	.byte	0x5a
	.uleb128 0x17
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x16
	.long	0x38e0
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x69
	.uleb128 0x17
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x17
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x17
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x17
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x17
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x17
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x17
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x17
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x17
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x17
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x17
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x17
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x17
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x17
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x17
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x17
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x17
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x17
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x17
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x17
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x17
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x17
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x17
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x17
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x17
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x17
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x17
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x17
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x17
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x17
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x17
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x17
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x17
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x17
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x17
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x17
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x17
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x17
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x17
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x17
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x17
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x17
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x17
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3bbd
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x6
	.byte	0x8f
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x90
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x6
	.byte	0x92
	.long	0x16b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x94
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x6
	.byte	0x95
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x96
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x97
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x98
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x99
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x9a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_0"
	.byte	0x6
	.byte	0x9b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x6
	.byte	0x9d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0x9e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x6
	.byte	0xa6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x6
	.byte	0xa7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x6
	.byte	0xa8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x6
	.byte	0xa9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x6
	.byte	0xaa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x6
	.byte	0xab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x6
	.byte	0xac
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_1"
	.byte	0x6
	.byte	0xad
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x6
	.byte	0xaf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x6
	.byte	0xb0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x6
	.byte	0xb1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x6
	.byte	0xb2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x6
	.byte	0xb3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3bf9
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x6
	.value	0x2f7
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x6
	.value	0x2f8
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3c41
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x2ef
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x2f0
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x2f1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x6
	.value	0x2f9
	.long	0x3bbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3c8f
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x30b
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x30c
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x30d
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x30e
	.long	0x3c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3c8f
	.uleb128 0xd
	.long	0x3d09
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x320
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x6
	.value	0x322
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x6
	.value	0x323
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x6
	.value	0x325
	.long	0x3d09
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2023
	.uleb128 0xd
	.long	0x3d64
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x32e
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x32f
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x330
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x6
	.value	0x331
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x6
	.value	0x332
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3dac
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x340
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x341
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x342
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x6
	.value	0x343
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3df5
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x13
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0x13
	.byte	0xa3
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x13
	.byte	0xa4
	.long	0x3df5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0x13
	.byte	0xa5
	.long	0x74b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3dac
	.uleb128 0xd
	.long	0x3f28
	.string	"obstack"
	.byte	0x2c
	.byte	0xe
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0x13
	.byte	0xaa
	.long	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0x13
	.byte	0xab
	.long	0x3df5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0x13
	.byte	0xac
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next_free"
	.byte	0x13
	.byte	0xad
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0x13
	.byte	0xae
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0x13
	.byte	0xaf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0x13
	.byte	0xb0
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0x13
	.byte	0xb5
	.long	0x3f3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0x13
	.byte	0xb6
	.long	0x3f54
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0x13
	.byte	0xb7
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"use_extra_arg"
	.byte	0x13
	.byte	0xbd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"maybe_empty_object"
	.byte	0x13
	.byte	0xbe
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"alloc_failed"
	.byte	0x13
	.byte	0xc2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1f
	.long	0x3f3d
	.byte	0x1
	.long	0x3df5
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x20
	.long	0x49f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f28
	.uleb128 0x21
	.long	0x3f54
	.byte	0x1
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x20
	.long	0x3df5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f43
	.uleb128 0x14
	.long	0x3f98
	.long	.LASF18
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x75b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3fcf
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x35f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x360
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.value	0x361
	.long	0x3f5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4014
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x369
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x36a
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x6
	.value	0x36b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x6
	.value	0x36c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4055
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x377
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x378
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x6
	.value	0x379
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x6
	.value	0x37a
	.long	0x4055
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4065
	.long	0x1e1
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x40b1
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3bd
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x3be
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x6
	.value	0x3bf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x6
	.value	0x3c2
	.long	0x4055
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x41a1
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x3f3
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x3f4
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x3f6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF20
	.byte	0x6
	.value	0x3f7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x6
	.value	0x3f8
	.long	0x3b9
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x6
	.value	0x3fa
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x6
	.value	0x3fb
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x6
	.value	0x3fc
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x6
	.value	0x3fd
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x6
	.value	0x3fe
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x6
	.value	0x3ff
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x41e8
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x6
	.value	0x563
	.long	0x2e0
	.uleb128 0xa
	.string	"pointer"
	.byte	0x6
	.value	0x564
	.long	0x4be
	.uleb128 0xa
	.string	"die"
	.byte	0x6
	.value	0x565
	.long	0x41f5
	.byte	0x0
	.uleb128 0x1b
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x41e8
	.uleb128 0xd
	.long	0x454e
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x53f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x540
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x6
	.value	0x541
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"size"
	.byte	0x6
	.value	0x542
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x543
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x6
	.value	0x544
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x6
	.value	0x545
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x6
	.value	0x547
	.long	0x3b9
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x548
	.long	0x7f4
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x6
	.value	0x54a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x54b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x54c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x54d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x6
	.value	0x54e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x6
	.value	0x54f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF24
	.byte	0x6
	.value	0x550
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x552
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x553
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x554
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x6
	.value	0x555
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x6
	.value	0x556
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x6
	.value	0x557
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x6
	.value	0x558
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x6
	.value	0x559
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"defer_expansion"
	.byte	0x6
	.value	0x55c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"align"
	.byte	0x6
	.value	0x55f
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x6
	.value	0x560
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x6
	.value	0x561
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x6
	.value	0x566
	.long	0x41a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"name"
	.byte	0x6
	.value	0x568
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x6
	.value	0x569
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x6
	.value	0x56a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x6
	.value	0x56b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x6
	.value	0x56c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x6
	.value	0x56d
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"context"
	.byte	0x6
	.value	0x56e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x6
	.value	0x56f
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x6
	.value	0x571
	.long	0x455a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x6
	.value	0x573
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x6
	.value	0x574
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x6
	.value	0x575
	.long	0x1fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x454e
	.uleb128 0xd
	.long	0x45a5
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x7f0
	.uleb128 0x22
	.string	"align"
	.byte	0x6
	.value	0x7f1
	.long	0x3b9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0x6
	.value	0x7f2
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x45da
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x7ea
	.long	0x2082
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x7ed
	.long	0x455
	.uleb128 0xa
	.string	"a"
	.byte	0x6
	.value	0x7f3
	.long	0x4560
	.byte	0x0
	.uleb128 0x24
	.long	0x4619
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x809
	.long	0x4fd2
	.uleb128 0xa
	.string	"r"
	.byte	0x6
	.value	0x80a
	.long	0x99
	.uleb128 0xa
	.string	"t"
	.byte	0x6
	.value	0x80b
	.long	0x1e1
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x80c
	.long	0x2e0
	.byte	0x0
	.uleb128 0x25
	.long	0x4fd2
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x686f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x6883
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x6889
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x688f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x68a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x9
	.byte	0xbe
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x9
	.byte	0xc1
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x4fd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x9
	.byte	0xce
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x9
	.byte	0xec
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x68c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x455
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x1667
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x68d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x6572
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x68ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x9
	.value	0x184
	.long	0x6907
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x22
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF28
	.byte	0x9
	.value	0x1fa
	.long	0x67f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4619
	.uleb128 0x26
	.long	0x5010
	.byte	0x4
	.byte	0x6
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x6
	.value	0x81f
	.long	0x3d09
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x6
	.value	0x820
	.long	0x1fd3
	.uleb128 0xa
	.string	"field_id"
	.byte	0x6
	.value	0x821
	.long	0x3b9
	.byte	0x0
	.uleb128 0x26
	.long	0x5026
	.byte	0x4
	.byte	0x6
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x6
	.value	0x824
	.long	0x3d09
	.byte	0x0
	.uleb128 0xd
	.long	0x5763
	.string	"tree_decl"
	.byte	0x94
	.byte	0x6
	.value	0x7a0
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x7a1
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x6
	.value	0x7a2
	.long	0x169f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x6
	.value	0x7a3
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"size"
	.byte	0x6
	.value	0x7a4
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x7a5
	.long	0x7f4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x6
	.value	0x7a7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7a8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7a9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x6
	.value	0x7aa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7ac
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7ad
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF20
	.byte	0x6
	.value	0x7ae
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7b2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7b3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7b4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7b5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7b6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7ba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x6
	.value	0x7bb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x6
	.value	0x7bc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x6
	.value	0x7bd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7be
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7bf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7c0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x6
	.value	0x7c1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7c3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7c4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7c5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7c6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7c7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x6
	.value	0x7c8
	.long	0x2032
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x6
	.value	0x7c9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF24
	.byte	0x6
	.value	0x7cb
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x6
	.value	0x7cc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x6
	.value	0x7cd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x6
	.value	0x7ce
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"noinline_attrib"
	.byte	0x6
	.value	0x7d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x7d5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x7d6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x7d7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x6
	.value	0x7d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x6
	.value	0x7d9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF15
	.byte	0x6
	.value	0x7da
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF16
	.byte	0x6
	.value	0x7db
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"lang_flag_7"
	.byte	0x6
	.value	0x7dc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x7df
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"promote_static"
	.byte	0x6
	.value	0x7e3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"always_inline_attrib"
	.byte	0x6
	.value	0x7e4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x6
	.value	0x7f4
	.long	0x45a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x7f6
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"name"
	.byte	0x6
	.value	0x7f7
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x6
	.value	0x7f8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x6
	.value	0x7f9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x6
	.value	0x7fa
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x6
	.value	0x7fb
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x6
	.value	0x7fc
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x6
	.value	0x7fd
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x6
	.value	0x7fe
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x6
	.value	0x7ff
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x800
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x801
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x6
	.value	0x80d
	.long	0x45da
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x6
	.value	0x810
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x6
	.value	0x814
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x6
	.value	0x816
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x817
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x6
	.value	0x819
	.long	0x576f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x6
	.value	0x81b
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x6
	.value	0x81c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x6
	.value	0x822
	.long	0x4fd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x6
	.value	0x825
	.long	0x5010
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x826
	.long	0x1fe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x6
	.value	0x82a
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5763
	.uleb128 0x16
	.long	0x59c6
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1e
	.uleb128 0x17
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x17
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x17
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x17
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x17
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x17
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x17
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x17
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x17
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x17
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x17
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x17
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x17
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x17
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x17
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x17
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x17
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x17
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x17
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x17
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x17
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x5a15
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x832
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x833
	.long	0x38e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x6
	.value	0x834
	.long	0x5775
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x835
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xb
	.long	0x2cd
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1e1
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x12
	.byte	0x29
	.long	0x466
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x12
	.byte	0x34
	.long	0x5a56
	.uleb128 0x10
	.long	0x5a66
	.long	0x5a29
	.uleb128 0x11
	.long	0x3d0
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x424
	.uleb128 0x4
	.long	0x5acf
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x5
	.byte	0x35
	.long	0x5acf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.long	0x5acf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x5ad5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a79
	.uleb128 0x10
	.long	0x5ae5
	.long	0x5a66
	.uleb128 0x11
	.long	0x3d0
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5a79
	.uleb128 0x3
	.byte	0x4
	.long	0x5ae5
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x5
	.byte	0x42
	.long	0x1454
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x14b4
	.uleb128 0x4
	.long	0x5b7c
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x5b7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x5b8c
	.long	0x466
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x5b9b
	.uleb128 0x3
	.byte	0x4
	.long	0x5b22
	.uleb128 0x3
	.byte	0x4
	.long	0x466
	.uleb128 0x4
	.long	0x5bdd
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x15
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x15
	.byte	0x32
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x15
	.byte	0x36
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x5d78
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x15
	.byte	0x3c
	.uleb128 0x17
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x17
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x17
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x17
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x17
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x17
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x17
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x17
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x17
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x17
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x17
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x17
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x17
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x17
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x17
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x17
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x17
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x17
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x17
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x17
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x17
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x8
	.long	0x5e74
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x15
	.byte	0x55
	.uleb128 0x1a
	.string	"c"
	.byte	0x15
	.byte	0x56
	.long	0x7c9
	.uleb128 0x1a
	.string	"uc"
	.byte	0x15
	.byte	0x58
	.long	0x5e74
	.uleb128 0x1a
	.string	"s"
	.byte	0x15
	.byte	0x5a
	.long	0x5e84
	.uleb128 0x1a
	.string	"us"
	.byte	0x15
	.byte	0x5c
	.long	0x5e94
	.uleb128 0x1a
	.string	"i"
	.byte	0x15
	.byte	0x5e
	.long	0x5ea4
	.uleb128 0x1a
	.string	"u"
	.byte	0x15
	.byte	0x60
	.long	0x5eb4
	.uleb128 0x1a
	.string	"l"
	.byte	0x15
	.byte	0x62
	.long	0x5ec4
	.uleb128 0x1a
	.string	"ul"
	.byte	0x15
	.byte	0x64
	.long	0x5ed4
	.uleb128 0x1a
	.string	"hint"
	.byte	0x15
	.byte	0x66
	.long	0x5ee4
	.uleb128 0x1a
	.string	"uhint"
	.byte	0x15
	.byte	0x68
	.long	0x5b7c
	.uleb128 0x1a
	.string	"generic"
	.byte	0x15
	.byte	0x6a
	.long	0x5ef4
	.uleb128 0x1a
	.string	"cptr"
	.byte	0x15
	.byte	0x6c
	.long	0x5f04
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x15
	.byte	0x6e
	.long	0x5f14
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x15
	.byte	0x70
	.long	0x5f24
	.uleb128 0x1a
	.string	"tree"
	.byte	0x15
	.byte	0x72
	.long	0x5f34
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0x15
	.byte	0x74
	.long	0x5f44
	.uleb128 0x1a
	.string	"reg"
	.byte	0x15
	.byte	0x76
	.long	0x5f54
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0x15
	.byte	0x78
	.long	0x6050
	.uleb128 0x1a
	.string	"bb"
	.byte	0x15
	.byte	0x7a
	.long	0x6060
	.uleb128 0x1a
	.string	"te"
	.byte	0x15
	.byte	0x7c
	.long	0x6070
	.byte	0x0
	.uleb128 0x10
	.long	0x5e84
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5e94
	.long	0x448
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ea4
	.long	0x40e
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5eb4
	.long	0x2e0
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ec4
	.long	0x3b9
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ed4
	.long	0x49f
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ee4
	.long	0x424
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5ef4
	.long	0x455
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f04
	.long	0x4bc
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f14
	.long	0x4be
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f24
	.long	0xa4
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f34
	.long	0x1a6
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f44
	.long	0x1ed
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f54
	.long	0x14b4
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x5f64
	.long	0x604a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x604a
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x15
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x14
	.byte	0x31
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x14
	.byte	0x32
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x14
	.byte	0x33
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x14
	.byte	0x36
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x14
	.byte	0x39
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x14
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x14
	.byte	0x3b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x14
	.byte	0x3c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x14
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x14
	.byte	0x3e
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x14
	.byte	0x3f
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f64
	.uleb128 0x10
	.long	0x6060
	.long	0x5ba7
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6070
	.long	0x162c
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6080
	.long	0x608b
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6080
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x15
	.byte	0x7e
	.long	0x5d78
	.uleb128 0x4
	.long	0x6119
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x15
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x15
	.byte	0x82
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x15
	.byte	0x83
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x15
	.byte	0x85
	.long	0x5bdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x15
	.byte	0x86
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x15
	.byte	0x87
	.long	0x6091
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x15
	.byte	0x8a
	.long	0x612c
	.uleb128 0x3
	.byte	0x4
	.long	0x60a4
	.uleb128 0x2
	.string	"regset_head"
	.byte	0xc
	.byte	0x20
	.long	0x5b01
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5b14
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x455
	.uleb128 0x4
	.long	0x620d
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x620d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x620d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x162c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x162c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0xc
	.byte	0x80
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF8
	.byte	0xc
	.byte	0x85
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xc
	.byte	0x86
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x6153
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6164
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x620d
	.uleb128 0x4
	.long	0x648c
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x649d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF5
	.byte	0xc
	.value	0x18b
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0xc
	.value	0x18f
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x5b8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x649d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x649d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x5b8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x64a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x648c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x648c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF29
	.byte	0xc
	.value	0x1b7
	.long	0x648c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x621f
	.uleb128 0x19
	.long	.LASF30
	.byte	0xc
	.byte	0xe6
	.long	0x162c
	.uleb128 0x3
	.byte	0x4
	.long	0x6213
	.uleb128 0x3
	.byte	0x4
	.long	0x648c
	.uleb128 0x27
	.long	0x650d
	.string	"update_life_extent"
	.byte	0x4
	.byte	0xc
	.value	0x26e
	.uleb128 0x17
	.string	"UPDATE_LIFE_LOCAL"
	.sleb128 0
	.uleb128 0x17
	.string	"UPDATE_LIFE_GLOBAL"
	.sleb128 1
	.uleb128 0x17
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x6572
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x7f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x9
	.byte	0x1b
	.long	0x6572
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x650d
	.uleb128 0x14
	.long	0x65be
	.long	.LASF31
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x9
	.byte	0x26
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x9
	.byte	0x28
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x9
	.byte	0x29
	.long	0x65be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6578
	.uleb128 0x3
	.byte	0x4
	.long	0x3dfb
	.uleb128 0x4
	.long	0x6719
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x9
	.byte	0x4a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF31
	.byte	0x9
	.byte	0x50
	.long	0x65be
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x5a23
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x1667
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x67f9
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6863
	.long	.LASF28
	.byte	0x4
	.byte	0x9
	.value	0x1f1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x17
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6863
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6875
	.uleb128 0x3
	.byte	0x4
	.long	0x6719
	.uleb128 0x3
	.byte	0x4
	.long	0x65ca
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6895
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68ab
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68c8
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68da
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x68f3
	.uleb128 0xc
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0xd
	.long	0x69f4
	.string	"propagate_block_info"
	.byte	0x28
	.byte	0xc
	.value	0x2a5
	.uleb128 0x7
	.string	"bb"
	.byte	0x1
	.byte	0xf8
	.long	0x6492
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"reg_live"
	.byte	0x1
	.byte	0xfb
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"new_set"
	.byte	0x1
	.byte	0xfe
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"reg_next_use"
	.byte	0x1
	.value	0x102
	.long	0x1667
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"mem_set_list"
	.byte	0x1
	.value	0x106
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x10a
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x10e
	.long	0x6145
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"mem_set_list_len"
	.byte	0x1
	.value	0x11a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"cc0_live"
	.byte	0x1
	.value	0x11d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x120
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x29
	.long	0x6a60
	.byte	0x1
	.string	"check_function_return_warnings"
	.byte	0x1
	.value	0x166
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"max_uid"
	.byte	0x1
	.value	0x179
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x181
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6acd
	.byte	0x1
	.string	"first_insn_after_basic_block_note"
	.byte	0x1
	.value	0x193
	.byte	0x1
	.long	0x99
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.string	"block"
	.byte	0x1
	.value	0x192
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x194
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8fe3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13432
	.byte	0x0
	.uleb128 0x29
	.long	0x6b8f
	.byte	0x1
	.string	"life_analysis"
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x1a9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x1aa
	.long	0x6b8f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x1ab
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1ae
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x6b52
	.byte	0x8
	.byte	0x1
	.value	0x1af
	.uleb128 0xe
	.string	"from"
	.byte	0x1
	.value	0x1af
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x1af
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x32
	.long	0x6b74
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"scan_tp_"
	.byte	0x1
	.value	0x1b5
	.long	0x6b95
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.string	"eliminables"
	.byte	0x1
	.value	0x1af
	.long	0x8fce
	.byte	0x5
	.byte	0x3
	.long	eliminables.13454
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c4
	.uleb128 0x3
	.byte	0x4
	.long	0x5a29
	.uleb128 0x33
	.long	0x6c03
	.string	"verify_wide_reg_1"
	.byte	0x1
	.value	0x206
	.byte	0x1
	.long	0x2e0
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.string	"px"
	.byte	0x1
	.value	0x204
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pregno"
	.byte	0x1
	.value	0x205
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x207
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x208
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x6c90
	.string	"verify_wide_reg"
	.byte	0x1
	.value	0x21a
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x218
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x219
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"head"
	.byte	0x1
	.value	0x21b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x21b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x6c7f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x221
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8fb9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13543
	.byte	0x0
	.uleb128 0x34
	.long	0x6d8f
	.string	"verify_local_live_at_start"
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2e
	.string	"new_live_at_start"
	.byte	0x1
	.value	0x239
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x23a
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	0x6d7e
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x250
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x255
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x255
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x255
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x255
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x255
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x255
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8fa4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13565
	.byte	0x0
	.uleb128 0x2d
	.long	0x6ff8
	.byte	0x1
	.string	"update_life_info"
	.byte	0x1
	.value	0x27f
	.byte	0x1
	.long	0x2e0
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.long	.LASF42
	.byte	0x1
	.value	0x27c
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"extent"
	.byte	0x1
	.value	0x27d
	.long	0x64a9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x27e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x280
	.long	0x6145
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x281
	.long	0x6132
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x282
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"stabilized_prop_flags"
	.byte	0x1
	.value	0x283
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x284
	.long	0x6492
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x6e67
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x297
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x6eed
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2ca
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x2ca
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x2ca
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x2ca
	.long	0x5ba1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2ca
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"_mask"
	.byte	0x1
	.value	0x2ca
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6f6b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x2ea
	.long	0x5afb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x2ea
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x2ea
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2ea
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2ea
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x2ea
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6fe7
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x2f6
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x2f6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x2f6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2f6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2f6
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x2f6
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8f8f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13642
	.byte	0x0
	.uleb128 0x2d
	.long	0x70a0
	.byte	0x1
	.string	"update_life_info_in_dirty_blocks"
	.byte	0x1
	.value	0x30d
	.byte	0x1
	.long	0x2e0
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2e
	.string	"extent"
	.byte	0x1
	.value	0x30b
	.long	0x64a9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x30c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"update_life_blocks"
	.byte	0x1
	.value	0x30e
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x30f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x310
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"retval"
	.byte	0x1
	.value	0x311
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	0x70e8
	.byte	0x1
	.string	"free_basic_block_vars"
	.byte	0x1
	.value	0x336
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"keep_head_end_p"
	.byte	0x1
	.value	0x335
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x71ae
	.byte	0x1
	.string	"delete_noop_moves"
	.byte	0x1
	.value	0x34d
	.byte	0x1
	.long	0x2e0
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x34c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x34e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x34e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x34f
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"nnoops"
	.byte	0x1
	.value	0x350
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x359
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"new_libcall_insn"
	.byte	0x1
	.value	0x361
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x362
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x71fa
	.byte	0x1
	.string	"delete_dead_jumptables"
	.byte	0x1
	.value	0x37a
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x37b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x37b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7260
	.string	"notice_stack_pointer_modification_1"
	.byte	0x1
	.value	0x396
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x393
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x394
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x395
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x34
	.long	0x72b4
	.string	"notice_stack_pointer_modification"
	.byte	0x1
	.value	0x3a4
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x3a3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x3a5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x733b
	.string	"mark_reg"
	.byte	0x1
	.value	0x3c1
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x3bf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"xset"
	.byte	0x1
	.value	0x3c0
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x3c2
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x3c3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x732a
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x3cb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8f7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14028
	.byte	0x0
	.uleb128 0x34
	.long	0x73b9
	.string	"mark_regs_live_at_end"
	.byte	0x1
	.value	0x3d7
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x3d6
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x3d8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x739f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x412
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x41c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7445
	.string	"set_phi_alternative_reg"
	.byte	0x1
	.value	0x439
	.byte	0x1
	.long	0x2e0
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x435
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dest_regno"
	.byte	0x1
	.value	0x436
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"src_regno"
	.byte	0x1
	.value	0x437
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x438
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"live"
	.byte	0x1
	.value	0x43a
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x77b9
	.string	"calculate_global_regs_live"
	.byte	0x1
	.value	0x449
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"blocks_in"
	.byte	0x1
	.value	0x447
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"blocks_out"
	.byte	0x1
	.value	0x447
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x448
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"queue"
	.byte	0x1
	.value	0x44a
	.long	0x77b9
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"qhead"
	.byte	0x1
	.value	0x44a
	.long	0x77b9
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"qtail"
	.byte	0x1
	.value	0x44a
	.long	0x77b9
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"qend"
	.byte	0x1
	.value	0x44a
	.long	0x77b9
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x44a
	.long	0x6492
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x44b
	.long	0x6145
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"new_live_at_end"
	.byte	0x1
	.value	0x44b
	.long	0x6145
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"invalidated_by_call"
	.byte	0x1
	.value	0x44b
	.long	0x6145
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x44c
	.long	0x6132
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"invalidated_by_call_head"
	.byte	0x1
	.value	0x44c
	.long	0x6132
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.string	"new_live_at_end_head"
	.byte	0x1
	.value	0x44d
	.long	0x6132
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x44e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	0x7722
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"rescan"
	.byte	0x1
	.value	0x499
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x499
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x49a
	.long	0x6492
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x49b
	.long	0x6213
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x761f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"sb"
	.byte	0x1
	.value	0x4a8
	.long	0x6492
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x7696
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x4f6
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	0x766a
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4f6
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x4f6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x4f6
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x4f6
	.long	0x4bc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7709
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x4f7
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	0x76df
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4f7
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x4f7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x4f7
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x4f7
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2b
	.string	"pb"
	.byte	0x1
	.value	0x54c
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x55d
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x55d
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x55d
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x55d
	.long	0x5ba1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x55d
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2b
	.string	"_mask"
	.byte	0x1
	.value	0x55d
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x55d
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6492
	.uleb128 0x31
	.long	0x77f4
	.byte	0x8
	.byte	0x1
	.value	0x576
	.uleb128 0xe
	.string	"regno_to_find"
	.byte	0x1
	.value	0x577
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"retval"
	.byte	0x1
	.value	0x578
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.string	"find_regno_partial_param"
	.byte	0x1
	.value	0x579
	.long	0x77bf
	.uleb128 0x33
	.long	0x7881
	.string	"find_regno_partial"
	.byte	0x1
	.value	0x583
	.byte	0x1
	.long	0x2e0
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.value	0x581
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x582
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"param"
	.byte	0x1
	.value	0x584
	.long	0x7881
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x585
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77f4
	.uleb128 0x2d
	.long	0x79df
	.byte	0x1
	.string	"initialize_uninitialized_subregs"
	.byte	0x1
	.value	0x5b0
	.byte	0x1
	.long	0x2e0
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x5b1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x5b2
	.long	0x6213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x5b3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"did_something"
	.byte	0x1
	.value	0x5b3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"param"
	.byte	0x1
	.value	0x5b4
	.long	0x77f4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x5b8
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"map"
	.byte	0x1
	.value	0x5b9
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x5ba
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x5ba
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x5ba
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x5ba
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x5ba
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x5ba
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2b
	.string	"uid"
	.byte	0x1
	.value	0x5ba
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5ba
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x7b70
	.byte	0x1
	.string	"allocate_bb_life_data"
	.byte	0x1
	.value	0x5e7
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x5e8
	.long	0x6492
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	0x7a8f
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x5ec
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	0x7a65
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5ec
	.long	0x65c4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x5ec
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x5ec
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x5ec
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7b01
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x5ed
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	0x7ad7
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5ed
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x5ed
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x5ed
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x5ed
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x5f0
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	0x7b45
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5f0
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x5f0
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x5f0
	.long	0x65c4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x5f0
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x7bab
	.byte	0x1
	.string	"allocate_reg_life_data"
	.byte	0x1
	.value	0x5f5
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5f6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7c72
	.string	"propagate_block_delete_insn"
	.byte	0x1
	.value	0x610
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x60f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"inote"
	.byte	0x1
	.value	0x611
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2b
	.string	"label"
	.byte	0x1
	.value	0x61f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x620
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x62b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"diff_vec_p"
	.byte	0x1
	.value	0x62c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x62d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x62e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7cea
	.string	"propagate_block_delete_libcall"
	.byte	0x1
	.value	0x642
	.byte	0x1
	.long	0x99
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x641
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x641
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x643
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"before"
	.byte	0x1
	.value	0x644
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x7fb5
	.byte	0x1
	.string	"propagate_one_insn"
	.byte	0x1
	.value	0x651
	.byte	0x1
	.long	0x99
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x64f
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x650
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x652
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x653
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"insn_is_dead"
	.byte	0x1
	.value	0x654
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"libcall_is_dead"
	.byte	0x1
	.value	0x655
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x656
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x657
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x32
	.long	0x7dcf
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"libcall_note"
	.byte	0x1
	.value	0x692
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x32
	.long	0x7ded
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x69e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x32
	.long	0x7f28
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x6dd
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x7e8c
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x6e3
	.long	0x5afb
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x6e3
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x6e3
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x6e3
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x6e3
	.long	0x5a66
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x6e3
	.long	0x5a66
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7ef2
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2b
	.string	"live_at_end"
	.byte	0x1
	.value	0x6ec
	.long	0x6145
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"sibcall_p"
	.byte	0x1
	.value	0x6ed
	.long	0x5a1a
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x6ee
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x6ee
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x6ef
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x731
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x732
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x732
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7fa4
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x74e
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x74e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x74e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x74e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x74e
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x74e
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8f65
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14851
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6916
	.uleb128 0x2d
	.long	0x80a0
	.byte	0x1
	.string	"init_propagate_block_info"
	.byte	0x1
	.value	0x75d
	.byte	0x1
	.long	0x7fb5
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x75a
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"live"
	.byte	0x1
	.value	0x75b
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x75b
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x75b
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x75c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x75e
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x7dd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x7dd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0x7e3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"canon_mem"
	.byte	0x1
	.value	0x7e4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x80e0
	.byte	0x1
	.string	"free_propagate_block_info"
	.byte	0x1
	.value	0x7fd
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x7fc
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8221
	.byte	0x1
	.string	"propagate_block"
	.byte	0x1
	.value	0x826
	.byte	0x1
	.long	0x2e0
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x821
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"live"
	.byte	0x1
	.value	0x822
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x823
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x824
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x825
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x827
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x828
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x828
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x829
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x82f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x833
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x833
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x833
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x833
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x833
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x833
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8342
	.string	"insn_dead_p"
	.byte	0x1
	.value	0x85e
	.byte	0x1
	.long	0x2e0
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x85a
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x85b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"call_ok"
	.byte	0x1
	.value	0x85c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"notes"
	.byte	0x1
	.value	0x85d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x85f
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	0x832a
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x87b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	0x82f9
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x88f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"canon_r"
	.byte	0x1
	.value	0x88f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0x89f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x8bc
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x8c6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x8f7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x83f7
	.string	"libcall_dead_p"
	.byte	0x1
	.value	0x922
	.byte	0x1
	.long	0x2e0
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x91f
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x920
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x921
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x923
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x927
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2b
	.string	"call"
	.byte	0x1
	.value	0x92b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"call_pat"
	.byte	0x1
	.value	0x92c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x92d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8435
	.byte	0x1
	.string	"regno_uninitialized"
	.byte	0x1
	.value	0x959
	.byte	0x1
	.long	0x2e0
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x958
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8479
	.byte	0x1
	.string	"regno_clobbered_at_setjmp"
	.byte	0x1
	.value	0x96b
	.byte	0x1
	.long	0x2e0
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x96a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x84e5
	.string	"add_to_mem_set_list"
	.byte	0x1
	.value	0x97a
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x978
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"mem"
	.byte	0x1
	.value	0x979
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x97b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x984
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8556
	.string	"invalidate_mems_from_autoinc"
	.byte	0x1
	.value	0x9ab
	.byte	0x1
	.long	0x2e0
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.string	"px"
	.byte	0x1
	.value	0x9a9
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x9aa
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x9ac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x9ad
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x85d1
	.string	"invalidate_mems_from_set"
	.byte	0x1
	.value	0x9be
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x9bc
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"exp"
	.byte	0x1
	.value	0x9bd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x9bf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x9c0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x9c1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x86a0
	.string	"mark_set_regs"
	.byte	0x1
	.value	0x9e1
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x9df
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x9e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x9e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x9e2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x9e3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x9e4
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"retry"
	.byte	0x1
	.value	0x9fa
	.long	.L875
	.uleb128 0x32
	.long	0x868f
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x9fe
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0xa02
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8f50
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15758
	.byte	0x0
	.uleb128 0x34
	.long	0x87ff
	.string	"mark_set_1"
	.byte	0x1
	.value	0xa2c
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xa28
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0xa29
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xa2a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF49
	.byte	0x1
	.value	0xa2a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xa2a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0xa2b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0xa2d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0xa2d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"not_dead"
	.byte	0x1
	.value	0xa2e
	.long	0x424
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xa2f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	0x8793
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2b
	.string	"outer_mode"
	.byte	0x1
	.value	0xa59
	.long	0x7f4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"inner_mode"
	.byte	0x1
	.value	0xa5a
	.long	0x7f4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0xaa7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF53
	.byte	0x1
	.value	0xaa7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	0x87d7
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0xaab
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0xad2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0xad3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x88f6
	.string	"mark_used_reg"
	.byte	0x1
	.value	0xdf5
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xdf1
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xdf2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF49
	.byte	0x1
	.value	0xdf3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xdf4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0xdf6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0xdf6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xdf6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0xdf7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF53
	.byte	0x1
	.value	0xdf7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"some_not_set"
	.byte	0x1
	.value	0xdf7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x88dc
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0xe01
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0xe2c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8a6e
	.string	"mark_used_regs"
	.byte	0x1
	.value	0xeb3
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xeb1
	.long	0x7fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xeb2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF49
	.byte	0x1
	.value	0xeb2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0xeb2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xeb4
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0xeb5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0xeb6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"retry"
	.byte	0x1
	.value	0xf13
	.long	.L1092
	.uleb128 0x32
	.long	0x89cb
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0xee3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0xee4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0xee5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x32
	.long	0x8a01
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2b
	.string	"testreg"
	.byte	0x1
	.value	0xf1d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"mark_dest"
	.byte	0x1
	.value	0xf1e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x8a1c
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xf8a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x32
	.long	0x8a5d
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xfab
	.long	0x5a15
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xfac
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xfbc
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF34
	.long	0x8f3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16426
	.byte	0x0
	.uleb128 0x2d
	.long	0x8b2e
	.byte	0x1
	.string	"find_use_as_address"
	.byte	0x1
	.value	0x104b
	.byte	0x1
	.long	0x99
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1048
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1049
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"plusconst"
	.byte	0x1
	.value	0x104a
	.long	0x455
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x104c
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x104d
	.long	0x5a15
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x104e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x104f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1050
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1072
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x8bf3
	.byte	0x1
	.string	"dump_regset"
	.byte	0x1
	.value	0x1088
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.value	0x1086
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"outf"
	.byte	0x1
	.value	0x1087
	.long	0x6b8f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1089
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x1090
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x1090
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x1090
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x1090
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x1090
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x1090
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x8c24
	.byte	0x1
	.string	"debug_regset"
	.byte	0x1
	.value	0x10a0
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.value	0x109f
	.long	0x6145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x29
	.long	0x8c71
	.byte	0x1
	.string	"recompute_reg_usage"
	.byte	0x1
	.value	0x10bc
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x10ba
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"loop_step"
	.byte	0x1
	.value	0x10bb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x8d6d
	.byte	0x1
	.string	"count_or_remove_death_notes"
	.byte	0x1
	.value	0x10c9
	.byte	0x1
	.long	0x2e0
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x30
	.long	.LASF42
	.byte	0x1
	.value	0x10c7
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"kill"
	.byte	0x1
	.value	0x10c8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"count"
	.byte	0x1
	.value	0x10ca
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x10cb
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x10cf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2b
	.string	"pprev"
	.byte	0x1
	.value	0x10d8
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x10d9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	0x8d51
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x10e2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x10e3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x10f0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8e53
	.string	"clear_log_links"
	.byte	0x1
	.value	0x110c
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x30
	.long	.LASF42
	.byte	0x1
	.value	0x110b
	.long	0x5b8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x110d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x110e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x1117
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x1117
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x1117
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x1117
	.long	0x5ba1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x1117
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x2b
	.string	"_mask"
	.byte	0x1
	.value	0x1117
	.long	0x466
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1117
	.long	0x6492
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x8f25
	.byte	0x1
	.string	"reg_set_to_hard_reg_set"
	.byte	0x1
	.value	0x112b
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2e
	.string	"to"
	.byte	0x1
	.value	0x1129
	.long	0x8f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"from"
	.byte	0x1
	.value	0x112a
	.long	0x5b14
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x112c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x112e
	.long	0x5afb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x112e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x112e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x112e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x112e
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x112e
	.long	0x5a66
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a42
	.uleb128 0x10
	.long	0x8f3b
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0x8f2b
	.uleb128 0x10
	.long	0x8f50
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x8f40
	.uleb128 0x10
	.long	0x8f65
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0x8f55
	.uleb128 0x10
	.long	0x8f7a
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0x8f6a
	.uleb128 0x10
	.long	0x8f8f
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x8f7f
	.uleb128 0x10
	.long	0x8fa4
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0x8f94
	.uleb128 0x10
	.long	0x8fb9
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x8fa9
	.uleb128 0x10
	.long	0x8fce
	.long	0x6b2a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0x8fbe
	.uleb128 0x10
	.long	0x8fe3
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x21
	.byte	0x0
	.uleb128 0xb
	.long	0x8fd3
	.uleb128 0x36
	.string	"elim_reg_set"
	.byte	0x1
	.byte	0xe0
	.long	0x5a42
	.byte	0x5
	.byte	0x3
	.long	elim_reg_set
	.uleb128 0x2b
	.string	"ndead"
	.byte	0x1
	.value	0x124
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	ndead
	.uleb128 0x37
	.string	"target_flags"
	.byte	0xa
	.byte	0x21
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"mips_abi"
	.byte	0xa
	.value	0x3ca
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"stderr"
	.byte	0xe
	.byte	0x90
	.long	0x7c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x905f
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x9072
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x904f
	.uleb128 0x10
	.long	0x9087
	.long	0x40e
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x909d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9077
	.uleb128 0x10
	.long	0x90b2
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x90c6
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x90a2
	.uleb128 0x10
	.long	0x90db
	.long	0x2cd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x90ef
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x90cb
	.uleb128 0x10
	.long	0x9104
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x9117
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x90f4
	.uleb128 0x10
	.long	0x9132
	.long	0x99
	.uleb128 0x11
	.long	0x3d0
	.byte	0x2
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x911c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x915b
	.long	0x99
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa
	.byte	0x0
	.uleb128 0x38
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x914b
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flow2_completed"
	.byte	0x1
	.byte	0xbe
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flow2_completed
	.uleb128 0x38
	.string	"reload_completed"
	.byte	0x3
	.value	0x763
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"current_function_decl"
	.byte	0x6
	.value	0xbc8
	.long	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x91d9
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xaf
	.byte	0x0
	.uleb128 0x38
	.string	"fixed_regs"
	.byte	0x12
	.value	0x18b
	.long	0x91c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"global_regs"
	.byte	0x12
	.value	0x1b4
	.long	0x91c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"regs_invalidated_by_call"
	.byte	0x12
	.value	0x1bd
	.long	0x5a42
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x9237
	.long	0x2cd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xaf
	.byte	0x0
	.uleb128 0x37
	.string	"reg_names"
	.byte	0x14
	.byte	0xa3
	.long	0x9227
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"n_basic_blocks"
	.byte	0xc
	.byte	0xf2
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"last_basic_block"
	.byte	0xc
	.byte	0xf6
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"basic_block_info"
	.byte	0xc
	.byte	0xfe
	.long	0x6119
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"regs_live_at_setjmp"
	.byte	0x1
	.byte	0xd1
	.long	0x6145
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_live_at_setjmp
	.uleb128 0x38
	.string	"flow_obstack"
	.byte	0xc
	.value	0x11b
	.long	0x3dfb
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x92df
	.long	0x14ba
	.uleb128 0x11
	.long	0x3d0
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x92cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"max_regno"
	.byte	0x1
	.byte	0xc2
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_regno
	.uleb128 0x39
	.string	"reg_n_info"
	.byte	0x1
	.byte	0xc6
	.long	0x6119
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_n_info
	.uleb128 0x37
	.string	"subregs_of_mode"
	.byte	0x14
	.byte	0x45
	.long	0x5b01
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"regs_ever_live"
	.byte	0x14
	.byte	0x9f
	.long	0x91c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"regs_may_share"
	.byte	0x1
	.byte	0xd7
	.long	0x99
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_may_share
	.uleb128 0x37
	.string	"optimize"
	.byte	0x16
	.byte	0x43
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"optimize_size"
	.byte	0x16
	.byte	0x47
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"warn_return_type"
	.byte	0x16
	.byte	0x98
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"warn_missing_noreturn"
	.byte	0x16
	.byte	0x9c
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_branch_probabilities"
	.byte	0x16
	.byte	0xd4
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"flag_omit_frame_pointer"
	.byte	0x16
	.value	0x153
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"frame_pointer_needed"
	.byte	0x16
	.value	0x266
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"flag_non_call_exceptions"
	.byte	0x16
	.value	0x2ae
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"current_function_sp_is_unchanging"
	.byte	0x17
	.value	0x1ad
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"rtl_dump_file"
	.byte	0x17
	.value	0x1b8
	.long	0x6b8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x4fd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"in_ssa_form"
	.byte	0x18
	.byte	0x2d
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"regset_bytes"
	.byte	0x1
	.byte	0xcb
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regset_bytes
	.uleb128 0x39
	.string	"regset_size"
	.byte	0x1
	.byte	0xcc
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regset_size
	.uleb128 0x1f
	.long	0x9510
	.byte	0x1
	.long	0x2e0
	.uleb128 0x20
	.long	0x1e1
	.byte	0x0
	.uleb128 0x39
	.string	"lang_missing_noreturn_ok_p"
	.byte	0x1
	.byte	0xdb
	.long	0x9539
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_missing_noreturn_ok_p
	.uleb128 0x3
	.byte	0x4
	.long	0x9500
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.long	0x30e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9540
	.long	0x69f4
	.string	"check_function_return_warnings"
	.long	0x6a60
	.string	"first_insn_after_basic_block_note"
	.long	0x6acd
	.string	"life_analysis"
	.long	0x6d8f
	.string	"update_life_info"
	.long	0x6ff8
	.string	"update_life_info_in_dirty_blocks"
	.long	0x70a0
	.string	"free_basic_block_vars"
	.long	0x70e8
	.string	"delete_noop_moves"
	.long	0x71ae
	.string	"delete_dead_jumptables"
	.long	0x7887
	.string	"initialize_uninitialized_subregs"
	.long	0x79df
	.string	"allocate_bb_life_data"
	.long	0x7b70
	.string	"allocate_reg_life_data"
	.long	0x7cea
	.string	"propagate_one_insn"
	.long	0x7fbb
	.string	"init_propagate_block_info"
	.long	0x80a0
	.string	"free_propagate_block_info"
	.long	0x80e0
	.string	"propagate_block"
	.long	0x83f7
	.string	"regno_uninitialized"
	.long	0x8435
	.string	"regno_clobbered_at_setjmp"
	.long	0x8a6e
	.string	"find_use_as_address"
	.long	0x8b2e
	.string	"dump_regset"
	.long	0x8bf3
	.string	"debug_regset"
	.long	0x8c24
	.string	"recompute_reg_usage"
	.long	0x8c71
	.string	"count_or_remove_death_notes"
	.long	0x8e53
	.string	"reg_set_to_hard_reg_set"
	.long	0x9170
	.string	"flow2_completed"
	.long	0x9296
	.string	"regs_live_at_setjmp"
	.long	0x92fb
	.string	"max_regno"
	.long	0x9313
	.string	"reg_n_info"
	.long	0x935d
	.string	"regs_may_share"
	.long	0x94cb
	.string	"regset_bytes"
	.long	0x94e6
	.string	"regset_size"
	.long	0x9510
	.string	"lang_missing_noreturn_ok_p"
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
.LASF51:
	.string	"regno_last"
.LASF29:
	.string	"next"
.LASF1:
	.string	"common"
.LASF42:
	.string	"blocks"
.LASF43:
	.string	"prop_flags"
.LASF9:
	.string	"built_in_class"
.LASF41:
	.string	"mask_"
.LASF28:
	.string	"function_frequency"
.LASF54:
	.string	"needed_regno"
.LASF48:
	.string	"__len"
.LASF24:
	.string	"pointer_depth"
.LASF30:
	.string	"basic_block"
.LASF45:
	.string	"changed"
.LASF18:
	.string	"ht_identifier"
.LASF5:
	.string	"first"
.LASF39:
	.string	"word_num_"
.LASF8:
	.string	"flags"
.LASF4:
	.string	"mem_attrs"
.LASF36:
	.string	"ptr_"
.LASF44:
	.string	"tmp_head"
.LASF0:
	.string	"code"
.LASF19:
	.string	"value"
.LASF21:
	.string	"abstract_origin"
.LASF26:
	.string	"lang_specific"
.LASF22:
	.string	"size_unit"
.LASF27:
	.string	"args_size"
.LASF50:
	.string	"regno_first"
.LASF37:
	.string	"indx_"
.LASF33:
	.string	"insn"
.LASF31:
	.string	"sequence_stack"
.LASF34:
	.string	"__FUNCTION__"
.LASF52:
	.string	"some_was_live"
.LASF3:
	.string	"_IO_FILE"
.LASF47:
	.string	"retval_note"
.LASF16:
	.string	"lang_flag_6"
.LASF49:
	.string	"cond"
.LASF12:
	.string	"lang_flag_2"
.LASF15:
	.string	"lang_flag_5"
.LASF7:
	.string	"cond_local_set"
.LASF20:
	.string	"abstract_flag"
.LASF25:
	.string	"user_align"
.LASF40:
	.string	"word_"
.LASF23:
	.string	"attributes"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF13:
	.string	"lang_flag_3"
.LASF14:
	.string	"lang_flag_4"
.LASF55:
	.string	"blocknum"
.LASF53:
	.string	"some_was_dead"
.LASF35:
	.string	"regno"
.LASF6:
	.string	"local_set"
.LASF38:
	.string	"bit_num_"
.LASF32:
	.string	"sequence_rtl_expr"
.LASF2:
	.string	"unsigned int"
.LASF46:
	.string	"note"
.LASF17:
	.string	"prev"
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
