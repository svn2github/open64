	.file	"loop.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_loop
	.type	init_loop, @function
init_loop:
.LFB15:
	.file 1 "../../../kgccfe/gnu/loop.c"
	.loc 1 404 0
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
	.loc 1 405 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$181, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -8(%ebp)
	.loc 1 407 0
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%eax, reg_address_cost@GOTOFF(%ebx)
	.loc 1 409 0
	movl	$4, copy_cost@GOTOFF(%ebx)
	.loc 1 410 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_loop, .-init_loop
	.type	compute_luids, @function
compute_luids:
.LFB16:
	.loc 1 421 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$16, %esp
.LCFI6:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L4
.L5:
	.loc 1 427 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L6
	.loc 1 431 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L8
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jg	.L10
.L8:
	.loc 1 433 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ecx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 431 0
	jmp	.L6
.L10:
	.loc 1 436 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ecx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L6:
	.loc 1 425 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L4:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L5
	.loc 1 438 0
	movl	-8(%ebp), %eax
	addl	$1, %eax
	.loc 1 439 0
	leave
	ret
.LFE16:
	.size	compute_luids, .-compute_luids
	.section	.rodata
	.type	__FUNCTION__.11912, @object
	.size	__FUNCTION__.11912, 14
__FUNCTION__.11912:
	.string	"loop_optimize"
.LC0:
	.string	"../../../kgccfe/gnu/loop.c"
	.text
.globl loop_optimize
	.type	loop_optimize, @function
loop_optimize:
.LFB17:
	.loc 1 452 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$84, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 456 0
	leal	-60(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 459 0
	movl	loop_dump_stream@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 461 0
	call	init_recog_no_volatile@PLT
	.loc 1 463 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 464 0
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, loop_max_reg@GOTOFF(%ebx)
	.loc 1 466 0
	movl	regs_may_share@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 470 0
	movl	$0, max_loop_num@GOTOFF(%ebx)
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L14
.L15:
	.loc 1 473 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L16
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L16
	.loc 1 475 0
	movl	max_loop_num@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, max_loop_num@GOTOFF(%ebx)
.L16:
	.loc 1 471 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L14:
	cmpl	$0, -24(%ebp)
	jne	.L15
	.loc 1 479 0
	movl	max_loop_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 482 0
	movl	max_loop_num@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 486 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	max_loop_num@GOTOFF(%ebx), %eax
	sall	$5, %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 488 0
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 489 0
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 493 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$128, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 498 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_and_verify_loops
	.loc 1 501 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$160, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 502 0
	movl	$0, -20(%ebp)
	jmp	.L22
.L23:
	.loc 1 503 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$7, %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	-12(%ebp), %eax
	movl	%eax, 88(%ecx)
	.loc 1 502 0
	addl	$1, -20(%ebp)
.L22:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L23
	.loc 1 508 0
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 515 0
	call	init_alias_analysis@PLT
	.loc 1 519 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L25
	.loc 1 520 0
	leal	__FUNCTION__.11912@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$520, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L25:
	.loc 1 522 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 527 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_luids
	movl	%eax, max_luid@GOTOFF(%ebx)
	.loc 1 534 0
	movl	$0, -20(%ebp)
	jmp	.L27
.L28:
	.loc 1 536 0
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 537 0
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L29
	.loc 1 534 0
	addl	$1, -20(%ebp)
.L27:
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L28
.L29:
	.loc 1 540 0
	movl	$0, -20(%ebp)
	jmp	.L31
.L32:
	.loc 1 541 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 542 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
.L33:
	.loc 1 540 0
	addl	$1, -20(%ebp)
.L31:
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L32
	.loc 1 546 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	indirect_jump_in_function_p
	movl	%eax, indirect_jump_in_function@GOTOFF(%ebx)
	.loc 1 550 0
	movl	max_loop_num@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L36
.L37:
.LBB2:
	.loc 1 552 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$7, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 554 0
	movl	-8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	jne	.L38
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 555 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_loop
.L38:
.LBE2:
	.loc 1 550 0
	subl	$1, -20(%ebp)
.L36:
	cmpl	$0, -20(%ebp)
	jns	.L37
	.loc 1 558 0
	call	end_alias_analysis@PLT
	.loc 1 561 0
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 562 0
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 563 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 564 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L42:
	.loc 1 565 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	loop_optimize, .-loop_optimize
	.type	next_insn_in_loop, @function
next_insn_in_loop:
.LFB18:
	.loc 1 577 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	.loc 1 578 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 580 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L44
	.loc 1 582 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 584 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L44
.L46:
	.loc 1 587 0
	movl	$0, 12(%ebp)
.L44:
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L48
	.loc 1 592 0
	movl	$0, 12(%ebp)
.L48:
	.loc 1 594 0
	movl	12(%ebp), %eax
	.loc 1 595 0
	popl	%ebp
	ret
.LFE18:
	.size	next_insn_in_loop, .-next_insn_in_loop
	.section	.rodata
	.type	__FUNCTION__.12066, @object
	.size	__FUNCTION__.12066, 10
__FUNCTION__.12066:
	.string	"scan_loop"
	.align 4
.LC1:
	.string	"\nLoop from %d to %d is phony.\n\n"
	.align 4
.LC2:
	.string	"\nLoop from %d to %d: %d real insns.\n"
.LC3:
	.string	"Continue at insn %d.\n"
	.text
	.type	scan_loop, @function
scan_loop:
.LFB19:
	.loc 1 609 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%edi
.LCFI15:
	pushl	%esi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$220, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -132(%ebp)
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -128(%ebp)
	.loc 1 613 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 614 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 617 0
	movl	$0, -108(%ebp)
	.loc 1 620 0
	movl	$0, -104(%ebp)
	.loc 1 622 0
	movl	$0, -100(%ebp)
	.loc 1 630 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$120, %eax
	movl	%eax, -68(%ebp)
	.loc 1 637 0
	movl	$0, -60(%ebp)
	.loc 1 640 0
	movl	8(%ebp), %eax
	movl	$0, 108(%eax)
	.loc 1 642 0
	movl	-68(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 643 0
	movl	-68(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 661 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 662 0
	jmp	.L52
.L53:
	.loc 1 667 0
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
.L52:
	.loc 1 662 0
	movl	-112(%ebp), %eax
	cmpl	-116(%ebp), %eax
	je	.L54
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L54
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L54
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L53
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L54
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L53
.L54:
	.loc 1 670 0
	movl	8(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 112(%edx)
	.loc 1 676 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L60
	.loc 1 677 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 116(%eax)
	jmp	.L62
.L60:
	.loc 1 679 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$-99, (%esp)
	call	emit_note_after@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 116(%eax)
.L62:
	.loc 1 682 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prescan_loop
	.loc 1 683 0
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	movl	$1, -212(%ebp)
	jmp	.L65
.L63:
	movl	$2, -212(%ebp)
.L65:
	movl	n_non_fixed_regs@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	imull	-212(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 690 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L66
	.loc 1 692 0
	movl	-112(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 695 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L66
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L66
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L66
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L71
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -208(%ebp)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L73
	jmp	.L74
.L71:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$703, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L73:
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -208(%ebp)
	jge	.L75
	jmp	.L66
.L74:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$703, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L75:
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L76
	movl	-112(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L78
	jmp	.L79
.L76:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$703, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L78:
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -204(%ebp)
	jle	.L80
	jmp	.L66
.L79:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$703, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L80:
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	next_label@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	.loc 1 706 0
	movl	-112(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
.L66:
	.loc 1 718 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L81
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L83
.L81:
	.loc 1 721 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L292
	.loc 1 722 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 724 0
	jmp	.L292
.L83:
	.loc 1 730 0
	movl	-132(%ebp), %eax
	movl	96(%eax), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_scan
	.loc 1 731 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_insns_in_loop
	movl	%eax, -96(%ebp)
	.loc 1 733 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 735 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-96(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 738 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L87:
	.loc 1 755 0
	movl	$0, -56(%ebp)
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -112(%ebp)
	.loc 1 756 0
	jmp	.L90
.L91:
	.loc 1 759 0
	cmpl	$0, -56(%ebp)
	je	.L92
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L92
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L92
	.loc 1 760 0
	subl	$1, -56(%ebp)
.L92:
	.loc 1 761 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L96
	.loc 1 763 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	.loc 1 764 0
	cmpl	$0, -88(%ebp)
	je	.L98
	.loc 1 765 0
	addl	$1, -56(%ebp)
.L98:
	.loc 1 766 0
	cmpl	$0, -56(%ebp)
	jne	.L178
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L102
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L104
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L106
.L104:
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -196(%ebp)
.L106:
	movl	-196(%ebp), %eax
	movl	%eax, -200(%ebp)
	jmp	.L107
.L102:
	movl	$0, -200(%ebp)
.L107:
	movl	-200(%ebp), %edx
	movl	%edx, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L178
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L178
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	jne	.L178
.LBB3:
	.loc 1 774 0
	movl	$0, -52(%ebp)
	.loc 1 775 0
	movl	$0, -48(%ebp)
	.loc 1 776 0
	movl	$0, -44(%ebp)
	.loc 1 777 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 778 0
	movl	$0, -36(%ebp)
	.loc 1 788 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	.loc 1 789 0
	cmpl	$0, -88(%ebp)
	je	.L111
	.loc 1 790 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, -44(%ebp)
	jmp	.L113
.L111:
	.loc 1 793 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	.loc 1 794 0
	cmpl	$0, -88(%ebp)
	je	.L114
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L116
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L114
.L116:
	.loc 1 795 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, -44(%ebp)
.L114:
	.loc 1 796 0
	cmpl	$0, -88(%ebp)
	je	.L113
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L113
	.loc 1 798 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 802 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	libcall_other_reg@PLT
	movl	%eax, -36(%ebp)
.L113:
	.loc 1 808 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L126
	.loc 1 810 0
	movl	$0, -124(%ebp)
	jmp	.L128
.L129:
.LBB4:
	.loc 1 812 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 813 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L130
	.loc 1 814 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -36(%ebp)
.L130:
.LBE4:
	.loc 1 810 0
	addl	$1, -124(%ebp)
.L128:
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-124(%ebp), %eax
	jg	.L129
.L126:
	.loc 1 823 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L132
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L178
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L132
	jmp	.L178
.L132:
	.loc 1 830 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L178
	.loc 1 832 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_in_basic_block_p
	testl	%eax, %eax
	jne	.L143
	cmpl	$0, -108(%ebp)
	jne	.L178
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_reg_used_before_p
	testl	%eax, %eax
	je	.L143
	jmp	.L178
.L143:
	.loc 1 855 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	movl	%eax, -92(%ebp)
	cmpl	$0, -92(%ebp)
	je	.L147
	cmpl	$0, -36(%ebp)
	je	.L149
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L147
.L149:
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L151
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	consec_sets_invariant_p
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L147
.L151:
	cmpl	$0, -108(%ebp)
	jne	.L153
	cmpl	$0, -104(%ebp)
	je	.L155
.L153:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L147
.L155:
.LBB5:
	.loc 1 874 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 891 0
	movl	-132(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L156
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L156
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L156
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L156
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %ecx
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L156
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L156
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	je	.L156
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L156
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L156
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L166
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L166
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L156
.L166:
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L156
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L156
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L156
	.loc 1 918 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %esi
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edi
	movl	-76(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	replace_rtx@PLT
	movl	%eax, 68(%esi)
	.loc 1 923 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 924 0
	movl	$0, -124(%ebp)
	jmp	.L172
.L173:
	.loc 1 926 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	addl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 925 0
	addl	$1, -124(%ebp)
.L172:
	.loc 1 924 0
	cmpl	$175, -24(%ebp)
	jg	.L174
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -192(%ebp)
	jmp	.L176
.L174:
	movl	$1, -192(%ebp)
.L176:
	movl	-192(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jg	.L173
	.loc 1 927 0
	jmp	.L178
.L156:
	.loc 1 930 0
	movl	$48, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 931 0
	movl	-28(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 932 0
	movl	-28(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 933 0
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 934 0
	movl	-28(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 935 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 936 0
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-3, %eax
	movb	%al, 28(%edx)
	.loc 1 937 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 939 0
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-9, %eax
	movb	%al, 28(%edx)
	.loc 1 940 0
	movl	-28(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 941 0
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-17, %eax
	movb	%al, 28(%edx)
	.loc 1 942 0
	movl	-44(%ebp), %eax
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	28(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 28(%ecx)
	.loc 1 943 0
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-65, %eax
	movb	%al, 28(%edx)
	.loc 1 944 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	setne	%al
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	28(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 28(%edx)
	.loc 1 945 0
	movl	-28(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 946 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 950 0
	movl	-52(%ebp), %eax
	orl	-92(%ebp), %eax
	orl	-48(%ebp), %eax
	cmpl	$1, %eax
	setg	%al
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	28(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 28(%edx)
	.loc 1 951 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -184(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L179
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -184(%ebp)
	jg	.L181
	jmp	.L182
.L179:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$951, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L182:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L183
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -180(%ebp)
	jl	.L181
	jmp	.L185
.L183:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$951, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L181:
	movl	$1, -188(%ebp)
	jmp	.L186
.L185:
	movl	$0, -188(%ebp)
.L186:
	movzbl	-188(%ebp), %eax
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	28(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 28(%ecx)
	.loc 1 952 0
	movl	-28(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 953 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subw	%ax, %dx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movw	%dx, 24(%eax)
	.loc 1 954 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movw	%dx, 26(%eax)
	.loc 1 955 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L187
	.loc 1 956 0
	movl	-28(%ebp), %eax
	movzwl	26(%eax), %eax
	movl	%eax, %esi
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	libcall_benefit
	leal	(%esi,%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movw	%dx, 26(%eax)
.L187:
	.loc 1 957 0
	movl	$0, -124(%ebp)
	jmp	.L189
.L190:
	.loc 1 958 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	addl	-24(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	%edx, -176(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L191
	movl	$-2, -172(%ebp)
	jmp	.L193
.L191:
	movl	$-1, -172(%ebp)
.L193:
	movl	-172(%ebp), %edx
	movl	-176(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 957 0
	addl	$1, -124(%ebp)
.L189:
	cmpl	$175, -24(%ebp)
	jg	.L194
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -168(%ebp)
	jmp	.L196
.L194:
	movl	$1, -168(%ebp)
.L196:
	movl	-168(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jg	.L190
	.loc 1 960 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_movables_add
	.loc 1 962 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L178
	.loc 1 968 0
	movl	-28(%ebp), %eax
	movzbl	28(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	28(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 28(%ecx)
	.loc 1 971 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 973 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_consec_insns
	movl	%eax, -112(%ebp)
	.loc 1 975 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 980 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	.loc 1 981 0
	cmpl	$0, -88(%ebp)
	je	.L200
	.loc 1 982 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$32, %eax
	movb	%al, 28(%edx)
	jmp	.L202
.L200:
	.loc 1 985 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	.loc 1 986 0
	cmpl	$0, -88(%ebp)
	je	.L203
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L205
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L203
.L205:
	.loc 1 987 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$32, %eax
	movb	%al, 28(%edx)
	.loc 1 986 0
	jmp	.L202
.L203:
	.loc 1 989 0
	movl	-28(%ebp), %eax
	movzbl	28(%eax), %edx
	andl	$-33, %edx
	movb	%dl, 28(%eax)
.L202:
	.loc 1 992 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	setne	%al
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	28(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 28(%edx)
	.loc 1 855 0
	jmp	.L178
.L147:
.LBE5:
	.loc 1 1003 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L178
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L178
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L215
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L217
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L219
.L217:
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %edx
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -160(%ebp)
.L219:
	movl	-160(%ebp), %edx
	movl	%edx, -164(%ebp)
	jmp	.L220
.L215:
	movl	$0, -164(%ebp)
.L220:
	movl	-164(%ebp), %eax
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L178
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L178
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L178
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L178
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L178
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L178
.LBB6:
	.loc 1 1013 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1014 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L178
.LBB7:
	.loc 1 1017 0
	movl	$48, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1018 0
	movl	-16(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 1019 0
	movl	-16(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1020 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1021 0
	movl	-16(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1022 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-3, %eax
	movb	%al, 28(%edx)
	.loc 1 1023 0
	movl	-16(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1024 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-9, %eax
	movb	%al, 28(%edx)
	.loc 1 1025 0
	movl	-16(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1026 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-33, %eax
	movb	%al, 28(%edx)
	.loc 1 1027 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-65, %eax
	movb	%al, 28(%edx)
	.loc 1 1028 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$16, %eax
	movb	%al, 28(%edx)
	.loc 1 1047 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L228
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L230
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -152(%ebp)
	jg	.L228
	jmp	.L232
.L230:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1048, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L232:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L233
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -148(%ebp)
	jl	.L228
	jmp	.L235
.L233:
	leal	__FUNCTION__.12066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1048, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L235:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	labels_in_range_p
	testl	%eax, %eax
	je	.L236
.L228:
	movl	$1, -156(%ebp)
	jmp	.L237
.L236:
	movl	$0, -156(%ebp)
.L237:
	movzbl	-156(%ebp), %eax
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	28(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 28(%ecx)
	.loc 1 1051 0
	cmpl	$0, -108(%ebp)
	je	.L238
	movl	-16(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L238
	.loc 1 1052 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 1051 0
	jmp	.L241
.L238:
	.loc 1 1054 0
	movl	-16(%ebp), %eax
	movl	$0, 32(%eax)
.L241:
	.loc 1 1055 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1056 0
	movl	-16(%ebp), %edx
	movzbl	28(%edx), %eax
	andl	$-2, %eax
	movb	%al, 28(%edx)
	.loc 1 1057 0
	movl	-16(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 1058 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subw	%ax, %dx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movw	%dx, 24(%eax)
	.loc 1 1059 0
	movl	-16(%ebp), %eax
	movw	$1, 26(%eax)
	.loc 1 1060 0
	movl	$0, -124(%ebp)
	.loc 1 1061 0
	jmp	.L242
.L243:
	.loc 1 1063 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	addl	-20(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
	.loc 1 1062 0
	addl	$1, -124(%ebp)
.L242:
	.loc 1 1061 0
	cmpl	$175, -20(%ebp)
	jg	.L244
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -144(%ebp)
	jmp	.L246
.L244:
	movl	$1, -144(%ebp)
.L246:
	movl	-144(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jg	.L243
	.loc 1 1065 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_movables_add
	jmp	.L178
.L96:
.LBE7:
.LBE6:
.LBE3:
	.loc 1 1073 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L248
	movl	-112(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L248
	.loc 1 1074 0
	movl	$1, -104(%ebp)
	.loc 1 1073 0
	jmp	.L178
.L248:
	.loc 1 1081 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L251
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L253
.L251:
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L254
	movl	-112(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L254
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L254
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L253
.L254:
	.loc 1 1090 0
	movl	$1, -108(%ebp)
	.loc 1 1081 0
	jmp	.L178
.L253:
	.loc 1 1091 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L178
	.loc 1 1096 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	jne	.L259
	cmpl	$0, -60(%ebp)
	jne	.L259
	.loc 1 1097 0
	movl	$0, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 1096 0
	jmp	.L178
.L259:
	.loc 1 1098 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L262
	.loc 1 1099 0
	addl	$1, -60(%ebp)
	jmp	.L178
.L262:
	.loc 1 1100 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L178
	.loc 1 1101 0
	subl	$1, -60(%ebp)
.L178:
	.loc 1 757 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -112(%ebp)
.L90:
	.loc 1 756 0
	cmpl	$0, -112(%ebp)
	jne	.L91
	.loc 1 1107 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	ignore_some_movables
	.loc 1 1114 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	force_movables
	.loc 1 1121 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_movables
	.loc 1 1129 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L266
	.loc 1 1131 0
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	move_movables
	.loc 1 1135 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L266
	.loc 1 1137 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_scan
	.loc 1 1138 0
	movl	-120(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1139 0
	jmp	.L269
.L270:
	.loc 1 1141 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
.L269:
	.loc 1 1139 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L271
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L270
.L271:
	.loc 1 1143 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1145 0
	movl	loop_max_reg@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan_update@PLT
	.loc 1 1146 0
	call	max_reg_num@PLT
	movl	%eax, loop_max_reg@GOTOFF(%ebx)
.L266:
	.loc 1 1153 0
	movl	$0, -124(%ebp)
	jmp	.L273
.L274:
	.loc 1 1154 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L275
	.loc 1 1155 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ecx
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L275:
	.loc 1 1153 0
	addl	$1, -124(%ebp)
.L273:
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-124(%ebp), %eax
	jg	.L274
	.loc 1 1159 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	load_mems
	.loc 1 1162 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jle	.L278
	.loc 1 1163 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_scan
.L278:
	.loc 1 1165 0
	movl	-120(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1166 0
	jmp	.L280
.L281:
	.loc 1 1168 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
.L280:
	.loc 1 1166 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L282
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L281
.L282:
	.loc 1 1170 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1172 0
	movl	loop_max_reg@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan_update@PLT
	.loc 1 1173 0
	call	max_reg_num@PLT
	movl	%eax, loop_max_reg@GOTOFF(%ebx)
	.loc 1 1175 0
	movl	flag_strength_reduce@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L284
	.loc 1 1177 0
	cmpl	$0, -80(%ebp)
	je	.L286
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L286
	.loc 1 1179 0
	movl	-80(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 36(%eax)
.L286:
	.loc 1 1181 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strength_reduce
	.loc 1 1183 0
	movl	loop_max_reg@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan_update@PLT
	.loc 1 1184 0
	call	max_reg_num@PLT
	movl	%eax, loop_max_reg@GOTOFF(%ebx)
	.loc 1 1186 0
	cmpl	$0, -80(%ebp)
	je	.L284
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L284
	movl	-80(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-80(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L284
	.loc 1 1188 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L284:
	.loc 1 1193 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_movables_free
	.loc 1 1195 0
	movl	-128(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1196 0
	movl	-128(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1197 0
	movl	-128(%ebp), %eax
	movl	$0, (%eax)
.L292:
	.loc 1 1198 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	scan_loop, .-scan_loop
.globl record_excess_regs
	.type	record_excess_regs, @function
record_excess_regs:
.LFB20:
	.loc 1 1207 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$52, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1212 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1214 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	ja	.L294
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$57395, %eax
	testl	%eax, %eax
	jne	.L309
	movl	-32(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L296
	jmp	.L294
.L296:
	.loc 1 1226 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L309
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L309
	.loc 1 1228 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1229 0
	jmp	.L309
.L294:
	.loc 1 1235 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1236 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L301
.L302:
.LBB8:
	.loc 1 1240 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$69, -24(%ebp)
	je	.L304
	cmpl	$101, -24(%ebp)
	je	.L305
	jmp	.L303
.L304:
	.loc 1 1243 0
	movl	$0, -8(%ebp)
	jmp	.L306
.L307:
	.loc 1 1244 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_excess_regs@PLT
	.loc 1 1243 0
	addl	$1, -8(%ebp)
.L306:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L307
	.loc 1 1245 0
	jmp	.L303
.L305:
	.loc 1 1248 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_excess_regs@PLT
.L303:
.LBE8:
	.loc 1 1236 0
	subl	$1, -12(%ebp)
.L301:
	cmpl	$0, -12(%ebp)
	jns	.L302
.L309:
	.loc 1 1252 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	record_excess_regs, .-record_excess_regs
.globl libcall_other_reg
	.type	libcall_other_reg, @function
libcall_other_reg:
.LFB21:
	.loc 1 1262 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1263 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1264 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1265 0
	movl	$0, -16(%ebp)
	.loc 1 1270 0
	jmp	.L311
.L312:
	.loc 1 1272 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L313
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L313
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L316
.L313:
	.loc 1 1274 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_excess_regs@PLT
.L316:
	.loc 1 1275 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L311:
	.loc 1 1270 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L312
	.loc 1 1278 0
	movl	-16(%ebp), %eax
	.loc 1 1279 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	libcall_other_reg, .-libcall_other_reg
	.type	reg_in_basic_block_p, @function
reg_in_basic_block_p:
.LFB22:
	.loc 1 1287 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	subl	$24, %esp
.LCFI29:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1288 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1291 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L320
	.loc 1 1292 0
	movl	$0, -20(%ebp)
	jmp	.L322
.L320:
	.loc 1 1295 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L323
.L324:
	.loc 1 1297 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -24(%ebp)
	cmpl	$5, -24(%ebp)
	ja	.L325
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L330@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L330:
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L326@GOTOFF
	.long	.L328@GOTOFF
	.long	.L328@GOTOFF
	.long	.L325@GOTOFF
	.text
.L326:
	.loc 1 1305 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L325
	.loc 1 1306 0
	movl	$1, -20(%ebp)
	jmp	.L322
.L327:
	.loc 1 1311 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L333
	.loc 1 1312 0
	movl	$1, -20(%ebp)
	jmp	.L322
.L333:
	.loc 1 1314 0
	movl	$0, -20(%ebp)
	jmp	.L322
.L328:
	.loc 1 1319 0
	movl	$0, -20(%ebp)
	jmp	.L322
.L325:
	.loc 1 1295 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L323:
	cmpl	$0, -4(%ebp)
	jne	.L324
	.loc 1 1331 0
	movl	$1, -20(%ebp)
.L322:
	movl	-20(%ebp), %eax
	.loc 1 1332 0
	leave
	ret
.LFE22:
	.size	reg_in_basic_block_p, .-reg_in_basic_block_p
	.type	libcall_benefit, @function
libcall_benefit:
.LFB23:
	.loc 1 1341 0
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
	.loc 1 1343 0
	movl	$0, -8(%ebp)
	.loc 1 1345 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1346 0
	jmp	.L338
.L339:
	.loc 1 1348 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L340
	.loc 1 1349 0
	addl	$10, -8(%ebp)
	jmp	.L342
.L340:
	.loc 1 1351 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L342
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L342
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L342
	.loc 1 1354 0
	addl	$1, -8(%ebp)
.L342:
	.loc 1 1346 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L338:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L339
	.loc 1 1357 0
	movl	-8(%ebp), %eax
	.loc 1 1358 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	libcall_benefit, .-libcall_benefit
	.type	skip_consec_insns, @function
skip_consec_insns:
.LFB24:
	.loc 1 1366 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB9:
	.loc 1 1367 0
	jmp	.L349
.L350:
	.loc 1 1374 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L351
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L351
	.loc 1 1376 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L351:
	.loc 1 1379 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1380 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L351
.LBE9:
	.loc 1 1367 0
	subl	$1, 12(%ebp)
.L349:
	cmpl	$0, 12(%ebp)
	jg	.L350
	.loc 1 1383 0
	movl	8(%ebp), %eax
	.loc 1 1384 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	skip_consec_insns, .-skip_consec_insns
	.type	ignore_some_movables, @function
ignore_some_movables:
.LFB25:
	.loc 1 1394 0
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
	.loc 1 1397 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L358
.L359:
.LBB10:
	.loc 1 1400 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1401 0
	cmpl	$0, -12(%ebp)
	je	.L360
.LBB11:
	.loc 1 1410 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L362
.L363:
	.loc 1 1411 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L364
.L365:
	.loc 1 1412 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L366
	.loc 1 1413 0
	movl	-16(%ebp), %eax
	movzbl	28(%eax), %edx
	orl	$8, %edx
	movb	%dl, 28(%eax)
.L366:
	.loc 1 1411 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L364:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L365
	.loc 1 1410 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L362:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L363
.L360:
.LBE11:
.LBE10:
	.loc 1 1397 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
.L358:
	cmpl	$0, -20(%ebp)
	jne	.L359
	.loc 1 1416 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	ignore_some_movables, .-ignore_some_movables
	.type	force_movables, @function
force_movables:
.LFB26:
	.loc 1 1426 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$16, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1429 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L372
.L373:
	.loc 1 1431 0
	movl	-12(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L374
	movl	-12(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L374
.LBB12:
	.loc 1 1433 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1434 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L377
.L378:
	.loc 1 1441 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L379
	movl	-16(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L381
.L379:
	.loc 1 1434 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L377:
	cmpl	$0, -16(%ebp)
	jne	.L378
.L381:
	.loc 1 1444 0
	cmpl	$0, -16(%ebp)
	je	.L382
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L382
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L382
	.loc 1 1447 0
	movl	$0, -16(%ebp)
.L382:
	.loc 1 1451 0
	cmpl	$0, -16(%ebp)
	je	.L374
	.loc 1 1453 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1454 0
	movl	-12(%ebp), %eax
	movzwl	24(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movzwl	24(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movw	%dx, 24(%eax)
	.loc 1 1455 0
	movl	-12(%ebp), %eax
	movzwl	26(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movzwl	26(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movw	%dx, 26(%eax)
.L374:
.LBE12:
	.loc 1 1429 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
.L372:
	cmpl	$0, -12(%ebp)
	jne	.L373
	.loc 1 1458 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	force_movables, .-force_movables
	.type	combine_movables, @function
combine_movables:
.LFB27:
	.loc 1 1467 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%edi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$64, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1469 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1478 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L390
.L391:
	.loc 1 1479 0
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L392
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L392
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$175, %eax
	jbe	.L392
	movl	-44(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L392
.LBB13:
	.loc 1 1484 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1486 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1487 0
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 1491 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L397
.L398:
	.loc 1 1492 0
	movl	-44(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L399
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L399
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L399
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$175, %eax
	jbe	.L399
	movl	-32(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L399
	movl	-32(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L399
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L406
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L408
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L399
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L399
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jb	.L399
.L408:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L412
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L406
.L412:
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	rtx_equal_for_loop_p
	testl	%eax, %eax
	je	.L399
.L406:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L414
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L399
.L414:
	.loc 1 1522 0
	movl	-44(%ebp), %eax
	movzwl	24(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movzwl	24(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movw	%dx, 24(%eax)
	.loc 1 1523 0
	movl	-44(%ebp), %eax
	movzwl	26(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movzwl	26(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movw	%dx, 26(%eax)
	.loc 1 1524 0
	movl	-32(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$8, %eax
	movb	%al, 28(%edx)
	.loc 1 1525 0
	movl	-32(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 1526 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	addl	-40(%ebp), %eax
	movb	$1, (%eax)
.L399:
	.loc 1 1491 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
.L397:
	cmpl	$0, -32(%ebp)
	jne	.L398
.L392:
.LBE13:
	.loc 1 1478 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
.L390:
	cmpl	$0, -44(%ebp)
	jne	.L391
	.loc 1 1534 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L417
.L418:
.LBB14:
	.loc 1 1537 0
	movl	$0, -24(%ebp)
	.loc 1 1541 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L419
.L420:
	.loc 1 1542 0
	movl	-44(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L421
	movl	-44(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L421
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-36(%ebp), %eax
	jne	.L421
.LBB15:
	.loc 1 1547 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1548 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1550 0
	cmpl	$0, -24(%ebp)
	jne	.L425
	.loc 1 1553 0
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1554 0
	jmp	.L421
.L425:
	.loc 1 1559 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L421
	.loc 1 1564 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L428
.L429:
	.loc 1 1565 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L430
	movl	-20(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L432
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L432
.L430:
	.loc 1 1566 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L432
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jge	.L421
.L432:
	.loc 1 1564 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
.L428:
	movl	-20(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L429
	.loc 1 1571 0
	movl	-24(%ebp), %eax
	movzwl	24(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movzwl	24(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movw	%dx, 24(%eax)
	.loc 1 1572 0
	movl	-24(%ebp), %eax
	movzwl	26(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movzwl	26(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movw	%dx, 26(%eax)
	.loc 1 1573 0
	movl	-44(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$8, %eax
	movb	%al, 28(%edx)
	.loc 1 1574 0
	movl	-44(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 36(%edx)
.L421:
.LBE15:
	.loc 1 1541 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
.L419:
	cmpl	$0, -44(%ebp)
	jne	.L420
.LBE14:
	.loc 1 1535 0
	movl	-36(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.L417:
	.loc 1 1534 0
	cmpl	$0, -36(%ebp)
	jne	.L418
	.loc 1 1582 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1583 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	combine_movables, .-combine_movables
	.type	num_unmoved_movables, @function
num_unmoved_movables:
.LFB28:
	.loc 1 1591 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	subl	$16, %esp
.LCFI53:
	.loc 1 1592 0
	movl	$0, -8(%ebp)
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	120(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L440
.L441:
	.loc 1 1596 0
	movl	-4(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L442
	.loc 1 1597 0
	addl	$1, -8(%ebp)
.L442:
	.loc 1 1595 0
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
.L440:
	cmpl	$0, -4(%ebp)
	jne	.L441
	.loc 1 1599 0
	movl	-8(%ebp), %eax
	.loc 1 1600 0
	leave
	ret
.LFE28:
	.size	num_unmoved_movables, .-num_unmoved_movables
	.type	regs_match_p, @function
regs_match_p:
.LFB29:
	.loc 1 1609 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	subl	$20, %esp
.LCFI56:
	.loc 1 1610 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1611 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1614 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L447
.L448:
	.loc 1 1615 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L449
	.loc 1 1614 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
.L447:
	cmpl	$0, -8(%ebp)
	jne	.L448
.L449:
	.loc 1 1618 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L451
.L452:
	.loc 1 1619 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L453
	.loc 1 1618 0
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
.L451:
	cmpl	$0, -4(%ebp)
	jne	.L452
.L453:
	.loc 1 1622 0
	cmpl	$0, -8(%ebp)
	je	.L455
	cmpl	$0, -4(%ebp)
	je	.L455
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-4(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jne	.L458
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L460
.L458:
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L460
	movl	-4(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L455
.L460:
	movl	$1, -20(%ebp)
	jmp	.L462
.L455:
	movl	$0, -20(%ebp)
.L462:
	movl	-20(%ebp), %eax
	.loc 1 1626 0
	leave
	ret
.LFE29:
	.size	regs_match_p, .-regs_match_p
	.section	.rodata
	.type	__FUNCTION__.13561, @object
	.size	__FUNCTION__.13561, 21
__FUNCTION__.13561:
	.string	"rtx_equal_for_loop_p"
	.text
	.type	rtx_equal_for_loop_p, @function
rtx_equal_for_loop_p:
.LFB30:
	.loc 1 1639 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%esi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$60, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1646 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L465
	.loc 1 1647 0
	movl	$1, -56(%ebp)
	jmp	.L467
.L465:
	.loc 1 1648 0
	cmpl	$0, 8(%ebp)
	je	.L468
	cmpl	$0, 12(%ebp)
	jne	.L470
.L468:
	.loc 1 1649 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L470:
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1655 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L471
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L471
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L474
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L471
.L474:
	.loc 1 1658 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L482
.L483:
	.loc 1 1659 0
	movl	-24(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L484
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L484
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L484
	.loc 1 1661 0
	movl	$1, -56(%ebp)
	jmp	.L467
.L484:
	.loc 1 1658 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L482:
	cmpl	$0, -24(%ebp)
	jne	.L483
	.loc 1 1655 0
	jmp	.L489
.L471:
	.loc 1 1663 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L489
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L489
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L492
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L489
.L492:
	.loc 1 1666 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L500
.L501:
	.loc 1 1667 0
	movl	-24(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L502
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L502
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L502
	.loc 1 1669 0
	movl	$1, -56(%ebp)
	jmp	.L467
.L502:
	.loc 1 1666 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L500:
	cmpl	$0, -24(%ebp)
	jne	.L501
.L489:
	.loc 1 1673 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	je	.L506
	.loc 1 1674 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L506:
	.loc 1 1679 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L508
	.loc 1 1680 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L508:
	.loc 1 1683 0
	cmpl	$71, -20(%ebp)
	jne	.L510
	.loc 1 1684 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L512
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	regs_match_p
	testl	%eax, %eax
	je	.L514
.L512:
	movl	$1, -52(%ebp)
	jmp	.L515
.L514:
	movl	$0, -52(%ebp)
.L515:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L467
.L510:
	.loc 1 1686 0
	cmpl	$77, -20(%ebp)
	jne	.L516
	.loc 1 1687 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L467
.L516:
	.loc 1 1688 0
	cmpl	$78, -20(%ebp)
	jne	.L518
	.loc 1 1689 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L467
.L518:
	.loc 1 1694 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1695 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L520
.L521:
	.loc 1 1697 0
	movl	-32(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$105, -48(%ebp)
	je	.L526
	cmpl	$105, -48(%ebp)
	jg	.L530
	cmpl	$69, -48(%ebp)
	je	.L524
	cmpl	$101, -48(%ebp)
	je	.L525
	cmpl	$48, -48(%ebp)
	je	.L533
	jmp	.L522
.L530:
	cmpl	$117, -48(%ebp)
	je	.L533
	cmpl	$119, -48(%ebp)
	je	.L529
	cmpl	$115, -48(%ebp)
	je	.L527
	jmp	.L522
.L529:
	.loc 1 1700 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L533
	.loc 1 1701 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L526:
	.loc 1 1705 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L533
	.loc 1 1706 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L524:
	.loc 1 1711 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L536
	.loc 1 1712 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L536:
	.loc 1 1715 0
	movl	$0, -28(%ebp)
	jmp	.L538
.L539:
	.loc 1 1716 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_for_loop_p
	testl	%eax, %eax
	jne	.L540
	.loc 1 1718 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L540:
	.loc 1 1715 0
	addl	$1, -28(%ebp)
.L538:
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L539
	.loc 1 1719 0
	jmp	.L533
.L525:
	.loc 1 1722 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_for_loop_p
	testl	%eax, %eax
	jne	.L533
	.loc 1 1724 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L527:
	.loc 1 1728 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L533
	.loc 1 1729 0
	movl	$0, -56(%ebp)
	jmp	.L467
.L522:
	.loc 1 1743 0
	leal	__FUNCTION__.13561@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1743, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L533:
	.loc 1 1695 0
	subl	$1, -32(%ebp)
.L520:
	cmpl	$0, -32(%ebp)
	jns	.L521
	.loc 1 1746 0
	movl	$1, -56(%ebp)
.L467:
	movl	-56(%ebp), %eax
	.loc 1 1747 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	rtx_equal_for_loop_p, .-rtx_equal_for_loop_p
	.type	add_label_notes, @function
add_label_notes:
.LFB31:
	.loc 1 1757 0
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
	.loc 1 1758 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1763 0
	cmpl	$77, -24(%ebp)
	jne	.L550
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L550
	.loc 1 1770 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L553
.L554:
	.loc 1 1771 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L555
	.loc 1 1773 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1775 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L555
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
.L555:
	.loc 1 1770 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L553:
	cmpl	$0, -8(%ebp)
	jne	.L554
.L550:
	.loc 1 1780 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1781 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L559:
	.loc 1 1783 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L560
	.loc 1 1784 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	jmp	.L562
.L560:
	.loc 1 1785 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L562
	.loc 1 1786 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L564
.L565:
	.loc 1 1787 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	.loc 1 1786 0
	subl	$1, -16(%ebp)
.L564:
	cmpl	$0, -16(%ebp)
	jns	.L565
.L562:
	.loc 1 1781 0
	subl	$1, -20(%ebp)
.L558:
	cmpl	$0, -20(%ebp)
	jns	.L559
	.loc 1 1789 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	add_label_notes, .-add_label_notes
	.section	.rodata
	.type	__FUNCTION__.13831, @object
	.size	__FUNCTION__.13831, 14
__FUNCTION__.13831:
	.string	"move_movables"
.LC4:
	.string	"Insn %d: regno %d (life %d), "
.LC5:
	.string	"consec %d, "
.LC6:
	.string	"cond "
.LC7:
	.string	"force "
.LC8:
	.string	"global "
.LC9:
	.string	"done "
.LC10:
	.string	"move-insn "
.LC11:
	.string	"matches %d "
.LC12:
	.string	"forces %d "
.LC13:
	.string	"savings %d "
.LC14:
	.string	"halved since already moved "
.LC15:
	.string	" moved to %d"
.LC16:
	.string	"not desirable"
.LC17:
	.string	"not safe"
	.text
	.type	move_movables, @function
move_movables:
.LFB32:
	.loc 1 1801 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%edi
.LCFI69:
	pushl	%esi
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$236, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1802 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -160(%ebp)
	.loc 1 1803 0
	movl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	.loc 1 1804 0
	movl	$0, -152(%ebp)
	.loc 1 1807 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1808 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1812 0
	movl	-156(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -132(%ebp)
	.loc 1 1813 0
	movl	-156(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -128(%ebp)
	.loc 1 1815 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L569
.L570:
	.loc 1 1819 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L571
	.loc 1 1821 0
	movl	-148(%ebp), %eax
	movzwl	24(%eax), %eax
	movswl	%ax,%ecx
	movl	-148(%ebp), %eax
	movl	20(%eax), %esi
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
	.loc 1 1823 0
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L573
	.loc 1 1824 0
	movl	-148(%ebp), %eax
	movl	16(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L573:
	.loc 1 1825 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L575
	.loc 1 1826 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L575:
	.loc 1 1827 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L577
	.loc 1 1828 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L577:
	.loc 1 1829 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L579
	.loc 1 1830 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L579:
	.loc 1 1831 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L581
	.loc 1 1832 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L581:
	.loc 1 1833 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L583
	.loc 1 1834 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L583:
	.loc 1 1835 0
	movl	-148(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L585
	.loc 1 1836 0
	movl	-148(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L585:
	.loc 1 1838 0
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L571
	.loc 1 1839 0
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L571:
	.loc 1 1846 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L588
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L590
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L588
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L593
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L588
.L593:
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L590
	movl	-148(%ebp), %eax
	movl	(%eax), %ecx
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	consec_sets_invariant_p
	cmpl	$1, %eax
	jne	.L588
.L590:
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L596
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L588
.L596:
.LBB16:
	.loc 1 1859 0
	movl	-148(%ebp), %eax
	movzwl	26(%eax), %eax
	cwtl
	movl	%eax, -116(%ebp)
	.loc 1 1864 0
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1865 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1867 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L598
	.loc 1 1868 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L598:
	.loc 1 1870 0
	movl	-160(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movzbl	13(%eax), %eax
	testb	%al, %al
	je	.L600
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L600
	.loc 1 1871 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L600:
	.loc 1 1886 0
	movl	-124(%ebp), %eax
	addl	-128(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L603
	movl	flag_move_all_movables@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L603
	movl	16(%ebp), %eax
	movl	%eax, %edx
	imull	-116(%ebp), %edx
	movl	-148(%ebp), %eax
	movzwl	24(%eax), %eax
	cwtl
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -212(%ebp)
	movl	-160(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movzbl	13(%eax), %eax
	testb	%al, %al
	je	.L606
	movl	20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -208(%ebp)
	jmp	.L608
.L606:
	movl	20(%ebp), %eax
	movl	%eax, -208(%ebp)
.L608:
	movl	-208(%ebp), %ecx
	cmpl	%ecx, -212(%ebp)
	jge	.L603
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L610
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movzbl	28(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L610
	movl	-160(%ebp), %eax
	movl	8(%eax), %edx
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movl	20(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L610
.L603:
.LBB17:
	.loc 1 1895 0
	movl	$0, -104(%ebp)
	.loc 1 1899 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L613
	movl	-148(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L613
.LBB18:
	.loc 1 1907 0
	movl	-148(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L616
.L617:
	movl	-108(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -108(%ebp)
.L616:
	movl	-108(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L617
	.loc 1 1908 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1910 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1914 0
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1915 0
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1916 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1917 0
	movl	regs_may_share@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	regs_may_share@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1921 0
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1923 0
	cmpl	$0, -152(%ebp)
	jne	.L619
	.loc 1 1924 0
	movl	-96(%ebp), %eax
	movl	%eax, -152(%ebp)
.L619:
	.loc 1 1926 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L623
	.loc 1 1927 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1899 0
	jmp	.L623
.L613:
.LBE18:
	.loc 1 1932 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L624
.LBB19:
	.loc 1 1936 0
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L626
.L627:
	.loc 1 1940 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L628
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L628
	.loc 1 1942 0
	leal	__FUNCTION__.13831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1942, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L628:
	.loc 1 1947 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L631
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L631
	.loc 1 1950 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1951 0
	jmp	.L634
.L635:
	.loc 1 1952 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -80(%ebp)
.L634:
	.loc 1 1951 0
	movl	-80(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jne	.L635
.L631:
	.loc 1 1955 0
	movl	-120(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1956 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -120(%ebp)
	.loc 1 1964 0
	jmp	.L636
.L637:
	.loc 1 1965 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-80(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
.L636:
	.loc 1 1964 0
	cmpl	$0, -120(%ebp)
	je	.L638
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L637
.L638:
	.loc 1 1936 0
	subl	$1, -112(%ebp)
.L626:
	cmpl	$0, -112(%ebp)
	jns	.L627
	.loc 1 1968 0
	call	start_sequence@PLT
	.loc 1 1969 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1970 0
	call	get_insns@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1971 0
	call	end_sequence@PLT
	.loc 1 1973 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	.loc 1 1975 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1976 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L641
	.loc 1 1977 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -204(%ebp)
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L643
	movl	$3, -200(%ebp)
	jmp	.L645
.L643:
	movl	$4, -200(%ebp)
.L645:
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-200(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.L641:
	.loc 1 1981 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L646
	.loc 1 1982 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L646:
	.loc 1 1985 0
	subl	$3, 16(%ebp)
	jmp	.L623
.L624:
.LBE19:
	.loc 1 1989 0
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L648
.L649:
.LBB20:
	.loc 1 1996 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L650
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L650
	.loc 1 1998 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
.L650:
	.loc 1 2003 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L653
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L653
.LBB21:
	.loc 1 2006 0
	movl	$0, -64(%ebp)
	.loc 1 2007 0
	movl	$0, -60(%ebp)
	.loc 1 2008 0
	movl	$0, -56(%ebp)
	.loc 1 2010 0
	movl	$0, -104(%ebp)
	.loc 1 2011 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L656
.L657:
.LBB22:
	.loc 1 2018 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L658
	.loc 1 2021 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2025 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L660
.L661:
	.loc 1 2027 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L662
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L664
.L662:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L665
.L664:
	.loc 1 2026 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L660:
	.loc 1 2025 0
	movl	-44(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jne	.L661
.L665:
	.loc 1 2043 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L666
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L666
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L666
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L666
	.loc 1 2049 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2050 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L671
	.loc 1 2051 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L671:
	.loc 1 2052 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2053 0
	movl	-68(%ebp), %eax
	movl	%eax, -56(%ebp)
.L666:
	.loc 1 2058 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L673
	cmpl	$0, -64(%ebp)
	je	.L673
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L673
	.loc 1 2061 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_after
.L673:
	.loc 1 2065 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L677
	.loc 1 2067 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_call_insn_hoist
	movl	%eax, -72(%ebp)
	.loc 1 2071 0
	movl	-68(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L681
	.loc 1 2072 0
	movl	-68(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 76(%eax)
	jmp	.L681
.L677:
	.loc 1 2076 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -72(%ebp)
.L681:
	.loc 1 2077 0
	cmpl	$0, -104(%ebp)
	jne	.L682
	.loc 1 2078 0
	movl	-72(%ebp), %eax
	movl	%eax, -104(%ebp)
.L682:
	.loc 1 2079 0
	movl	-68(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L684
	.loc 1 2080 0
	movl	-72(%ebp), %eax
	movl	%eax, -56(%ebp)
.L684:
	.loc 1 2081 0
	movl	-68(%ebp), %eax
	movl	68(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2082 0
	movl	-68(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2083 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L658:
.LBE22:
	.loc 1 2012 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
.L656:
	.loc 1 2011 0
	movl	-68(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jne	.L657
	.loc 1 2085 0
	cmpl	$0, -152(%ebp)
	jne	.L653
	.loc 1 2086 0
	movl	-104(%ebp), %eax
	movl	%eax, -152(%ebp)
.L653:
.LBE21:
	.loc 1 2088 0
	movl	-148(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L688
.LBB23:
	.loc 1 2093 0
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2097 0
	call	start_sequence@PLT
	.loc 1 2098 0
	movl	-148(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L773
	movl	%eax, %edx
	xorl	%eax, %eax
.L773:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$3, 24(%esp)
	movl	$1, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$93, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2104 0
	cmpl	$0, -32(%ebp)
	jne	.L690
	.loc 1 2105 0
	leal	__FUNCTION__.13831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2105, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L690:
	.loc 1 2106 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L692
	.loc 1 2107 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L692:
	.loc 1 2108 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2109 0
	call	end_sequence@PLT
	.loc 1 2110 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -72(%ebp)
	jmp	.L694
.L688:
.LBE23:
	.loc 1 2112 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L695
	.loc 1 2114 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_call_insn_hoist
	movl	%eax, -72(%ebp)
	.loc 1 2118 0
	movl	-120(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L694
	.loc 1 2119 0
	movl	-120(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 76(%eax)
	jmp	.L694
.L695:
	.loc 1 2122 0
	movl	-148(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-112(%ebp), %eax
	jne	.L699
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L699
.LBB24:
	.loc 1 2127 0
	call	start_sequence@PLT
	.loc 1 2128 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 2129 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2130 0
	call	end_sequence@PLT
	.loc 1 2132 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_label_notes
	.loc 1 2134 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -72(%ebp)
	.loc 1 2135 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L694
	.loc 1 2136 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -196(%ebp)
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L704
	movl	$3, -192(%ebp)
	jmp	.L706
.L704:
	movl	$4, -192(%ebp)
.L706:
	movl	-196(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-192(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	.loc 1 2122 0
	jmp	.L694
.L699:
.LBE24:
	.loc 1 2140 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -72(%ebp)
.L694:
	.loc 1 2142 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L707
	.loc 1 2144 0
	movl	-120(%ebp), %eax
	movl	68(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2145 0
	movl	-120(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2153 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L707
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L707
	.loc 1 2155 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L707:
	.loc 1 2158 0
	cmpl	$0, -152(%ebp)
	jne	.L711
	.loc 1 2159 0
	movl	-72(%ebp), %eax
	movl	%eax, -152(%ebp)
.L711:
	.loc 1 2161 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L713
	.loc 1 2162 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L713:
	.loc 1 2168 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L715
	.loc 1 2170 0
	movl	-68(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2171 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2172 0
	movl	-68(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%edx)
.L715:
	.loc 1 2175 0
	movl	-120(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2176 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2177 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2185 0
	jmp	.L717
.L718:
	.loc 1 2186 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
.L717:
	.loc 1 2185 0
	cmpl	$0, -120(%ebp)
	je	.L719
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L718
.L719:
.LBE20:
	.loc 1 1989 0
	subl	$1, -112(%ebp)
.L648:
	cmpl	$0, -112(%ebp)
	jns	.L649
	.loc 1 2190 0
	subl	$3, 16(%ebp)
.L623:
	.loc 1 2195 0
	movl	-124(%ebp), %eax
	addl	-128(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 2198 0
	movl	-160(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 13(%eax)
	.loc 1 2201 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L722
.LBB25:
	.loc 1 2204 0
	movl	$0, -24(%ebp)
	jmp	.L724
.L725:
	.loc 1 2205 0
	movl	-160(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	addl	-124(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2204 0
	addl	$1, -24(%ebp)
.L724:
	cmpl	$175, -124(%ebp)
	jg	.L726
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -188(%ebp)
	jmp	.L728
.L726:
	movl	$1, -188(%ebp)
.L728:
	movl	-188(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jg	.L725
.L722:
.LBE25:
	.loc 1 2208 0
	movl	-148(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$8, %eax
	movb	%al, 28(%edx)
	.loc 1 2214 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -184(%ebp)
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L729
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -184(%ebp)
	jg	.L731
	jmp	.L732
.L729:
	leal	__FUNCTION__.13831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2214, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L731:
	.loc 1 2218 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L732:
	.loc 1 2219 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	-136(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L733
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -180(%ebp)
	jl	.L735
	jmp	.L736
.L733:
	leal	__FUNCTION__.13831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2219, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L735:
	.loc 1 2220 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-124(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
.L736:
	.loc 1 2224 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L757
	.loc 1 2225 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L739
.L740:
	.loc 1 2226 0
	movl	-108(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-148(%ebp), %eax
	jne	.L741
.LBB26:
	.loc 1 2241 0
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L743
	.loc 1 2242 0
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-132(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L745
.L743:
	.loc 1 2244 0
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-132(%ebp), %esi
	movl	-148(%ebp), %eax
	movl	8(%eax), %edx
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, (%esi)
.L745:
	.loc 1 2250 0
	movl	-108(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$8, %eax
	movb	%al, 28(%edx)
	.loc 1 2253 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L746
	.loc 1 2255 0
	movl	-108(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	jmp	.L748
.L746:
	.loc 1 2257 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L748:
	.loc 1 2261 0
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	addl	-128(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 2265 0
	movl	-148(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L741
.LBB27:
	.loc 1 2268 0
	movl	$0, -16(%ebp)
	.loc 1 2269 0
	jmp	.L750
.L751:
	.loc 1 2271 0
	movl	-160(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-108(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	sall	$4, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2270 0
	addl	$1, -16(%ebp)
.L750:
	.loc 1 2269 0
	cmpl	$175, -124(%ebp)
	jg	.L752
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -176(%ebp)
	jmp	.L754
.L752:
	movl	$1, -176(%ebp)
.L754:
	movl	-176(%ebp), %ecx
	cmpl	-16(%ebp), %ecx
	jg	.L751
.L741:
.LBE27:
.LBE26:
	.loc 1 2225 0
	movl	-108(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -108(%ebp)
.L739:
	cmpl	$0, -108(%ebp)
	jne	.L740
	.loc 1 1886 0
	jmp	.L757
.L610:
.LBE17:
	.loc 1 2275 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L757
	.loc 1 2276 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1846 0
	jmp	.L757
.L588:
.LBE16:
	.loc 1 2278 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L757
	movl	-148(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L757
	.loc 1 2279 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L757:
	.loc 1 2281 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L760
	.loc 1 2282 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L760:
	.loc 1 1815 0
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -148(%ebp)
.L569:
	cmpl	$0, -148(%ebp)
	jne	.L570
	.loc 1 2285 0
	cmpl	$0, -152(%ebp)
	jne	.L763
	.loc 1 2286 0
	movl	-140(%ebp), %eax
	movl	%eax, -152(%ebp)
.L763:
	.loc 1 2290 0
	movl	-152(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L765
.L766:
	.loc 1 2291 0
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L767
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L767
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L770
.L767:
	.loc 1 2294 0
	movl	-156(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	44(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
	.loc 1 2295 0
	movl	-156(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
	.loc 1 2296 0
	movl	-144(%ebp), %eax
	movl	$-1, 52(%eax)
.L770:
	.loc 1 2290 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
.L765:
	movl	-144(%ebp), %eax
	cmpl	-136(%ebp), %eax
	jne	.L766
	.loc 1 2300 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2301 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2302 0
	addl	$236, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	move_movables, .-move_movables
	.type	loop_movables_add, @function
loop_movables_add:
.LFB33:
	.loc 1 2309 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	.loc 1 2310 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L775
	.loc 1 2311 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L777
.L775:
	.loc 1 2313 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 44(%edx)
.L777:
	.loc 1 2314 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2315 0
	popl	%ebp
	ret
.LFE33:
	.size	loop_movables_add, .-loop_movables_add
	.type	loop_movables_free, @function
loop_movables_free:
.LFB34:
	.loc 1 2321 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$20, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2325 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L780
.L781:
	.loc 1 2327 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2328 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2325 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L780:
	cmpl	$0, -12(%ebp)
	jne	.L781
	.loc 1 2330 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	loop_movables_free, .-loop_movables_free
	.type	count_nonfixed_reads, @function
count_nonfixed_reads:
.LFB35:
	.loc 1 2403 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%esi
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$64, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2409 0
	cmpl	$0, 12(%ebp)
	jne	.L785
	.loc 1 2410 0
	movl	$0, -44(%ebp)
	jmp	.L787
.L785:
	.loc 1 2412 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2413 0
	movl	-28(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -48(%ebp)
	cmpl	$15, -48(%ebp)
	ja	.L788
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-48(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	andl	$57523, %eax
	testl	%eax, %eax
	jne	.L789
	movl	-52(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L790
	jmp	.L788
.L789:
	.loc 1 2423 0
	movl	$0, -44(%ebp)
	jmp	.L787
.L790:
	.loc 1 2426 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_nonfixed_reads
	addl	%eax, %esi
	movl	%esi, -44(%ebp)
	jmp	.L787
.L788:
	.loc 1 2433 0
	movl	$0, -16(%ebp)
	.loc 1 2434 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2435 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L791
.L792:
	.loc 1 2437 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L793
	.loc 1 2438 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_nonfixed_reads
	addl	%eax, -16(%ebp)
.L793:
	.loc 1 2439 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L795
.LBB28:
	.loc 1 2442 0
	movl	$0, -12(%ebp)
	jmp	.L797
.L798:
	.loc 1 2443 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_nonfixed_reads
	addl	%eax, -16(%ebp)
	.loc 1 2442 0
	addl	$1, -12(%ebp)
.L797:
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L798
.L795:
.LBE28:
	.loc 1 2435 0
	subl	$1, -24(%ebp)
.L791:
	cmpl	$0, -24(%ebp)
	jns	.L792
	.loc 1 2446 0
	movl	-16(%ebp), %ecx
	movl	%ecx, -44(%ebp)
.L787:
	movl	-44(%ebp), %eax
	.loc 1 2447 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	count_nonfixed_reads, .-count_nonfixed_reads
	.type	prescan_loop, @function
prescan_loop:
.LFB36:
	.loc 1 2458 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$68, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2459 0
	movl	$1, -48(%ebp)
	.loc 1 2461 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2462 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2463 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2468 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2470 0
	movl	indirect_jump_in_function@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2471 0
	movl	-44(%ebp), %eax
	movl	$0, 156(%eax)
	.loc 1 2472 0
	movl	-44(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2473 0
	movl	-44(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 2474 0
	movl	-44(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 2475 0
	movl	-44(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 2476 0
	movl	-44(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 2477 0
	movl	-44(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 2478 0
	movl	8(%ebp), %eax
	movl	$1, 68(%eax)
	.loc 1 2480 0
	movl	-44(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 2481 0
	movl	-44(%ebp), %eax
	movl	$0, 108(%eax)
	.loc 1 2482 0
	movl	-44(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 2483 0
	movl	-44(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 2484 0
	movl	-44(%ebp), %eax
	movl	$0, 96(%eax)
	.loc 1 2485 0
	movl	-44(%ebp), %eax
	movl	$0, 112(%eax)
	.loc 1 2487 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 2489 0
	movl	-40(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L802
.L803:
	.loc 1 2492 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L804
	.loc 1 2494 0
	movl	-44(%ebp), %eax
	movl	$1, 156(%eax)
	.loc 1 2495 0
	jmp	.L806
.L804:
	.loc 1 2490 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
.L802:
	.loc 1 2489 0
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L806
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L803
.L806:
	.loc 1 2499 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L808
.L809:
	.loc 1 2502 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	cmpl	$43, -56(%ebp)
	je	.L812
	cmpl	$43, -56(%ebp)
	ja	.L815
	cmpl	$42, -56(%ebp)
	je	.L811
	jmp	.L810
.L815:
	cmpl	$44, -56(%ebp)
	je	.L813
	cmpl	$47, -56(%ebp)
	je	.L814
	jmp	.L810
.L814:
	.loc 1 2505 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L816
	.loc 1 2507 0
	addl	$1, -48(%ebp)
	.loc 1 2509 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L810
.L816:
	.loc 1 2511 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L810
	.loc 1 2512 0
	subl	$1, -48(%ebp)
	.loc 1 2513 0
	jmp	.L810
.L813:
	.loc 1 2516 0
	movl	-52(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L820
	.loc 1 2518 0
	movl	-44(%ebp), %eax
	movl	$1, 104(%eax)
	.loc 1 2519 0
	movl	-44(%ebp), %eax
	movl	$1, 8(%eax)
	jmp	.L822
.L820:
	.loc 1 2521 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	pure_call_p@PLT
	testl	%eax, %eax
	je	.L822
	.loc 1 2522 0
	movl	-44(%ebp), %eax
	movl	$1, 8(%eax)
.L822:
	.loc 1 2523 0
	movl	-44(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 2524 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L810
	.loc 1 2525 0
	movl	-44(%ebp), %eax
	movl	$1, 24(%eax)
	.loc 1 2526 0
	jmp	.L810
.L812:
	.loc 1 2529 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L811
.LBB29:
	.loc 1 2531 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2533 0
	cmpl	$0, -28(%ebp)
	je	.L827
.LBB30:
	.loc 1 2535 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2538 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L829
	.loc 1 2540 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2541 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L831
.L829:
	.loc 1 2545 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2546 0
	movl	$0, -16(%ebp)
.L831:
	.loc 1 2551 0
	cmpl	$0, -20(%ebp)
	je	.L832
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L832
	.loc 1 2553 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L835
	.loc 1 2556 0
	movl	-44(%ebp), %eax
	movl	$1, 24(%eax)
	.loc 1 2557 0
	jmp	.L811
.L835:
	.loc 1 2559 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L832
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L832
	.loc 1 2563 0
	movl	-44(%ebp), %eax
	movl	$1, 24(%eax)
	.loc 1 2564 0
	jmp	.L811
.L832:
	.loc 1 2568 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2569 0
	movl	$0, -16(%ebp)
	.loc 1 2571 0
	cmpl	$0, -20(%ebp)
	jne	.L831
	jmp	.L811
.L827:
.LBE30:
	.loc 1 2576 0
	movl	-44(%ebp), %eax
	movl	$1, 24(%eax)
.L811:
.LBE29:
	.loc 1 2582 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	volatile_refs_p@PLT
	testl	%eax, %eax
	je	.L840
	.loc 1 2583 0
	movl	-44(%ebp), %eax
	movl	$1, 16(%eax)
.L840:
	.loc 1 2585 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L842
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L844
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L842
.L844:
	.loc 1 2588 0
	movl	-44(%ebp), %eax
	movl	$1, 20(%eax)
.L842:
	.loc 1 2590 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_addr_stored@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 2591 0
	movl	-44(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	jne	.L846
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L846
	.loc 1 2592 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 116(%eax)
.L846:
	.loc 1 2594 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L810
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L810
	.loc 1 2595 0
	movl	-44(%ebp), %eax
	movl	$1, 24(%eax)
.L810:
	.loc 1 2500 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L808:
	.loc 1 2499 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L809
	.loc 1 2604 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L852
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L852
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L852
	.loc 1 2615 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L856
.L857:
	.loc 1 2617 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	insert_loop_mem@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 2616 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L856:
	.loc 1 2615 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L857
.L852:
	.loc 1 2622 0
	movl	-44(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L858
.LBB31:
	.loc 1 2624 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2626 0
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 88(%eax)
.L858:
.LBE31:
	.loc 1 2629 0
	movl	-44(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L862
.LBB32:
	.loc 1 2631 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2633 0
	movl	-8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$4, %eax
	movb	%al, 3(%edx)
	.loc 1 2634 0
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 88(%eax)
.L862:
.LBE32:
	.loc 1 2637 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	prescan_loop, .-prescan_loop
	.type	invalidate_loops_containing_label, @function
invalidate_loops_containing_label:
.LFB37:
	.loc 1 2644 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	subl	$16, %esp
.LCFI90:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2646 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ecx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L864
.L865:
	.loc 1 2647 0
	movl	-4(%ebp), %eax
	movl	$1, 84(%eax)
	.loc 1 2646 0
	movl	-4(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -4(%ebp)
.L864:
	cmpl	$0, -4(%ebp)
	jne	.L865
	.loc 1 2648 0
	leave
	ret
.LFE37:
	.size	invalidate_loops_containing_label, .-invalidate_loops_containing_label
	.section	.rodata
	.type	__FUNCTION__.14696, @object
	.size	__FUNCTION__.14696, 22
__FUNCTION__.14696:
	.string	"find_and_verify_loops"
	.align 4
.LC18:
	.string	"\nLoop at %d ignored due to setjmp.\n"
	.text
	.type	find_and_verify_loops, @function
find_and_verify_loops:
.LFB38:
	.loc 1 2658 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%esi
.LCFI93:
	pushl	%ebx
.LCFI94:
	addl	$-128, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2666 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2668 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_luids
	.loc 1 2673 0
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	.loc 1 2678 0
	movl	$0, -84(%ebp)
	.loc 1 2679 0
	movl	$0, -80(%ebp)
	.loc 1 2680 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L869
.L870:
	.loc 1 2682 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L871
	.loc 1 2683 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -112(%ebp)
	cmpl	$-95, -112(%ebp)
	je	.L874
	cmpl	$-95, -112(%ebp)
	jg	.L877
	cmpl	$-96, -112(%ebp)
	je	.L873
	jmp	.L871
.L877:
	cmpl	$-94, -112(%ebp)
	je	.L875
	cmpl	$-93, -112(%ebp)
	je	.L876
	jmp	.L871
.L873:
	.loc 1 2686 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$7, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2687 0
	movl	-76(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2688 0
	addl	$1, -84(%ebp)
	.loc 1 2689 0
	movl	-76(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 100(%edx)
	.loc 1 2690 0
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 2691 0
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2692 0
	jmp	.L871
.L875:
	.loc 1 2695 0
	movl	-80(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 96(%edx)
	.loc 1 2696 0
	jmp	.L871
.L876:
	.loc 1 2699 0
	movl	-80(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 2700 0
	jmp	.L871
.L874:
	.loc 1 2703 0
	cmpl	$0, -80(%ebp)
	jne	.L878
	.loc 1 2704 0
	leal	__FUNCTION__.14696@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2704, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L878:
	.loc 1 2706 0
	movl	-80(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 104(%edx)
	.loc 1 2707 0
	movl	-80(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -80(%ebp)
.L871:
	.loc 1 2714 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L880
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L880
	.loc 1 2719 0
	movl	-80(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L883
.L884:
	.loc 1 2721 0
	movl	-72(%ebp), %eax
	movl	$1, 84(%eax)
	.loc 1 2722 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L885
	.loc 1 2723 0
	movl	-72(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L885:
	.loc 1 2719 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -72(%ebp)
.L883:
	cmpl	$0, -72(%ebp)
	jne	.L884
.L880:
	.loc 1 2731 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2680 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
.L869:
	cmpl	$0, -92(%ebp)
	jne	.L870
	.loc 1 2736 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L888
.L889:
	.loc 1 2737 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	invalidate_loops_containing_label
	.loc 1 2736 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
.L888:
	cmpl	$0, -88(%ebp)
	jne	.L889
	.loc 1 2741 0
	leal	invalidate_loops_containing_label@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	for_each_eh_label@PLT
	.loc 1 2756 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L891
.L892:
	.loc 1 2757 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L893
.LBB33:
	.loc 1 2759 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2761 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L895
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L897
.L895:
.LBB34:
	.loc 1 2763 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2764 0
	cmpl	$0, -64(%ebp)
	je	.L897
	.loc 1 2765 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	invalidate_loops_containing_label
.L897:
.LBE34:
	.loc 1 2768 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L893
	.loc 1 2771 0
	movl	-92(%ebp), %eax
	movl	44(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 2774 0
	cmpl	$0, -68(%ebp)
	je	.L893
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L901
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L893
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L893
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L893
.L901:
	call	get_max_uid@PLT
	movl	max_uid_for_loop@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jge	.L893
.LBB35:
	.loc 1 2783 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2784 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2786 0
	movl	$0, -48(%ebp)
	.loc 1 2790 0
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2791 0
	jmp	.L906
.L907:
	.loc 1 2795 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
.L906:
	.loc 1 2791 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L908
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L910
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L908
.L910:
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L907
.L908:
	.loc 1 2801 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L912
	.loc 1 2803 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2804 0
	cmpl	$0, -52(%ebp)
	je	.L912
	.loc 1 2806 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L915
.L916:
	.loc 1 2808 0
	movl	-48(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L912
	.loc 1 2807 0
	movl	-48(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -48(%ebp)
.L915:
	.loc 1 2806 0
	cmpl	$0, -48(%ebp)
	jne	.L916
.L912:
	.loc 1 2815 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L918
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L918
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L918
	.loc 1 2817 0
	movl	-68(%ebp), %eax
	movl	%eax, -48(%ebp)
.L918:
	.loc 1 2828 0
	cmpl	$0, -48(%ebp)
	jne	.L893
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L893
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L893
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L893
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L893
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L893
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	-56(%ebp), %eax
	jne	.L893
	movl	-92(%ebp), %eax
	movl	20(%eax), %edx
	leal	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	insns_safe_to_move_p@PLT
	testl	%eax, %eax
	je	.L893
.LBB36:
	.loc 1 2842 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L930
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L932
.L930:
	call	get_last_insn@PLT
	movl	%eax, -108(%ebp)
.L932:
	movl	-108(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2843 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2849 0
	movl	-96(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2850 0
	jmp	.L933
.L934:
	.loc 1 2851 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L935
	.loc 1 2852 0
	movl	-28(%ebp), %eax
	movl	%eax, -96(%ebp)
.L935:
	.loc 1 2850 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L933:
	cmpl	$0, -28(%ebp)
	je	.L937
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L934
.L937:
	.loc 1 2854 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L939
.L940:
	.loc 1 2855 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L941
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L943
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L943
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L943
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L943
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L941
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L941
.L943:
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L949
.L941:
	.loc 1 2854 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L939:
	cmpl	$0, -36(%ebp)
	jne	.L940
.L949:
	.loc 1 2866 0
	cmpl	$0, -36(%ebp)
	jne	.L950
	.loc 1 2867 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L952
.L953:
	.loc 1 2868 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L954
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L956
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L956
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L956
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L956
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L954
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L954
.L956:
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L950
.L954:
	.loc 1 2867 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L952:
	cmpl	$0, -36(%ebp)
	jne	.L953
.L950:
	.loc 1 2879 0
	cmpl	$0, -36(%ebp)
	je	.L893
.LBB37:
	.loc 1 2881 0
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2882 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_after@PLT
	movl	%eax, -100(%ebp)
	.loc 1 2885 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2889 0
	movl	-100(%ebp), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L963
.LBB38:
	.loc 1 2903 0
	cmpl	$0, -36(%ebp)
	jne	.L965
.LBB39:
	.loc 1 2907 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2908 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn_before@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2909 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2910 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 2911 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_before@PLT
	movl	%eax, -36(%ebp)
.L965:
.LBE39:
	.loc 1 2916 0
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	squeeze_notes@PLT
	testb	%al, %al
	je	.L967
	.loc 1 2917 0
	leal	__FUNCTION__.14696@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2917, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L967:
	.loc 1 2918 0
	movl	-96(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	reorder_insns@PLT
	.loc 1 2921 0
	movl	-100(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2922 0
	jmp	.L969
.L970:
	.loc 1 2924 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2923 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L969:
	.loc 1 2922 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L970
	.loc 1 2931 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L972
	.loc 1 2933 0
	movl	$0, -20(%ebp)
	movl	-68(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2934 0
	jmp	.L974
.L975:
	.loc 1 2936 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L976
	.loc 1 2938 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 3(%eax)
	.loc 1 2939 0
	cmpl	$0, -20(%ebp)
	je	.L978
	.loc 1 2940 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L981
.L978:
	.loc 1 2942 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 120(%eax)
	.loc 1 2943 0
	jmp	.L981
.L976:
	.loc 1 2935 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L974:
	.loc 1 2934 0
	cmpl	$0, -16(%ebp)
	jne	.L975
.L981:
	.loc 1 2946 0
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L982
.L983:
	.loc 1 2948 0
	movl	-72(%ebp), %eax
	movl	124(%eax), %eax
	leal	-1(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 2947 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -72(%ebp)
.L982:
	.loc 1 2946 0
	cmpl	$0, -72(%ebp)
	je	.L984
	movl	-72(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L983
.L984:
	.loc 1 2952 0
	cmpl	$0, -16(%ebp)
	jne	.L972
	.loc 1 2953 0
	leal	__FUNCTION__.14696@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2953, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L972:
	.loc 1 2960 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 2964 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L963
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, %esi
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	%eax, %esi
	jne	.L963
	.loc 1 2967 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L963:
.LBE38:
	.loc 1 2974 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2976 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L989
	.loc 1 2977 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L989:
	.loc 1 2980 0
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -92(%ebp)
.L893:
.LBE37:
.LBE36:
.LBE35:
.LBE33:
	.loc 1 2756 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
.L891:
	cmpl	$0, -92(%ebp)
	jne	.L892
	.loc 1 2985 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	find_and_verify_loops, .-find_and_verify_loops
	.section	.rodata
	.align 4
.LC19:
	.string	"\nLoop at %d ignored due to multiple entry points.\n"
	.align 4
.LC20:
	.string	"\nLoop at %d ignored due to unknown exit jump.\n"
	.text
	.type	mark_loop_jump, @function
mark_loop_jump:
.LFB39:
	.loc 1 2996 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3001 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$49, %eax
	movl	%eax, -24(%ebp)
	cmpl	$96, -24(%ebp)
	ja	.L994
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L1005@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1005:
	.long	.L995@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L995@GOTOFF
	.long	.L996@GOTOFF
	.long	.L994@GOTOFF
	.long	.L997@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L999@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L1000@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1001@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1002@GOTOFF
	.long	.L1002@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1002@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1003@GOTOFF
	.long	.L1003@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L994@GOTOFF
	.long	.L1004@GOTOFF
	.text
.L999:
	.loc 1 3015 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3016 0
	jmp	.L1046
.L1002:
	.loc 1 3021 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3022 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3023 0
	jmp	.L1046
.L1004:
	.loc 1 3027 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3028 0
	jmp	.L1046
.L1003:
	.loc 1 3032 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3033 0
	jmp	.L1046
.L1000:
	.loc 1 3036 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3045 0
	cmpl	$0, -16(%ebp)
	je	.L1007
	.loc 1 3047 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1009
.L1010:
	.loc 1 3049 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L1013
	.loc 1 3048 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -12(%ebp)
.L1009:
	.loc 1 3047 0
	cmpl	$0, -12(%ebp)
	jne	.L1010
	jmp	.L1013
.L1007:
	.loc 1 3053 0
	movl	$0, -12(%ebp)
.L1013:
	.loc 1 3055 0
	cmpl	$0, 12(%ebp)
	je	.L1014
	cmpl	$0, -12(%ebp)
	jne	.L1014
	.loc 1 3057 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	.loc 1 3058 0
	movl	12(%ebp), %eax
	movl	120(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 3059 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 120(%edx)
	.loc 1 3061 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3062 0
	jmp	.L1017
.L1018:
	.loc 1 3064 0
	movl	-12(%ebp), %eax
	movl	124(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 3063 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -12(%ebp)
.L1017:
	.loc 1 3062 0
	cmpl	$0, -12(%ebp)
	je	.L1014
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1018
.L1014:
	.loc 1 3070 0
	cmpl	$0, -16(%ebp)
	je	.L1046
	.loc 1 3076 0
	jmp	.L1021
.L1022:
	.loc 1 3079 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1023
.L1024:
	.loc 1 3080 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1046
	.loc 1 3079 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -12(%ebp)
.L1023:
	cmpl	$0, -12(%ebp)
	jne	.L1024
	.loc 1 3084 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1027
	movl	-16(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	jne	.L1027
	.loc 1 3085 0
	movl	-16(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1027:
	.loc 1 3089 0
	movl	-16(%ebp), %eax
	movl	$1, 84(%eax)
	.loc 1 3076 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
.L1021:
	cmpl	$0, -16(%ebp)
	jne	.L1022
	.loc 1 3091 0
	jmp	.L1046
.L997:
	.loc 1 3095 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1046
	.loc 1 3096 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3097 0
	jmp	.L1046
.L1001:
	.loc 1 3100 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3101 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3102 0
	jmp	.L1046
.L995:
	.loc 1 3106 0
	movl	$0, -8(%ebp)
	jmp	.L1033
.L1034:
	.loc 1 3107 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3106 0
	addl	$1, -8(%ebp)
.L1033:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1034
	.loc 1 3108 0
	jmp	.L1046
.L996:
	.loc 1 3111 0
	movl	$0, -8(%ebp)
	jmp	.L1036
.L1037:
	.loc 1 3112 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_loop_jump
	.loc 1 3111 0
	addl	$1, -8(%ebp)
.L1036:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1037
	.loc 1 3113 0
	jmp	.L1046
.L994:
	.loc 1 3120 0
	cmpl	$0, 12(%ebp)
	je	.L1046
	.loc 1 3122 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1041
.L1042:
	.loc 1 3124 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1043
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	jne	.L1043
	.loc 1 3125 0
	movl	-12(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1043:
	.loc 1 3128 0
	movl	-12(%ebp), %eax
	movl	$1, 84(%eax)
	.loc 1 3122 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -12(%ebp)
.L1041:
	cmpl	$0, -12(%ebp)
	jne	.L1042
.L1046:
	.loc 1 3133 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	mark_loop_jump, .-mark_loop_jump
	.section	.rodata
	.type	__FUNCTION__.15149, @object
	.size	__FUNCTION__.15149, 18
__FUNCTION__.15149:
	.string	"labels_in_range_p"
	.text
	.type	labels_in_range_p, @function
labels_in_range_p:
.LFB40:
	.loc 1 3144 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$20, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3145 0
	jmp	.L1048
.L1049:
	.loc 1 3147 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1050
	.loc 1 3148 0
	movl	$1, -8(%ebp)
	jmp	.L1052
.L1050:
	.loc 1 3149 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1048:
	.loc 1 3145 0
	cmpl	$0, 8(%ebp)
	je	.L1053
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1055
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	.L1049
	jmp	.L1053
.L1055:
	leal	__FUNCTION__.15149@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3145, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1053:
	.loc 1 3152 0
	movl	$0, -8(%ebp)
.L1052:
	movl	-8(%ebp), %eax
	.loc 1 3153 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	labels_in_range_p, .-labels_in_range_p
	.type	note_addr_stored, @function
note_addr_stored:
.LFB41:
	.loc 1 3162 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$36, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3163 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3165 0
	cmpl	$0, 8(%ebp)
	je	.L1068
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1061
	.loc 1 3166 0
	jmp	.L1068
.L1061:
	.loc 1 3170 0
	movl	-8(%ebp), %eax
	movl	112(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 112(%eax)
	.loc 1 3173 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L1063
	.loc 1 3175 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1065
	.loc 1 3176 0
	movl	-8(%ebp), %eax
	movl	$1, 108(%eax)
	jmp	.L1068
.L1065:
	.loc 1 3178 0
	movl	-8(%ebp), %eax
	movl	$1, 104(%eax)
	.loc 1 3180 0
	jmp	.L1068
.L1063:
	.loc 1 3183 0
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 88(%eax)
.L1068:
	.loc 1 3185 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	note_addr_stored, .-note_addr_stored
	.type	note_set_pseudo_multiple_uses, @function
note_set_pseudo_multiple_uses:
.LFB42:
	.loc 1 3197 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	subl	$16, %esp
.LCFI110:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3198 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3200 0
	cmpl	$0, 8(%ebp)
	je	.L1084
	.loc 1 3203 0
	jmp	.L1072
.L1073:
	.loc 1 3207 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L1072:
	.loc 1 3203 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L1073
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L1073
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L1073
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1073
	.loc 1 3209 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1084
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1080
	.loc 1 3210 0
	jmp	.L1084
.L1080:
	.loc 1 3214 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1081
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1081
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	const_int_rtx@GOT(%ecx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1084
.L1081:
	.loc 1 3217 0
	movl	-4(%ebp), %eax
	movl	$1, 12(%eax)
.L1084:
	.loc 1 3218 0
	leave
	ret
.LFE42:
	.size	note_set_pseudo_multiple_uses, .-note_set_pseudo_multiple_uses
.globl loop_invariant_p
	.type	loop_invariant_p, @function
loop_invariant_p:
.LFB43:
	.loc 1 3231 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$84, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3232 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3233 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -40(%ebp)
	.loc 1 3237 0
	movl	$0, -24(%ebp)
	.loc 1 3240 0
	cmpl	$0, 12(%ebp)
	jne	.L1086
	.loc 1 3241 0
	movl	$1, -56(%ebp)
	jmp	.L1088
.L1086:
	.loc 1 3242 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 3243 0
	movl	-32(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -60(%ebp)
	cmpl	$28, -60(%ebp)
	ja	.L1089
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L1096@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1096:
	.long	.L1090@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1091@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1091@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1093@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1089@GOTOFF
	.long	.L1094@GOTOFF
	.long	.L1095@GOTOFF
	.long	.L1092@GOTOFF
	.long	.L1091@GOTOFF
	.text
.L1092:
	.loc 1 3249 0
	movl	$1, -56(%ebp)
	jmp	.L1088
.L1095:
	.loc 1 3261 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1097
	.loc 1 3262 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1097:
	.loc 1 3264 0
	movl	$1, -56(%ebp)
	jmp	.L1088
.L1091:
	.loc 1 3269 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1093:
	.loc 1 3275 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1099
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1099
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1099
	movl	pic_offset_table_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L1103
.L1099:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1103
	.loc 1 3278 0
	movl	$1, -56(%ebp)
	jmp	.L1088
.L1103:
	.loc 1 3280 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1105
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1105
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L1105
	.loc 1 3282 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1105:
	.loc 1 3288 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1109
	.loc 1 3289 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1109:
	.loc 1 3291 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L1111
	.loc 1 3292 0
	movl	$2, -56(%ebp)
	jmp	.L1088
.L1111:
	.loc 1 3294 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L1088
.L1094:
	.loc 1 3300 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1113
	.loc 1 3301 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1113:
	.loc 1 3304 0
	movl	-44(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3305 0
	jmp	.L1115
.L1116:
	.loc 1 3307 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L1117
	.loc 1 3309 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1117:
	.loc 1 3311 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L1115:
	.loc 1 3305 0
	cmpl	$0, -20(%ebp)
	jne	.L1116
	.loc 1 3316 0
	jmp	.L1089
.L1090:
	.loc 1 3320 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1089
	.loc 1 3321 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1089:
	.loc 1 3328 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3329 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L1121
.L1122:
	.loc 1 3331 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1123
.LBB40:
	.loc 1 3333 0
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3334 0
	cmpl	$0, -16(%ebp)
	jne	.L1125
	.loc 1 3335 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1125:
	.loc 1 3336 0
	cmpl	$2, -16(%ebp)
	jne	.L1129
	.loc 1 3337 0
	movl	$1, -24(%ebp)
	jmp	.L1129
.L1123:
.LBE40:
	.loc 1 3339 0
	movl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1129
.LBB41:
	.loc 1 3342 0
	movl	$0, -12(%ebp)
	jmp	.L1131
.L1132:
.LBB42:
	.loc 1 3344 0
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3345 0
	cmpl	$0, -8(%ebp)
	jne	.L1133
	.loc 1 3346 0
	movl	$0, -56(%ebp)
	jmp	.L1088
.L1133:
	.loc 1 3347 0
	cmpl	$2, -8(%ebp)
	jne	.L1135
	.loc 1 3348 0
	movl	$1, -24(%ebp)
.L1135:
.LBE42:
	.loc 1 3342 0
	addl	$1, -12(%ebp)
.L1131:
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1132
.L1129:
.LBE41:
	.loc 1 3329 0
	subl	$1, -36(%ebp)
.L1121:
	cmpl	$0, -36(%ebp)
	jns	.L1122
	.loc 1 3354 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
.L1088:
	movl	-56(%ebp), %eax
	.loc 1 3355 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	loop_invariant_p, .-loop_invariant_p
	.type	consec_sets_invariant_p, @function
consec_sets_invariant_p:
.LFB44:
	.loc 1 3372 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$84, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3373 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -44(%ebp)
	.loc 1 3374 0
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3375 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3378 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3379 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3380 0
	movl	$0, -20(%ebp)
	.loc 1 3384 0
	cmpl	$127, 16(%ebp)
	jne	.L1140
	.loc 1 3385 0
	movl	$0, -68(%ebp)
	jmp	.L1142
.L1140:
	.loc 1 3387 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 3389 0
	jmp	.L1180
.L1144:
.LBB43:
	.loc 1 3394 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3395 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3398 0
	cmpl	$42, -12(%ebp)
	jne	.L1145
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1145
	.loc 1 3399 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L1145:
	.loc 1 3401 0
	movl	$0, -16(%ebp)
	.loc 1 3402 0
	cmpl	$42, -12(%ebp)
	jne	.L1148
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1150
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1152
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1154
.L1152:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L1154:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1155
.L1150:
	movl	$0, -64(%ebp)
.L1155:
	movl	-64(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1148
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1148
	.loc 1 3407 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3408 0
	cmpl	$0, -16(%ebp)
	je	.L1159
	.loc 1 3409 0
	movl	-16(%ebp), %eax
	orl	%eax, -20(%ebp)
	jmp	.L1148
.L1159:
	.loc 1 3410 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1148
	.loc 1 3415 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1162
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1171
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L1171
.L1162:
	movl	$1, -56(%ebp)
	jmp	.L1173
.L1171:
	movl	$0, -56(%ebp)
.L1173:
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3418 0
	cmpl	$0, -16(%ebp)
	je	.L1148
	.loc 1 3419 0
	movl	-16(%ebp), %eax
	orl	%eax, -20(%ebp)
.L1148:
	.loc 1 3422 0
	cmpl	$0, -16(%ebp)
	je	.L1175
	.loc 1 3423 0
	subl	$1, -28(%ebp)
	jmp	.L1143
.L1175:
	.loc 1 3424 0
	cmpl	$47, -12(%ebp)
	je	.L1143
	.loc 1 3426 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3427 0
	movl	$0, -68(%ebp)
	jmp	.L1142
.L1143:
.L1180:
.LBE43:
	.loc 1 3389 0
	cmpl	$0, -28(%ebp)
	jg	.L1144
	.loc 1 3431 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3433 0
	movl	-20(%ebp), %eax
	andl	$2, %eax
	addl	$1, %eax
	movl	%eax, -68(%ebp)
.L1142:
	movl	-68(%ebp), %eax
	.loc 1 3434 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	consec_sets_invariant_p, .-consec_sets_invariant_p
	.type	find_single_use_in_loop, @function
find_single_use_in_loop:
.LFB45:
	.loc 1 3478 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$36, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3479 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3480 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3483 0
	cmpl	$71, -20(%ebp)
	jne	.L1182
	.loc 1 3484 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1184
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1184
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1187
.L1184:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1187:
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%edx)
	jmp	.L1202
.L1182:
	.loc 1 3489 0
	cmpl	$57, -20(%ebp)
	jne	.L1189
	.loc 1 3495 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1191
	.loc 1 3496 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
.L1191:
	.loc 1 3497 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
	jmp	.L1202
.L1189:
	.loc 1 3500 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1193
.L1194:
	.loc 1 3502 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1195
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1195
	.loc 1 3503 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
	.loc 1 3502 0
	jmp	.L1198
.L1195:
	.loc 1 3504 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1198
	.loc 1 3505 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L1200
.L1201:
	.loc 1 3506 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
	.loc 1 3505 0
	subl	$1, -8(%ebp)
.L1200:
	cmpl	$0, -8(%ebp)
	jns	.L1201
.L1198:
	.loc 1 3500 0
	subl	$1, -12(%ebp)
.L1193:
	cmpl	$0, -12(%ebp)
	jns	.L1194
.L1202:
	.loc 1 3508 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	find_single_use_in_loop, .-find_single_use_in_loop
	.type	count_one_set, @function
count_one_set:
.LFB46:
	.loc 1 3519 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$36, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3520 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L1204
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1204
	.loc 1 3523 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
.L1204:
	.loc 1 3525 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1207
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L1230
.L1207:
.LBB44:
	.loc 1 3527 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3528 0
	jmp	.L1210
.L1211:
	.loc 1 3532 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L1210:
	.loc 1 3528 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1211
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L1211
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L1211
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L1211
	.loc 1 3533 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1230
.LBB45:
	.loc 1 3536 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3537 0
	movl	$0, -12(%ebp)
	jmp	.L1217
.L1218:
	.loc 1 3543 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L1219
	cmpl	$0, 20(%ebp)
	jne	.L1219
	.loc 1 3545 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
.L1219:
	.loc 1 3549 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1222
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_used_between_p@PLT
	testl	%eax, %eax
	je	.L1222
	.loc 1 3551 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
.L1222:
	.loc 1 3552 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$126, %eax
	jg	.L1225
	.loc 1 3553 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	(%edx), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
.L1225:
	.loc 1 3554 0
	movl	-12(%ebp), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3537 0
	addl	$1, -12(%ebp)
.L1217:
	cmpl	$175, -8(%ebp)
	jg	.L1227
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1229
.L1227:
	movl	$1, -24(%ebp)
.L1229:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1218
.L1230:
.LBE45:
.LBE44:
	.loc 1 3558 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	count_one_set, .-count_one_set
	.type	loop_reg_used_before_p, @function
loop_reg_used_before_p:
.LFB47:
	.loc 1 3573 0
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
	.loc 1 3574 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3579 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1232
.L1233:
	.loc 1 3581 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1234
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1234
	.loc 1 3582 0
	movl	$1, -24(%ebp)
	jmp	.L1237
.L1234:
	.loc 1 3584 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L1238
	.loc 1 3585 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -8(%ebp)
.L1238:
	.loc 1 3579 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1232:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1233
	.loc 1 3588 0
	movl	$0, -24(%ebp)
.L1237:
	movl	-24(%ebp), %eax
	.loc 1 3589 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	loop_reg_used_before_p, .-loop_reg_used_before_p
	.type	check_store, @function
check_store:
.LFB48:
	.loc 1 3630 0
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
	.loc 1 3631 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3633 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1246
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1246
	.loc 1 3634 0
	movl	-8(%ebp), %eax
	movl	$1, 4(%eax)
.L1246:
	.loc 1 3635 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	check_store, .-check_store
	.section	.rodata
	.type	__FUNCTION__.15768, @object
	.size	__FUNCTION__.15768, 25
__FUNCTION__.15768:
	.string	"rtx_equal_for_prefetch_p"
	.text
	.type	rtx_equal_for_prefetch_p, @function
rtx_equal_for_prefetch_p:
.LFB49:
	.loc 1 3647 0
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
	subl	$44, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3650 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3653 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1248
	.loc 1 3654 0
	movl	$1, -40(%ebp)
	jmp	.L1250
.L1248:
	.loc 1 3655 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	je	.L1251
	.loc 1 3656 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1251:
	.loc 1 3658 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3660 0
	movl	-20(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L1253
	.loc 1 3662 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	je	.L1255
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	jne	.L1257
.L1255:
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	je	.L1258
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	je	.L1258
.L1257:
	movl	$1, -36(%ebp)
	jmp	.L1260
.L1258:
	movl	$0, -36(%ebp)
.L1260:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1250
.L1253:
	.loc 1 3670 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3671 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1261
.L1262:
	.loc 1 3673 0
	movl	-28(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	cmpl	$105, -32(%ebp)
	je	.L1267
	cmpl	$105, -32(%ebp)
	jg	.L1271
	cmpl	$69, -32(%ebp)
	je	.L1265
	cmpl	$101, -32(%ebp)
	je	.L1266
	cmpl	$48, -32(%ebp)
	je	.L1274
	jmp	.L1263
.L1271:
	cmpl	$117, -32(%ebp)
	je	.L1274
	cmpl	$119, -32(%ebp)
	je	.L1270
	cmpl	$115, -32(%ebp)
	je	.L1268
	jmp	.L1263
.L1270:
	.loc 1 3676 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1274
	.loc 1 3677 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1267:
	.loc 1 3681 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L1274
	.loc 1 3682 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1265:
	.loc 1 3687 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L1277
	.loc 1 3688 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1277:
	.loc 1 3691 0
	movl	$0, -24(%ebp)
	jmp	.L1279
.L1280:
	.loc 1 3692 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	jne	.L1281
	.loc 1 3694 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1281:
	.loc 1 3691 0
	addl	$1, -24(%ebp)
.L1279:
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L1280
	.loc 1 3695 0
	jmp	.L1274
.L1266:
	.loc 1 3698 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	jne	.L1274
	.loc 1 3699 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1268:
	.loc 1 3703 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1274
	.loc 1 3704 0
	movl	$0, -40(%ebp)
	jmp	.L1250
.L1263:
	.loc 1 3718 0
	leal	__FUNCTION__.15768@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3718, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1274:
	.loc 1 3671 0
	subl	$1, -28(%ebp)
.L1261:
	cmpl	$0, -28(%ebp)
	jns	.L1262
	.loc 1 3721 0
	movl	$1, -40(%ebp)
.L1250:
	movl	-40(%ebp), %eax
	.loc 1 3722 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	rtx_equal_for_prefetch_p, .-rtx_equal_for_prefetch_p
	.type	remove_constant_addition, @function
remove_constant_addition:
.LFB50:
	.loc 1 3730 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$32, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3731 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 3732 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3735 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1291
	.loc 1 3737 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1293
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1293
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1293
	.loc 1 3741 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3742 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	jmp	.L1297
.L1293:
	.loc 1 3744 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1297
.L1291:
	.loc 1 3747 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1298
	.loc 1 3749 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 3750 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1300
.L1298:
	.loc 1 3754 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1300
	.loc 1 3756 0
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	remove_constant_addition
	addl	%eax, -24(%ebp)
	adcl	%edx, -20(%ebp)
	.loc 1 3757 0
	movl	-12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	remove_constant_addition
	addl	%eax, -24(%ebp)
	adcl	%edx, -20(%ebp)
	.loc 1 3761 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1302
	.loc 1 3762 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1300
.L1302:
	.loc 1 3763 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1300
	.loc 1 3764 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L1300:
	.loc 1 3767 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L1297:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	.loc 1 3768 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	remove_constant_addition, .-remove_constant_addition
	.section	.rodata
	.align 4
.LC21:
	.string	"Prefetch: ignoring loop: has call.\n"
	.align 4
.LC22:
	.string	"Prefetch: ignoring loop: not enough iterations.\n"
	.align 4
.LC23:
	.string	"Prefetch: ignoring biv %d: non-constant addition at insn %d:"
	.align 4
.LC24:
	.string	"Prefetch: ignoring biv %d: maybe_multiple at insn %i:"
	.align 4
.LC25:
	.string	"giv is not a destination address"
.LC26:
	.string	"stride is not constant"
.LC27:
	.string	"reversed order stride"
.LC28:
	.string	"extreme stride"
.LC29:
	.string	"giv has varying add value"
.LC30:
	.string	"giv is in nested loop"
	.align 4
.LC31:
	.string	"Prefetch: ignoring giv at %d: %s.\n"
	.align 4
.LC32:
	.string	"Maximal number of prefetches exceeded.\n"
.globl __divdi3
	.align 4
.LC33:
	.string	"Prefetch: ignoring giv at %d: %d%% density is too low.\n"
	.align 4
.LC34:
	.string	"Prefetch: ignoring prefetches within loop: ahead is zero; %d < %d\n"
.LC35:
	.string	"Prefetch insn: %d"
.LC36:
	.string	"read/write"
.LC37:
	.string	"read only"
	.align 4
.LC38:
	.string	"; in loop: %d; before: %d; %s\n"
	.align 4
.LC39:
	.string	" density: %d%%; bytes_accessed: %u; total_bytes: %u\n"
.LC40:
	.string	" index: "
.LC41:
	.string	"%lld"
.LC42:
	.string	"; stride: "
.LC43:
	.string	"; address: "
	.align 4
.LC44:
	.string	"Real prefetches needed within loop: %d (write: %d)\n"
	.align 4
.LC45:
	.string	"Real prefetches needed before loop: %d (write: %d)\n"
	.text
	.type	emit_prefetch_instructions, @function
emit_prefetch_instructions:
.LFB51:
	.loc 1 3793 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%edi
.LCFI147:
	pushl	%esi
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$5148, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3794 0
	movl	$0, -148(%ebp)
	.loc 1 3795 0
	movl	$0, -144(%ebp)
	.loc 1 3796 0
	movl	$0, -140(%ebp)
	.loc 1 3797 0
	movl	$0, -136(%ebp)
	.loc 1 3798 0
	movl	$0, -132(%ebp)
	.loc 1 3799 0
	movl	$0, -128(%ebp)
	.loc 1 3804 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -112(%ebp)
	.loc 1 3806 0
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1307
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L1307
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L1479
.L1307:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1311
	.loc 1 3807 0
	jmp	.L1479
.L1311:
	.loc 1 3811 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1313
	.loc 1 3813 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1479
	.loc 1 3814 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3816 0
	jmp	.L1479
.L1313:
	.loc 1 3820 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1317
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	%edx, -5104(%ebp)
	movl	%ecx, -5100(%ebp)
	cmpl	$0, -5100(%ebp)
	ja	.L1317
	cmpl	$0, -5100(%ebp)
	jb	.L1320
	cmpl	$32, -5104(%ebp)
	ja	.L1317
.L1320:
	.loc 1 3824 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1479
	.loc 1 3825 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$48, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3827 0
	jmp	.L1479
.L1317:
	.loc 1 3832 0
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1323
.L1324:
.LBB46:
	.loc 1 3834 0
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 3835 0
	movl	$0, -100(%ebp)
	.loc 1 3837 0
	movl	-108(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 3841 0
	jmp	.L1325
.L1326:
	.loc 1 3848 0
	movl	-108(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1327
	.loc 1 3850 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1331
	.loc 1 3852 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3855 0
	movl	-108(%ebp), %eax
	movl	36(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 3856 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3858 0
	jmp	.L1331
.L1327:
	.loc 1 3861 0
	movl	-108(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1332
	.loc 1 3863 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1331
	.loc 1 3865 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3868 0
	movl	-108(%ebp), %eax
	movl	36(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 3869 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3871 0
	jmp	.L1331
.L1332:
	.loc 1 3874 0
	movl	-104(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 3875 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -104(%ebp)
.L1325:
	.loc 1 3841 0
	cmpl	$0, -104(%ebp)
	jne	.L1326
.L1331:
	.loc 1 3878 0
	cmpl	$0, -104(%ebp)
	jne	.L1336
	cmpl	$0, -100(%ebp)
	je	.L1336
	.loc 1 3881 0
	movl	-120(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1339
.L1340:
.LBB47:
	.loc 1 3885 0
	movl	$0, -168(%ebp)
	movl	$0, -164(%ebp)
	.loc 1 3886 0
	movl	$1, -92(%ebp)
	.loc 1 3887 0
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	.loc 1 3888 0
	movl	$1, -88(%ebp)
	.loc 1 3890 0
	movl	$0, -84(%ebp)
	.loc 1 3891 0
	movl	-116(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 3895 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1341
	.loc 1 3896 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1343
.L1341:
	.loc 1 3900 0
	movl	-116(%ebp), %eax
	movl	32(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1344
	.loc 1 3901 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1343
.L1344:
	.loc 1 3905 0
	movl	-116(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-100(%ebp), %eax
	movl	%eax, -5120(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -5116(%ebp)
	movl	-5120(%ebp), %ecx
	imull	%edi, %ecx
	movl	-5116(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -5108(%ebp)
	addl	-5108(%ebp), %ecx
	movl	-5120(%ebp), %eax
	mull	%esi
	movl	%eax, -5120(%ebp)
	movl	%edx, -5116(%ebp)
	addl	-5116(%ebp), %ecx
	movl	%ecx, -5116(%ebp)
	movl	-5120(%ebp), %edx
	movl	-5116(%ebp), %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	movl	-5120(%ebp), %esi
	movl	-5116(%ebp), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	.loc 1 3906 0
	cmpl	$0, -156(%ebp)
	jns	.L1346
	.loc 1 3908 0
	negl	-160(%ebp)
	adcl	$0, -156(%ebp)
	negl	-156(%ebp)
	.loc 1 3909 0
	movl	$-1, -88(%ebp)
.L1346:
	.loc 1 3914 0
	cmpl	$0, -88(%ebp)
	jns	.L1348
	.loc 1 3915 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1343
.L1348:
	.loc 1 3919 0
	cmpl	$0, -156(%ebp)
	js	.L1350
	cmpl	$0, -156(%ebp)
	jg	.L1352
	cmpl	$4096, -160(%ebp)
	jbe	.L1350
.L1352:
	.loc 1 3921 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1343
.L1350:
	.loc 1 3925 0
	movl	-116(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L1353
	.loc 1 3926 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1343
.L1353:
	.loc 1 3930 0
	movl	-116(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1343
	.loc 1 3931 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.L1343:
	.loc 1 3934 0
	cmpl	$0, -84(%ebp)
	je	.L1356
	.loc 1 3936 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1360
	.loc 1 3937 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3940 0
	jmp	.L1360
.L1356:
	.loc 1 3945 0
	movl	-116(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3946 0
	movl	-120(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3948 0
	movl	-152(%ebp), %edi
	movl	%edi, -5096(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1361
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1361
	movl	$5, -5092(%ebp)
	jmp	.L1364
.L1361:
	movl	$4, -5092(%ebp)
.L1364:
	movl	-5096(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-5092(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -152(%ebp)
	.loc 1 3949 0
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_constant_addition
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 3951 0
	movl	$0, -172(%ebp)
	.loc 1 3952 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 3957 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	leal	-176(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	check_store@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 3968 0
	movl	$0, -124(%ebp)
	jmp	.L1365
.L1366:
	.loc 1 3969 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4952, %eax
	movl	(%eax), %eax
	movl	-152(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_for_prefetch_p
	testl	%eax, %eax
	je	.L1367
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1367
	.loc 1 3979 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4960, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -5088(%ebp)
	movl	%ecx, -5084(%ebp)
	movl	-5084(%ebp), %ecx
	cmpl	-164(%ebp), %ecx
	jg	.L1370
	movl	-5084(%ebp), %esi
	cmpl	-164(%ebp), %esi
	jl	.L1372
	movl	-5088(%ebp), %edi
	cmpl	-168(%ebp), %edi
	ja	.L1370
.L1372:
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4960, %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, -5120(%ebp)
	movl	%edx, -5116(%ebp)
	movl	-5120(%ebp), %edx
	movl	-5116(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -5080(%ebp)
	movl	%ecx, -5076(%ebp)
	cmpl	$0, -5076(%ebp)
	jg	.L1370
	cmpl	$0, -5076(%ebp)
	js	.L1374
	cmpl	$4095, -5080(%ebp)
	ja	.L1370
.L1374:
	.loc 1 3982 0
	movl	-124(%ebp), %esi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-172(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	leal	-4928(%eax), %edx
	andl	$1, %ecx
	movzbl	12(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 12(%edx)
	.loc 1 3983 0
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4932, %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4932, %eax
	movl	%edx, (%eax)
	.loc 1 3984 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	leal	-4960(%eax), %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3985 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	leal	-4956(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3986 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	leal	-4960(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3987 0
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4952, %eax
	movl	%ecx, (%eax)
	.loc 1 3988 0
	movl	$0, -92(%ebp)
	.loc 1 3989 0
	jmp	.L1375
.L1370:
	.loc 1 3992 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4960, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -5072(%ebp)
	movl	%ecx, -5068(%ebp)
	movl	-5068(%ebp), %ecx
	cmpl	-164(%ebp), %ecx
	jl	.L1367
	movl	-5068(%ebp), %esi
	cmpl	-164(%ebp), %esi
	jg	.L1377
	movl	-5072(%ebp), %edi
	cmpl	-168(%ebp), %edi
	jbe	.L1367
.L1377:
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4960, %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-168(%ebp), %esi
	sbbl	-164(%ebp), %edi
	movl	%esi, -5064(%ebp)
	movl	%edi, -5060(%ebp)
	cmpl	$0, -5060(%ebp)
	jg	.L1367
	cmpl	$0, -5060(%ebp)
	js	.L1379
	cmpl	$4095, -5064(%ebp)
	ja	.L1367
.L1379:
	.loc 1 3995 0
	movl	-124(%ebp), %esi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-172(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	leal	-4928(%eax), %edx
	andl	$1, %ecx
	movzbl	12(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 12(%edx)
	.loc 1 3996 0
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4932, %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4932, %eax
	movl	%edx, (%eax)
	.loc 1 3997 0
	movl	$0, -92(%ebp)
	.loc 1 3998 0
	jmp	.L1375
.L1367:
	.loc 1 3968 0
	addl	$1, -124(%ebp)
.L1365:
	movl	-124(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jl	.L1366
.L1375:
	.loc 1 4003 0
	cmpl	$0, -92(%ebp)
	je	.L1360
	.loc 1 4005 0
	movl	-148(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	leal	-4956(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4006 0
	movl	-148(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	leal	-4960(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4007 0
	movl	-148(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	leal	-4960(%eax), %ecx
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 4008 0
	movl	-148(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	leal	-4944(%eax), %ecx
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 4009 0
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4952, %eax
	movl	%ecx, (%eax)
	.loc 1 4010 0
	movl	-148(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	leal	-4928(%eax), %edx
	andl	$1, %ecx
	movzbl	12(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 12(%edx)
	.loc 1 4011 0
	movl	-148(%ebp), %edx
	movl	-80(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4932, %eax
	movl	%ecx, (%eax)
	.loc 1 4012 0
	addl	$1, -148(%ebp)
	.loc 1 4013 0
	cmpl	$99, -148(%ebp)
	jle	.L1360
	.loc 1 4015 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1479
	.loc 1 4016 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 4018 0
	jmp	.L1479
.L1360:
.LBE47:
	.loc 1 3881 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -116(%ebp)
.L1339:
	cmpl	$0, -116(%ebp)
	jne	.L1340
.L1336:
.LBE46:
	.loc 1 3832 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -120(%ebp)
.L1323:
	cmpl	$0, -120(%ebp)
	jne	.L1324
	.loc 1 4024 0
	movl	$0, -124(%ebp)
	jmp	.L1385
.L1386:
.LBB48:
	.loc 1 4030 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1387
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$-1, (%esp)
	movl	$0, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -5056(%ebp)
	movl	%edx, -5052(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	%esi, -5048(%ebp)
	movl	%edi, -5044(%ebp)
	movl	-5044(%ebp), %edi
	cmpl	%edi, -5052(%ebp)
	jb	.L1387
	movl	-5044(%ebp), %eax
	cmpl	%eax, -5052(%ebp)
	ja	.L1390
	movl	-5048(%ebp), %edx
	cmpl	%edx, -5056(%ebp)
	jb	.L1387
.L1390:
	.loc 1 4033 0
	movl	-124(%ebp), %ecx
	movl	%ecx, -5036(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	%edx, -5120(%ebp)
	movl	%ecx, -5116(%ebp)
	movl	-5120(%ebp), %ecx
	imull	%edi, %ecx
	movl	-5116(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -5112(%ebp)
	addl	-5112(%ebp), %ecx
	movl	-5120(%ebp), %eax
	mull	%esi
	movl	%eax, -5120(%ebp)
	movl	%edx, -5116(%ebp)
	addl	-5116(%ebp), %ecx
	movl	%ecx, -5116(%ebp)
	movl	-5120(%ebp), %edx
	movl	-5036(%ebp), %eax
	addl	%eax, %eax
	addl	-5036(%ebp), %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4928, %eax
	movl	%edx, (%eax)
	.loc 1 4030 0
	jmp	.L1391
.L1387:
	.loc 1 4035 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4928, %eax
	movl	$-1, (%eax)
.L1391:
	.loc 1 4037 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4932, %eax
	movl	(%eax), %eax
	imull	$100, %eax, %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4041 0
	movl	-76(%ebp), %eax
	sall	$8, %eax
	cmpl	$22000, %eax
	jle	.L1392
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4928, %eax
	movl	(%eax), %eax
	cmpl	$63, %eax
	jbe	.L1392
	.loc 1 4045 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4920, %eax
	movl	$1, (%eax)
	.loc 1 4046 0
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4928, %eax
	movl	(%eax), %eax
	cmpl	$223, %eax
	seta	%al
	movzbl	%al, %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4924, %eax
	movl	%edx, (%eax)
	.loc 1 4041 0
	jmp	.L1395
.L1392:
	.loc 1 4052 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4924, %eax
	movl	$0, (%eax)
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4920, %eax
	movl	$0, (%eax)
	.loc 1 4053 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1395
	.loc 1 4054 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1395:
	.loc 1 4062 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4924, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1397
	.loc 1 4064 0
	movl	-124(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$31, %esi
	adcl	$0, %edi
	movl	%esi, -5032(%ebp)
	movl	%edi, -5028(%ebp)
	movl	-5028(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -5120(%ebp)
	movl	%edx, -5116(%ebp)
	movl	-5120(%ebp), %esi
	movl	-5116(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$31, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-5032(%ebp), %eax
	adcl	-5028(%ebp), %edx
	shrdl	$5, %edx, %eax
	sarl	$5, %edx
	movl	%eax, %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4924, %eax
	movl	%edx, (%eax)
	.loc 1 4066 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4924, %eax
	movl	(%eax), %eax
	addl	%eax, -144(%ebp)
	.loc 1 4067 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1397
	.loc 1 4068 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4924, %eax
	movl	(%eax), %eax
	addl	%eax, -140(%ebp)
.L1397:
.LBE48:
	.loc 1 4024 0
	addl	$1, -124(%ebp)
.L1385:
	movl	-124(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jl	.L1386
	.loc 1 4074 0
	cmpl	$0, -144(%ebp)
	je	.L1401
	.loc 1 4076 0
	movl	$3, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-144(%ebp)
	movl	%eax, -128(%ebp)
	cmpl	$0, -128(%ebp)
	jne	.L1401
	.loc 1 4078 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1404
	.loc 1 4079 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1404:
	.loc 1 4082 0
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
.L1401:
	.loc 1 4087 0
	cmpl	$0, -128(%ebp)
	jne	.L1406
	.loc 1 4088 0
	movl	$6, -128(%ebp)
.L1406:
	.loc 1 4090 0
	movl	$0, -124(%ebp)
	jmp	.L1408
.L1409:
	.loc 1 4093 0
	cmpl	$0, -144(%ebp)
	jne	.L1410
	.loc 1 4094 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4924, %eax
	movl	$0, (%eax)
.L1410:
	.loc 1 4097 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4920, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1412
.LBB49:
	.loc 1 4099 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4928, %eax
	movl	(%eax), %eax
	shrl	$5, %eax
	movl	%eax, -72(%ebp)
	.loc 1 4100 0
	movl	-72(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jle	.L1414
	.loc 1 4101 0
	movl	-128(%ebp), %eax
	movl	%eax, -72(%ebp)
.L1414:
	.loc 1 4102 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	leal	-4920(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4103 0
	movl	-72(%ebp), %eax
	addl	%eax, -136(%ebp)
	.loc 1 4104 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1412
	.loc 1 4105 0
	movl	-72(%ebp), %eax
	addl	%eax, -132(%ebp)
.L1412:
.LBE49:
	.loc 1 4108 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1417
	.loc 1 4110 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4924, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1419
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4920, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1417
.L1419:
	.loc 1 4113 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4115 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1421
	leal	.LC36@GOTOFF(%ebx), %esi
	movl	%esi, -5024(%ebp)
	jmp	.L1423
.L1421:
	leal	.LC37@GOTOFF(%ebx), %edi
	movl	%edi, -5024(%ebp)
.L1423:
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4920, %eax
	movl	(%eax), %esi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4924, %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-5024(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4120 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4928, %eax
	movl	(%eax), %eax
	movl	%eax, -5020(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4932, %eax
	movl	(%eax), %eax
	movl	%eax, -5016(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4932, %eax
	movl	(%eax), %eax
	imull	$100, %eax, %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4944, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-5020(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	-5016(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4124 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 4125 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4960, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 4126 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 4127 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4944, %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 4128 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 4129 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4952, %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_rtl@PLT
	.loc 1 4130 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1417:
	.loc 1 4090 0
	addl	$1, -124(%ebp)
.L1408:
	movl	-124(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jl	.L1409
	.loc 1 4134 0
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	testl	%eax, %eax
	jle	.L1425
	.loc 1 4137 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	$1, 12(%eax)
	.loc 1 4139 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1425
	.loc 1 4141 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4143 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1425:
	.loc 1 4148 0
	movl	$0, -124(%ebp)
	jmp	.L1428
.L1429:
.LBB50:
	.loc 1 4152 0
	movl	$0, -68(%ebp)
	jmp	.L1430
.L1431:
.LBB51:
	.loc 1 4154 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4156 0
	movl	-68(%ebp), %eax
	addl	-128(%ebp), %eax
	sall	$5, %eax
	movl	%eax, -56(%ebp)
	.loc 1 4157 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4158 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4163 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	offsettable_address_p@PLT
	testl	%eax, %eax
	je	.L1432
	.loc 1 4164 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1434
.L1432:
.LBB52:
	.loc 1 4167 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1435
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1435
	movl	$5, -5012(%ebp)
	jmp	.L1438
.L1435:
	movl	$4, -5012(%ebp)
.L1438:
	movl	-5012(%ebp), %esi
	movl	%esi, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 4168 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_emit_before@PLT
	.loc 1 4171 0
	movl	-40(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1434:
.LBE52:
	.loc 1 4174 0
	call	start_sequence@PLT
	.loc 1 4176 0
	movl	insn_data@GOT(%ebx), %eax
	movl	10492(%eax), %eax
	movl	(%eax), %edx
	movl	insn_data@GOT(%ebx), %eax
	movl	10492(%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L1439
	.loc 1 4178 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1441
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1441
	movl	$5, -5008(%ebp)
	jmp	.L1444
.L1441:
	movl	$4, -5008(%ebp)
.L1444:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-5008(%ebp), %edi
	movl	%edi, (%esp)
	call	force_reg@PLT
	movl	%eax, -64(%ebp)
.L1439:
	.loc 1 4179 0
	movl	$3, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %ecx
	andl	$1, %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_prefetch@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 4181 0
	call	get_insns@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4182 0
	call	end_sequence@PLT
	.loc 1 4183 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 4187 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4188 0
	jmp	.L1445
.L1446:
	.loc 1 4190 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movzbl	52(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movzbl	52(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_insn_for_givs
	movl	%eax, -60(%ebp)
	.loc 1 4193 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L1445:
	.loc 1 4188 0
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jne	.L1446
.LBE51:
	.loc 1 4152 0
	addl	$1, -68(%ebp)
.L1430:
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4924, %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	jg	.L1431
	.loc 1 4202 0
	movl	$0, -68(%ebp)
	jmp	.L1449
.L1450:
.LBB53:
	.loc 1 4204 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1451
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1451
	movl	$5, -5004(%ebp)
	jmp	.L1454
.L1451:
	movl	$4, -5004(%ebp)
.L1454:
	movl	-5004(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4205 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4206 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4960, %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4209 0
	movl	-68(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -5000(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %ecx
	addl	%ecx, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -4996(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1455
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1455
	movl	$5, -4992(%ebp)
	jmp	.L1458
.L1455:
	movl	$4, -4992(%ebp)
.L1458:
	movl	-5000(%ebp), %esi
	movl	%esi, 12(%esp)
	movl	-4996(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-4992(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4214 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -4988(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1459
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1459
	movl	$5, -4984(%ebp)
	jmp	.L1462
.L1459:
	movl	$4, -4984(%ebp)
.L1462:
	movl	-4984(%ebp), %edx
	cmpl	%edx, -4988(%ebp)
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1463
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1463
.LBB54:
	.loc 1 4218 0
	call	start_sequence@PLT
	.loc 1 4219 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1473
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1473
	movl	$5, -4980(%ebp)
	jmp	.L1476
.L1473:
	movl	$4, -4980(%ebp)
.L1476:
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4980(%ebp), %ecx
	movl	%ecx, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4220 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4221 0
	call	end_sequence@PLT
	.loc 1 4222 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
.L1463:
.LBE54:
	.loc 1 4224 0
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %esi
	addl	%esi, %eax
	subl	$4956, %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_emit_before@PLT
	.loc 1 4227 0
	movl	$3, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edi
	addl	%edi, %eax
	subl	$4928, %eax
	movzbl	12(%eax), %ecx
	andl	$1, %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_prefetch@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
.LBE53:
	.loc 1 4202 0
	addl	$1, -68(%ebp)
.L1449:
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	subl	$4920, %eax
	movl	(%eax), %eax
	cmpl	-68(%ebp), %eax
	jg	.L1450
.LBE50:
	.loc 1 4148 0
	addl	$1, -124(%ebp)
.L1428:
	movl	-124(%ebp), %eax
	cmpl	-148(%ebp), %eax
	jl	.L1429
.L1479:
	.loc 1 4235 0
	addl	$5148, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	emit_prefetch_instructions, .-emit_prefetch_instructions
.globl for_each_insn_in_loop
	.type	for_each_insn_in_loop, @function
for_each_insn_in_loop:
.LFB52:
	.loc 1 4294 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%esi
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$48, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4295 0
	movl	$0, -36(%ebp)
	.loc 1 4296 0
	movl	$0, -32(%ebp)
	.loc 1 4297 0
	movl	$0, -28(%ebp)
	.loc 1 4298 0
	movl	$0, -24(%ebp)
	.loc 1 4303 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	cmpl	%eax, %esi
	je	.L1481
	.loc 1 4304 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	back_branch_in_range_p@PLT
	movl	%eax, -32(%ebp)
.L1481:
	.loc 1 4307 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -20(%ebp)
	.loc 1 4308 0
	jmp	.L1483
.L1484:
	.loc 1 4311 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	.loc 1 4319 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1485
.LBB55:
	.loc 1 4321 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4323 0
	movl	$0, -32(%ebp)
	jmp	.L1532
.L1487:
.L1532:
	.loc 1 4327 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4328 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1485
	.loc 1 4330 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1489
	.loc 1 4332 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L1485
	.loc 1 4333 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4336 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1485
.L1489:
	.loc 1 4340 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1487
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L1487
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L1495
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1487
	movl	-16(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	%eax, %edx
	je	.L1487
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	jne	.L1487
.L1495:
	.loc 1 4347 0
	movl	$1, -32(%ebp)
.L1485:
.LBE55:
	.loc 1 4357 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1499
	movl	-20(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1501
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1503
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L1499
.L1503:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1501
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L1499
.L1501:
.LBB56:
	.loc 1 4367 0
	movl	$0, -12(%ebp)
	.loc 1 4373 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1506
.L1507:
	.loc 1 4374 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	je	.L1508
	.loc 1 4373 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L1506:
	cmpl	$0, -12(%ebp)
	jne	.L1507
.L1508:
	.loc 1 4377 0
	cmpl	$0, -12(%ebp)
	jne	.L1512
	.loc 1 4378 0
	movl	$1, -36(%ebp)
	.loc 1 4357 0
	jmp	.L1512
.L1499:
.LBE56:
	.loc 1 4381 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1512
	.loc 1 4389 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	je	.L1514
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	jne	.L1516
.L1514:
	cmpl	$0, -24(%ebp)
	jne	.L1516
	.loc 1 4392 0
	movl	$0, -36(%ebp)
	.loc 1 4389 0
	jmp	.L1512
.L1516:
	.loc 1 4393 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L1518
	.loc 1 4394 0
	addl	$1, -24(%ebp)
	jmp	.L1512
.L1518:
	.loc 1 4395 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L1512
	.loc 1 4396 0
	subl	$1, -24(%ebp)
.L1512:
	.loc 1 4407 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1521
	movl	-20(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1521
	.loc 1 4409 0
	movl	$1, -28(%ebp)
.L1521:
	.loc 1 4421 0
	cmpl	$0, -36(%ebp)
	je	.L1524
	cmpl	$0, -28(%ebp)
	jne	.L1524
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1524
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L1524
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L1524
	.loc 1 4426 0
	movl	$0, -36(%ebp)
.L1524:
	.loc 1 4309 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -20(%ebp)
.L1483:
	.loc 1 4308 0
	cmpl	$0, -20(%ebp)
	jne	.L1484
	.loc 1 4428 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE52:
	.size	for_each_insn_in_loop, .-for_each_insn_in_loop
	.section	.rodata
.LC46:
	.string	"never incremented"
.LC47:
	.string	"count error"
.LC48:
	.string	"not induction variable"
.LC49:
	.string	"Biv %d: discarded, %s\n"
.LC50:
	.string	"Biv %d: verified\n"
	.text
	.type	loop_bivs_find, @function
loop_bivs_find:
.LFB53:
	.loc 1 4433 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$52, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4434 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4435 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4439 0
	movl	-16(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 4441 0
	leal	check_insn_for_bivs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_insn_in_loop@PLT
	.loc 1 4445 0
	movl	-16(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1534
.L1535:
	.loc 1 4447 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1536
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1536
	movl	-12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1539
.L1536:
	.loc 1 4455 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1540
	.loc 1 4456 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1542
	movl	-12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1544
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1546
.L1544:
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L1546:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1547
.L1542:
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L1547:
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1540:
	.loc 1 4463 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$2, (%eax)
	.loc 1 4464 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4447 0
	jmp	.L1548
.L1539:
	.loc 1 4468 0
	movl	-12(%ebp), %eax
	addl	$36, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4470 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1548
	.loc 1 4471 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1548:
	.loc 1 4445 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
.L1534:
	cmpl	$0, -12(%ebp)
	jne	.L1535
	.loc 1 4474 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	loop_bivs_find, .-loop_bivs_find
	.type	loop_bivs_init_find, @function
loop_bivs_init_find:
.LFB54:
	.loc 1 4482 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%esi
.LCFI162:
	pushl	%ebx
.LCFI163:
	subl	$48, %esp
.LCFI164:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4483 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4492 0
	movl	$0, -20(%ebp)
	.loc 1 4493 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1553
.L1554:
.LBB57:
	.loc 1 4497 0
	movl	-16(%ebp), %eax
	movl	%eax, note_insn@GOTOFF(%ebx)
	.loc 1 4499 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1555
	.loc 1 4500 0
	movl	$1, -20(%ebp)
.L1555:
	.loc 1 4502 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1557
	.loc 1 4503 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_initial@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L1557:
	.loc 1 4508 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1559
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1559
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	cmpl	%eax, %esi
	jne	.L1559
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition_for_loop@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1559
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1559
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1559
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1559
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	valid_initial_value_p
	testl	%eax, %eax
	je	.L1559
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L1559
	.loc 1 4519 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	jne	.L1569
	.loc 1 4521 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 4522 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 44(%eax)
	jmp	.L1559
.L1569:
	.loc 1 4526 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 28(%edx)
.L1559:
.LBE57:
	.loc 1 4493 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L1553:
	cmpl	$0, -16(%ebp)
	je	.L1573
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1554
.L1573:
	.loc 1 4529 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE54:
	.size	loop_bivs_init_find, .-loop_bivs_init_find
	.section	.rodata
	.align 4
.LC51:
	.string	"Biv %d: initialized at insn %d: initial value "
.LC52:
	.string	"is complex\n"
	.text
	.type	loop_bivs_check, @function
loop_bivs_check:
.LFB55:
	.loc 1 4538 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	pushl	%esi
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$48, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4539 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4544 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1575
.L1576:
.LBB58:
	.loc 1 4549 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L1577
	.loc 1 4554 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1579
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1581
.L1579:
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1589
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1581
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1589
.L1581:
	.loc 1 4558 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4554 0
	jmp	.L1598
.L1589:
	.loc 1 4560 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L1598:
	.loc 1 4562 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1599
	.loc 1 4563 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L1599:
	.loc 1 4567 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %cl
	je	.L1601
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1603
.L1601:
	movl	8(%ebp), %eax
	movl	100(%eax), %ecx
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	156(%eax), %edx
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	valid_initial_value_p
	testl	%eax, %eax
	je	.L1603
	.loc 1 4573 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 4575 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1577
	.loc 1 4577 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 4578 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 4567 0
	jmp	.L1577
.L1603:
	.loc 1 4583 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1577
	.loc 1 4584 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1577:
.LBE58:
	.loc 1 4544 0
	movl	-24(%ebp), %eax
	addl	$36, %eax
	movl	%eax, -20(%ebp)
.L1575:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L1576
	.loc 1 4586 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE55:
	.size	loop_bivs_check, .-loop_bivs_check
	.type	loop_givs_find, @function
loop_givs_find:
.LFB56:
	.loc 1 4594 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$20, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4595 0
	leal	check_insn_for_givs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_insn_in_loop@PLT
	.loc 1 4596 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	loop_givs_find, .-loop_givs_find
	.type	loop_givs_check, @function
loop_givs_check:
.LFB57:
	.loc 1 4606 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	subl	$24, %esp
.LCFI176:
	.loc 1 4607 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4610 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1613
.L1614:
.LBB59:
	.loc 1 4614 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1615
.L1616:
	.loc 1 4615 0
	movl	-4(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1617
	movl	-4(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1617
	.loc 1 4616 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_final_value
.L1617:
	.loc 1 4614 0
	movl	-4(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -4(%ebp)
.L1615:
	cmpl	$0, -4(%ebp)
	jne	.L1616
.LBE59:
	.loc 1 4610 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -8(%ebp)
.L1613:
	cmpl	$0, -8(%ebp)
	jne	.L1614
	.loc 1 4618 0
	leave
	ret
.LFE57:
	.size	loop_givs_check, .-loop_givs_check
	.section	.rodata
	.type	__FUNCTION__.16926, @object
	.size	__FUNCTION__.16926, 22
__FUNCTION__.16926:
	.string	"loop_biv_eliminable_p"
.LC53:
	.string	"Cannot eliminate biv %d.\n"
	.align 4
.LC54:
	.string	"First use: insn %d, last use: insn %d.\n"
	.text
	.type	loop_biv_eliminable_p, @function
loop_biv_eliminable_p:
.LFB58:
	.loc 1 4632 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%esi
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$32, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4654 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1624
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jge	.L1626
	jmp	.L1627
.L1624:
	leal	__FUNCTION__.16926@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4654, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1627:
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L1626
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1626
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1630
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L1626
	jmp	.L1632
.L1630:
	leal	__FUNCTION__.16926@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4657, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1632:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1633
.L1626:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	final_biv_value@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1634
.L1633:
	.loc 1 4660 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eliminate_biv
	movl	%eax, -12(%ebp)
	jmp	.L1635
.L1634:
	.loc 1 4662 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1636
	.loc 1 4664 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4667 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %esi
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1636:
	.loc 1 4672 0
	movl	$0, -12(%ebp)
.L1635:
	movl	-12(%ebp), %eax
	.loc 1 4673 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE58:
	.size	loop_biv_eliminable_p, .-loop_biv_eliminable_p
	.type	loop_givs_reduce, @function
loop_givs_reduce:
.LFB59:
	.loc 1 4682 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%edi
.LCFI184:
	pushl	%esi
.LCFI185:
	pushl	%ebx
.LCFI186:
	subl	$60, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4685 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1640
.L1641:
.LBB60:
	.loc 1 4688 0
	movl	-28(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1642
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L1642
.LBB61:
	.loc 1 4690 0
	movl	$0, -20(%ebp)
	.loc 1 4694 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1645
	.loc 1 4695 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
.L1645:
	.loc 1 4776 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1647
.L1648:
.LBB62:
	.loc 1 4781 0
	movl	-24(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L1649
	.loc 1 4783 0
	cmpl	$0, -20(%ebp)
	jne	.L1651
	.loc 1 4784 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1653
.L1651:
	.loc 1 4785 0
	cmpl	$1, -20(%ebp)
	jne	.L1654
	.loc 1 4786 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1653
.L1654:
	.loc 1 4788 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1653:
	.loc 1 4790 0
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1656
	.loc 1 4791 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	32(%eax), %esi
	movl	-24(%ebp), %eax
	movl	36(%eax), %edi
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_emit_before@PLT
	jmp	.L1649
.L1656:
	.loc 1 4797 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	32(%eax), %esi
	movl	-24(%ebp), %eax
	movl	36(%eax), %edi
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_emit_before@PLT
.L1649:
.LBE62:
	.loc 1 4776 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
.L1647:
	cmpl	$0, -24(%ebp)
	jne	.L1648
	.loc 1 4804 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edi
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	32(%eax), %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%edi, 16(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_hoist@PLT
.L1642:
.LBE61:
.LBE60:
	.loc 1 4685 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -28(%ebp)
.L1640:
	cmpl	$0, -28(%ebp)
	jne	.L1641
	.loc 1 4809 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE59:
	.size	loop_givs_reduce, .-loop_givs_reduce
	.type	loop_givs_dead_check, @function
loop_givs_dead_check:
.LFB60:
	.loc 1 4821 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	subl	$16, %esp
.LCFI190:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4824 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1662
.L1663:
	.loc 1 4826 0
	movl	-8(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1664
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1666
	movl	-8(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1664
.L1666:
	.loc 1 4830 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L1664
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1664
.LBB63:
	.loc 1 4835 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1670
.L1671:
	.loc 1 4836 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1672
	.loc 1 4837 0
	movl	-8(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 52(%eax)
.L1672:
	.loc 1 4835 0
	movl	-4(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -4(%ebp)
.L1670:
	cmpl	$0, -4(%ebp)
	jne	.L1671
.L1664:
.LBE63:
	.loc 1 4824 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
.L1662:
	cmpl	$0, -8(%ebp)
	jne	.L1663
	.loc 1 4840 0
	leave
	ret
.LFE60:
	.size	loop_givs_dead_check, .-loop_givs_dead_check
.globl __moddi3
	.section	.rodata
.LC55:
	.string	"giv at %d reduced to "
	.text
	.type	loop_givs_rescan, @function
loop_givs_rescan:
.LFB61:
	.loc 1 4848 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%edi
.LCFI193:
	pushl	%esi
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$60, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4851 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1677
.L1678:
	.loc 1 4853 0
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1679
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1679
	.loc 1 4854 0
	movl	-32(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$4, %edx
	movb	%dl, 52(%eax)
.L1679:
	.loc 1 4856 0
	movl	-32(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1682
	.loc 1 4861 0
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1684
	.loc 1 4862 0
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	movl	4(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	replace_rtx@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
.L1684:
	.loc 1 4872 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1686
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L1686
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1686
	.loc 1 4875 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
	.loc 1 4872 0
	jmp	.L1690
.L1686:
	.loc 1 4877 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1691
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1691
.LBB64:
	.loc 1 4880 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4882 0
	cmpl	$0, -28(%ebp)
	je	.L1694
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1694
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-28(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1697
.L1694:
	.loc 1 4885 0
	movl	$0, -28(%ebp)
.L1697:
	.loc 1 4887 0
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_reg_pointer@PLT
	.loc 1 4877 0
	jmp	.L1690
.L1691:
.LBE64:
	.loc 1 4889 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1698
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1698
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1698
.LBB65:
	.loc 1 4893 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 4895 0
	cmpl	$0, -24(%ebp)
	je	.L1702
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1702
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-24(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1705
.L1702:
	.loc 1 4897 0
	movl	$0, -24(%ebp)
.L1705:
	.loc 1 4899 0
	movl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	4(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_reg_pointer@PLT
	.loc 1 4889 0
	jmp	.L1690
.L1698:
.LBE65:
	.loc 1 4901 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1690
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1690
	.loc 1 4902 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L1690:
	.loc 1 4904 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1708
	.loc 1 4907 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	validate_change@PLT
	jmp	.L1710
.L1708:
	.loc 1 4908 0
	movl	-32(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1711
	.loc 1 4910 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L1710
.L1711:
.LBB66:
	.loc 1 4914 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4919 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_after
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4927 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4928 0
	cmpl	$0, -16(%ebp)
	je	.L1710
	.loc 1 4929 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1710:
.LBE66:
	.loc 1 4937 0
	movl	12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1714
	movl	-32(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1714
	.loc 1 4938 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edi
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-32(%ebp), %eax
	movl	32(%eax), %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%edi, 16(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_sink@PLT
	.loc 1 4937 0
	jmp	.L1717
.L1714:
	.loc 1 4941 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L1717
	.loc 1 4942 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_load_of_final_value
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink_or_swim
.L1717:
	.loc 1 4946 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1682
	.loc 1 4948 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 4950 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 4951 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1682:
	.loc 1 4851 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
.L1677:
	cmpl	$0, -32(%ebp)
	jne	.L1678
	.loc 1 4954 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE61:
	.size	loop_givs_rescan, .-loop_givs_rescan
	.type	loop_giv_reduce_benefit, @function
loop_giv_reduce_benefit:
.LFB62:
	.loc 1 4963 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%ebx
.LCFI199:
	subl	$36, %esp
.LCFI200:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4967 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4968 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 4969 0
	movl	16(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	iv_add_mult_cost
	movl	%eax, -12(%ebp)
	.loc 1 4982 0
	movl	16(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1723
	movl	12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1723
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1723
	.loc 1 4984 0
	movl	copy_cost@GOTOFF(%ebx), %eax
	subl	%eax, -8(%ebp)
.L1723:
	.loc 1 4994 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	imull	-12(%ebp), %eax
	subl	%eax, -8(%ebp)
	.loc 1 5028 0
	movl	-8(%ebp), %eax
	.loc 1 5029 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	loop_giv_reduce_benefit, .-loop_giv_reduce_benefit
	.type	loop_ivs_free, @function
loop_ivs_free:
.LFB63:
	.loc 1 5037 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$36, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5038 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -24(%ebp)
	.loc 1 5039 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5041 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5043 0
	jmp	.L1729
.L1730:
.LBB67:
	.loc 1 5045 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5049 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1731
.L1732:
	.loc 1 5051 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5052 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5049 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1731:
	cmpl	$0, -12(%ebp)
	jne	.L1732
	.loc 1 5054 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1734
.L1735:
	.loc 1 5056 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5057 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5054 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1734:
	cmpl	$0, -12(%ebp)
	jne	.L1735
	.loc 1 5060 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5061 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1729:
.LBE67:
	.loc 1 5043 0
	cmpl	$0, -20(%ebp)
	jne	.L1730
	.loc 1 5063 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	loop_ivs_free, .-loop_ivs_free
	.section	.rodata
	.align 4
.LC56:
	.string	"giv of insn %d not worth while, %d vs %d.\n"
	.align 4
.LC57:
	.string	"giv of insn %d: would need a multiply.\n"
.LC58:
	.string	"Reg %d: biv eliminated\n"
.globl __udivdi3
	.text
	.type	strength_reduce, @function
strength_reduce:
.LFB64:
	.loc 1 5079 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	pushl	%edi
.LCFI207:
	pushl	%esi
.LCFI208:
	pushl	%ebx
.LCFI209:
	subl	$124, %esp
.LCFI210:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5080 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 5081 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -68(%ebp)
	.loc 1 5082 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -64(%ebp)
	.loc 1 5091 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1740
	movl	$1, -88(%ebp)
	jmp	.L1742
.L1740:
	movl	$2, -88(%ebp)
.L1742:
	movl	n_non_fixed_regs@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	imull	-88(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5093 0
	movl	$0, -48(%ebp)
	.loc 1 5095 0
	movl	$0, -40(%ebp)
	.loc 1 5096 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$181, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5097 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_insns_in_loop
	movl	%eax, -32(%ebp)
	.loc 1 5099 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1743
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1743
	movl	$5, -84(%ebp)
	jmp	.L1746
.L1743:
	movl	$4, -84(%ebp)
.L1746:
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, addr_placeholder@GOTOFF(%ebx)
	.loc 1 5101 0
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5102 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5105 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_bivs_find
	.loc 1 5108 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1747
	.loc 1 5112 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1749
	.loc 1 5113 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unroll_loop@PLT
.L1749:
	.loc 1 5115 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_ivs_free
	.loc 1 5116 0
	jmp	.L1816
.L1747:
	.loc 1 5121 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_bivs_init_find
	.loc 1 5125 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_bivs_check
	.loc 1 5128 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_givs_find
	.loc 1 5134 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iterations@PLT
	.loc 1 5137 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1752
	.loc 1 5138 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_prefetch_instructions
.L1752:
	.loc 1 5145 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_givs_check
	.loc 1 5150 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_dbra_loop
	.loc 1 5155 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5156 0
	movl	-44(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 5161 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1754
.L1755:
.LBB68:
	.loc 1 5168 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_biv_eliminable_p
	andl	$1, %eax
	movl	-56(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	48(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 48(%ecx)
	.loc 1 5173 0
	movl	-56(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$16, %eax
	movb	%al, 48(%edx)
	.loc 1 5177 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	check_ext_dependent_givs
	.loc 1 5180 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_givs
	.loc 1 5182 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1756
.L1757:
.LBB69:
	.loc 1 5186 0
	movl	-28(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1758
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L1758
	.loc 1 5189 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_giv_reduce_benefit
	movl	%eax, -24(%ebp)
	.loc 1 5200 0
	movl	flag_reduce_all_givs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1761
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	imull	-52(%ebp), %eax
	imull	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	.L1761
	movl	-56(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1761
	.loc 1 5204 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1765
	.loc 1 5205 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	imull	-52(%ebp), %eax
	movl	%eax, %edx
	imull	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L1765:
	.loc 1 5209 0
	movl	-28(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$4, %eax
	movb	%al, 52(%edx)
	.loc 1 5210 0
	movl	-56(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-17, %eax
	movb	%al, 48(%edx)
	.loc 1 5200 0
	jmp	.L1758
.L1761:
	.loc 1 5217 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1767
.L1768:
	.loc 1 5218 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1769
	movl	-28(%ebp), %eax
	movl	32(%eax), %edx
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	product_cheap_p
	testl	%eax, %eax
	jne	.L1769
	.loc 1 5221 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1772
	.loc 1 5222 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1772:
	.loc 1 5225 0
	movl	-28(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$4, %eax
	movb	%al, 52(%edx)
	.loc 1 5226 0
	movl	-56(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-17, %eax
	movb	%al, 48(%edx)
	.loc 1 5227 0
	jmp	.L1758
.L1769:
	.loc 1 5217 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
.L1767:
	cmpl	$0, -20(%ebp)
	jne	.L1768
.L1758:
.LBE69:
	.loc 1 5182 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -28(%ebp)
.L1756:
	cmpl	$0, -28(%ebp)
	jne	.L1757
	.loc 1 5236 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_givs_dead_check
	.loc 1 5239 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_givs_reduce
	.loc 1 5247 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_givs_rescan
	.loc 1 5263 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1775
.L1776:
	.loc 1 5264 0
	movl	-28(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L1777
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1777
	.loc 1 5265 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %edx
	movzbl	52(%edx), %eax
	andl	$127, %eax
	movb	%al, 52(%edx)
.L1777:
	.loc 1 5263 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -28(%ebp)
.L1775:
	cmpl	$0, -28(%ebp)
	jne	.L1776
	.loc 1 5285 0
	movl	-56(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1781
	movl	-56(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1781
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eliminate_biv
	testl	%eax, %eax
	je	.L1781
	.loc 1 5300 0
	movl	-56(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1785
	movl	-56(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1785
	.loc 1 5301 0
	movl	-56(%ebp), %eax
	movl	32(%eax), %edx
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_load_of_final_value
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink_or_swim
.L1785:
	.loc 1 5305 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1790
	.loc 1 5306 0
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 5285 0
	jmp	.L1790
.L1781:
	.loc 1 5311 0
	movl	-56(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1790
	movl	-56(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1790
	.loc 1 5312 0
	movl	-56(%ebp), %eax
	movl	32(%eax), %edx
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_load_of_final_value
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
.L1790:
.LBE68:
	.loc 1 5161 0
	movl	-56(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -56(%ebp)
.L1754:
	cmpl	$0, -56(%ebp)
	jne	.L1755
	.loc 1 5319 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1794
.L1795:
	.loc 1 5320 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L1796
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1796
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1799
.L1796:
	.loc 1 5323 0
	movl	-44(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	44(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
	.loc 1 5324 0
	movl	-44(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_regs@PLT
	.loc 1 5325 0
	movl	-60(%ebp), %eax
	movl	$-1, 52(%eax)
.L1799:
	.loc 1 5319 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L1794:
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1795
	.loc 1 5328 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1801
	.loc 1 5333 0
	movl	-32(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -40(%ebp)
	.loc 1 5343 0
	movl	-40(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-72(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-104(%ebp), %ecx
	imull	%edi, %ecx
	movl	-100(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	-104(%ebp), %eax
	mull	%esi
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	addl	-100(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	movl	-104(%ebp), %edx
	movl	%edx, -40(%ebp)
	.loc 1 5348 0
	subl	$1, -40(%ebp)
	.loc 1 5351 0
	cmpl	$0, -40(%ebp)
	jns	.L1801
	.loc 1 5352 0
	movl	$0, -40(%ebp)
.L1801:
	.loc 1 5359 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1804
	movl	12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1806
	movl	-72(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1806
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jg	.L1806
.L1804:
	.loc 1 5363 0
	movl	$1, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unroll_loop@PLT
.L1806:
	.loc 1 5373 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1809
.LBB70:
	.loc 1 5376 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-72(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 5377 0
	cmpl	$0, -76(%ebp)
	jb	.L1809
	cmpl	$0, -76(%ebp)
	ja	.L1812
	cmpl	$1, -80(%ebp)
	jbe	.L1809
.L1812:
	.loc 1 5378 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$10000, (%esp)
	movl	$0, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, %edx
	movl	$10000, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%esi, 8(%esp)
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	call	predict_insn@PLT
.L1809:
.LBE70:
	.loc 1 5382 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1813
	.loc 1 5383 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1813:
	.loc 1 5385 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_ivs_free
	.loc 1 5386 0
	cmpl	$0, -48(%ebp)
	je	.L1816
	.loc 1 5387 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1816:
	.loc 1 5388 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	strength_reduce, .-strength_reduce
	.type	check_insn_for_bivs, @function
check_insn_for_bivs:
.LFB65:
	.loc 1 5397 0
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	pushl	%esi
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$80, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5398 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -24(%ebp)
	.loc 1 5405 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1818
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1820
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1822
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1824
.L1822:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L1824:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1825
.L1820:
	movl	$0, -48(%ebp)
.L1825:
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1818
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1818
	.loc 1 5409 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5410 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1818
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1818
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1818
	.loc 1 5414 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	basic_induction_var
	testl	%eax, %eax
	je	.L1831
.LBB71:
	.loc 1 5423 0
	movl	$92, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5425 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	20(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_biv
	.loc 1 5427 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	jmp	.L1818
.L1831:
.LBE71:
	.loc 1 5429 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1818
	.loc 1 5430 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$2, (%eax)
.L1818:
	.loc 1 5433 0
	movl	12(%ebp), %eax
	.loc 1 5434 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE65:
	.size	check_insn_for_bivs, .-check_insn_for_bivs
	.type	check_insn_for_givs, @function
check_insn_for_givs:
.LFB66:
	.loc 1 5445 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%edi
.LCFI218:
	pushl	%esi
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$124, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5446 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -32(%ebp)
	.loc 1 5450 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1836
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1838
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1840
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1842
.L1840:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -72(%ebp)
.L1842:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1843
.L1838:
	movl	$0, -76(%ebp)
.L1843:
	movl	-76(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1836
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1836
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	jne	.L1836
.LBB72:
	.loc 1 5461 0
	movl	$0, -20(%ebp)
	.loc 1 5464 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5465 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1847
	.loc 1 5466 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1849
.L1847:
	.loc 1 5468 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 32(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_induction_var
	testl	%eax, %eax
	jne	.L1850
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1836
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 32(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_induction_var
	testl	%eax, %eax
	je	.L1836
.L1850:
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1836
	movl	-36(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	je	.L1836
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L1855
	movl	-36(%ebp), %edx
	movl	-52(%ebp), %ecx
	leal	-56(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	consec_sets_giv
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L1836
.L1855:
.LBB73:
	.loc 1 5490 0
	movl	$92, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5493 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1857
	.loc 1 5494 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	libcall_benefit
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
.L1857:
	.loc 1 5497 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L1859
	.loc 1 5498 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1859:
	.loc 1 5500 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	-40(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-36(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	$0, 48(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$1, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_giv
.L1836:
.LBE73:
.LBE72:
	.loc 1 5511 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1861
	.loc 1 5512 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_mem_givs
.L1861:
	.loc 1 5518 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L1863
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1863
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1866
.L1863:
	.loc 1 5520 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_giv_derive
.L1866:
	.loc 1 5521 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1849:
	movl	-68(%ebp), %eax
	.loc 1 5522 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE66:
	.size	check_insn_for_givs, .-check_insn_for_givs
	.type	valid_initial_value_p, @function
valid_initial_value_p:
.LFB67:
	.loc 1 5538 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%ebx
.LCFI224:
	subl	$20, %esp
.LCFI225:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5539 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1869
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1877
.L1869:
	.loc 1 5540 0
	movl	$1, -8(%ebp)
	jmp	.L1878
.L1877:
	.loc 1 5544 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1879
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1881
.L1879:
	.loc 1 5546 0
	movl	$0, -8(%ebp)
	jmp	.L1878
.L1881:
	.loc 1 5550 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1882
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1884
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L1882
	cmpl	$0, 16(%ebp)
	je	.L1882
.L1884:
	.loc 1 5553 0
	movl	$0, -8(%ebp)
	jmp	.L1878
.L1882:
	.loc 1 5557 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	je	.L1887
	.loc 1 5558 0
	movl	$0, -8(%ebp)
	jmp	.L1878
.L1887:
	.loc 1 5560 0
	movl	$1, -8(%ebp)
.L1878:
	movl	-8(%ebp), %eax
	.loc 1 5561 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	valid_initial_value_p, .-valid_initial_value_p
	.type	find_mem_givs, @function
find_mem_givs:
.LFB68:
	.loc 1 5575 0
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	pushl	%edi
.LCFI228:
	pushl	%esi
.LCFI229:
	pushl	%ebx
.LCFI230:
	subl	$124, %esp
.LCFI231:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5580 0
	cmpl	$0, 12(%ebp)
	je	.L1906
	.loc 1 5583 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 5584 0
	movl	-24(%ebp), %eax
	subl	$54, %eax
	movl	%eax, -72(%ebp)
	cmpl	$25, -72(%ebp)
	ja	.L1893
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-72(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -76(%ebp)
	movl	-76(%ebp), %eax
	andl	$58903603, %eax
	testl	%eax, %eax
	jne	.L1906
	movl	-76(%ebp), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	jne	.L1895
	jmp	.L1893
.L1895:
.LBB74:
	.loc 1 5613 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 32(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$1, 24(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_induction_var
	testl	%eax, %eax
	je	.L1906
.LBB75:
	.loc 1 5619 0
	movl	$92, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5621 0
	movl	12(%ebp), %ecx
	addl	$4, %ecx
	movl	%ecx, -80(%ebp)
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %ecx
	movl	-40(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	addr_placeholder@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, 48(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-68(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-64(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_giv
	.loc 1 5625 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 5628 0
	jmp	.L1906
.L1893:
.LBE75:
.LBE74:
	.loc 1 5636 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5637 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1898
.L1899:
	.loc 1 5638 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1900
	.loc 1 5639 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_mem_givs
	jmp	.L1902
.L1900:
	.loc 1 5641 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1902
	.loc 1 5642 0
	movl	$0, -28(%ebp)
	jmp	.L1904
.L1905:
	.loc 1 5643 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_mem_givs
	.loc 1 5642 0
	addl	$1, -28(%ebp)
.L1904:
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L1905
.L1902:
	.loc 1 5637 0
	subl	$1, -32(%ebp)
.L1898:
	cmpl	$0, -32(%ebp)
	jns	.L1899
.L1906:
	.loc 1 5645 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE68:
	.size	find_mem_givs, .-find_mem_givs
	.type	record_biv, @function
record_biv:
.LFB69:
	.loc 1 5675 0
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%ebx
.LCFI234:
	subl	$36, %esp
.LCFI235:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5676 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -16(%ebp)
	.loc 1 5679 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5680 0
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5681 0
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5682 0
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 5683 0
	movl	12(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 5684 0
	movl	12(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 5685 0
	movl	12(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5686 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5687 0
	cmpl	$0, 36(%ebp)
	sete	%al
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	52(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
	.loc 1 5688 0
	cmpl	$0, 36(%ebp)
	sete	%al
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	52(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
	.loc 1 5689 0
	movl	40(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	52(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
	.loc 1 5690 0
	movl	12(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 5695 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5696 0
	cmpl	$0, -12(%ebp)
	jne	.L1908
	.loc 1 5700 0
	movl	$52, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5702 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5703 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 5704 0
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 5705 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 5706 0
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 5709 0
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 5710 0
	movl	-12(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 5712 0
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 5713 0
	movl	-12(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 5714 0
	movl	-12(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 5715 0
	movl	-12(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-2, %eax
	movb	%al, 48(%edx)
	.loc 1 5716 0
	movl	-12(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-3, %eax
	movb	%al, 48(%edx)
	.loc 1 5717 0
	movl	-12(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-5, %eax
	movb	%al, 48(%edx)
	.loc 1 5718 0
	movl	-12(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-9, %eax
	movb	%al, 48(%edx)
	.loc 1 5719 0
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 5722 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 5723 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5726 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1910
.L1908:
.LBB76:
	.loc 1 5732 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1911
.L1912:
	.loc 1 5733 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	32(%ebp), %eax
	jne	.L1913
	.loc 1 5735 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 5736 0
	jmp	.L1910
.L1913:
	.loc 1 5732 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
.L1911:
	cmpl	$0, -8(%ebp)
	jne	.L1912
.L1910:
.LBE76:
	.loc 1 5741 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 5742 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5743 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5744 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	28(%ebp), %eax
	jne	.L1915
	.loc 1 5745 0
	movl	-12(%ebp), %eax
	movzbl	48(%eax), %edx
	orl	$1, %edx
	movb	%dl, 48(%eax)
.L1915:
	.loc 1 5747 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1919
	.loc 1 5748 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_biv_dump
.L1919:
	.loc 1 5749 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	record_biv, .-record_biv
	.section	.rodata
	.type	__FUNCTION__.17953, @object
	.size	__FUNCTION__.17953, 11
__FUNCTION__.17953:
	.string	"record_giv"
	.text
	.type	record_giv, @function
record_giv:
.LFB70:
	.loc 1 5777 0
	pushl	%ebp
.LCFI236:
	movl	%esp, %ebp
.LCFI237:
	pushl	%ebx
.LCFI238:
	subl	$68, %esp
.LCFI239:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5778 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5781 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1921
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1923
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1925
.L1923:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L1925:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1926
.L1921:
	movl	$0, -48(%ebp)
.L1926:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5786 0
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5787 0
	cmpl	$0, -12(%ebp)
	je	.L1927
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L1929
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	je	.L1927
.L1929:
	.loc 1 5790 0
	movl	-12(%ebp), %eax
	movl	%eax, 32(%ebp)
.L1927:
	.loc 1 5792 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5793 0
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 5794 0
	movl	12(%ebp), %edx
	movl	44(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 5795 0
	movl	12(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5796 0
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 5797 0
	movl	12(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 5798 0
	movl	12(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 5799 0
	movl	12(%ebp), %edx
	movl	40(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 5800 0
	movl	12(%ebp), %edx
	movl	56(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 5801 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-65, %eax
	movb	%al, 52(%edx)
	.loc 1 5802 0
	movl	12(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 5803 0
	movl	52(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	52(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
	.loc 1 5804 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$127, %eax
	movb	%al, 52(%edx)
	.loc 1 5805 0
	movl	12(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 5806 0
	movl	12(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 5807 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-5, %eax
	movb	%al, 52(%edx)
	.loc 1 5808 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 5809 0
	movl	12(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 5810 0
	movl	12(%ebp), %eax
	movl	$0, 84(%eax)
	.loc 1 5811 0
	movl	12(%ebp), %edx
	movzbl	53(%edx), %eax
	andl	$-2, %eax
	movb	%al, 53(%edx)
	.loc 1 5812 0
	movl	12(%ebp), %edx
	movzbl	53(%edx), %eax
	andl	$-3, %eax
	movb	%al, 53(%edx)
	.loc 1 5813 0
	movl	12(%ebp), %edx
	movzbl	53(%edx), %eax
	andl	$-5, %eax
	movb	%al, 53(%edx)
	.loc 1 5823 0
	cmpl	$0, 44(%ebp)
	jne	.L1931
	.loc 1 5824 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$8, %edx
	movb	%dl, 52(%eax)
	jmp	.L1933
.L1931:
	.loc 1 5826 0
	cmpl	$0, 48(%ebp)
	sete	%al
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	52(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
.L1933:
	.loc 1 5828 0
	cmpl	$0, 48(%ebp)
	sete	%al
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	52(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 52(%ecx)
	.loc 1 5830 0
	cmpl	$0, 44(%ebp)
	jne	.L1934
	.loc 1 5832 0
	movl	56(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5833 0
	movl	12(%ebp), %eax
	movl	$1, 56(%eax)
	jmp	.L1936
.L1934:
	.loc 1 5837 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5839 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 5844 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L1937
	.loc 1 5845 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$4, %edx
	movb	%dl, 52(%eax)
.L1937:
	.loc 1 5847 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$3, (%eax)
	.loc 1 5848 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
.L1936:
	.loc 1 5853 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5854 0
	cmpl	$0, -20(%ebp)
	je	.L1939
	.loc 1 5856 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 5857 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5860 0
	cmpl	$1, 44(%ebp)
	jne	.L1941
	.loc 1 5861 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L1941:
	.loc 1 5862 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	addl	40(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5868 0
	cmpl	$0, 44(%ebp)
	je	.L1943
	jmp	.L1944
.L1939:
	.loc 1 5866 0
	leal	__FUNCTION__.17953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5866, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1943:
	.loc 1 5870 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$1, %eax
	movb	%al, 52(%edx)
	.loc 1 5871 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-3, %eax
	movb	%al, 52(%edx)
	jmp	.L1945
.L1944:
	.loc 1 5885 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1946
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1948
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jge	.L1946
	jmp	.L1950
.L1948:
	leal	__FUNCTION__.17953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5888, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1950:
	cmpl	$0, 48(%ebp)
	je	.L1951
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	last_use_this_basic_block
	testl	%eax, %eax
	je	.L1946
.L1951:
	.loc 1 5906 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$1, %eax
	movb	%al, 52(%edx)
	.loc 1 5907 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-3, %eax
	movb	%al, 52(%edx)
	.loc 1 5908 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1953
.L1954:
	.loc 1 5910 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1955
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1957
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jl	.L1959
	jmp	.L1960
.L1957:
	leal	__FUNCTION__.17953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5911, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1960:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L1961
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L1955
	jmp	.L1959
.L1961:
	leal	__FUNCTION__.17953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5913, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1955:
	.loc 1 5916 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-2, %eax
	movb	%al, 52(%edx)
	.loc 1 5917 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$2, %eax
	movb	%al, 52(%edx)
	.loc 1 5918 0
	jmp	.L1963
.L1959:
	.loc 1 5908 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
.L1953:
	cmpl	$0, -24(%ebp)
	jne	.L1954
.L1963:
	.loc 1 5924 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1945
	.loc 1 5925 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1966
.L1967:
	.loc 1 5926 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	back_branch_in_range_p@PLT
	testl	%eax, %eax
	je	.L1968
	.loc 1 5928 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-2, %eax
	movb	%al, 52(%edx)
	.loc 1 5929 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$2, %eax
	movb	%al, 52(%edx)
	.loc 1 5930 0
	jmp	.L1945
.L1968:
	.loc 1 5925 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
.L1966:
	cmpl	$0, -24(%ebp)
	jne	.L1967
	.loc 1 5885 0
	jmp	.L1945
.L1946:
	.loc 1 5937 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-2, %eax
	movb	%al, 52(%edx)
	.loc 1 5938 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-3, %eax
	movb	%al, 52(%edx)
.L1945:
.LBB77:
	.loc 1 5945 0
	movl	32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5947 0
	movl	12(%ebp), %edx
	movzbl	53(%edx), %eax
	orl	$8, %eax
	movb	%al, 53(%edx)
	.loc 1 5948 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L1970
	.loc 1 5950 0
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1972
	movl	32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1970
.L1972:
	.loc 1 5951 0
	movl	12(%ebp), %eax
	movzbl	53(%eax), %edx
	andl	$-9, %edx
	movb	%dl, 53(%eax)
.L1970:
	.loc 1 5952 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1980
	jmp	.L1998
.L1981:
.L1998:
	.loc 1 5956 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1982
	.loc 1 5957 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1981
.L1982:
	.loc 1 5958 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1985
	.loc 1 5959 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5962 0
	jmp	.L1981
.L1985:
	.loc 1 5963 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1987
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1980
.L1987:
	.loc 1 5964 0
	movl	12(%ebp), %eax
	movzbl	53(%eax), %edx
	andl	$-9, %edx
	movb	%dl, 53(%eax)
.L1980:
.LBE77:
	.loc 1 5968 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1997
	.loc 1 5969 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_giv_dump
.L1997:
	.loc 1 5970 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	record_giv, .-record_giv
	.section	.rodata
	.align 4
.LC59:
	.string	"Found branch outside giv lifetime.\n"
	.align 4
.LC60:
	.string	"Insn %d: giv reg %d final_value replaceable\n"
	.text
	.type	check_final_value, @function
check_final_value:
.LFB71:
	.loc 1 5982 0
	pushl	%ebp
.LCFI240:
	movl	%esp, %ebp
.LCFI241:
	pushl	%esi
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$48, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5983 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -36(%ebp)
	.loc 1 5985 0
	movl	$0, -28(%ebp)
	.loc 1 5987 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6010 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	final_giv_value@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L2000
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2002
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	last_use_this_basic_block
	testl	%eax, %eax
	je	.L2000
.L2002:
.LBB78:
	.loc 1 6014 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 6015 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6018 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$1, %eax
	movb	%al, 52(%edx)
	.loc 1 6019 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-3, %eax
	movb	%al, 52(%edx)
	.loc 1 6039 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2041
.L2004:
.L2041:
	.loc 1 6043 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6044 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2005
	.loc 1 6046 0
	movl	$1, -20(%ebp)
	.loc 1 6047 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2005:
	.loc 1 6049 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L2007
	.loc 1 6052 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L2009
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L2009
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2004
.L2009:
	.loc 1 6060 0
	cmpl	$0, -24(%ebp)
	jne	.L2013
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L2013
	.loc 1 6062 0
	movl	$1, -24(%ebp)
.L2013:
	.loc 1 6064 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2004
	.loc 1 6066 0
	cmpl	$0, -24(%ebp)
	jne	.L2017
	cmpl	$0, -20(%ebp)
	je	.L2019
.L2017:
	.loc 1 6068 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-2, %eax
	movb	%al, 52(%edx)
	.loc 1 6069 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$2, %eax
	movb	%al, 52(%edx)
	.loc 1 6070 0
	jmp	.L2007
.L2019:
	.loc 1 6072 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6075 0
	jmp	.L2004
.L2007:
	.loc 1 6081 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2020
	.loc 1 6083 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2042
.L2022:
.L2042:
	.loc 1 6086 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6087 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L2023
	.loc 1 6088 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2023:
	.loc 1 6089 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L2020
	.loc 1 6092 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2022
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L2022
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2022
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L2030
	movl	-16(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	jne	.L2032
.L2030:
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L2022
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L2022
.L2032:
	.loc 1 6099 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-2, %eax
	movb	%al, 52(%edx)
	.loc 1 6100 0
	movl	12(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$2, %eax
	movb	%al, 52(%edx)
	.loc 1 6102 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2020
	.loc 1 6103 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2020:
	.loc 1 6112 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2000
	.loc 1 6113 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 44(%edx)
.L2000:
.LBE78:
	.loc 1 6116 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2040
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2040
	.loc 1 6117 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %esi
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L2040:
	.loc 1 6119 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE71:
	.size	check_final_value, .-check_final_value
	.type	update_giv_derive, @function
update_giv_derive:
.LFB72:
	.loc 1 6136 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$52, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6137 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6170 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2044
.L2045:
	.loc 1 6171 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2046
.L2047:
	.loc 1 6172 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L2048
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L2048
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2051
.L2048:
	.loc 1 6175 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2052
.L2053:
	.loc 1 6179 0
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2054
	.loc 1 6184 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L2056
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2056
	.loc 1 6185 0
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$64, %edx
	movb	%dl, 52(%eax)
	.loc 1 6184 0
	jmp	.L2054
.L2056:
	.loc 1 6191 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L2054
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2054
	.loc 1 6198 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2061
.LBB79:
	.loc 1 6202 0
	movl	$0, -8(%ebp)
	.loc 1 6203 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2063
	.loc 1 6204 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -8(%ebp)
.L2063:
	.loc 1 6210 0
	cmpl	$0, -8(%ebp)
	je	.L2065
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2065
	.loc 1 6211 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	leal	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -8(%ebp)
.L2065:
	.loc 1 6216 0
	cmpl	$0, -8(%ebp)
	je	.L2068
	.loc 1 6217 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 60(%edx)
	jmp	.L2054
.L2068:
	.loc 1 6219 0
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$64, %edx
	movb	%dl, 52(%eax)
	jmp	.L2054
.L2061:
.LBE79:
	.loc 1 6221 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L2071
	movl	-16(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2073
.L2071:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2054
	movl	-16(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2054
.L2073:
	.loc 1 6223 0
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %edx
	orl	$64, %edx
	movb	%dl, 52(%eax)
.L2054:
	.loc 1 6175 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
.L2052:
	cmpl	$0, -12(%ebp)
	jne	.L2053
.L2051:
	.loc 1 6171 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
.L2046:
	cmpl	$0, -16(%ebp)
	jne	.L2047
	.loc 1 6170 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -20(%ebp)
.L2044:
	cmpl	$0, -20(%ebp)
	jne	.L2045
	.loc 1 6226 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	update_giv_derive, .-update_giv_derive
	.type	basic_induction_var, @function
basic_induction_var:
.LFB73:
	.loc 1 6275 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$100, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6278 0
	movl	$0, -20(%ebp)
	.loc 1 6280 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 6281 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6282 0
	movl	-36(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -72(%ebp)
	cmpl	$66, -72(%ebp)
	ja	.L2079
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L2087@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2087:
	.long	.L2080@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2080@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2081@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2082@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2083@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2080@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2084@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2085@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2079@GOTOFF
	.long	.L2086@GOTOFF
	.text
.L2084:
	.loc 1 6285 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2088
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2090
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2090
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L2090
.L2088:
	.loc 1 6290 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -32(%ebp)
	.loc 1 6285 0
	jmp	.L2093
.L2090:
	.loc 1 6292 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2094
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2096
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2096
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L2096
.L2094:
	.loc 1 6297 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 6292 0
	jmp	.L2093
.L2096:
	.loc 1 6300 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2093:
	.loc 1 6302 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6303 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	je	.L2100
	.loc 1 6304 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2100:
	.loc 1 6317 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6318 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	convert_modes@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6319 0
	call	get_last_insn@PLT
	cmpl	-16(%ebp), %eax
	je	.L2102
	.loc 1 6321 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 6322 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2102:
	.loc 1 6325 0
	movl	28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6326 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6327 0
	movl	36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6328 0
	movl	$1, -68(%ebp)
	jmp	.L2099
.L2082:
	.loc 1 6335 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	basic_induction_var
	movl	%eax, -68(%ebp)
	jmp	.L2099
.L2081:
	.loc 1 6345 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2104
	.loc 1 6346 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2104:
	.loc 1 6348 0
	movl	24(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2166
.L2106:
.L2166:
.LBB80:
	.loc 1 6354 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6357 0
	cmpl	$0, -24(%ebp)
	je	.L2107
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2107
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L2106
.L2107:
	.loc 1 6359 0
	cmpl	$0, -24(%ebp)
	je	.L2083
	.loc 1 6361 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2111
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2113
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2115
.L2113:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L2115:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L2116
.L2111:
	movl	$0, -64(%ebp)
.L2116:
	movl	-64(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6362 0
	cmpl	$0, -20(%ebp)
	je	.L2083
	.loc 1 6364 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6365 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L2118
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2130
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2122
	movl	$8, -52(%ebp)
	jmp	.L2124
.L2122:
	movl	$4, -52(%ebp)
.L2124:
	movl	-52(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	jg	.L2130
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L2130
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2130
.L2118:
	.loc 1 6370 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L2127
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	jmp	.L2129
.L2127:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
.L2129:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	basic_induction_var
	movl	%eax, -68(%ebp)
	jmp	.L2099
.L2131:
	.loc 1 6381 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L2130:
	.loc 1 6377 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L2131
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L2131
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L2131
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L2131
	.loc 1 6382 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L2083
	.loc 1 6384 0
	jmp	.L2106
.L2083:
.LBE80:
	.loc 1 6392 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	je	.L2080
	.loc 1 6393 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2080:
	.loc 1 6401 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	$1, %eax
	jne	.L2138
	movl	16(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L2138
	movl	16(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$4, %eax
	je	.L2138
	.loc 1 6406 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6407 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_modes@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6408 0
	call	get_last_insn@PLT
	cmpl	-16(%ebp), %eax
	je	.L2142
	.loc 1 6410 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insns_since@PLT
	.loc 1 6411 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2142:
	.loc 1 6414 0
	movl	28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6415 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6416 0
	movl	$1, -68(%ebp)
	jmp	.L2099
.L2138:
	.loc 1 6419 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2086:
	.loc 1 6422 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	basic_induction_var
	movl	%eax, -68(%ebp)
	jmp	.L2099
.L2085:
	.loc 1 6427 0
	movl	24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6428 0
	jmp	.L2144
.L2145:
	.loc 1 6430 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L2144:
	.loc 1 6428 0
	cmpl	$0, -24(%ebp)
	je	.L2146
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2146
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L2145
.L2146:
	.loc 1 6433 0
	cmpl	$0, -24(%ebp)
	je	.L2149
	.loc 1 6434 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2151
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2153
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2155
.L2153:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L2155:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2156
.L2151:
	movl	$0, -44(%ebp)
.L2156:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2149:
	.loc 1 6436 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2157
	cmpl	$0, -20(%ebp)
	je	.L2157
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2157
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2157
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L2157
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	jne	.L2157
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2157
	.loc 1 6442 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	basic_induction_var
	movl	%eax, -68(%ebp)
	jmp	.L2099
.L2157:
	.loc 1 6446 0
	movl	$0, -68(%ebp)
	jmp	.L2099
.L2079:
	.loc 1 6449 0
	movl	$0, -68(%ebp)
.L2099:
	movl	-68(%ebp), %eax
	.loc 1 6451 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	basic_induction_var, .-basic_induction_var
	.section	.rodata
	.type	__FUNCTION__.18669, @object
	.size	__FUNCTION__.18669, 22
__FUNCTION__.18669:
	.string	"general_induction_var"
	.text
	.type	general_induction_var, @function
general_induction_var:
.LFB74:
	.loc 1 6479 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%esi
.LCFI255:
	pushl	%ebx
.LCFI256:
	subl	$48, %esp
.LCFI257:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6480 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -16(%ebp)
	.loc 1 6481 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6484 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L2168
	.loc 1 6485 0
	movl	$0, -28(%ebp)
	jmp	.L2170
.L2168:
	.loc 1 6487 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6488 0
	movl	28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6489 0
	movl	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, 12(%ebp)
	.loc 1 6490 0
	cmpl	$0, 12(%ebp)
	jne	.L2171
	.loc 1 6491 0
	movl	$0, -28(%ebp)
	jmp	.L2170
.L2171:
	.loc 1 6493 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$58, %eax
	movl	%eax, -32(%ebp)
	cmpl	$30, -32(%ebp)
	ja	.L2173
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L2178@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2178:
	.long	.L2174@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2174@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2175@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2176@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2173@GOTOFF
	.long	.L2177@GOTOFF
	.text
.L2174:
	.loc 1 6500 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6501 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6502 0
	movl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6503 0
	jmp	.L2179
.L2175:
	.loc 1 6507 0
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6508 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6509 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6510 0
	jmp	.L2179
.L2176:
	.loc 1 6515 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2180
	.loc 1 6517 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6518 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2182
.L2180:
	.loc 1 6522 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6523 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L2182:
	.loc 1 6525 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6526 0
	jmp	.L2179
.L2177:
	.loc 1 6530 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6531 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6532 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6533 0
	jmp	.L2179
.L2173:
	.loc 1 6536 0
	leal	__FUNCTION__.18669@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6536, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2179:
	.loc 1 6541 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2183
	.loc 1 6542 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
.L2183:
	.loc 1 6543 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2185
	.loc 1 6544 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L2185:
	.loc 1 6546 0
	cmpl	$0, 32(%ebp)
	je	.L2187
	.loc 1 6547 0
	movl	36(%ebp), %eax
	movl	(%eax), %esi
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%eax, %edx
	movl	reg_address_cost@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	(%esi,%eax), %edx
	movl	36(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2189
.L2187:
	.loc 1 6549 0
	movl	36(%ebp), %eax
	movl	(%eax), %esi
	movl	$57, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	leal	(%esi,%eax), %edx
	movl	36(%ebp), %eax
	movl	%edx, (%eax)
.L2189:
	.loc 1 6554 0
	movl	$1, -28(%ebp)
.L2170:
	movl	-28(%ebp), %eax
	.loc 1 6555 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE74:
	.size	general_induction_var, .-general_induction_var
	.section	.rodata
	.type	__FUNCTION__.18752, @object
	.size	__FUNCTION__.18752, 18
__FUNCTION__.18752:
	.string	"simplify_giv_expr"
	.text
	.type	simplify_giv_expr, @function
simplify_giv_expr:
.LFB75:
	.loc 1 6586 0
	pushl	%ebp
.LCFI258:
	movl	%esp, %ebp
.LCFI259:
	pushl	%edi
.LCFI260:
	pushl	%esi
.LCFI261:
	pushl	%ebx
.LCFI262:
	subl	$108, %esp
.LCFI263:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6587 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -60(%ebp)
	.loc 1 6588 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -56(%ebp)
	.loc 1 6589 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 6595 0
	cmpl	$0, -52(%ebp)
	je	.L2192
	movl	-52(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L2194
	movl	-52(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	jbe	.L2192
.L2194:
	.loc 1 6598 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2192:
	.loc 1 6600 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$58, %eax
	movl	%eax, -84(%ebp)
	cmpl	$74, -84(%ebp)
	ja	.L2197
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L2207@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2207:
	.long	.L2198@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2199@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2200@GOTOFF
	.long	.L2201@GOTOFF
	.long	.L2202@GOTOFF
	.long	.L2203@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2204@GOTOFF
	.long	.L2205@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2197@GOTOFF
	.long	.L2206@GOTOFF
	.long	.L2206@GOTOFF
	.long	.L2206@GOTOFF
	.text
.L2200:
	.loc 1 6603 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -48(%ebp)
	.loc 1 6604 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -44(%ebp)
	.loc 1 6605 0
	cmpl	$0, -48(%ebp)
	je	.L2208
	cmpl	$0, -44(%ebp)
	jne	.L2210
.L2208:
	.loc 1 6606 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2210:
	.loc 1 6609 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L2211
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2213
.L2211:
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2214
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L2213
.L2214:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2213
	.loc 1 6614 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2213:
	.loc 1 6617 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2217
	.loc 1 6618 0
	movl	-48(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2217:
	.loc 1 6619 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2219
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2221
.L2219:
	.loc 1 6620 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$58, %eax
	movl	%eax, -88(%ebp)
	cmpl	$30, -88(%ebp)
	ja	.L2222
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L2226@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2226:
	.long	.L2223@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2223@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2224@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2225@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2222@GOTOFF
	.long	.L2224@GOTOFF
	.text
.L2223:
	.loc 1 6626 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2227
	.loc 1 6627 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L2227:
	.loc 1 6628 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2229
	.loc 1 6629 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L2229:
	.loc 1 6631 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2231
	.loc 1 6632 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2231:
	.loc 1 6633 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2233
	.loc 1 6634 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	sge_plus_constant
	movl	%eax, -40(%ebp)
	jmp	.L2235
.L2233:
	.loc 1 6636 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	sge_plus
	movl	%eax, -40(%ebp)
.L2235:
	.loc 1 6638 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2236
	.loc 1 6639 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -40(%ebp)
.L2236:
	.loc 1 6640 0
	movl	-40(%ebp), %edx
	movl	%edx, -80(%ebp)
	jmp	.L2196
.L2224:
	.loc 1 6645 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2225:
	.loc 1 6649 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2222:
	.loc 1 6659 0
	leal	__FUNCTION__.18752@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6659, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2221:
	.loc 1 6664 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2238
	.loc 1 6665 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
.L2238:
	.loc 1 6666 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2240
	.loc 1 6667 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -44(%ebp)
.L2240:
	.loc 1 6672 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2242
	.loc 1 6673 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2242:
	.loc 1 6675 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2244
	.loc 1 6676 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %esi
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2244:
	.loc 1 6685 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2246
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L2248
.L2246:
	.loc 1 6686 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2248:
	.loc 1 6688 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2249
	.loc 1 6689 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2249:
	.loc 1 6691 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2201:
	.loc 1 6701 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2203:
	.loc 1 6710 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -48(%ebp)
	.loc 1 6711 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -44(%ebp)
	.loc 1 6712 0
	cmpl	$0, -48(%ebp)
	je	.L2251
	cmpl	$0, -44(%ebp)
	jne	.L2253
.L2251:
	.loc 1 6713 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2253:
	.loc 1 6716 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L2254
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2256
.L2254:
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2256
	.loc 1 6718 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2256:
	.loc 1 6721 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L2258
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2258
	.loc 1 6722 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2258:
	.loc 1 6725 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2261
	.loc 1 6726 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2261:
	.loc 1 6728 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2263
	.loc 1 6729 0
	movl	-48(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	jmp	.L2196
.L2263:
	.loc 1 6731 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$58, %eax
	movl	%eax, -92(%ebp)
	cmpl	$30, -92(%ebp)
	ja	.L2265
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L2271@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2271:
	.long	.L2266@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2267@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2268@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2269@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2265@GOTOFF
	.long	.L2270@GOTOFF
	.text
.L2268:
	.loc 1 6735 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2267:
	.loc 1 6739 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-104(%ebp), %ecx
	imull	%edi, %ecx
	movl	-100(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -96(%ebp)
	addl	-96(%ebp), %ecx
	movl	-104(%ebp), %eax
	mull	%esi
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	addl	-100(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2266:
	.loc 1 6743 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2272
	.loc 1 6744 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2272:
	.loc 1 6746 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 6747 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2274
	.loc 1 6750 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2274:
	.loc 1 6760 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2276
	.loc 1 6763 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %esi
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2276:
	.loc 1 6775 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2270:
	.loc 1 6779 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2269:
	.loc 1 6789 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %esi
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2265:
	.loc 1 6800 0
	leal	__FUNCTION__.18752@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6800, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2205:
	.loc 1 6805 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2278
	.loc 1 6806 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2278:
	.loc 1 6808 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L2349
	movl	%eax, %edx
	xorl	%eax, %eax
.L2349:
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2202:
	.loc 1 6818 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2204:
	.loc 1 6824 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2198:
	.loc 1 6832 0
	movl	12(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	jmp	.L2196
.L2206:
	.loc 1 6840 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2285
	.loc 1 6842 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -48(%ebp)
	.loc 1 6843 0
	cmpl	$0, -48(%ebp)
	je	.L2285
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2285
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2285
	.loc 1 6845 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6846 0
	movl	-48(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2199:
	.loc 1 6853 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L2286
	.loc 1 6854 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2286:
	.loc 1 6857 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	cmpl	$1, -76(%ebp)
	je	.L2288
	cmpl	$3, -76(%ebp)
	je	.L2289
	jmp	.L2285
.L2288:
	.loc 1 6860 0
	movl	12(%ebp), %edx
	movl	%edx, -80(%ebp)
	jmp	.L2196
.L2289:
.LBB81:
	.loc 1 6863 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.LBB82:
	.loc 1 6876 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6877 0
	cmpl	$0, -32(%ebp)
	je	.L2290
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L2290
	.loc 1 6878 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
.L2290:
.LBE82:
	.loc 1 6881 0
	movl	-36(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2293
	.loc 1 6882 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2293:
	.loc 1 6884 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %esi
	movl	-36(%ebp), %eax
	movl	32(%eax), %edx
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -40(%ebp)
	.loc 1 6888 0
	movl	-36(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2295
	.loc 1 6889 0
	movl	-36(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -40(%ebp)
.L2295:
	.loc 1 6890 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -48(%ebp)
	.loc 1 6891 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2297
	.loc 1 6893 0
	movl	-36(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L2299
	.loc 1 6894 0
	movl	-48(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	jmp	.L2196
.L2299:
	.loc 1 6901 0
	movl	$0, -80(%ebp)
	jmp	.L2196
.L2297:
	.loc 1 6898 0
	movl	-36(%ebp), %eax
	movl	64(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6899 0
	movl	-48(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2285:
.LBE81:
	.loc 1 6909 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L2197
.LBB83:
	.loc 1 6912 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$120, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6914 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2302
.L2303:
	.loc 1 6915 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2304
	.loc 1 6921 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2306
	.loc 1 6922 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2306:
	.loc 1 6929 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2308
.LBB84:
	.loc 1 6931 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6932 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L2310:
	.loc 1 6935 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6937 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jg	.L2310
	.loc 1 6939 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -40(%ebp)
	.loc 1 6940 0
	cmpl	$0, -40(%ebp)
	je	.L2314
	.loc 1 6941 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2314
.L2308:
.LBE84:
	.loc 1 6945 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2315
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2317
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L2319
.L2317:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L2319:
	movl	-68(%ebp), %edx
	movl	%edx, -72(%ebp)
	jmp	.L2320
.L2315:
	movl	$0, -72(%ebp)
.L2320:
	movl	-72(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 6946 0
	cmpl	$0, -40(%ebp)
	je	.L2314
	.loc 1 6947 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L2314:
	.loc 1 6950 0
	cmpl	$0, -40(%ebp)
	je	.L2197
	.loc 1 6955 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2324
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L2324
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	je	.L2324
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2324
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2329
.L2324:
	.loc 1 6961 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -40(%ebp)
	.loc 1 6963 0
	cmpl	$0, -40(%ebp)
	je	.L2197
	.loc 1 6964 0
	movl	-40(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2329:
	.loc 1 6966 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2197
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2197
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2197
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2197
	.loc 1 6971 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_giv_expr
	movl	%eax, -40(%ebp)
	.loc 1 6973 0
	cmpl	$0, -40(%ebp)
	je	.L2197
	.loc 1 6974 0
	movl	-40(%ebp), %edx
	movl	%edx, -80(%ebp)
	jmp	.L2196
.L2304:
	.loc 1 6914 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
.L2302:
	cmpl	$0, -28(%ebp)
	jne	.L2303
.L2197:
.LBE83:
	.loc 1 6987 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L2337
	.loc 1 6988 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L2337:
	.loc 1 6990 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L2339
	.loc 1 6992 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2341
	.loc 1 6993 0
	movl	12(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	jmp	.L2196
.L2341:
	.loc 1 6994 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2343
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2343
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2343
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2343
	.loc 1 6998 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L2343:
	.loc 1 6999 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -80(%ebp)
	jmp	.L2196
.L2339:
	.loc 1 7002 0
	movl	$0, -80(%ebp)
.L2196:
	movl	-80(%ebp), %eax
	.loc 1 7004 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE75:
	.size	simplify_giv_expr, .-simplify_giv_expr
	.type	sge_plus_constant, @function
sge_plus_constant:
.LFB76:
	.loc 1 7012 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%edi
.LCFI266:
	pushl	%esi
.LCFI267:
	pushl	%ebx
.LCFI268:
	subl	$28, %esp
.LCFI269:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7013 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2351
	.loc 1 7014 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -16(%ebp)
	jmp	.L2353
.L2351:
	.loc 1 7015 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2354
	.loc 1 7016 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	jmp	.L2353
.L2354:
	.loc 1 7017 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2356
	.loc 1 7019 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	jmp	.L2353
.L2356:
	.loc 1 7022 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2358
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2360
.L2358:
	.loc 1 7025 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sge_plus_constant
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	jmp	.L2353
.L2360:
	.loc 1 7030 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sge_plus_constant
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
.L2353:
	movl	-16(%ebp), %eax
	.loc 1 7033 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE76:
	.size	sge_plus_constant, .-sge_plus_constant
	.type	sge_plus, @function
sge_plus:
.LFB77:
	.loc 1 7039 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	pushl	%ebx
.LCFI272:
	subl	$36, %esp
.LCFI273:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB85:
	.loc 1 7040 0
	jmp	.L2363
.L2364:
	.loc 1 7042 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7043 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2365
	.loc 1 7044 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sge_plus_constant
	movl	%eax, 12(%ebp)
	jmp	.L2367
.L2365:
	.loc 1 7046 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%ebp)
.L2367:
	.loc 1 7047 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 16(%ebp)
.L2363:
.LBE85:
	.loc 1 7040 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2364
	.loc 1 7049 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2369
	.loc 1 7050 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sge_plus_constant
	movl	%eax, 12(%ebp)
	jmp	.L2371
.L2369:
	.loc 1 7052 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%ebp)
.L2371:
	.loc 1 7053 0
	movl	12(%ebp), %eax
	.loc 1 7054 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	sge_plus, .-sge_plus
	.type	consec_sets_giv, @function
consec_sets_giv:
.LFB78:
	.loc 1 7087 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$148, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 7087 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 7088 0
	movl	-56(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -36(%ebp)
	.loc 1 7089 0
	movl	-56(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -32(%ebp)
	.loc 1 7105 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2374
	.loc 1 7106 0
	movl	$0, -108(%ebp)
	jmp	.L2376
.L2374:
	.loc 1 7108 0
	subl	$112, %esp
	leal	36(%esp), %edx
	movl	%edx, -104(%ebp)
	movl	-104(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7109 0
	movl	-64(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 7110 0
	movl	-76(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 7111 0
	movl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 7112 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 7113 0
	movl	-12(%ebp), %edx
	movzbl	52(%edx), %eax
	andl	$-65, %eax
	movb	%al, 52(%edx)
	.loc 1 7114 0
	movl	-12(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 7115 0
	movl	-12(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 7117 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$3, (%eax)
	.loc 1 7118 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 7120 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 7122 0
	jmp	.L2420
.L2378:
	.loc 1 7124 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 7125 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 7128 0
	cmpl	$42, -24(%ebp)
	jne	.L2379
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L2379
	.loc 1 7129 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L2379:
	.loc 1 7131 0
	cmpl	$42, -24(%ebp)
	jne	.L2382
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2384
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2386
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2388
.L2386:
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -96(%ebp)
.L2388:
	movl	-96(%ebp), %edx
	movl	%edx, -100(%ebp)
	jmp	.L2389
.L2384:
	movl	$0, -100(%ebp)
.L2389:
	movl	-100(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L2382
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2382
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L2382
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	general_induction_var
	testl	%eax, %eax
	jne	.L2393
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L2382
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 32(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	general_induction_var
	testl	%eax, %eax
	je	.L2382
.L2393:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L2382
	.loc 1 7145 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L2397
	.loc 1 7146 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	libcall_benefit
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
.L2397:
	.loc 1 7148 0
	subl	$1, -28(%ebp)
	.loc 1 7149 0
	movl	-76(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 7150 0
	movl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 7151 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 7131 0
	jmp	.L2377
.L2382:
	.loc 1 7153 0
	cmpl	$47, -24(%ebp)
	je	.L2377
	.loc 1 7158 0
	cmpl	$42, -24(%ebp)
	jne	.L2400
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2402
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2404
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L2406
.L2404:
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -88(%ebp)
.L2406:
	movl	-88(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L2407
.L2402:
	movl	$0, -92(%ebp)
.L2407:
	movl	-92(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L2400
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L2400
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2377
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L2377
.L2400:
	.loc 1 7164 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 7165 0
	movl	$0, -108(%ebp)
	jmp	.L2376
.L2377:
.L2420:
	.loc 1 7122 0
	cmpl	$0, -28(%ebp)
	jg	.L2378
	.loc 1 7169 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 7170 0
	movl	-84(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7171 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -108(%ebp)
.L2376:
	movl	-108(%ebp), %eax
	.loc 1 7172 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2419
	call	__stack_chk_fail_local
.L2419:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE78:
	.size	consec_sets_giv, .-consec_sets_giv
	.type	express_from_1, @function
express_from_1:
.LFB79:
	.loc 1 7194 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%edi
.LCFI280:
	pushl	%esi
.LCFI281:
	pushl	%ebx
.LCFI282:
	subl	$92, %esp
.LCFI283:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7197 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L2422
	.loc 1 7198 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2422:
	.loc 1 7205 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L2477
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2477
	.loc 1 7206 0
	movl	$0, -72(%ebp)
	jmp	.L2424
.L2429:
.LBB86:
	.loc 1 7218 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7219 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2430
	.loc 1 7220 0
	movl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
.L2430:
	.loc 1 7222 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7223 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2432
	.loc 1 7224 0
	movl	-52(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2432:
	.loc 1 7226 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2434
	.loc 1 7228 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L2428
.L2434:
	.loc 1 7229 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2436
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2436
	.loc 1 7231 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 7229 0
	jmp	.L2428
.L2436:
	.loc 1 7232 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2439
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2439
	.loc 1 7234 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 7232 0
	jmp	.L2428
.L2439:
	.loc 1 7239 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	express_from_1
	movl	%eax, -44(%ebp)
	.loc 1 7240 0
	cmpl	$0, -44(%ebp)
	jne	.L2442
	.loc 1 7241 0
	movl	$0, -72(%ebp)
	jmp	.L2424
.L2442:
	.loc 1 7242 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2428:
.L2477:
.LBE86:
	.loc 1 7214 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2444
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2429
.L2444:
	.loc 1 7249 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2446
.LBB87:
	.loc 1 7253 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7254 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2448
	.loc 1 7255 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2450
.L2448:
	.loc 1 7256 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2450
	.loc 1 7257 0
	movl	$0, -72(%ebp)
	jmp	.L2424
.L2450:
	.loc 1 7259 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2452
	.loc 1 7260 0
	movl	$0, -72(%ebp)
	jmp	.L2424
.L2452:
	.loc 1 7262 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-88(%ebp), %ecx
	imull	%edi, %ecx
	movl	-84(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -76(%ebp)
	addl	-76(%ebp), %ecx
	movl	-88(%ebp), %eax
	mull	%esi
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	addl	-84(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2446:
.LBE87:
	.loc 1 7264 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2454
	.loc 1 7266 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-88(%ebp), %ecx
	imull	%edi, %ecx
	movl	-84(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -80(%ebp)
	addl	-80(%ebp), %ecx
	movl	-88(%ebp), %eax
	mull	%esi
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	addl	-84(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2454:
	.loc 1 7268 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2456
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2464
.L2456:
.LBB88:
	.loc 1 7270 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 7271 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 7272 0
	cmpl	$0, -24(%ebp)
	jne	.L2465
	movl	-28(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L2467
.L2465:
	movl	-24(%ebp), %eax
	movl	%eax, -68(%ebp)
.L2467:
	movl	-68(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 7273 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2464:
.LBE88:
	.loc 1 7275 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2468
	.loc 1 7277 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2470
	.loc 1 7278 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2470:
	.loc 1 7279 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2472
	.loc 1 7280 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2472:
	.loc 1 7282 0
	movl	$0, -72(%ebp)
	jmp	.L2424
.L2468:
	.loc 1 7284 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2474
	.loc 1 7285 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2424
.L2474:
	.loc 1 7287 0
	movl	$0, -72(%ebp)
.L2424:
	movl	-72(%ebp), %eax
	.loc 1 7288 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE79:
	.size	express_from_1, .-express_from_1
.globl express_from
	.type	express_from, @function
express_from:
.LFB80:
	.loc 1 7293 0
	pushl	%ebp
.LCFI284:
	movl	%esp, %ebp
.LCFI285:
	pushl	%edi
.LCFI286:
	pushl	%esi
.LCFI287:
	pushl	%ebx
.LCFI288:
	subl	$76, %esp
.LCFI289:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7299 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2479
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2479
	.loc 1 7302 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L2482
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2484
.L2482:
	.loc 1 7304 0
	movl	$0, -60(%ebp)
	jmp	.L2485
.L2484:
	.loc 1 7305 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7299 0
	jmp	.L2486
.L2479:
	.loc 1 7307 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2487
	.loc 1 7308 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2486
.L2487:
	.loc 1 7312 0
	movl	$0, -60(%ebp)
	jmp	.L2485
.L2486:
	.loc 1 7315 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	express_from_1
	movl	%eax, -28(%ebp)
	.loc 1 7316 0
	cmpl	$0, -28(%ebp)
	jne	.L2489
	.loc 1 7320 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	cmpl	$0, -52(%ebp)
	js	.L2489
	cmpl	$0, -52(%ebp)
	jg	.L2492
	cmpl	$1, -56(%ebp)
	jbe	.L2489
.L2492:
.LBB89:
	.loc 1 7322 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7323 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2493
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2493
.LBB90:
	.loc 1 7327 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-72(%ebp), %ecx
	imull	%edi, %ecx
	movl	-68(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -64(%ebp)
	addl	-64(%ebp), %ecx
	movl	-72(%ebp), %eax
	mull	%esi
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	addl	-68(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 7328 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7323 0
	jmp	.L2496
.L2493:
.LBE90:
	.loc 1 7333 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
.L2496:
	.loc 1 7337 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	express_from_1
	movl	%eax, -28(%ebp)
.L2489:
.LBE89:
	.loc 1 7340 0
	cmpl	$0, -28(%ebp)
	jne	.L2497
	.loc 1 7341 0
	movl	$0, -60(%ebp)
	jmp	.L2485
.L2497:
	.loc 1 7344 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2499
	.loc 1 7345 0
	movl	-28(%ebp), %edx
	movl	%edx, -60(%ebp)
	jmp	.L2485
.L2499:
	.loc 1 7346 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2501
	.loc 1 7347 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2503
.L2501:
	.loc 1 7349 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -32(%ebp)
.L2503:
	.loc 1 7351 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2504
	.loc 1 7352 0
	movl	-32(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	jmp	.L2485
.L2504:
	.loc 1 7355 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2506
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2508
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2506
.L2508:
.LBB91:
	.loc 1 7358 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7359 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7360 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L2506:
.LBE91:
	.loc 1 7363 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -60(%ebp)
.L2485:
	movl	-60(%ebp), %eax
	.loc 1 7365 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	express_from, .-express_from
	.type	combine_givs_p, @function
combine_givs_p:
.LFB81:
	.loc 1 7375 0
	pushl	%ebp
.LCFI290:
	movl	%esp, %ebp
.LCFI291:
	pushl	%ebx
.LCFI292:
	subl	$36, %esp
.LCFI293:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7380 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L2518
	.loc 1 7381 0
	movl	$0, -24(%ebp)
	jmp	.L2520
.L2518:
	.loc 1 7383 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	express_from@PLT
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7384 0
	cmpl	$0, -12(%ebp)
	jne	.L2521
	.loc 1 7385 0
	movl	$0, -24(%ebp)
	jmp	.L2520
.L2521:
	.loc 1 7386 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L2523
	.loc 1 7387 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -8(%ebp)
.L2523:
	.loc 1 7394 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2525
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L2527
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2525
.L2527:
	.loc 1 7397 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2520
.L2525:
	.loc 1 7403 0
	cmpl	$0, -8(%ebp)
	je	.L2529
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2529
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L2529
	.loc 1 7418 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2520
.L2529:
	.loc 1 7421 0
	movl	$0, -24(%ebp)
.L2520:
	movl	-24(%ebp), %eax
	.loc 1 7422 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	combine_givs_p, .-combine_givs_p
	.section	.rodata
	.type	__FUNCTION__.19720, @object
	.size	__FUNCTION__.19720, 25
__FUNCTION__.19720:
	.string	"check_ext_dependent_givs"
	.align 4
.LC61:
	.string	"Verified ext dependent giv at %d of reg %d\n"
	.align 4
.LC62:
	.string	"biv iteration values overflowed"
	.align 4
.LC63:
	.string	"biv iteration info incomplete; incr by 1"
.LC64:
	.string	"biv iteration info incomplete"
	.align 4
.LC65:
	.string	"Failed ext dependent giv at %d, %s\n"
	.text
	.type	check_ext_dependent_givs, @function
check_ext_dependent_givs:
.LFB82:
	.loc 1 7432 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	pushl	%edi
.LCFI296:
	pushl	%esi
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$268, %esp
.LCFI299:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7433 0
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 7434 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 7436 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	.loc 1 7437 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 7438 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7446 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2535
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2535
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2535
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L2535
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2535
	movl	-48(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L2535
.LBB92:
	.loc 1 7458 0
	movl	$1, -52(%ebp)
	.loc 1 7459 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 7460 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 7462 0
	movl	$0, -36(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 7463 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L2542
	.loc 1 7464 0
	movl	$1, -36(%ebp)
	negl	-112(%ebp)
	adcl	$0, -108(%ebp)
	negl	-108(%ebp)
.L2542:
	.loc 1 7465 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%edx, %esi
	imull	-112(%ebp), %esi
	movl	-108(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-112(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 7468 0
	movl	12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%edx, %ecx
	xorl	-108(%ebp), %ecx
	xorl	-112(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2535
.LBB93:
	.loc 1 7473 0
	cmpl	$0, -36(%ebp)
	je	.L2545
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	jmp	.L2547
.L2545:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
.L2547:
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	-184(%ebp), %eax
	adcl	-180(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	.loc 1 7474 0
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 7475 0
	movl	-48(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 7476 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 7479 0
	cmpl	$0, -132(%ebp)
	js	.L2548
	cmpl	$0, -36(%ebp)
	je	.L2550
	movb	$1, -169(%ebp)
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	-188(%ebp), %ecx
	cmpl	-116(%ebp), %ecx
	jb	.L2554
	movl	-188(%ebp), %esi
	cmpl	-116(%ebp), %esi
	ja	.L2553
	movl	-192(%ebp), %edi
	cmpl	-120(%ebp), %edi
	jb	.L2554
.L2553:
	movb	$0, -169(%ebp)
	jmp	.L2554
.L2550:
	movb	$1, -169(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	movl	-196(%ebp), %edx
	cmpl	-116(%ebp), %edx
	ja	.L2554
	movl	-196(%ebp), %ecx
	cmpl	-116(%ebp), %ecx
	jb	.L2556
	movl	-200(%ebp), %esi
	cmpl	-120(%ebp), %esi
	ja	.L2554
.L2556:
	movb	$0, -169(%ebp)
.L2554:
	cmpb	$0, -169(%ebp)
	je	.L2548
	cmpl	$0, -36(%ebp)
	jne	.L2558
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	-204(%ebp), %edx
	cmpl	-84(%ebp), %edx
	ja	.L2548
	movl	-204(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	jb	.L2558
	movl	-208(%ebp), %esi
	cmpl	-88(%ebp), %esi
	ja	.L2548
.L2558:
	.loc 1 7489 0
	movl	$1, -60(%ebp)
.L2548:
	.loc 1 7497 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %edi
	notl	%edi
	movl	%edi, -168(%ebp)
	movl	%edx, %eax
	notl	%eax
	movl	%eax, -164(%ebp)
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-164(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jg	.L2535
	movl	-164(%ebp), %esi
	cmpl	-132(%ebp), %esi
	jl	.L2562
	movl	-168(%ebp), %edi
	cmpl	-136(%ebp), %edi
	ja	.L2535
.L2562:
	cmpl	$0, -36(%ebp)
	je	.L2563
	movb	$1, -154(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	movl	-212(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jl	.L2567
	movl	-212(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jg	.L2566
	movl	-216(%ebp), %esi
	cmpl	-136(%ebp), %esi
	jb	.L2567
.L2566:
	movb	$0, -154(%ebp)
	jmp	.L2567
.L2563:
	movb	$1, -154(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-220(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jg	.L2567
	movl	-220(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jl	.L2569
	movl	-224(%ebp), %esi
	cmpl	-136(%ebp), %esi
	ja	.L2567
.L2569:
	movb	$0, -154(%ebp)
.L2567:
	cmpb	$0, -154(%ebp)
	je	.L2535
	cmpl	$0, -36(%ebp)
	je	.L2571
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %edi
	notl	%edi
	movl	%edi, -152(%ebp)
	movl	%edx, %eax
	notl	%eax
	movl	%eax, -148(%ebp)
	movl	-152(%ebp), %edx
	movl	-148(%ebp), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movb	$1, -153(%ebp)
	movl	-148(%ebp), %ecx
	cmpl	-92(%ebp), %ecx
	jl	.L2575
	movl	-148(%ebp), %esi
	cmpl	-92(%ebp), %esi
	jg	.L2574
	movl	-152(%ebp), %edi
	cmpl	-96(%ebp), %edi
	jbe	.L2575
.L2574:
	movb	$0, -153(%ebp)
	jmp	.L2575
.L2571:
	movb	$1, -153(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	movl	-228(%ebp), %edx
	cmpl	-76(%ebp), %edx
	jl	.L2575
	movl	-228(%ebp), %ecx
	cmpl	-76(%ebp), %ecx
	jg	.L2577
	movl	-232(%ebp), %esi
	cmpl	-80(%ebp), %esi
	jbe	.L2575
.L2577:
	movb	$0, -153(%ebp)
.L2575:
	cmpb	$0, -153(%ebp)
	je	.L2535
	.loc 1 7507 0
	movl	$1, -56(%ebp)
.L2535:
.LBE93:
.LBE92:
	.loc 1 7513 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2579
.L2580:
	.loc 1 7514 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2581
.LBB94:
	.loc 1 7516 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 7517 0
	movl	$0, -28(%ebp)
	.loc 1 7519 0
	movl	-32(%ebp), %edi
	movl	%edi, -236(%ebp)
	cmpl	$131, -236(%ebp)
	je	.L2585
	cmpl	$132, -236(%ebp)
	je	.L2586
	cmpl	$130, -236(%ebp)
	je	.L2584
	jmp	.L2583
.L2584:
	.loc 1 7522 0
	movl	-56(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7523 0
	jmp	.L2587
.L2585:
	.loc 1 7525 0
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7526 0
	jmp	.L2587
.L2586:
	.loc 1 7534 0
	cmpl	$0, -56(%ebp)
	je	.L2587
	cmpl	$0, -60(%ebp)
	je	.L2587
.LBB95:
	.loc 1 7536 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 7537 0
	movl	-24(%ebp), %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 7542 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	-244(%ebp), %edx
	cmpl	-68(%ebp), %edx
	ja	.L2587
	movl	-244(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	jb	.L2592
	movl	-248(%ebp), %esi
	cmpl	-72(%ebp), %esi
	ja	.L2587
.L2592:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	movl	-252(%ebp), %edx
	cmpl	-68(%ebp), %edx
	ja	.L2587
	movl	-252(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	jb	.L2594
	movl	-256(%ebp), %esi
	cmpl	-72(%ebp), %esi
	ja	.L2587
.L2594:
	.loc 1 7543 0
	movl	$1, -28(%ebp)
	.loc 1 7545 0
	jmp	.L2587
.L2583:
.LBE95:
	.loc 1 7548 0
	leal	__FUNCTION__.19720@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7548, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2587:
	.loc 1 7551 0
	cmpl	$0, -28(%ebp)
	je	.L2595
	.loc 1 7553 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2581
	.loc 1 7555 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L2581
.L2595:
	.loc 1 7562 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2599
.LBB96:
	.loc 1 7566 0
	cmpl	$0, -52(%ebp)
	je	.L2601
	.loc 1 7567 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2603
.L2601:
	.loc 1 7570 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2604
	.loc 1 7571 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -44(%ebp)
.L2604:
	.loc 1 7572 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L2606
	.loc 1 7573 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2603
.L2606:
	.loc 1 7575 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
.L2603:
	.loc 1 7578 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L2599:
.LBE96:
	.loc 1 7582 0
	movl	-40(%ebp), %edx
	movzbl	52(%edx), %eax
	orl	$4, %eax
	movb	%al, 52(%edx)
	.loc 1 7583 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-17, %eax
	movb	%al, 48(%edx)
.L2581:
.LBE94:
	.loc 1 7513 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L2579:
	cmpl	$0, -40(%ebp)
	jne	.L2580
	.loc 1 7586 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE82:
	.size	check_ext_dependent_givs, .-check_ext_dependent_givs
.globl extend_value_for_giv
	.type	extend_value_for_giv, @function
extend_value_for_giv:
.LFB83:
	.loc 1 7594 0
	pushl	%ebp
.LCFI300:
	movl	%esp, %ebp
.LCFI301:
	pushl	%ebx
.LCFI302:
	subl	$36, %esp
.LCFI303:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7595 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7597 0
	cmpl	$0, -8(%ebp)
	jne	.L2611
	.loc 1 7598 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2613
.L2611:
	.loc 1 7603 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2614
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2622
.L2614:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L2622
	.loc 1 7604 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2613
.L2622:
	.loc 1 7608 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -24(%ebp)
.L2613:
	movl	-24(%ebp), %eax
	.loc 1 7609 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	extend_value_for_giv, .-extend_value_for_giv
	.type	cmp_combine_givs_stats, @function
cmp_combine_givs_stats:
.LFB84:
	.loc 1 7621 0
	pushl	%ebp
.LCFI304:
	movl	%esp, %ebp
.LCFI305:
	subl	$16, %esp
.LCFI306:
	.loc 1 7623 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7625 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7627 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 7629 0
	cmpl	$0, -4(%ebp)
	jne	.L2626
	.loc 1 7630 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
.L2626:
	.loc 1 7631 0
	movl	-4(%ebp), %eax
	.loc 1 7632 0
	leave
	ret
.LFE84:
	.size	cmp_combine_givs_stats, .-cmp_combine_givs_stats
	.section	.rodata
.LC66:
	.string	"Sorted combine statistics:\n"
.LC67:
	.string	" {%d, %d}"
	.align 4
.LC68:
	.string	"giv at %d combined with giv at %d; new benefit %d + %d, lifetime %d\n"
	.text
	.type	combine_givs, @function
combine_givs:
.LFB85:
	.loc 1 7643 0
	pushl	%ebp
.LCFI307:
	movl	%esp, %ebp
.LCFI308:
	pushl	%edi
.LCFI309:
	pushl	%esi
.LCFI310:
	pushl	%ebx
.LCFI311:
	subl	$124, %esp
.LCFI312:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 7643 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 7645 0
	movl	$3, -84(%ebp)
	.loc 1 7653 0
	movl	$0, -56(%ebp)
	.loc 1 7654 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2630
.L2631:
	.loc 1 7655 0
	movl	-80(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2632
	.loc 1 7656 0
	addl	$1, -56(%ebp)
.L2632:
	.loc 1 7654 0
	movl	-80(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -80(%ebp)
.L2630:
	cmpl	$0, -80(%ebp)
	jne	.L2631
	.loc 1 7658 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	28(%esp), %esi
	movl	%esi, -108(%ebp)
	movl	-108(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 7660 0
	movl	$0, -68(%ebp)
	.loc 1 7661 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2635
.L2636:
	.loc 1 7662 0
	movl	-80(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2637
	.loc 1 7663 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-72(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -68(%ebp)
.L2637:
	.loc 1 7661 0
	movl	-80(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -80(%ebp)
.L2635:
	cmpl	$0, -80(%ebp)
	jne	.L2636
	.loc 1 7665 0
	movl	-56(%ebp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7666 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xcalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7668 0
	movl	$0, -68(%ebp)
	jmp	.L2640
.L2641:
.LBB97:
	.loc 1 7673 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 7674 0
	movl	-68(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7682 0
	movl	-80(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L2642
	movl	-96(%ebp), %eax
	movl	8(%eax), %edx
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L2642
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2645
.L2642:
	.loc 1 7687 0
	movl	-80(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7689 0
	movl	-80(%ebp), %eax
	movzbl	53(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2646
	.loc 1 7690 0
	addl	$1, -44(%ebp)
.L2646:
	.loc 1 7692 0
	movl	$0, -64(%ebp)
	jmp	.L2648
.L2649:
.LBB98:
	.loc 1 7696 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 7697 0
	movl	-80(%ebp), %eax
	cmpl	-76(%ebp), %eax
	je	.L2650
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_givs_p
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L2650
	.loc 1 7700 0
	movl	-68(%ebp), %eax
	imull	-56(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7701 0
	movl	-76(%ebp), %eax
	movl	40(%eax), %eax
	addl	-84(%ebp), %eax
	addl	%eax, -44(%ebp)
.L2650:
.LBE98:
	.loc 1 7692 0
	addl	$1, -64(%ebp)
.L2648:
	movl	-64(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2649
	.loc 1 7704 0
	movl	-68(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%edx)
.L2645:
.LBE97:
	.loc 1 7668 0
	addl	$1, -68(%ebp)
.L2640:
	movl	-68(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2641
.L2654:
	.loc 1 7709 0
	movl	-56(%ebp), %edx
	leal	cmp_combine_givs_stats@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 7711 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2655
	.loc 1 7713 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 7714 0
	movl	$0, -60(%ebp)
	jmp	.L2657
.L2658:
	.loc 1 7716 0
	movl	-60(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 7717 0
	movl	-80(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L2659
	movl	-80(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L2659
	.loc 1 7718 0
	movl	-60(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	4(%eax), %esi
	movl	-60(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L2659:
	.loc 1 7714 0
	addl	$1, -60(%ebp)
.L2657:
	movl	-60(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2658
	.loc 1 7722 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L2655:
	.loc 1 7725 0
	movl	$0, -60(%ebp)
	jmp	.L2663
.L2664:
.LBB99:
	.loc 1 7727 0
	movl	$0, -32(%ebp)
	.loc 1 7729 0
	movl	-60(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 7730 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 7733 0
	movl	-80(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L2665
	movl	-80(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L2665
	.loc 1 7736 0
	movl	$0, -64(%ebp)
	jmp	.L2668
.L2669:
	.loc 1 7738 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 7739 0
	movl	-80(%ebp), %eax
	cmpl	-76(%ebp), %eax
	je	.L2670
	movl	-68(%ebp), %eax
	imull	-56(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2670
	movl	-76(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L2670
	movl	-76(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L2670
.LBB100:
	.loc 1 7745 0
	movl	-68(%ebp), %eax
	imull	-56(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 7746 0
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 7750 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2675
	.loc 1 7751 0
	movl	-76(%ebp), %eax
	movl	40(%eax), %edx
	movl	reg_address_cost@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	address_cost@PLT
	movl	%esi, %edx
	subl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 40(%eax)
.L2675:
	.loc 1 7754 0
	movl	-80(%ebp), %eax
	movl	48(%eax), %eax
	leal	1(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 7755 0
	movl	-80(%ebp), %eax
	movl	56(%eax), %edx
	movl	-76(%ebp), %eax
	movl	56(%eax), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 7757 0
	movl	-76(%ebp), %eax
	movl	40(%eax), %eax
	addl	%eax, -32(%ebp)
	.loc 1 7762 0
	movl	-76(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2677
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2677
	.loc 1 7763 0
	movl	copy_cost@GOTOFF(%ebx), %eax
	subl	%eax, -32(%ebp)
.L2677:
	.loc 1 7767 0
	movl	$0, -28(%ebp)
	jmp	.L2680
.L2681:
.LBB101:
	.loc 1 7769 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7770 0
	movl	-24(%ebp), %eax
	imull	-56(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2682
	.loc 1 7771 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-52(%ebp), %ecx
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	40(%eax), %eax
	addl	-84(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, 4(%ecx)
.L2682:
.LBE101:
	.loc 1 7767 0
	addl	$1, -28(%ebp)
.L2680:
	movl	-28(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2681
	.loc 1 7774 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2670
	.loc 1 7775 0
	movl	-80(%ebp), %eax
	movl	56(%eax), %edi
	movl	-80(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edi, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L2670:
.LBE100:
	.loc 1 7736 0
	addl	$1, -64(%ebp)
.L2668:
	movl	-64(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2669
	.loc 1 7784 0
	movl	-80(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2665
	.loc 1 7786 0
	movl	$0, -64(%ebp)
	jmp	.L2688
.L2689:
.LBB102:
	.loc 1 7788 0
	movl	-64(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7789 0
	movl	-20(%ebp), %eax
	imull	-56(%ebp), %eax
	addl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2690
	.loc 1 7790 0
	movl	-64(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-52(%ebp), %ecx
	movl	-64(%ebp), %eax
	sall	$3, %eax
	addl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	movl	40(%eax), %eax
	addl	-84(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, 4(%ecx)
.L2690:
.LBE102:
	.loc 1 7786 0
	addl	$1, -64(%ebp)
.L2688:
	movl	-64(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2689
	.loc 1 7793 0
	movl	-80(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 7801 0
	jmp	.L2654
.L2665:
.LBE99:
	.loc 1 7725 0
	addl	$1, -60(%ebp)
.L2663:
	movl	-60(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L2664
	.loc 1 7806 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7807 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 7808 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2695
	call	__stack_chk_fail_local
.L2695:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE85:
	.size	combine_givs, .-combine_givs
	.type	gen_add_mult, @function
gen_add_mult:
.LFB86:
	.loc 1 7818 0
	pushl	%ebp
.LCFI313:
	movl	%esp, %ebp
.LCFI314:
	pushl	%ebx
.LCFI315:
	subl	$52, %esp
.LCFI316:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7822 0
	call	start_sequence@PLT
	.loc 1 7824 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 20(%esp)
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_add@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7825 0
	movl	20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L2697
	.loc 1 7826 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2697:
	.loc 1 7827 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7828 0
	call	end_sequence@PLT
	.loc 1 7830 0
	movl	-12(%ebp), %eax
	.loc 1 7831 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	gen_add_mult, .-gen_add_mult
	.type	loop_regs_update, @function
loop_regs_update:
.LFB87:
	.loc 1 7840 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	pushl	%ebx
.LCFI319:
	subl	$36, %esp
.LCFI320:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7845 0
	cmpl	$0, 12(%ebp)
	je	.L2719
	.loc 1 7848 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2703
	.loc 1 7850 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7851 0
	jmp	.L2705
.L2706:
.LBB103:
	.loc 1 7853 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2707
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2709
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2711
.L2709:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L2711:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2712
.L2707:
	movl	$0, -28(%ebp)
.L2712:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7855 0
	cmpl	$0, -8(%ebp)
	je	.L2713
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2713
	.loc 1 7856 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
.L2713:
	.loc 1 7858 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2705:
.LBE103:
	.loc 1 7851 0
	cmpl	$0, -12(%ebp)
	jne	.L2706
	jmp	.L2719
.L2703:
	.loc 1 7861 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2719
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2719
	.loc 1 7863 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
.L2719:
	.loc 1 7864 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	loop_regs_update, .-loop_regs_update
.globl loop_iv_add_mult_emit_before
	.type	loop_iv_add_mult_emit_before, @function
loop_iv_add_mult_emit_before:
.LFB88:
	.loc 1 7878 0
	pushl	%ebp
.LCFI321:
	movl	%esp, %ebp
.LCFI322:
	pushl	%edi
.LCFI323:
	pushl	%esi
.LCFI324:
	pushl	%ebx
.LCFI325:
	subl	$44, %esp
.LCFI326:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7881 0
	cmpl	$0, 32(%ebp)
	jne	.L2721
	.loc 1 7883 0
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
	call	loop_iv_add_mult_hoist@PLT
	.loc 1 7884 0
	jmp	.L2724
.L2721:
	.loc 1 7888 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	gen_add_mult
	movl	%eax, -16(%ebp)
	.loc 1 7891 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7892 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7893 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7898 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_update
	.loc 1 7900 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
.L2724:
	.loc 1 7901 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE88:
	.size	loop_iv_add_mult_emit_before, .-loop_iv_add_mult_emit_before
.globl loop_iv_add_mult_sink
	.type	loop_iv_add_mult_sink, @function
loop_iv_add_mult_sink:
.LFB89:
	.loc 1 7913 0
	pushl	%ebp
.LCFI327:
	movl	%esp, %ebp
.LCFI328:
	pushl	%edi
.LCFI329:
	pushl	%esi
.LCFI330:
	pushl	%ebx
.LCFI331:
	subl	$44, %esp
.LCFI332:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7917 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	gen_add_mult
	movl	%eax, -16(%ebp)
	.loc 1 7921 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7922 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7923 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_last_use
	.loc 1 7928 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_update
	.loc 1 7930 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
	.loc 1 7931 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE89:
	.size	loop_iv_add_mult_sink, .-loop_iv_add_mult_sink
.globl loop_iv_add_mult_hoist
	.type	loop_iv_add_mult_hoist, @function
loop_iv_add_mult_hoist:
.LFB90:
	.loc 1 7943 0
	pushl	%ebp
.LCFI333:
	movl	%esp, %ebp
.LCFI334:
	pushl	%edi
.LCFI335:
	pushl	%esi
.LCFI336:
	pushl	%ebx
.LCFI337:
	subl	$44, %esp
.LCFI338:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7947 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	gen_add_mult
	movl	%eax, -16(%ebp)
	.loc 1 7952 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_regs_update
	.loc 1 7954 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 7955 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE90:
	.size	loop_iv_add_mult_hoist, .-loop_iv_add_mult_hoist
	.type	iv_add_mult_cost, @function
iv_add_mult_cost:
.LFB91:
	.loc 1 7968 0
	pushl	%ebp
.LCFI339:
	movl	%esp, %ebp
.LCFI340:
	pushl	%ebx
.LCFI341:
	subl	$52, %esp
.LCFI342:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7969 0
	movl	$0, -20(%ebp)
	.loc 1 7972 0
	call	start_sequence@PLT
	.loc 1 7973 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 20(%esp)
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_add@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7974 0
	movl	20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L2730
	.loc 1 7975 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2730:
	.loc 1 7976 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7977 0
	jmp	.L2732
.L2733:
.LBB104:
	.loc 1 7979 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2734
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2736
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2738
.L2736:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L2738:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2739
.L2734:
	movl	$0, -28(%ebp)
.L2739:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7980 0
	cmpl	$0, -8(%ebp)
	je	.L2740
	.loc 1 7981 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	addl	%eax, -20(%ebp)
.L2740:
	.loc 1 7982 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L2732:
.LBE104:
	.loc 1 7977 0
	cmpl	$0, -16(%ebp)
	jne	.L2733
	.loc 1 7984 0
	call	end_sequence@PLT
	.loc 1 7985 0
	movl	-20(%ebp), %eax
	.loc 1 7986 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	iv_add_mult_cost, .-iv_add_mult_cost
	.type	product_cheap_p, @function
product_cheap_p:
.LFB92:
	.loc 1 8000 0
	pushl	%ebp
.LCFI343:
	movl	%esp, %ebp
.LCFI344:
	pushl	%ebx
.LCFI345:
	subl	$52, %esp
.LCFI346:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8005 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2745
	.loc 1 8006 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%ebp)
.L2745:
	.loc 1 8009 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2747
	.loc 1 8010 0
	movl	$1, -24(%ebp)
	jmp	.L2749
.L2747:
	.loc 1 8013 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2750
	.loc 1 8014 0
	movl	$0, -24(%ebp)
	jmp	.L2749
.L2750:
	.loc 1 8020 0
	call	start_sequence@PLT
	.loc 1 8021 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_mult@PLT
	.loc 1 8022 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 8023 0
	call	end_sequence@PLT
	.loc 1 8025 0
	movl	$1, -16(%ebp)
	.loc 1 8026 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2752
	.loc 1 8028 0
	movl	$0, -12(%ebp)
	.loc 1 8029 0
	jmp	.L2754
.L2755:
.LBB105:
	.loc 1 8031 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8033 0
	addl	$1, -12(%ebp)
	cmpl	$3, -12(%ebp)
	jg	.L2756
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L2756
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2759
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L2756
.L2759:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2761
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2761
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2761
.L2756:
	.loc 1 8041 0
	movl	$0, -16(%ebp)
	.loc 1 8042 0
	jmp	.L2765
.L2761:
	.loc 1 8045 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2754:
.LBE105:
	.loc 1 8029 0
	cmpl	$0, -20(%ebp)
	jne	.L2755
	jmp	.L2765
.L2752:
	.loc 1 8048 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2766
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2766
	.loc 1 8050 0
	movl	$0, -16(%ebp)
	.loc 1 8048 0
	jmp	.L2765
.L2766:
	.loc 1 8051 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2765
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2765
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L2765
	.loc 1 8054 0
	movl	$0, -16(%ebp)
.L2765:
	.loc 1 8056 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2749:
	movl	-24(%ebp), %eax
	.loc 1 8057 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	product_cheap_p, .-product_cheap_p
	.section	.rodata
.LC69:
	.string	"Can reverse loop\n"
.globl __umoddi3
.LC70:
	.string	"Reversed loop"
.LC71:
	.string	" and added reg_nonneg\n"
	.text
	.type	check_dbra_loop, @function
check_dbra_loop:
.LFB93:
	.loc 1 8078 0
	pushl	%ebp
.LCFI347:
	movl	%esp, %ebp
.LCFI348:
	pushl	%edi
.LCFI349:
	pushl	%esi
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$300, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8079 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -164(%ebp)
	.loc 1 8080 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -160(%ebp)
	.loc 1 8081 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -156(%ebp)
	.loc 1 8094 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 8095 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 8100 0
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 8101 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition_for_loop@PLT
	movl	%eax, -128(%ebp)
	.loc 1 8102 0
	cmpl	$0, -128(%ebp)
	jne	.L2774
	.loc 1 8103 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2774:
	.loc 1 8104 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L2777
	.loc 1 8105 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2777:
	.loc 1 8109 0
	leal	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition@PLT
	.loc 1 8110 0
	movl	-168(%ebp), %eax
	cmpl	-116(%ebp), %eax
	jne	.L2779
	.loc 1 8111 0
	movl	$1, -112(%ebp)
	jmp	.L2781
.L2779:
	.loc 1 8112 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L2782
	.loc 1 8113 0
	movl	$2, -112(%ebp)
	jmp	.L2781
.L2782:
	.loc 1 8115 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2781:
.LBB106:
	.loc 1 8126 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	cmpl	%eax, -100(%ebp)
	je	.L2784
	.loc 1 8127 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2784
	.loc 1 8128 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2784:
.LBE106:
	.loc 1 8136 0
	movl	-156(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L2787
.L2788:
	.loc 1 8138 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L2789
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2789
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2789
	movl	-168(%ebp), %ecx
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	reg_used_between_p@PLT
	testl	%eax, %eax
	je	.L2793
.L2789:
	.loc 1 8136 0
	movl	-152(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -152(%ebp)
.L2787:
	cmpl	$0, -152(%ebp)
	jne	.L2788
.L2793:
	.loc 1 8146 0
	cmpl	$0, -152(%ebp)
	jne	.L2794
	.loc 1 8147 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2794:
	.loc 1 8154 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$115, %ax
	jne	.L2796
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2796
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L2799
.L2796:
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	jne	.L2800
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2800
.L2799:
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2800
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L2800
	.loc 1 8165 0
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2804
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -256(%ebp)
	movl	%ecx, -252(%ebp)
	cmpl	$0, -252(%ebp)
	js	.L2804
	cmpl	$0, -252(%ebp)
	jg	.L2807
	cmpl	$0, -256(%ebp)
	jbe	.L2804
.L2807:
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2804
	.loc 1 8171 0
	movl	$0, 8(%esp)
	movl	$8, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L2809
	.loc 1 8172 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %edx
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%edx, 68(%eax)
.L2809:
	.loc 1 8175 0
	movl	-152(%ebp), %eax
	movzbl	48(%eax), %edx
	orl	$4, %edx
	movb	%dl, 48(%eax)
	.loc 1 8177 0
	movl	$1, -260(%ebp)
	jmp	.L2776
.L2804:
	.loc 1 8182 0
	movl	-108(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L2811
.L2812:
	.loc 1 8184 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L2825
	.loc 1 8186 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2815
	.loc 1 8189 0
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition_for_loop@PLT
	movl	%eax, -124(%ebp)
	.loc 1 8190 0
	cmpl	$0, -124(%ebp)
	je	.L2815
	movl	-124(%ebp), %eax
	movl	4(%eax), %edx
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2815
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$117, %ax
	jne	.L2815
	movl	-124(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2815
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_between_p@PLT
	testl	%eax, %eax
	jne	.L2815
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2815
	.loc 1 8197 0
	movl	$0, 8(%esp)
	movl	$8, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L2823
	.loc 1 8198 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %edx
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%edx, 68(%eax)
.L2823:
	.loc 1 8201 0
	movl	-152(%ebp), %eax
	movzbl	48(%eax), %edx
	orl	$4, %edx
	movb	%dl, 48(%eax)
	.loc 1 8203 0
	movl	$1, -260(%ebp)
	jmp	.L2776
.L2815:
	.loc 1 8182 0
	movl	-120(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -120(%ebp)
.L2811:
	cmpl	$0, -120(%ebp)
	jne	.L2812
	.loc 1 8154 0
	jmp	.L2825
.L2800:
	.loc 1 8207 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2825
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -248(%ebp)
	movl	%edi, -244(%ebp)
	cmpl	$0, -244(%ebp)
	js	.L2825
	cmpl	$0, -244(%ebp)
	jg	.L2828
	cmpl	$0, -248(%ebp)
	jbe	.L2825
.L2828:
.LBB107:
	.loc 1 8221 0
	movl	$0, -96(%ebp)
	.loc 1 8223 0
	movl	$0, -92(%ebp)
	.loc 1 8226 0
	movl	$1, -88(%ebp)
	.loc 1 8228 0
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2829
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L2829
	movl	-164(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L2829
.LBB108:
	.loc 1 8232 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 8238 0
	movl	$1, -92(%ebp)
	.loc 1 8239 0
	movl	-108(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L2833
.L2834:
	.loc 1 8240 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2835
.LBB109:
	.loc 1 8242 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2837
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2839
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -236(%ebp)
	jmp	.L2841
.L2839:
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -236(%ebp)
.L2841:
	movl	-236(%ebp), %edi
	movl	%edi, -240(%ebp)
	jmp	.L2842
.L2837:
	movl	$0, -240(%ebp)
.L2842:
	movl	-240(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 8244 0
	cmpl	$0, -76(%ebp)
	je	.L2843
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2843
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2843
	jmp	.L2835
.L2843:
	.loc 1 8248 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	cmpl	-120(%ebp), %eax
	je	.L2847
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	cmpl	-120(%ebp), %eax
	jne	.L2849
.L2847:
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2849
	.loc 1 8256 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %edx
	movl	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_set_pseudo_multiple_uses@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 8258 0
	movl	-160(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2835
	.loc 1 8260 0
	movl	$0, -92(%ebp)
	.loc 1 8261 0
	jmp	.L2853
.L2849:
	.loc 1 8264 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2835
	.loc 1 8266 0
	movl	$0, -92(%ebp)
	.loc 1 8267 0
	jmp	.L2853
.L2835:
.LBE109:
	.loc 1 8239 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
.L2833:
	movl	-120(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jne	.L2834
.L2853:
	.loc 1 8273 0
	movl	-156(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L2855
.L2856:
	.loc 1 8274 0
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L2857
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2857
	.loc 1 8277 0
	movl	$0, -92(%ebp)
	.loc 1 8278 0
	jmp	.L2829
.L2857:
	.loc 1 8273 0
	movl	-80(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -80(%ebp)
.L2855:
	cmpl	$0, -80(%ebp)
	jne	.L2856
.L2829:
.LBE108:
	.loc 1 8282 0
	cmpl	$0, -92(%ebp)
	jne	.L2860
	.loc 1 8285 0
	movl	-164(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$1, %eax
	jg	.L2862
	.loc 1 8287 0
	movl	-108(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L2864
.L2865:
	.loc 1 8288 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2866
	.loc 1 8289 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	count_nonfixed_reads
	addl	%eax, -96(%ebp)
.L2866:
	.loc 1 8287 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
.L2864:
	movl	-120(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jne	.L2865
	.loc 1 8297 0
	movl	-164(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$1, %eax
	jne	.L2860
.LBB110:
	.loc 1 8305 0
	movl	$0, -88(%ebp)
	.loc 1 8310 0
	movl	-152(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2871
.L2872:
	.loc 1 8312 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L2873
	movl	-164(%ebp), %eax
	movl	116(%eax), %eax
	movl	44(%eax), %edx
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2873
	movl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	-164(%ebp), %eax
	movl	116(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L2873
	.loc 1 8317 0
	movl	$0, -88(%ebp)
.L2873:
	.loc 1 8310 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -72(%ebp)
.L2871:
	cmpl	$0, -88(%ebp)
	je	.L2860
	cmpl	$0, -72(%ebp)
	jne	.L2872
	jmp	.L2860
.L2862:
.LBE110:
	.loc 1 8322 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2860:
	.loc 1 8332 0
	cmpl	$1, -96(%ebp)
	jg	.L2878
	movl	-164(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2878
	movl	-164(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2878
	movl	-164(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2878
	cmpl	$0, -88(%ebp)
	je	.L2878
	movl	-152(%ebp), %eax
	movl	12(%eax), %edx
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	112(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	num_unmoved_movables
	leal	(%esi,%eax), %eax
	addl	-112(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L2878
	movl	-156(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-152(%ebp), %eax
	jne	.L2878
	movl	-152(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2886
.L2878:
	cmpl	$0, -92(%ebp)
	je	.L2825
	movl	-164(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2825
.L2886:
.LBB111:
	.loc 1 8345 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2888
	.loc 1 8346 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2888:
	.loc 1 8357 0
	cmpl	$0, -128(%ebp)
	je	.L2825
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$117, %ax
	je	.L2891
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$116, %ax
	jne	.L2825
	cmpl	$0, -92(%ebp)
	je	.L2825
.L2891:
.LBB112:
	.loc 1 8363 0
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	.loc 1 8365 0
	movl	$0, -56(%ebp)
	.loc 1 8370 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	.loc 1 8371 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 8372 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L2894
	.loc 1 8373 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	jmp	.L2896
.L2894:
	.loc 1 8376 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
.L2896:
	.loc 1 8378 0
	cmpl	$64, -48(%ebp)
	jle	.L2897
	.loc 1 8379 0
	movl	$64, -48(%ebp)
.L2897:
	.loc 1 8380 0
	movl	-48(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L2987
	movl	%eax, %edx
	xorl	%eax, %eax
.L2987:
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 8389 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L2899
	.loc 1 8390 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2899:
	.loc 1 8392 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2901
	.loc 1 8393 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
.L2901:
	.loc 1 8394 0
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 8399 0
	cmpl	$0, -92(%ebp)
	je	.L2903
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2903
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2903
	.loc 1 8403 0
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	subl	%eax, -184(%ebp)
	sbbl	%edx, -180(%ebp)
	.loc 1 8409 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	addl	-184(%ebp), %eax
	adcl	-180(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	.loc 1 8410 0
	movl	-184(%ebp), %edx
	movl	-180(%ebp), %ecx
	movl	%edx, -232(%ebp)
	movl	%ecx, -228(%ebp)
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	.loc 1 8416 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -64(%ebp)
.L2903:
	.loc 1 8420 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L2907
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2907
	movl	-200(%ebp), %esi
	movl	-196(%ebp), %edi
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, -272(%ebp)
	movl	%edx, -268(%ebp)
	movl	-272(%ebp), %edx
	movl	-268(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -224(%ebp)
	movl	%ecx, -220(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-224(%ebp), %eax
	xorl	%esi, %eax
	movl	-220(%ebp), %edx
	xorl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	andl	-176(%ebp), %eax
	movl	%edi, %edx
	andl	-172(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2907
	.loc 1 8439 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	.loc 1 8440 0
	movl	$1, -56(%ebp)
	.loc 1 8441 0
	movl	$114, -52(%ebp)
	.loc 1 8420 0
	jmp	.L2911
.L2907:
	.loc 1 8443 0
	movl	-200(%ebp), %eax
	xorl	$1, %eax
	orl	-196(%ebp), %eax
	testl	%eax, %eax
	jne	.L2912
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2912
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2915
	cmpl	$0, -92(%ebp)
	je	.L2912
.L2915:
	.loc 1 8447 0
	movl	$0, -192(%ebp)
	movl	$0, -188(%ebp)
	.loc 1 8448 0
	movl	$112, -52(%ebp)
	.loc 1 8443 0
	jmp	.L2911
.L2912:
	.loc 1 8451 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2911:
	.loc 1 8453 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$116, %ax
	jne	.L2917
	.loc 1 8454 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	subl	%eax, -192(%ebp)
	sbbl	%edx, -188(%ebp)
.L2917:
	.loc 1 8459 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L2919
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2919
	.loc 1 8462 0
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2924
	.loc 1 8463 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2919:
	.loc 1 8467 0
	cmpl	$0, -92(%ebp)
	je	.L2925
	movl	-200(%ebp), %eax
	xorl	$1, %eax
	orl	-196(%ebp), %eax
	testl	%eax, %eax
	je	.L2924
.L2925:
	.loc 1 8468 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2924:
	.loc 1 8471 0
	movl	-60(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 8475 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2927
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2927
	.loc 1 8478 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -60(%ebp)
	.loc 1 8479 0
	movl	-152(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	-184(%ebp), %eax
	adcl	-180(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -140(%ebp)
.L2927:
	.loc 1 8482 0
	movl	-152(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 8485 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 8486 0
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	condjump_label@PLT
	movl	%eax, -144(%ebp)
	.loc 1 8487 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -132(%ebp)
	.loc 1 8494 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L2930
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2930
	.loc 1 8497 0
	movl	-192(%ebp), %esi
	movl	-188(%ebp), %edi
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -136(%ebp)
	.loc 1 8498 0
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 8494 0
	jmp	.L2933
.L2930:
	.loc 1 8500 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2934
.LBB113:
	.loc 1 8502 0
	movl	-148(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 8503 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	subl	-192(%ebp), %eax
	sbbl	-188(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -40(%ebp)
	.loc 1 8504 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_add3_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 8506 0
	cmpl	$0, -36(%ebp)
	jne	.L2936
	.loc 1 8507 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2936:
	.loc 1 8509 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -136(%ebp)
	.loc 1 8511 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 8512 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$116, %ax
	jne	.L2933
	.loc 1 8513 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -140(%ebp)
	jmp	.L2933
.L2934:
.LBE113:
	.loc 1 8516 0
	movl	-192(%ebp), %eax
	orl	-188(%ebp), %eax
	testl	%eax, %eax
	jne	.L2940
.LBB114:
	.loc 1 8518 0
	movl	-148(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 8520 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_sub3_insn@PLT
	movl	%eax, -28(%ebp)
	.loc 1 8522 0
	cmpl	$0, -28(%ebp)
	jne	.L2942
	.loc 1 8523 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2942:
	.loc 1 8524 0
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -136(%ebp)
	.loc 1 8526 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	jmp	.L2933
.L2940:
.LBE114:
	.loc 1 8531 0
	movl	$0, -260(%ebp)
	jmp	.L2776
.L2933:
	.loc 1 8535 0
	call	start_sequence@PLT
	.loc 1 8536 0
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_inc@PLT
	.loc 1 8537 0
	call	get_insns@PLT
	movl	%eax, -68(%ebp)
	.loc 1 8538 0
	call	end_sequence@PLT
	.loc 1 8540 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
	movl	%eax, -120(%ebp)
	.loc 1 8541 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 8544 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 8545 0
	movl	-152(%ebp), %edx
	movl	-136(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 8546 0
	movl	-152(%ebp), %eax
	movl	8(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 8549 0
	movl	-164(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 8550 0
	movl	-164(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 8551 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 8552 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 8553 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 8554 0
	movl	-164(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 8555 0
	movl	-164(%ebp), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 8559 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 8563 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-168(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2944
	movl	-152(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L2944
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-152(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2947
.L2944:
	.loc 1 8566 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_load_of_final_value
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
.L2947:
	.loc 1 8569 0
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 8570 0
	cmpl	$2, -112(%ebp)
	jne	.L2948
	.loc 1 8571 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L2948:
	.loc 1 8574 0
	call	start_sequence@PLT
	.loc 1 8575 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-148(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	%ecx, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 8578 0
	call	get_insns@PLT
	movl	%eax, -68(%ebp)
	.loc 1 8579 0
	call	end_sequence@PLT
	.loc 1 8580 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn_before@PLT
	.loc 1 8582 0
	movl	-104(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 8583 0
	jmp	.L2950
.L2951:
	.loc 1 8584 0
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -68(%ebp)
.L2950:
	.loc 1 8583 0
	cmpl	$0, -68(%ebp)
	je	.L2952
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2951
.L2952:
	.loc 1 8587 0
	cmpl	$0, -68(%ebp)
	je	.L2954
	.loc 1 8588 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 76(%eax)
.L2954:
	.loc 1 8590 0
	cmpl	$0, -56(%ebp)
	je	.L2956
	.loc 1 8592 0
	cmpl	$0, -68(%ebp)
	je	.L2958
	.loc 1 8597 0
	movl	-68(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%edx, 68(%eax)
.L2958:
	.loc 1 8600 0
	movl	-152(%ebp), %eax
	movzbl	48(%eax), %edx
	orl	$4, %edx
	movb	%dl, 48(%eax)
.L2956:
	.loc 1 8614 0
	movl	-108(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L2960
.L2961:
	.loc 1 8615 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2962
.LBB115:
	.loc 1 8618 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2964
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2966
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L2968
.L2966:
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -212(%ebp)
.L2968:
	movl	-212(%ebp), %ecx
	movl	%ecx, -216(%ebp)
	jmp	.L2969
.L2964:
	movl	$0, -216(%ebp)
.L2969:
	movl	-216(%ebp), %esi
	movl	%esi, -20(%ebp)
	.loc 1 8621 0
	cmpl	$0, -20(%ebp)
	je	.L2970
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2970
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-156(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jae	.L2970
	movl	-156(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2970
	movl	-156(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	-152(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L2962
.L2970:
	.loc 1 8626 0
	movl	-120(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -24(%ebp)
	jmp	.L2986
.L2976:
	.loc 1 8628 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L2977
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2977
	.loc 1 8631 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 8628 0
	jmp	.L2975
.L2977:
	.loc 1 8633 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
.L2975:
.L2986:
	.loc 1 8626 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2976
.L2962:
.LBE115:
	.loc 1 8614 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
.L2960:
	movl	-120(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jne	.L2961
	.loc 1 8641 0
	movl	-152(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$8, %eax
	movb	%al, 48(%edx)
	.loc 1 8643 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2981
	.loc 1 8645 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 8646 0
	movl	-152(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2983
	.loc 1 8647 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$22, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L2981
.L2983:
	.loc 1 8649 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2981:
	.loc 1 8652 0
	movl	$1, -260(%ebp)
	jmp	.L2776
.L2825:
.LBE112:
.LBE111:
.LBE107:
	.loc 1 8657 0
	movl	$0, -260(%ebp)
.L2776:
	movl	-260(%ebp), %eax
	.loc 1 8658 0
	addl	$300, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE93:
	.size	check_dbra_loop, .-check_dbra_loop
	.section	.rodata
	.align 4
.LC72:
	.string	"Cannot eliminate biv %d: biv used in insn %d.\n"
.LC73:
	.string	"was"
.LC74:
	.string	"can be"
.LC75:
	.string	"biv %d %s eliminated.\n"
	.text
	.type	maybe_eliminate_biv, @function
maybe_eliminate_biv:
.LFB94:
	.loc 1 8675 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%esi
.LCFI355:
	pushl	%ebx
.LCFI356:
	subl	$96, %esp
.LCFI357:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8676 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -48(%ebp)
	.loc 1 8677 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 8683 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2989
.L2990:
.LBB116:
	.loc 1 8685 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 8686 0
	movl	$0, -32(%ebp)
	.loc 1 8687 0
	movl	20(%ebp), %eax
	cmpl	24(%ebp), %eax
	jge	.L2991
	movl	-40(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L2993
.L2991:
	movl	$0, -76(%ebp)
.L2993:
	movl	-76(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8691 0
	movl	-36(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$105, %al
	jne	.L2994
	.loc 1 8693 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8695 0
	cmpl	$0, -24(%ebp)
	je	.L2994
.LBB117:
	.loc 1 8697 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8698 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2997
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2999
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L3001
.L2999:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L3001:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L3002
.L2997:
	movl	$0, -72(%ebp)
.L3002:
	movl	-72(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8700 0
	cmpl	$0, -16(%ebp)
	je	.L2994
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2994
.LBB118:
	.loc 1 8702 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8704 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L2994
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2994
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2994
	.loc 1 8707 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L2994:
.LBE118:
.LBE117:
	.loc 1 8713 0
	cmpl	$42, -36(%ebp)
	je	.L3008
	cmpl	$43, -36(%ebp)
	je	.L3008
	cmpl	$44, -36(%ebp)
	jne	.L3011
.L3008:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L3011
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eliminate_biv_1
	testl	%eax, %eax
	jne	.L3011
	.loc 1 8718 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3016
	.loc 1 8719 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 8722 0
	jmp	.L3016
.L3011:
	.loc 1 8726 0
	cmpl	$0, 16(%ebp)
	je	.L3017
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L3017
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L3017
	.loc 1 8729 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L3017:
.LBE116:
	.loc 1 8683 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L2989:
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L2990
.L3016:
	.loc 1 8732 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L3021
	.loc 1 8734 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3023
	.loc 1 8735 0
	cmpl	$0, 16(%ebp)
	je	.L3025
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L3027
.L3025:
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L3027:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L3023:
	.loc 1 8737 0
	movl	$1, -60(%ebp)
	jmp	.L3028
.L3021:
	.loc 1 8740 0
	movl	$0, -60(%ebp)
.L3028:
	movl	-60(%ebp), %eax
	.loc 1 8741 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE94:
	.size	maybe_eliminate_biv, .-maybe_eliminate_biv
	.section	.rodata
	.type	__FUNCTION__.21156, @object
	.size	__FUNCTION__.21156, 18
__FUNCTION__.21156:
	.string	"loop_insn_first_p"
	.text
.globl loop_insn_first_p
	.type	loop_insn_first_p, @function
loop_insn_first_p:
.LFB95:
	.loc 1 8749 0
	pushl	%ebp
.LCFI358:
	movl	%esp, %ebp
.LCFI359:
	pushl	%ebx
.LCFI360:
	subl	$36, %esp
.LCFI361:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8752 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3053
.L3031:
.L3053:
	.loc 1 8756 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L3032
	cmpl	$0, -12(%ebp)
	jne	.L3034
.L3032:
	.loc 1 8757 0
	movl	$0, -28(%ebp)
	jmp	.L3035
.L3034:
	.loc 1 8758 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L3036
	cmpl	$0, -8(%ebp)
	jne	.L3038
.L3036:
	.loc 1 8759 0
	movl	$1, -28(%ebp)
	jmp	.L3035
.L3038:
	.loc 1 8764 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3039
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3039
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L3039
	.loc 1 8767 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3043
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L3045
	jmp	.L3046
.L3043:
	leal	__FUNCTION__.21156@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8767, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3045:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L3035
.L3046:
	leal	__FUNCTION__.21156@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8767, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3039:
	.loc 1 8769 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3047
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3049
.L3047:
	.loc 1 8771 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L3049:
	.loc 1 8772 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L3031
	.loc 1 8773 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8774 0
	jmp	.L3031
.L3035:
	movl	-28(%ebp), %eax
	.loc 1 8775 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	loop_insn_first_p, .-loop_insn_first_p
	.type	biv_elimination_giv_has_0_offset, @function
biv_elimination_giv_has_0_offset:
.LFB96:
	.loc 1 8784 0
	pushl	%ebp
.LCFI362:
	movl	%esp, %ebp
.LCFI363:
	pushl	%ebx
.LCFI364:
	subl	$20, %esp
.LCFI365:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8789 0
	movl	12(%ebp), %eax
	movzbl	53(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3055
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L3057
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	jne	.L3059
.L3057:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L3055
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L3055
.L3059:
	.loc 1 8794 0
	movl	$0, -8(%ebp)
	jmp	.L3061
.L3055:
	.loc 1 8796 0
	movl	$1, -8(%ebp)
.L3061:
	movl	-8(%ebp), %eax
	.loc 1 8797 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	biv_elimination_giv_has_0_offset, .-biv_elimination_giv_has_0_offset
	.type	maybe_eliminate_biv_1, @function
maybe_eliminate_biv_1:
.LFB97:
	.loc 1 8818 0
	pushl	%ebp
.LCFI366:
	movl	%esp, %ebp
.LCFI367:
	pushl	%ebx
.LCFI368:
	subl	$116, %esp
.LCFI369:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8819 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	.loc 1 8820 0
	movl	20(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 8821 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 8831 0
	movl	-52(%ebp), %eax
	movl	%eax, -80(%ebp)
	cmpl	$76, -80(%ebp)
	je	.L3067
	cmpl	$76, -80(%ebp)
	ja	.L3069
	cmpl	$57, -80(%ebp)
	je	.L3065
	cmpl	$71, -80(%ebp)
	je	.L3066
	jmp	.L3064
.L3069:
	cmpl	$84, -80(%ebp)
	je	.L3068
	cmpl	$84, -80(%ebp)
	jb	.L3064
	movl	-80(%ebp), %eax
	subl	$112, %eax
	cmpl	$9, %eax
	ja	.L3064
	jmp	.L3068
.L3066:
	.loc 1 8836 0
	movl	12(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L3070
	.loc 1 8837 0
	movl	$0, -76(%ebp)
	jmp	.L3072
.L3070:
	.loc 1 8838 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3065:
	.loc 1 8842 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L3073
	.loc 1 8843 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3073:
	.loc 1 8847 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3075
.L3076:
	.loc 1 8848 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L3077
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3077
	.loc 1 8849 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3077:
	.loc 1 8847 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L3075:
	cmpl	$0, -40(%ebp)
	jne	.L3076
	.loc 1 8939 0
	jmp	.L3064
.L3068:
	.loc 1 8946 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L3081
	.loc 1 8947 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$1, -28(%ebp)
	jmp	.L3083
.L3081:
	.loc 1 8948 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L3064
	.loc 1 8949 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -28(%ebp)
.L3083:
	.loc 1 8953 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3085
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3093
.L3085:
	.loc 1 8959 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3094
.L3095:
	.loc 1 8960 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3096
	movl	-40(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	cmpl	$0, -68(%ebp)
	js	.L3096
	cmpl	$0, -68(%ebp)
	jg	.L3099
	cmpl	$0, -72(%ebp)
	jbe	.L3096
.L3099:
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3100
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3100
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3100
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3096
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L3096
.L3100:
	movl	-40(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L3096
	movl	-40(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L3096
	movl	-40(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3096
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L3096
	.loc 1 8970 0
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	biv_elimination_giv_has_0_offset
	testl	%eax, %eax
	je	.L3096
	.loc 1 8975 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3110
.LBB119:
	.loc 1 8979 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3112
	.loc 1 8980 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L3114
.L3112:
	.loc 1 8982 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
.L3114:
	.loc 1 8984 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	const_mult_add_overflow_p@PLT
	testb	%al, %al
	jne	.L3096
.L3110:
.LBE119:
	.loc 1 8989 0
	cmpl	$0, 24(%ebp)
	jne	.L3115
	.loc 1 8990 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3115:
	.loc 1 8993 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, %eax
	subl	-28(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 8998 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3117
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3117
	.loc 1 9001 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 20(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_mult_add@PLT
	movl	%eax, -32(%ebp)
	.loc 1 8998 0
	jmp	.L3120
.L3117:
	.loc 1 9007 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 9008 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %edx
	movl	-40(%ebp), %eax
	movl	32(%eax), %ecx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_emit_before@PLT
.L3120:
	.loc 1 9013 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 9015 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L3096
	.loc 1 9016 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3096:
	.loc 1 8959 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L3094:
	cmpl	$0, -40(%ebp)
	jne	.L3095
	.loc 1 9023 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3123
.L3124:
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L3123:
	cmpl	$0, -40(%ebp)
	jne	.L3124
	.loc 1 8953 0
	jmp	.L3126
.L3093:
	.loc 1 9054 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L3127
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3126
.L3127:
	.loc 1 9056 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	jne	.L3126
	.loc 1 9062 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3130
.L3131:
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L3130:
	cmpl	$0, -40(%ebp)
	jne	.L3131
.L3126:
	.loc 1 9144 0
	movl	$0, -76(%ebp)
	jmp	.L3072
.L3067:
	.loc 1 9149 0
	movl	20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3132
.L3133:
	.loc 1 9150 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L3134
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jne	.L3134
	.loc 1 9151 0
	movl	$1, -76(%ebp)
	jmp	.L3072
.L3134:
	.loc 1 9149 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L3132:
	cmpl	$0, -40(%ebp)
	jne	.L3133
.L3064:
	.loc 1 9159 0
	movl	-52(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 9160 0
	movl	-52(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L3137
.L3138:
	.loc 1 9162 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	cmpl	$69, -60(%ebp)
	je	.L3140
	cmpl	$101, -60(%ebp)
	je	.L3141
	jmp	.L3139
.L3141:
	.loc 1 9165 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eliminate_biv_1
	testl	%eax, %eax
	jne	.L3139
	.loc 1 9167 0
	movl	$0, -76(%ebp)
	jmp	.L3072
.L3140:
	.loc 1 9171 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L3144
.L3145:
	.loc 1 9172 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eliminate_biv_1
	testl	%eax, %eax
	jne	.L3146
	.loc 1 9174 0
	movl	$0, -76(%ebp)
	jmp	.L3072
.L3146:
	.loc 1 9171 0
	subl	$1, -16(%ebp)
.L3144:
	cmpl	$0, -16(%ebp)
	jns	.L3145
.L3139:
	.loc 1 9160 0
	subl	$1, -20(%ebp)
.L3137:
	cmpl	$0, -20(%ebp)
	jns	.L3138
	.loc 1 9179 0
	movl	$1, -76(%ebp)
.L3072:
	movl	-76(%ebp), %eax
	.loc 1 9180 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	maybe_eliminate_biv_1, .-maybe_eliminate_biv_1
	.type	last_use_this_basic_block, @function
last_use_this_basic_block:
.LFB98:
	.loc 1 9189 0
	pushl	%ebp
.LCFI370:
	movl	%esp, %ebp
.LCFI371:
	subl	$20, %esp
.LCFI372:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 9191 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 9192 0
	jmp	.L3151
.L3152:
	.loc 1 9195 0
	movl	reg_n_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3153
	.loc 1 9196 0
	movl	$1, -20(%ebp)
	jmp	.L3155
.L3153:
	.loc 1 9193 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L3151:
	.loc 1 9192 0
	cmpl	$0, -4(%ebp)
	je	.L3156
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3156
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3152
.L3156:
	.loc 1 9198 0
	movl	$0, -20(%ebp)
.L3155:
	movl	-20(%ebp), %eax
	.loc 1 9199 0
	leave
	ret
.LFE98:
	.size	last_use_this_basic_block, .-last_use_this_basic_block
	.type	record_initial, @function
record_initial:
.LFB99:
	.loc 1 9209 0
	pushl	%ebp
.LCFI373:
	movl	%esp, %ebp
.LCFI374:
	subl	$16, %esp
.LCFI375:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 9210 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 9213 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3167
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jae	.L3167
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L3164
	.loc 1 9216 0
	jmp	.L3167
.L3164:
	.loc 1 9218 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 9221 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L3167
	.loc 1 9223 0
	movl	note_insn@GOTOFF(%ecx), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 9224 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 44(%edx)
.L3167:
	.loc 1 9226 0
	leave
	ret
.LFE99:
	.size	record_initial, .-record_initial
	.section	.rodata
	.type	__FUNCTION__.21536, @object
	.size	__FUNCTION__.21536, 20
__FUNCTION__.21536:
	.string	"update_reg_last_use"
	.text
	.type	update_reg_last_use, @function
update_reg_last_use:
.LFB100:
	.loc 1 9237 0
	pushl	%ebp
.LCFI376:
	movl	%esp, %ebp
.LCFI377:
	pushl	%ebx
.LCFI378:
	subl	$36, %esp
.LCFI379:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9244 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3169
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L3169
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3169
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3173
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jge	.L3169
	jmp	.L3175
.L3173:
	leal	__FUNCTION__.21536@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9246, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3175:
	.loc 1 9248 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 9244 0
	jmp	.L3185
.L3169:
.LBB120:
	.loc 1 9253 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 9254 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L3177
.L3178:
	.loc 1 9256 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3179
	.loc 1 9257 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_reg_last_use
	jmp	.L3181
.L3179:
	.loc 1 9258 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L3181
	.loc 1 9259 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3183
.L3184:
	.loc 1 9260 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_reg_last_use
	.loc 1 9259 0
	subl	$1, -12(%ebp)
.L3183:
	cmpl	$0, -12(%ebp)
	jns	.L3184
.L3181:
	.loc 1 9254 0
	subl	$1, -16(%ebp)
.L3177:
	cmpl	$0, -16(%ebp)
	jns	.L3178
.L3185:
.LBE120:
	.loc 1 9263 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	update_reg_last_use, .-update_reg_last_use
.globl canonicalize_condition
	.type	canonicalize_condition, @function
canonicalize_condition:
.LFB101:
	.loc 1 9295 0
	pushl	%ebp
.LCFI380:
	movl	%esp, %ebp
.LCFI381:
	pushl	%edi
.LCFI382:
	pushl	%esi
.LCFI383:
	pushl	%ebx
.LCFI384:
	subl	$108, %esp
.LCFI385:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9297 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 9301 0
	movl	$0, -32(%ebp)
	.loc 1 9304 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	.loc 1 9305 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 9306 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 9307 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 9309 0
	cmpl	$0, 16(%ebp)
	je	.L3187
	.loc 1 9310 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -56(%ebp)
.L3187:
	.loc 1 9311 0
	cmpl	$0, -56(%ebp)
	jne	.L3189
	.loc 1 9312 0
	movl	$0, -84(%ebp)
	jmp	.L3191
.L3189:
	.loc 1 9314 0
	cmpl	$0, 20(%ebp)
	je	.L3268
	.loc 1 9315 0
	movl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 9322 0
	jmp	.L3268
.L3195:
.LBB121:
	.loc 1 9327 0
	movl	$0, -24(%ebp)
	.loc 1 9348 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	jne	.L3196
	.loc 1 9350 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 9351 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 9352 0
	jmp	.L3194
.L3196:
	.loc 1 9354 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3198
	.loc 1 9361 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L3198
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L3198
	.loc 1 9366 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	set_of@PLT
	movl	%eax, -48(%ebp)
	.loc 1 9368 0
	cmpl	$0, -48(%ebp)
	je	.L3202
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3198
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3198
.L3202:
	.loc 1 9375 0
	cmpl	$0, -48(%ebp)
	je	.L3205
.LBB122:
	.loc 1 9377 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 9396 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$84, %ax
	je	.L3207
	cmpl	$112, -56(%ebp)
	je	.L3209
	cmpl	$117, -56(%ebp)
	jne	.L3211
	movl	-20(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L3211
	movl	-20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L3211
	movl	-20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L3271
	movl	%esi, %edi
	xorl	%esi, %esi
.L3271:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L3211
.L3209:
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L3211
.L3207:
	movl	-28(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	setne	%cl
	movl	-20(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	sete	%al
	xorl	%ecx, %eax
	testb	%al, %al
	jne	.L3215
	cmpl	$0, -28(%ebp)
	je	.L3215
	cmpl	$0, -20(%ebp)
	jne	.L3211
.L3215:
	.loc 1 9416 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 9396 0
	jmp	.L3228
.L3211:
	.loc 1 9417 0
	cmpl	$113, -56(%ebp)
	je	.L3219
	cmpl	$114, -56(%ebp)
	jne	.L3198
	movl	-20(%ebp), %eax
	movl	mode_bitsize@GOT(%ebx), %edx
	movzwl	(%edx,%eax,2), %eax
	cmpw	$64, %ax
	ja	.L3198
	movl	-20(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L3198
	movl	-20(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L3270
	movl	%esi, %edi
	xorl	%esi, %esi
.L3270:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L3198
.L3219:
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L3198
	movl	-28(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	setne	%cl
	movl	-20(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	sete	%al
	xorl	%ecx, %eax
	testb	%al, %al
	jne	.L3225
	cmpl	$0, -28(%ebp)
	je	.L3225
	cmpl	$0, -20(%ebp)
	jne	.L3198
.L3225:
	.loc 1 9438 0
	movl	$1, -32(%ebp)
	.loc 1 9439 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3228
.L3205:
.LBE122:
	.loc 1 9445 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L3198
.L3228:
	.loc 1 9449 0
	cmpl	$0, -24(%ebp)
	je	.L3194
	.loc 1 9451 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L3230
	.loc 1 9452 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
.L3230:
	.loc 1 9453 0
	cmpl	$0, -32(%ebp)
	je	.L3232
	.loc 1 9455 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -56(%ebp)
	.loc 1 9456 0
	cmpl	$0, -56(%ebp)
	jne	.L3234
	.loc 1 9457 0
	movl	$0, -84(%ebp)
	jmp	.L3191
.L3234:
	.loc 1 9458 0
	movl	$0, -32(%ebp)
.L3232:
	.loc 1 9461 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 9462 0
	cmpl	$0, 20(%ebp)
	je	.L3194
	.loc 1 9463 0
	movl	20(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
.L3194:
.L3268:
.LBE121:
	.loc 1 9322 0
	movl	-56(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L3198
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-36(%ebp), %eax
	jne	.L3198
	movl	-40(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L3195
.L3198:
	.loc 1 9468 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3239
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3247
.L3239:
	.loc 1 9469 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, -56(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
.L3247:
	.loc 1 9473 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L3248
	.loc 1 9474 0
	movl	$0, -84(%ebp)
	jmp	.L3191
.L3248:
	.loc 1 9480 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3250
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L3250
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$64, %ax
	ja	.L3250
.LBB123:
	.loc 1 9484 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 9485 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 9487 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_mask_array@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 9489 0
	movl	-56(%ebp), %eax
	movl	%eax, -88(%ebp)
	cmpl	$116, -88(%ebp)
	je	.L3255
	cmpl	$116, -88(%ebp)
	ja	.L3258
	cmpl	$114, -88(%ebp)
	je	.L3254
	jmp	.L3250
.L3258:
	cmpl	$118, -88(%ebp)
	je	.L3256
	cmpl	$120, -88(%ebp)
	je	.L3257
	jmp	.L3250
.L3255:
	.loc 1 9492 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L3250
	.loc 1 9493 0
	movl	$117, -56(%ebp)
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -36(%ebp)
	.loc 1 9494 0
	jmp	.L3250
.L3254:
	.loc 1 9499 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, %eax
	andl	-64(%ebp), %eax
	movl	%edi, %edx
	andl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3269
	movl	%eax, %edx
	xorl	%eax, %eax
.L3269:
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L3250
	.loc 1 9502 0
	movl	$115, -56(%ebp)
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -36(%ebp)
	.loc 1 9503 0
	jmp	.L3250
.L3257:
	.loc 1 9506 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %edx
	cmpl	-60(%ebp), %edx
	ja	.L3250
	movl	-92(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L3265
	movl	-96(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jae	.L3250
.L3265:
	.loc 1 9507 0
	movl	$121, -56(%ebp)
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -36(%ebp)
	.loc 1 9508 0
	jmp	.L3250
.L3256:
	.loc 1 9511 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L3250
	.loc 1 9512 0
	movl	$119, -56(%ebp)
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -36(%ebp)
.L3250:
.LBE123:
	.loc 1 9526 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -84(%ebp)
.L3191:
	movl	-84(%ebp), %eax
	.loc 1 9527 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE101:
	.size	canonicalize_condition, .-canonicalize_condition
.globl get_condition
	.type	get_condition, @function
get_condition:
.LFB102:
	.loc 1 9543 0
	pushl	%ebp
.LCFI386:
	movl	%esp, %ebp
.LCFI387:
	pushl	%ebx
.LCFI388:
	subl	$52, %esp
.LCFI389:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9549 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3273
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L3275
.L3273:
	.loc 1 9551 0
	movl	$0, -28(%ebp)
	jmp	.L3276
.L3275:
	.loc 1 9552 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -8(%ebp)
	.loc 1 9554 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 9558 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3277
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3277
	movl	$1, -24(%ebp)
	jmp	.L3280
.L3277:
	movl	$0, -24(%ebp)
.L3280:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 9562 0
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_condition@PLT
	movl	%eax, -28(%ebp)
.L3276:
	movl	-28(%ebp), %eax
	.loc 1 9563 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	get_condition, .-get_condition
.globl get_condition_for_loop
	.type	get_condition_for_loop, @function
get_condition_for_loop:
.LFB103:
	.loc 1 9572 0
	pushl	%ebp
.LCFI390:
	movl	%esp, %ebp
.LCFI391:
	pushl	%edi
.LCFI392:
	pushl	%esi
.LCFI393:
	pushl	%ebx
.LCFI394:
	subl	$44, %esp
.LCFI395:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9573 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition@PLT
	movl	%eax, -16(%ebp)
	.loc 1 9575 0
	cmpl	$0, -16(%ebp)
	je	.L3283
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L3283
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L3286
.L3283:
	.loc 1 9578 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L3287
.L3286:
	.loc 1 9580 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %esi
	movl	-16(%ebp), %eax
	movl	12(%eax), %edi
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -32(%ebp)
.L3287:
	movl	-32(%ebp), %eax
	.loc 1 9582 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE103:
	.size	get_condition_for_loop, .-get_condition_for_loop
	.type	indirect_jump_in_function_p, @function
indirect_jump_in_function_p:
.LFB104:
	.loc 1 9591 0
	pushl	%ebp
.LCFI396:
	movl	%esp, %ebp
.LCFI397:
	pushl	%ebx
.LCFI398:
	subl	$36, %esp
.LCFI399:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9594 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3290
.L3291:
	.loc 1 9595 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	computed_jump_p@PLT
	testl	%eax, %eax
	je	.L3292
	.loc 1 9596 0
	movl	$1, -24(%ebp)
	jmp	.L3294
.L3292:
	.loc 1 9594 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L3290:
	cmpl	$0, -8(%ebp)
	jne	.L3291
	.loc 1 9598 0
	movl	$0, -24(%ebp)
.L3294:
	movl	-24(%ebp), %eax
	.loc 1 9599 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	indirect_jump_in_function_p, .-indirect_jump_in_function_p
	.type	insert_loop_mem, @function
insert_loop_mem:
.LFB105:
	.loc 1 9609 0
	pushl	%ebp
.LCFI400:
	movl	%esp, %ebp
.LCFI401:
	pushl	%esi
.LCFI402:
	pushl	%ebx
.LCFI403:
	subl	$32, %esp
.LCFI404:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9610 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9612 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 9614 0
	cmpl	$0, -12(%ebp)
	jne	.L3298
	.loc 1 9615 0
	movl	$0, -32(%ebp)
	jmp	.L3300
.L3298:
	.loc 1 9617 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$59, -28(%ebp)
	je	.L3303
	cmpl	$59, -28(%ebp)
	ja	.L3306
	cmpl	$3, -28(%ebp)
	je	.L3302
	jmp	.L3301
.L3306:
	cmpl	$65, -28(%ebp)
	je	.L3304
	cmpl	$76, -28(%ebp)
	je	.L3305
	jmp	.L3301
.L3305:
	.loc 1 9641 0
	movl	$0, -16(%ebp)
	jmp	.L3307
.L3303:
	.loc 1 9624 0
	movl	$-1, -32(%ebp)
	jmp	.L3300
.L3304:
	.loc 1 9629 0
	movl	$-1, -32(%ebp)
	jmp	.L3300
.L3302:
	.loc 1 9633 0
	movl	$-1, -32(%ebp)
	jmp	.L3300
.L3301:
	.loc 1 9637 0
	movl	$0, -32(%ebp)
	jmp	.L3300
.L3308:
	.loc 1 9642 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3309
	.loc 1 9644 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %esi
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movl	%esi, %edx
	cmpb	%al, %dl
	je	.L3311
	.loc 1 9648 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
.L3311:
	.loc 1 9650 0
	movl	$0, -32(%ebp)
	jmp	.L3300
.L3309:
	.loc 1 9641 0
	addl	$1, -16(%ebp)
.L3307:
	movl	-20(%ebp), %eax
	movl	96(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L3308
	.loc 1 9654 0
	movl	-20(%ebp), %eax
	movl	96(%eax), %edx
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3314
	.loc 1 9656 0
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L3316
	.loc 1 9657 0
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 100(%eax)
	jmp	.L3318
.L3316:
	.loc 1 9659 0
	movl	-20(%ebp), %eax
	movl	$32, 100(%eax)
.L3318:
	.loc 1 9661 0
	movl	-20(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 92(%eax)
.L3314:
	.loc 1 9667 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 9672 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 8(%edx)
	.loc 1 9673 0
	movl	-20(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 9674 0
	movl	-20(%ebp), %eax
	movl	96(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 9676 0
	movl	$0, -32(%ebp)
.L3300:
	movl	-32(%ebp), %eax
	.loc 1 9677 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE105:
	.size	insert_loop_mem, .-insert_loop_mem
	.type	loop_regs_scan, @function
loop_regs_scan:
.LFB106:
	.loc 1 9699 0
	pushl	%ebp
.LCFI405:
	movl	%esp, %ebp
.LCFI406:
	pushl	%edi
.LCFI407:
	pushl	%ebx
.LCFI408:
	subl	$80, %esp
.LCFI409:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9700 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -44(%ebp)
	.loc 1 9708 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 9709 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 9712 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jl	.L3321
	.loc 1 9714 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 9716 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 9720 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	subl	-40(%ebp), %eax
	movl	%eax, %ecx
	sall	$4, %ecx
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
.L3321:
	.loc 1 9725 0
	movl	$0, -28(%ebp)
	jmp	.L3323
.L3324:
	.loc 1 9727 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 9728 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$0, 12(%eax)
	.loc 1 9729 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 9725 0
	addl	$1, -28(%ebp)
.L3323:
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L3324
	.loc 1 9732 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 9735 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L3326
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3328
.L3326:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -60(%ebp)
.L3328:
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L3329
.L3330:
	.loc 1 9738 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3331
	.loc 1 9741 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
	.loc 1 9744 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L3333
	.loc 1 9745 0
	movl	-32(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_in_loop
.L3333:
	.loc 1 9747 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L3335
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3337
.L3335:
	.loc 1 9749 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	count_one_set
	.loc 1 9747 0
	jmp	.L3331
.L3337:
	.loc 1 9750 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3331
.LBB124:
	.loc 1 9753 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L3339
.L3340:
	.loc 1 9754 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	count_one_set
	.loc 1 9753 0
	subl	$1, -24(%ebp)
.L3339:
	cmpl	$0, -24(%ebp)
	jns	.L3340
.L3331:
.LBE124:
	.loc 1 9759 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3341
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3343
.L3341:
	.loc 1 9760 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	-36(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
.L3343:
	.loc 1 9765 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3344
.LBB125:
	.loc 1 9768 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9769 0
	jmp	.L3346
.L3347:
.LBB126:
	.loc 1 9774 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L3348
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3348
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L3348
	.loc 1 9777 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
.L3348:
.LBE126:
	.loc 1 9770 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L3346:
	.loc 1 9769 0
	cmpl	$0, -20(%ebp)
	jne	.L3347
.L3344:
.LBE125:
	.loc 1 9736 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L3329:
	.loc 1 9735 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L3330
	.loc 1 9786 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3353
	.loc 1 9787 0
	movl	$0, -28(%ebp)
	jmp	.L3355
.L3356:
	.loc 1 9788 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L3369
	movl	%edx, %eax
	xorl	%edx, %edx
.L3369:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3357
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L3357
	.loc 1 9791 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
	.loc 1 9792 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
.L3357:
	.loc 1 9787 0
	addl	$1, -28(%ebp)
.L3355:
	cmpl	$175, -28(%ebp)
	jle	.L3356
.L3353:
	.loc 1 9798 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L3360
.L3361:
	.loc 1 9799 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L3362
	.loc 1 9800 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movb	$1, 12(%eax)
.L3362:
	.loc 1 9798 0
	subl	$1, -28(%ebp)
.L3360:
	cmpl	$175, -28(%ebp)
	jg	.L3361
	.loc 1 9804 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3365
.L3366:
	.loc 1 9805 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ecx
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%ecx)
	.loc 1 9804 0
	addl	$1, -28(%ebp)
.L3365:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L3366
	.loc 1 9807 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 9808 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE106:
	.size	loop_regs_scan, .-loop_regs_scan
	.type	count_insns_in_loop, @function
count_insns_in_loop:
.LFB107:
	.loc 1 9815 0
	pushl	%ebp
.LCFI410:
	movl	%esp, %ebp
.LCFI411:
	subl	$20, %esp
.LCFI412:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 9816 0
	movl	$0, -8(%ebp)
	.loc 1 9819 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L3371
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L3373
.L3371:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -20(%ebp)
.L3373:
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L3374
.L3375:
	.loc 1 9821 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3376
	.loc 1 9822 0
	addl	$1, -8(%ebp)
.L3376:
	.loc 1 9820 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L3374:
	.loc 1 9819 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L3375
	.loc 1 9824 0
	movl	-8(%ebp), %eax
	.loc 1 9825 0
	leave
	ret
.LFE107:
	.size	count_insns_in_loop, .-count_insns_in_loop
	.section	.rodata
	.type	__FUNCTION__.22225, @object
	.size	__FUNCTION__.22225, 10
__FUNCTION__.22225:
	.string	"load_mems"
.LC76:
	.string	"r/w"
.LC77:
	.string	"r/o"
.LC78:
	.string	"Hoisted regno %d %s from "
	.text
	.type	load_mems, @function
load_mems:
.LFB108:
	.loc 1 9832 0
	pushl	%ebp
.LCFI413:
	movl	%esp, %ebp
.LCFI414:
	pushl	%esi
.LCFI415:
	pushl	%ebx
.LCFI416:
	subl	$224, %esp
.LCFI417:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 9833 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 9834 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	subl	$-128, %eax
	movl	%eax, -140(%ebp)
	.loc 1 9835 0
	movl	$0, -136(%ebp)
	.loc 1 9838 0
	movl	$0, -124(%ebp)
	.loc 1 9841 0
	movl	$0, -116(%ebp)
	.loc 1 9842 0
	call	max_reg_num@PLT
	movl	%eax, -112(%ebp)
	.loc 1 9844 0
	movl	-144(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3575
	.loc 1 9848 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -120(%ebp)
	.loc 1 9849 0
	cmpl	$0, -120(%ebp)
	je	.L3383
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3383
	.loc 1 9850 0
	movl	$0, -120(%ebp)
.L3383:
	.loc 1 9855 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -148(%ebp)
	.loc 1 9856 0
	jmp	.L3386
.L3387:
	.loc 1 9859 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3388
	.loc 1 9860 0
	movl	$1, -136(%ebp)
	jmp	.L3390
.L3388:
	.loc 1 9861 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3391
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3393
	movl	-148(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3393
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3393
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L3391
.L3393:
	.loc 1 9876 0
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L3575
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-120(%ebp), %eax
	je	.L3399
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3575
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3402
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L3404
	jmp	.L3405
.L3402:
	leal	__FUNCTION__.22225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9881, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3404:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -204(%ebp)
	jl	.L3575
	jmp	.L3406
.L3405:
	leal	__FUNCTION__.22225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9881, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3406:
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3407
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -200(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L3409
	jmp	.L3410
.L3407:
	leal	__FUNCTION__.22225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9882, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3409:
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -200(%ebp)
	jg	.L3575
	jmp	.L3399
.L3410:
	leal	__FUNCTION__.22225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9882, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3399:
	.loc 1 9885 0
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L3411
	.loc 1 9887 0
	movl	$1, -136(%ebp)
	jmp	.L3390
.L3411:
	.loc 1 9891 0
	movl	$1, -116(%ebp)
	.loc 1 9861 0
	jmp	.L3390
.L3391:
	.loc 1 9893 0
	cmpl	$0, -116(%ebp)
	je	.L3390
	.loc 1 9894 0
	movl	$1, -136(%ebp)
.L3390:
	.loc 1 9857 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -148(%ebp)
.L3386:
	.loc 1 9856 0
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	.L3387
	.loc 1 9898 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 9899 0
	jmp	.L3416
.L3417:
	.loc 1 9900 0
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -148(%ebp)
.L3416:
	.loc 1 9899 0
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3418
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3417
.L3418:
	.loc 1 9902 0
	movl	-148(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 9904 0
	call	cselib_init@PLT
	.loc 1 9908 0
	jmp	.L3420
.L3421:
	.loc 1 9909 0
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_process_insn@PLT
	.loc 1 9908 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
.L3420:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-148(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3421
	.loc 1 9912 0
	movl	$0, -132(%ebp)
	jmp	.L3423
.L3424:
.LBB127:
	.loc 1 9916 0
	movl	$0, -108(%ebp)
	.loc 1 9918 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 9921 0
	movl	-100(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L3425
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	cmpl	$1, %eax
	je	.L3427
.L3425:
	.loc 1 9924 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
.L3427:
	.loc 1 9928 0
	movl	-144(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 9929 0
	jmp	.L3428
.L3429:
	.loc 1 9931 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3430
	.loc 1 9932 0
	movl	$1, -108(%ebp)
	jmp	.L3432
.L3430:
	.loc 1 9933 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L3432
	.loc 1 9937 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 9938 0
	jmp	.L3434
.L3432:
	.loc 1 9940 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
.L3428:
	.loc 1 9929 0
	cmpl	$0, -96(%ebp)
	jne	.L3429
.L3434:
	.loc 1 9943 0
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3435
	cmpl	$0, -108(%ebp)
	je	.L3435
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L3435
	.loc 1 9945 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
.L3435:
	.loc 1 9949 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3439
	cmpl	$0, -108(%ebp)
	je	.L3439
.LBB128:
	.loc 1 9953 0
	movl	$0, -92(%ebp)
	jmp	.L3442
.L3443:
	.loc 1 9955 0
	movl	-92(%ebp), %eax
	cmpl	-132(%ebp), %eax
	je	.L3444
	.loc 1 9957 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-92(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L3444
	.loc 1 9965 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 9966 0
	jmp	.L3439
.L3444:
	.loc 1 9953 0
	addl	$1, -92(%ebp)
.L3442:
	movl	-144(%ebp), %eax
	movl	96(%eax), %eax
	cmpl	-92(%ebp), %eax
	jg	.L3443
.L3439:
.LBE128:
	.loc 1 9971 0
	cmpl	$0, -136(%ebp)
	je	.L3447
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L3447
	.loc 1 9974 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
.L3447:
	.loc 1 9976 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3450
	.loc 1 9981 0
	movl	$1, 4(%esp)
	leal	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 9982 0
	movl	$1, 4(%esp)
	leal	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 9988 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -104(%ebp)
	.loc 1 9989 0
	movl	-104(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movb	%al, 3(%edx)
	.loc 1 9990 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 9994 0
	movl	$0, -136(%ebp)
	.loc 1 9995 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -148(%ebp)
	.loc 1 9996 0
	jmp	.L3452
.L3453:
	.loc 1 9999 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3454
.LBB129:
	.loc 1 10003 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3456
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3458
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L3460
.L3458:
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	single_set_2@PLT
	movl	%eax, -192(%ebp)
.L3460:
	movl	-192(%ebp), %eax
	movl	%eax, -196(%ebp)
	jmp	.L3461
.L3456:
	movl	$0, -196(%ebp)
.L3461:
	movl	-196(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 10008 0
	cmpl	$0, -88(%ebp)
	je	.L3462
	cmpl	$0, -136(%ebp)
	jne	.L3462
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3462
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3462
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-112(%ebp), %eax
	jae	.L3462
	movl	-140(%ebp), %eax
	movl	8(%eax), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L3462
	movl	-88(%ebp), %eax
	movl	12(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3462
	.loc 1 10016 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L3462:
	.loc 1 10023 0
	cmpl	$0, -88(%ebp)
	je	.L3470
	cmpl	$0, -136(%ebp)
	jne	.L3470
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3470
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3470
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-112(%ebp), %eax
	jae	.L3470
	movl	-140(%ebp), %eax
	movl	8(%eax), %edx
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L3470
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3470
	.loc 1 10030 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L3470:
	.loc 1 10034 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3478
	movl	-148(%ebp), %eax
	movl	76(%eax), %esi
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L3478
	.loc 1 10038 0
	movl	$0, (%esp)
	call	cancel_changes@PLT
	.loc 1 10039 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 10040 0
	jmp	.L3481
.L3478:
	.loc 1 10044 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %esi
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	-148(%ebp), %ecx
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	replace_loop_mems
.L3454:
.LBE129:
	.loc 1 10048 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L3482
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3484
.L3482:
	.loc 1 10050 0
	movl	$1, -136(%ebp)
.L3484:
	.loc 1 9997 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -148(%ebp)
.L3452:
	.loc 1 9996 0
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jne	.L3453
.L3481:
	.loc 1 10053 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3450
	.loc 1 10055 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	jne	.L3486
	.loc 1 10057 0
	movl	-144(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 8(%eax)
	jmp	.L3450
.L3486:
.LBB130:
	.loc 1 10062 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -84(%ebp)
	.loc 1 10064 0
	movl	-100(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 10066 0
	movl	$0, -68(%ebp)
	.loc 1 10068 0
	cmpl	$0, -84(%ebp)
	je	.L3488
.LBB131:
	.loc 1 10071 0
	movl	$0, -60(%ebp)
	.loc 1 10072 0
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L3490
.L3491:
	.loc 1 10074 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3492
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3500
.L3492:
	.loc 1 10075 0
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 10074 0
	jmp	.L3501
.L3500:
	.loc 1 10076 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3501
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3501
	.loc 1 10083 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
.L3501:
	.loc 1 10072 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L3490:
	cmpl	$0, -64(%ebp)
	jne	.L3491
	.loc 1 10086 0
	cmpl	$0, -60(%ebp)
	jne	.L3505
	.loc 1 10087 0
	movl	-68(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3507
.L3505:
	.loc 1 10088 0
	cmpl	$0, -68(%ebp)
	je	.L3507
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	movl	%eax, %esi
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	%eax, %esi
	jg	.L3507
	.loc 1 10092 0
	movl	-68(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 10093 0
	movl	$0, -68(%ebp)
.L3507:
	.loc 1 10100 0
	cmpl	$0, -60(%ebp)
	je	.L3488
	.loc 1 10101 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -76(%ebp)
.L3488:
.LBE131:
	.loc 1 10104 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 10105 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -80(%ebp)
	.loc 1 10106 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3511
	.loc 1 10108 0
	movl	-128(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3513
.L3514:
	.loc 1 10109 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3515
	.loc 1 10111 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 10112 0
	jmp	.L3511
.L3515:
	.loc 1 10108 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
.L3513:
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-148(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3514
.L3511:
	.loc 1 10116 0
	cmpl	$0, -68(%ebp)
	je	.L3517
	.loc 1 10117 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.L3517:
	.loc 1 10119 0
	cmpl	$0, -108(%ebp)
	je	.L3519
	.loc 1 10121 0
	cmpl	$0, -124(%ebp)
	jne	.L3521
	.loc 1 10123 0
	call	gen_label_rtx@PLT
	movl	%eax, -124(%ebp)
	.loc 1 10124 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_after@PLT
.L3521:
	.loc 1 10129 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 10130 0
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_after
.L3519:
	.loc 1 10133 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3523
	.loc 1 10135 0
	cmpl	$0, -108(%ebp)
	je	.L3525
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
	jmp	.L3527
.L3525:
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
.L3527:
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-188(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 10137 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl@PLT
	.loc 1 10138 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L3523:
.LBB132:
	.loc 1 10144 0
	movl	-164(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$1, -52(%ebp)
	movl	$16, -48(%ebp)
	movl	$1, -44(%ebp)
	jmp	.L3528
.L3529:
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L3528:
	cmpl	$0, -56(%ebp)
	je	.L3530
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-52(%ebp), %eax
	jb	.L3529
.L3530:
	cmpl	$0, -56(%ebp)
	je	.L3535
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L3535
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L3535
.L3538:
.LBB133:
	movl	-44(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L3539
	jmp	.L3541
.L3542:
.LBB134:
	movl	-48(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	andl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L3543
	movl	-36(%ebp), %eax
	notl	%eax
	andl	%eax, -40(%ebp)
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	sall	$5, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_copy_prop
	cmpl	$0, -40(%ebp)
	je	.L3539
.L3543:
.LBE134:
	addl	$1, -48(%ebp)
.L3541:
	cmpl	$31, -48(%ebp)
	jbe	.L3542
.L3539:
	movl	$0, -48(%ebp)
.LBE133:
	addl	$1, -44(%ebp)
.L3537:
	cmpl	$3, -44(%ebp)
	jbe	.L3538
	movl	$0, -44(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L3535:
	cmpl	$0, -56(%ebp)
	jne	.L3537
.LBE132:
	.loc 1 10149 0
	leal	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB135:
	.loc 1 10151 0
	movl	-180(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$1, -28(%ebp)
	movl	$16, -24(%ebp)
	movl	$1, -20(%ebp)
	jmp	.L3547
.L3548:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L3547:
	cmpl	$0, -32(%ebp)
	je	.L3549
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L3548
.L3549:
	cmpl	$0, -32(%ebp)
	je	.L3554
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L3554
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L3554
.L3557:
.LBB136:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L3558
	jmp	.L3560
.L3561:
.LBB137:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L3562
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_swap_copy_prop
	cmpl	$0, -16(%ebp)
	je	.L3558
.L3562:
.LBE137:
	addl	$1, -24(%ebp)
.L3560:
	cmpl	$31, -24(%ebp)
	jbe	.L3561
.L3558:
	movl	$0, -24(%ebp)
.LBE136:
	addl	$1, -20(%ebp)
.L3556:
	cmpl	$3, -20(%ebp)
	jbe	.L3557
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L3554:
	cmpl	$0, -32(%ebp)
	jne	.L3556
.LBE135:
	.loc 1 10156 0
	leal	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.L3450:
.LBE130:
.LBE127:
	.loc 1 9912 0
	addl	$1, -132(%ebp)
.L3423:
	movl	-144(%ebp), %eax
	movl	96(%eax), %eax
	cmpl	-132(%ebp), %eax
	jg	.L3424
	.loc 1 10160 0
	cmpl	$0, -124(%ebp)
	je	.L3567
	cmpl	$0, -120(%ebp)
	je	.L3567
.LBB138:
	.loc 1 10165 0
	movl	-120(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 10166 0
	movl	-124(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 10168 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3570
.L3571:
	.loc 1 10170 0
	leal	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	replace_label@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 10178 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3572
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-120(%ebp), %eax
	jne	.L3572
	.loc 1 10179 0
	movl	-148(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 76(%edx)
.L3572:
	.loc 1 10168 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
.L3570:
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	-148(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L3571
.L3567:
.LBE138:
	.loc 1 10183 0
	call	cselib_finish@PLT
.L3575:
	.loc 1 10184 0
	addl	$224, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE108:
	.size	load_mems, .-load_mems
	.type	note_reg_stored, @function
note_reg_stored:
.LFB109:
	.loc 1 10199 0
	pushl	%ebp
.LCFI418:
	movl	%esp, %ebp
.LCFI419:
	subl	$16, %esp
.LCFI420:
	.loc 1 10200 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 10201 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3579
	.loc 1 10202 0
	movl	-4(%ebp), %eax
	movl	$1, (%eax)
.L3579:
	.loc 1 10203 0
	leave
	ret
.LFE109:
	.size	note_reg_stored, .-note_reg_stored
	.section	.rodata
	.type	__FUNCTION__.22880, @object
	.size	__FUNCTION__.22880, 14
__FUNCTION__.22880:
	.string	"try_copy_prop"
.LC79:
	.string	"  Replaced reg %d"
.LC80:
	.string	".\n"
	.text
	.type	try_copy_prop, @function
try_copy_prop:
.LFB110:
	.loc 1 10215 0
	pushl	%ebp
.LCFI421:
	movl	%esp, %ebp
.LCFI422:
	pushl	%ebx
.LCFI423:
	subl	$84, %esp
.LCFI424:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10217 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 10218 0
	movl	$0, -36(%ebp)
	.loc 1 10221 0
	movl	$0, -28(%ebp)
	.loc 1 10222 0
	movl	$0, -24(%ebp)
	.loc 1 10224 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -32(%ebp)
	.loc 1 10225 0
	jmp	.L3581
.L3582:
.LBB139:
	.loc 1 10232 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3583
	cmpl	$0, -36(%ebp)
	jne	.L3585
.L3583:
	.loc 1 10235 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3586
	.loc 1 10239 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3588
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3590
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3592
.L3590:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -56(%ebp)
.L3592:
	movl	-56(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3593
.L3588:
	movl	$0, -60(%ebp)
.L3593:
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10240 0
	cmpl	$0, -20(%ebp)
	je	.L3594
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3594
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L3594
	.loc 1 10244 0
	cmpl	$0, -36(%ebp)
	je	.L3598
	.loc 1 10245 0
	leal	__FUNCTION__.22880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10245, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3598:
	.loc 1 10247 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 10248 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3594
	.loc 1 10249 0
	movl	$1, -24(%ebp)
.L3594:
	.loc 1 10253 0
	cmpl	$0, -36(%ebp)
	je	.L3586
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L3586
.LBB140:
	.loc 1 10257 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_loop_regs
	.loc 1 10258 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3603
	.loc 1 10259 0
	movl	$1, -28(%ebp)
.L3603:
	.loc 1 10262 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 10263 0
	movl	$0, -48(%ebp)
	.loc 1 10264 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %edx
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_reg_stored@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 10265 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L3586
.LBB141:
	.loc 1 10267 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 10272 0
	cmpl	$0, -16(%ebp)
	je	.L3585
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L3585
	.loc 1 10273 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 10274 0
	jmp	.L3585
.L3586:
.LBE141:
.LBE140:
.LBE139:
	.loc 1 10226 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -32(%ebp)
.L3581:
	.loc 1 10225 0
	cmpl	$0, -32(%ebp)
	jne	.L3582
.L3585:
	.loc 1 10278 0
	cmpl	$0, -36(%ebp)
	jne	.L3609
	.loc 1 10279 0
	leal	__FUNCTION__.22880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10279, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3609:
	.loc 1 10280 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L3621
	.loc 1 10282 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3613
	.loc 1 10283 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L3613:
	.loc 1 10284 0
	cmpl	$0, -24(%ebp)
	je	.L3615
	cmpl	$0, -28(%ebp)
	je	.L3615
.LBB142:
	.loc 1 10290 0
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10293 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 10296 0
	cmpl	$0, -8(%ebp)
	je	.L3618
	.loc 1 10297 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L3618:
	.loc 1 10300 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_delete_insns
.L3615:
.LBE142:
	.loc 1 10302 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3621
	.loc 1 10303 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3621:
	.loc 1 10305 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	try_copy_prop, .-try_copy_prop
	.section	.rodata
.LC81:
	.string	", deleting init_insn (%d)"
	.text
	.type	loop_delete_insns, @function
loop_delete_insns:
.LFB111:
	.loc 1 10314 0
	pushl	%ebp
.LCFI425:
	movl	%esp, %ebp
.LCFI426:
	pushl	%ebx
.LCFI427:
	subl	$20, %esp
.LCFI428:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L3623:
	.loc 1 10317 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3624
	.loc 1 10318 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L3624:
	.loc 1 10320 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 10324 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L3628
	.loc 1 10327 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 10328 0
	jmp	.L3623
.L3628:
	.loc 1 10329 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE111:
	.size	loop_delete_insns, .-loop_delete_insns
	.section	.rodata
	.align 4
.LC82:
	.string	"  Swapped set of reg %d at %d with reg %d at %d.\n"
	.text
	.type	try_swap_copy_prop, @function
try_swap_copy_prop:
.LFB112:
	.loc 1 10341 0
	pushl	%ebp
.LCFI429:
	movl	%esp, %ebp
.LCFI430:
	pushl	%esi
.LCFI431:
	pushl	%ebx
.LCFI432:
	subl	$80, %esp
.LCFI433:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10343 0
	movl	$0, -24(%ebp)
	.loc 1 10346 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10348 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -28(%ebp)
	.loc 1 10349 0
	jmp	.L3630
.L3631:
	.loc 1 10353 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3632
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3634
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3636
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L3638
.L3636:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L3638:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3639
.L3634:
	movl	$0, -56(%ebp)
.L3639:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L3632
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3632
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L3632
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3632
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L3644
.L3632:
	.loc 1 10350 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_in_loop
	movl	%eax, -28(%ebp)
.L3630:
	.loc 1 10349 0
	cmpl	$0, -28(%ebp)
	jne	.L3631
.L3644:
	.loc 1 10362 0
	cmpl	$0, -28(%ebp)
	je	.L3662
.LBB143:
	.loc 1 10371 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 10373 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3662
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3648
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3650
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L3652
.L3650:
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -44(%ebp)
.L3652:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3653
.L3648:
	movl	$0, -48(%ebp)
.L3653:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3662
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3662
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L3662
	.loc 1 10391 0
	movl	-12(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 10393 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	-24(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 10395 0
	movl	-24(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 10398 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L3662
	.loc 1 10400 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3658
	.loc 1 10401 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L3658:
	.loc 1 10407 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3660
	.loc 1 10408 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L3660:
	.loc 1 10412 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_copy_prop
.L3662:
.LBE143:
	.loc 1 10416 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE112:
	.size	try_swap_copy_prop, .-try_swap_copy_prop
	.type	find_mem_in_note_1, @function
find_mem_in_note_1:
.LFB113:
	.loc 1 10424 0
	pushl	%ebp
.LCFI434:
	movl	%esp, %ebp
.LCFI435:
	subl	$20, %esp
.LCFI436:
	.loc 1 10425 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3664
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3664
.LBB144:
	.loc 1 10427 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 10428 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 10429 0
	movl	$1, -20(%ebp)
	jmp	.L3667
.L3664:
.LBE144:
	.loc 1 10431 0
	movl	$0, -20(%ebp)
.L3667:
	movl	-20(%ebp), %eax
	.loc 1 10432 0
	leave
	ret
.LFE113:
	.size	find_mem_in_note_1, .-find_mem_in_note_1
	.type	find_mem_in_note, @function
find_mem_in_note:
.LFB114:
	.loc 1 10439 0
	pushl	%ebp
.LCFI437:
	movl	%esp, %ebp
.LCFI438:
	pushl	%ebx
.LCFI439:
	subl	$20, %esp
.LCFI440:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10440 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L3670
	leal	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	find_mem_in_note_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L3670
	.loc 1 10441 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3673
.L3670:
	.loc 1 10442 0
	movl	$0, -8(%ebp)
.L3673:
	movl	-8(%ebp), %eax
	.loc 1 10443 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	find_mem_in_note, .-find_mem_in_note
	.type	replace_loop_mem, @function
replace_loop_mem:
.LFB115:
	.loc 1 10454 0
	pushl	%ebp
.LCFI441:
	movl	%esp, %ebp
.LCFI442:
	pushl	%ebx
.LCFI443:
	subl	$52, %esp
.LCFI444:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10455 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10456 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10458 0
	cmpl	$0, -8(%ebp)
	jne	.L3676
	.loc 1 10459 0
	movl	$0, -28(%ebp)
	jmp	.L3678
.L3676:
	.loc 1 10461 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$65, -24(%ebp)
	je	.L3680
	cmpl	$76, -24(%ebp)
	je	.L3681
	jmp	.L3679
.L3681:
	.loc 1 10476 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3682
	jmp	.L3683
.L3680:
	.loc 1 10469 0
	movl	$-1, -28(%ebp)
	jmp	.L3678
.L3679:
	.loc 1 10473 0
	movl	$0, -28(%ebp)
	jmp	.L3678
.L3682:
	.loc 1 10478 0
	movl	$0, -28(%ebp)
	jmp	.L3678
.L3683:
	.loc 1 10481 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	validate_change@PLT
	.loc 1 10483 0
	movl	$0, -28(%ebp)
.L3678:
	movl	-28(%ebp), %eax
	.loc 1 10484 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE115:
	.size	replace_loop_mem, .-replace_loop_mem
	.type	replace_loop_mems, @function
replace_loop_mems:
.LFB116:
	.loc 1 10492 0
	pushl	%ebp
.LCFI445:
	movl	%esp, %ebp
.LCFI446:
	pushl	%ebx
.LCFI447:
	subl	$52, %esp
.LCFI448:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10495 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 10496 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 10497 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 10499 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	replace_loop_mem@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 10503 0
	cmpl	$0, 20(%ebp)
	je	.L3694
.LBB145:
	.loc 1 10508 0
	movl	8(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -8(%ebp)
	jmp	.L3688
.L3689:
	.loc 1 10510 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L3690
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_mem_in_note
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3690
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L3690
	.loc 1 10515 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	validate_change@PLT
	.loc 1 10516 0
	jmp	.L3694
.L3690:
	.loc 1 10508 0
	movl	-16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -8(%ebp)
.L3688:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L3689
.L3694:
.LBE145:
	.loc 1 10520 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE116:
	.size	replace_loop_mems, .-replace_loop_mems
	.type	replace_loop_reg, @function
replace_loop_reg:
.LFB117:
	.loc 1 10530 0
	pushl	%ebp
.LCFI449:
	movl	%esp, %ebp
.LCFI450:
	pushl	%ebx
.LCFI451:
	subl	$36, %esp
.LCFI452:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10531 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10532 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10534 0
	cmpl	$0, -12(%ebp)
	jne	.L3696
	.loc 1 10535 0
	movl	$0, -24(%ebp)
	jmp	.L3698
.L3696:
	.loc 1 10537 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L3699
	.loc 1 10538 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	validate_change@PLT
.L3699:
	.loc 1 10540 0
	movl	$0, -24(%ebp)
.L3698:
	movl	-24(%ebp), %eax
	.loc 1 10541 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE117:
	.size	replace_loop_reg, .-replace_loop_reg
	.type	replace_loop_regs, @function
replace_loop_regs:
.LFB118:
	.loc 1 10548 0
	pushl	%ebp
.LCFI453:
	movl	%esp, %ebp
.LCFI454:
	pushl	%ebx
.LCFI455:
	subl	$36, %esp
.LCFI456:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10551 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10552 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 10553 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10555 0
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	replace_loop_reg@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 10556 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE118:
	.size	replace_loop_regs, .-replace_loop_regs
	.type	replace_label, @function
replace_label:
.LFB119:
	.loc 1 10566 0
	pushl	%ebp
.LCFI457:
	movl	%esp, %ebp
.LCFI458:
	subl	$20, %esp
.LCFI459:
	.loc 1 10567 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 10568 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 10569 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 10571 0
	cmpl	$0, -12(%ebp)
	jne	.L3705
	.loc 1 10572 0
	movl	$0, -20(%ebp)
	jmp	.L3707
.L3705:
	.loc 1 10574 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3708
	.loc 1 10575 0
	movl	$0, -20(%ebp)
	jmp	.L3707
.L3708:
	.loc 1 10577 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L3710
	.loc 1 10578 0
	movl	$0, -20(%ebp)
	jmp	.L3707
.L3710:
	.loc 1 10580 0
	movl	-12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 10581 0
	movl	-4(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 10582 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 10584 0
	movl	$0, -20(%ebp)
.L3707:
	movl	-20(%ebp), %eax
	.loc 1 10585 0
	leave
	ret
.LFE119:
	.size	replace_label, .-replace_label
	.type	loop_insn_emit_after, @function
loop_insn_emit_after:
.LFB120:
	.loc 1 10596 0
	pushl	%ebp
.LCFI460:
	movl	%esp, %ebp
.LCFI461:
	pushl	%ebx
.LCFI462:
	subl	$20, %esp
.LCFI463:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10597 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 10598 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE120:
	.size	loop_insn_emit_after, .-loop_insn_emit_after
.globl loop_insn_emit_before
	.type	loop_insn_emit_before, @function
loop_insn_emit_before:
.LFB121:
	.loc 1 10611 0
	pushl	%ebp
.LCFI464:
	movl	%esp, %ebp
.LCFI465:
	pushl	%ebx
.LCFI466:
	subl	$20, %esp
.LCFI467:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10612 0
	cmpl	$0, 16(%ebp)
	jne	.L3716
	.loc 1 10613 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -8(%ebp)
	jmp	.L3718
.L3716:
	.loc 1 10614 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -8(%ebp)
.L3718:
	movl	-8(%ebp), %eax
	.loc 1 10615 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE121:
	.size	loop_insn_emit_before, .-loop_insn_emit_before
	.type	loop_call_insn_emit_before, @function
loop_call_insn_emit_before:
.LFB122:
	.loc 1 10627 0
	pushl	%ebp
.LCFI468:
	movl	%esp, %ebp
.LCFI469:
	pushl	%ebx
.LCFI470:
	subl	$20, %esp
.LCFI471:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10628 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_insn_before@PLT
	.loc 1 10629 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE122:
	.size	loop_call_insn_emit_before, .-loop_call_insn_emit_before
.globl loop_insn_hoist
	.type	loop_insn_hoist, @function
loop_insn_hoist:
.LFB123:
	.loc 1 10638 0
	pushl	%ebp
.LCFI472:
	movl	%esp, %ebp
.LCFI473:
	pushl	%ebx
.LCFI474:
	subl	$20, %esp
.LCFI475:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10639 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
	.loc 1 10640 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	loop_insn_hoist, .-loop_insn_hoist
	.type	loop_call_insn_hoist, @function
loop_call_insn_hoist:
.LFB124:
	.loc 1 10649 0
	pushl	%ebp
.LCFI476:
	movl	%esp, %ebp
.LCFI477:
	subl	$24, %esp
.LCFI478:
	.loc 1 10650 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_call_insn_emit_before
	.loc 1 10651 0
	leave
	ret
.LFE124:
	.size	loop_call_insn_hoist, .-loop_call_insn_hoist
.globl loop_insn_sink
	.type	loop_insn_sink, @function
loop_insn_sink:
.LFB125:
	.loc 1 10660 0
	pushl	%ebp
.LCFI479:
	movl	%esp, %ebp
.LCFI480:
	pushl	%ebx
.LCFI481:
	subl	$20, %esp
.LCFI482:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10661 0
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
	.loc 1 10662 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	loop_insn_sink, .-loop_insn_sink
	.type	gen_load_of_final_value, @function
gen_load_of_final_value:
.LFB126:
	.loc 1 10669 0
	pushl	%ebp
.LCFI483:
	movl	%esp, %ebp
.LCFI484:
	pushl	%ebx
.LCFI485:
	subl	$36, %esp
.LCFI486:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10671 0
	call	start_sequence@PLT
	.loc 1 10672 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, 12(%ebp)
	.loc 1 10673 0
	movl	12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L3729
	.loc 1 10674 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L3729:
	.loc 1 10675 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 10676 0
	call	end_sequence@PLT
	.loc 1 10677 0
	movl	-8(%ebp), %eax
	.loc 1 10678 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE126:
	.size	gen_load_of_final_value, .-gen_load_of_final_value
	.type	loop_insn_sink_or_swim, @function
loop_insn_sink_or_swim:
.LFB127:
	.loc 1 10689 0
	pushl	%ebp
.LCFI487:
	movl	%esp, %ebp
.LCFI488:
	pushl	%ebx
.LCFI489:
	subl	$20, %esp
.LCFI490:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10690 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L3733
	.loc 1 10691 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	movl	%eax, -8(%ebp)
	jmp	.L3735
.L3733:
	.loc 1 10693 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
	movl	%eax, -8(%ebp)
.L3735:
	movl	-8(%ebp), %eax
	.loc 1 10694 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE127:
	.size	loop_insn_sink_or_swim, .-loop_insn_sink_or_swim
	.section	.rodata
.LC83:
	.string	"Loop %d: %d IV classes\n"
	.text
	.type	loop_ivs_dump, @function
loop_ivs_dump:
.LFB128:
	.loc 1 10701 0
	pushl	%ebp
.LCFI491:
	movl	%esp, %ebp
.LCFI492:
	pushl	%ebx
.LCFI493:
	subl	$36, %esp
.LCFI494:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10703 0
	movl	$0, -8(%ebp)
	.loc 1 10705 0
	cmpl	$0, 8(%ebp)
	je	.L3747
	cmpl	$0, 12(%ebp)
	jne	.L3740
	.loc 1 10706 0
	jmp	.L3747
.L3740:
	.loc 1 10708 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	152(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L3742
.L3743:
	.loc 1 10709 0
	addl	$1, -8(%ebp)
	.loc 1 10708 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
.L3742:
	cmpl	$0, -12(%ebp)
	jne	.L3743
	.loc 1 10711 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10713 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	152(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L3745
.L3746:
	.loc 1 10715 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_class_dump
	.loc 1 10716 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10713 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
.L3745:
	cmpl	$0, -12(%ebp)
	jne	.L3746
.L3747:
	.loc 1 10718 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE128:
	.size	loop_ivs_dump, .-loop_ivs_dump
	.section	.rodata
	.align 4
.LC84:
	.string	"IV class for reg %d, benefit %d\n"
.LC85:
	.string	" Init insn %d"
.LC86:
	.string	", init val: "
.LC87:
	.string	", init test: "
.LC88:
	.string	" Final val: "
.LC89:
	.string	" Total increment: "
.LC90:
	.string	" Inc%d: insn %d, incr: "
.LC91:
	.string	" Giv%d: insn %d, benefit %d, "
	.text
	.type	loop_iv_class_dump, @function
loop_iv_class_dump:
.LFB129:
	.loc 1 10726 0
	pushl	%ebp
.LCFI495:
	movl	%esp, %ebp
.LCFI496:
	pushl	%ebx
.LCFI497:
	subl	$52, %esp
.LCFI498:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10731 0
	cmpl	$0, 8(%ebp)
	je	.L3775
	cmpl	$0, 12(%ebp)
	jne	.L3751
	.loc 1 10732 0
	jmp	.L3775
.L3751:
	.loc 1 10734 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10737 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10738 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3753
	.loc 1 10740 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10741 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
.L3753:
	.loc 1 10743 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3755
	.loc 1 10745 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10746 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
.L3755:
	.loc 1 10748 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10750 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L3757
	.loc 1 10752 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10753 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10754 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L3757:
	.loc 1 10757 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3759
	.loc 1 10759 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10760 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10761 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L3759:
	.loc 1 10765 0
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3761
.L3762:
	.loc 1 10767 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10768 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10769 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10765 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -8(%ebp)
.L3761:
	cmpl	$0, -16(%ebp)
	jne	.L3762
	.loc 1 10773 0
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3764
.L3765:
	.loc 1 10775 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10777 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L3766
	.loc 1 10778 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	jmp	.L3768
.L3766:
	.loc 1 10780 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3769
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3771
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3773
.L3771:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -24(%ebp)
.L3773:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3774
.L3769:
	movl	$0, -28(%ebp)
.L3774:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
.L3768:
	.loc 1 10781 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10773 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -8(%ebp)
.L3764:
	cmpl	$0, -16(%ebp)
	jne	.L3765
.L3775:
	.loc 1 10783 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	loop_iv_class_dump, .-loop_iv_class_dump
	.section	.rodata
.LC92:
	.string	"Biv %d: insn %d"
.LC93:
	.string	" const "
.LC94:
	.string	" final "
	.text
	.type	loop_biv_dump, @function
loop_biv_dump:
.LFB130:
	.loc 1 10791 0
	pushl	%ebp
.LCFI499:
	movl	%esp, %ebp
.LCFI500:
	pushl	%ebx
.LCFI501:
	subl	$20, %esp
.LCFI502:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10792 0
	cmpl	$0, 8(%ebp)
	je	.L3784
	cmpl	$0, 12(%ebp)
	jne	.L3779
	.loc 1 10793 0
	jmp	.L3784
.L3779:
	.loc 1 10795 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10798 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10799 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10801 0
	cmpl	$0, 16(%ebp)
	je	.L3781
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L3781
	.loc 1 10803 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10804 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10805 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
.L3781:
	.loc 1 10808 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L3784:
	.loc 1 10809 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE130:
	.size	loop_biv_dump, .-loop_biv_dump
	.section	.rodata
	.type	__FUNCTION__.23417, @object
	.size	__FUNCTION__.23417, 14
__FUNCTION__.23417:
	.string	"loop_giv_dump"
.LC95:
	.string	"Giv %d: insn %d"
.LC96:
	.string	"Dest address: insn %d"
.LC97:
	.string	" src reg %d benefit %d"
.LC98:
	.string	" lifetime %d"
.LC99:
	.string	" replaceable"
.LC100:
	.string	" ncav"
.LC101:
	.string	" ext se"
.LC102:
	.string	" ext ze"
.LC103:
	.string	" ext tr"
.LC104:
	.string	" mult "
.LC105:
	.string	" add  "
	.text
	.type	loop_giv_dump, @function
loop_giv_dump:
.LFB131:
	.loc 1 10817 0
	pushl	%ebp
.LCFI503:
	movl	%esp, %ebp
.LCFI504:
	pushl	%ebx
.LCFI505:
	subl	$20, %esp
.LCFI506:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10818 0
	cmpl	$0, 8(%ebp)
	je	.L3806
	cmpl	$0, 12(%ebp)
	jne	.L3788
	.loc 1 10819 0
	jmp	.L3806
.L3788:
	.loc 1 10821 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L3790
	.loc 1 10822 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L3792
.L3790:
	.loc 1 10825 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3792:
	.loc 1 10828 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10830 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10833 0
	movl	8(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3793
	.loc 1 10834 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3793:
	.loc 1 10836 0
	movl	8(%ebp), %eax
	movzbl	53(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3795
	.loc 1 10837 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3795:
	.loc 1 10839 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L3797
	.loc 1 10841 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	cmpl	$131, -8(%ebp)
	je	.L3801
	cmpl	$132, -8(%ebp)
	je	.L3802
	cmpl	$130, -8(%ebp)
	je	.L3800
	jmp	.L3799
.L3800:
	.loc 1 10844 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10845 0
	jmp	.L3797
.L3801:
	.loc 1 10847 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10848 0
	jmp	.L3797
.L3802:
	.loc 1 10850 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10851 0
	jmp	.L3797
.L3799:
	.loc 1 10853 0
	leal	__FUNCTION__.23417@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10853, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3797:
	.loc 1 10857 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10858 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10859 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10861 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10862 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10863 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 10865 0
	cmpl	$0, 16(%ebp)
	je	.L3803
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L3803
	.loc 1 10867 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10868 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 10869 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_simple_rtl@PLT
.L3803:
	.loc 1 10872 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L3806:
	.loc 1 10873 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	loop_giv_dump, .-loop_giv_dump
.globl debug_ivs
	.type	debug_ivs, @function
debug_ivs:
.LFB132:
	.loc 1 10879 0
	pushl	%ebp
.LCFI507:
	movl	%esp, %ebp
.LCFI508:
	pushl	%ebx
.LCFI509:
	subl	$20, %esp
.LCFI510:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10880 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_ivs_dump
	.loc 1 10881 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE132:
	.size	debug_ivs, .-debug_ivs
.globl debug_iv_class
	.type	debug_iv_class, @function
debug_iv_class:
.LFB133:
	.loc 1 10887 0
	pushl	%ebp
.LCFI511:
	movl	%esp, %ebp
.LCFI512:
	pushl	%ebx
.LCFI513:
	subl	$20, %esp
.LCFI514:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10888 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_class_dump
	.loc 1 10889 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE133:
	.size	debug_iv_class, .-debug_iv_class
.globl debug_biv
	.type	debug_biv, @function
debug_biv:
.LFB134:
	.loc 1 10895 0
	pushl	%ebp
.LCFI515:
	movl	%esp, %ebp
.LCFI516:
	pushl	%ebx
.LCFI517:
	subl	$20, %esp
.LCFI518:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10896 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_biv_dump
	.loc 1 10897 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE134:
	.size	debug_biv, .-debug_biv
.globl debug_giv
	.type	debug_giv, @function
debug_giv:
.LFB135:
	.loc 1 10903 0
	pushl	%ebp
.LCFI519:
	movl	%esp, %ebp
.LCFI520:
	pushl	%ebx
.LCFI521:
	subl	$20, %esp
.LCFI522:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10904 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_giv_dump
	.loc 1 10905 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE135:
	.size	debug_giv, .-debug_giv
	.section	.rodata
	.align 4
.LC106:
	.string	";;  No NOTE_INSN_LOOP_BEG at %d\n"
	.align 4
.LC107:
	.string	";;  No NOTE_INSN_LOOP_END at %d\n"
	.align 4
.LC108:
	.string	";;  start %d (%d), cont dom %d (%d), cont %d (%d), vtop %d (%d), end %d (%d)\n"
	.align 4
.LC109:
	.string	";;  top %d (%d), scan start %d (%d)\n"
.LC110:
	.string	";;  exit_count %d"
.LC111:
	.string	", labels:"
.LC112:
	.string	" %d "
	.align 4
.LC113:
	.string	";;  NOTE_INSN_LOOP_CONT not in loop latch\n"
	.text
	.type	loop_dump_aux, @function
loop_dump_aux:
.LFB136:
	.loc 1 10925 0
	pushl	%ebp
.LCFI523:
	movl	%esp, %ebp
.LCFI524:
	pushl	%ebx
.LCFI525:
	subl	$292, %esp
.LCFI526:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10928 0
	cmpl	$0, 8(%ebp)
	je	.L4002
	cmpl	$0, 12(%ebp)
	jne	.L3818
	.loc 1 10929 0
	jmp	.L4002
.L3818:
	.loc 1 10933 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3820
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3820
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L3823
.L3820:
	.loc 1 10937 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3823:
	.loc 1 10939 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L3824
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3824
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L3827
.L3824:
	.loc 1 10943 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3827:
	.loc 1 10946 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L4002
	.loc 1 10948 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L3829
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -244(%ebp)
	jmp	.L3831
.L3829:
	movl	$-1, -244(%ebp)
.L3831:
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L3832
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3834
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3836
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3838
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L3840
.L3838:
	movl	$-1, -228(%ebp)
.L3840:
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
	jmp	.L3841
.L3836:
	movl	$-1, -232(%ebp)
.L3841:
	movl	-232(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L3842
.L3834:
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L3843
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3845
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -220(%ebp)
	jmp	.L3847
.L3845:
	movl	$-1, -220(%ebp)
.L3847:
	movl	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L3848
.L3843:
	movl	$-1, -224(%ebp)
.L3848:
	movl	-224(%ebp), %eax
	movl	%eax, -236(%ebp)
.L3842:
	movl	-236(%ebp), %eax
	movl	%eax, -240(%ebp)
	jmp	.L3849
.L3832:
	movl	$-1, -240(%ebp)
.L3849:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3850
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -216(%ebp)
	jmp	.L3852
.L3850:
	movl	$-1, -216(%ebp)
.L3852:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3853
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3855
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3857
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3859
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -200(%ebp)
	jmp	.L3861
.L3859:
	movl	$-1, -200(%ebp)
.L3861:
	movl	-200(%ebp), %eax
	movl	%eax, -204(%ebp)
	jmp	.L3862
.L3857:
	movl	$-1, -204(%ebp)
.L3862:
	movl	-204(%ebp), %eax
	movl	%eax, -208(%ebp)
	jmp	.L3863
.L3855:
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L3864
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3866
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -192(%ebp)
	jmp	.L3868
.L3866:
	movl	$-1, -192(%ebp)
.L3868:
	movl	-192(%ebp), %eax
	movl	%eax, -196(%ebp)
	jmp	.L3869
.L3864:
	movl	$-1, -196(%ebp)
.L3869:
	movl	-196(%ebp), %eax
	movl	%eax, -208(%ebp)
.L3863:
	movl	-208(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	.L3870
.L3853:
	movl	$-1, -212(%ebp)
.L3870:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3871
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -188(%ebp)
	jmp	.L3873
.L3871:
	movl	$-1, -188(%ebp)
.L3873:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3874
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3876
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3878
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3880
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L3882
.L3880:
	movl	$-1, -172(%ebp)
.L3882:
	movl	-172(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L3883
.L3878:
	movl	$-1, -176(%ebp)
.L3883:
	movl	-176(%ebp), %eax
	movl	%eax, -180(%ebp)
	jmp	.L3884
.L3876:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3885
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3887
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L3889
.L3887:
	movl	$-1, -164(%ebp)
.L3889:
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	.L3890
.L3885:
	movl	$-1, -168(%ebp)
.L3890:
	movl	-168(%ebp), %eax
	movl	%eax, -180(%ebp)
.L3884:
	movl	-180(%ebp), %eax
	movl	%eax, -184(%ebp)
	jmp	.L3891
.L3874:
	movl	$-1, -184(%ebp)
.L3891:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3892
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L3894
.L3892:
	movl	$-1, -160(%ebp)
.L3894:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3895
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3897
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3899
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3901
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L3903
.L3901:
	movl	$-1, -144(%ebp)
.L3903:
	movl	-144(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3904
.L3899:
	movl	$-1, -148(%ebp)
.L3904:
	movl	-148(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	.L3905
.L3897:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3906
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3908
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L3910
.L3908:
	movl	$-1, -136(%ebp)
.L3910:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L3911
.L3906:
	movl	$-1, -140(%ebp)
.L3911:
	movl	-140(%ebp), %eax
	movl	%eax, -152(%ebp)
.L3905:
	movl	-152(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L3912
.L3895:
	movl	$-1, -156(%ebp)
.L3912:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L3913
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L3915
.L3913:
	movl	$-1, -132(%ebp)
.L3915:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L3916
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3918
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3920
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3922
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L3924
.L3922:
	movl	$-1, -116(%ebp)
.L3924:
	movl	-116(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L3925
.L3920:
	movl	$-1, -120(%ebp)
.L3925:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L3926
.L3918:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L3927
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3929
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L3931
.L3929:
	movl	$-1, -108(%ebp)
.L3931:
	movl	-108(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L3932
.L3927:
	movl	$-1, -112(%ebp)
.L3932:
	movl	-112(%ebp), %eax
	movl	%eax, -124(%ebp)
.L3926:
	movl	-124(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L3933
.L3916:
	movl	$-1, -128(%ebp)
.L3933:
	movl	-244(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10960 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L3934
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L3936
.L3934:
	movl	$-1, -104(%ebp)
.L3936:
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L3937
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3939
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3941
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3943
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L3945
.L3943:
	movl	$-1, -88(%ebp)
.L3945:
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L3946
.L3941:
	movl	$-1, -92(%ebp)
.L3946:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L3947
.L3939:
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L3948
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3950
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L3952
.L3950:
	movl	$-1, -80(%ebp)
.L3952:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L3953
.L3948:
	movl	$-1, -84(%ebp)
.L3953:
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
.L3947:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L3954
.L3937:
	movl	$-1, -100(%ebp)
.L3954:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L3955
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L3957
.L3955:
	movl	$-1, -76(%ebp)
.L3957:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L3958
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3960
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3962
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3964
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L3966
.L3964:
	movl	$-1, -60(%ebp)
.L3966:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L3967
.L3962:
	movl	$-1, -64(%ebp)
.L3967:
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L3968
.L3960:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L3969
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3971
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L3973
.L3971:
	movl	$-1, -52(%ebp)
.L3973:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3974
.L3969:
	movl	$-1, -56(%ebp)
.L3974:
	movl	-56(%ebp), %eax
	movl	%eax, -68(%ebp)
.L3968:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L3975
.L3958:
	movl	$-1, -72(%ebp)
.L3975:
	movl	-104(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10965 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10966 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L3976
	.loc 1 10968 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 10969 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L3978
.L3979:
	.loc 1 10971 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3980
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3982
.L3980:
	movl	$-1, -48(%ebp)
.L3982:
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 10969 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L3978:
	cmpl	$0, -8(%ebp)
	jne	.L3979
.L3976:
	.loc 1 10975 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 10980 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3983
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3985
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	testl	%eax, %eax
	je	.L3987
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3989
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L3991
.L3989:
	movl	$-1, -32(%ebp)
.L3991:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L3992
.L3987:
	movl	$-1, -36(%ebp)
.L3992:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3993
.L3985:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L3994
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3996
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3998
.L3996:
	movl	$-1, -24(%ebp)
.L3998:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3999
.L3994:
	movl	$-1, -28(%ebp)
.L3999:
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.L3993:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4000
.L3983:
	movl	$-1, -44(%ebp)
.L4000:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -44(%ebp)
	je	.L4002
	.loc 1 10981 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L4002:
	.loc 1 10983 0
	addl	$292, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE136:
	.size	loop_dump_aux, .-loop_dump_aux
.globl debug_loop
	.type	debug_loop, @function
debug_loop:
.LFB137:
	.loc 1 10990 0
	pushl	%ebp
.LCFI527:
	movl	%esp, %ebp
.LCFI528:
	pushl	%ebx
.LCFI529:
	subl	$20, %esp
.LCFI530:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 10991 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	leal	loop_dump_aux@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_dump@PLT
	.loc 1 10992 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE137:
	.size	debug_loop, .-debug_loop
.globl debug_loops
	.type	debug_loops, @function
debug_loops:
.LFB138:
	.loc 1 10999 0
	pushl	%ebp
.LCFI531:
	movl	%esp, %ebp
.LCFI532:
	pushl	%ebx
.LCFI533:
	subl	$20, %esp
.LCFI534:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 11000 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	leal	loop_dump_aux@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_dump@PLT
	.loc 1 11001 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE138:
	.size	debug_loops, .-debug_loops
	.local	max_luid
	.comm	max_luid,4,4
	.local	max_loop_num
	.comm	max_loop_num,4,4
	.local	loop_max_reg
	.comm	loop_max_reg,4,4
	.local	indirect_jump_in_function
	.comm	indirect_jump_in_function,4,4
	.local	copy_cost
	.comm	copy_cost,4,4
	.local	reg_address_cost
	.comm	reg_address_cost,4,4
	.local	note_insn
	.comm	note_insn,4,4
	.local	addr_placeholder
	.comm	addr_placeholder,4,4
	.comm	uid_luid,4,4
	.comm	max_uid_for_loop,4,4
	.comm	max_reg_before_loop,4,4
	.comm	uid_loop,4,4
	.comm	loop_dump_stream,4,4
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
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
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
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
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
	.long	.LCFI13-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI14
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI27-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
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
	.long	.LCFI30-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI34-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI38-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI42-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI46-.LFB27
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
	.byte	0x87
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
	.long	.LCFI51-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI54-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
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
	.long	.LCFI57-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI58
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
	.long	.LCFI63-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI67-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI68
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI73-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI75-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI79-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI80
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
	.long	.LCFI84-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI88-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI91-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI92
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI96-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI100-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
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
	.long	.LCFI104-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI105
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
	.long	.LCFI108-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
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
	.long	.LCFI111-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI115-.LFB44
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI119-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI123-.LFB46
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI127-.LFB47
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI131-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI135-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI141-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI145-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI146
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
	.long	.LCFI155-.LCFI152
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
	.long	.LCFI156-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI159-.LCFI157
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
	.long	.LCFI160-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI164-.LCFI161
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
	.long	.LCFI165-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI169-.LCFI166
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI170-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI171
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
	.long	.LCFI174-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI177-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI182-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI187-.LCFI183
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI188-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI191-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI192
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI197-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI200-.LCFI198
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI201-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI205-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI210-.LCFI206
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI211-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI212
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI216-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI217
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI222-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI225-.LCFI223
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI226-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI231-.LCFI227
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI232-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI233
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI236-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI239-.LCFI237
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI240-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI241
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI245-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI246
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI249-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI252-.LCFI250
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI253-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI257-.LCFI254
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI258-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI263-.LCFI259
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI264-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI265-.LCFI264
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI265
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI270-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI273-.LCFI271
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI274-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI278-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI283-.LCFI279
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI284-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI285-.LCFI284
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI289-.LCFI285
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI290-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI293-.LCFI291
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI294-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI299-.LCFI295
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI300-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI301-.LCFI300
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI303-.LCFI301
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI304-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI305-.LCFI304
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI307-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI308-.LCFI307
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI312-.LCFI308
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI313-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI314-.LCFI313
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI316-.LCFI314
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI317-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI320-.LCFI318
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI321-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI322-.LCFI321
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI326-.LCFI322
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI327-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI328-.LCFI327
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI332-.LCFI328
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI333-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI334-.LCFI333
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI338-.LCFI334
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI339-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI340-.LCFI339
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI342-.LCFI340
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI343-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI344-.LCFI343
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI346-.LCFI344
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI347-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI348-.LCFI347
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI348
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI353-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI354-.LCFI353
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI357-.LCFI354
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI358-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI359-.LCFI358
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI361-.LCFI359
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI362-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI363-.LCFI362
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI365-.LCFI363
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI366-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI367-.LCFI366
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI369-.LCFI367
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI370-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI373-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI376-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI377-.LCFI376
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI379-.LCFI377
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI380-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI381-.LCFI380
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI385-.LCFI381
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.long	.LFB102
	.long	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI386-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI387-.LCFI386
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI389-.LCFI387
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.long	.LFB103
	.long	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI390-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI391-.LCFI390
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI395-.LCFI391
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.long	.LFB104
	.long	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI396-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI397-.LCFI396
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI399-.LCFI397
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.long	.LFB105
	.long	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI400-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI401-.LCFI400
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI404-.LCFI401
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.long	.LFB106
	.long	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI405-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI406-.LCFI405
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI409-.LCFI406
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE182:
.LSFDE184:
	.long	.LEFDE184-.LASFDE184
.LASFDE184:
	.long	.Lframe0
	.long	.LFB107
	.long	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI410-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI411-.LCFI410
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.long	.LFB108
	.long	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI413-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI414-.LCFI413
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI417-.LCFI414
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE186:
.LSFDE188:
	.long	.LEFDE188-.LASFDE188
.LASFDE188:
	.long	.Lframe0
	.long	.LFB109
	.long	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI418-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI419-.LCFI418
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI421-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI422-.LCFI421
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI424-.LCFI422
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.long	.LFB111
	.long	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI425-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI426-.LCFI425
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI428-.LCFI426
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.long	.LFB112
	.long	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI429-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI433-.LCFI430
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.long	.LFB113
	.long	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI434-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI435-.LCFI434
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.long	.LFB114
	.long	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI437-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI438-.LCFI437
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI440-.LCFI438
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE198:
.LSFDE200:
	.long	.LEFDE200-.LASFDE200
.LASFDE200:
	.long	.Lframe0
	.long	.LFB115
	.long	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI441-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI442-.LCFI441
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI444-.LCFI442
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.long	.LFB116
	.long	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI445-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI448-.LCFI446
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.long	.LFB117
	.long	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI449-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI450-.LCFI449
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI452-.LCFI450
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.long	.LFB118
	.long	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI453-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI454-.LCFI453
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI456-.LCFI454
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.long	.LFB119
	.long	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI457-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI458-.LCFI457
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE208:
.LSFDE210:
	.long	.LEFDE210-.LASFDE210
.LASFDE210:
	.long	.Lframe0
	.long	.LFB120
	.long	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI460-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI461-.LCFI460
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI463-.LCFI461
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.long	.LFB121
	.long	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI464-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI465-.LCFI464
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI467-.LCFI465
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE212:
.LSFDE214:
	.long	.LEFDE214-.LASFDE214
.LASFDE214:
	.long	.Lframe0
	.long	.LFB122
	.long	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI468-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI469-.LCFI468
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI471-.LCFI469
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE214:
.LSFDE216:
	.long	.LEFDE216-.LASFDE216
.LASFDE216:
	.long	.Lframe0
	.long	.LFB123
	.long	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI472-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI473-.LCFI472
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI475-.LCFI473
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE216:
.LSFDE218:
	.long	.LEFDE218-.LASFDE218
.LASFDE218:
	.long	.Lframe0
	.long	.LFB124
	.long	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI476-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI477-.LCFI476
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE218:
.LSFDE220:
	.long	.LEFDE220-.LASFDE220
.LASFDE220:
	.long	.Lframe0
	.long	.LFB125
	.long	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI479-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI480-.LCFI479
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI482-.LCFI480
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE220:
.LSFDE222:
	.long	.LEFDE222-.LASFDE222
.LASFDE222:
	.long	.Lframe0
	.long	.LFB126
	.long	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI483-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI484-.LCFI483
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI486-.LCFI484
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE222:
.LSFDE224:
	.long	.LEFDE224-.LASFDE224
.LASFDE224:
	.long	.Lframe0
	.long	.LFB127
	.long	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI487-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI488-.LCFI487
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI490-.LCFI488
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE224:
.LSFDE226:
	.long	.LEFDE226-.LASFDE226
.LASFDE226:
	.long	.Lframe0
	.long	.LFB128
	.long	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI491-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI492-.LCFI491
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI494-.LCFI492
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE226:
.LSFDE228:
	.long	.LEFDE228-.LASFDE228
.LASFDE228:
	.long	.Lframe0
	.long	.LFB129
	.long	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI495-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI496-.LCFI495
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI498-.LCFI496
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE228:
.LSFDE230:
	.long	.LEFDE230-.LASFDE230
.LASFDE230:
	.long	.Lframe0
	.long	.LFB130
	.long	.LFE130-.LFB130
	.byte	0x4
	.long	.LCFI499-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI500-.LCFI499
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI502-.LCFI500
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE230:
.LSFDE232:
	.long	.LEFDE232-.LASFDE232
.LASFDE232:
	.long	.Lframe0
	.long	.LFB131
	.long	.LFE131-.LFB131
	.byte	0x4
	.long	.LCFI503-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI504-.LCFI503
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI506-.LCFI504
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE232:
.LSFDE234:
	.long	.LEFDE234-.LASFDE234
.LASFDE234:
	.long	.Lframe0
	.long	.LFB132
	.long	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI507-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI508-.LCFI507
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI510-.LCFI508
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE234:
.LSFDE236:
	.long	.LEFDE236-.LASFDE236
.LASFDE236:
	.long	.Lframe0
	.long	.LFB133
	.long	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI511-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI512-.LCFI511
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI514-.LCFI512
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE236:
.LSFDE238:
	.long	.LEFDE238-.LASFDE238
.LASFDE238:
	.long	.Lframe0
	.long	.LFB134
	.long	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI515-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI516-.LCFI515
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI518-.LCFI516
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE238:
.LSFDE240:
	.long	.LEFDE240-.LASFDE240
.LASFDE240:
	.long	.Lframe0
	.long	.LFB135
	.long	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI519-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI520-.LCFI519
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI522-.LCFI520
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE240:
.LSFDE242:
	.long	.LEFDE242-.LASFDE242
.LASFDE242:
	.long	.Lframe0
	.long	.LFB136
	.long	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI523-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI524-.LCFI523
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI526-.LCFI524
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE242:
.LSFDE244:
	.long	.LEFDE244-.LASFDE244
.LASFDE244:
	.long	.Lframe0
	.long	.LFB137
	.long	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI527-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI528-.LCFI527
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI530-.LCFI528
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE244:
.LSFDE246:
	.long	.LEFDE246-.LASFDE246
.LASFDE246:
	.long	.Lframe0
	.long	.LFB138
	.long	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI531-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI532-.LCFI531
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI534-.LCFI532
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE246:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/cselib.h"
	.file 6 "../../../kgccfe/gnu/varray.h"
	.file 7 "../../../kgccfe/gnu/bitmap.h"
	.file 8 "../../../kgccfe/gnu/basic-block.h"
	.file 9 "../../../kgccfe/gnu/sbitmap.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kgccfe/gnu/loop.h"
	.file 15 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 16 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 17 "../../../kgccfe/gnu/function.h"
	.file 18 "../../../kgccfe/gnu/regs.h"
	.file 19 "../../../kgccfe/gnu/recog.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI109-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI156-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI157-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI160-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI161-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI170-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI171-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI188-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI189-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI197-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI198-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI211-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI212-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI216-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI217-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI226-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI227-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI232-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI233-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI236-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI237-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI240-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI241-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI245-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI246-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI249-.Ltext0
	.long	.LCFI250-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI250-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI253-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI254-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI258-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI259-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI264-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI265-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI284-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI284-.Ltext0
	.long	.LCFI285-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI285-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI290-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI290-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI291-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI300-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI301-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI304-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI305-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI307-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI308-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI313-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI314-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI317-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI318-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI321-.Ltext0
	.long	.LCFI322-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI322-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI327-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI327-.Ltext0
	.long	.LCFI328-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI328-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI333-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI333-.Ltext0
	.long	.LCFI334-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI334-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI339-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI339-.Ltext0
	.long	.LCFI340-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI340-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI343-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI343-.Ltext0
	.long	.LCFI344-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI344-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI347-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI347-.Ltext0
	.long	.LCFI348-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI348-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI353-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI353-.Ltext0
	.long	.LCFI354-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI354-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI358-.Ltext0
	.long	.LCFI359-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI359-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI362-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI362-.Ltext0
	.long	.LCFI363-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI363-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI366-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI366-.Ltext0
	.long	.LCFI367-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI367-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI370-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI370-.Ltext0
	.long	.LCFI371-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI371-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI373-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI373-.Ltext0
	.long	.LCFI374-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI374-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI376-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI376-.Ltext0
	.long	.LCFI377-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI377-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI380-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI380-.Ltext0
	.long	.LCFI381-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI381-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
	.long	.LCFI386-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI386-.Ltext0
	.long	.LCFI387-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI387-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI390-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI390-.Ltext0
	.long	.LCFI391-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI391-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI396-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI396-.Ltext0
	.long	.LCFI397-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI397-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI400-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI400-.Ltext0
	.long	.LCFI401-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI401-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI405-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI405-.Ltext0
	.long	.LCFI406-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI406-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI410-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI410-.Ltext0
	.long	.LCFI411-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI411-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI413-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI413-.Ltext0
	.long	.LCFI414-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI414-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI418-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI418-.Ltext0
	.long	.LCFI419-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI419-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
	.long	.LCFI421-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI421-.Ltext0
	.long	.LCFI422-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI422-.Ltext0
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
	.long	.LCFI425-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI425-.Ltext0
	.long	.LCFI426-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI426-.Ltext0
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI429-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI429-.Ltext0
	.long	.LCFI430-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI430-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI434-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI434-.Ltext0
	.long	.LCFI435-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI435-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI437-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI437-.Ltext0
	.long	.LCFI438-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI438-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI441-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI441-.Ltext0
	.long	.LCFI442-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI442-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI445-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI445-.Ltext0
	.long	.LCFI446-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI446-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI449-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI449-.Ltext0
	.long	.LCFI450-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI450-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
	.long	.LCFI453-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI453-.Ltext0
	.long	.LCFI454-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI454-.Ltext0
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI457-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI457-.Ltext0
	.long	.LCFI458-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI458-.Ltext0
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
	.long	.LCFI460-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI460-.Ltext0
	.long	.LCFI461-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI461-.Ltext0
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
	.long	.LCFI464-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI464-.Ltext0
	.long	.LCFI465-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI465-.Ltext0
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI468-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI468-.Ltext0
	.long	.LCFI469-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI469-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
	.long	.LCFI472-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI472-.Ltext0
	.long	.LCFI473-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI473-.Ltext0
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI476-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI476-.Ltext0
	.long	.LCFI477-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI477-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
	.long	.LCFI479-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI479-.Ltext0
	.long	.LCFI480-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI480-.Ltext0
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI483-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI483-.Ltext0
	.long	.LCFI484-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI484-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI487-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI487-.Ltext0
	.long	.LCFI488-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI488-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI491-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI491-.Ltext0
	.long	.LCFI492-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI492-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI495-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI495-.Ltext0
	.long	.LCFI496-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI496-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI499-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI499-.Ltext0
	.long	.LCFI500-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI500-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI503-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI503-.Ltext0
	.long	.LCFI504-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI504-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI507-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI507-.Ltext0
	.long	.LCFI508-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI508-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI511-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI511-.Ltext0
	.long	.LCFI512-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI512-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI515-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI515-.Ltext0
	.long	.LCFI516-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI516-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI519-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI519-.Ltext0
	.long	.LCFI520-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI520-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
	.long	.LCFI523-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI523-.Ltext0
	.long	.LCFI524-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI524-.Ltext0
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
	.long	.LCFI527-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI527-.Ltext0
	.long	.LCFI528-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI528-.Ltext0
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
	.long	.LCFI531-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI531-.Ltext0
	.long	.LCFI532-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI532-.Ltext0
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x9ef3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/loop.c"
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
	.long	0x198
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xa1f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x3
	.byte	0x8d
	.long	0x727
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x1675
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a5
	.uleb128 0x3
	.byte	0x4
	.long	0x1ab
	.uleb128 0x4
	.long	0x1e0
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1685
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ec
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x204
	.uleb128 0x9
	.long	0x209
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2ea
	.string	"mips_args"
	.byte	0x40
	.byte	0x10
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0x10
	.value	0xaad
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0x10
	.value	0xab0
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0x10
	.value	0xab5
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0x10
	.value	0xab8
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0x10
	.value	0xabb
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0x10
	.value	0xac8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0x10
	.value	0xacb
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0x10
	.value	0xad3
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0x10
	.value	0xad4
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x301
	.long	0x99
	.uleb128 0xf
	.long	0x301
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0x10
	.value	0xad5
	.long	0x218
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x2ea
	.uleb128 0xa
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xa
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xa
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xa
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xa
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xc
	.byte	0x3b
	.long	0x386
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xc
	.byte	0x90
	.long	0x3d0
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xc
	.byte	0x91
	.long	0x3b1
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x401
	.uleb128 0x12
	.long	0x67c
	.long	.LASF3
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0xc
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x6df
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32e
	.uleb128 0x13
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0x4
	.long	0x6d3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x690
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0xe
	.long	0x6ef
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x682
	.uleb128 0xe
	.long	0x705
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.long	0x715
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x211
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0x3
	.byte	0x4
	.long	0x726
	.uleb128 0x14
	.uleb128 0x15
	.long	0x970
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x16
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x16
	.string	"BImode"
	.sleb128 1
	.uleb128 0x16
	.string	"QImode"
	.sleb128 2
	.uleb128 0x16
	.string	"HImode"
	.sleb128 3
	.uleb128 0x16
	.string	"SImode"
	.sleb128 4
	.uleb128 0x16
	.string	"DImode"
	.sleb128 5
	.uleb128 0x16
	.string	"TImode"
	.sleb128 6
	.uleb128 0x16
	.string	"OImode"
	.sleb128 7
	.uleb128 0x16
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x16
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x16
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x16
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x16
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x16
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x16
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x16
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x16
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x16
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x16
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x16
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x16
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x16
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x16
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x16
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x16
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x16
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x16
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x16
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x16
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x16
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x16
	.string	"COImode"
	.sleb128 30
	.uleb128 0x16
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x16
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x16
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x16
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x16
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x16
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x16
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x16
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x16
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x16
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x16
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x16
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x16
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x16
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x16
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x16
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x16
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x16
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x16
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x16
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x16
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x16
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x16
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x16
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x17
	.long	0xa1f
	.long	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x16
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x16
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x16
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x16
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x16
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x16
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x16
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x16
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x16
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x16
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x15
	.long	0x11ee
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x16
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x16
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x16
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x16
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x16
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x16
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x16
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x16
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x16
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x16
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x16
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x16
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x16
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x16
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x16
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x16
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x16
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x16
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x16
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x16
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x16
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x16
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x16
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x16
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x16
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x16
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x16
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x16
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x16
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x16
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x16
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x16
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x16
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x16
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x16
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x16
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x16
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x16
	.string	"INSN"
	.sleb128 42
	.uleb128 0x16
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x16
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x16
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x16
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x16
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x16
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x16
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x16
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x16
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x16
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x16
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x16
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x16
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x16
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x16
	.string	"SET"
	.sleb128 57
	.uleb128 0x16
	.string	"USE"
	.sleb128 58
	.uleb128 0x16
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x16
	.string	"CALL"
	.sleb128 60
	.uleb128 0x16
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x16
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x16
	.string	"RESX"
	.sleb128 63
	.uleb128 0x16
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x16
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x16
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x16
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x16
	.string	"CONST"
	.sleb128 68
	.uleb128 0x16
	.string	"PC"
	.sleb128 69
	.uleb128 0x16
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x16
	.string	"REG"
	.sleb128 71
	.uleb128 0x16
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x16
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x16
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x16
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x16
	.string	"MEM"
	.sleb128 76
	.uleb128 0x16
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x16
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x16
	.string	"CC0"
	.sleb128 79
	.uleb128 0x16
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x16
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x16
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x16
	.string	"COND"
	.sleb128 83
	.uleb128 0x16
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x16
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x16
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x16
	.string	"NEG"
	.sleb128 87
	.uleb128 0x16
	.string	"MULT"
	.sleb128 88
	.uleb128 0x16
	.string	"DIV"
	.sleb128 89
	.uleb128 0x16
	.string	"MOD"
	.sleb128 90
	.uleb128 0x16
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x16
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x16
	.string	"AND"
	.sleb128 93
	.uleb128 0x16
	.string	"IOR"
	.sleb128 94
	.uleb128 0x16
	.string	"XOR"
	.sleb128 95
	.uleb128 0x16
	.string	"NOT"
	.sleb128 96
	.uleb128 0x16
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x16
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x16
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x16
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x16
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x16
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x16
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x16
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x16
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x16
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x16
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x16
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x16
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x16
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x16
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x16
	.string	"NE"
	.sleb128 112
	.uleb128 0x16
	.string	"EQ"
	.sleb128 113
	.uleb128 0x16
	.string	"GE"
	.sleb128 114
	.uleb128 0x16
	.string	"GT"
	.sleb128 115
	.uleb128 0x16
	.string	"LE"
	.sleb128 116
	.uleb128 0x16
	.string	"LT"
	.sleb128 117
	.uleb128 0x16
	.string	"GEU"
	.sleb128 118
	.uleb128 0x16
	.string	"GTU"
	.sleb128 119
	.uleb128 0x16
	.string	"LEU"
	.sleb128 120
	.uleb128 0x16
	.string	"LTU"
	.sleb128 121
	.uleb128 0x16
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x16
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x16
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x16
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x16
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x16
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x16
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x16
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x16
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x16
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x16
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x16
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x16
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x16
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x16
	.string	"FIX"
	.sleb128 136
	.uleb128 0x16
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x16
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x16
	.string	"ABS"
	.sleb128 139
	.uleb128 0x16
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x16
	.string	"FFS"
	.sleb128 141
	.uleb128 0x16
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x16
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x16
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x16
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x16
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x16
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x16
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x16
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x16
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x16
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x16
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x16
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x16
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x16
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x16
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x16
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x16
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x16
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x16
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x16
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x16
	.string	"PHI"
	.sleb128 162
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x18
	.long	0x12c8
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x11ee
	.uleb128 0x12
	.long	0x133f
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e0
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
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF5
	.byte	0x3
	.byte	0x6e
	.long	0x12e3
	.uleb128 0x1a
	.long	0x141c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x386
	.uleb128 0x1b
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x211
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2ea
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x1fe
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x99
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x198
	.uleb128 0x1b
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x727
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x12c8
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1474
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x14da
	.uleb128 0x1b
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e0
	.uleb128 0x1b
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x165a
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1660
	.byte	0x0
	.uleb128 0x4
	.long	0x1474
	.string	"cselib_val_struct"
	.byte	0x10
	.byte	0x3
	.byte	0x7c
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x5
	.byte	0x1a
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"u"
	.byte	0x5
	.byte	0x21
	.long	0x3cdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"locs"
	.byte	0x5
	.byte	0x25
	.long	0x3d68
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"addr_list"
	.byte	0x5
	.byte	0x28
	.long	0x2ad7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x141c
	.uleb128 0x4
	.long	0x14da
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x7
	.byte	0x3d
	.long	0x2532
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x2532
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x147a
	.uleb128 0x4
	.long	0x165a
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x2c5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x2c5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x2b90
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x2b90
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x2b90
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x2b90
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x8
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x165a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x165a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x8
	.byte	0xd9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x8
	.byte	0xdf
	.long	0x2b9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x8
	.byte	0xe5
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14e0
	.uleb128 0x3
	.byte	0x4
	.long	0x133f
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x134a
	.uleb128 0xe
	.long	0x1685
	.long	0x1666
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1695
	.long	0x99
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x99
	.uleb128 0x4
	.long	0x1700
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x11
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x11
	.byte	0x18
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x11
	.byte	0x19
	.long	0x727
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x11
	.byte	0x1a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x11
	.byte	0x1b
	.long	0x1700
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x169b
	.uleb128 0x12
	.long	0x174b
	.long	.LASF12
	.byte	0x10
	.byte	0x11
	.byte	0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x11
	.byte	0x26
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x11
	.byte	0x27
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x11
	.byte	0x28
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x11
	.byte	0x29
	.long	0x174b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1706
	.uleb128 0x4
	.long	0x18a0
	.string	"emit_status"
	.byte	0x34
	.byte	0x11
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x11
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x11
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x11
	.byte	0x44
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x11
	.byte	0x45
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x11
	.byte	0x4a
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x11
	.byte	0x50
	.long	0x174b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x11
	.byte	0x54
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x11
	.byte	0x58
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x11
	.byte	0x59
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x11
	.byte	0x5f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x11
	.byte	0x65
	.long	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x11
	.byte	0x69
	.long	0x18a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x11
	.byte	0x70
	.long	0x1695
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e0
	.uleb128 0x4
	.long	0x1986
	.string	"expr_status"
	.byte	0x1c
	.byte	0x11
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x11
	.byte	0x80
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x11
	.byte	0x91
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x11
	.byte	0x97
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x11
	.byte	0x9c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x11
	.byte	0x9f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x11
	.byte	0xa2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x11
	.byte	0xa5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x19f0
	.long	.LASF15
	.byte	0x4
	.byte	0x11
	.value	0x1f1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x16
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	0x23af
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x11
	.byte	0xb5
	.long	0x23bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x11
	.byte	0xb6
	.long	0x23cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x11
	.byte	0xb7
	.long	0x23d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x11
	.byte	0xb8
	.long	0x23db
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x11
	.byte	0xb9
	.long	0x23f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x11
	.byte	0xbe
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x11
	.byte	0xc1
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x11
	.byte	0xc4
	.long	0x23f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x11
	.byte	0xc9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x11
	.byte	0xce
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x11
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x11
	.byte	0xd7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x11
	.byte	0xdb
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x11
	.byte	0xdf
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x11
	.byte	0xe5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x11
	.byte	0xe8
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x11
	.byte	0xec
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x11
	.byte	0xf0
	.long	0x2414
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x11
	.byte	0xf3
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x11
	.byte	0xf8
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x11
	.byte	0xfe
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x11
	.value	0x102
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x11
	.value	0x107
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0x11
	.value	0x10d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0x11
	.value	0x112
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0x11
	.value	0x115
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0x11
	.value	0x116
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0x11
	.value	0x11a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0x11
	.value	0x11e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0x11
	.value	0x121
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0x11
	.value	0x125
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0x11
	.value	0x128
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0x11
	.value	0x12e
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0x11
	.value	0x133
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0x11
	.value	0x138
	.long	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0x11
	.value	0x13d
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0x11
	.value	0x146
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0x11
	.value	0x149
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0x11
	.value	0x14d
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0x11
	.value	0x151
	.long	0x2ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0x11
	.value	0x157
	.long	0x1695
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0x11
	.value	0x15a
	.long	0x2426
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0x11
	.value	0x15d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0x11
	.value	0x160
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0x11
	.value	0x166
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0x11
	.value	0x16a
	.long	0x1700
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0x11
	.value	0x16d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0x11
	.value	0x16e
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0x11
	.value	0x16f
	.long	0x198
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0x11
	.value	0x170
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0x11
	.value	0x173
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0x11
	.value	0x175
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0x11
	.value	0x178
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0x11
	.value	0x17d
	.long	0x243f
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0x11
	.value	0x17f
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0x11
	.value	0x181
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0x11
	.value	0x184
	.long	0x2459
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0x11
	.value	0x18a
	.long	0x99
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x11
	.value	0x190
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0x11
	.value	0x194
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0x11
	.value	0x197
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0x11
	.value	0x19a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0x11
	.value	0x19d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0x11
	.value	0x1a0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0x11
	.value	0x1a4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0x11
	.value	0x1a7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0x11
	.value	0x1ab
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0x11
	.value	0x1af
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0x11
	.value	0x1b2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0x11
	.value	0x1b5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0x11
	.value	0x1ba
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0x11
	.value	0x1c1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0x11
	.value	0x1c5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0x11
	.value	0x1c8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0x11
	.value	0x1cb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0x11
	.value	0x1cf
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0x11
	.value	0x1d2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0x11
	.value	0x1d8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x11
	.value	0x1e1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0x11
	.value	0x1e4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0x11
	.value	0x1e7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0x11
	.value	0x1ea
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0x11
	.value	0x1ed
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF15
	.byte	0x11
	.value	0x1fa
	.long	0x1986
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0x11
	.value	0x1fe
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x21
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23af
	.uleb128 0x21
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23c1
	.uleb128 0x3
	.byte	0x4
	.long	0x18a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1751
	.uleb128 0x21
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23e1
	.uleb128 0x3
	.byte	0x4
	.long	0x19f0
	.uleb128 0x21
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23fd
	.uleb128 0x21
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x241a
	.uleb128 0x21
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x242c
	.uleb128 0x21
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2445
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xf
	.byte	0x29
	.long	0x397
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xf
	.byte	0x34
	.long	0x248c
	.uleb128 0xe
	.long	0x249c
	.long	0x245f
	.uleb128 0xf
	.long	0x301
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x355
	.uleb128 0x4
	.long	0x2506
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x7
	.byte	0x35
	.long	0x2506
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x2506
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x250c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24af
	.uleb128 0xe
	.long	0x251c
	.long	0x249c
	.uleb128 0xf
	.long	0x301
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x24af
	.uleb128 0x3
	.byte	0x4
	.long	0x251c
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x7
	.byte	0x42
	.long	0x147a
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x14da
	.uleb128 0x4
	.long	0x25b3
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x9
	.byte	0x22
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x25b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x25c3
	.long	0x397
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x25d2
	.uleb128 0x3
	.byte	0x4
	.long	0x2559
	.uleb128 0x4
	.long	0x260e
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x6
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x6
	.byte	0x32
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x6
	.byte	0x36
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x27a9
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x6
	.byte	0x3c
	.uleb128 0x16
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x16
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x16
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x16
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x16
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x16
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x16
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x16
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x16
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x16
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x16
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x16
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x16
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x16
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x16
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x16
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x16
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x16
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x16
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x16
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x16
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1a
	.long	0x289d
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x6
	.byte	0x55
	.uleb128 0x1b
	.string	"c"
	.byte	0x6
	.byte	0x56
	.long	0x6df
	.uleb128 0x1b
	.string	"uc"
	.byte	0x6
	.byte	0x58
	.long	0x289d
	.uleb128 0x1b
	.string	"s"
	.byte	0x6
	.byte	0x5a
	.long	0x28ad
	.uleb128 0x1b
	.string	"us"
	.byte	0x6
	.byte	0x5c
	.long	0x28bd
	.uleb128 0x1b
	.string	"i"
	.byte	0x6
	.byte	0x5e
	.long	0x28cd
	.uleb128 0x1b
	.string	"u"
	.byte	0x6
	.byte	0x60
	.long	0x28dd
	.uleb128 0x1b
	.string	"l"
	.byte	0x6
	.byte	0x62
	.long	0x28ed
	.uleb128 0x1b
	.string	"ul"
	.byte	0x6
	.byte	0x64
	.long	0x28fd
	.uleb128 0x1b
	.string	"hint"
	.byte	0x6
	.byte	0x66
	.long	0x290d
	.uleb128 0x1b
	.string	"uhint"
	.byte	0x6
	.byte	0x68
	.long	0x25b3
	.uleb128 0x1b
	.string	"generic"
	.byte	0x6
	.byte	0x6a
	.long	0x291d
	.uleb128 0x1b
	.string	"cptr"
	.byte	0x6
	.byte	0x6c
	.long	0x292d
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x6
	.byte	0x6e
	.long	0x293d
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x6
	.byte	0x70
	.long	0x294d
	.uleb128 0x1b
	.string	"tree"
	.byte	0x6
	.byte	0x72
	.long	0x295d
	.uleb128 0x1b
	.string	"bitmap"
	.byte	0x6
	.byte	0x74
	.long	0x296d
	.uleb128 0x1b
	.string	"reg"
	.byte	0x6
	.byte	0x76
	.long	0x297d
	.uleb128 0x22
	.long	.LASF16
	.byte	0x6
	.byte	0x78
	.long	0x2a79
	.uleb128 0x1b
	.string	"bb"
	.byte	0x6
	.byte	0x7a
	.long	0x2a89
	.uleb128 0x1b
	.string	"te"
	.byte	0x6
	.byte	0x7c
	.long	0x2a99
	.byte	0x0
	.uleb128 0xe
	.long	0x28ad
	.long	0x32e
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x28bd
	.long	0x379
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x28cd
	.long	0x33f
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x28dd
	.long	0x211
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x28ed
	.long	0x2ea
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x28fd
	.long	0x3d0
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x290d
	.long	0x355
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x291d
	.long	0x386
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x292d
	.long	0x3ed
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x293d
	.long	0x3ef
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x294d
	.long	0xa4
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x295d
	.long	0x1a5
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x296d
	.long	0x1ec
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x297d
	.long	0x14da
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x298d
	.long	0x2a73
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x2a73
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x6
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x12
	.byte	0x31
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x12
	.byte	0x32
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x12
	.byte	0x33
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x12
	.byte	0x36
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x12
	.byte	0x39
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x12
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x12
	.byte	0x3b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x12
	.byte	0x3c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x12
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x12
	.byte	0x3e
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x12
	.byte	0x3f
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x298d
	.uleb128 0xe
	.long	0x2a89
	.long	0x25d8
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x2a99
	.long	0x165a
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x2aa9
	.long	0x2ad7
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x2ad7
	.string	"elt_list"
	.byte	0x8
	.byte	0x6
	.byte	0x7c
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x5
	.byte	0x3b
	.long	0x2ad7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elt"
	.byte	0x5
	.byte	0x3c
	.long	0x3d80
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2aa9
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x6
	.byte	0x7e
	.long	0x27a9
	.uleb128 0x4
	.long	0x2b64
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x6
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x6
	.byte	0x82
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x6
	.byte	0x83
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x6
	.byte	0x85
	.long	0x260e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x6
	.byte	0x86
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x6
	.byte	0x87
	.long	0x2add
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x6
	.byte	0x8a
	.long	0x2b77
	.uleb128 0x3
	.byte	0x4
	.long	0x2af0
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x8
	.byte	0x20
	.long	0x2538
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x254b
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x386
	.uleb128 0x4
	.long	0x2c56
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x2c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x2c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x165a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x8
	.byte	0x7d
	.long	0x165a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x8
	.byte	0x80
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x8
	.byte	0x85
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x8
	.byte	0x87
	.long	0x2b9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2baf
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x2c56
	.uleb128 0x12
	.long	0x2ed1
	.long	.LASF19
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x2ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x2ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x2ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x2efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF7
	.byte	0x8
	.value	0x18b
	.long	0x2ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF13
	.byte	0x8
	.value	0x18f
	.long	0x2ed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x25c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x2efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x2efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x25c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x2f00
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x20
	.long	.LASF11
	.byte	0x8
	.value	0x1b7
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x20
	.long	.LASF20
	.byte	0x8
	.value	0x1ca
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c68
	.uleb128 0x19
	.long	.LASF17
	.byte	0x8
	.byte	0xe6
	.long	0x165a
	.uleb128 0x23
	.long	.LASF21
	.byte	0x8
	.value	0x170
	.long	0x2eee
	.uleb128 0x3
	.byte	0x4
	.long	0x2ef4
	.uleb128 0x24
	.long	.LASF21
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c5c
	.uleb128 0x3
	.byte	0x4
	.long	0x2ed1
	.uleb128 0xb
	.long	0x2f4c
	.string	"cfg"
	.byte	0xc
	.byte	0x8
	.value	0x201
	.uleb128 0xc
	.string	"dom"
	.byte	0x8
	.value	0x203
	.long	0x2ee2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"dfs_order"
	.byte	0x8
	.value	0x206
	.long	0x71a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"rc_order"
	.byte	0x8
	.value	0x20a
	.long	0x71a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x25
	.long	0x2fdc
	.long	.LASF22
	.byte	0x24
	.byte	0x8
	.value	0x1ec
	.uleb128 0xc
	.string	"num"
	.byte	0x8
	.value	0x1ee
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"levels"
	.byte	0x8
	.value	0x1f1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"array"
	.byte	0x8
	.value	0x1f5
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"parray"
	.byte	0x8
	.value	0x1fa
	.long	0x2f00
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"tree_root"
	.byte	0x8
	.value	0x1fd
	.long	0x2ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"cfg"
	.byte	0x8
	.value	0x20b
	.long	0x2f06
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"shared_headers"
	.byte	0x8
	.value	0x20e
	.long	0x25c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x13
	.byte	0xd9
	.long	0x2ffd
	.uleb128 0x3
	.byte	0x4
	.long	0x3003
	.uleb128 0x26
	.long	0x3018
	.byte	0x1
	.long	0x211
	.uleb128 0x27
	.long	0x99
	.uleb128 0x27
	.long	0x727
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x13
	.byte	0xdb
	.long	0x302b
	.uleb128 0x3
	.byte	0x4
	.long	0x3031
	.uleb128 0x26
	.long	0x3042
	.byte	0x1
	.long	0x99
	.uleb128 0x27
	.long	0x99
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x4
	.long	0x30ba
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x13
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x13
	.byte	0xdf
	.long	0x30ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x13
	.byte	0xe1
	.long	0x30bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF1
	.byte	0x13
	.byte	0xe3
	.long	0x30c4
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x13
	.byte	0xe5
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x13
	.byte	0xe7
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x2fdc
	.uleb128 0x9
	.long	0x1fe
	.uleb128 0x9
	.long	0x727
	.uleb128 0x12
	.long	0x316d
	.long	.LASF24
	.byte	0x14
	.byte	0x13
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x13
	.byte	0xf3
	.long	0x30bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x13
	.byte	0xf4
	.long	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x13
	.byte	0xf5
	.long	0x316d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x13
	.byte	0xf6
	.long	0x3172
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_operands"
	.byte	0x13
	.byte	0xf8
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x13
	.byte	0xf9
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0x13
	.byte	0xfa
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x13
	.byte	0xfb
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x3018
	.uleb128 0x9
	.long	0x3177
	.uleb128 0x3
	.byte	0x4
	.long	0x317d
	.uleb128 0x9
	.long	0x3042
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	0x31b3
	.string	"g_types"
	.byte	0x4
	.byte	0xe
	.byte	0x43
	.uleb128 0x16
	.string	"DEST_ADDR"
	.sleb128 0
	.uleb128 0x16
	.string	"DEST_REG"
	.sleb128 1
	.byte	0x0
	.uleb128 0x12
	.long	0x344a
	.long	.LASF26
	.byte	0x5c
	.byte	0xe
	.byte	0x4d
	.uleb128 0x1c
	.long	.LASF27
	.byte	0xe
	.byte	0x4e
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"new_reg"
	.byte	0xe
	.byte	0x4f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF28
	.byte	0xe
	.byte	0x51
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"giv_type"
	.byte	0xe
	.byte	0x53
	.long	0x318b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF29
	.byte	0xe
	.byte	0x54
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF30
	.byte	0xe
	.byte	0x58
	.long	0x1695
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF1
	.byte	0xe
	.byte	0x5c
	.long	0x727
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"mem"
	.byte	0xe
	.byte	0x5d
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF31
	.byte	0xe
	.byte	0x5e
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF32
	.byte	0xe
	.byte	0x5f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF33
	.byte	0xe
	.byte	0x60
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF34
	.byte	0xe
	.byte	0x61
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"combined_with"
	.byte	0xe
	.byte	0x65
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"replaceable"
	.byte	0xe
	.byte	0x68
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"not_replaceable"
	.byte	0xe
	.byte	0x6d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"ignore"
	.byte	0xe
	.byte	0x73
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"always_computable"
	.byte	0xe
	.byte	0x74
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"always_executed"
	.byte	0xe
	.byte	0x76
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.long	.LASF35
	.byte	0xe
	.byte	0x77
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"cant_derive"
	.byte	0xe
	.byte	0x7a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"maybe_dead"
	.byte	0xe
	.byte	0x7e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.long	.LASF36
	.byte	0xe
	.byte	0x81
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"unrolled"
	.byte	0xe
	.byte	0x83
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"shared"
	.byte	0xe
	.byte	0x85
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"no_const_addval"
	.byte	0xe
	.byte	0x86
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF37
	.byte	0xe
	.byte	0x87
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"derive_adjustment"
	.byte	0xe
	.byte	0x88
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"ext_dependent"
	.byte	0xe
	.byte	0x8c
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"next_iv"
	.byte	0xe
	.byte	0x8e
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"same"
	.byte	0xe
	.byte	0x92
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"const_adjust"
	.byte	0xe
	.byte	0x95
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"same_insn"
	.byte	0xe
	.byte	0x99
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"last_use"
	.byte	0xe
	.byte	0x9d
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x31b3
	.uleb128 0x4
	.long	0x358b
	.string	"iv_class"
	.byte	0x34
	.byte	0xe
	.byte	0xa5
	.uleb128 0x1c
	.long	.LASF38
	.byte	0xe
	.byte	0xa6
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"biv_count"
	.byte	0xe
	.byte	0xa7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"biv"
	.byte	0xe
	.byte	0xa8
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF39
	.byte	0xe
	.byte	0xa9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"giv"
	.byte	0xe
	.byte	0xac
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF40
	.byte	0xe
	.byte	0xae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF41
	.byte	0xe
	.byte	0xaf
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"initial_test"
	.byte	0xe
	.byte	0xb0
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF34
	.byte	0xe
	.byte	0xb1
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF11
	.byte	0xe
	.byte	0xb2
	.long	0x358b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF42
	.byte	0xe
	.byte	0xb3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_set"
	.byte	0xe
	.byte	0xb4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"incremented"
	.byte	0xe
	.byte	0xb5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.long	.LASF23
	.byte	0xe
	.byte	0xb6
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"nonneg"
	.byte	0xe
	.byte	0xb8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"reversed"
	.byte	0xe
	.byte	0xba
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"all_reduced"
	.byte	0xe
	.byte	0xbc
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3450
	.uleb128 0x15
	.long	0x35e6
	.string	"iv_mode"
	.byte	0x4
	.byte	0xe
	.byte	0xc3
	.uleb128 0x16
	.string	"UNKNOWN_INDUCT"
	.sleb128 0
	.uleb128 0x16
	.string	"BASIC_INDUCT"
	.sleb128 1
	.uleb128 0x16
	.string	"NOT_BASIC_INDUCT"
	.sleb128 2
	.uleb128 0x16
	.string	"GENERAL_INDUCT"
	.sleb128 3
	.byte	0x0
	.uleb128 0x29
	.long	0x3608
	.byte	0x4
	.byte	0xe
	.byte	0xd1
	.uleb128 0x1b
	.string	"class"
	.byte	0xe
	.byte	0xd2
	.long	0x358b
	.uleb128 0x1b
	.string	"info"
	.byte	0xe
	.byte	0xd3
	.long	0x344a
	.byte	0x0
	.uleb128 0x4
	.long	0x3630
	.string	"iv"
	.byte	0x8
	.byte	0xe
	.byte	0xce
	.uleb128 0x7
	.string	"type"
	.byte	0xe
	.byte	0xcf
	.long	0x3591
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"iv"
	.byte	0xe
	.byte	0xd4
	.long	0x35e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x3670
	.string	"loop_ivs"
	.byte	0xc
	.byte	0xe
	.byte	0xde
	.uleb128 0x1c
	.long	.LASF43
	.byte	0xe
	.byte	0xe1
	.long	0x3670
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"n_regs"
	.byte	0xe
	.byte	0xe4
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"list"
	.byte	0xe
	.byte	0xe8
	.long	0x358b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3608
	.uleb128 0x12
	.long	0x36b2
	.long	.LASF44
	.byte	0xc
	.byte	0xe
	.byte	0xed
	.uleb128 0x7
	.string	"mem"
	.byte	0xe
	.byte	0xee
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"reg"
	.byte	0xe
	.byte	0xef
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"optimize"
	.byte	0xe
	.byte	0xf0
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.long	.LASF44
	.byte	0xe
	.byte	0xf1
	.long	0x3676
	.uleb128 0x4
	.long	0x3747
	.string	"loop_reg"
	.byte	0x10
	.byte	0xe
	.byte	0xf6
	.uleb128 0xc
	.string	"set_in_loop"
	.byte	0xe
	.value	0x101
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"n_times_set"
	.byte	0xe
	.value	0x106
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"single_usage"
	.byte	0xe
	.value	0x10a
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"may_not_optimize"
	.byte	0xe
	.value	0x10e
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"moved_once"
	.byte	0xe
	.value	0x112
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x37a4
	.string	"loop_regs"
	.byte	0x10
	.byte	0xe
	.value	0x117
	.uleb128 0xc
	.string	"num"
	.byte	0xe
	.value	0x118
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"size"
	.byte	0xe
	.value	0x119
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"array"
	.byte	0xe
	.value	0x11a
	.long	0x37a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"multiple_uses"
	.byte	0xe
	.value	0x11b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x36bd
	.uleb128 0xb
	.long	0x37e1
	.string	"loop_movables"
	.byte	0x8
	.byte	0xe
	.value	0x121
	.uleb128 0xc
	.string	"head"
	.byte	0xe
	.value	0x123
	.long	0x3959
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF13
	.byte	0xe
	.value	0x125
	.long	0x3959
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xb
	.long	0x3959
	.string	"movable"
	.byte	0x30
	.byte	0xe
	.value	0x123
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.byte	0xc2
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"set_src"
	.byte	0x1
	.byte	0xc3
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"set_dest"
	.byte	0x1
	.byte	0xc4
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.byte	0xc5
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"consec"
	.byte	0x1
	.byte	0xc7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.byte	0xc9
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x1
	.byte	0xca
	.long	0x379
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"savings"
	.byte	0x1
	.byte	0xcd
	.long	0x379
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x6
	.string	"cond"
	.byte	0x1
	.byte	0xd0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"force"
	.byte	0x1
	.byte	0xd1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global"
	.byte	0x1
	.byte	0xd2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"done"
	.byte	0x1
	.byte	0xd6
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"partial"
	.byte	0x1
	.byte	0xd8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.long	.LASF46
	.byte	0x1
	.byte	0xdb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"move_insn_first"
	.byte	0x1
	.byte	0xdd
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"is_equiv"
	.byte	0x1
	.byte	0xdf
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"savemode"
	.byte	0x1
	.byte	0xe0
	.long	0x727
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"match"
	.byte	0x1
	.byte	0xe3
	.long	0x3959
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"forces"
	.byte	0x1
	.byte	0xe4
	.long	0x3959
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x1
	.byte	0xe5
	.long	0x3959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37e1
	.uleb128 0x25
	.long	0x3c95
	.long	.LASF47
	.byte	0xa0
	.byte	0xe
	.value	0x12c
	.uleb128 0xc
	.string	"has_call"
	.byte	0xe
	.value	0x12e
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"has_libcall"
	.byte	0xe
	.value	0x130
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"has_nonconst_call"
	.byte	0xe
	.value	0x132
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"has_prefetch"
	.byte	0xe
	.value	0x134
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"has_volatile"
	.byte	0xe
	.value	0x137
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"has_tablejump"
	.byte	0xe
	.value	0x139
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"has_multiple_exit_targets"
	.byte	0xe
	.value	0x13c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"has_indirect_jump"
	.byte	0xe
	.value	0x13e
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"preconditioned"
	.byte	0xe
	.value	0x141
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF41
	.byte	0xe
	.value	0x143
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF48
	.byte	0xe
	.value	0x145
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x20
	.long	.LASF34
	.byte	0xe
	.value	0x147
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"initial_equiv_value"
	.byte	0xe
	.value	0x14a
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"final_equiv_value"
	.byte	0xe
	.value	0x14d
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"iteration_var"
	.byte	0xe
	.value	0x14f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"increment"
	.byte	0xe
	.value	0x151
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"comparison_code"
	.byte	0xe
	.value	0x152
	.long	0xa1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"n_iterations"
	.byte	0xe
	.value	0x158
	.long	0x397
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"unroll_number"
	.byte	0xe
	.value	0x15a
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"used_count_register"
	.byte	0xe
	.value	0x15b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"iv"
	.byte	0xe
	.value	0x15d
	.long	0x358b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"store_mems"
	.byte	0xe
	.value	0x15f
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"mems"
	.byte	0xe
	.value	0x165
	.long	0x3c95
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"mems_idx"
	.byte	0xe
	.value	0x167
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"mems_allocated"
	.byte	0xe
	.value	0x169
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"unknown_address_altered"
	.byte	0xe
	.value	0x16e
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"unknown_constant_address_altered"
	.byte	0xe
	.value	0x171
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"num_mem_sets"
	.byte	0xe
	.value	0x173
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"first_loop_store_insn"
	.byte	0xe
	.value	0x175
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x20
	.long	.LASF49
	.byte	0xe
	.value	0x177
	.long	0x37aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x20
	.long	.LASF43
	.byte	0xe
	.value	0x179
	.long	0x3747
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.string	"ivs"
	.byte	0xe
	.value	0x17b
	.long	0x3630
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"pre_header_has_call"
	.byte	0xe
	.value	0x17d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x36b2
	.uleb128 0x10
	.string	"loop_insn_callback"
	.byte	0xe
	.value	0x1a2
	.long	0x3cb6
	.uleb128 0x3
	.byte	0x4
	.long	0x3cbc
	.uleb128 0x26
	.long	0x3cdb
	.byte	0x1
	.long	0x99
	.uleb128 0x27
	.long	0x2ed1
	.uleb128 0x27
	.long	0x99
	.uleb128 0x27
	.long	0x211
	.uleb128 0x27
	.long	0x211
	.byte	0x0
	.uleb128 0x1a
	.long	0x3d11
	.string	"cselib_val_u"
	.byte	0x4
	.byte	0x5
	.byte	0x1c
	.uleb128 0x1b
	.string	"val_rtx"
	.byte	0x5
	.byte	0x1e
	.long	0x99
	.uleb128 0x1b
	.string	"next_free"
	.byte	0x5
	.byte	0x20
	.long	0x1474
	.byte	0x0
	.uleb128 0x4
	.long	0x3d68
	.string	"elt_loc_list"
	.byte	0x10
	.byte	0x5
	.byte	0x25
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x5
	.byte	0x2f
	.long	0x3d68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"loc"
	.byte	0x5
	.byte	0x31
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"setting_insn"
	.byte	0x5
	.byte	0x33
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF50
	.byte	0x5
	.byte	0x35
	.long	0x3182
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d11
	.uleb128 0x2
	.string	"cselib_val"
	.byte	0x5
	.byte	0x29
	.long	0x141c
	.uleb128 0x3
	.byte	0x4
	.long	0x3d6e
	.uleb128 0x25
	.long	0x3db0
	.long	.LASF51
	.byte	0x8
	.byte	0x1
	.value	0x16f
	.uleb128 0xc
	.string	"r1"
	.byte	0x1
	.value	0x170
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"r2"
	.byte	0x1
	.value	0x171
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x23
	.long	.LASF51
	.byte	0x1
	.value	0x172
	.long	0x3d86
	.uleb128 0x25
	.long	0x3df9
	.long	.LASF52
	.byte	0xc
	.byte	0x1
	.value	0x175
	.uleb128 0xc
	.string	"match"
	.byte	0x1
	.value	0x176
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF53
	.byte	0x1
	.value	0x177
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF27
	.byte	0x1
	.value	0x178
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x23
	.long	.LASF52
	.byte	0x1
	.value	0x179
	.long	0x3dbc
	.uleb128 0x2a
	.long	0x3e35
	.byte	0x1
	.string	"init_loop"
	.byte	0x1
	.value	0x194
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x195
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3eac
	.string	"compute_luids"
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	0x211
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2d
	.long	.LASF20
	.byte	0x1
	.value	0x1a3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0x1a3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"prev_luid"
	.byte	0x1
	.value	0x1a4
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1a6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x1a7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2a
	.long	0x3f86
	.byte	0x1
	.string	"loop_optimize"
	.byte	0x1
	.value	0x1c4
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x1c1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dumpfile"
	.byte	0x1
	.value	0x1c2
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x1c3
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x1c5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"loops_data"
	.byte	0x1
	.value	0x1c7
	.long	0x2f4c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x1c8
	.long	0x3f8c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"loops_info"
	.byte	0x1
	.value	0x1c9
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	0x3f75
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x228
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x99a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11912
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f5
	.uleb128 0x3
	.byte	0x4
	.long	0x2f4c
	.uleb128 0x3
	.byte	0x4
	.long	0x395f
	.uleb128 0x2c
	.long	0x3fe2
	.string	"next_insn_in_loop"
	.byte	0x1
	.value	0x241
	.byte	0x1
	.long	0x99
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x23f
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x240
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3fe8
	.uleb128 0x9
	.long	0x2c68
	.uleb128 0x32
	.long	0x426b
	.string	"scan_loop"
	.byte	0x1
	.value	0x261
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x25f
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x260
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x262
	.long	0x3f92
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x263
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.value	0x265
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x266
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x267
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x269
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"call_passed"
	.byte	0x1
	.value	0x26c
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"loop_entry_jump"
	.byte	0x1
	.value	0x26e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF58
	.byte	0x1
	.value	0x270
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x271
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x272
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"update_start"
	.byte	0x1
	.value	0x272
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"update_end"
	.byte	0x1
	.value	0x272
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x274
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"set1"
	.byte	0x1
	.value	0x274
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF49
	.byte	0x1
	.value	0x276
	.long	0x4271
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF60
	.byte	0x1
	.value	0x27b
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x27d
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF50
	.byte	0x1
	.value	0x27e
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	0x425a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"tem1"
	.byte	0x1
	.value	0x306
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"tem2"
	.byte	0x1
	.value	0x307
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x1
	.value	0x308
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x309
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF45
	.byte	0x1
	.value	0x30a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	0x41ff
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x32c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x30
	.long	0x4229
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x369
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x36a
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x3f5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x3f8
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x999b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12066
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3747
	.uleb128 0x3
	.byte	0x4
	.long	0x37aa
	.uleb128 0x2a
	.long	0x431c
	.byte	0x1
	.string	"record_excess_regs"
	.byte	0x1
	.value	0x4b7
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2e
	.string	"in_this"
	.byte	0x1
	.value	0x4b5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"not_in_this"
	.byte	0x1
	.value	0x4b5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF25
	.byte	0x1
	.value	0x4b6
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x4b8
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x4b9
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4ba
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x4d6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x4394
	.byte	0x1
	.string	"libcall_other_reg"
	.byte	0x1
	.value	0x4ee
	.byte	0x1
	.long	0x99
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x4ed
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"equiv"
	.byte	0x1
	.value	0x4ed
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x4ef
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4f0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x4f1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x43fd
	.string	"reg_in_basic_block_p"
	.byte	0x1
	.value	0x507
	.byte	0x1
	.long	0x211
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x506
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x506
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x508
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x509
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x4454
	.string	"libcall_benefit"
	.byte	0x1
	.value	0x53d
	.byte	0x1
	.long	0x211
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2d
	.long	.LASF13
	.byte	0x1
	.value	0x53c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x53e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x53f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x44b7
	.string	"skip_consec_insns"
	.byte	0x1
	.value	0x556
	.byte	0x1
	.long	0x99
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x554
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF9
	.byte	0x1
	.value	0x555
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x559
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x453e
	.string	"ignore_some_movables"
	.byte	0x1
	.value	0x572
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x571
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x573
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"m1"
	.byte	0x1
	.value	0x573
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x578
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x57b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x45a6
	.string	"force_movables"
	.byte	0x1
	.value	0x592
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x591
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x593
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"m1"
	.byte	0x1
	.value	0x593
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x599
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x46a8
	.string	"combine_movables"
	.byte	0x1
	.value	0x5bb
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x5b9
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0x5ba
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x5bc
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"matched_regs"
	.byte	0x1
	.value	0x5bd
	.long	0x3ef
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x5be
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"overlap"
	.byte	0x1
	.value	0x628
	.long	.L421
	.uleb128 0x30
	.long	0x4659
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"m1"
	.byte	0x1
	.value	0x5cb
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x5cc
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"m0"
	.byte	0x1
	.value	0x601
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2b
	.string	"m1"
	.byte	0x1
	.value	0x609
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x60b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x60c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4702
	.string	"num_unmoved_movables"
	.byte	0x1
	.value	0x637
	.byte	0x1
	.long	0x211
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x636
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"num"
	.byte	0x1
	.value	0x638
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x639
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x478a
	.string	"regs_match_p"
	.byte	0x1
	.value	0x649
	.byte	0x1
	.long	0x211
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x647
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x647
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x648
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"xn"
	.byte	0x1
	.value	0x64a
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"yn"
	.byte	0x1
	.value	0x64b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"mx"
	.byte	0x1
	.value	0x64c
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"my"
	.byte	0x1
	.value	0x64c
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x4846
	.string	"rtx_equal_for_loop_p"
	.byte	0x1
	.value	0x667
	.byte	0x1
	.long	0x211
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x664
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x664
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x665
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0x666
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x668
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x669
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x66a
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x66b
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x66c
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF54
	.long	0x9996
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13561
	.byte	0x0
	.uleb128 0x32
	.long	0x48d1
	.string	"add_label_notes"
	.byte	0x1
	.value	0x6dd
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x6db
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"insns"
	.byte	0x1
	.value	0x6dc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x6de
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x6df
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x6df
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x6e0
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x6e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x4c3d
	.string	"move_movables"
	.byte	0x1
	.value	0x709
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x705
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x706
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF60
	.byte	0x1
	.value	0x707
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x708
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x70a
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"nregs"
	.byte	0x1
	.value	0x70b
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.string	"new_start"
	.byte	0x1
	.value	0x70c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x70d
	.long	0x3959
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x70e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.value	0x70f
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x710
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF62
	.byte	0x1
	.value	0x714
	.long	0x1695
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"already_moved"
	.byte	0x1
	.value	0x715
	.long	0x3ef
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	0x4c2c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x741
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x742
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"savings"
	.byte	0x1
	.value	0x743
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.value	0x765
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"m1"
	.byte	0x1
	.value	0x766
	.long	0x3959
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x767
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	0x4a93
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"newpat"
	.byte	0x1
	.value	0x76d
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"i1"
	.byte	0x1
	.value	0x76d
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"r1"
	.byte	0x1
	.value	0x76e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"r2"
	.byte	0x1
	.value	0x76e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x30
	.long	0x4ad0
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.string	"i1"
	.byte	0x1
	.value	0x78e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x78e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x78e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x30
	.long	0x4bdf
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"i1"
	.byte	0x1
	.value	0x7c7
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x7c7
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	0x4b85
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"fn_address"
	.byte	0x1
	.value	0x7d6
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"fn_reg"
	.byte	0x1
	.value	0x7d7
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"fn_address_insn"
	.byte	0x1
	.value	0x7d8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"body"
	.byte	0x1
	.value	0x7de
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x7df
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF11
	.byte	0x1
	.value	0x7e0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4bc5
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x82d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"sequence"
	.byte	0x1
	.value	0x82e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x82f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x84c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4bfa
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x89b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x8b4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x8db
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x9981
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13831
	.byte	0x0
	.uleb128 0x32
	.long	0x4c81
	.string	"loop_movables_add"
	.byte	0x1
	.value	0x905
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x903
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x904
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x4cd8
	.string	"loop_movables_free"
	.byte	0x1
	.value	0x911
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.value	0x910
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x912
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"m_next"
	.byte	0x1
	.value	0x913
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x4d74
	.string	"count_nonfixed_reads"
	.byte	0x1
	.value	0x963
	.byte	0x1
	.long	0x211
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x961
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x962
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x964
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x965
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x966
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0x967
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x989
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x4e9a
	.string	"prescan_loop"
	.byte	0x1
	.value	0x99a
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x999
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"level"
	.byte	0x1
	.value	0x99b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x99c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x99d
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x99e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x99f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"exit_target"
	.byte	0x1
	.value	0x9a4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	0x4e63
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x9e3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x9e7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"label1"
	.byte	0x1
	.value	0x9e8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"label2"
	.byte	0x1
	.value	0x9e8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4e80
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0xa40
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0xa47
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x4ef0
	.string	"invalidate_loops_containing_label"
	.byte	0x1
	.value	0xa54
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2d
	.long	.LASF63
	.byte	0x1
	.value	0xa53
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0xa55
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x5135
	.string	"find_and_verify_loops"
	.byte	0x1
	.value	0xa62
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0xa60
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF22
	.byte	0x1
	.value	0xa61
	.long	0x3f8c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0xa63
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x1
	.value	0xa64
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"num_loops"
	.byte	0x1
	.value	0xa65
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"current_loop"
	.byte	0x1
	.value	0xa66
	.long	0x2ed1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"next_loop"
	.byte	0x1
	.value	0xa67
	.long	0x2ed1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0xa68
	.long	0x2ed1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	0x5124
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2b
	.string	"this_loop"
	.byte	0x1
	.value	0xac7
	.long	0x2ed1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	0x4fed
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0xacb
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x33
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xade
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"our_next"
	.byte	0x1
	.value	0xadf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"last_insn_to_move"
	.byte	0x1
	.value	0xae0
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF64
	.byte	0x1
	.value	0xae1
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF65
	.byte	0x1
	.value	0xae2
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2b
	.string	"target"
	.byte	0x1
	.value	0xb19
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"target_loop"
	.byte	0x1
	.value	0xb1b
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0xb1c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"loc2"
	.byte	0x1
	.value	0xb1c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0xb1d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2b
	.string	"cond_label"
	.byte	0x1
	.value	0xb41
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF66
	.byte	0x1
	.value	0xb42
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0xb4b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0xb4b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0xb59
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x997c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14696
	.byte	0x0
	.uleb128 0x32
	.long	0x51a1
	.string	"mark_loop_jump"
	.byte	0x1
	.value	0xbb4
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xbb2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0xbb3
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF64
	.byte	0x1
	.value	0xbb5
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF65
	.byte	0x1
	.value	0xbb6
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xbb7
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x51fb
	.string	"labels_in_range_p"
	.byte	0x1
	.value	0xc48
	.byte	0x1
	.long	0x211
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0xc46
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"end"
	.byte	0x1
	.value	0xc47
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF54
	.long	0x9977
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15149
	.byte	0x0
	.uleb128 0x32
	.long	0x525a
	.string	"note_addr_stored"
	.byte	0x1
	.value	0xc5a
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xc57
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0xc58
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0xc59
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0xc5b
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x52c6
	.string	"note_set_pseudo_multiple_uses"
	.byte	0x1
	.value	0xc7d
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xc7a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0xc7b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0xc7c
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0xc7e
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x53ca
	.byte	0x1
	.string	"loop_invariant_p"
	.byte	0x1
	.value	0xc9f
	.byte	0x1
	.long	0x211
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0xc9d
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xc9e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0xca0
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0xca1
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xca2
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xca3
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xca4
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"conditional"
	.byte	0x1
	.value	0xca5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF67
	.byte	0x1
	.value	0xca6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	0x5399
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xd05
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xd0d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xd10
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x54da
	.string	"consec_sets_invariant_p"
	.byte	0x1
	.value	0xd2c
	.byte	0x1
	.long	0x211
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0xd29
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0xd2b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"n_sets"
	.byte	0x1
	.value	0xd2a
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0xd2b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0xd2d
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xd2e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0xd2f
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0xd30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.value	0xd32
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"old"
	.byte	0x1
	.value	0xd33
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0xd34
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"this"
	.byte	0x1
	.value	0xd35
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xd3f
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xd40
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x556b
	.string	"find_single_use_in_loop"
	.byte	0x1
	.value	0xd96
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0xd93
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0xd94
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xd95
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xd97
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xd98
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xd99
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xd99
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x5609
	.string	"count_one_set"
	.byte	0x1
	.value	0xdbf
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0xdbc
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0xdbd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xdbd
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0xdbe
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0xdc7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xdcf
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0xdd0
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x5683
	.string	"loop_reg_used_before_p"
	.byte	0x1
	.value	0xdf5
	.byte	0x1
	.long	0x211
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0xdf3
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0xdf4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0xdf4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0xdf6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xdf7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x5777
	.string	"prefetch_info"
	.byte	0x30
	.byte	0x1
	.value	0xe0a
	.uleb128 0xc
	.string	"class"
	.byte	0x1
	.value	0xe0b
	.long	0x358b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"giv"
	.byte	0x1
	.value	0xe0c
	.long	0x344a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"base_address"
	.byte	0x1
	.value	0xe0d
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"index"
	.byte	0x1
	.value	0xe0f
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stride"
	.byte	0x1
	.value	0xe10
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"bytes_accessed"
	.byte	0x1
	.value	0xe12
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"total_bytes"
	.byte	0x1
	.value	0xe14
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"prefetch_in_loop"
	.byte	0x1
	.value	0xe18
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"prefetch_before_loop"
	.byte	0x1
	.value	0xe19
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.string	"write"
	.byte	0x1
	.value	0xe1a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0xb
	.long	0x57be
	.string	"check_store_data"
	.byte	0x8
	.byte	0x1
	.value	0xe1f
	.uleb128 0xc
	.string	"mem_address"
	.byte	0x1
	.value	0xe20
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"mem_write"
	.byte	0x1
	.value	0xe21
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x32
	.long	0x5818
	.string	"check_store"
	.byte	0x1
	.value	0xe2e
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xe2c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pat"
	.byte	0x1
	.value	0xe2c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0xe2d
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0xe2f
	.long	0x5818
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5777
	.uleb128 0x2c
	.long	0x58b3
	.string	"rtx_equal_for_prefetch_p"
	.byte	0x1
	.value	0xe3f
	.byte	0x1
	.long	0x211
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xe3e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0xe3e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xe40
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xe41
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xe42
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xe43
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF54
	.long	0x9972
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15768
	.byte	0x0
	.uleb128 0x2c
	.long	0x5914
	.string	"remove_constant_addition"
	.byte	0x1
	.value	0xe92
	.byte	0x1
	.long	0x386
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0xe91
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"addval"
	.byte	0x1
	.value	0xe93
	.long	0x386
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"exp"
	.byte	0x1
	.value	0xe94
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x5c9d
	.string	"emit_prefetch_instructions"
	.byte	0x1
	.value	0xed1
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0xed0
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"num_prefetches"
	.byte	0x1
	.value	0xed2
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"num_real_prefetches"
	.byte	0x1
	.value	0xed3
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"num_real_write_prefetches"
	.byte	0x1
	.value	0xed4
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"num_prefetches_before"
	.byte	0x1
	.value	0xed5
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"num_write_prefetches_before"
	.byte	0x1
	.value	0xed6
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"ahead"
	.byte	0x1
	.value	0xed7
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xed8
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0xed9
	.long	0x358b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"iv"
	.byte	0x1
	.value	0xeda
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"info"
	.byte	0x1
	.value	0xedb
	.long	0x5c9d
	.byte	0x3
	.byte	0x91
	.sleb128 -4984
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0xedc
	.long	0x5cad
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	0x5b57
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"biv"
	.byte	0x1
	.value	0xefa
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"biv1"
	.byte	0x1
	.value	0xefa
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"basestride"
	.byte	0x1
	.value	0xefb
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2b
	.string	"address"
	.byte	0x1
	.value	0xf2b
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0xf2c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"index"
	.byte	0x1
	.value	0xf2d
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"add"
	.byte	0x1
	.value	0xf2e
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"stride"
	.byte	0x1
	.value	0xf2f
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"stride_sign"
	.byte	0x1
	.value	0xf30
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0xf31
	.long	0x5777
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.string	"ignore_reason"
	.byte	0x1
	.value	0xf32
	.long	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"size"
	.byte	0x1
	.value	0xf33
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x5b79
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2b
	.string	"density"
	.byte	0x1
	.value	0xfba
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x30
	.long	0x5b95
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x1003
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x33
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x1036
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	0x5c37
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x103a
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x103b
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"bytes_ahead"
	.byte	0x1
	.value	0x103c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x1
	.value	0x103d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF70
	.byte	0x1
	.value	0x103e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x103f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1047
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x106c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.value	0x106d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"init_val"
	.byte	0x1
	.value	0x106e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x106f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1078
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x5cad
	.long	0x5683
	.uleb128 0xf
	.long	0x301
	.byte	0x63
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3630
	.uleb128 0x2a
	.long	0x5d8c
	.byte	0x1
	.string	"for_each_insn_in_loop"
	.byte	0x1
	.value	0x10c6
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x10c4
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"fncall"
	.byte	0x1
	.value	0x10c5
	.long	0x3c9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF71
	.byte	0x1
	.value	0x10c7
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.value	0x10c8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"past_loop_latch"
	.byte	0x1
	.value	0x10c9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x10ca
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x10cb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	0x5d72
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x10e1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x1
	.value	0x110f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x5dfe
	.string	"loop_bivs_find"
	.byte	0x1
	.value	0x1151
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1150
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x1152
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1153
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1155
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"backbl"
	.byte	0x1
	.value	0x1155
	.long	0x5dfe
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x358b
	.uleb128 0x32
	.long	0x5e90
	.string	"loop_bivs_init_find"
	.byte	0x1
	.value	0x1182
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1181
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1183
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1185
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x1
	.value	0x1186
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x1187
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2b
	.string	"test"
	.byte	0x1
	.value	0x118f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x5f1c
	.string	"loop_bivs_check"
	.byte	0x1
	.value	0x11ba
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x11b9
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x11bb
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x11bd
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"backbl"
	.byte	0x1
	.value	0x11be
	.long	0x5dfe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x11c2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x11c3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x5f50
	.string	"loop_givs_find"
	.byte	0x1
	.value	0x11f2
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x11f1
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x5fb9
	.string	"loop_givs_check"
	.byte	0x1
	.value	0x11fe
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x11fd
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x11ff
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1200
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1204
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6034
	.string	"loop_biv_eliminable_p"
	.byte	0x1
	.value	0x1218
	.byte	0x1
	.long	0x211
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1214
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1215
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF60
	.byte	0x1
	.value	0x1216
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x1217
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF54
	.long	0x996d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16926
	.byte	0x0
	.uleb128 0x32
	.long	0x60d9
	.string	"loop_givs_reduce"
	.byte	0x1
	.value	0x124a
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1248
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1249
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x124b
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2b
	.string	"tv"
	.byte	0x1
	.value	0x124f
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2f
	.long	.LASF36
	.byte	0x1
	.value	0x1252
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2b
	.string	"insert_before"
	.byte	0x1
	.value	0x12aa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6146
	.string	"loop_givs_dead_check"
	.byte	0x1
	.value	0x12d5
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x12d3
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x12d4
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x12d6
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2b
	.string	"v1"
	.byte	0x1
	.value	0x12e1
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6216
	.string	"loop_givs_rescan"
	.byte	0x1
	.value	0x12f0
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x12ed
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x12ee
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF62
	.byte	0x1
	.value	0x12ef
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x12f1
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	0x61c4
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2b
	.string	"align"
	.byte	0x1
	.value	0x1310
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	0x61e3
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2b
	.string	"align"
	.byte	0x1
	.value	0x131d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2b
	.string	"original_insn"
	.byte	0x1
	.value	0x1332
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x1333
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x62a4
	.string	"loop_giv_reduce_benefit"
	.byte	0x1
	.value	0x1363
	.byte	0x1
	.long	0x211
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x135f
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1360
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x1361
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF73
	.byte	0x1
	.value	0x1362
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"add_cost"
	.byte	0x1
	.value	0x1364
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x1365
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x6336
	.string	"loop_ivs_free"
	.byte	0x1
	.value	0x13ad
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x13ac
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x13ae
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"iv"
	.byte	0x1
	.value	0x13af
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2f
	.long	.LASF11
	.byte	0x1
	.value	0x13b5
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x13b6
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"next_induction"
	.byte	0x1
	.value	0x13b7
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6494
	.string	"strength_reduce"
	.byte	0x1
	.value	0x13d7
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x13d5
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x13d6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x13d8
	.long	0x3f92
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x13d9
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x13da
	.long	0x5cad
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x13db
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x13dd
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF60
	.byte	0x1
	.value	0x13e3
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF62
	.byte	0x1
	.value	0x13e5
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"reg_map_size"
	.byte	0x1
	.value	0x13e6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"unrolled_insn_copies"
	.byte	0x1
	.value	0x13e7
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF73
	.byte	0x1
	.value	0x13e8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF58
	.byte	0x1
	.value	0x13e9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	0x647b
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x142b
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x142c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2b
	.string	"tv"
	.byte	0x1
	.value	0x1440
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x14ff
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x656d
	.string	"check_insn_for_bivs"
	.byte	0x1
	.value	0x1515
	.byte	0x1
	.long	0x99
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1511
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1512
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x1513
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF35
	.byte	0x1
	.value	0x1514
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1516
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1517
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x1518
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF74
	.byte	0x1
	.value	0x1519
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x151a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF30
	.byte	0x1
	.value	0x151b
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x152e
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6690
	.string	"check_insn_for_givs"
	.byte	0x1
	.value	0x1545
	.byte	0x1
	.long	0x99
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1541
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1542
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x1543
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF35
	.byte	0x1
	.value	0x1544
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x1546
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1548
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2f
	.long	.LASF28
	.byte	0x1
	.value	0x154f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x1550
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x1551
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x1552
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF75
	.byte	0x1
	.value	0x1553
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x1554
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"regnote"
	.byte	0x1
	.value	0x1555
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x1
	.value	0x1556
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1571
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x66fa
	.string	"valid_initial_value_p"
	.byte	0x1
	.value	0x15a2
	.byte	0x1
	.long	0x211
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x159e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x159f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x1
	.value	0x15a0
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF55
	.byte	0x1
	.value	0x15a1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x32
	.long	0x680b
	.string	"find_mem_givs"
	.byte	0x1
	.value	0x15c7
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x15c3
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x15c4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x15c5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x15c6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF35
	.byte	0x1
	.value	0x15c6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x15c8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x15c8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x15c9
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x15ca
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2f
	.long	.LASF28
	.byte	0x1
	.value	0x15e2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x15e3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x15e4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF75
	.byte	0x1
	.value	0x15e5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x15e6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x15f2
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x68e7
	.string	"record_biv"
	.byte	0x1
	.value	0x162b
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1622
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x1623
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x1624
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x1625
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF74
	.byte	0x1
	.value	0x1626
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x1627
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF30
	.byte	0x1
	.value	0x1628
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x1629
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2d
	.long	.LASF35
	.byte	0x1
	.value	0x162a
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x162c
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x162d
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x1663
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6a3f
	.string	"record_giv"
	.byte	0x1
	.value	0x1691
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1687
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x1688
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x1689
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF28
	.byte	0x1
	.value	0x168a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x168b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x168c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF32
	.byte	0x1
	.value	0x168c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.long	.LASF75
	.byte	0x1
	.value	0x168c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2d
	.long	.LASF33
	.byte	0x1
	.value	0x168d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2e
	.string	"type"
	.byte	0x1
	.value	0x168e
	.long	0x318b
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.value	0x168f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2d
	.long	.LASF35
	.byte	0x1
	.value	0x168f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2d
	.long	.LASF30
	.byte	0x1
	.value	0x1690
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1692
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x1693
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1694
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1695
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x1696
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	0x6a2e
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1739
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x9968
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17953
	.byte	0x0
	.uleb128 0x32
	.long	0x6b17
	.string	"check_final_value"
	.byte	0x1
	.value	0x175e
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x175c
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x175d
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x175f
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1760
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.value	0x1761
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2b
	.string	"biv_increment_seen"
	.byte	0x1
	.value	0x177e
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"before_giv_insn"
	.byte	0x1
	.value	0x177e
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x177f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"last_giv_use"
	.byte	0x1
	.value	0x1780
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6bd9
	.string	"update_giv_derive"
	.byte	0x1
	.value	0x17f8
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x17f6
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x17f7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x17f9
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x17fa
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"biv"
	.byte	0x1
	.value	0x17fb
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"giv"
	.byte	0x1
	.value	0x17fb
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x17fc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"dummy"
	.byte	0x1
	.value	0x17fd
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2b
	.string	"ext_val_dummy"
	.byte	0x1
	.value	0x1838
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6cff
	.string	"basic_induction_var"
	.byte	0x1
	.value	0x1883
	.byte	0x1
	.long	0x211
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x187b
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x187c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x187d
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x187e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x187f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF74
	.byte	0x1
	.value	0x1880
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x1881
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2d
	.long	.LASF30
	.byte	0x1
	.value	0x1882
	.long	0x6cff
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1884
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"argp"
	.byte	0x1
	.value	0x1885
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x1885
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x1886
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1886
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x1886
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"inc"
	.byte	0x1
	.value	0x1886
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x18cf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1695
	.uleb128 0x2c
	.long	0x6dfa
	.string	"general_induction_var"
	.byte	0x1
	.value	0x194f
	.byte	0x1
	.long	0x211
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1946
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1947
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF28
	.byte	0x1
	.value	0x1948
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF32
	.byte	0x1
	.value	0x1949
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x194a
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF75
	.byte	0x1
	.value	0x194b
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.string	"is_addr"
	.byte	0x1
	.value	0x194c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2e
	.string	"pbenefit"
	.byte	0x1
	.value	0x194d
	.long	0x71a
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2e
	.string	"addr_mode"
	.byte	0x1
	.value	0x194e
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1950
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"orig_x"
	.byte	0x1
	.value	0x1951
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF54
	.long	0x9953
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18669
	.byte	0x0
	.uleb128 0x2c
	.long	0x6f55
	.string	"simplify_giv_expr"
	.byte	0x1
	.value	0x19ba
	.byte	0x1
	.long	0x99
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x19b6
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x19b7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF75
	.byte	0x1
	.value	0x19b8
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF33
	.byte	0x1
	.value	0x19b9
	.long	0x71a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x19bb
	.long	0x5cad
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x19bc
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x19bd
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"arg0"
	.byte	0x1
	.value	0x19be
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"arg1"
	.byte	0x1
	.value	0x19be
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x19bf
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"do_default"
	.byte	0x1
	.value	0x1af9
	.long	.L2285
	.uleb128 0x30
	.long	0x6f03
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1acf
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2f
	.long	.LASF77
	.byte	0x1
	.value	0x1adc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6f44
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x1aff
	.long	0x3959
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF49
	.byte	0x1
	.value	0x1b00
	.long	0x4271
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1b13
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x993e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18752
	.byte	0x0
	.uleb128 0x2c
	.long	0x6f9b
	.string	"sge_plus_constant"
	.byte	0x1
	.value	0x1b64
	.byte	0x1
	.long	0x99
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1b63
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x1b63
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2c
	.long	0x6ffe
	.string	"sge_plus"
	.byte	0x1
	.value	0x1b7f
	.byte	0x1
	.long	0x99
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x1b7d
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x1b7e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x1b7e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x1b82
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7134
	.string	"consec_sets_giv"
	.byte	0x1
	.value	0x1baf
	.byte	0x1
	.long	0x211
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1ba6
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"first_benefit"
	.byte	0x1
	.value	0x1ba7
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1ba8
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF28
	.byte	0x1
	.value	0x1ba9
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x1baa
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF32
	.byte	0x1
	.value	0x1bab
	.long	0x1695
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x1bac
	.long	0x1695
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF75
	.byte	0x1
	.value	0x1bad
	.long	0x1695
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF76
	.byte	0x1
	.value	0x1bae
	.long	0x1695
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1bb0
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x1bb1
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.value	0x1bb2
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1bb3
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x1bb4
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.value	0x1bb5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1bb6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1bbf
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x7243
	.string	"express_from_1"
	.byte	0x1
	.value	0x1c1a
	.byte	0x1
	.long	0x99
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1c19
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1c19
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"mult"
	.byte	0x1
	.value	0x1c19
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	0x71db
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2b
	.string	"ra"
	.byte	0x1
	.value	0x1c30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"rb"
	.byte	0x1
	.value	0x1c30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"oa"
	.byte	0x1
	.value	0x1c30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"ob"
	.byte	0x1
	.value	0x1c30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x1c30
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x30
	.long	0x7205
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2b
	.string	"ra"
	.byte	0x1
	.value	0x1c53
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"oa"
	.byte	0x1
	.value	0x1c53
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2b
	.string	"mode_a"
	.byte	0x1
	.value	0x1c66
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"mode_b"
	.byte	0x1
	.value	0x1c67
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x1c68
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x72fa
	.byte	0x1
	.string	"express_from"
	.byte	0x1
	.value	0x1c7d
	.byte	0x1
	.long	0x99
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x2e
	.string	"g1"
	.byte	0x1
	.value	0x1c7c
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"g2"
	.byte	0x1
	.value	0x1c7c
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"mult"
	.byte	0x1
	.value	0x1c7e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"add"
	.byte	0x1
	.value	0x1c7e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x72e0
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2b
	.string	"g1_add_val"
	.byte	0x1
	.value	0x1c9a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x1c9e
	.long	0x386
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1cbe
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x735e
	.string	"combine_givs_p"
	.byte	0x1
	.value	0x1ccf
	.byte	0x1
	.long	0x99
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x2e
	.string	"g1"
	.byte	0x1
	.value	0x1cce
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"g2"
	.byte	0x1
	.value	0x1cce
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"comb"
	.byte	0x1
	.value	0x1cd0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1cd0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x756f
	.string	"check_ext_dependent_givs"
	.byte	0x1
	.value	0x1d08
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1d06
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF47
	.byte	0x1
	.value	0x1d07
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ze_ok"
	.byte	0x1
	.value	0x1d09
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"se_ok"
	.byte	0x1
	.value	0x1d09
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"info_ok"
	.byte	0x1
	.value	0x1d09
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"biv_mode"
	.byte	0x1
	.value	0x1d0a
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"start_val"
	.byte	0x1
	.value	0x1d0b
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"u_end_val"
	.byte	0x1
	.value	0x1d0c
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"u_start_val"
	.byte	0x1
	.value	0x1d0d
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"incr"
	.byte	0x1
	.value	0x1d0e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1d0f
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	0x74e6
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2b
	.string	"abs_incr"
	.byte	0x1
	.value	0x1d1e
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"total_incr"
	.byte	0x1
	.value	0x1d1e
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"s_end_val"
	.byte	0x1
	.value	0x1d1f
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"neg_incr"
	.byte	0x1
	.value	0x1d20
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2b
	.string	"u_max"
	.byte	0x1
	.value	0x1d2e
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"s_max"
	.byte	0x1
	.value	0x1d2f
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x755e
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1d5c
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ok"
	.byte	0x1
	.value	0x1d5d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x7544
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2b
	.string	"outer_mode"
	.byte	0x1
	.value	0x1d70
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"max"
	.byte	0x1
	.value	0x1d71
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x33
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2b
	.string	"why"
	.byte	0x1
	.value	0x1d8c
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x9939
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19720
	.byte	0x0
	.uleb128 0x34
	.long	0x75ce
	.byte	0x1
	.string	"extend_value_for_giv"
	.byte	0x1
	.value	0x1daa
	.byte	0x1
	.long	0x99
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x1da8
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF6
	.byte	0x1
	.value	0x1da9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ext_dep"
	.byte	0x1
	.value	0x1dab
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x7610
	.string	"combine_givs_stats"
	.byte	0x8
	.byte	0x1
	.value	0x1dbc
	.uleb128 0xc
	.string	"giv_number"
	.byte	0x1
	.value	0x1dbd
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.value	0x1dbe
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2c
	.long	0x7684
	.string	"cmp_combine_givs_stats"
	.byte	0x1
	.value	0x1dc5
	.byte	0x1
	.long	0x211
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x2e
	.string	"xp"
	.byte	0x1
	.value	0x1dc3
	.long	0x720
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"yp"
	.byte	0x1
	.value	0x1dc4
	.long	0x720
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x1dc6
	.long	0x7684
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x1dc8
	.long	0x7684
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0x1dca
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.long	0x7689
	.uleb128 0x3
	.byte	0x4
	.long	0x768f
	.uleb128 0x9
	.long	0x75ce
	.uleb128 0x32
	.long	0x7859
	.string	"combine_givs"
	.byte	0x1
	.value	0x1ddb
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0x1dd9
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x1dda
	.long	0x358b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"extra_benefit"
	.byte	0x1
	.value	0x1ddd
	.long	0x715
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"g1"
	.byte	0x1
	.value	0x1ddf
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"g2"
	.byte	0x1
	.value	0x1ddf
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"giv_array"
	.byte	0x1
	.value	0x1ddf
	.long	0x7859
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1de0
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1de0
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x1de0
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x1de0
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"stats"
	.byte	0x1
	.value	0x1de1
	.long	0x785f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"can_combine"
	.byte	0x1
	.value	0x1de2
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"restart"
	.byte	0x1
	.value	0x1e79
	.long	.L2654
	.uleb128 0x30
	.long	0x77eb
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2b
	.string	"this_benefit"
	.byte	0x1
	.value	0x1df6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF77
	.byte	0x1
	.value	0x1df7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2b
	.string	"this_combine"
	.byte	0x1
	.value	0x1e0e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2b
	.string	"g1_add_benefit"
	.byte	0x1
	.value	0x1e2f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	0x7840
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x1e3f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x1e59
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x1e6c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x344a
	.uleb128 0x3
	.byte	0x4
	.long	0x75ce
	.uleb128 0x2c
	.long	0x78e3
	.string	"gen_add_mult"
	.byte	0x1
	.value	0x1e8a
	.byte	0x1
	.long	0x99
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1e86
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1e87
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1e88
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1e89
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1e8b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"result"
	.byte	0x1
	.value	0x1e8c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7950
	.string	"loop_regs_update"
	.byte	0x1
	.value	0x1ea0
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1e9e
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"seq"
	.byte	0x1
	.value	0x1e9f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x1ea1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1ead
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x79fc
	.byte	0x1
	.string	"loop_iv_add_mult_emit_before"
	.byte	0x1
	.value	0x1ec6
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1ebf
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1ec0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1ec1
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1ec2
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1ec3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"before_bb"
	.byte	0x1
	.value	0x1ec4
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF69
	.byte	0x1
	.value	0x1ec5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1ec7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x7a7d
	.byte	0x1
	.string	"loop_iv_add_mult_sink"
	.byte	0x1
	.value	0x1ee9
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1ee4
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1ee5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1ee6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1ee7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1ee8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1eea
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x7aff
	.byte	0x1
	.string	"loop_iv_add_mult_hoist"
	.byte	0x1
	.value	0x1f07
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1f02
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1f03
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1f04
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1f05
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1f06
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1f08
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x7ba8
	.string	"iv_add_mult_cost"
	.byte	0x1
	.value	0x1f20
	.byte	0x1
	.long	0x211
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1f1c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0x1f1d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1f1e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x1f1f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"cost"
	.byte	0x1
	.value	0x1f21
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x1f22
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"result"
	.byte	0x1
	.value	0x1f22
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1f2b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7c36
	.string	"product_cheap_p"
	.byte	0x1
	.value	0x1f40
	.byte	0x1
	.long	0x211
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x1f3e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x1f3f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x1f41
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"win"
	.byte	0x1
	.value	0x1f42
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"n_insns"
	.byte	0x1
	.value	0x1f42
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2f
	.long	.LASF11
	.byte	0x1
	.value	0x1f5f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x804b
	.string	"check_dbra_loop"
	.byte	0x1
	.value	0x1f8e
	.byte	0x1
	.long	0x211
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x1f8c
	.long	0x2ed1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x1f8d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x1f8f
	.long	0x3f92
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x1f90
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x1f91
	.long	0x5cad
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1f92
	.long	0x358b
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1f93
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"jump_label"
	.byte	0x1
	.value	0x1f94
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.value	0x1f95
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"start_value"
	.byte	0x1
	.value	0x1f96
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"new_add_val"
	.byte	0x1
	.value	0x1f97
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.long	.LASF78
	.byte	0x1
	.value	0x1f98
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"before_comparison"
	.byte	0x1
	.value	0x1f99
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x1f9a
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"jump"
	.byte	0x1
	.value	0x1f9b
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"first_compare"
	.byte	0x1
	.value	0x1f9c
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"compare_and_branch"
	.byte	0x1
	.value	0x1f9d
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.value	0x1f9e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x1f9f
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	0x7de9
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x2b
	.string	"jump1"
	.byte	0x1
	.value	0x1fbd
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x33
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2b
	.string	"num_nonfixed_reads"
	.byte	0x1
	.value	0x201d
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"no_use_except_counting"
	.byte	0x1
	.value	0x201f
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"reversible_mem_store"
	.byte	0x1
	.value	0x2022
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	0x7ea0
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x2b
	.string	"bivreg"
	.byte	0x1
	.value	0x2028
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"blt"
	.byte	0x1
	.value	0x2029
	.long	0x358b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x2032
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x7ebc
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x206b
	.long	0x344a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x33
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x2096
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x20ab
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.string	"add_adjust"
	.byte	0x1
	.value	0x20ab
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.string	"comparison_val"
	.byte	0x1
	.value	0x20ab
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x1
	.value	0x20ac
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF48
	.byte	0x1
	.value	0x20ac
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"nonneg"
	.byte	0x1
	.value	0x20ad
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"cmp_code"
	.byte	0x1
	.value	0x20ae
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"comparison_const_width"
	.byte	0x1
	.value	0x20af
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"comparison_sign_mask"
	.byte	0x1
	.value	0x20b0
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.long	0x7fec
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x2136
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"offset"
	.byte	0x1
	.value	0x2137
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"add_insn"
	.byte	0x1
	.value	0x2138
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x30
	.long	0x801d
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x2146
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"sub_insn"
	.byte	0x1
	.value	0x2147
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x2b
	.string	"pnote"
	.byte	0x1
	.value	0x21a9
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x21aa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x8175
	.string	"maybe_eliminate_biv"
	.byte	0x1
	.value	0x21e3
	.byte	0x1
	.long	0x211
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x21df
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x21e0
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF79
	.byte	0x1
	.value	0x21e1
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF60
	.byte	0x1
	.value	0x21e2
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x21e2
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x21e4
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x21e5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x21e6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x21ed
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF80
	.byte	0x1
	.value	0x21ee
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF81
	.byte	0x1
	.value	0x21ef
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x21f0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x21f9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x21fa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x2f
	.long	.LASF38
	.byte	0x1
	.value	0x21fe
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x81f0
	.byte	0x1
	.string	"loop_insn_first_p"
	.byte	0x1
	.value	0x222d
	.byte	0x1
	.long	0x211
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x222c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reference"
	.byte	0x1
	.value	0x222c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x222e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x222e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF54
	.long	0x9924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21156
	.byte	0x0
	.uleb128 0x2c
	.long	0x8258
	.string	"biv_elimination_giv_has_0_offset"
	.byte	0x1
	.value	0x2250
	.byte	0x1
	.long	0x211
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x2e
	.string	"biv"
	.byte	0x1
	.value	0x224e
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"giv"
	.byte	0x1
	.value	0x224e
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x224f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2c
	.long	0x839f
	.string	"maybe_eliminate_biv_1"
	.byte	0x1
	.value	0x2272
	.byte	0x1
	.long	0x211
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x226c
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x226d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x226d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x226e
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF79
	.byte	0x1
	.value	0x226f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF80
	.byte	0x1
	.value	0x2270
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.value	0x2271
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x2273
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x2274
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x2275
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x2276
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x2277
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x2277
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"arg_operand"
	.byte	0x1
	.value	0x227b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x227c
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x227d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x227d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x2311
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x83fe
	.string	"last_use_this_basic_block"
	.byte	0x1
	.value	0x23e5
	.byte	0x1
	.long	0x211
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x23e3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x23e4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x23e6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x846e
	.string	"record_initial"
	.byte	0x1
	.value	0x23f9
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x2e
	.string	"dest"
	.byte	0x1
	.value	0x23f6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x23f7
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x23f8
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x23fa
	.long	0x5cad
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x23fb
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x84fb
	.string	"update_reg_last_use"
	.byte	0x1
	.value	0x2415
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x2413
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x2414
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	0x84ea
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2424
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x2424
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x2425
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x990f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21536
	.byte	0x0
	.uleb128 0x34
	.long	0x868a
	.byte	0x1
	.string	"canonicalize_condition"
	.byte	0x1
	.value	0x244f
	.byte	0x1
	.long	0x99
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x244a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"cond"
	.byte	0x1
	.value	0x244b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"reverse"
	.byte	0x1
	.value	0x244c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF82
	.byte	0x1
	.value	0x244d
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"want_reg"
	.byte	0x1
	.value	0x244e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x2450
	.long	0xa1f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"prev"
	.byte	0x1
	.value	0x2451
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x2452
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x2453
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x2454
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x2454
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"reverse_code"
	.byte	0x1
	.value	0x2455
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x2456
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x863e
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x246f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x2b
	.string	"inner_mode"
	.byte	0x1
	.value	0x24a1
	.long	0x727
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x2b
	.string	"const_val"
	.byte	0x1
	.value	0x250c
	.long	0x386
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"uconst_val"
	.byte	0x1
	.value	0x250d
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"max_val"
	.byte	0x1
	.value	0x250e
	.long	0x397
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8704
	.byte	0x1
	.string	"get_condition"
	.byte	0x1
	.value	0x2547
	.byte	0x1
	.long	0x99
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x2e
	.string	"jump"
	.byte	0x1
	.value	0x2545
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF82
	.byte	0x1
	.value	0x2546
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"cond"
	.byte	0x1
	.value	0x2548
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"reverse"
	.byte	0x1
	.value	0x2549
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x254a
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8761
	.byte	0x1
	.string	"get_condition_for_loop"
	.byte	0x1
	.value	0x2564
	.byte	0x1
	.long	0x99
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2562
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x2563
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF78
	.byte	0x1
	.value	0x2565
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x87b5
	.string	"indirect_jump_in_function_p"
	.byte	0x1
	.value	0x2577
	.byte	0x1
	.long	0x211
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x2d
	.long	.LASF20
	.byte	0x1
	.value	0x2576
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x2578
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x8826
	.string	"insert_loop_mem"
	.byte	0x1
	.value	0x2589
	.byte	0x1
	.long	0x211
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x2e
	.string	"mem"
	.byte	0x1
	.value	0x2587
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x2588
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x258a
	.long	0x3f92
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x258b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x258c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x891b
	.string	"loop_regs_scan"
	.byte	0x1
	.value	0x25e3
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x25e1
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"extra_size"
	.byte	0x1
	.value	0x25e2
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x25e4
	.long	0x426b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"old_nregs"
	.byte	0x1
	.value	0x25e5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF68
	.byte	0x1
	.value	0x25e8
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x25e9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x25ea
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	0x88d9
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2618
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x2627
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x2b
	.string	"op"
	.byte	0x1
	.value	0x262c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x262c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x8976
	.string	"count_insns_in_loop"
	.byte	0x1
	.value	0x2657
	.byte	0x1
	.long	0x211
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2656
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF9
	.byte	0x1
	.value	0x2658
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x2659
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x8ce1
	.string	"load_mems"
	.byte	0x1
	.value	0x2668
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2667
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x1
	.value	0x2669
	.long	0x3f92
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x266a
	.long	0x426b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x266b
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x266c
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x266d
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"prev_ebb_head"
	.byte	0x1
	.value	0x266d
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x1
	.value	0x266e
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"end_label"
	.byte	0x1
	.value	0x266f
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"next_maybe_never"
	.byte	0x1
	.value	0x2671
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"last_max_reg"
	.byte	0x1
	.value	0x2672
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	0x8cb3
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x2b
	.string	"load_copies"
	.byte	0x1
	.value	0x26ba
	.long	0x2b7d
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2b
	.string	"store_copies"
	.byte	0x1
	.value	0x26bb
	.long	0x2b7d
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2b
	.string	"written"
	.byte	0x1
	.value	0x26bc
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x26bd
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0x26be
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF67
	.byte	0x1
	.value	0x26bf
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	0x8b04
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x26df
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x30
	.long	0x8b22
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x2711
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x33
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x274e
	.long	0x3d80
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x274f
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"best"
	.byte	0x1
	.value	0x2750
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x2751
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x2752
	.long	0x3d68
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	0x8baf
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x2b
	.string	"equiv"
	.byte	0x1
	.value	0x2756
	.long	0x3d68
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"best_equiv"
	.byte	0x1
	.value	0x2757
	.long	0x3d68
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x30
	.long	0x8c32
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x2b
	.string	"ptr_"
	.byte	0x1
	.value	0x27a0
	.long	0x2532
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"indx_"
	.byte	0x1
	.value	0x27a0
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF83
	.byte	0x1
	.value	0x27a0
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF84
	.byte	0x1
	.value	0x27a0
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x2b
	.string	"word_"
	.byte	0x1
	.value	0x27a0
	.long	0x249c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x2b
	.string	"mask_"
	.byte	0x1
	.value	0x27a0
	.long	0x249c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x2b
	.string	"ptr_"
	.byte	0x1
	.value	0x27a7
	.long	0x2532
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"indx_"
	.byte	0x1
	.value	0x27a7
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF83
	.byte	0x1
	.value	0x27a7
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF84
	.byte	0x1
	.value	0x27a7
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB136
	.long	.LBE136
	.uleb128 0x2b
	.string	"word_"
	.byte	0x1
	.value	0x27a7
	.long	0x249c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x2b
	.string	"mask_"
	.byte	0x1
	.value	0x27a7
	.long	0x249c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8cd0
	.long	.LBB138
	.long	.LBE138
	.uleb128 0x2b
	.string	"rr"
	.byte	0x1
	.value	0x27b4
	.long	0x3db0
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x990a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22225
	.byte	0x0
	.uleb128 0xb
	.long	0x8d22
	.string	"note_reg_stored_arg"
	.byte	0x8
	.byte	0x1
	.value	0x27cc
	.uleb128 0xc
	.string	"set_seen"
	.byte	0x1
	.value	0x27cd
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"reg"
	.byte	0x1
	.value	0x27ce
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x32
	.long	0x8d83
	.string	"note_reg_stored"
	.byte	0x1
	.value	0x27d7
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x27d5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"setter"
	.byte	0x1
	.value	0x27d5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x27d6
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x27d8
	.long	0x8d83
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8ce1
	.uleb128 0x32
	.long	0x8ed1
	.string	"try_copy_prop"
	.byte	0x1
	.value	0x27e7
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x27e4
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF53
	.byte	0x1
	.value	0x27e5
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF38
	.byte	0x1
	.value	0x27e6
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"reg_rtx"
	.byte	0x1
	.value	0x27e9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF42
	.byte	0x1
	.value	0x27ea
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x27eb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"replaced_last"
	.byte	0x1
	.value	0x27ed
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"store_is_first"
	.byte	0x1
	.value	0x27ee
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	0x8e8c
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x27f4
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB140
	.long	.LBE140
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x280f
	.long	0x8ce1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x281b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8ec0
	.long	.LBB142
	.long	.LBE142
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x282e
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"retval_note"
	.byte	0x1
	.value	0x282f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	.LASF54
	.long	0x98f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22880
	.byte	0x0
	.uleb128 0x32
	.long	0x8f17
	.string	"loop_delete_insns"
	.byte	0x1
	.value	0x284a
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x2d
	.long	.LASF7
	.byte	0x1
	.value	0x2848
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF13
	.byte	0x1
	.value	0x2849
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x8fcd
	.string	"try_swap_copy_prop"
	.byte	0x1
	.value	0x2865
	.byte	0x1
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2862
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF53
	.byte	0x1
	.value	0x2863
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF38
	.byte	0x1
	.value	0x2864
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x2866
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x2867
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"new_regno"
	.byte	0x1
	.value	0x2868
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x2f
	.long	.LASF70
	.byte	0x1
	.value	0x287c
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"prev_set"
	.byte	0x1
	.value	0x287d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x902f
	.string	"find_mem_in_note_1"
	.byte	0x1
	.value	0x28b8
	.byte	0x1
	.long	0x211
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x28b6
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x28b7
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0x28bb
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x9069
	.string	"find_mem_in_note"
	.byte	0x1
	.value	0x28c7
	.byte	0x1
	.long	0x99
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x2d
	.long	.LASF61
	.byte	0x1
	.value	0x28c6
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2c
	.long	0x90cf
	.string	"replace_loop_mem"
	.byte	0x1
	.value	0x28d6
	.byte	0x1
	.long	0x211
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x2e
	.string	"mem"
	.byte	0x1
	.value	0x28d4
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x28d5
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.value	0x28d7
	.long	0x90cf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x28d8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3df9
	.uleb128 0x32
	.long	0x9185
	.string	"replace_loop_mems"
	.byte	0x1
	.value	0x28fc
	.byte	0x1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x28f8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"mem"
	.byte	0x1
	.value	0x28f9
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x28fa
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"written"
	.byte	0x1
	.value	0x28fb
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.value	0x28fd
	.long	0x3df9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LBB145
	.long	.LBE145
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x2909
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0x2909
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x290a
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x91ea
	.string	"replace_loop_reg"
	.byte	0x1
	.value	0x2922
	.byte	0x1
	.long	0x211
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x2e
	.string	"px"
	.byte	0x1
	.value	0x2920
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x2921
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x2923
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.value	0x2924
	.long	0x90cf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x924f
	.string	"replace_loop_regs"
	.byte	0x1
	.value	0x2934
	.byte	0x1
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x2d
	.long	.LASF27
	.byte	0x1
	.value	0x2931
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x2932
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF53
	.byte	0x1
	.value	0x2933
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.value	0x2935
	.long	0x3df9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x92c4
	.string	"replace_label"
	.byte	0x1
	.value	0x2946
	.byte	0x1
	.long	0x211
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x2944
	.long	0x1695
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF18
	.byte	0x1
	.value	0x2945
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2947
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"old_label"
	.byte	0x1
	.value	0x2948
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF66
	.byte	0x1
	.value	0x2949
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x932f
	.string	"loop_insn_emit_after"
	.byte	0x1
	.value	0x2964
	.byte	0x1
	.long	0x99
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2960
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF80
	.byte	0x1
	.value	0x2961
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.value	0x2962
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x2963
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x34
	.long	0x939c
	.byte	0x1
	.string	"loop_insn_emit_before"
	.byte	0x1
	.value	0x2973
	.byte	0x1
	.long	0x99
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x296f
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF80
	.byte	0x1
	.value	0x2970
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.value	0x2971
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x2972
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2c
	.long	0x940d
	.string	"loop_call_insn_emit_before"
	.byte	0x1
	.value	0x2983
	.byte	0x1
	.long	0x99
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x297f
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF80
	.byte	0x1
	.value	0x2980
	.long	0x2ed7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.value	0x2981
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x2982
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x34
	.long	0x9456
	.byte	0x1
	.string	"loop_insn_hoist"
	.byte	0x1
	.value	0x298e
	.byte	0x1
	.long	0x99
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x298c
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x298d
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2c
	.long	0x94a3
	.string	"loop_call_insn_hoist"
	.byte	0x1
	.value	0x2999
	.byte	0x1
	.long	0x99
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2997
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x2998
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x94eb
	.byte	0x1
	.string	"loop_insn_sink"
	.byte	0x1
	.value	0x29a4
	.byte	0x1
	.long	0x99
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x29a2
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x29a3
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2c
	.long	0x954a
	.string	"gen_load_of_final_value"
	.byte	0x1
	.value	0x29ad
	.byte	0x1
	.long	0x99
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x29ac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF34
	.byte	0x1
	.value	0x29ac
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x29ae
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x9599
	.string	"loop_insn_sink_or_swim"
	.byte	0x1
	.value	0x29c1
	.byte	0x1
	.long	0x99
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x29bf
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.value	0x29c0
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x32
	.long	0x960b
	.string	"loop_ivs_dump"
	.byte	0x1
	.value	0x29cd
	.byte	0x1
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x29ca
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x29cb
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0x29cc
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x29ce
	.long	0x358b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"iv_num"
	.byte	0x1
	.value	0x29cf
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x968b
	.string	"loop_iv_class_dump"
	.byte	0x1
	.value	0x29e6
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x29e3
	.long	0x968b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x29e4
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0x29e5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x29e7
	.long	0x344a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"incr"
	.byte	0x1
	.value	0x29e8
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x29e9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9691
	.uleb128 0x9
	.long	0x3450
	.uleb128 0x32
	.long	0x96e6
	.string	"loop_biv_dump"
	.byte	0x1
	.value	0x2a27
	.byte	0x1
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x2a24
	.long	0x96e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x2a25
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0x2a26
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x96ec
	.uleb128 0x9
	.long	0x31b3
	.uleb128 0x32
	.long	0x9751
	.string	"loop_giv_dump"
	.byte	0x1
	.value	0x2a41
	.byte	0x1
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x2a3e
	.long	0x96e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x2a3f
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0x2a40
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF54
	.long	0x98f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23417
	.byte	0x0
	.uleb128 0x2a
	.long	0x9781
	.byte	0x1
	.string	"debug_ivs"
	.byte	0x1
	.value	0x2a7f
	.byte	0x1
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2a7e
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x97b5
	.byte	0x1
	.string	"debug_iv_class"
	.byte	0x1
	.value	0x2a87
	.byte	0x1
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x2e
	.string	"bl"
	.byte	0x1
	.value	0x2a86
	.long	0x968b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x97e3
	.byte	0x1
	.string	"debug_biv"
	.byte	0x1
	.value	0x2a8f
	.byte	0x1
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x2a8e
	.long	0x96e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x9811
	.byte	0x1
	.string	"debug_giv"
	.byte	0x1
	.value	0x2a97
	.byte	0x1
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x2a96
	.long	0x96e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x9872
	.string	"loop_dump_aux"
	.byte	0x1
	.value	0x2aad
	.byte	0x1
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2aaa
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"file"
	.byte	0x1
	.value	0x2aab
	.long	0x3f86
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0x2aac
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x1
	.value	0x2aae
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x98a3
	.byte	0x1
	.string	"debug_loop"
	.byte	0x1
	.value	0x2aee
	.byte	0x1
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x2d
	.long	.LASF19
	.byte	0x1
	.value	0x2aed
	.long	0x3fe2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x98d5
	.byte	0x1
	.string	"debug_loops"
	.byte	0x1
	.value	0x2af7
	.byte	0x1
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x2d
	.long	.LASF22
	.byte	0x1
	.value	0x2af6
	.long	0x98d5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x98db
	.uleb128 0x9
	.long	0x2f4c
	.uleb128 0xe
	.long	0x98f0
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x98e0
	.uleb128 0x9
	.long	0x98e0
	.uleb128 0xe
	.long	0x990a
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x9
	.byte	0x0
	.uleb128 0x9
	.long	0x98fa
	.uleb128 0x9
	.long	0x705
	.uleb128 0xe
	.long	0x9924
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x9914
	.uleb128 0xe
	.long	0x9939
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x18
	.byte	0x0
	.uleb128 0x9
	.long	0x9929
	.uleb128 0x9
	.long	0x9914
	.uleb128 0xe
	.long	0x9953
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x9943
	.uleb128 0xe
	.long	0x9968
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0xa
	.byte	0x0
	.uleb128 0x9
	.long	0x9958
	.uleb128 0x9
	.long	0x9943
	.uleb128 0x9
	.long	0x9929
	.uleb128 0x9
	.long	0x9914
	.uleb128 0x9
	.long	0x9943
	.uleb128 0x9
	.long	0x98e0
	.uleb128 0xe
	.long	0x9996
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x14
	.byte	0x0
	.uleb128 0x9
	.long	0x9986
	.uleb128 0x9
	.long	0x98fa
	.uleb128 0x9
	.long	0x98e0
	.uleb128 0x36
	.string	"max_luid"
	.byte	0x1
	.byte	0xae
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	max_luid
	.uleb128 0x36
	.string	"max_loop_num"
	.byte	0x1
	.byte	0xb3
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	max_loop_num
	.uleb128 0x36
	.string	"loop_max_reg"
	.byte	0x1
	.byte	0xba
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	loop_max_reg
	.uleb128 0x2b
	.string	"indirect_jump_in_function"
	.byte	0x1
	.value	0x182
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	indirect_jump_in_function
	.uleb128 0x2b
	.string	"copy_cost"
	.byte	0x1
	.value	0x18d
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	copy_cost
	.uleb128 0x2b
	.string	"reg_address_cost"
	.byte	0x1
	.value	0x190
	.long	0x211
	.byte	0x5
	.byte	0x3
	.long	reg_address_cost
	.uleb128 0x2b
	.string	"note_insn"
	.byte	0x1
	.value	0x1097
	.long	0x99
	.byte	0x5
	.byte	0x3
	.long	note_insn
	.uleb128 0x2b
	.string	"addr_placeholder"
	.byte	0x1
	.value	0x109b
	.long	0x99
	.byte	0x5
	.byte	0x3
	.long	addr_placeholder
	.uleb128 0xe
	.long	0x9a95
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0xaf
	.byte	0x0
	.uleb128 0x37
	.string	"call_used_regs"
	.byte	0xf
	.value	0x196
	.long	0x9a85
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"target_flags"
	.byte	0x10
	.byte	0x21
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"mips_isa"
	.byte	0x10
	.byte	0xa6
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"stderr"
	.byte	0xa
	.byte	0x90
	.long	0x6d9
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x9af6
	.long	0x970
	.uleb128 0xf
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x39
	.long	.LASF4
	.byte	0x4
	.byte	0x34
	.long	0x9b03
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9ae6
	.uleb128 0xe
	.long	0x9b18
	.long	0x32e
	.uleb128 0xf
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x9b2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9b08
	.uleb128 0xe
	.long	0x9b40
	.long	0x33f
	.uleb128 0xf
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x9b56
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9b30
	.uleb128 0xe
	.long	0x9b6b
	.long	0x397
	.uleb128 0xf
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_mask_array"
	.byte	0x4
	.byte	0x73
	.long	0x9b84
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9b5b
	.uleb128 0x38
	.string	"mode_wider_mode"
	.byte	0x4
	.byte	0x84
	.long	0x9ba2
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9b08
	.uleb128 0xe
	.long	0x9bb7
	.long	0x727
	.uleb128 0xf
	.long	0x301
	.byte	0x8
	.byte	0x0
	.uleb128 0x38
	.string	"class_narrowest_mode"
	.byte	0x4
	.byte	0xa6
	.long	0x9bd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9ba7
	.uleb128 0x38
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x727
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x9bfd
	.long	0x32e
	.uleb128 0xf
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x9c11
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9bed
	.uleb128 0xe
	.long	0x9c26
	.long	0x1fe
	.uleb128 0xf
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x9c3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9c16
	.uleb128 0xe
	.long	0x9c4f
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x9c62
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9c3f
	.uleb128 0xe
	.long	0x9c77
	.long	0x99
	.uleb128 0xf
	.long	0x301
	.byte	0x80
	.byte	0x0
	.uleb128 0x37
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x9c67
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x9ca5
	.long	0x99
	.uleb128 0xf
	.long	0x301
	.byte	0x2
	.uleb128 0xf
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x9c8f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x9cce
	.long	0x99
	.uleb128 0xf
	.long	0x301
	.byte	0xa
	.byte	0x0
	.uleb128 0x37
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x9cbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"pic_offset_table_rtx"
	.byte	0x3
	.value	0x6f3
	.long	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"cfun"
	.byte	0x11
	.value	0x202
	.long	0x23f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"regs_invalidated_by_call"
	.byte	0xf
	.value	0x1bd
	.long	0x2478
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"n_non_fixed_regs"
	.byte	0xf
	.value	0x1e5
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"reg_n_info"
	.byte	0x12
	.byte	0x43
	.long	0x2b64
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"regs_may_share"
	.byte	0x12
	.byte	0xc1
	.long	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x9d86
	.long	0x30c9
	.uleb128 0x3a
	.byte	0x0
	.uleb128 0x39
	.long	.LASF24
	.byte	0x13
	.byte	0xfe
	.long	0x9d93
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x9d7b
	.uleb128 0x38
	.string	"optimize_size"
	.byte	0x14
	.byte	0x47
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_float_store"
	.byte	0x14
	.value	0x117
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_strength_reduce"
	.byte	0x14
	.value	0x11b
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_unroll_loops"
	.byte	0x14
	.value	0x122
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_move_all_movables"
	.byte	0x14
	.value	0x12c
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_reduce_all_givs"
	.byte	0x14
	.value	0x135
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"flag_non_call_exceptions"
	.byte	0x14
	.value	0x2ae
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"uid_luid"
	.byte	0x1
	.byte	0xa1
	.long	0x71a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	uid_luid
	.uleb128 0x3b
	.string	"max_uid_for_loop"
	.byte	0x1
	.byte	0xaa
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_uid_for_loop
	.uleb128 0x3b
	.string	"max_reg_before_loop"
	.byte	0x1
	.byte	0xb7
	.long	0x2ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_reg_before_loop
	.uleb128 0x3b
	.string	"uid_loop"
	.byte	0x1
	.byte	0xa6
	.long	0x2f00
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	uid_loop
	.uleb128 0x3b
	.string	"loop_dump_stream"
	.byte	0x1
	.byte	0xe9
	.long	0x3f86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	loop_dump_stream
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x17
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
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.long	0x261
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9ef7
	.long	0x3e05
	.string	"init_loop"
	.long	0x3eac
	.string	"loop_optimize"
	.long	0x4277
	.string	"record_excess_regs"
	.long	0x431c
	.string	"libcall_other_reg"
	.long	0x52c6
	.string	"loop_invariant_p"
	.long	0x5cb3
	.string	"for_each_insn_in_loop"
	.long	0x7243
	.string	"express_from"
	.long	0x756f
	.string	"extend_value_for_giv"
	.long	0x7950
	.string	"loop_iv_add_mult_emit_before"
	.long	0x79fc
	.string	"loop_iv_add_mult_sink"
	.long	0x7a7d
	.string	"loop_iv_add_mult_hoist"
	.long	0x8175
	.string	"loop_insn_first_p"
	.long	0x84fb
	.string	"canonicalize_condition"
	.long	0x868a
	.string	"get_condition"
	.long	0x8704
	.string	"get_condition_for_loop"
	.long	0x932f
	.string	"loop_insn_emit_before"
	.long	0x940d
	.string	"loop_insn_hoist"
	.long	0x94a3
	.string	"loop_insn_sink"
	.long	0x9751
	.string	"debug_ivs"
	.long	0x9781
	.string	"debug_iv_class"
	.long	0x97b5
	.string	"debug_biv"
	.long	0x97e3
	.string	"debug_giv"
	.long	0x9872
	.string	"debug_loop"
	.long	0x98a3
	.string	"debug_loops"
	.long	0x9e68
	.string	"uid_luid"
	.long	0x9e7f
	.string	"max_uid_for_loop"
	.long	0x9e9e
	.string	"max_reg_before_loop"
	.long	0x9ec0
	.string	"uid_loop"
	.long	0x9ed7
	.string	"loop_dump_stream"
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
.LASF21:
	.string	"dominance_info"
.LASF60:
	.string	"threshold"
.LASF35:
	.string	"maybe_multiple"
.LASF47:
	.string	"loop_info"
.LASF11:
	.string	"next"
.LASF67:
	.string	"mem_list_entry"
.LASF86:
	.string	"verbose"
.LASF27:
	.string	"insn"
.LASF24:
	.string	"insn_data"
.LASF34:
	.string	"final_value"
.LASF40:
	.string	"total_benefit"
.LASF76:
	.string	"last_consec_insn"
.LASF80:
	.string	"where_bb"
.LASF17:
	.string	"basic_block"
.LASF1:
	.string	"mode"
.LASF82:
	.string	"earliest"
.LASF28:
	.string	"src_reg"
.LASF29:
	.string	"dest_reg"
.LASF75:
	.string	"ext_val"
.LASF25:
	.string	"output"
.LASF65:
	.string	"outer_loop"
.LASF66:
	.string	"new_label"
.LASF68:
	.string	"last_set"
.LASF83:
	.string	"bit_num_"
.LASF69:
	.string	"before_insn"
.LASF52:
	.string	"loop_replace_args"
.LASF43:
	.string	"regs"
.LASF84:
	.string	"word_num_"
.LASF5:
	.string	"mem_attrs"
.LASF70:
	.string	"prev_insn"
.LASF7:
	.string	"first"
.LASF0:
	.string	"code"
.LASF23:
	.string	"eliminable"
.LASF56:
	.string	"loop_end"
.LASF42:
	.string	"init_insn"
.LASF19:
	.string	"loop"
.LASF46:
	.string	"move_insn"
.LASF6:
	.string	"value"
.LASF31:
	.string	"mult_val"
.LASF48:
	.string	"comparison_value"
.LASF20:
	.string	"start"
.LASF45:
	.string	"dependencies"
.LASF51:
	.string	"rtx_pair"
.LASF16:
	.string	"const_equiv"
.LASF22:
	.string	"loops"
.LASF59:
	.string	"temp"
.LASF8:
	.string	"loop_depth"
.LASF36:
	.string	"auto_inc_opt"
.LASF26:
	.string	"induction"
.LASF57:
	.string	"maybe_never"
.LASF12:
	.string	"sequence_stack"
.LASF64:
	.string	"dest_loop"
.LASF74:
	.string	"inc_val"
.LASF32:
	.string	"add_val"
.LASF55:
	.string	"loop_start"
.LASF63:
	.string	"label"
.LASF13:
	.string	"last"
.LASF73:
	.string	"test_reg"
.LASF71:
	.string	"not_every_iteration"
.LASF44:
	.string	"loop_mem_info"
.LASF50:
	.string	"in_libcall"
.LASF9:
	.string	"count"
.LASF3:
	.string	"_IO_FILE"
.LASF53:
	.string	"replacement"
.LASF85:
	.string	"pattern"
.LASF18:
	.string	"data"
.LASF81:
	.string	"where_insn"
.LASF37:
	.string	"lifetime"
.LASF33:
	.string	"benefit"
.LASF72:
	.string	"call_seen"
.LASF78:
	.string	"comparison"
.LASF14:
	.string	"sequence_rtl_expr"
.LASF77:
	.string	"single_use"
.LASF49:
	.string	"movables"
.LASF39:
	.string	"giv_count"
.LASF54:
	.string	"__FUNCTION__"
.LASF4:
	.string	"mode_class"
.LASF41:
	.string	"initial_value"
.LASF79:
	.string	"eliminate_p"
.LASF58:
	.string	"insn_count"
.LASF62:
	.string	"reg_map"
.LASF15:
	.string	"function_frequency"
.LASF30:
	.string	"location"
.LASF2:
	.string	"unsigned int"
.LASF61:
	.string	"note"
.LASF38:
	.string	"regno"
.LASF10:
	.string	"flags"
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
