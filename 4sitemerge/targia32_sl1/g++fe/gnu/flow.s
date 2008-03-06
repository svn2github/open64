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
	.file 1 "../../../kg++fe/gnu/flow.c"
	.loc 1 356 0
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
	.loc 1 357 0
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
	.loc 1 362 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2:
	.loc 1 365 0
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
	.loc 1 367 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 365 0
	jmp	.L20
.L8:
	.loc 1 371 0
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
	.loc 1 375 0
	call	get_max_uid@PLT
	movl	%eax, -12(%ebp)
	.loc 1 381 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	192(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jge	.L20
.LBB3:
	.loc 1 385 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L16
.L17:
	.loc 1 386 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	192(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L18
	.loc 1 388 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 389 0
	jmp	.L20
.L18:
	.loc 1 385 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L16:
	cmpl	$0, -8(%ebp)
	jne	.L17
.L20:
.LBE3:
.LBE2:
	.loc 1 393 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	check_function_return_warnings, .-check_function_return_warnings
	.section	.rodata
	.align 32
	.type	__FUNCTION__.13495, @object
	.size	__FUNCTION__.13495, 34
__FUNCTION__.13495:
	.string	"first_insn_after_basic_block_note"
.LC3:
	.string	"../../../kg++fe/gnu/flow.c"
	.text
.globl first_insn_after_basic_block_note
	.type	first_insn_after_basic_block_note, @function
first_insn_after_basic_block_note:
.LFB16:
	.loc 1 401 0
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
	.loc 1 405 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 407 0
	cmpl	$0, -8(%ebp)
	jne	.L22
	.loc 1 408 0
	movl	$0, -24(%ebp)
	jmp	.L24
.L22:
	.loc 1 409 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L25
	.loc 1 410 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L25:
	.loc 1 411 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L27
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L29
.L27:
	.loc 1 412 0
	leal	__FUNCTION__.13495@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$412, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L29:
	.loc 1 414 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L24:
	movl	-24(%ebp), %eax
	.loc 1 415 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	first_insn_after_basic_block_note, .-first_insn_after_basic_block_note
	.section	.rodata
	.align 32
	.type	eliminables.13517, @object
	.size	eliminables.13517, 72
eliminables.13517:
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
	.loc 1 426 0
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
	.loc 1 435 0
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
	.loc 1 438 0
	movl	$0, -24(%ebp)
	jmp	.L32
.L33:
	.loc 1 439 0
	movl	-24(%ebp), %eax
	movl	eliminables.13517@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -44(%ebp)
	movl	-24(%ebp), %eax
	movl	eliminables.13517@GOTOFF(%ebx,%eax,8), %eax
	shrl	$6, %eax
	movl	elim_reg_set@GOTOFF(%ebx,%eax,8), %edx
	movl	4+elim_reg_set@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	eliminables.13517@GOTOFF(%ebx,%eax,8), %eax
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
	.loc 1 438 0
	addl	$1, -24(%ebp)
.L32:
	cmpl	$8, -24(%ebp)
	jle	.L33
	.loc 1 446 0
	movl	$1, 4(%esp)
	movl	subregs_of_mode@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 449 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 450 0
	andl	$-99, 16(%ebp)
.L35:
	.loc 1 462 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 463 0
	andl	$-69, 16(%ebp)
.L37:
	.loc 1 466 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L39
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 467 0
	call	init_alias_analysis@PLT
.L39:
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_noop_moves@PLT
	.loc 1 476 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 477 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_stack_pointer_modification
.L42:
	.loc 1 481 0
	call	allocate_reg_life_data@PLT
	.loc 1 482 0
	call	allocate_bb_life_data@PLT
	.loc 1 485 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	mark_regs_live_at_end
	.loc 1 491 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L44
	.loc 1 492 0
	movl	regs_ever_live@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	$176, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
.L44:
	.loc 1 493 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
	.loc 1 496 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 497 0
	call	end_alias_analysis@PLT
.L46:
	.loc 1 499 0
	cmpl	$0, 12(%ebp)
	je	.L49
	.loc 1 500 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L49:
	.loc 1 502 0
	movl	$1, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 505 0
	call	delete_dead_jumptables@PLT
	.loc 1 506 0
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
	.loc 1 516 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	subl	$28, %esp
.LCFI16:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 518 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 520 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L54
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L54
	.loc 1 522 0
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
	.loc 1 523 0
	movl	$2, -20(%ebp)
	jmp	.L62
.L60:
	.loc 1 524 0
	movl	$1, -20(%ebp)
	jmp	.L62
.L54:
	.loc 1 526 0
	movl	$0, -20(%ebp)
.L62:
	movl	-20(%ebp), %eax
	.loc 1 527 0
	leave
	ret
.LFE18:
	.size	verify_wide_reg_1, .-verify_wide_reg_1
	.section	.rodata
	.type	__FUNCTION__.13606, @object
	.size	__FUNCTION__.13606, 16
__FUNCTION__.13606:
	.string	"verify_wide_reg"
	.align 4
.LC4:
	.string	"Register %d died unexpectedly.\n"
	.text
	.type	verify_wide_reg, @function
verify_wide_reg:
.LFB19:
	.loc 1 536 0
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
	.loc 1 537 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L65:
	.loc 1 541 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L66
.LBB5:
	.loc 1 543 0
	movl	-16(%ebp), %eax
	addl	$44, %eax
	leal	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	verify_wide_reg_1@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 544 0
	cmpl	$1, -8(%ebp)
	je	.L74
	.loc 1 546 0
	cmpl	$2, -8(%ebp)
	je	.L70
.L66:
.LBE5:
	.loc 1 549 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L70
	.loc 1 551 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 552 0
	jmp	.L65
.L70:
	.loc 1 554 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L72
	.loc 1 556 0
	movl	8(%ebp), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 557 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
.L72:
	.loc 1 559 0
	leal	__FUNCTION__.13606@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$559, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L74:
	.loc 1 560 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	verify_wide_reg, .-verify_wide_reg
	.section	.rodata
	.type	__FUNCTION__.13628, @object
	.size	__FUNCTION__.13628, 27
__FUNCTION__.13628:
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
	.loc 1 569 0
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
	.loc 1 570 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L76
	.loc 1 574 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_equal_p@PLT
	testl	%eax, %eax
	jne	.L105
	.loc 1 576 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L80
	.loc 1 578 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 581 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	debug_bitmap_file@PLT
	.loc 1 582 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 583 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
.L80:
	.loc 1 585 0
	leal	__FUNCTION__.13628@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$585, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L76:
.LBB6:
	.loc 1 593 0
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
	.loc 1 595 0
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
	leal	__FUNCTION__.13628@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$611, 4(%esp)
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
	.loc 1 613 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	verify_local_live_at_start, .-verify_local_live_at_start
	.section	.rodata
	.type	__FUNCTION__.13705, @object
	.size	__FUNCTION__.13705, 17
__FUNCTION__.13705:
	.string	"update_life_info"
.LC7:
	.string	"deleted %i dead insns\n"
	.text
.globl update_life_info
	.type	update_life_info, @function
update_life_info:
.LFB21:
	.loc 1 637 0
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
	.loc 1 641 0
	movl	16(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 644 0
	movl	$1, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -100(%ebp)
	.loc 1 645 0
	movl	$0, ndead@GOTOFF(%ebx)
	.loc 1 647 0
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
	.loc 1 652 0
	movl	16(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L111
	cmpl	$0, 12(%ebp)
	je	.L113
	cmpl	$0, 8(%ebp)
	je	.L111
.L113:
	.loc 1 654 0
	leal	__FUNCTION__.13705@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$654, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L111:
	.loc 1 657 0
	cmpl	$0, 12(%ebp)
	je	.L115
.L116:
.LBB10:
	.loc 1 661 0
	movl	$0, -84(%ebp)
	.loc 1 663 0
	movl	16(%ebp), %eax
	andl	$304, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_global_regs_live
	.loc 1 668 0
	movl	16(%ebp), %eax
	andl	$40, %eax
	cmpl	$40, %eax
	jne	.L117
	.loc 1 674 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L119
.L120:
	.loc 1 676 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 677 0
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
	.loc 1 674 0
	movl	-88(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L119:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L120
	.loc 1 687 0
	andl	$-281, -92(%ebp)
	.loc 1 691 0
	cmpl	$0, -84(%ebp)
	je	.L117
	.loc 1 698 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 699 0
	jmp	.L116
.L117:
.LBE10:
	.loc 1 702 0
	cmpl	$2, 12(%ebp)
	jne	.L115
	.loc 1 703 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_or_remove_death_notes@PLT
.L115:
	.loc 1 707 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 708 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_log_links
.L124:
	.loc 1 710 0
	cmpl	$0, 8(%ebp)
	je	.L126
.LBB11:
	.loc 1 712 0
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
	.loc 1 725 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L140
.L141:
	.loc 1 727 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 729 0
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 731 0
	cmpl	$0, 12(%ebp)
	jne	.L142
	.loc 1 732 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	verify_local_live_at_start
.L142:
	.loc 1 725 0
	movl	-88(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L140:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L141
.L139:
	.loc 1 736 0
	cmpl	$0, -100(%ebp)
	je	.L144
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -100(%ebp)
.L144:
	.loc 1 738 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L146
.LBB14:
	.loc 1 744 0
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
	.loc 1 756 0
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
	.loc 1 766 0
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
	.loc 1 768 0
	movl	ndead@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L191
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L191
	.loc 1 769 0
	movl	ndead@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L191:
	.loc 1 770 0
	movl	ndead@GOTOFF(%ebx), %eax
	.loc 1 771 0
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
	.loc 1 779 0
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
	.loc 1 780 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 781 0
	movl	$0, -28(%ebp)
	.loc 1 783 0
	movl	$0, -20(%ebp)
	.loc 1 785 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 786 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L197
.L198:
	.loc 1 788 0
	cmpl	$0, 8(%ebp)
	jne	.L199
	.loc 1 790 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L203
	.loc 1 792 0
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
	.loc 1 793 0
	addl	$1, -28(%ebp)
	jmp	.L203
.L199:
	.loc 1 800 0
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
	.loc 1 801 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L203
	.loc 1 802 0
	addl	$1, -28(%ebp)
.L203:
	.loc 1 786 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L197:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L198
	.loc 1 806 0
	cmpl	$0, -28(%ebp)
	je	.L206
	.loc 1 807 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
	movl	%eax, -20(%ebp)
.L206:
	.loc 1 809 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 810 0
	movl	-20(%ebp), %eax
	.loc 1 811 0
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
	.loc 1 820 0
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
	.loc 1 821 0
	cmpl	$0, 8(%ebp)
	jne	.L217
	.loc 1 823 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L214
	.loc 1 825 0
	call	clear_edges@PLT
	.loc 1 826 0
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
	.loc 1 828 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 829 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 831 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	$0, 40(%eax)
	.loc 1 832 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	$0, 36(%eax)
	.loc 1 833 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 40(%eax)
	.loc 1 834 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 32(%eax)
.L217:
	.loc 1 836 0
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
	.loc 1 843 0
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
	.loc 1 846 0
	movl	$0, -20(%ebp)
	.loc 1 848 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L219
.L220:
	.loc 1 850 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L221
.L222:
	.loc 1 852 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 853 0
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
	.loc 1 860 0
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
	.loc 1 863 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 865 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 866 0
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
	.loc 1 869 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
.L226:
.LBE21:
	.loc 1 872 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 873 0
	addl	$1, -20(%ebp)
.L223:
.LBE20:
	.loc 1 850 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L221:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L222
	.loc 1 848 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L219:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L220
	.loc 1 877 0
	cmpl	$0, -20(%ebp)
	je	.L231
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L231
	.loc 1 878 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L231:
	.loc 1 879 0
	movl	-20(%ebp), %eax
	.loc 1 880 0
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
	.loc 1 888 0
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
	.loc 1 890 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L236
.L237:
	.loc 1 892 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 893 0
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
	.loc 1 899 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L244
	.loc 1 900 0
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
	.loc 1 901 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 902 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 903 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L238:
	.loc 1 890 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L236:
	cmpl	$0, -12(%ebp)
	jne	.L237
	.loc 1 906 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	delete_dead_jumptables, .-delete_dead_jumptables
	.type	notice_stack_pointer_modification_1, @function
notice_stack_pointer_modification_1:
.LFB26:
	.loc 1 916 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 917 0
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
	.loc 1 924 0
	movl	current_function_sp_is_unchanging@GOT(%ecx), %eax
	movl	$0, (%eax)
.L254:
	.loc 1 925 0
	popl	%ebp
	ret
.LFE26:
	.size	notice_stack_pointer_modification_1, .-notice_stack_pointer_modification_1
	.type	notice_stack_pointer_modification, @function
notice_stack_pointer_modification:
.LFB27:
	.loc 1 930 0
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
	.loc 1 935 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %edx
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 936 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
	.loc 1 939 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L258
.L259:
	.loc 1 941 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L260
	.loc 1 944 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	notice_stack_pointer_modification_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 946 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
.L260:
	.loc 1 939 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L258:
	cmpl	$0, -8(%ebp)
	jne	.L259
.L262:
	.loc 1 950 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	notice_stack_pointer_modification, .-notice_stack_pointer_modification
	.section	.rodata
	.type	__FUNCTION__.14091, @object
	.size	__FUNCTION__.14091, 9
__FUNCTION__.14091:
	.string	"mark_reg"
	.text
	.type	mark_reg, @function
mark_reg:
.LFB28:
	.loc 1 959 0
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
	.loc 1 960 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 961 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 963 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L264
	.loc 1 964 0
	leal	__FUNCTION__.14091@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$964, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L264:
	.loc 1 966 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 967 0
	cmpl	$175, -12(%ebp)
	jg	.L270
.LBB22:
	.loc 1 969 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 970 0
	jmp	.L268
.L269:
	.loc 1 971 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L268:
	.loc 1 970 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jg	.L269
.L270:
.LBE22:
	.loc 1 973 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	mark_reg, .-mark_reg
	.type	mark_regs_live_at_end, @function
mark_regs_live_at_end:
.LFB29:
	.loc 1 981 0
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
	.loc 1 986 0
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
	.loc 1 993 0
	movl	$29, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L277:
	.loc 1 1000 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L278
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L280
.L278:
	.loc 1 1002 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1006 0
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
	.loc 1 1014 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L284
	.loc 1 1016 0
	movl	$28, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L284:
	.loc 1 1022 0
	movl	$0, -24(%ebp)
	jmp	.L286
.L287:
	.loc 1 1023 0
	movl	-24(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L288
	.loc 1 1024 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L288:
	.loc 1 1022 0
	addl	$1, -24(%ebp)
.L286:
	cmpl	$175, -24(%ebp)
	jbe	.L287
	.loc 1 1026 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 1029 0
	movl	$0, -24(%ebp)
	jmp	.L293
.L294:
	.loc 1 1030 0
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
	.loc 1 1032 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L295:
	.loc 1 1029 0
	addl	$1, -24(%ebp)
.L293:
	cmpl	$175, -24(%ebp)
	jbe	.L294
.L291:
	.loc 1 1037 0
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
	.loc 1 1038 0
	movl	$0, -24(%ebp)
.L301:
.LBB23:
	.loc 1 1040 0
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
	.loc 1 1041 0
	cmpl	$-1, -20(%ebp)
	je	.L298
	.loc 1 1043 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE23:
	.loc 1 1038 0
	addl	$1, -24(%ebp)
	.loc 1 1044 0
	jmp	.L301
.L298:
	.loc 1 1047 0
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
	.loc 1 1050 0
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
	.loc 1 1051 0
	cmpl	$0, -16(%ebp)
	je	.L309
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L309
	.loc 1 1052 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg
.L309:
.LBE24:
	.loc 1 1066 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	mark_reg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	diddle_return_value@PLT
	.loc 1 1067 0
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
	.loc 1 1079 0
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
	.loc 1 1080 0
	movl	20(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1081 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1082 0
	movl	$0, %eax
	.loc 1 1083 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	set_phi_alternative_reg, .-set_phi_alternative_reg
	.type	calculate_global_regs_live, @function
calculate_global_regs_live:
.LFB31:
	.loc 1 1095 0
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
	.loc 1 1110 0
	movl	$1, 4(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1111 0
	movl	$1, 4(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1112 0
	movl	$1, 4(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1115 0
	movl	$0, -104(%ebp)
	jmp	.L323
.L324:
	.loc 1 1116 0
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
	.loc 1 1117 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L325:
	.loc 1 1115 0
	addl	$1, -104(%ebp)
.L323:
	cmpl	$175, -104(%ebp)
	jle	.L324
	.loc 1 1122 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -136(%ebp)
	.loc 1 1123 0
	movl	-136(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1124 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-136(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1129 0
	cmpl	$0, 8(%ebp)
	je	.L328
	.loc 1 1131 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L330
.L331:
	.loc 1 1132 0
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
	.loc 1 1134 0
	subl	$4, -132(%ebp)
	movl	-132(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1135 0
	movl	-120(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 40(%edx)
.L332:
	.loc 1 1131 0
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
	.loc 1 1140 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L336
.L337:
	.loc 1 1142 0
	subl	$4, -132(%ebp)
	movl	-132(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1143 0
	movl	-120(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1140 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
.L336:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L337
.L335:
	.loc 1 1150 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 40(%eax)
	movl	40(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%edx, 40(%eax)
	.loc 1 1152 0
	cmpl	$0, 12(%ebp)
	je	.L430
	.loc 1 1153 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1173 0
	jmp	.L430
.L341:
.LBB25:
	.loc 1 1179 0
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	addl	$4, -132(%ebp)
	.loc 1 1180 0
	movl	-132(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jne	.L342
	.loc 1 1181 0
	movl	-136(%ebp), %eax
	movl	%eax, -132(%ebp)
.L342:
	.loc 1 1182 0
	movl	-92(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1185 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1187 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 1188 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L346
.L347:
.LBB26:
	.loc 1 1190 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1196 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L348
	.loc 1 1198 0
	movl	-84(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1200 0
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
	.loc 1 1203 0
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
	.loc 1 1207 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L351
	.loc 1 1208 0
	movl	$0, -104(%ebp)
	jmp	.L353
.L354:
	addl	$1, -104(%ebp)
.L353:
	cmpl	$175, -104(%ebp)
	jle	.L354
.L351:
.LBE26:
	.loc 1 1188 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
.L346:
	cmpl	$0, -88(%ebp)
	jne	.L347
	jmp	.L356
.L344:
	.loc 1 1217 0
	movl	$0, -104(%ebp)
	jmp	.L357
.L358:
	addl	$1, -104(%ebp)
.L357:
	cmpl	$175, -104(%ebp)
	jle	.L358
.L356:
	.loc 1 1223 0
	movl	$29, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1228 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L359
	.loc 1 1232 0
	movl	$1, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1237 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L361
	.loc 1 1238 0
	movl	$0, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L361:
	.loc 1 1243 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L359
	.loc 1 1245 0
	movl	$28, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L359:
	.loc 1 1252 0
	movl	in_ssa_form@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L364
	.loc 1 1253 0
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	set_phi_alternative_reg@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_successor_phi@PLT
.L364:
	.loc 1 1256 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -92(%ebp)
	jne	.L366
	.loc 1 1258 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1259 0
	jmp	.L340
.L366:
	.loc 1 1266 0
	movl	-92(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L368
.LBB27:
	.loc 1 1268 0
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
	.loc 1 1269 0
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
	.loc 1 1270 0
	movl	$1, -100(%ebp)
	jmp	.L382
.L368:
	.loc 1 1278 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1279 0
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
	.loc 1 1282 0
	cmpl	$0, -100(%ebp)
	jne	.L383
	.loc 1 1291 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1292 0
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
	.loc 1 1296 0
	cmpl	$0, -100(%ebp)
	jne	.L382
	.loc 1 1300 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1301 0
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
	.loc 1 1303 0
	cmpl	$0, -96(%ebp)
	je	.L340
	.loc 1 1309 0
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
	.loc 1 1316 0
	cmpl	$0, 12(%ebp)
	je	.L387
	.loc 1 1317 0
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
	.loc 1 1319 0
	cmpl	$0, -100(%ebp)
	jne	.L389
	.loc 1 1324 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1326 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1328 0
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
	.loc 1 1331 0
	cmpl	$0, -96(%ebp)
	je	.L340
	.loc 1 1332 0
	jmp	.L392
.L389:
	.loc 1 1336 0
	movl	-92(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1340 0
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
	.loc 1 1344 0
	movl	-92(%ebp), %eax
	movl	32(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_equal_p@PLT
	testl	%eax, %eax
	jne	.L340
	.loc 1 1347 0
	movl	-92(%ebp), %eax
	movl	32(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
.L392:
	.loc 1 1352 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L394
.L395:
.LBB33:
	.loc 1 1354 0
	movl	-88(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1355 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L396
	.loc 1 1357 0
	movl	-128(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	addl	$4, -128(%ebp)
	.loc 1 1358 0
	movl	-128(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jne	.L398
	.loc 1 1359 0
	movl	-136(%ebp), %eax
	movl	%eax, -128(%ebp)
.L398:
	.loc 1 1360 0
	movl	-40(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 40(%edx)
.L396:
.LBE33:
	.loc 1 1352 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
.L394:
	cmpl	$0, -88(%ebp)
	jne	.L395
.L340:
.L430:
.LBE25:
	.loc 1 1173 0
	movl	-132(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jne	.L341
	.loc 1 1365 0
	cmpl	$0, -116(%ebp)
	je	.L401
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -116(%ebp)
.L401:
	.loc 1 1366 0
	cmpl	$0, -112(%ebp)
	je	.L403
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -112(%ebp)
.L403:
	.loc 1 1367 0
	cmpl	$0, -108(%ebp)
	je	.L405
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -108(%ebp)
.L405:
	.loc 1 1369 0
	cmpl	$0, 12(%ebp)
	je	.L407
.LBB34:
	.loc 1 1371 0
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
	.loc 1 1380 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L423
.L424:
	.loc 1 1382 0
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
	.loc 1 1383 0
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
	.loc 1 1380 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -120(%ebp)
.L423:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -120(%ebp)
	jne	.L424
.L422:
	.loc 1 1387 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1388 0
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
	.loc 1 1409 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	subl	$24, %esp
.LCFI77:
	.loc 1 1410 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1411 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1412 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1414 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L436
	.loc 1 1415 0
	movl	$0, -24(%ebp)
	jmp	.L438
.L436:
	.loc 1 1417 0
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
	.loc 1 1422 0
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
	.loc 1 1424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1425 0
	movl	$1, -24(%ebp)
	jmp	.L438
.L440:
	.loc 1 1430 0
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
	.loc 1 1433 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1434 0
	movl	$1, -24(%ebp)
	jmp	.L438
.L439:
	.loc 1 1442 0
	movl	$0, -24(%ebp)
.L438:
	movl	-24(%ebp), %eax
	.loc 1 1443 0
	leave
	ret
.LFE32:
	.size	find_regno_partial, .-find_regno_partial
.globl initialize_uninitialized_subregs
	.type	initialize_uninitialized_subregs, @function
initialize_uninitialized_subregs:
.LFB33:
	.loc 1 1454 0
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
	.loc 1 1457 0
	movl	$0, -44(%ebp)
	.loc 1 1460 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L450
.L451:
.LBB38:
	.loc 1 1462 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1463 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -36(%ebp)
.LBB39:
	.loc 1 1464 0
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
	.loc 1 1460 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L450:
	cmpl	$0, -52(%ebp)
	jne	.L451
	.loc 1 1496 0
	cmpl	$0, -44(%ebp)
	je	.L479
	.loc 1 1497 0
	call	commit_edge_insertions@PLT
.L479:
	.loc 1 1498 0
	movl	-44(%ebp), %eax
	.loc 1 1499 0
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
	.loc 1 1509 0
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
	.loc 1 1512 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L483
.L484:
.LBB43:
	.loc 1 1514 0
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
	.loc 1 1515 0
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
	.loc 1 1512 0
	movl	-72(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -72(%ebp)
.L483:
	cmpl	$0, -72(%ebp)
	jne	.L484
.LBB49:
	.loc 1 1518 0
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
	.loc 1 1519 0
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
	.loc 1 1523 0
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
	.loc 1 1526 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1530 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 1534 0
	movl	$0, -8(%ebp)
	jmp	.L506
.L507:
	.loc 1 1536 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 12(%eax)
	.loc 1 1537 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 16(%eax)
	.loc 1 1538 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 24(%eax)
	.loc 1 1539 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 32(%eax)
	.loc 1 1540 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 28(%eax)
	.loc 1 1541 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-1, 36(%eax)
	.loc 1 1534 0
	addl	$1, -8(%ebp)
.L506:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L507
	.loc 1 1543 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	allocate_reg_life_data, .-allocate_reg_life_data
	.type	propagate_block_delete_insn, @function
propagate_block_delete_insn:
.LFB36:
	.loc 1 1550 0
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
	.loc 1 1551 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1563 0
	cmpl	$0, -32(%ebp)
	je	.L511
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L511
.LBB52:
	.loc 1 1565 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1571 0
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
	.loc 1 1577 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1578 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1579 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1582 0
	movl	$0, -8(%ebp)
	jmp	.L519
.L520:
	.loc 1 1583 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 1582 0
	addl	$1, -8(%ebp)
.L519:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L520
	.loc 1 1585 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 1586 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
.L511:
.LBE53:
.LBE52:
	.loc 1 1590 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 1591 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
	.loc 1 1592 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	propagate_block_delete_insn, .-propagate_block_delete_insn
	.type	propagate_block_delete_libcall, @function
propagate_block_delete_libcall:
.LFB37:
	.loc 1 1600 0
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
	.loc 1 1601 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1602 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain_and_edges@PLT
	.loc 1 1605 0
	movl	ndead@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, ndead@GOTOFF(%ebx)
	.loc 1 1606 0
	movl	-8(%ebp), %eax
	.loc 1 1607 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	propagate_block_delete_libcall, .-propagate_block_delete_libcall
	.section	.rodata
	.type	__FUNCTION__.14914, @object
	.size	__FUNCTION__.14914, 19
__FUNCTION__.14914:
	.string	"propagate_one_insn"
	.align 4
.LC10:
	.string	"Attempt to delete prologue/epilogue insn:"
	.text
.globl propagate_one_insn
	.type	propagate_one_insn, @function
propagate_one_insn:
.LFB38:
	.loc 1 1615 0
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
	.loc 1 1616 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1617 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1618 0
	movl	$0, -112(%ebp)
	.loc 1 1619 0
	movl	$0, -108(%ebp)
	.loc 1 1623 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L526
	.loc 1 1624 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L526:
	.loc 1 1626 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1627 0
	movl	-116(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L529
	.loc 1 1629 0
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
	.loc 1 1630 0
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
	.loc 1 1636 0
	movl	-116(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L536
	cmpl	$0, -112(%ebp)
	je	.L536
	.loc 1 1643 0
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
	.loc 1 1652 0
	leal	__FUNCTION__.14914@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1652, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L539:
	.loc 1 1656 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1661 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1663 0
	cmpl	$0, -108(%ebp)
	je	.L546
	.loc 1 1664 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block_delete_libcall
	movl	%eax, -120(%ebp)
	jmp	.L548
.L546:
	.loc 1 1678 0
	cmpl	$0, -104(%ebp)
	je	.L549
.LBB54:
	.loc 1 1682 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1684 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
.L549:
.LBE54:
	.loc 1 1689 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1690 0
	cmpl	$0, -104(%ebp)
	je	.L551
.LBB55:
	.loc 1 1694 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1696 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_note@PLT
.L551:
.LBE55:
	.loc 1 1700 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block_delete_insn
.L548:
	.loc 1 1703 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L536:
	.loc 1 1729 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1734 0
	cmpl	$0, -108(%ebp)
	je	.L553
	.loc 1 1737 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1739 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1740 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L528
.L553:
	.loc 1 1742 0
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
	.loc 1 1752 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
	.loc 1 1742 0
	jmp	.L561
.L555:
.LBB56:
	.loc 1 1760 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L562
	movl	-116(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L562
.LBB57:
	.loc 1 1761 0
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
	.loc 1 1766 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_regs
	.loc 1 1768 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L583
.LBB60:
	.loc 1 1775 0
	movl	$0, -52(%ebp)
	.loc 1 1776 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L585
	.loc 1 1777 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L585:
	.loc 1 1782 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L587
	.loc 1 1784 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 1785 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	jmp	.L589
.L587:
	.loc 1 1788 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
.L589:
	.loc 1 1791 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1792 0
	jmp	.L590
.L591:
	.loc 1 1794 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L592
	.loc 1 1795 0
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
	.loc 1 1793 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
.L590:
	.loc 1 1792 0
	cmpl	$0, -56(%ebp)
	jne	.L591
	.loc 1 1802 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 1803 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1804 0
	movl	$0, -48(%ebp)
	jmp	.L595
.L596:
	.loc 1 1805 0
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
	.loc 1 1813 0
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
	.loc 1 1804 0
	addl	$1, -48(%ebp)
.L595:
	cmpl	$175, -48(%ebp)
	jle	.L596
.L583:
.LBE60:
	.loc 1 1821 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1824 0
	cmpl	$0, -112(%ebp)
	jne	.L602
	.loc 1 1825 0
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
	.loc 1 1826 0
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
	.loc 1 1829 0
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
	.loc 1 1837 0
	cmpl	$0, -112(%ebp)
	jne	.L561
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L561
.LBB61:
	.loc 1 1842 0
	movl	$0, -36(%ebp)
	.loc 1 1843 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L610
	.loc 1 1844 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L610:
	.loc 1 1847 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1848 0
	jmp	.L612
.L613:
	.loc 1 1850 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L614
	.loc 1 1851 0
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
	.loc 1 1849 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L612:
	.loc 1 1848 0
	cmpl	$0, -40(%ebp)
	jne	.L613
	.loc 1 1855 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$29, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1859 0
	movl	$0, -44(%ebp)
	jmp	.L617
.L618:
	.loc 1 1860 0
	movl	-44(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L619
	.loc 1 1861 0
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
	.loc 1 1859 0
	addl	$1, -44(%ebp)
.L617:
	cmpl	$175, -44(%ebp)
	jle	.L618
.L561:
.LBE61:
.LBE56:
	.loc 1 1867 0
	movl	-116(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L621
.LBB62:
	.loc 1 1868 0
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
	.loc 1 1871 0
	movl	-120(%ebp), %eax
	movl	%eax, -140(%ebp)
.L528:
	movl	-140(%ebp), %eax
	.loc 1 1872 0
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
	.loc 1 1883 0
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
	.loc 1 1884 0
	movl	$40, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1886 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1887 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1888 0
	movl	-24(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1889 0
	movl	-24(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 1890 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1891 0
	movl	-24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1892 0
	movl	-24(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 1893 0
	movl	-24(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 1895 0
	movl	24(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L644
	.loc 1 1896 0
	call	max_reg_num@PLT
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L646
.L644:
	.loc 1 1898 0
	movl	-24(%ebp), %eax
	movl	$0, 12(%eax)
.L646:
	.loc 1 1900 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2001 0
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
	.loc 1 2012 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L656
.L657:
	.loc 1 2013 0
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
	.loc 1 2017 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2018 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2024 0
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L658
	.loc 1 2027 0
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
	.loc 1 2031 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_mem_set_list
.L658:
.LBE66:
	.loc 1 2012 0
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
	.loc 1 2035 0
	movl	-24(%ebp), %eax
	.loc 1 2036 0
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
	.loc 1 2043 0
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
	.loc 1 2044 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 2046 0
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
	.loc 1 2053 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L677
	.loc 1 2054 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L677:
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2057 0
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
	.loc 1 2084 0
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
	.loc 1 2089 0
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
	.loc 1 2091 0
	movl	24(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L681
.LBB67:
.LBB68:
	.loc 1 2097 0
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
	.loc 1 2103 0
	movl	$0, -36(%ebp)
	.loc 1 2104 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L701:
	.loc 1 2108 0
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
	.loc 1 2111 0
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
	.loc 1 2113 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_one_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2114 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-44(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -36(%ebp)
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L706
	.loc 1 2104 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2118 0
	jmp	.L701
.L706:
	.loc 1 2120 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free_propagate_block_info@PLT
	.loc 1 2122 0
	movl	-36(%ebp), %eax
	.loc 1 2123 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	propagate_block, .-propagate_block
	.type	insn_dead_p, @function
insn_dead_p:
.LFB42:
	.loc 1 2140 0
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
	.loc 1 2141 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2144 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L710
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L710
	.loc 1 2145 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L710:
	.loc 1 2167 0
	cmpl	$57, -36(%ebp)
	jne	.L714
.LBB71:
	.loc 1 2169 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2177 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	jne	.L716
	.loc 1 2179 0
	cmpl	$0, 16(%ebp)
	jne	.L720
	.loc 1 2180 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L716:
	.loc 1 2184 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L720
	.loc 1 2185 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L720:
	.loc 1 2187 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L735
.LBB72:
	.loc 1 2191 0
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
	.loc 1 2192 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L726:
	.loc 1 2194 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2202 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L727
.L728:
	.loc 1 2203 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L729
.LBB73:
	.loc 1 2205 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2207 0
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
	.loc 1 2210 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L729:
.LBE73:
	.loc 1 2202 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L727:
	cmpl	$0, -28(%ebp)
	jne	.L728
	jmp	.L767
.L736:
.LBE72:
	.loc 1 2230 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L735:
	.loc 1 2227 0
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
	.loc 1 2232 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L767
.LBB74:
	.loc 1 2234 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2237 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L741
	.loc 1 2238 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L741:
	.loc 1 2242 0
	cmpl	$175, -16(%ebp)
	jg	.L743
.LBB75:
	.loc 1 2244 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2246 0
	jmp	.L745
.L746:
	.loc 1 2247 0
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
	.loc 1 2248 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L745:
	.loc 1 2246 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jg	.L746
.L743:
.LBE75:
	.loc 1 2252 0
	cmpl	$175, -16(%ebp)
	jg	.L748
	movl	-16(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L748
	.loc 1 2253 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L748:
	.loc 1 2256 0
	cmpl	$29, -16(%ebp)
	jne	.L751
	.loc 1 2257 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L751:
	.loc 1 2264 0
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
	.loc 1 2266 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L753:
	.loc 1 2268 0
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
	.loc 1 2270 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L760:
	.loc 1 2277 0
	cmpl	$0, -16(%ebp)
	jne	.L764
	movl	-16(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L764
	.loc 1 2278 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L764:
	.loc 1 2282 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L714:
.LBE74:
.LBE71:
	.loc 1 2291 0
	cmpl	$49, -36(%ebp)
	jne	.L768
.LBB76:
	.loc 1 2293 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2295 0
	subl	$1, -8(%ebp)
	jmp	.L770
.L771:
	.loc 1 2296 0
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
	.loc 1 2299 0
	movl	$0, -44(%ebp)
	jmp	.L713
.L772:
	.loc 1 2295 0
	subl	$1, -8(%ebp)
.L770:
	cmpl	$0, -8(%ebp)
	jns	.L771
	.loc 1 2301 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L768:
.LBE76:
	.loc 1 2306 0
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
	.loc 1 2309 0
	movl	$1, -44(%ebp)
	jmp	.L713
.L767:
	.loc 1 2313 0
	movl	$0, -44(%ebp)
.L713:
	movl	-44(%ebp), %eax
	.loc 1 2314 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	insn_dead_p, .-insn_dead_p
	.type	libcall_dead_p, @function
libcall_dead_p:
.LFB43:
	.loc 1 2336 0
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
	.loc 1 2337 0
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
	.loc 1 2339 0
	cmpl	$0, -24(%ebp)
	je	.L789
.LBB77:
	.loc 1 2341 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2343 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L789
.LBB78:
	.loc 1 2345 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2350 0
	jmp	.L792
.L793:
	.loc 1 2351 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L792:
	.loc 1 2350 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L794
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L793
.L794:
	.loc 1 2355 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L796
	.loc 1 2356 0
	movl	$0, -40(%ebp)
	jmp	.L798
.L796:
	.loc 1 2360 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2361 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L799
	.loc 1 2363 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L801
.L802:
	.loc 1 2364 0
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
	.loc 1 2363 0
	subl	$1, -8(%ebp)
.L801:
	cmpl	$0, -8(%ebp)
	jns	.L802
.L805:
	.loc 1 2371 0
	cmpl	$0, -8(%ebp)
	jns	.L806
	.loc 1 2372 0
	movl	$0, -40(%ebp)
	jmp	.L798
.L806:
	.loc 1 2374 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
.L799:
	.loc 1 2377 0
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
	.loc 1 2380 0
	movl	$1, -40(%ebp)
.L798:
	movl	-40(%ebp), %eax
	.loc 1 2381 0
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
	.loc 1 2391 0
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
	.loc 1 2392 0
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
	.loc 1 2397 0
	movl	$0, -12(%ebp)
	jmp	.L834
.L812:
	.loc 1 2399 0
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
	.loc 1 2400 0
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
	.loc 1 2409 0
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
	.loc 1 2410 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L837
	.loc 1 2411 0
	movl	$0, -12(%ebp)
	jmp	.L839
.L837:
	.loc 1 2413 0
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
	.loc 1 2416 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	regno_clobbered_at_setjmp, .-regno_clobbered_at_setjmp
	.type	add_to_mem_set_list, @function
add_to_mem_set_list:
.LFB46:
	.loc 1 2424 0
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
	.loc 1 2429 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L857
	.loc 1 2432 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L849
.L850:
.LBB79:
	.loc 1 2434 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2435 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L851
	.loc 1 2437 0
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
	.loc 1 2446 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2448 0
	jmp	.L857
.L851:
.LBE79:
	.loc 1 2432 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L849:
	cmpl	$0, -12(%ebp)
	jne	.L850
	.loc 1 2452 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$99, %eax
	jg	.L857
	.loc 1 2460 0
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
	.loc 1 2461 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
.L857:
	.loc 1 2463 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	add_to_mem_set_list, .-add_to_mem_set_list
	.type	invalidate_mems_from_autoinc, @function
invalidate_mems_from_autoinc:
.LFB47:
	.loc 1 2473 0
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
	.loc 1 2474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2475 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2477 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L859
	.loc 1 2479 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
	.loc 1 2480 0
	movl	$-1, -24(%ebp)
	jmp	.L861
.L859:
	.loc 1 2483 0
	movl	$0, -24(%ebp)
.L861:
	movl	-24(%ebp), %eax
	.loc 1 2484 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	invalidate_mems_from_autoinc, .-invalidate_mems_from_autoinc
	.type	invalidate_mems_from_set, @function
invalidate_mems_from_set:
.LFB48:
	.loc 1 2492 0
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
	.loc 1 2493 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2494 0
	movl	$0, -12(%ebp)
	.loc 1 2497 0
	jmp	.L864
.L865:
	.loc 1 2499 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2500 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L866
	.loc 1 2503 0
	cmpl	$0, -12(%ebp)
	je	.L868
	.loc 1 2504 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L870
.L868:
	.loc 1 2506 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
.L870:
	.loc 1 2507 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 2508 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L871
.L866:
	.loc 1 2511 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L871:
	.loc 1 2512 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L864:
	.loc 1 2497 0
	cmpl	$0, -16(%ebp)
	jne	.L865
	.loc 1 2514 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	invalidate_mems_from_set, .-invalidate_mems_from_set
	.section	.rodata
	.type	__FUNCTION__.15821, @object
	.size	__FUNCTION__.15821, 14
__FUNCTION__.15821:
	.string	"mark_set_regs"
	.text
	.type	mark_set_regs, @function
mark_set_regs:
.LFB49:
	.loc 1 2527 0
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
	.loc 1 2528 0
	movl	$0, -24(%ebp)
	.loc 1 2532 0
	cmpl	$0, 16(%ebp)
	je	.L875
	.loc 1 2533 0
	movl	16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L877
.L878:
	.loc 1 2535 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L879
	.loc 1 2536 0
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
	.loc 1 2533 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L877:
	cmpl	$0, -20(%ebp)
	jne	.L878
.L875:
	.loc 1 2542 0
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
	.loc 1 2546 0
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
	.loc 1 2547 0
	jmp	.L897
.L885:
	.loc 1 2550 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2551 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2552 0
	jmp	.L875
.L886:
.LBB80:
	.loc 1 2558 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L889
.L890:
.LBB81:
	.loc 1 2560 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2561 0
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
	.loc 1 2564 0
	cmpl	$0, -24(%ebp)
	je	.L894
	.loc 1 2565 0
	leal	__FUNCTION__.15821@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2565, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L894:
	.loc 1 2567 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2568 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2569 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L893
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L891
.L893:
	.loc 1 2575 0
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
	.loc 1 2558 0
	subl	$1, -12(%ebp)
.L889:
	cmpl	$0, -12(%ebp)
	jns	.L890
.L897:
.LBE80:
	.loc 1 2588 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	mark_set_regs, .-mark_set_regs
	.type	mark_set_1, @function
mark_set_1:
.LFB50:
	.loc 1 2602 0
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
	.loc 1 2603 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	.loc 1 2604 0
	movl	$0, -40(%ebp)
	.loc 1 2611 0
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
	.loc 1 2617 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L905
.L906:
	.loc 1 2618 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L907
	.loc 1 2619 0
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
	.loc 1 2617 0
	subl	$1, -36(%ebp)
.L905:
	cmpl	$0, -36(%ebp)
	jns	.L906
	.loc 1 2621 0
	jmp	.L1031
.L903:
.L1032:
	.loc 1 2628 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 2632 0
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
	.loc 1 2633 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L899
	.loc 1 2635 0
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
	.loc 1 2639 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2640 0
	cmpl	$175, -48(%ebp)
	jg	.L899
	.loc 1 2641 0
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
	.loc 1 2642 0
	jmp	.L899
.L902:
	.loc 1 2645 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L918
.LBB82:
	.loc 1 2647 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2648 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2653 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2654 0
	cmpl	$175, -48(%ebp)
	jg	.L920
	.loc 1 2656 0
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
	.loc 1 2659 0
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
	.loc 1 2666 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, 16(%ebp)
	jmp	.L899
.L920:
	.loc 1 2676 0
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
	.loc 1 2680 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -40(%ebp)
.L935:
	.loc 1 2683 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	jmp	.L899
.L918:
.LBE82:
	.loc 1 2687 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
.L899:
	.loc 1 2696 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L937
	movl	28(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L937
	.loc 1 2698 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L940
	.loc 1 2699 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invalidate_mems_from_set
.L940:
	.loc 1 2704 0
	cmpl	$0, 24(%ebp)
	je	.L942
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L942
	.loc 1 2705 0
	movl	24(%ebp), %eax
	addl	$44, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	invalidate_mems_from_autoinc@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
.L942:
	.loc 1 2707 0
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
	.loc 1 2710 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	canon_rtx@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_mem_set_list
.L937:
	.loc 1 2713 0
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
	.loc 1 2725 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2727 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L961
.L962:
.LBB84:
	.loc 1 2729 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2730 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L963
	.loc 1 2734 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 2735 0
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
	.loc 1 2737 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 2735 0
	jmp	.L963
.L965:
	.loc 1 2739 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L963:
	.loc 1 2741 0
	cmpl	$59, 12(%ebp)
	je	.L968
	.loc 1 2742 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L968:
	.loc 1 2744 0
	movl	-16(%ebp), %eax
	orl	%eax, -24(%ebp)
	.loc 1 2745 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -20(%ebp)
.LBE84:
	.loc 1 2727 0
	addl	$1, -36(%ebp)
.L961:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L962
	.loc 1 2765 0
	movl	28(%ebp), %eax
	andl	$71, %eax
	testl	%eax, %eax
	je	.L971
.LBB85:
	.loc 1 2769 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2771 0
	movl	$0, -12(%ebp)
	.loc 1 2772 0
	movl	28(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L973
	.loc 1 2774 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2777 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L975
.L976:
	.loc 1 2778 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2777 0
	addl	$1, -36(%ebp)
.L975:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L976
.L973:
	.loc 1 2781 0
	movl	28(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L977
	.loc 1 2783 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L979
.L980:
	.loc 1 2787 0
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
	.loc 1 2788 0
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
	.loc 1 2789 0
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
	.loc 1 2795 0
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
	.loc 1 2783 0
	addl	$1, -36(%ebp)
.L979:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L980
	.loc 1 2799 0
	cmpl	$175, -48(%ebp)
	jg	.L990
	.loc 1 2801 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L992
.L993:
	.loc 1 2802 0
	movl	-36(%ebp), %edx
	movl	regs_ever_live@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 2801 0
	addl	$1, -36(%ebp)
.L992:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L993
	jmp	.L977
.L990:
	.loc 1 2807 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	$-1, %eax
	jne	.L995
	.loc 1 2808 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 36(%edx)
	jmp	.L977
.L995:
	.loc 1 2809 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L977
	.loc 1 2810 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
.L977:
	.loc 1 2814 0
	cmpl	$0, -20(%ebp)
	jne	.L998
	.loc 1 2816 0
	movl	28(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L971
	.loc 1 2827 0
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
	.loc 1 2830 0
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
	.loc 1 2833 0
	cmpl	$0, -40(%ebp)
	jne	.L971
	.loc 1 2835 0
	cmpl	$0, -24(%ebp)
	jne	.L1007
	.loc 1 2837 0
	movl	28(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1009
	.loc 1 2838 0
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
	.loc 1 2840 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L971
	.loc 1 2847 0
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
	.loc 1 2853 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L971
	.loc 1 2861 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1014
.L1015:
	.loc 1 2862 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L1016
	.loc 1 2863 0
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
	.loc 1 2861 0
	addl	$1, -36(%ebp)
.L1014:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L1015
.L971:
.LBE85:
	.loc 1 2872 0
	cmpl	$0, -24(%ebp)
	je	.L1031
	cmpl	$29, -48(%ebp)
	je	.L1031
	.loc 1 2879 0
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1021
.L1022:
	.loc 1 2880 0
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-40(%ebp), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1023
	.loc 1 2881 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
.L1023:
	.loc 1 2879 0
	addl	$1, -36(%ebp)
.L1021:
	movl	-36(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jle	.L1022
	.loc 1 2713 0
	jmp	.L1031
.L948:
.LBE83:
	.loc 1 2884 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1025
	.loc 1 2886 0
	movl	28(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L1031
	.loc 1 2887 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	jmp	.L1031
.L1025:
	.loc 1 2892 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	jne	.L1031
	.loc 1 2894 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1031
	.loc 1 2895 0
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
	.loc 1 2898 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	mark_set_1, .-mark_set_1
	.type	mark_used_reg, @function
mark_used_reg:
.LFB51:
	.loc 1 3571 0
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
	.loc 1 3575 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3576 0
	cmpl	$175, -44(%ebp)
	ja	.L1034
	.loc 1 3577 0
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
	.loc 1 3580 0
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3581 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1036
.L1037:
.LBB86:
	.loc 1 3583 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3584 0
	movl	-20(%ebp), %eax
	orl	%eax, -32(%ebp)
	.loc 1 3585 0
	cmpl	$0, -20(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, -28(%ebp)
.LBE86:
	.loc 1 3581 0
	addl	$1, -36(%ebp)
.L1036:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1037
	.loc 1 3589 0
	movl	$0, -24(%ebp)
	.loc 1 3590 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1039
.L1040:
	.loc 1 3591 0
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
	.loc 1 3590 0
	addl	$1, -36(%ebp)
.L1039:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1040
	.loc 1 3593 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L1042
	.loc 1 3597 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
.L1042:
	.loc 1 3600 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1044
	.loc 1 3602 0
	cmpl	$175, -44(%ebp)
	ja	.L1046
	.loc 1 3616 0
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
	.loc 1 3619 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1052
.L1053:
	.loc 1 3620 0
	movl	-36(%ebp), %edx
	movl	regs_ever_live@GOT(%ebx), %eax
	movb	$1, (%eax,%edx)
	.loc 1 3619 0
	addl	$1, -36(%ebp)
.L1052:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1053
	jmp	.L1044
.L1046:
.LBB87:
	.loc 1 3626 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3627 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	$-1, %eax
	jne	.L1054
	.loc 1 3628 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
	jmp	.L1056
.L1054:
	.loc 1 3629 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1056
	.loc 1 3630 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$-2, 36(%eax)
.L1056:
	.loc 1 3633 0
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
	.loc 1 3634 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	%eax, 16(%edx)
.L1044:
.LBE87:
	.loc 1 3642 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$5, %eax
	testl	%eax, %eax
	je	.L1066
	cmpl	$0, -28(%ebp)
	je	.L1066
	cmpl	$0, -24(%ebp)
	je	.L1066
	.loc 1 3648 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L1070
	.loc 1 3649 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1072
.L1073:
	.loc 1 3650 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	orl	%eax, -32(%ebp)
	.loc 1 3649 0
	addl	$1, -36(%ebp)
.L1072:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1073
.L1070:
	.loc 1 3654 0
	cmpl	$0, -32(%ebp)
	jne	.L1074
	.loc 1 3656 0
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
	.loc 1 3658 0
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
	.loc 1 3661 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1066
	.loc 1 3662 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	24(%edx), %eax
	addl	$1, %eax
	movl	%eax, 24(%edx)
	jmp	.L1066
.L1074:
	.loc 1 3668 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1081
.L1082:
	.loc 1 3669 0
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
	.loc 1 3671 0
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
	.loc 1 3668 0
	addl	$1, -36(%ebp)
.L1081:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1082
.L1066:
	.loc 1 3679 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1086
.L1087:
	.loc 1 3685 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 3679 0
	addl	$1, -36(%ebp)
.L1086:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L1087
	.loc 1 3748 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	mark_used_reg, .-mark_used_reg
	.section	.rodata
	.type	__FUNCTION__.16489, @object
	.size	__FUNCTION__.16489, 15
__FUNCTION__.16489:
	.string	"mark_used_regs"
	.text
	.type	mark_used_regs, @function
mark_used_regs:
.LFB52:
	.loc 1 3761 0
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
	.loc 1 3764 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1195
.L1092:
.L1195:
	.loc 1 3767 0
	cmpl	$0, 12(%ebp)
	je	.L1194
	.loc 1 3769 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	.loc 1 3770 0
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
	.loc 1 3792 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1194
	.loc 1 3793 0
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
	.loc 1 3794 0
	jmp	.L1194
.L1103:
	.loc 1 3799 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1095
	movl	-44(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1095
	.loc 1 3803 0
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
	.loc 1 3809 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3810 0
	movl	$0, -36(%ebp)
	.loc 1 3813 0
	jmp	.L1115
.L1116:
	.loc 1 3815 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3816 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L1117
	.loc 1 3819 0
	cmpl	$0, -36(%ebp)
	je	.L1119
	.loc 1 3820 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L1121
.L1119:
	.loc 1 3822 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%edx)
.L1121:
	.loc 1 3823 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 3824 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L1122
.L1117:
	.loc 1 3827 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1122:
	.loc 1 3828 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1115:
	.loc 1 3813 0
	cmpl	$0, -40(%ebp)
	jne	.L1116
.L1114:
.LBE88:
	.loc 1 3835 0
	cmpl	$0, 20(%ebp)
	je	.L1095
	.loc 1 3836 0
	movl	20(%ebp), %eax
	addl	$44, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	invalidate_mems_from_autoinc@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 3843 0
	jmp	.L1095
.L1102:
	.loc 1 3847 0
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
	.loc 1 3849 0
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
	.loc 1 3855 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3856 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1092
.L1101:
	.loc 1 3862 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_reg
	.loc 1 3863 0
	jmp	.L1194
.L1099:
.LBB89:
	.loc 1 3867 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3868 0
	movl	$0, -24(%ebp)
	.loc 1 3872 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1129
	.loc 1 3878 0
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
	.loc 1 3879 0
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
	.loc 1 3880 0
	jmp	.L1194
.L1130:
	.loc 1 3896 0
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
	.loc 1 3899 0
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
	.loc 1 3907 0
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
	.loc 1 3914 0
	movl	$1, -24(%ebp)
.L1150:
	.loc 1 3916 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L1129:
	.loc 1 3890 0
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
	.loc 1 3922 0
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
	.loc 1 3937 0
	cmpl	$0, -24(%ebp)
	je	.L1173
	.loc 1 3938 0
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
	.loc 1 3939 0
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
	.loc 1 3940 0
	jmp	.L1194
.L1097:
.LBE89:
	.loc 1 3964 0
	cmpl	$51, -52(%ebp)
	jne	.L1175
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1177
.L1175:
	.loc 1 3966 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 3967 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L1177:
	.loc 1 3974 0
	cmpl	$51, -52(%ebp)
	jne	.L1095
.LBB90:
	.loc 1 3978 0
	movl	$0, -20(%ebp)
	jmp	.L1180
.L1181:
	.loc 1 3979 0
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
	.loc 1 3978 0
	addl	$1, -20(%ebp)
.L1180:
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L1181
	.loc 1 3981 0
	jmp	.L1095
.L1096:
.LBE90:
	.loc 1 3985 0
	cmpl	$0, 16(%ebp)
	je	.L1182
	.loc 1 3986 0
	leal	__FUNCTION__.16489@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3986, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1182:
	.loc 1 3988 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used_regs
	.loc 1 3990 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 3991 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3992 0
	jmp	.L1092
.L1095:
.LBB91:
	.loc 1 4009 0
	movl	-52(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4012 0
	movl	-52(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1184
.L1185:
	.loc 1 4014 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1186
	.loc 1 4017 0
	cmpl	$0, -12(%ebp)
	jne	.L1188
	.loc 1 4019 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 4020 0
	jmp	.L1092
.L1188:
	.loc 1 4022 0
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
	.loc 1 4024 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1190
.LBB92:
	.loc 1 4027 0
	movl	$0, -8(%ebp)
	jmp	.L1192
.L1193:
	.loc 1 4028 0
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
	.loc 1 4027 0
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
	.loc 1 4012 0
	subl	$1, -12(%ebp)
.L1184:
	cmpl	$0, -12(%ebp)
	jns	.L1185
.L1194:
.LBE91:
	.loc 1 4032 0
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
	.loc 1 4169 0
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
	.loc 1 4170 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4171 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4173 0
	movl	$0, -20(%ebp)
	.loc 1 4176 0
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
	.loc 1 4177 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1201
.L1197:
	.loc 1 4179 0
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
	.loc 1 4183 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1201
.L1202:
	.loc 1 4185 0
	cmpl	$142, -32(%ebp)
	je	.L1208
	cmpl	$143, -32(%ebp)
	jne	.L1210
.L1208:
	.loc 1 4189 0
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
	.loc 1 4190 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1210:
	.loc 1 4193 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1212
	.loc 1 4194 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1212:
	.loc 1 4196 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1214
.L1215:
	.loc 1 4198 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1216
	.loc 1 4200 0
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
	.loc 1 4201 0
	cmpl	$0, -20(%ebp)
	jne	.L1218
	.loc 1 4202 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1222
.L1218:
	.loc 1 4203 0
	cmpl	$0, -16(%ebp)
	je	.L1222
	.loc 1 4204 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1216:
	.loc 1 4206 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1222
.LBB93:
	.loc 1 4209 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1224
.L1225:
	.loc 1 4211 0
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
	.loc 1 4212 0
	cmpl	$0, -20(%ebp)
	jne	.L1226
	.loc 1 4213 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1228
.L1226:
	.loc 1 4214 0
	cmpl	$0, -16(%ebp)
	je	.L1228
	.loc 1 4215 0
	movl	$1, -52(%ebp)
	jmp	.L1201
.L1228:
	.loc 1 4209 0
	subl	$1, -12(%ebp)
.L1224:
	cmpl	$0, -12(%ebp)
	jns	.L1225
.L1222:
.LBE93:
	.loc 1 4196 0
	subl	$1, -24(%ebp)
.L1214:
	cmpl	$0, -24(%ebp)
	jns	.L1215
	.loc 1 4220 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1201:
	movl	-52(%ebp), %eax
	.loc 1 4221 0
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
	.loc 1 4230 0
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
	.loc 1 4232 0
	cmpl	$0, 8(%ebp)
	jne	.L1233
	.loc 1 4234 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 4235 0
	jmp	.L1256
.L1233:
.LBB94:
	.loc 1 4238 0
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
	.loc 1 4245 0
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
	.loc 1 4254 0
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
	.loc 1 4255 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_regset@PLT
	.loc 1 4256 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 4257 0
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
	.loc 1 4282 0
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
	.loc 1 4283 0
	call	allocate_reg_life_data@PLT
	.loc 1 4284 0
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
	.loc 1 4285 0
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
	.loc 1 4295 0
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
	.loc 1 4296 0
	movl	$0, -44(%ebp)
	.loc 1 4299 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1262
.L1263:
.LBB97:
	.loc 1 4303 0
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
	.loc 1 4306 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1267:
	.loc 1 4308 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1268
.LBB98:
	.loc 1 4310 0
	movl	-36(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4311 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4313 0
	jmp	.L1283
.L1271:
	.loc 1 4315 0
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
	.loc 1 4318 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1274
.LBB99:
	.loc 1 4320 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4323 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1276
	.loc 1 4324 0
	movl	$1, -20(%ebp)
	jmp	.L1278
.L1276:
	.loc 1 4326 0
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
	.loc 1 4327 0
	movl	-20(%ebp), %eax
	addl	%eax, -44(%ebp)
.L1274:
.LBE99:
	.loc 1 4332 0
	cmpl	$0, 12(%ebp)
	je	.L1272
.LBB100:
	.loc 1 4334 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4335 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_node@PLT
	.loc 1 4336 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4337 0
	jmp	.L1270
.L1272:
.LBE100:
	.loc 1 4342 0
	movl	-28(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4343 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1270:
.L1283:
	.loc 1 4313 0
	cmpl	$0, -28(%ebp)
	jne	.L1271
.L1268:
.LBE98:
	.loc 1 4349 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1266
	.loc 1 4306 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4351 0
	jmp	.L1267
.L1266:
.LBE97:
	.loc 1 4299 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
.L1262:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1263
	.loc 1 4354 0
	movl	-44(%ebp), %eax
	.loc 1 4355 0
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
	.loc 1 4362 0
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
	.loc 1 4366 0
	cmpl	$0, 8(%ebp)
	jne	.L1286
	.loc 1 4368 0
	call	get_insns@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1288
.L1289:
	.loc 1 4369 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1290
	.loc 1 4370 0
	movl	-44(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	free_INSN_LIST_list@PLT
.L1290:
	.loc 1 4368 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L1288:
	cmpl	$0, -44(%ebp)
	jne	.L1289
	jmp	.L1307
.L1286:
.LBB101:
	.loc 1 4373 0
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
	.loc 1 4382 0
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
	.loc 1 4393 0
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
	.loc 1 4396 0
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
	.loc 1 4403 0
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
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/tree.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/function.h"
	.file 10 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 11 "../../../kg++fe/omp_types.h"
	.file 12 "../../../kg++fe/gnu/basic-block.h"
	.file 13 "../../../kg++fe/gnu/sbitmap.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 19 "../../../include/gnu/obstack.h"
	.file 20 "../../../kg++fe/gnu/regs.h"
	.file 21 "../../../kg++fe/gnu/varray.h"
	.file 22 "../../../kg++fe/gnu/flags.h"
	.file 23 "../../../kg++fe/gnu/output.h"
	.file 24 "../../../kg++fe/gnu/ssa.h"
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
	.long	0x99ac
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/flow.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.byte	0x84
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
	.byte	0x87
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
	.byte	0x8e
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
	.byte	0x91
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
	.byte	0x99
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
	.byte	0xa2
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
	.byte	0xb4
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
	.byte	0xbb
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
	.byte	0xc0
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
	.byte	0xc9
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
	.byte	0xce
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
	.byte	0xf2
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
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
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x6
	.value	0x887
	.long	0x3d2c
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x404a
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x4092
	.uleb128 0xa
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x41b5
	.uleb128 0xa
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x40f3
	.uleb128 0xa
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x4160
	.uleb128 0xa
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x43e9
	.uleb128 0xa
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x545c
	.uleb128 0xa
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x464c
	.uleb128 0xa
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x4420
	.uleb128 0xa
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x4465
	.uleb128 0xa
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x44b6
	.uleb128 0xa
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x4502
	.uleb128 0xa
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x5e36
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
	.byte	0x29
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
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x49
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4e
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
	.byte	0x50
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
	.byte	0x52
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
	.byte	0x55
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
	.byte	0x57
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
	.byte	0x58
	.long	0x120c
	.uleb128 0x14
	.long	0x135d
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF4
	.byte	0x3
	.byte	0x68
	.long	0x1301
	.uleb128 0x8
	.long	0x143a
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x455
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e0
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x3b9
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2cd
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x99
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x199
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x7f4
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x12e6
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x144e
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x14b4
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e1
	.uleb128 0x1a
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x162c
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
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
	.byte	0x77
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x5
	.byte	0x3d
	.long	0x5f6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5f6b
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
	.byte	0x79
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
	.long	0x6683
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x6683
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0xc1
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF7
	.byte	0xc
	.byte	0xc5
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x65b5
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
	.long	0x68fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x65c3
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
	.byte	0x7c
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
	.byte	0x25
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
	.byte	0x2f
	.long	0x3b9
	.uleb128 0x4
	.long	0x2023
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"offset"
	.byte	0x6
	.byte	0x30
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x202d
	.uleb128 0x1b
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x2082
	.long	.LASF9
	.byte	0x4
	.byte	0x6
	.byte	0x58
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
	.long	0x3d2c
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x67
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
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x400e
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x6
	.byte	0x90
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
	.byte	0x92
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
	.byte	0x93
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
	.byte	0x94
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
	.byte	0x95
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
	.byte	0x96
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
	.byte	0x97
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
	.byte	0x98
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x6
	.byte	0x9a
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
	.byte	0x9f
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
	.byte	0xa0
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
	.byte	0xa1
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
	.byte	0xa2
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
	.byte	0xa3
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
	.byte	0xa4
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
	.byte	0xa5
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
	.byte	0xa6
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
	.byte	0xa8
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
	.byte	0xa9
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
	.byte	0xaa
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
	.byte	0xab
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
	.byte	0xac
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
	.byte	0xad
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
	.byte	0xae
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x6
	.byte	0xb0
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
	.byte	0xb5
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
	.byte	0xb6
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
	.byte	0xb7
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
	.byte	0xb8
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
	.byte	0xb9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x404a
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x4092
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x304
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x400e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x40e0
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x320
	.long	0x3d2c
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
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x40ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x40e0
	.uleb128 0xd
	.long	0x415a
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x334
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x415a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2023
	.uleb128 0xd
	.long	0x41b5
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x343
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x41fd
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x356
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x4246
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
	.long	.LASF18
	.byte	0x13
	.byte	0xa4
	.long	0x4246
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
	.long	0x41fd
	.uleb128 0xd
	.long	0x4379
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
	.long	0x4246
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
	.long	0x438e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0x13
	.byte	0xb6
	.long	0x43a5
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
	.long	0x438e
	.byte	0x1
	.long	0x4246
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x20
	.long	0x49f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4379
	.uleb128 0x21
	.long	0x43a5
	.byte	0x1
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x20
	.long	0x4246
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4394
	.uleb128 0x14
	.long	0x43e9
	.long	.LASF19
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
	.long	0x4420
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x377
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x43ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4465
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x381
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x6
	.value	0x383
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x44a6
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x38f
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x44a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x44b6
	.long	0x1e1
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x4502
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x3d5
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x44a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x45f2
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x40b
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF21
	.byte	0x6
	.value	0x40e
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
	.value	0x40f
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
	.value	0x411
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x414
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x4639
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x2e0
	.uleb128 0xa
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x4be
	.uleb128 0xa
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x4646
	.byte	0x0
	.uleb128 0x1b
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4639
	.uleb128 0xd
	.long	0x499a
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x552
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x6
	.value	0x555
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x6
	.value	0x556
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x6
	.value	0x559
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
	.value	0x55a
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
	.value	0x55c
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
	.value	0x55d
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
	.value	0x55e
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
	.value	0x55f
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
	.value	0x560
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
	.value	0x561
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x6
	.value	0x562
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
	.value	0x564
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
	.value	0x565
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
	.value	0x566
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
	.value	0x567
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
	.value	0x568
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
	.value	0x569
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
	.value	0x56a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x6
	.value	0x56b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"align"
	.byte	0x6
	.value	0x56d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x45f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x6
	.value	0x57f
	.long	0x49a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x1fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x499a
	.uleb128 0xd
	.long	0x49f1
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0x6
	.value	0x818
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
	.value	0x819
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4a26
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x2082
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x455
	.uleb128 0xa
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x49ac
	.byte	0x0
	.uleb128 0x24
	.long	0x4a65
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x541e
	.uleb128 0xa
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x99
	.uleb128 0xa
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e1
	.uleb128 0xa
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x2e0
	.byte	0x0
	.uleb128 0x25
	.long	0x541e
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x6cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x6cf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x6cf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x6cff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x6d15
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
	.long	0x541e
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
	.long	.LASF28
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
	.long	0x6d32
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
	.long	0x6d44
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
	.long	0x69e2
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
	.long	0x6d5d
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
	.long	0x6d77
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
	.long	.LASF29
	.byte	0x9
	.value	0x1fa
	.long	0x6c69
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
	.long	0x4a65
	.uleb128 0x26
	.long	0x545c
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x415a
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x1fd3
	.uleb128 0xa
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x3b9
	.byte	0x0
	.uleb128 0xd
	.long	0x5ba6
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x7c6
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x169f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x7ca
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
	.value	0x7cc
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
	.value	0x7cd
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
	.value	0x7ce
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
	.value	0x7cf
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
	.value	0x7d0
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
	.value	0x7d1
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
	.value	0x7d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF21
	.byte	0x6
	.value	0x7d3
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
	.value	0x7d7
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
	.value	0x7d8
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
	.value	0x7d9
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
	.value	0x7da
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
	.value	0x7db
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
	.value	0x7df
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
	.value	0x7e0
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
	.value	0x7e1
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
	.value	0x7e2
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
	.value	0x7e3
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
	.value	0x7e4
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
	.value	0x7e5
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
	.value	0x7e6
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
	.value	0x7e8
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
	.value	0x7e9
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
	.value	0x7ea
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
	.value	0x7eb
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
	.value	0x7ec
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
	.value	0x7ed
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
	.value	0x7ee
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF25
	.byte	0x6
	.value	0x7f0
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
	.value	0x7f1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF26
	.byte	0x6
	.value	0x7f2
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
	.value	0x7f3
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
	.value	0x7f4
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
	.value	0x7f5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
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
	.value	0x7fa
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
	.value	0x7fb
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
	.value	0x7fc
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
	.value	0x7fd
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
	.value	0x7fe
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
	.value	0x7ff
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
	.value	0x800
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF17
	.byte	0x6
	.value	0x801
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
	.value	0x804
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
	.value	0x805
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x6
	.value	0x81b
	.long	0x49f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x6
	.value	0x81d
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x82b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x6
	.value	0x82e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x4a26
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x455
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x6
	.value	0x848
	.long	0x5bb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x6
	.value	0x852
	.long	0x5424
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x1fe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ba6
	.uleb128 0x16
	.long	0x5e36
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1d
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
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x5e85
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x6
	.value	0x865
	.long	0x3d2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5bb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
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
	.long	0x5ec6
	.uleb128 0x10
	.long	0x5ed6
	.long	0x5e99
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
	.long	0x5f3f
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x5
	.byte	0x35
	.long	0x5f3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x5
	.byte	0x36
	.long	0x5f3f
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
	.long	0x5f45
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ee9
	.uleb128 0x10
	.long	0x5f55
	.long	0x5ed6
	.uleb128 0x11
	.long	0x3d0
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5ee9
	.uleb128 0x3
	.byte	0x4
	.long	0x5f55
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
	.long	0x5fec
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
	.long	0x5fec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x5ffc
	.long	0x466
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x600b
	.uleb128 0x3
	.byte	0x4
	.long	0x5f92
	.uleb128 0x3
	.byte	0x4
	.long	0x466
	.uleb128 0x4
	.long	0x604d
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
	.long	0x61e8
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
	.long	0x62e4
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
	.long	0x62e4
	.uleb128 0x1a
	.string	"s"
	.byte	0x15
	.byte	0x5a
	.long	0x62f4
	.uleb128 0x1a
	.string	"us"
	.byte	0x15
	.byte	0x5c
	.long	0x6304
	.uleb128 0x1a
	.string	"i"
	.byte	0x15
	.byte	0x5e
	.long	0x6314
	.uleb128 0x1a
	.string	"u"
	.byte	0x15
	.byte	0x60
	.long	0x6324
	.uleb128 0x1a
	.string	"l"
	.byte	0x15
	.byte	0x62
	.long	0x6334
	.uleb128 0x1a
	.string	"ul"
	.byte	0x15
	.byte	0x64
	.long	0x6344
	.uleb128 0x1a
	.string	"hint"
	.byte	0x15
	.byte	0x66
	.long	0x6354
	.uleb128 0x1a
	.string	"uhint"
	.byte	0x15
	.byte	0x68
	.long	0x5fec
	.uleb128 0x1a
	.string	"generic"
	.byte	0x15
	.byte	0x6a
	.long	0x6364
	.uleb128 0x1a
	.string	"cptr"
	.byte	0x15
	.byte	0x6c
	.long	0x6374
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x15
	.byte	0x6e
	.long	0x6384
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x15
	.byte	0x70
	.long	0x6394
	.uleb128 0x1a
	.string	"tree"
	.byte	0x15
	.byte	0x72
	.long	0x63a4
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0x15
	.byte	0x74
	.long	0x63b4
	.uleb128 0x1a
	.string	"reg"
	.byte	0x15
	.byte	0x76
	.long	0x63c4
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0x15
	.byte	0x78
	.long	0x64c0
	.uleb128 0x1a
	.string	"bb"
	.byte	0x15
	.byte	0x7a
	.long	0x64d0
	.uleb128 0x1a
	.string	"te"
	.byte	0x15
	.byte	0x7c
	.long	0x64e0
	.byte	0x0
	.uleb128 0x10
	.long	0x62f4
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6304
	.long	0x448
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6314
	.long	0x40e
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6324
	.long	0x2e0
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6334
	.long	0x3b9
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6344
	.long	0x49f
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6354
	.long	0x424
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6364
	.long	0x455
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6374
	.long	0x4bc
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6384
	.long	0x4be
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6394
	.long	0xa4
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x63a4
	.long	0x1a6
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x63b4
	.long	0x1ed
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x63c4
	.long	0x14b4
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x63d4
	.long	0x64ba
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x64ba
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
	.long	.LASF31
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
	.long	0x63d4
	.uleb128 0x10
	.long	0x64d0
	.long	0x6017
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x64e0
	.long	0x162c
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x64f0
	.long	0x64fb
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64f0
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x15
	.byte	0x7e
	.long	0x61e8
	.uleb128 0x4
	.long	0x6589
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
	.long	0x604d
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
	.long	0x6501
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x15
	.byte	0x8a
	.long	0x659c
	.uleb128 0x3
	.byte	0x4
	.long	0x6514
	.uleb128 0x2
	.string	"regset_head"
	.byte	0xc
	.byte	0x20
	.long	0x5f71
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5f84
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x455
	.uleb128 0x4
	.long	0x667d
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x667d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x667d
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
	.long	0x65c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65d4
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x667d
	.uleb128 0x4
	.long	0x68fc
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
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x690d
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
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0xc
	.value	0x18f
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x5ffc
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
	.long	0x690d
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
	.long	0x690d
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
	.long	0x5ffc
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
	.long	0x6913
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
	.long	0x68fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x68fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF30
	.byte	0xc
	.value	0x1b7
	.long	0x68fc
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
	.long	0x668f
	.uleb128 0x19
	.long	.LASF31
	.byte	0xc
	.byte	0xe6
	.long	0x162c
	.uleb128 0x3
	.byte	0x4
	.long	0x6683
	.uleb128 0x3
	.byte	0x4
	.long	0x68fc
	.uleb128 0x27
	.long	0x697d
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
	.long	0x69e2
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
	.long	.LASF30
	.byte	0x9
	.byte	0x1b
	.long	0x69e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x697d
	.uleb128 0x14
	.long	0x6a2e
	.long	.LASF32
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
	.long	.LASF33
	.byte	0x9
	.byte	0x28
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x9
	.byte	0x29
	.long	0x6a2e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69e8
	.uleb128 0x3
	.byte	0x4
	.long	0x424c
	.uleb128 0x4
	.long	0x6b89
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
	.long	.LASF33
	.byte	0x9
	.byte	0x4a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x9
	.byte	0x50
	.long	0x6a2e
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
	.long	0x5e93
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
	.long	0x6c69
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
	.long	0x6cd3
	.long	.LASF29
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
	.long	0x6cd3
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ce5
	.uleb128 0x3
	.byte	0x4
	.long	0x6b89
	.uleb128 0x3
	.byte	0x4
	.long	0x6a3a
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d05
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d1b
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d38
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d4a
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6d63
	.uleb128 0xc
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0xd
	.long	0x6e64
	.string	"propagate_block_info"
	.byte	0x28
	.byte	0xc
	.value	0x2a5
	.uleb128 0x7
	.string	"bb"
	.byte	0x1
	.byte	0xf6
	.long	0x6902
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"reg_live"
	.byte	0x1
	.byte	0xf9
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"new_set"
	.byte	0x1
	.byte	0xfc
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"reg_next_use"
	.byte	0x1
	.value	0x100
	.long	0x1667
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"mem_set_list"
	.byte	0x1
	.value	0x104
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x108
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x10c
	.long	0x65b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"mem_set_list_len"
	.byte	0x1
	.value	0x118
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"cc0_live"
	.byte	0x1
	.value	0x11b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x11e
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x29
	.long	0x6ed0
	.byte	0x1
	.string	"check_function_return_warnings"
	.byte	0x1
	.value	0x164
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
	.value	0x177
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x17f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6f3d
	.byte	0x1
	.string	"first_insn_after_basic_block_note"
	.byte	0x1
	.value	0x191
	.byte	0x1
	.long	0x99
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.string	"block"
	.byte	0x1
	.value	0x190
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x192
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF35
	.long	0x9453
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13495
	.byte	0x0
	.uleb128 0x29
	.long	0x6fff
	.byte	0x1
	.string	"life_analysis"
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x1a7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x1a8
	.long	0x6fff
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x1a9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1ac
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x6fc2
	.byte	0x8
	.byte	0x1
	.value	0x1ad
	.uleb128 0xe
	.string	"from"
	.byte	0x1
	.value	0x1ad
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x1ad
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x32
	.long	0x6fe4
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"scan_tp_"
	.byte	0x1
	.value	0x1b3
	.long	0x7005
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.string	"eliminables"
	.byte	0x1
	.value	0x1ad
	.long	0x943e
	.byte	0x5
	.byte	0x3
	.long	eliminables.13517
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c4
	.uleb128 0x3
	.byte	0x4
	.long	0x5e99
	.uleb128 0x33
	.long	0x7073
	.string	"verify_wide_reg_1"
	.byte	0x1
	.value	0x204
	.byte	0x1
	.long	0x2e0
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.string	"px"
	.byte	0x1
	.value	0x202
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pregno"
	.byte	0x1
	.value	0x203
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x205
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x206
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x7100
	.string	"verify_wide_reg"
	.byte	0x1
	.value	0x218
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x216
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x217
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"head"
	.byte	0x1
	.value	0x219
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x219
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x70ef
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x21f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x9429
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13606
	.byte	0x0
	.uleb128 0x34
	.long	0x71ff
	.string	"verify_local_live_at_start"
	.byte	0x1
	.value	0x239
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2e
	.string	"new_live_at_start"
	.byte	0x1
	.value	0x237
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x238
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	0x71ee
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x24e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x253
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x253
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x253
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x253
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x253
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x253
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x9414
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13628
	.byte	0x0
	.uleb128 0x2d
	.long	0x7468
	.byte	0x1
	.string	"update_life_info"
	.byte	0x1
	.value	0x27d
	.byte	0x1
	.long	0x2e0
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x27a
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"extent"
	.byte	0x1
	.value	0x27b
	.long	0x6919
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x27c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x27e
	.long	0x65b5
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x27f
	.long	0x65a2
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x280
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"stabilized_prop_flags"
	.byte	0x1
	.value	0x281
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x282
	.long	0x6902
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x72d7
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x295
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x735d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2c8
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2c8
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x2c8
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x2c8
	.long	0x6011
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x2c8
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
	.value	0x2c8
	.long	0x466
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x73db
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x2e8
	.long	0x5f6b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x2e8
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2e8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2e8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x2e8
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x2e8
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7457
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x2f4
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x2f4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x2f4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x2f4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x2f4
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x2f4
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x93ff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13705
	.byte	0x0
	.uleb128 0x2d
	.long	0x7510
	.byte	0x1
	.string	"update_life_info_in_dirty_blocks"
	.byte	0x1
	.value	0x30b
	.byte	0x1
	.long	0x2e0
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2e
	.string	"extent"
	.byte	0x1
	.value	0x309
	.long	0x6919
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x30a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"update_life_blocks"
	.byte	0x1
	.value	0x30c
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x30d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x30e
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"retval"
	.byte	0x1
	.value	0x30f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	0x7558
	.byte	0x1
	.string	"free_basic_block_vars"
	.byte	0x1
	.value	0x334
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"keep_head_end_p"
	.byte	0x1
	.value	0x333
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x761e
	.byte	0x1
	.string	"delete_noop_moves"
	.byte	0x1
	.value	0x34b
	.byte	0x1
	.long	0x2e0
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x34a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x34c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x34c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x34d
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"nnoops"
	.byte	0x1
	.value	0x34e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x357
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
	.value	0x35f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x360
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x766a
	.byte	0x1
	.string	"delete_dead_jumptables"
	.byte	0x1
	.value	0x378
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x379
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x379
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x76d0
	.string	"notice_stack_pointer_modification_1"
	.byte	0x1
	.value	0x394
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x391
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0x392
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x393
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x34
	.long	0x7724
	.string	"notice_stack_pointer_modification"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x3a1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x3a3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x77ab
	.string	"mark_reg"
	.byte	0x1
	.value	0x3bf
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x3bd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"xset"
	.byte	0x1
	.value	0x3be
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x3c0
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x3c1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x779a
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x3c9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x93ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14091
	.byte	0x0
	.uleb128 0x34
	.long	0x7829
	.string	"mark_regs_live_at_end"
	.byte	0x1
	.value	0x3d5
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x3d4
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x3d6
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x780f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0x410
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
	.value	0x41a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x78b5
	.string	"set_phi_alternative_reg"
	.byte	0x1
	.value	0x437
	.byte	0x1
	.long	0x2e0
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x433
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dest_regno"
	.byte	0x1
	.value	0x434
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"src_regno"
	.byte	0x1
	.value	0x435
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x436
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"live"
	.byte	0x1
	.value	0x438
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x7c29
	.string	"calculate_global_regs_live"
	.byte	0x1
	.value	0x447
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"blocks_in"
	.byte	0x1
	.value	0x445
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"blocks_out"
	.byte	0x1
	.value	0x445
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x446
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"queue"
	.byte	0x1
	.value	0x448
	.long	0x7c29
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"qhead"
	.byte	0x1
	.value	0x448
	.long	0x7c29
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"qtail"
	.byte	0x1
	.value	0x448
	.long	0x7c29
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"qend"
	.byte	0x1
	.value	0x448
	.long	0x7c29
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x448
	.long	0x6902
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x449
	.long	0x65b5
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"new_live_at_end"
	.byte	0x1
	.value	0x449
	.long	0x65b5
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"invalidated_by_call"
	.byte	0x1
	.value	0x449
	.long	0x65b5
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF45
	.byte	0x1
	.value	0x44a
	.long	0x65a2
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"invalidated_by_call_head"
	.byte	0x1
	.value	0x44a
	.long	0x65a2
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.string	"new_live_at_end_head"
	.byte	0x1
	.value	0x44b
	.long	0x65a2
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x44c
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	0x7b92
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"rescan"
	.byte	0x1
	.value	0x497
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x497
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x498
	.long	0x6902
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x499
	.long	0x6683
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x7a8f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"sb"
	.byte	0x1
	.value	0x4a6
	.long	0x6902
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x7b06
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x4f4
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	0x7ada
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4f4
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x4f4
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
	.value	0x4f4
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x4f4
	.long	0x4bc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7b79
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x4f5
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	0x7b4f
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x4f5
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x4f5
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
	.value	0x4f5
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x4f5
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
	.value	0x54a
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x55b
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x55b
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x55b
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x55b
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x55b
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
	.value	0x55b
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
	.value	0x55b
	.long	0x6902
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
	.long	0x6902
	.uleb128 0x31
	.long	0x7c64
	.byte	0x8
	.byte	0x1
	.value	0x574
	.uleb128 0xe
	.string	"regno_to_find"
	.byte	0x1
	.value	0x575
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"retval"
	.byte	0x1
	.value	0x576
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x12
	.string	"find_regno_partial_param"
	.byte	0x1
	.value	0x577
	.long	0x7c2f
	.uleb128 0x33
	.long	0x7cf1
	.string	"find_regno_partial"
	.byte	0x1
	.value	0x581
	.byte	0x1
	.long	0x2e0
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"ptr"
	.byte	0x1
	.value	0x57f
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x580
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"param"
	.byte	0x1
	.value	0x582
	.long	0x7cf1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x583
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c64
	.uleb128 0x2d
	.long	0x7e4f
	.byte	0x1
	.string	"initialize_uninitialized_subregs"
	.byte	0x1
	.value	0x5ae
	.byte	0x1
	.long	0x2e0
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x5af
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x5b0
	.long	0x6683
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x5b1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"did_something"
	.byte	0x1
	.value	0x5b1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"param"
	.byte	0x1
	.value	0x5b2
	.long	0x7c64
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x5b6
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"map"
	.byte	0x1
	.value	0x5b7
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x5b8
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x5b8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x5b8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x5b8
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x5b8
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x5b8
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2b
	.string	"uid"
	.byte	0x1
	.value	0x5b8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5b8
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
	.long	0x7fe0
	.byte	0x1
	.string	"allocate_bb_life_data"
	.byte	0x1
	.value	0x5e5
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x5e6
	.long	0x6902
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	0x7eff
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x5ea
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	0x7ed5
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5ea
	.long	0x6a34
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x5ea
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
	.value	0x5ea
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x5ea
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7f71
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x5eb
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	0x7f47
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5eb
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x5eb
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
	.value	0x5eb
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x5eb
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
	.value	0x5ee
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	0x7fb5
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x5ee
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x5ee
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
	.value	0x5ee
	.long	0x6a34
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x5ee
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x801b
	.byte	0x1
	.string	"allocate_reg_life_data"
	.byte	0x1
	.value	0x5f3
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5f4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x80e2
	.string	"propagate_block_delete_insn"
	.byte	0x1
	.value	0x60e
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x60d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"inote"
	.byte	0x1
	.value	0x60f
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
	.value	0x61d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x61e
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
	.value	0x629
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"diff_vec_p"
	.byte	0x1
	.value	0x62a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x62b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x62c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x815a
	.string	"propagate_block_delete_libcall"
	.byte	0x1
	.value	0x640
	.byte	0x1
	.long	0x99
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x63f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x63f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x641
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"before"
	.byte	0x1
	.value	0x642
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8425
	.byte	0x1
	.string	"propagate_one_insn"
	.byte	0x1
	.value	0x64f
	.byte	0x1
	.long	0x99
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x64d
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x64e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x650
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x651
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"insn_is_dead"
	.byte	0x1
	.value	0x652
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"libcall_is_dead"
	.byte	0x1
	.value	0x653
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x654
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x655
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x32
	.long	0x823f
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"libcall_note"
	.byte	0x1
	.value	0x690
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x32
	.long	0x825d
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2c
	.long	.LASF48
	.byte	0x1
	.value	0x69c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x32
	.long	0x8398
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x6db
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	0x82fc
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x6e1
	.long	0x5f6b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x6e1
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x6e1
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x6e1
	.long	0x3b9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x6e1
	.long	0x5ed6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x6e1
	.long	0x5ed6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8362
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2b
	.string	"live_at_end"
	.byte	0x1
	.value	0x6ea
	.long	0x65b5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"sibcall_p"
	.byte	0x1
	.value	0x6eb
	.long	0x5e8a
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x6ec
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x6ec
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x6ed
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
	.value	0x72f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x730
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x730
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8414
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x74c
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x74c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x74c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x74c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x74c
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x74c
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x93d5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14914
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6d86
	.uleb128 0x2d
	.long	0x8510
	.byte	0x1
	.string	"init_propagate_block_info"
	.byte	0x1
	.value	0x75b
	.byte	0x1
	.long	0x8425
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x758
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"live"
	.byte	0x1
	.value	0x759
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x759
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x759
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x75a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x75c
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x7db
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x7db
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
	.value	0x7e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"canon_mem"
	.byte	0x1
	.value	0x7e2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x8550
	.byte	0x1
	.string	"free_propagate_block_info"
	.byte	0x1
	.value	0x7fb
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x7fa
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8691
	.byte	0x1
	.string	"propagate_block"
	.byte	0x1
	.value	0x824
	.byte	0x1
	.long	0x2e0
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"bb"
	.byte	0x1
	.value	0x81f
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"live"
	.byte	0x1
	.value	0x820
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x821
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x822
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0x823
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x825
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x826
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x826
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF46
	.byte	0x1
	.value	0x827
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
	.value	0x82d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x831
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x831
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x831
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x831
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x831
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x831
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x87b2
	.string	"insn_dead_p"
	.byte	0x1
	.value	0x85c
	.byte	0x1
	.long	0x2e0
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x858
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x859
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"call_ok"
	.byte	0x1
	.value	0x85a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"notes"
	.byte	0x1
	.value	0x85b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x85d
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	0x879a
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x879
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	0x8769
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x88d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"canon_r"
	.byte	0x1
	.value	0x88d
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
	.value	0x89d
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
	.long	.LASF36
	.byte	0x1
	.value	0x8ba
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
	.value	0x8c4
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
	.value	0x8f5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8867
	.string	"libcall_dead_p"
	.byte	0x1
	.value	0x920
	.byte	0x1
	.long	0x2e0
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x91d
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x91e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x91f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x921
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
	.value	0x925
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
	.value	0x929
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"call_pat"
	.byte	0x1
	.value	0x92a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x92b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x88a5
	.byte	0x1
	.string	"regno_uninitialized"
	.byte	0x1
	.value	0x957
	.byte	0x1
	.long	0x2e0
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x956
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x88e9
	.byte	0x1
	.string	"regno_clobbered_at_setjmp"
	.byte	0x1
	.value	0x969
	.byte	0x1
	.long	0x2e0
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x968
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x8955
	.string	"add_to_mem_set_list"
	.byte	0x1
	.value	0x978
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x976
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"mem"
	.byte	0x1
	.value	0x977
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x979
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
	.value	0x982
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x89c6
	.string	"invalidate_mems_from_autoinc"
	.byte	0x1
	.value	0x9a9
	.byte	0x1
	.long	0x2e0
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.string	"px"
	.byte	0x1
	.value	0x9a7
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x9a8
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x9aa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"pbi"
	.byte	0x1
	.value	0x9ab
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8a41
	.string	"invalidate_mems_from_set"
	.byte	0x1
	.value	0x9bc
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x9ba
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"exp"
	.byte	0x1
	.value	0x9bb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x9bd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x9be
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x9bf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8b10
	.string	"mark_set_regs"
	.byte	0x1
	.value	0x9df
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0x9dd
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x9de
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x9de
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x9e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x9e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x9e2
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"retry"
	.byte	0x1
	.value	0x9f8
	.long	.L875
	.uleb128 0x32
	.long	0x8aff
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x9fc
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
	.value	0xa00
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x93c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15821
	.byte	0x0
	.uleb128 0x34
	.long	0x8c6f
	.string	"mark_set_1"
	.byte	0x1
	.value	0xa2a
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xa26
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0xa27
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xa28
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF50
	.byte	0x1
	.value	0xa28
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0xa28
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0xa29
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0xa2b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0xa2b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"not_dead"
	.byte	0x1
	.value	0xa2c
	.long	0x424
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xa2d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	0x8c03
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2b
	.string	"outer_mode"
	.byte	0x1
	.value	0xa57
	.long	0x7f4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"inner_mode"
	.byte	0x1
	.value	0xa58
	.long	0x7f4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2c
	.long	.LASF53
	.byte	0x1
	.value	0xaa5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0xaa5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	0x8c47
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0xaa9
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
	.value	0xad0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xad1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8d66
	.string	"mark_used_reg"
	.byte	0x1
	.value	0xdf3
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xdef
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xdf0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF50
	.byte	0x1
	.value	0xdf1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0xdf2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0xdf4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF52
	.byte	0x1
	.value	0xdf4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xdf4
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF53
	.byte	0x1
	.value	0xdf5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0xdf5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"some_not_set"
	.byte	0x1
	.value	0xdf5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x8d4c
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0xdff
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xe2a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8ede
	.string	"mark_used_regs"
	.byte	0x1
	.value	0xeb1
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.string	"pbi"
	.byte	0x1
	.value	0xeaf
	.long	0x8425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xeb0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF50
	.byte	0x1
	.value	0xeb0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0xeb0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xeb2
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF36
	.byte	0x1
	.value	0xeb3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0xeb4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"retry"
	.byte	0x1
	.value	0xf11
	.long	.L1092
	.uleb128 0x32
	.long	0x8e3b
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0xee1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0xee2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0xee3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x32
	.long	0x8e71
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2b
	.string	"testreg"
	.byte	0x1
	.value	0xf1b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"mark_dest"
	.byte	0x1
	.value	0xf1c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x8e8c
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xf88
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x32
	.long	0x8ecd
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xfa9
	.long	0x5e85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xfaa
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
	.value	0xfba
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF35
	.long	0x93ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16489
	.byte	0x0
	.uleb128 0x2d
	.long	0x8f9e
	.byte	0x1
	.string	"find_use_as_address"
	.byte	0x1
	.value	0x1049
	.byte	0x1
	.long	0x99
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1046
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1047
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"plusconst"
	.byte	0x1
	.value	0x1048
	.long	0x455
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x104a
	.long	0xa3d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x104b
	.long	0x5e85
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x104c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x104d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x104e
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
	.value	0x1070
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x9063
	.byte	0x1
	.string	"dump_regset"
	.byte	0x1
	.value	0x1086
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.value	0x1084
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"outf"
	.byte	0x1
	.value	0x1085
	.long	0x6fff
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1087
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x108e
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x108e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x108e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x108e
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x108e
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x108e
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x9094
	.byte	0x1
	.string	"debug_regset"
	.byte	0x1
	.value	0x109e
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.value	0x109d
	.long	0x65b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x29
	.long	0x90e1
	.byte	0x1
	.string	"recompute_reg_usage"
	.byte	0x1
	.value	0x10ba
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x10b8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"loop_step"
	.byte	0x1
	.value	0x10b9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x91dd
	.byte	0x1
	.string	"count_or_remove_death_notes"
	.byte	0x1
	.value	0x10c7
	.byte	0x1
	.long	0x2e0
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x10c5
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"kill"
	.byte	0x1
	.value	0x10c6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"count"
	.byte	0x1
	.value	0x10c8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x10c9
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x10cd
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
	.value	0x10d6
	.long	0x1667
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x10d7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	0x91c1
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x10e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x10e1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x10ee
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x92c3
	.string	"clear_log_links"
	.byte	0x1
	.value	0x110a
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x1109
	.long	0x5ffc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x110b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x110c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x1115
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x1115
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"size_"
	.byte	0x1
	.value	0x1115
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x1115
	.long	0x6011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x1115
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
	.value	0x1115
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
	.value	0x1115
	.long	0x6902
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x9395
	.byte	0x1
	.string	"reg_set_to_hard_reg_set"
	.byte	0x1
	.value	0x1129
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2e
	.string	"to"
	.byte	0x1
	.value	0x1127
	.long	0x9395
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"from"
	.byte	0x1
	.value	0x1128
	.long	0x5f84
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x112a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x112c
	.long	0x5f6b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x112c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF39
	.byte	0x1
	.value	0x112c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF40
	.byte	0x1
	.value	0x112c
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x2c
	.long	.LASF41
	.byte	0x1
	.value	0x112c
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2c
	.long	.LASF42
	.byte	0x1
	.value	0x112c
	.long	0x5ed6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5eb2
	.uleb128 0x10
	.long	0x93ab
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0x939b
	.uleb128 0x10
	.long	0x93c0
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x93b0
	.uleb128 0x10
	.long	0x93d5
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0x93c5
	.uleb128 0x10
	.long	0x93ea
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0x93da
	.uleb128 0x10
	.long	0x93ff
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x93ef
	.uleb128 0x10
	.long	0x9414
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0x9404
	.uleb128 0x10
	.long	0x9429
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x9419
	.uleb128 0x10
	.long	0x943e
	.long	0x6f9a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.long	0x942e
	.uleb128 0x10
	.long	0x9453
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x21
	.byte	0x0
	.uleb128 0xb
	.long	0x9443
	.uleb128 0x36
	.string	"elim_reg_set"
	.byte	0x1
	.byte	0xde
	.long	0x5eb2
	.byte	0x5
	.byte	0x3
	.long	elim_reg_set
	.uleb128 0x2b
	.string	"ndead"
	.byte	0x1
	.value	0x122
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
	.long	0x94cf
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x94e2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x94bf
	.uleb128 0x10
	.long	0x94f7
	.long	0x40e
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x950d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x94e7
	.uleb128 0x10
	.long	0x9522
	.long	0x3fd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x9536
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9512
	.uleb128 0x10
	.long	0x954b
	.long	0x2cd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x955f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x953b
	.uleb128 0x10
	.long	0x9574
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x9587
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9564
	.uleb128 0x10
	.long	0x95a2
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
	.value	0x6a6
	.long	0x958c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x95cb
	.long	0x99
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa
	.byte	0x0
	.uleb128 0x38
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x95bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flow2_completed"
	.byte	0x1
	.byte	0xbc
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flow2_completed
	.uleb128 0x38
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"current_function_decl"
	.byte	0x6
	.value	0xc07
	.long	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x9649
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xaf
	.byte	0x0
	.uleb128 0x38
	.string	"fixed_regs"
	.byte	0x12
	.value	0x18b
	.long	0x9639
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"global_regs"
	.byte	0x12
	.value	0x1b4
	.long	0x9639
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"regs_invalidated_by_call"
	.byte	0x12
	.value	0x1bd
	.long	0x5eb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x96a7
	.long	0x2cd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xaf
	.byte	0x0
	.uleb128 0x37
	.string	"reg_names"
	.byte	0x14
	.byte	0xa3
	.long	0x9697
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
	.long	0x6589
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"regs_live_at_setjmp"
	.byte	0x1
	.byte	0xcf
	.long	0x65b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_live_at_setjmp
	.uleb128 0x38
	.string	"flow_obstack"
	.byte	0xc
	.value	0x11b
	.long	0x424c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x974f
	.long	0x14ba
	.uleb128 0x11
	.long	0x3d0
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x973f
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"max_regno"
	.byte	0x1
	.byte	0xc0
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_regno
	.uleb128 0x39
	.string	"reg_n_info"
	.byte	0x1
	.byte	0xc4
	.long	0x6589
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_n_info
	.uleb128 0x37
	.string	"subregs_of_mode"
	.byte	0x14
	.byte	0x45
	.long	0x5f71
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"regs_ever_live"
	.byte	0x14
	.byte	0x9f
	.long	0x9639
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"regs_may_share"
	.byte	0x1
	.byte	0xd5
	.long	0x99
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_may_share
	.uleb128 0x37
	.string	"optimize"
	.byte	0x16
	.byte	0x41
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"optimize_size"
	.byte	0x16
	.byte	0x45
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"warn_return_type"
	.byte	0x16
	.byte	0x96
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"warn_missing_noreturn"
	.byte	0x16
	.byte	0x9a
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_branch_probabilities"
	.byte	0x16
	.byte	0xd2
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"flag_omit_frame_pointer"
	.byte	0x16
	.value	0x151
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"frame_pointer_needed"
	.byte	0x16
	.value	0x26a
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"flag_non_call_exceptions"
	.byte	0x16
	.value	0x2b2
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
	.long	0x6fff
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x541e
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
	.byte	0xc9
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regset_bytes
	.uleb128 0x39
	.string	"regset_size"
	.byte	0x1
	.byte	0xca
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regset_size
	.uleb128 0x1f
	.long	0x9980
	.byte	0x1
	.long	0x2e0
	.uleb128 0x20
	.long	0x1e1
	.byte	0x0
	.uleb128 0x39
	.string	"lang_missing_noreturn_ok_p"
	.byte	0x1
	.byte	0xd9
	.long	0x99a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_missing_noreturn_ok_p
	.uleb128 0x3
	.byte	0x4
	.long	0x9970
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
	.long	0x99b0
	.long	0x6e64
	.string	"check_function_return_warnings"
	.long	0x6ed0
	.string	"first_insn_after_basic_block_note"
	.long	0x6f3d
	.string	"life_analysis"
	.long	0x71ff
	.string	"update_life_info"
	.long	0x7468
	.string	"update_life_info_in_dirty_blocks"
	.long	0x7510
	.string	"free_basic_block_vars"
	.long	0x7558
	.string	"delete_noop_moves"
	.long	0x761e
	.string	"delete_dead_jumptables"
	.long	0x7cf7
	.string	"initialize_uninitialized_subregs"
	.long	0x7e4f
	.string	"allocate_bb_life_data"
	.long	0x7fe0
	.string	"allocate_reg_life_data"
	.long	0x815a
	.string	"propagate_one_insn"
	.long	0x842b
	.string	"init_propagate_block_info"
	.long	0x8510
	.string	"free_propagate_block_info"
	.long	0x8550
	.string	"propagate_block"
	.long	0x8867
	.string	"regno_uninitialized"
	.long	0x88a5
	.string	"regno_clobbered_at_setjmp"
	.long	0x8ede
	.string	"find_use_as_address"
	.long	0x8f9e
	.string	"dump_regset"
	.long	0x9063
	.string	"debug_regset"
	.long	0x9094
	.string	"recompute_reg_usage"
	.long	0x90e1
	.string	"count_or_remove_death_notes"
	.long	0x92c3
	.string	"reg_set_to_hard_reg_set"
	.long	0x95e0
	.string	"flow2_completed"
	.long	0x9706
	.string	"regs_live_at_setjmp"
	.long	0x976b
	.string	"max_regno"
	.long	0x9783
	.string	"reg_n_info"
	.long	0x97cd
	.string	"regs_may_share"
	.long	0x993b
	.string	"regset_bytes"
	.long	0x9956
	.string	"regset_size"
	.long	0x9980
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
.LASF36:
	.string	"regno"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF17:
	.string	"lang_flag_7"
.LASF7:
	.string	"cond_local_set"
.LASF5:
	.string	"first"
.LASF4:
	.string	"mem_attrs"
.LASF52:
	.string	"regno_last"
.LASF1:
	.string	"common"
.LASF27:
	.string	"lang_specific"
.LASF33:
	.string	"sequence_rtl_expr"
.LASF32:
	.string	"sequence_stack"
.LASF29:
	.string	"function_frequency"
.LASF13:
	.string	"lang_flag_3"
.LASF30:
	.string	"next"
.LASF2:
	.string	"unsigned int"
.LASF22:
	.string	"abstract_origin"
.LASF25:
	.string	"pointer_depth"
.LASF43:
	.string	"blocks"
.LASF41:
	.string	"word_"
.LASF46:
	.string	"changed"
.LASF26:
	.string	"user_align"
.LASF49:
	.string	"__len"
.LASF23:
	.string	"size_unit"
.LASF51:
	.string	"regno_first"
.LASF38:
	.string	"indx_"
.LASF20:
	.string	"value"
.LASF50:
	.string	"cond"
.LASF28:
	.string	"args_size"
.LASF34:
	.string	"insn"
.LASF48:
	.string	"retval_note"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF21:
	.string	"abstract_flag"
.LASF56:
	.string	"blocknum"
.LASF39:
	.string	"bit_num_"
.LASF18:
	.string	"prev"
.LASF0:
	.string	"code"
.LASF19:
	.string	"ht_identifier"
.LASF47:
	.string	"note"
.LASF35:
	.string	"__FUNCTION__"
.LASF54:
	.string	"some_was_dead"
.LASF9:
	.string	"built_in_class"
.LASF31:
	.string	"basic_block"
.LASF8:
	.string	"flags"
.LASF44:
	.string	"prop_flags"
.LASF45:
	.string	"tmp_head"
.LASF6:
	.string	"local_set"
.LASF55:
	.string	"needed_regno"
.LASF42:
	.string	"mask_"
.LASF37:
	.string	"ptr_"
.LASF53:
	.string	"some_was_live"
.LASF3:
	.string	"_IO_FILE"
.LASF24:
	.string	"attributes"
.LASF40:
	.string	"word_num_"
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
