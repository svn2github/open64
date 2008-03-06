	.file	"reload.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.11728, @object
	.size	__FUNCTION__.11728, 22
__FUNCTION__.11728:
	.string	"push_secondary_reload"
.LC0:
	.string	"../../../kgccfe/gnu/reload.c"
	.text
	.type	push_secondary_reload, @function
push_secondary_reload:
.LFB15:
	.file 1 "../../../kgccfe/gnu/reload.c"
	.loc 1 309 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$208, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 310 0
	movl	$0, -52(%ebp)
	.loc 1 311 0
	movl	28(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 312 0
	movl	$529, -44(%ebp)
	.loc 1 313 0
	movl	$0, -40(%ebp)
	.loc 1 314 0
	movl	$0, -36(%ebp)
	.loc 1 315 0
	movl	$529, -32(%ebp)
	.loc 1 317 0
	movl	$-1, -20(%ebp)
	.loc 1 319 0
	cmpl	$3, 32(%ebp)
	je	.L2
	cmpl	$5, 32(%ebp)
	je	.L2
	cmpl	$4, 32(%ebp)
	je	.L2
	cmpl	$6, 32(%ebp)
	jne	.L6
.L2:
	.loc 1 323 0
	movl	32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 319 0
	jmp	.L7
.L6:
	.loc 1 325 0
	cmpl	$0, 8(%ebp)
	je	.L8
	movl	$3, -180(%ebp)
	jmp	.L10
.L8:
	movl	$5, -180(%ebp)
.L10:
	movl	-180(%ebp), %eax
	movl	%eax, -28(%ebp)
.L7:
	.loc 1 327 0
	movl	36(%ebp), %eax
	movl	$529, (%eax)
	.loc 1 331 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L11
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L11
	.loc 1 335 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 336 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 28(%ebp)
.L11:
	.loc 1 345 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L14
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L14
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 347 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L14:
	.loc 1 350 0
	cmpl	$0, 8(%ebp)
	je	.L18
	.loc 1 351 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	movl	%eax, -52(%ebp)
.L18:
	.loc 1 355 0
	cmpl	$0, 8(%ebp)
	jne	.L20
	.loc 1 356 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	movl	%eax, -52(%ebp)
.L20:
	.loc 1 360 0
	cmpl	$0, -52(%ebp)
	jne	.L22
	.loc 1 361 0
	movl	$-1, -176(%ebp)
	jmp	.L24
.L22:
	.loc 1 366 0
	cmpl	$0, 8(%ebp)
	je	.L25
	movl	28(%ebp), %edx
	movl	reload_in_optab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -172(%ebp)
	jmp	.L27
.L25:
	movl	28(%ebp), %edx
	movl	reload_out_optab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -172(%ebp)
.L27:
	movl	-172(%ebp), %edx
	movl	%edx, -44(%ebp)
	.loc 1 369 0
	cmpl	$529, -44(%ebp)
	je	.L28
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L28
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L28
	.loc 1 372 0
	movl	$529, -44(%ebp)
.L28:
	.loc 1 380 0
	cmpl	$529, -44(%ebp)
	je	.L32
.LBB2:
	.loc 1 389 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L34
	movl	$12, -164(%ebp)
	jmp	.L36
.L34:
	movl	$0, -164(%ebp)
.L36:
	movl	-168(%ebp), %eax
	addl	-164(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L37
	.loc 1 390 0
	movl	$24, -16(%ebp)
	jmp	.L39
.L37:
.LBB3:
	.loc 1 394 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L40
	movl	$12, -156(%ebp)
	jmp	.L42
.L40:
	movl	$0, -156(%ebp)
.L42:
	movl	-160(%ebp), %eax
	addl	-156(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -10(%ebp)
	.loc 1 395 0
	cmpb	$114, -10(%ebp)
	je	.L43
	movzbl	-10(%ebp), %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -152(%ebp)
	jmp	.L45
.L43:
	movl	$5, -152(%ebp)
.L45:
	movl	-152(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 399 0
	cmpl	$0, -16(%ebp)
	jne	.L46
	.loc 1 400 0
	leal	__FUNCTION__.11728@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$400, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L46:
	.loc 1 401 0
	cmpl	$0, 8(%ebp)
	je	.L39
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L49
	movl	$12, -144(%ebp)
	jmp	.L51
.L49:
	movl	$0, -144(%ebp)
.L51:
	movl	-148(%ebp), %eax
	addl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	je	.L39
	.loc 1 403 0
	leal	__FUNCTION__.11728@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$403, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L39:
.LBE3:
	.loc 1 407 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L53
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$38, %al
	je	.L55
.L53:
	.loc 1 409 0
	leal	__FUNCTION__.11728@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$409, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L55:
	.loc 1 411 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L56
	.loc 1 412 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	jmp	.L32
.L56:
.LBB4:
	.loc 1 415 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 416 0
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 417 0
	movl	-44(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 418 0
	cmpb	$114, -9(%ebp)
	je	.L58
	movzbl	-9(%ebp), %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -140(%ebp)
	jmp	.L60
.L58:
	movl	$5, -140(%ebp)
.L60:
	movl	-140(%ebp), %edx
	movl	%edx, -40(%ebp)
	.loc 1 420 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 421 0
	movl	$529, -44(%ebp)
.L32:
.LBE4:
.LBE2:
	.loc 1 439 0
	cmpl	$0, 8(%ebp)
	je	.L61
	movl	-52(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L61
	cmpl	$529, -44(%ebp)
	jne	.L61
	cmpl	$529, -32(%ebp)
	jne	.L61
	.loc 1 441 0
	leal	__FUNCTION__.11728@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$441, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L61:
	.loc 1 446 0
	cmpl	$0, -40(%ebp)
	je	.L66
	.loc 1 448 0
	movl	$0, -20(%ebp)
	jmp	.L68
.L69:
	.loc 1 449 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L70
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L72
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L70
.L72:
	cmpl	$0, 8(%ebp)
	je	.L74
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L76
.L74:
	cmpl	$0, 8(%ebp)
	jne	.L70
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L70
.L76:
	cmpl	$0, 8(%ebp)
	je	.L78
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	(%eax), %eax
	cmpl	$529, %eax
	je	.L80
.L78:
	cmpl	$0, 8(%ebp)
	jne	.L70
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	(%eax), %eax
	cmpl	$529, %eax
	jne	.L70
.L80:
	movl	-40(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L82
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L70
.L82:
	cmpl	$9, -28(%ebp)
	je	.L84
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	je	.L84
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L87
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L84
.L87:
	cmpl	$0, -28(%ebp)
	jne	.L89
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L84
.L89:
	cmpl	$7, -28(%ebp)
	jne	.L91
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L84
.L91:
	cmpl	$10, -28(%ebp)
	jne	.L70
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jne	.L70
.L84:
	.loc 1 463 0
	cmpl	$0, 8(%ebp)
	je	.L94
	.loc 1 464 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L94:
	.loc 1 465 0
	cmpl	$0, 8(%ebp)
	jne	.L96
	.loc 1 466 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L96:
	.loc 1 468 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L98
	.loc 1 469 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
.L98:
	.loc 1 471 0
	movl	-20(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, -184(%ebp)
	movl	%eax, -132(%ebp)
	movl	-184(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	jle	.L100
	movl	-184(%ebp), %edx
	movl	%edx, -132(%ebp)
.L100:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -136(%ebp), %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	-132(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 472 0
	movl	-20(%ebp), %esi
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 473 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$4, %eax
	movb	%al, 8(%edx)
	.loc 1 474 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L101
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L70
	cmpl	$0, -28(%ebp)
	je	.L70
	cmpl	$7, -28(%ebp)
	je	.L70
	cmpl	$10, -28(%ebp)
	je	.L70
.L101:
	.loc 1 476 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$9, (%eax)
.L70:
	.loc 1 448 0
	addl	$1, -20(%ebp)
.L68:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L69
	.loc 1 479 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L66
	.loc 1 482 0
	movl	-20(%ebp), %esi
	movl	-20(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	$0, (%eax)
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	movl	%ecx, (%eax,%edx)
	.loc 1 483 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 484 0
	movl	-20(%ebp), %eax
	movl	%eax, -128(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L108
	movl	-36(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L110
.L108:
	movl	$0, -124(%ebp)
.L110:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -128(%ebp), %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	-124(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 485 0
	movl	-20(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L111
	movl	-36(%ebp), %edx
	movl	%edx, -116(%ebp)
	jmp	.L113
.L111:
	movl	$0, -116(%ebp)
.L113:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -120(%ebp), %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	-116(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 486 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	$0, (%eax)
	.loc 1 487 0
	movl	-20(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	$1, %esi
	andl	%eax, %esi
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movl	%esi, %ecx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 488 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	$0, (%eax)
	.loc 1 490 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$2, %eax
	movb	%al, 8(%edx)
	.loc 1 491 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	$0, (%eax)
	.loc 1 492 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	$0, (%eax)
	.loc 1 493 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	48(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 494 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	68(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 495 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	$-1, (%eax)
	.loc 1 496 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	$-1, (%eax)
	.loc 1 497 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	$529, (%eax)
	.loc 1 498 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	$529, (%eax)
	.loc 1 499 0
	movl	-20(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$4, %eax
	movb	%al, 8(%edx)
	.loc 1 501 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_reloads@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L66:
	.loc 1 506 0
	movl	$0, -24(%ebp)
	jmp	.L114
.L115:
	.loc 1 507 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L116
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L118
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L116
.L118:
	cmpl	$0, 8(%ebp)
	je	.L120
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L122
.L120:
	cmpl	$0, 8(%ebp)
	jne	.L116
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L116
.L122:
	cmpl	$0, 8(%ebp)
	je	.L124
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L126
.L124:
	cmpl	$0, 8(%ebp)
	jne	.L116
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L116
.L126:
	cmpl	$0, 8(%ebp)
	je	.L128
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L130
.L128:
	cmpl	$0, 8(%ebp)
	jne	.L116
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L116
.L130:
	movl	-52(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L132
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L116
.L132:
	cmpl	$9, -28(%ebp)
	je	.L134
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	je	.L134
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L137
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L134
.L137:
	cmpl	$0, -28(%ebp)
	jne	.L139
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L134
.L139:
	cmpl	$7, -28(%ebp)
	jne	.L141
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L134
.L141:
	cmpl	$10, -28(%ebp)
	jne	.L116
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jne	.L116
.L134:
	.loc 1 520 0
	cmpl	$0, 8(%ebp)
	je	.L144
	.loc 1 521 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
.L144:
	.loc 1 522 0
	cmpl	$0, 8(%ebp)
	jne	.L146
	.loc 1 523 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
.L146:
	.loc 1 525 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L148
	.loc 1 526 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
.L148:
	.loc 1 528 0
	movl	-24(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, -188(%ebp)
	movl	%eax, -108(%ebp)
	movl	-188(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	jle	.L150
	movl	-188(%ebp), %edx
	movl	%edx, -108(%ebp)
.L150:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -112(%ebp), %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	-108(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 529 0
	movl	-24(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 530 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$4, %eax
	movb	%al, 8(%edx)
	.loc 1 531 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L151
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L116
	cmpl	$0, -28(%ebp)
	je	.L116
	cmpl	$7, -28(%ebp)
	je	.L116
	cmpl	$10, -28(%ebp)
	je	.L116
.L151:
	.loc 1 533 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$9, (%eax)
.L116:
	.loc 1 506 0
	addl	$1, -24(%ebp)
.L114:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L115
	.loc 1 536 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L157
	.loc 1 556 0
	movl	-24(%ebp), %esi
	movl	-24(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	$0, (%eax)
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	movl	%ecx, (%eax,%edx)
	.loc 1 557 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 559 0
	movl	-24(%ebp), %eax
	movl	%eax, -104(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L159
	movl	-48(%ebp), %edx
	movl	%edx, -100(%ebp)
	jmp	.L161
.L159:
	movl	$0, -100(%ebp)
.L161:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -104(%ebp), %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	-100(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 560 0
	movl	-24(%ebp), %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L162
	movl	-48(%ebp), %edx
	movl	%edx, -92(%ebp)
	jmp	.L164
.L162:
	movl	$0, -92(%ebp)
.L164:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -96(%ebp), %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	-92(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 561 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	$0, (%eax)
	.loc 1 562 0
	movl	-24(%ebp), %ecx
	movl	20(%ebp), %eax
	movl	$1, %esi
	andl	%eax, %esi
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movl	%esi, %ecx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 563 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	$0, (%eax)
	.loc 1 565 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$2, %eax
	movb	%al, 8(%edx)
	.loc 1 566 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	$0, (%eax)
	.loc 1 567 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	$0, (%eax)
	.loc 1 568 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	48(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 569 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	68(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 570 0
	movl	-24(%ebp), %eax
	movl	%eax, -88(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L165
	movl	-20(%ebp), %edx
	movl	%edx, -84(%ebp)
	jmp	.L167
.L165:
	movl	$-1, -84(%ebp)
.L167:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -88(%ebp), %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	-84(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 571 0
	movl	-24(%ebp), %eax
	movl	%eax, -80(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L168
	movl	-20(%ebp), %edx
	movl	%edx, -76(%ebp)
	jmp	.L170
.L168:
	movl	$-1, -76(%ebp)
.L170:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -80(%ebp), %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	-76(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 572 0
	movl	-24(%ebp), %eax
	movl	%eax, -72(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L171
	movl	-32(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L173
.L171:
	movl	$529, -68(%ebp)
.L173:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -72(%ebp), %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	-68(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 573 0
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L174
	movl	-32(%ebp), %edx
	movl	%edx, -60(%ebp)
	jmp	.L176
.L174:
	movl	$529, -60(%ebp)
.L176:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -64(%ebp), %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	-60(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 575 0
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$4, %eax
	movb	%al, 8(%edx)
	.loc 1 577 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_reloads@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L157:
	.loc 1 586 0
	movl	36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 587 0
	movl	-24(%ebp), %eax
	movl	%eax, -176(%ebp)
.L24:
	movl	-176(%ebp), %eax
	.loc 1 588 0
	addl	$208, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	push_secondary_reload, .-push_secondary_reload
	.section	.rodata
	.type	__FUNCTION__.12206, @object
	.size	__FUNCTION__.12206, 17
__FUNCTION__.12206:
	.string	"find_valid_class"
	.text
	.type	find_valid_class, @function
find_valid_class:
.LFB16:
	.loc 1 685 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%esi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$44, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 686 0
	movl	$-1, -44(%ebp)
	.loc 1 689 0
	movl	$0, -32(%ebp)
	.loc 1 690 0
	movl	16(%ebp), %eax
	movl	mips_regno_to_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 691 0
	movl	$0, -24(%ebp)
	.loc 1 694 0
	movl	$1, -40(%ebp)
	jmp	.L179
.L180:
.LBB5:
	.loc 1 696 0
	movl	$0, -16(%ebp)
	.loc 1 697 0
	movl	$0, -36(%ebp)
	jmp	.L181
.L182:
	.loc 1 698 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edx
	movl	(%esi,%eax,8), %eax
	movl	-36(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L200
	movl	%edx, %eax
	xorl	%edx, %edx
.L200:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L183
	movl	-40(%ebp), %esi
	movl	12(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	12(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L199
	movl	%edx, %eax
	xorl	%edx, %edx
.L199:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L183
	movl	8(%ebp), %ecx
	movl	12(%ebp), %eax
	movl	-36(%ebp), %esi
	addl	%eax, %esi
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %ecx, %eax
	addl	%edx, %eax
	movzbl	(%eax,%esi), %eax
	testb	%al, %al
	jne	.L183
	.loc 1 701 0
	movl	$1, -16(%ebp)
.L183:
	.loc 1 697 0
	addl	$1, -36(%ebp)
.L181:
	cmpl	$175, -36(%ebp)
	jg	.L187
	cmpl	$0, -16(%ebp)
	je	.L182
.L187:
	.loc 1 703 0
	cmpl	$0, -16(%ebp)
	jne	.L189
	.loc 1 705 0
	movl	-40(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_register_move_cost@PLT
	movl	%eax, -20(%ebp)
	.loc 1 707 0
	movl	-40(%ebp), %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L191
	cmpl	$0, -44(%ebp)
	js	.L193
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L193
.L191:
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L189
.L193:
	.loc 1 711 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 712 0
	movl	-40(%ebp), %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 713 0
	movl	-40(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_register_move_cost@PLT
	movl	%eax, -44(%ebp)
.L189:
.LBE5:
	.loc 1 694 0
	addl	$1, -40(%ebp)
.L179:
	cmpl	$24, -40(%ebp)
	jle	.L180
	.loc 1 717 0
	cmpl	$0, -24(%ebp)
	jne	.L196
	.loc 1 718 0
	leal	__FUNCTION__.12206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$718, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L196:
	.loc 1 720 0
	movl	-32(%ebp), %eax
	.loc 1 721 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	find_valid_class, .-find_valid_class
	.type	find_reusable_reload, @function
find_reusable_reload:
.LFB17:
	.loc 1 737 0
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
	subl	$76, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 738 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 743 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	testl	%eax, %eax
	je	.L202
	.loc 1 744 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L204
.L202:
	.loc 1 755 0
	movl	$0, -16(%ebp)
	jmp	.L205
.L206:
	.loc 1 756 0
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L207
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L209
.L207:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L210
	movl	16(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L345
	movl	%edx, %eax
	xorl	%edx, %edx
.L345:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L209
.L210:
	cmpl	$0, -20(%ebp)
	je	.L212
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	cmpl	-20(%ebp), %eax
	je	.L214
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L212
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L217
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L219
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L219
	movl	$1, -76(%ebp)
	jmp	.L222
.L219:
	movl	$0, -76(%ebp)
.L222:
	movzbl	-76(%ebp), %eax
	testb	%al, %al
	jne	.L214
	jmp	.L212
.L217:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L223
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L223
	movl	$1, -72(%ebp)
	jmp	.L226
.L223:
	movl	$0, -72(%ebp)
.L226:
	movzbl	-72(%ebp), %eax
	testb	%al, %al
	je	.L212
.L214:
	cmpl	$0, 28(%ebp)
	jne	.L212
	cmpl	$0, 12(%ebp)
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L212
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L233
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L235
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L235
	movl	$1, -68(%ebp)
	jmp	.L238
.L235:
	movl	$0, -68(%ebp)
.L238:
	movzbl	-68(%ebp), %eax
	testb	%al, %al
	jne	.L228
	jmp	.L212
.L233:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L239
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L239
	movl	$1, -64(%ebp)
	jmp	.L242
.L239:
	movl	$0, -64(%ebp)
.L242:
	movzbl	-64(%ebp), %eax
	testb	%al, %al
	jne	.L228
.L212:
	cmpl	$0, 12(%ebp)
	je	.L209
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L244
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L209
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L247
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L249
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L249
	movl	$1, -60(%ebp)
	jmp	.L252
.L249:
	movl	$0, -60(%ebp)
.L252:
	movzbl	-60(%ebp), %eax
	testb	%al, %al
	jne	.L244
	jmp	.L209
.L247:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L253
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L253
	movl	$1, -56(%ebp)
	jmp	.L256
.L253:
	movl	$0, -56(%ebp)
.L256:
	movzbl	-56(%ebp), %eax
	testb	%al, %al
	je	.L209
.L244:
	cmpl	$0, -20(%ebp)
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	cmpl	-20(%ebp), %eax
	je	.L228
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L209
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L261
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L263
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L263
	movl	$1, -52(%ebp)
	jmp	.L266
.L263:
	movl	$0, -52(%ebp)
.L266:
	movzbl	-52(%ebp), %eax
	testb	%al, %al
	jne	.L228
	jmp	.L209
.L261:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L267
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L267
	movl	$1, -48(%ebp)
	jmp	.L270
.L267:
	movl	$0, -48(%ebp)
.L270:
	movzbl	-48(%ebp), %eax
	testb	%al, %al
	je	.L209
.L228:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L271
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	testl	%eax, %eax
	jne	.L209
.L271:
	movl	16(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L273
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L209
.L273:
	cmpl	$9, 20(%ebp)
	je	.L275
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	je	.L275
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L278
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	24(%ebp), %eax
	je	.L275
.L278:
	cmpl	$0, 20(%ebp)
	jne	.L280
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L275
.L280:
	cmpl	$7, 20(%ebp)
	jne	.L282
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L275
.L282:
	cmpl	$10, 20(%ebp)
	jne	.L209
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jne	.L209
.L275:
	.loc 1 769 0
	movl	-16(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L204
.L209:
	.loc 1 755 0
	addl	$1, -16(%ebp)
.L205:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L206
	.loc 1 776 0
	movl	$0, -16(%ebp)
	jmp	.L286
.L287:
	.loc 1 777 0
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L288
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L290
.L288:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L291
	movl	16(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L344
	movl	%edx, %eax
	xorl	%edx, %edx
.L344:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L290
.L291:
	cmpl	$0, 12(%ebp)
	jne	.L290
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L290
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L290
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L296
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L296
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L299
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L296
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L302
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L304
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L304
	movl	$1, -44(%ebp)
	jmp	.L307
.L304:
	movl	$0, -44(%ebp)
.L307:
	movzbl	-44(%ebp), %eax
	testb	%al, %al
	jne	.L299
	jmp	.L296
.L302:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L308
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L308
	movl	$1, -40(%ebp)
	jmp	.L311
.L308:
	movl	$0, -40(%ebp)
.L311:
	movzbl	-40(%ebp), %eax
	testb	%al, %al
	jne	.L299
.L296:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L290
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L290
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	cmpl	%eax, %ecx
	je	.L299
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L290
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L316
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L318
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L318
	movl	$1, -36(%ebp)
	jmp	.L321
.L318:
	movl	$0, -36(%ebp)
.L321:
	movzbl	-36(%ebp), %eax
	testb	%al, %al
	jne	.L299
	jmp	.L290
.L316:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L322
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L322
	movl	$1, -32(%ebp)
	jmp	.L325
.L322:
	movl	$0, -32(%ebp)
.L325:
	movzbl	-32(%ebp), %eax
	testb	%al, %al
	je	.L290
.L299:
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L326
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	testl	%eax, %eax
	jne	.L290
.L326:
	movl	16(%ebp), %eax
	movl	reg_class_size@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L328
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L290
.L328:
	cmpl	$9, 20(%ebp)
	je	.L330
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	je	.L330
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L333
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	24(%ebp), %eax
	je	.L330
.L333:
	cmpl	$0, 20(%ebp)
	jne	.L335
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L330
.L335:
	cmpl	$7, 20(%ebp)
	jne	.L337
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L330
.L337:
	cmpl	$10, 20(%ebp)
	jne	.L290
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jne	.L290
.L330:
	.loc 1 798 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L340
	.loc 1 799 0
	movl	-16(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L340:
	.loc 1 800 0
	movl	-16(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L204
.L290:
	.loc 1 776 0
	addl	$1, -16(%ebp)
.L286:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L287
	.loc 1 802 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L204:
	movl	-80(%ebp), %eax
	.loc 1 803 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	find_reusable_reload, .-find_reusable_reload
	.type	reload_inner_reg_of_subreg, @function
reload_inner_reg_of_subreg:
.LFB18:
	.loc 1 813 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$64, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 817 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L347
	.loc 1 818 0
	movl	$0, -56(%ebp)
	jmp	.L349
.L347:
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 823 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L350
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L359
.L350:
	.loc 1 824 0
	movl	$1, -56(%ebp)
	jmp	.L349
.L359:
	.loc 1 828 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L360
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L362
.L360:
	.loc 1 830 0
	movl	$0, -56(%ebp)
	jmp	.L349
.L362:
	.loc 1 832 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_offset_representable_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L363
	.loc 1 837 0
	movl	$1, -56(%ebp)
	jmp	.L349
.L363:
	.loc 1 840 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %esi, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	jne	.L365
	.loc 1 841 0
	movl	$1, -56(%ebp)
	jmp	.L349
.L365:
	.loc 1 846 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L367
	movl	$8, -44(%ebp)
	jmp	.L369
.L367:
	movl	$4, -44(%ebp)
.L369:
	movl	-44(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jg	.L370
	cmpl	$0, 16(%ebp)
	je	.L370
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L373
	movl	$8, -36(%ebp)
	jmp	.L375
.L373:
	movl	$4, -36(%ebp)
.L375:
	movl	-36(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jle	.L370
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L377
	movl	$8, -28(%ebp)
	jmp	.L379
.L377:
	movl	$4, -28(%ebp)
.L379:
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-28(%ebp)
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	je	.L370
	movl	$1, -52(%ebp)
	jmp	.L381
.L370:
	movl	$0, -52(%ebp)
.L381:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
.L349:
	movl	-56(%ebp), %eax
	.loc 1 851 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	reload_inner_reg_of_subreg, .-reload_inner_reg_of_subreg
	.section	.rodata
	.type	__FUNCTION__.12798, @object
	.size	__FUNCTION__.12798, 12
__FUNCTION__.12798:
	.string	"push_reload"
	.align 4
.LC1:
	.string	"cannot reload integer constant operand in `asm'"
	.align 4
.LC2:
	.string	"impossible register constraint in `asm'"
	.text
.globl push_reload
	.type	push_reload, @function
push_reload:
.LFB19:
	.loc 1 897 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$380, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 899 0
	movl	$0, -92(%ebp)
	.loc 1 900 0
	movl	$0, -88(%ebp)
	.loc 1 901 0
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	.loc 1 902 0
	movl	$-1, -76(%ebp)
	movl	$-1, -72(%ebp)
	.loc 1 903 0
	movl	$529, -100(%ebp)
	.loc 1 904 0
	movl	$529, -104(%ebp)
	.loc 1 909 0
	cmpl	$0, 28(%ebp)
	jne	.L384
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L384
	.loc 1 910 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 28(%ebp)
.L384:
	.loc 1 911 0
	cmpl	$0, 32(%ebp)
	jne	.L387
	cmpl	$0, 12(%ebp)
	je	.L387
	.loc 1 912 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 32(%ebp)
.L387:
	.loc 1 918 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L390
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L390
.LBB6:
	.loc 1 920 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 922 0
	cmpl	$175, -68(%ebp)
	jle	.L390
	movl	-68(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L390
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L390
	.loc 1 924 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L390:
.LBE6:
	.loc 1 930 0
	cmpl	$0, 12(%ebp)
	je	.L396
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L396
.LBB7:
	.loc 1 932 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 934 0
	cmpl	$175, -64(%ebp)
	jle	.L396
	movl	-64(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L396
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L396
	.loc 1 936 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L396:
.LBE7:
	.loc 1 941 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L402
	cmpl	$0, 12(%ebp)
	je	.L402
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L402
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L402
	.loc 1 942 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$106, %eax
	movl	%eax, -328(%ebp)
	cmpl	$5, -328(%ebp)
	ja	.L402
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-328(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -332(%ebp)
	movl	-332(%ebp), %eax
	andl	$19, %eax
	testl	%eax, %eax
	jne	.L407
	movl	-332(%ebp), %eax
	andl	$44, %eax
	testl	%eax, %eax
	jne	.L408
	jmp	.L402
.L408:
	.loc 1 945 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, 8(%ebp)
	.loc 1 946 0
	jmp	.L402
.L407:
	.loc 1 949 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, 12(%ebp)
.L402:
	.loc 1 986 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L409
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L409
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	jne	.L412
	cmpl	$0, 36(%ebp)
	je	.L409
.L412:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_cannot_change_mode_class@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L409
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L415
	cmpl	$0, 36(%ebp)
	jne	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L426
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L428
.L426:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L429
.L428:
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L415
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -324(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L431
	movl	$8, -320(%ebp)
	jmp	.L433
.L431:
	movl	$4, -320(%ebp)
.L433:
	movl	-320(%ebp), %ecx
	cmpl	%ecx, -324(%ebp)
	jg	.L434
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -316(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L436
	movl	$8, -312(%ebp)
	jmp	.L438
.L436:
	movl	$4, -312(%ebp)
.L438:
	movl	-312(%ebp), %eax
	cmpl	%eax, -316(%ebp)
	jg	.L434
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L434
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L415
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	je	.L415
.L434:
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L429
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -308(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L445
	movl	$8, -304(%ebp)
	jmp	.L447
.L445:
	movl	$4, -304(%ebp)
.L447:
	movl	-308(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-304(%ebp)
	movl	%eax, -300(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -296(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L448
	movl	$8, -292(%ebp)
	jmp	.L450
.L448:
	movl	$4, -292(%ebp)
.L450:
	movl	-296(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-292(%ebp)
	cmpl	%eax, -300(%ebp)
	je	.L415
.L429:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L451
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L451
	cmpl	$0, 12(%ebp)
	je	.L454
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L451
.L454:
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -288(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L456
	movl	$8, -284(%ebp)
	jmp	.L458
.L456:
	movl	$4, -284(%ebp)
.L458:
	movl	-284(%ebp), %edx
	cmpl	%edx, -288(%ebp)
	jg	.L459
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -280(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L461
	movl	$8, -276(%ebp)
	jmp	.L463
.L461:
	movl	$4, -276(%ebp)
.L463:
	movl	-276(%ebp), %ecx
	cmpl	%ecx, -280(%ebp)
	jle	.L459
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L465
	movl	$8, -268(%ebp)
	jmp	.L467
.L465:
	movl	$4, -268(%ebp)
.L467:
	movl	-272(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-268(%ebp)
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	jne	.L415
.L459:
	movl	28(%ebp), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %esi, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L415
.L451:
	movl	8(%ebp), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	testl	%eax, %eax
	je	.L468
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	testl	%eax, %eax
	je	.L415
.L468:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L409
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L409
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	mips_cannot_change_mode_class@PLT
	testb	%al, %al
	je	.L409
.L415:
	.loc 1 1044 0
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1045 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 16(%ebp)
	.loc 1 1046 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1054 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 28(%ebp)
.L409:
	.loc 1 1067 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L472
	movl	8(%ebp), %eax
	movl	$0, 8(%esp)
	movl	28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reload_inner_reg_of_subreg
	testl	%eax, %eax
	je	.L472
.LBB8:
	.loc 1 1069 0
	movl	24(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1071 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L475
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edi
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_valid_class
	movl	%eax, -60(%ebp)
.L475:
	.loc 1 1085 0
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	push_reload@PLT
	.loc 1 1087 0
	movl	$1, -88(%ebp)
.L472:
.LBE8:
	.loc 1 1096 0
	cmpl	$0, 12(%ebp)
	je	.L477
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L477
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	jne	.L480
	cmpl	$0, 36(%ebp)
	je	.L477
.L480:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_cannot_change_mode_class@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L477
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L483
	cmpl	$0, 36(%ebp)
	jne	.L483
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L493
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L495
.L493:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L496
.L495:
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L483
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L496
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -264(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L499
	movl	$8, -260(%ebp)
	jmp	.L501
.L499:
	movl	$4, -260(%ebp)
.L501:
	movl	-264(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-260(%ebp)
	movl	%eax, -256(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -252(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L502
	movl	$8, -248(%ebp)
	jmp	.L504
.L502:
	movl	$4, -248(%ebp)
.L504:
	movl	-252(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-248(%ebp)
	cmpl	%eax, -256(%ebp)
	je	.L483
.L496:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L505
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L505
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -244(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L508
	movl	$8, -240(%ebp)
	jmp	.L510
.L508:
	movl	$4, -240(%ebp)
.L510:
	movl	-240(%ebp), %eax
	cmpl	%eax, -244(%ebp)
	jg	.L511
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -236(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L513
	movl	$8, -232(%ebp)
	jmp	.L515
.L513:
	movl	$4, -232(%ebp)
.L515:
	movl	-232(%ebp), %edx
	cmpl	%edx, -236(%ebp)
	jle	.L511
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -228(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L517
	movl	$8, -224(%ebp)
	jmp	.L519
.L517:
	movl	$4, -224(%ebp)
.L519:
	movl	-228(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-224(%ebp)
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	jne	.L483
.L511:
	movl	32(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %esi, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L483
.L505:
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	testl	%eax, %eax
	je	.L520
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_secondary_reload_class@PLT
	testl	%eax, %eax
	je	.L483
.L520:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L477
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L477
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	mips_cannot_change_mode_class@PLT
	testb	%al, %al
	je	.L477
.L483:
	.loc 1 1142 0
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1143 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 1144 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1150 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 32(%ebp)
.L477:
	.loc 1 1160 0
	cmpl	$0, 12(%ebp)
	je	.L524
	movl	$1, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reload_inner_reg_of_subreg
	testl	%eax, %eax
	je	.L524
	.loc 1 1167 0
	movl	$1, -88(%ebp)
	.loc 1 1168 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_valid_class
	movl	%eax, %edx
	movl	12(%ebp), %ecx
	addl	$4, %ecx
	movl	12(%ebp), %esi
	addl	$4, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -220(%ebp)
	movl	$9, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-220(%ebp), %ecx
	movl	%ecx, (%esp)
	call	push_reload@PLT
.L524:
	.loc 1 1181 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L527
	cmpl	$0, 12(%ebp)
	je	.L527
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L527
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L531
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L527
.L531:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L527
	.loc 1 1184 0
	movl	$1, -92(%ebp)
.L527:
	.loc 1 1189 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L534
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L534
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L534
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L534
	cmpl	$0, -88(%ebp)
	jne	.L534
	.loc 1 1192 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, 8(%ebp)
.L534:
	.loc 1 1195 0
	cmpl	$0, 12(%ebp)
	je	.L540
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L540
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L540
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L540
	cmpl	$0, -88(%ebp)
	jne	.L540
	.loc 1 1199 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, 12(%ebp)
.L540:
	.loc 1 1203 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L546
	.loc 1 1204 0
	cmpl	$24, 24(%ebp)
	je	.L548
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L550
	cmpl	$5, 24(%ebp)
	je	.L552
	movl	24(%ebp), %eax
	movl	%eax, -208(%ebp)
	jmp	.L554
.L552:
	movl	$2, -208(%ebp)
.L554:
	movl	-208(%ebp), %edx
	movl	%edx, -212(%ebp)
	jmp	.L555
.L550:
	movl	24(%ebp), %ecx
	movl	%ecx, -212(%ebp)
.L555:
	movl	-212(%ebp), %eax
	movl	%eax, -216(%ebp)
	jmp	.L556
.L548:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L557
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L559
.L557:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L560
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L562
	movl	$2, -196(%ebp)
	jmp	.L564
.L562:
	movl	$5, -196(%ebp)
.L564:
	movl	-196(%ebp), %edx
	movl	%edx, -200(%ebp)
	jmp	.L565
.L560:
	movl	$6, -200(%ebp)
.L565:
	movl	-200(%ebp), %ecx
	movl	%ecx, -204(%ebp)
	jmp	.L566
.L559:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L567
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L569
.L567:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L570
	movl	$2, -188(%ebp)
	jmp	.L572
.L570:
	movl	$5, -188(%ebp)
.L572:
	movl	-188(%ebp), %eax
	movl	%eax, -192(%ebp)
	jmp	.L573
.L569:
	movl	24(%ebp), %edx
	movl	%edx, -192(%ebp)
.L573:
	movl	-192(%ebp), %ecx
	movl	%ecx, -204(%ebp)
.L566:
	movl	-204(%ebp), %eax
	movl	%eax, -216(%ebp)
.L556:
	movl	-216(%ebp), %edx
	movl	%edx, 24(%ebp)
.L546:
	.loc 1 1230 0
	movl	this_insn_is_asm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L574
.LBB9:
	.loc 1 1233 0
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L576
	.loc 1 1234 0
	movl	28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L578
.L576:
	.loc 1 1236 0
	movl	32(%ebp), %eax
	movl	%eax, -56(%ebp)
.L578:
	.loc 1 1237 0
	cmpl	$0, -56(%ebp)
	jne	.L579
	.loc 1 1239 0
	movl	this_insn@GOTOFF(%ebx), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_for_asm@PLT
	.loc 1 1240 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1241 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L581
	.loc 1 1242 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 28(%ebp)
.L581:
	.loc 1 1243 0
	cmpl	$0, 12(%ebp)
	je	.L579
	.loc 1 1244 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 32(%ebp)
.L579:
	.loc 1 1246 0
	movl	$0, -96(%ebp)
	jmp	.L584
.L585:
	.loc 1 1247 0
	movl	-56(%ebp), %eax
	movl	-96(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L586
	movl	24(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edx
	movl	(%esi,%eax,8), %eax
	movl	-96(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L719
	movl	%edx, %eax
	xorl	%edx, %edx
.L719:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L586
.LBB10:
	.loc 1 1250 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1253 0
	movl	$1, -48(%ebp)
	jmp	.L589
.L590:
	.loc 1 1254 0
	movl	24(%ebp), %esi
	movl	-48(%ebp), %eax
	addl	-96(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-48(%ebp), %eax
	addl	-96(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L718
	movl	%edx, %eax
	xorl	%edx, %edx
.L718:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L591
	.loc 1 1253 0
	addl	$1, -48(%ebp)
.L589:
	movl	-48(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L590
.L591:
	.loc 1 1256 0
	movl	-48(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L593
.L586:
.LBE10:
	.loc 1 1246 0
	addl	$1, -96(%ebp)
.L584:
	cmpl	$175, -96(%ebp)
	jle	.L585
.L593:
	.loc 1 1259 0
	cmpl	$176, -96(%ebp)
	jne	.L574
	.loc 1 1261 0
	movl	this_insn@GOTOFF(%ebx), %edx
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_for_asm@PLT
	.loc 1 1262 0
	movl	$24, 24(%ebp)
.L574:
.LBE9:
	.loc 1 1269 0
	cmpl	$0, 24(%ebp)
	jne	.L595
	cmpl	$0, 40(%ebp)
	je	.L597
	cmpl	$1, 48(%ebp)
	je	.L595
.L597:
	.loc 1 1271 0
	leal	__FUNCTION__.12798@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1271, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L595:
	.loc 1 1273 0
	movl	-92(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %ecx
	movl	%ecx, (%esp)
	call	find_reusable_reload
	movl	%eax, -96(%ebp)
	.loc 1 1275 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -96(%ebp)
	jne	.L599
	.loc 1 1282 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L601
	.loc 1 1283 0
	movl	8(%ebp), %edx
	leal	-100(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	push_secondary_reload
	movl	%eax, -76(%ebp)
.L601:
	.loc 1 1289 0
	cmpl	$0, 12(%ebp)
	je	.L603
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L603
	.loc 1 1290 0
	leal	-104(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	push_secondary_reload
	movl	%eax, -72(%ebp)
.L603:
	.loc 1 1307 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1308 0
	movl	-96(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	%ecx, (%eax,%edx)
	.loc 1 1309 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1310 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1311 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	12(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1312 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	16(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1313 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	$0, (%eax)
	.loc 1 1314 0
	movl	-96(%ebp), %ecx
	movl	40(%ebp), %eax
	movl	$1, %esi
	andl	%eax, %esi
	movl	rld@GOT(%ebx), %edx
	imull	$76, %ecx, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movl	%esi, %ecx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 1315 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	$0, (%eax)
	.loc 1 1316 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-3, %eax
	movb	%al, 8(%edx)
	.loc 1 1317 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -184(%ebp)
	cmpl	$0, 16(%ebp)
	je	.L606
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	jmp	.L608
.L606:
	movl	$0, -180(%ebp)
.L608:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -184(%ebp), %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	-180(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 1318 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -176(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L609
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L611
.L609:
	movl	$0, -172(%ebp)
.L611:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -176(%ebp), %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	-172(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 1319 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	48(%eax), %edx
	movl	44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1320 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	68(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1321 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	52(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1322 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	56(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1323 0
	movl	-96(%ebp), %eax
	movl	-100(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	%ecx, (%eax)
	.loc 1 1324 0
	movl	-96(%ebp), %eax
	movl	-104(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	%ecx, (%eax)
	.loc 1 1325 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-5, %eax
	movb	%al, 8(%edx)
	.loc 1 1327 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_reloads@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L612
.L599:
	.loc 1 1347 0
	cmpl	$0, 28(%ebp)
	je	.L613
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L613
	.loc 1 1349 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	12(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, (%edx)
.L613:
	.loc 1 1350 0
	cmpl	$0, 32(%ebp)
	je	.L616
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L616
	.loc 1 1352 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	16(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, (%edx)
.L616:
	.loc 1 1353 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L619
.LBB11:
	.loc 1 1355 0
	cmpl	$0, 16(%ebp)
	je	.L621
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L623
.L621:
	movl	$0, -168(%ebp)
.L623:
	movl	-168(%ebp), %ecx
	movl	%ecx, -44(%ebp)
	.loc 1 1370 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	.L624
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L624
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L627
	cmpl	$0, 40(%ebp)
	jne	.L624
.L627:
	.loc 1 1375 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	44(%ebp), %eax
	jge	.L629
	.loc 1 1377 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_address_replacements@PLT
	.loc 1 1378 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1379 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L624
.L629:
	.loc 1 1382 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	remove_address_replacements@PLT
.L624:
	.loc 1 1384 0
	movl	-96(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	%ecx, (%eax,%edx)
	.loc 1 1385 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	32(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
.L619:
.LBE11:
	.loc 1 1387 0
	cmpl	$0, 12(%ebp)
	je	.L631
	.loc 1 1389 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1390 0
	movl	-96(%ebp), %eax
	movl	%eax, -164(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L633
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L635
.L633:
	movl	$0, -160(%ebp)
.L635:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -164(%ebp), %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	-160(%ebp), %edx
	movl	%edx, (%eax)
.L631:
	.loc 1 1392 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L636
	.loc 1 1393 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	8(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, (%edx)
.L636:
	.loc 1 1394 0
	movl	-96(%ebp), %esi
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	40(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	andl	$1, %ecx
	movzbl	8(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 8(%edx)
	.loc 1 1395 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	48(%ebp), %eax
	jne	.L638
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	44(%ebp), %eax
	je	.L640
	cmpl	$0, 48(%ebp)
	je	.L640
	cmpl	$7, 48(%ebp)
	je	.L640
	cmpl	$10, 48(%ebp)
	je	.L640
.L638:
	.loc 1 1397 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$9, (%eax)
.L640:
	.loc 1 1398 0
	movl	-96(%ebp), %ecx
	movl	%ecx, -156(%ebp)
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	44(%ebp), %edx
	movl	%edx, -336(%ebp)
	movl	%eax, -152(%ebp)
	movl	-336(%ebp), %ecx
	cmpl	%ecx, -152(%ebp)
	jle	.L644
	movl	-336(%ebp), %eax
	movl	%eax, -152(%ebp)
.L644:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -156(%ebp), %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	-152(%ebp), %edx
	movl	%edx, (%eax)
.L612:
	.loc 1 1405 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L645
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	.L645
	.loc 1 1406 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	64(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$2, %eax
	movb	%al, 8(%edx)
.L645:
	.loc 1 1434 0
	movl	replace_reloads@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L648
	.loc 1 1436 0
	cmpl	$0, 16(%ebp)
	je	.L650
.LBB12:
	.loc 1 1438 0
	movl	n_replacements@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	leal	1(%ecx), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 1439 0
	movl	-40(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1440 0
	movl	-40(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1441 0
	movl	-40(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1442 0
	movl	-40(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 12(%edx)
.L650:
.LBE12:
	.loc 1 1444 0
	cmpl	$0, 20(%ebp)
	je	.L648
	movl	20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L648
.LBB13:
	.loc 1 1446 0
	movl	n_replacements@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	leal	1(%ecx), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 1447 0
	movl	-36(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1448 0
	movl	-36(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1449 0
	movl	-36(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1450 0
	movl	-36(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 12(%edx)
.L648:
.LBE13:
	.loc 1 1462 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L654
	cmpl	$0, 12(%ebp)
	je	.L654
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L654
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L654
	.loc 1 1464 0
	movl	-96(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	movl	%eax, %ecx
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %edi
	movl	%ecx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	find_dummy_reload
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	%ecx, (%eax)
	.loc 1 1473 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L654
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L660
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L654
.L660:
	movl	static_reload_reg_p@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	this_insn@GOTOFF(%ebx), %esi
	movl	8(%ebp), %edi
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	find_equiv_reg@PLT
	testl	%eax, %eax
	je	.L654
	.loc 1 1477 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %ecx
	imull	$76, %eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx,%ecx)
.L654:
	.loc 1 1492 0
	movl	-96(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L670
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L670
.LBB14:
	.loc 1 1496 0
	movl	28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1498 0
	cmpl	$0, 12(%ebp)
	je	.L673
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L673
	.loc 1 1499 0
	movl	32(%ebp), %eax
	movl	%eax, -24(%ebp)
.L673:
	.loc 1 1501 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L676
.L677:
	.loc 1 1502 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L678
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L678
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$175, -28(%ebp)
	jg	.L678
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L678
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L678
	cmpl	$0, 12(%ebp)
	je	.L684
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L684
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	-28(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_reg_set_here_p
	testl	%eax, %eax
	jne	.L678
.L684:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L687
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L678
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L690
	movl	$7, -144(%ebp)
	jmp	.L692
.L690:
	movl	$3, -144(%ebp)
.L692:
	movl	-148(%ebp), %ecx
	addl	-144(%ebp), %ecx
	movl	%ecx, -140(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L693
	movl	$8, -136(%ebp)
	jmp	.L695
.L693:
	movl	$4, -136(%ebp)
.L695:
	movl	-140(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-136(%ebp)
	movl	%eax, -132(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -128(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L696
	movl	$7, -124(%ebp)
	jmp	.L698
.L696:
	movl	$3, -124(%ebp)
.L698:
	movl	-128(%ebp), %eax
	addl	-124(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L699
	movl	$8, -116(%ebp)
	jmp	.L701
.L699:
	movl	$4, -116(%ebp)
.L701:
	movl	-120(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-116(%ebp)
	cmpl	%eax, -132(%ebp)
	jne	.L678
.L687:
	movl	-24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L678
	movl	28(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L678
	movl	32(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L678
.LBB15:
	.loc 1 1536 0
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %esi
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	jbe	.L705
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -112(%ebp)
	jmp	.L707
.L705:
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -112(%ebp)
.L707:
	movl	-112(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 1539 0
	movl	$0, -20(%ebp)
	jmp	.L708
.L709:
	.loc 1 1540 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L710
	movl	24(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edi
	movl	(%esi,%eax,8), %esi
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L717
	movl	%edx, %eax
	xorl	%edx, %edx
.L717:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L710
	.loc 1 1539 0
	addl	$1, -20(%ebp)
.L708:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L709
.L710:
	.loc 1 1545 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L678
	.loc 1 1547 0
	movl	-96(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	%ecx, (%eax)
	.loc 1 1548 0
	jmp	.L670
.L678:
.LBE15:
	.loc 1 1501 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L676:
	cmpl	$0, -32(%ebp)
	jne	.L677
.L670:
.LBE14:
	.loc 1 1553 0
	cmpl	$0, 12(%ebp)
	je	.L714
	.loc 1 1554 0
	movl	-96(%ebp), %eax
	movl	%eax, output_reloadnum@GOTOFF(%ebx)
.L714:
	.loc 1 1556 0
	movl	-96(%ebp), %eax
	.loc 1 1557 0
	addl	$380, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	push_reload, .-push_reload
	.type	push_replacement, @function
push_replacement:
.LFB20:
	.loc 1 1570 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$16, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1571 0
	movl	replace_reloads@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L723
.LBB16:
	.loc 1 1573 0
	movl	n_replacements@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	leal	1(%ecx), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 1574 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1575 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1576 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1577 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
.L723:
.LBE16:
	.loc 1 1579 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	push_replacement, .-push_replacement
	.type	dup_replacements, @function
dup_replacements:
.LFB21:
	.loc 1 1589 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$28, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1590 0
	movl	n_replacements@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1592 0
	movl	$0, -16(%ebp)
	jmp	.L725
.L726:
.LBB17:
	.loc 1 1594 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1595 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L727
	.loc 1 1596 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_replacement
.L727:
.LBE17:
	.loc 1 1592 0
	addl	$1, -16(%ebp)
.L725:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L726
	.loc 1 1598 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	dup_replacements, .-dup_replacements
.globl transfer_replacements
	.type	transfer_replacements, @function
transfer_replacements:
.LFB22:
	.loc 1 1606 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$16, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1609 0
	movl	$0, -8(%ebp)
	jmp	.L732
.L733:
	.loc 1 1610 0
	movl	-8(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	12(%ebp), %eax
	jne	.L734
	.loc 1 1611 0
	movl	-8(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %ecx
	movl	%eax, %edx
	sall	$4, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx,%ecx)
.L734:
	.loc 1 1609 0
	addl	$1, -8(%ebp)
.L732:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L733
	.loc 1 1612 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	transfer_replacements, .-transfer_replacements
.globl remove_address_replacements
	.type	remove_address_replacements, @function
remove_address_replacements:
.LFB23:
	.loc 1 1621 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$172, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1621 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1624 0
	movl	$0, -140(%ebp)
	.loc 1 1626 0
	leal	-136(%ebp), %eax
	movl	%eax, %edx
	movl	$120, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1627 0
	movl	$0, -148(%ebp)
	movl	$0, -144(%ebp)
	jmp	.L739
.L740:
	.loc 1 1629 0
	movl	-148(%ebp), %eax
	leal	replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	loc_mentioned_in_p@PLT
	testl	%eax, %eax
	je	.L741
	.loc 1 1630 0
	movl	-148(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %ecx
	movl	-148(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movzbl	-136(%ebp,%eax), %eax
	orl	$1, %eax
	movb	%al, -136(%ebp,%ecx)
	jmp	.L743
.L741:
	.loc 1 1633 0
	movl	-144(%ebp), %eax
	movl	-148(%ebp), %edx
	leal	replacements@GOTOFF(%ebx), %edi
	movl	%eax, %esi
	sall	$4, %esi
	leal	replacements@GOTOFF(%ebx), %ecx
	sall	$4, %edx
	movl	(%edx,%ecx), %eax
	movl	%eax, (%esi,%edi)
	movl	4(%edx,%ecx), %eax
	movl	%eax, 4(%esi,%edi)
	movl	8(%edx,%ecx), %eax
	movl	%eax, 8(%esi,%edi)
	movl	12(%edx,%ecx), %eax
	movl	%eax, 12(%esi,%edi)
	addl	$1, -144(%ebp)
	.loc 1 1634 0
	movl	-148(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %ecx
	movl	-148(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movzbl	-136(%ebp,%eax), %eax
	orl	$2, %eax
	movb	%al, -136(%ebp,%ecx)
.L743:
	.loc 1 1627 0
	addl	$1, -148(%ebp)
.L739:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -148(%ebp)
	jl	.L740
	.loc 1 1638 0
	movl	-144(%ebp), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 1640 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -148(%ebp)
	jmp	.L745
.L746:
	.loc 1 1642 0
	movl	-148(%ebp), %eax
	movzbl	-136(%ebp,%eax), %eax
	cmpb	$1, %al
	jne	.L747
	.loc 1 1644 0
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	deallocate_reload_reg@PLT
	.loc 1 1645 0
	movl	-148(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	remove_address_replacements@PLT
	.loc 1 1646 0
	movl	-148(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	$0, (%eax,%edx)
	.loc 1 1647 0
	movl	$1, -140(%ebp)
.L747:
	.loc 1 1640 0
	subl	$1, -148(%ebp)
.L745:
	cmpl	$0, -148(%ebp)
	jns	.L746
	.loc 1 1650 0
	movl	-140(%ebp), %eax
	.loc 1 1651 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L751
	call	__stack_chk_fail_local
.L751:
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	remove_address_replacements, .-remove_address_replacements
	.type	combine_reloads, @function
combine_reloads:
.LFB24:
	.loc 1 1667 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%edi
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$60, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1669 0
	movl	$-1, -28(%ebp)
	.loc 1 1670 0
	movl	$-1, -24(%ebp)
	.loc 1 1676 0
	movl	$0, -32(%ebp)
	jmp	.L753
.L754:
	.loc 1 1677 0
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L755
	.loc 1 1679 0
	cmpl	$0, -28(%ebp)
	jns	.L844
	.loc 1 1681 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L755:
	.loc 1 1676 0
	addl	$1, -32(%ebp)
.L753:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jl	.L754
	.loc 1 1684 0
	cmpl	$0, -28(%ebp)
	js	.L844
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L762
	.loc 1 1685 0
	jmp	.L844
.L762:
	.loc 1 1689 0
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	jne	.L844
	.loc 1 1693 0
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	testl	%eax, %eax
	jne	.L844
	.loc 1 1700 0
	movl	$0, -32(%ebp)
	jmp	.L765
.L766:
	.loc 1 1701 0
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L767
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L769
.L767:
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L844
.L769:
	.loc 1 1700 0
	addl	$1, -32(%ebp)
.L765:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jl	.L766
	.loc 1 1708 0
	movl	$0, -32(%ebp)
	jmp	.L771
.L772:
	.loc 1 1709 0
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	je	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	je	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_class_max_nregs@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_class_max_nregs@PLT
	cmpl	%eax, %esi
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L773
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L783
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	sete	-57(%ebp)
	jmp	.L785
.L783:
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L786
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L788
.L786:
	movl	$1, -56(%ebp)
	jmp	.L789
.L788:
	movl	$0, -56(%ebp)
.L789:
	movzbl	-56(%ebp), %eax
	movb	%al, -57(%ebp)
.L785:
	cmpb	$0, -57(%ebp)
	je	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L791
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L793
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L795
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L797
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L797
	movl	$1, -52(%ebp)
	jmp	.L800
.L797:
	movl	$0, -52(%ebp)
.L800:
	movzbl	-52(%ebp), %eax
	testb	%al, %al
	jne	.L791
	jmp	.L793
.L795:
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L801
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L801
	movl	$1, -48(%ebp)
	jmp	.L804
.L801:
	movl	$0, -48(%ebp)
.L804:
	movzbl	-48(%ebp), %eax
	testb	%al, %al
	jne	.L791
.L793:
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L791
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L773
.L791:
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %esi
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reload_inner_reg_of_subreg
	testl	%eax, %eax
	jne	.L773
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	jne	.L808
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L773
.L808:
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L810
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L773
.L810:
.LBB18:
	.loc 1 1760 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%ecx, (%eax)
	.loc 1 1761 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	%ecx, (%eax)
	.loc 1 1762 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	%ecx, (%eax)
	.loc 1 1764 0
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	$0, (%eax)
	.loc 1 1766 0
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$9, (%eax)
	.loc 1 1768 0
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L812
	.loc 1 1770 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	%ecx, (%eax)
	.loc 1 1772 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	%ecx, (%eax)
.L812:
	.loc 1 1783 0
	movl	-32(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L814
	.loc 1 1785 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%ecx, (%eax)
.L814:
	.loc 1 1788 0
	movl	$0, -16(%ebp)
	jmp	.L816
.L817:
	.loc 1 1789 0
	movl	-16(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	-28(%ebp), %eax
	jne	.L818
	.loc 1 1790 0
	movl	-16(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %ecx
	movl	%eax, %edx
	sall	$4, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx,%ecx)
.L818:
	.loc 1 1788 0
	addl	$1, -16(%ebp)
.L816:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L817
	.loc 1 1792 0
	jmp	.L844
.L773:
.LBE18:
	.loc 1 1708 0
	addl	$1, -32(%ebp)
.L771:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jl	.L772
	.loc 1 1801 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	cmpl	$-1, %eax
	je	.L844
	.loc 1 1804 0
	movl	$1, -32(%ebp)
	jmp	.L823
.L824:
	.loc 1 1805 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	je	.L844
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L827
	.loc 1 1807 0
	jmp	.L844
.L827:
	.loc 1 1804 0
	addl	$1, -32(%ebp)
.L823:
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	jg	.L824
	.loc 1 1812 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L829
.L830:
	.loc 1 1813 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L831
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L831
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L831
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L831
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %ecx, %eax
	addl	%edx, %eax
	movzbl	(%eax,%esi), %eax
	testb	%al, %al
	je	.L831
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L847
	movl	%edx, %eax
	xorl	%edx, %edx
.L847:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L831
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	ja	.L831
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	je	.L839
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L846
	movl	%edx, %eax
	xorl	%edx, %edx
.L846:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L831
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	je	.L839
	movl	-24(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L845
	movl	%edx, %eax
	xorl	%edx, %edx
.L845:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L831
.L839:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L831
	.loc 1 1835 0
	movl	-28(%ebp), %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	%ecx, (%eax)
	.loc 1 1838 0
	jmp	.L844
.L831:
	.loc 1 1812 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L829:
	cmpl	$0, -20(%ebp)
	jne	.L830
.L844:
	.loc 1 1840 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	combine_reloads, .-combine_reloads
	.type	find_dummy_reload, @function
find_dummy_reload:
.LFB25:
	.loc 1 1871 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%edi
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$124, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1872 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1873 0
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1874 0
	movl	$0, -52(%ebp)
	.loc 1 1875 0
	movl	$0, -48(%ebp)
	.loc 1 1876 0
	movl	$0, -44(%ebp)
	.loc 1 1880 0
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	je	.L860
	movl	28(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -116(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L851
	movl	$8, -112(%ebp)
	jmp	.L853
.L851:
	movl	$4, -112(%ebp)
.L853:
	movl	-112(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L854
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L856
	movl	$8, -104(%ebp)
	jmp	.L858
.L856:
	movl	$4, -104(%ebp)
.L858:
	movl	-104(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	jle	.L860
.L854:
	.loc 1 1883 0
	movl	$0, -100(%ebp)
	jmp	.L859
.L861:
	.loc 1 1891 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L862
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L862
	.loc 1 1893 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
.L862:
	.loc 1 1897 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
.L860:
	.loc 1 1889 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L861
	.loc 1 1899 0
	jmp	.L866
.L867:
	.loc 1 1901 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L868
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L868
	.loc 1 1903 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-60(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -52(%ebp)
.L868:
	.loc 1 1907 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L866:
	.loc 1 1899 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L867
	.loc 1 1912 0
	cmpl	$24, 32(%ebp)
	je	.L872
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L874
	cmpl	$5, 32(%ebp)
	je	.L876
	movl	32(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L878
.L876:
	movl	$2, -88(%ebp)
.L878:
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L879
.L874:
	movl	32(%ebp), %eax
	movl	%eax, -92(%ebp)
.L879:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L880
.L872:
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L881
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L883
.L881:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L884
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L886
	movl	$2, -76(%ebp)
	jmp	.L888
.L886:
	movl	$5, -76(%ebp)
.L888:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L889
.L884:
	movl	$6, -80(%ebp)
.L889:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L890
.L883:
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L891
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L893
.L891:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L894
	movl	$2, -68(%ebp)
	jmp	.L896
.L894:
	movl	$5, -68(%ebp)
.L896:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L897
.L893:
	movl	32(%ebp), %eax
	movl	%eax, -72(%ebp)
.L897:
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
.L890:
	movl	-84(%ebp), %eax
	movl	%eax, -96(%ebp)
.L880:
	movl	-96(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1915 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L898
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L898
.LBB19:
	.loc 1 1918 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1919 0
	movl	-40(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1931 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1932 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1934 0
	cmpl	$175, -40(%ebp)
	ja	.L901
	movl	28(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L901
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	-40(%ebp), %ecx
	addl	%eax, %ecx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L901
.LBB20:
	.loc 1 1941 0
	movl	$0, -28(%ebp)
	jmp	.L905
.L906:
	.loc 1 1942 0
	movl	32(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edi
	movl	(%esi,%eax,8), %esi
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L940
	movl	%edx, %eax
	xorl	%edx, %edx
.L940:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L907
	.loc 1 1941 0
	addl	$1, -28(%ebp)
.L905:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L906
.L907:
	.loc 1 1946 0
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L901
	.loc 1 1948 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L910
	.loc 1 1949 0
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L901
.L910:
	.loc 1 1951 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -44(%ebp)
.L901:
.LBE20:
	.loc 1 1955 0
	movl	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
.L898:
.LBE19:
	.loc 1 1964 0
	movl	hard_regs_live_known@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L912
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L912
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L912
	cmpl	$0, -44(%ebp)
	je	.L916
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L912
.L916:
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L912
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L912
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L920
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	jmp	.L922
.L920:
	movl	28(%ebp), %eax
	movl	%eax, -64(%ebp)
.L922:
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %eax
	movl	4(%eax), %esi
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %ecx, %eax
	addl	%edx, %eax
	movzbl	(%eax,%esi), %eax
	testb	%al, %al
	je	.L912
.LBB21:
	.loc 1 1979 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1980 0
	movl	-24(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1982 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L912
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	hard_reg_set_here_p
	testl	%eax, %eax
	jne	.L912
	cmpl	$0, 40(%ebp)
	je	.L926
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %ecx
	addl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L912
.L926:
.LBB22:
	.loc 1 1991 0
	movl	$0, -16(%ebp)
	jmp	.L928
.L929:
	.loc 1 1992 0
	movl	32(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edi
	movl	(%esi,%eax,8), %esi
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L939
	movl	%edx, %eax
	xorl	%edx, %edx
.L939:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L930
	.loc 1 1991 0
	addl	$1, -16(%ebp)
.L928:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L929
.L930:
	.loc 1 1996 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L912
	.loc 1 2001 0
	cmpl	$0, 36(%ebp)
	js	.L933
	movl	-44(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L933
	.loc 1 2002 0
	movl	36(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	$0, (%eax)
.L933:
	.loc 1 2003 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L936
	.loc 1 2004 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L912
.L936:
	.loc 1 2006 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -44(%ebp)
.L912:
.LBE22:
.LBE21:
	.loc 1 2011 0
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
.L859:
	movl	-100(%ebp), %eax
	.loc 1 2012 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	find_dummy_reload, .-find_dummy_reload
.globl earlyclobber_operand_p
	.type	earlyclobber_operand_p, @function
earlyclobber_operand_p:
.LFB26:
	.loc 1 2023 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	subl	$20, %esp
.LCFI60:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2026 0
	movl	$0, -4(%ebp)
	jmp	.L942
.L943:
	.loc 1 2027 0
	movl	-4(%ebp), %eax
	movl	reload_earlyclobbers@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L944
	.loc 1 2028 0
	movl	$1, -20(%ebp)
	jmp	.L946
.L944:
	.loc 1 2026 0
	addl	$1, -4(%ebp)
.L942:
	movl	n_earlyclobbers@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jl	.L943
	.loc 1 2030 0
	movl	$0, -20(%ebp)
.L946:
	movl	-20(%ebp), %eax
	.loc 1 2031 0
	leave
	ret
.LFE26:
	.size	earlyclobber_operand_p, .-earlyclobber_operand_p
	.type	hard_reg_set_here_p, @function
hard_reg_set_here_p:
.LFB27:
	.loc 1 2042 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$36, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2043 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L950
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L952
.L950:
.LBB23:
	.loc 1 2045 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2047 0
	jmp	.L953
.L954:
	.loc 1 2048 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L953:
	.loc 1 2047 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L954
	.loc 1 2049 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L961
.LBB24:
	.loc 1 2051 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2054 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L961
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jbe	.L961
	.loc 1 2056 0
	movl	$1, -24(%ebp)
	jmp	.L960
.L952:
.LBE24:
.LBE23:
	.loc 1 2059 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L961
.LBB25:
	.loc 1 2061 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2063 0
	jmp	.L963
.L964:
	.loc 1 2064 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hard_reg_set_here_p
	testl	%eax, %eax
	je	.L965
	.loc 1 2065 0
	movl	$1, -24(%ebp)
	jmp	.L960
.L965:
	.loc 1 2063 0
	subl	$1, -8(%ebp)
.L963:
	cmpl	$0, -8(%ebp)
	jns	.L964
.L961:
.LBE25:
	.loc 1 2068 0
	movl	$0, -24(%ebp)
.L960:
	movl	-24(%ebp), %eax
	.loc 1 2069 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	hard_reg_set_here_p, .-hard_reg_set_here_p
.globl strict_memory_address_p
	.type	strict_memory_address_p, @function
strict_memory_address_p:
.LFB28:
	.loc 1 2079 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$20, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2080 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_legitimate_address_p@PLT
	testl	%eax, %eax
	jne	.L969
	.loc 1 2081 0
	movl	$0, -8(%ebp)
	jmp	.L971
.L969:
	.loc 1 2084 0
	movl	$1, -8(%ebp)
.L971:
	movl	-8(%ebp), %eax
	.loc 1 2085 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	strict_memory_address_p, .-strict_memory_address_p
	.section	.rodata
	.type	__FUNCTION__.14800, @object
	.size	__FUNCTION__.14800, 17
__FUNCTION__.14800:
	.string	"operands_match_p"
	.text
.globl operands_match_p
	.type	operands_match_p, @function
operands_match_p:
.LFB29:
	.loc 1 2105 0
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
	subl	$92, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2111 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L974
	.loc 1 2112 0
	movl	$1, -88(%ebp)
	jmp	.L976
.L974:
	.loc 1 2113 0
	cmpl	$71, -36(%ebp)
	je	.L977
	cmpl	$73, -36(%ebp)
	jne	.L979
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L979
.L977:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L981
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L979
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L979
.L981:
.LBB26:
	.loc 1 2119 0
	cmpl	$73, -36(%ebp)
	jne	.L984
	.loc 1 2121 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2122 0
	cmpl	$175, -40(%ebp)
	jg	.L986
	.loc 1 2124 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L988
.L984:
	.loc 1 2130 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L988:
	.loc 1 2132 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L989
	.loc 1 2134 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2135 0
	cmpl	$175, -24(%ebp)
	jg	.L986
	.loc 1 2137 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L992
.L989:
	.loc 1 2143 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L992:
	.loc 1 2148 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L993
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L995
	movl	$8, -80(%ebp)
	jmp	.L997
.L995:
	movl	$4, -80(%ebp)
.L997:
	movl	-80(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jle	.L993
	cmpl	$175, -40(%ebp)
	jg	.L993
	.loc 1 2150 0
	movl	8(%ebp), %eax
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
	je	.L1000
	movl	$8, -72(%ebp)
	jmp	.L1002
.L1000:
	movl	$4, -72(%ebp)
.L1002:
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-72(%ebp)
	addl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
.L993:
	.loc 1 2151 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1003
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1005
	movl	$8, -64(%ebp)
	jmp	.L1007
.L1005:
	movl	$4, -64(%ebp)
.L1007:
	movl	-64(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jle	.L1003
	cmpl	$175, -24(%ebp)
	jg	.L1003
	.loc 1 2153 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1010
	movl	$8, -56(%ebp)
	jmp	.L1012
.L1010:
	movl	$4, -56(%ebp)
.L1012:
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	addl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
.L1003:
	.loc 1 2155 0
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	jmp	.L976
.L979:
.LBE26:
	.loc 1 2162 0
	cmpl	$108, -36(%ebp)
	je	.L1013
	cmpl	$109, -36(%ebp)
	je	.L1013
	cmpl	$111, -36(%ebp)
	jne	.L1016
.L1013:
	.loc 1 2163 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	operands_match_p@PLT
	movl	%eax, -88(%ebp)
	jmp	.L976
.L1016:
	.loc 1 2170 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L1017
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$107, %ax
	je	.L1017
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$110, %ax
	jne	.L986
.L1017:
	.loc 1 2172 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	je	.L1020
	movl	$2, -52(%ebp)
	jmp	.L1022
.L1020:
	movl	$0, -52(%ebp)
.L1022:
	movl	-52(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L976
.L986:
	.loc 1 2178 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-36(%ebp), %eax
	je	.L1023
	.loc 1 2179 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1023:
	.loc 1 2180 0
	cmpl	$77, -36(%ebp)
	jne	.L1025
	.loc 1 2181 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	jmp	.L976
.L1025:
	.loc 1 2182 0
	cmpl	$78, -36(%ebp)
	jne	.L1027
	.loc 1 2183 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	jmp	.L976
.L1027:
	.loc 1 2187 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L1029
	.loc 1 2188 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1029:
	.loc 1 2193 0
	movl	$0, -28(%ebp)
	.loc 1 2194 0
	movl	-36(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2195 0
	movl	-36(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.L1031
.L1032:
.LBB27:
	.loc 1 2198 0
	movl	-40(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$101, -48(%ebp)
	je	.L1036
	cmpl	$101, -48(%ebp)
	jg	.L1039
	cmpl	$48, -48(%ebp)
	je	.L1042
	cmpl	$69, -48(%ebp)
	je	.L1035
	jmp	.L1033
.L1039:
	cmpl	$105, -48(%ebp)
	je	.L1037
	cmpl	$119, -48(%ebp)
	je	.L1038
	jmp	.L1033
.L1038:
	.loc 1 2201 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1042
	.loc 1 2202 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1037:
	.loc 1 2206 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L1042
	.loc 1 2207 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1036:
	.loc 1 2211 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2212 0
	cmpl	$0, -20(%ebp)
	jne	.L1045
	.loc 1 2213 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1045:
	.loc 1 2216 0
	cmpl	$2, -20(%ebp)
	jne	.L1042
	.loc 1 2217 0
	movl	$1, -28(%ebp)
	.loc 1 2218 0
	jmp	.L1042
.L1035:
	.loc 1 2224 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L1049
	.loc 1 2225 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1049:
	.loc 1 2226 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L1051
.L1052:
	.loc 1 2228 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2229 0
	cmpl	$0, -20(%ebp)
	jne	.L1053
	.loc 1 2230 0
	movl	$0, -88(%ebp)
	jmp	.L976
.L1053:
	.loc 1 2231 0
	cmpl	$2, -20(%ebp)
	jne	.L1055
	.loc 1 2232 0
	movl	$1, -28(%ebp)
.L1055:
	.loc 1 2226 0
	subl	$1, -16(%ebp)
.L1051:
	cmpl	$0, -16(%ebp)
	jns	.L1052
	.loc 1 2234 0
	jmp	.L1042
.L1033:
	.loc 1 2240 0
	leal	__FUNCTION__.14800@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2240, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1042:
.LBE27:
	.loc 1 2195 0
	subl	$1, -40(%ebp)
.L1031:
	cmpl	$0, -40(%ebp)
	jns	.L1032
	.loc 1 2243 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -88(%ebp)
.L976:
	movl	-88(%ebp), %eax
	.loc 1 2244 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	operands_match_p, .-operands_match_p
	.section	.rodata
	.type	__FUNCTION__.15017, @object
	.size	__FUNCTION__.15017, 10
__FUNCTION__.15017:
	.string	"decompose"
	.text
	.type	decompose, @function
decompose:
.LFB30:
	.loc 1 2257 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%edi
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$76, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2259 0
	movl	$0, -28(%ebp)
	.loc 1 2261 0
	movl	$0, -56(%ebp)
	.loc 1 2262 0
	movl	$0, -52(%ebp)
	.loc 1 2263 0
	movl	$0, -48(%ebp)
	.loc 1 2264 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1061
.LBB28:
	.loc 1 2266 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2267 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2269 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L1063
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$107, %ax
	je	.L1063
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$108, %ax
	je	.L1063
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$109, %ax
	jne	.L1067
.L1063:
	.loc 1 2272 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2273 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	negl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2274 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 2275 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2276 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	jmp	.L1060
.L1067:
	.loc 1 2279 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$110, %ax
	je	.L1069
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$111, %ax
	jne	.L1071
.L1069:
	.loc 1 2281 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1071
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1071
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1074
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1071
.L1074:
	.loc 1 2285 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2286 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2287 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 2288 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2289 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	jmp	.L1060
.L1071:
	.loc 1 2293 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1082
	.loc 1 2295 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2296 0
	movl	$1, -28(%ebp)
.L1082:
	.loc 1 2298 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1084
	.loc 1 2300 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1086
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1094
.L1086:
	.loc 1 2302 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2303 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2300 0
	jmp	.L1084
.L1094:
	.loc 1 2305 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1095
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1084
.L1095:
	.loc 1 2307 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2308 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L1084:
	.loc 1 2312 0
	cmpl	$0, -20(%ebp)
	jne	.L1103
	.loc 1 2314 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2315 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -20(%ebp)
.L1103:
	.loc 1 2317 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1105
	.loc 1 2318 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L1105:
	.loc 1 2319 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1107
	.loc 1 2321 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1109
	.loc 1 2323 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2324 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1114
.L1109:
	.loc 1 2326 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1112
	.loc 1 2328 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2329 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1114
.L1112:
	.loc 1 2333 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2334 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1114
.L1107:
	.loc 1 2337 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1114
	.loc 1 2339 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2340 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -20(%ebp)
.L1114:
	.loc 1 2343 0
	cmpl	$0, -28(%ebp)
	je	.L1116
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1116
	.loc 1 2344 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$68, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -24(%ebp)
.L1116:
	.loc 1 2346 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1119
	.loc 1 2347 0
	leal	__FUNCTION__.15017@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2347, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1119:
	.loc 1 2349 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2350 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 2351 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2352 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
	jmp	.L1060
.L1061:
.LBE28:
	.loc 1 2354 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1121
	.loc 1 2356 0
	movl	$1, -56(%ebp)
	.loc 1 2357 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2358 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	testl	%edx, %edx
	jns	.L1123
	.loc 1 2361 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2362 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	jmp	.L1126
.L1123:
	.loc 1 2366 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	jmp	.L1126
.L1121:
	.loc 1 2368 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1127
	.loc 1 2370 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1129
	.loc 1 2372 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decompose
	subl	$4, %esp
	jmp	.L1060
.L1129:
	.loc 1 2373 0
	movl	$1, -56(%ebp)
	.loc 1 2374 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2375 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	testl	%edx, %edx
	jns	.L1131
	.loc 1 2376 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	decompose
	subl	$4, %esp
	jmp	.L1060
.L1131:
	.loc 1 2379 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	jmp	.L1126
.L1127:
	.loc 1 2381 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1133
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	jne	.L1142
.L1133:
	.loc 1 2384 0
	movl	$1, -52(%ebp)
	.loc 1 2381 0
	jmp	.L1126
.L1142:
	.loc 1 2386 0
	leal	__FUNCTION__.15017@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2386, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1126:
	.loc 1 2387 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 20(%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 24(%edx)
.L1060:
	.loc 1 2388 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE30:
	.size	decompose, .-decompose
	.section	.rodata
	.type	__FUNCTION__.15289, @object
	.size	__FUNCTION__.15289, 9
__FUNCTION__.15289:
	.string	"immune_p"
	.text
	.type	immune_p, @function
immune_p:
.LFB31:
	.loc 1 2397 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$100, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2400 0
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	.L1145
	.loc 1 2401 0
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	jmp	.L1147
.L1145:
	.loc 1 2402 0
	movl	20(%ebp), %eax
	testl	%eax, %eax
	je	.L1148
	.loc 1 2403 0
	movl	$1, -80(%ebp)
	jmp	.L1147
.L1148:
	.loc 1 2405 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1150
	.loc 1 2406 0
	leal	__FUNCTION__.15289@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2406, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1150:
	.loc 1 2408 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1152
	.loc 1 2409 0
	movl	$1, -80(%ebp)
	jmp	.L1147
.L1152:
	.loc 1 2411 0
	leal	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decompose
	subl	$4, %esp
	.loc 1 2413 0
	movl	24(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1154
	.loc 1 2416 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1156
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1164
.L1156:
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1165
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1164
.L1165:
	.loc 1 2417 0
	movl	$1, -80(%ebp)
	jmp	.L1147
.L1164:
	.loc 1 2419 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1173
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1181
.L1173:
	movl	24(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	12(%edx), %edx
	cmpl	%edx, %eax
	je	.L1182
	movl	24(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	16(%edx), %edx
	cmpl	%edx, %eax
	je	.L1182
	movl	24(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	8(%edx), %edx
	cmpl	%edx, %eax
	jne	.L1181
.L1182:
	.loc 1 2423 0
	movl	$1, -80(%ebp)
	jmp	.L1147
.L1181:
	.loc 1 2424 0
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1185
	movl	24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1193
.L1185:
	movl	-28(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	12(%edx), %edx
	cmpl	%edx, %eax
	je	.L1194
	movl	-28(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	16(%edx), %edx
	cmpl	%edx, %eax
	je	.L1194
	movl	-28(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	8(%edx), %edx
	cmpl	%edx, %eax
	jne	.L1193
.L1194:
	.loc 1 2428 0
	movl	$1, -80(%ebp)
	jmp	.L1147
.L1193:
	.loc 1 2430 0
	movl	$0, -80(%ebp)
	jmp	.L1147
.L1154:
	.loc 1 2433 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jg	.L1197
	movl	-60(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L1199
	movl	-64(%ebp), %edx
	cmpl	%edx, -72(%ebp)
	jae	.L1197
.L1199:
	movl	28(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	jl	.L1200
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jg	.L1197
	movl	-48(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jb	.L1200
.L1197:
	movl	$1, -76(%ebp)
	jmp	.L1202
.L1200:
	movl	$0, -76(%ebp)
.L1202:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1147:
	movl	-80(%ebp), %eax
	.loc 1 2434 0
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE31:
	.size	immune_p, .-immune_p
.globl safe_from_earlyclobber
	.type	safe_from_earlyclobber, @function
safe_from_earlyclobber:
.LFB32:
	.loc 1 2441 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	subl	$72, %esp
.LCFI87:
	.loc 1 2444 0
	leal	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decompose
	subl	$4, %esp
	.loc 1 2445 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	immune_p
	.loc 1 2446 0
	leave
	ret
.LFE32:
	.size	safe_from_earlyclobber, .-safe_from_earlyclobber
	.section	.rodata
	.type	__FUNCTION__.15507, @object
	.size	__FUNCTION__.15507, 13
__FUNCTION__.15507:
	.string	"find_reloads"
	.align 4
.LC3:
	.string	"`&' constraint used with no register class"
	.align 4
.LC4:
	.string	"unable to generate reloads for:"
	.align 4
.LC5:
	.string	"inconsistent operand constraints in an `asm'"
	.text
.globl find_reloads
	.type	find_reloads, @function
find_reloads:
.LFB33:
	.loc 1 2476 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%edi
.LCFI90:
	pushl	%esi
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$3980, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -3476(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -3480(%ebp)
	.loc 1 2476 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 2497 0
	movl	$0, -504(%ebp)
	movl	$0, -500(%ebp)
	.loc 1 2508 0
	movl	$0, -484(%ebp)
	.loc 1 2521 0
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -468(%ebp)
	.loc 1 2522 0
	movl	-3476(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1207
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1209
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -3936(%ebp)
	jmp	.L1211
.L1209:
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -3936(%ebp)
.L1211:
	movl	-3936(%ebp), %edx
	movl	%edx, -3940(%ebp)
	jmp	.L1212
.L1207:
	movl	$0, -3940(%ebp)
.L1212:
	movl	-3940(%ebp), %ecx
	movl	%ecx, -464(%ebp)
	.loc 1 2523 0
	movl	$0, -460(%ebp)
	.loc 1 2525 0
	movl	$0, -452(%ebp)
	.loc 1 2527 0
	movl	-3476(%ebp), %eax
	movl	%eax, this_insn@GOTOFF(%ebx)
	.loc 1 2528 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2529 0
	movl	$0, n_replacements@GOTOFF(%ebx)
	.loc 1 2530 0
	movl	n_earlyclobbers@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2531 0
	movl	12(%ebp), %eax
	movl	%eax, replace_reloads@GOTOFF(%ebx)
	.loc 1 2532 0
	movl	20(%ebp), %eax
	movl	%eax, hard_regs_live_known@GOTOFF(%ebx)
	.loc 1 2533 0
	movl	-3480(%ebp), %eax
	movl	%eax, static_reload_reg_p@GOTOFF(%ebx)
	.loc 1 2538 0
	movl	-3476(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1213
	movl	-3476(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1215
.L1213:
	.loc 1 2539 0
	movl	$1, -500(%ebp)
.L1215:
	.loc 1 2558 0
	movl	-468(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1216
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1216
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1216
	movl	-468(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1216
	movl	-468(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1216
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-468(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-468(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_register_move_cost@PLT
	cmpl	$2, %eax
	jne	.L1216
	.loc 1 2566 0
	movl	$0, -3932(%ebp)
	jmp	.L1223
.L1216:
	.loc 1 2568 0
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 2570 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %edx
	movl	reload_n_operands@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	reload_n_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -508(%ebp)
	.loc 1 2571 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -496(%ebp)
	.loc 1 2574 0
	cmpl	$0, -508(%ebp)
	je	.L1224
	cmpl	$0, -496(%ebp)
	jne	.L1226
.L1224:
	.loc 1 2575 0
	movl	$0, -3932(%ebp)
	jmp	.L1223
.L1226:
	.loc 1 2577 0
	movl	-3476(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -520(%ebp)
	.loc 1 2578 0
	movl	-520(%ebp), %eax
	shrl	$31, %eax
	movl	%eax, this_insn_is_asm@GOTOFF(%ebx)
	.loc 1 2580 0
	movl	-508(%ebp), %eax
	leal	0(,%eax,4), %ecx
	leal	-2324(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	%eax, %edi
	leal	360(%edx), %esi
	cld
	rep
	movsb
	.loc 1 2582 0
	movl	-508(%ebp), %eax
	leal	0(,%eax,4), %ecx
	leal	-644(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	%eax, %edi
	leal	240(%edx), %esi
	cld
	rep
	movsb
	.loc 1 2584 0
	movl	$-1, -472(%ebp)
	.loc 1 2591 0
	movl	$0, -516(%ebp)
	jmp	.L1227
.L1228:
.LBB29:
	.loc 1 2596 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -2204(%ebp,%ecx,4)
	.loc 1 2597 0
	movl	-516(%ebp), %eax
	movl	-644(%ebp,%eax,4), %eax
	movl	%eax, -524(%ebp)
	.loc 1 2599 0
	movl	-516(%ebp), %eax
	movl	$0, -1364(%ebp,%eax,4)
	.loc 1 2604 0
	jmp	.L2130
.L1230:
	.loc 1 2606 0
	cmpl	$61, -448(%ebp)
	jne	.L1231
	.loc 1 2607 0
	movl	-516(%ebp), %eax
	movl	$2, -1364(%ebp,%eax,4)
	jmp	.L1229
.L1231:
	.loc 1 2608 0
	cmpl	$43, -448(%ebp)
	jne	.L1233
	.loc 1 2609 0
	movl	-516(%ebp), %eax
	movl	$1, -1364(%ebp,%eax,4)
	jmp	.L1229
.L1233:
	.loc 1 2610 0
	cmpl	$37, -448(%ebp)
	jne	.L1235
	.loc 1 2613 0
	movl	-508(%ebp), %eax
	subl	$1, %eax
	cmpl	-516(%ebp), %eax
	jne	.L1237
	.loc 1 2614 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2614, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1237:
	.loc 1 2616 0
	movl	-516(%ebp), %eax
	movl	%eax, -472(%ebp)
	jmp	.L1229
.L1235:
	.loc 1 2618 0
	movzbl	-448(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1229
	.loc 1 2620 0
	movl	-524(%ebp), %eax
	leal	-1(%eax), %edx
	movl	$10, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strtoul@PLT
	movl	%eax, -448(%ebp)
	.loc 1 2622 0
	movl	-448(%ebp), %esi
	movl	-516(%ebp), %edi
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-448(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, %ecx
	movl	%esi, %eax
	leal	(%eax,%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	addl	%edi, %eax
	subl	$3448, %eax
	movb	%cl, (%eax)
	.loc 1 2627 0
	movl	-448(%ebp), %eax
	cmpl	-516(%ebp), %eax
	jne	.L1240
	.loc 1 2628 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2628, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1240:
	.loc 1 2632 0
	cmpl	$0, -472(%ebp)
	js	.L1229
	.loc 1 2634 0
	movl	-448(%ebp), %eax
	cmpl	-472(%ebp), %eax
	je	.L1243
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	-448(%ebp), %eax
	jne	.L1245
.L1243:
.LBB30:
	.loc 1 2636 0
	movl	-448(%ebp), %eax
	cmpl	-472(%ebp), %eax
	jne	.L1246
	movl	$1, -3928(%ebp)
	jmp	.L1248
.L1246:
	movl	$-1, -3928(%ebp)
.L1248:
	movl	-3928(%ebp), %eax
	addl	-448(%ebp), %eax
	movl	%eax, -444(%ebp)
	.loc 1 2637 0
	movl	-444(%ebp), %esi
	movl	-516(%ebp), %edi
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-444(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, %ecx
	movl	%esi, %eax
	leal	(%eax,%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	addl	%edi, %eax
	subl	$3448, %eax
	movb	%cl, (%eax)
.L1245:
.LBE30:
	.loc 1 2641 0
	movl	-516(%ebp), %eax
	cmpl	-472(%ebp), %eax
	je	.L1249
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	-516(%ebp), %eax
	jne	.L1229
.L1249:
.LBB31:
	.loc 1 2643 0
	movl	-516(%ebp), %eax
	cmpl	-472(%ebp), %eax
	jne	.L1251
	movl	$1, -3924(%ebp)
	jmp	.L1253
.L1251:
	movl	$-1, -3924(%ebp)
.L1253:
	movl	-3924(%ebp), %eax
	addl	-516(%ebp), %eax
	movl	%eax, -440(%ebp)
	.loc 1 2644 0
	movl	-448(%ebp), %esi
	movl	-440(%ebp), %edi
	movl	-440(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-448(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, %ecx
	movl	%esi, %eax
	leal	(%eax,%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	addl	%edi, %eax
	subl	$3448, %eax
	movb	%cl, (%eax)
.L1229:
.L2130:
.LBE31:
	.loc 1 2604 0
	movl	-524(%ebp), %ecx
	movzbl	(%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -448(%ebp)
	cmpl	$0, -448(%ebp)
	setne	%dl
	leal	1(%ecx), %eax
	movl	%eax, -524(%ebp)
	testb	%dl, %dl
	jne	.L1230
.LBE29:
	.loc 1 2591 0
	addl	$1, -516(%ebp)
.L1227:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1228
	.loc 1 2664 0
	movl	$0, -516(%ebp)
	jmp	.L1256
.L1257:
.LBB32:
	.loc 1 2666 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -436(%ebp)
	.loc 1 2668 0
	movl	-516(%ebp), %eax
	movl	$0, -884(%ebp,%eax,4)
	.loc 1 2669 0
	movl	-516(%ebp), %eax
	movl	$0, -1004(%ebp,%eax,4)
	.loc 1 2670 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3920(%ebp)
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1258
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1260
	movl	$1, -3912(%ebp)
	jmp	.L1262
.L1260:
	movl	$9, -3912(%ebp)
.L1262:
	movl	-3912(%ebp), %eax
	movl	%eax, -3916(%ebp)
	jmp	.L1263
.L1258:
	movl	$0, -3916(%ebp)
.L1263:
	movl	-3916(%ebp), %ecx
	movl	-3920(%ebp), %edx
	movl	%ecx, -1124(%ebp,%edx,4)
	.loc 1 2673 0
	movl	-516(%ebp), %eax
	movl	%eax, -3908(%ebp)
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1264
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1266
	movl	$5, -3900(%ebp)
	jmp	.L1268
.L1266:
	movl	$9, -3900(%ebp)
.L1268:
	movl	-3900(%ebp), %edx
	movl	%edx, -3904(%ebp)
	jmp	.L1269
.L1264:
	movl	$3, -3904(%ebp)
.L1269:
	movl	-3904(%ebp), %eax
	movl	-3908(%ebp), %ecx
	movl	%eax, -1244(%ebp,%ecx,4)
	.loc 1 2678 0
	movl	-516(%ebp), %eax
	movl	-644(%ebp,%eax,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1270
	.loc 1 2681 0
	movl	-516(%ebp), %eax
	movl	-644(%ebp,%eax,4), %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L1272
	.loc 1 2684 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	-1124(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edi
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3896(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	360(%eax,%edx,4), %edx
	movl	-3476(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	-3896(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_address
	movl	%eax, -1004(%ebp,%esi,4)
	.loc 1 2692 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$111, %al
	je	.L1274
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1276
.L1274:
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L1277
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1276
.L1277:
	.loc 1 2697 0
	movl	-3476(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2698 0
	movl	-3480(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads@PLT
	movl	%eax, -452(%ebp)
	.loc 1 2700 0
	movl	-452(%ebp), %eax
	movl	%eax, -3932(%ebp)
	jmp	.L1223
.L1276:
	.loc 1 2703 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 2704 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -2204(%ebp,%ecx,4)
	.loc 1 2708 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -2324(%ebp,%ecx,4)
	jmp	.L1270
.L1272:
	.loc 1 2710 0
	cmpl	$76, -436(%ebp)
	jne	.L1279
	.loc 1 2712 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	-1244(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	leal	4(%eax), %edi
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -3892(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3888(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-3476(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	-3892(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-3888(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_address
	movl	%eax, -884(%ebp,%esi,4)
	.loc 1 2718 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 2719 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -2204(%ebp,%ecx,4)
	jmp	.L1270
.L1279:
	.loc 1 2721 0
	cmpl	$73, -436(%ebp)
	jne	.L1281
.LBB33:
	.loc 1 2723 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -432(%ebp)
	.loc 1 2730 0
	movl	-516(%ebp), %eax
	sall	$2, %eax
	leal	-884(%ebp), %edx
	movl	%edx, -3884(%ebp)
	addl	%eax, -3884(%ebp)
	cmpl	$0, -464(%ebp)
	je	.L1283
	movl	-464(%ebp), %ecx
	addl	$4, %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L1283
	movl	$1, -3880(%ebp)
	jmp	.L1286
.L1283:
	movl	$0, -3880(%ebp)
.L1286:
	movl	-516(%ebp), %eax
	movl	-1244(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-3884(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-3880(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_toplev
	movl	%eax, -428(%ebp)
	.loc 1 2737 0
	cmpl	$0, 12(%ebp)
	je	.L1287
	movl	-428(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1287
	movl	-432(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1287
	movl	-432(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-428(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L1287
	.loc 1 2742 0
	movl	-432(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-432(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movl	%esi, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
.L1287:
	.loc 1 2746 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %ecx
	movl	recog_data@GOT(%ebx), %edx
	movl	-428(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -2204(%ebp,%esi,4)
	jmp	.L1270
.L1281:
.LBE33:
	.loc 1 2748 0
	cmpl	$85, -436(%ebp)
	je	.L1292
	movl	-436(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L1294
.L1292:
	.loc 1 2752 0
	movl	-516(%ebp), %edi
	movl	-516(%ebp), %edx
	movl	%edx, -3876(%ebp)
	movl	-516(%ebp), %eax
	sall	$2, %eax
	leal	-884(%ebp), %edx
	addl	%eax, %edx
	movl	-516(%ebp), %eax
	movl	-1244(%ebp,%eax,4), %esi
	movl	-516(%ebp), %ecx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%ecx,4), %ecx
	movl	%edx, 24(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	find_reloads_toplev
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	-3876(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	recog_data@GOT(%ebx), %eax
	movl	-3876(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -2204(%ebp,%edi,4)
	.loc 1 2748 0
	jmp	.L1270
.L1294:
	.loc 1 2756 0
	cmpl	$71, -436(%ebp)
	jne	.L1270
.LBB34:
	.loc 1 2764 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -424(%ebp)
	.loc 1 2765 0
	movl	-424(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1296
	cmpl	$0, -464(%ebp)
	je	.L1298
	movl	-464(%ebp), %ecx
	addl	$4, %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L1296
.L1298:
	.loc 1 2771 0
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1300
	.loc 1 2772 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -2324(%ebp,%ecx,4)
.L1300:
	.loc 1 2774 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %ecx
	movl	-424(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -2204(%ebp,%esi,4)
.L1296:
	.loc 1 2777 0
	movl	-424(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1270
	movl	-424(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1303
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1270
.L1303:
	.loc 1 2781 0
	movl	-516(%ebp), %edi
	movl	-516(%ebp), %ecx
	movl	%ecx, -3872(%ebp)
	movl	-516(%ebp), %eax
	sall	$2, %eax
	leal	-884(%ebp), %edx
	addl	%eax, %edx
	movl	-516(%ebp), %eax
	movl	-1244(%ebp,%eax,4), %esi
	movl	-516(%ebp), %ecx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%ecx,4), %ecx
	movl	%edx, 24(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	find_reloads_toplev
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	-3872(%ebp), %ecx
	movl	%edx, (%eax,%ecx,4)
	movl	recog_data@GOT(%ebx), %eax
	movl	-3872(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -2204(%ebp,%edi,4)
.L1270:
.LBE34:
	.loc 1 2788 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -436(%ebp)
	.loc 1 2789 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3868(%ebp)
	cmpl	$71, -436(%ebp)
	jne	.L1305
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1305
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -3864(%ebp)
	jmp	.L1308
.L1305:
	movl	$0, -3864(%ebp)
.L1308:
	movl	-3864(%ebp), %edx
	movl	-3868(%ebp), %eax
	movl	%edx, -764(%ebp,%eax,4)
	.loc 1 2794 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3860(%ebp)
	cmpl	$71, -436(%ebp)
	jne	.L1309
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1309
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	testl	%eax, %eax
	jne	.L1309
	movl	$1, -3856(%ebp)
	jmp	.L1313
.L1309:
	movl	$0, -3856(%ebp)
.L1313:
	movzbl	-3856(%ebp), %eax
	movl	-3860(%ebp), %edx
	movb	%al, -50(%ebp,%edx)
.LBE32:
	.loc 1 2664 0
	addl	$1, -516(%ebp)
.L1256:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1257
	.loc 1 2802 0
	cmpl	$0, -464(%ebp)
	je	.L1315
	cmpl	$1, -508(%ebp)
	jle	.L1315
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-464(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1315
	movl	recog_data@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-464(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1315
	.loc 1 2805 0
	movl	-764(%ebp), %eax
	movl	%eax, %edx
	movl	-760(%ebp), %eax
	movl	%eax, %ecx
	movl	reg_class_subunion@GOT(%ebx), %esi
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	(%esi,%eax,4), %eax
	movl	%eax, -760(%ebp)
	movl	-760(%ebp), %eax
	movl	%eax, -764(%ebp)
	.loc 1 2807 0
	movzbl	-50(%ebp), %edx
	movzbl	-49(%ebp), %eax
	orl	%edx, %eax
	movb	%al, -50(%ebp)
	.loc 1 2808 0
	movzbl	-49(%ebp), %edx
	movzbl	-50(%ebp), %eax
	orl	%edx, %eax
	movb	%al, -49(%ebp)
.L1315:
	.loc 1 2815 0
	movl	$660, -476(%ebp)
	.loc 1 2817 0
	movl	$0, -492(%ebp)
	.loc 1 2818 0
	movl	$0, -480(%ebp)
.L1320:
	.loc 1 2828 0
	movl	$0, -488(%ebp)
	.loc 1 2829 0
	jmp	.L1321
.L1322:
.LBB35:
	.loc 1 2835 0
	movl	$0, -420(%ebp)
	.loc 1 2838 0
	movl	$0, -416(%ebp)
	.loc 1 2845 0
	movl	$0, -412(%ebp)
	.loc 1 2847 0
	movl	$0, -456(%ebp)
	.loc 1 2849 0
	movl	$0, -516(%ebp)
	jmp	.L1323
.L1324:
.LBB36:
	.loc 1 2851 0
	movl	-516(%ebp), %eax
	movl	-644(%ebp,%eax,4), %eax
	movl	%eax, -524(%ebp)
	.loc 1 2852 0
	movl	$0, -408(%ebp)
	.loc 1 2853 0
	movl	$0, -404(%ebp)
	.loc 1 2855 0
	movl	$1, -400(%ebp)
	.loc 1 2857 0
	movl	$0, -396(%ebp)
	.loc 1 2859 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -388(%ebp)
	.loc 1 2860 0
	movl	$0, -384(%ebp)
	.loc 1 2863 0
	movl	$0, -380(%ebp)
	.loc 1 2864 0
	movl	$0, -376(%ebp)
	.loc 1 2867 0
	movl	$0, -372(%ebp)
	.loc 1 2868 0
	movl	$0, -368(%ebp)
	.loc 1 2873 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	jne	.L2131
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2131
	.loc 1 2874 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 2880 0
	jmp	.L2131
.L1329:
	.loc 1 2886 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1330
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1330
	.loc 1 2889 0
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-388(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_offset_representable_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1333
	.loc 1 2894 0
	movl	$1, -380(%ebp)
.L1333:
	.loc 1 2895 0
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-388(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-384(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -384(%ebp)
.L1330:
	.loc 1 2900 0
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 2903 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1335
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1328
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1328
.L1335:
	.loc 1 2951 0
	movl	$1, -380(%ebp)
.L1328:
.L2131:
	.loc 1 2880 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1329
	.loc 1 2954 0
	movl	-516(%ebp), %eax
	movl	$0, -1484(%ebp,%eax,4)
	.loc 1 2955 0
	movl	-516(%ebp), %eax
	movb	$0, -110(%ebp,%eax)
	.loc 1 2956 0
	movl	-516(%ebp), %eax
	movb	$0, -80(%ebp,%eax)
	.loc 1 2957 0
	movl	-516(%ebp), %eax
	movb	$0, -140(%ebp,%eax)
	.loc 1 2958 0
	movl	-516(%ebp), %eax
	movb	$0, -170(%ebp,%eax)
	.loc 1 2959 0
	movl	-516(%ebp), %eax
	movl	$-1, -1604(%ebp,%eax,4)
	.loc 1 2963 0
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1348
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L2132
.L1348:
	.loc 1 2964 0
	movl	$1, -408(%ebp)
	movl	$0, -400(%ebp)
	.loc 1 2973 0
	jmp	.L2132
.L1352:
	.loc 1 2974 0
	movl	-392(%ebp), %ecx
	subl	$33, %ecx
	movl	%ecx, -3944(%ebp)
	cmpl	$82, -3944(%ebp)
	ja	.L1353
	movl	-3944(%ebp), %eax
	sall	$2, %eax
	movl	.L1376@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1376:
	.long	.L1354@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1379@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1356@GOTOFF
	.long	.L1357@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1351@GOTOFF
	.long	.L1351@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1359@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1360@GOTOFF
	.long	.L1351@GOTOFF
	.long	.L1361@GOTOFF
	.long	.L1362@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1363@GOTOFF
	.long	.L1363@GOTOFF
	.long	.L1364@GOTOFF
	.long	.L1364@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1365@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1366@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1367@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1368@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1369@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1370@GOTOFF
	.long	.L1371@GOTOFF
	.long	.L1372@GOTOFF
	.long	.L1373@GOTOFF
	.long	.L1353@GOTOFF
	.long	.L1374@GOTOFF
	.long	.L1375@GOTOFF
	.text
.L1356:
	.loc 1 2981 0
	movl	-508(%ebp), %eax
	subl	$1, %eax
	cmpl	-516(%ebp), %eax
	je	.L1351
	.loc 1 2982 0
	movl	-516(%ebp), %eax
	movl	%eax, -472(%ebp)
	.loc 1 2983 0
	jmp	.L1351
.L1362:
	.loc 1 2986 0
	addl	$6, -412(%ebp)
	.loc 1 2987 0
	jmp	.L1351
.L1354:
	.loc 1 2990 0
	movl	$600, -412(%ebp)
	.loc 1 2991 0
	jmp	.L1351
.L1380:
	.loc 1 2997 0
	movl	-524(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -524(%ebp)
.L1379:
	.loc 1 2996 0
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1351
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L1380
	.loc 1 2998 0
	jmp	.L1351
.L1359:
	.loc 1 3002 0
	movl	-524(%ebp), %eax
	leal	-1(%eax), %edx
	movl	$10, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strtoul@PLT
	movl	%eax, -392(%ebp)
	.loc 1 3004 0
	movl	-516(%ebp), %edx
	movl	-392(%ebp), %eax
	movl	%eax, -1604(%ebp,%edx,4)
	.loc 1 3012 0
	cmpl	$0, -492(%ebp)
	je	.L1383
	movl	-392(%ebp), %eax
	cmpl	-472(%ebp), %eax
	jne	.L1385
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	-516(%ebp), %eax
	je	.L1383
.L1385:
	movl	-392(%ebp), %eax
	cmpl	-472(%ebp), %eax
	je	.L1387
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	-392(%ebp), %eax
	jne	.L1389
.L1387:
	movl	-472(%ebp), %eax
	addl	%eax, %eax
	subl	-392(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -3848(%ebp)
	jmp	.L1390
.L1389:
	movl	-392(%ebp), %eax
	movl	%eax, -3848(%ebp)
.L1390:
	movl	-3848(%ebp), %edx
	movl	%edx, -3844(%ebp)
	movl	-516(%ebp), %eax
	cmpl	-472(%ebp), %eax
	je	.L1391
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	-516(%ebp), %eax
	jne	.L1393
.L1391:
	movl	-472(%ebp), %eax
	addl	%eax, %eax
	subl	-516(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -3840(%ebp)
	jmp	.L1394
.L1393:
	movl	-516(%ebp), %ecx
	movl	%ecx, -3840(%ebp)
.L1394:
	movl	-3840(%ebp), %ecx
	movl	-3844(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	subl	$3448, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	-3849(%ebp)
	jmp	.L1395
.L1383:
	movl	-392(%ebp), %eax
	movl	-516(%ebp), %ecx
	leal	(%eax,%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	-16(%ebp), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	subl	$3448, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	-3849(%ebp)
.L1395:
	cmpb	$0, -3849(%ebp)
	je	.L1396
	.loc 1 3029 0
	movl	-392(%ebp), %eax
	movzbl	-140(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1398
	movl	-392(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1398
	movl	-392(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1398
	movl	-392(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L1398
	.loc 1 3033 0
	movl	$1, -416(%ebp)
.L1398:
	.loc 1 3035 0
	movl	-392(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -404(%ebp)
	jmp	.L1403
.L1396:
.LBB37:
	.loc 1 3043 0
	movl	-392(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1404
	.loc 1 3044 0
	addl	$1, -420(%ebp)
.L1404:
	.loc 1 3045 0
	movl	-392(%ebp), %eax
	movb	$0, -110(%ebp,%eax)
	.loc 1 3046 0
	movl	-392(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1406
	.loc 1 3047 0
	movl	$1, -416(%ebp)
.L1406:
	.loc 1 3050 0
	movl	-392(%ebp), %eax
	movzbl	-170(%ebp,%eax), %eax
	movzbl	%al, %ecx
	movl	-392(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%eax, %esi
	movl	-392(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %edi
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3836(%ebp)
	movl	-392(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3832(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3828(%ebp)
	movl	-392(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3824(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 32(%esp)
	movl	$-1, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-3836(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-3832(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-3828(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-3824(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	find_dummy_reload
	movl	%eax, -364(%ebp)
	.loc 1 3059 0
	cmpl	$0, -364(%ebp)
	je	.L1403
	.loc 1 3060 0
	subl	$1, -420(%ebp)
.L1403:
.LBE37:
	.loc 1 3064 0
	movl	$0, -400(%ebp)
	.loc 1 3065 0
	movl	-516(%ebp), %eax
	movl	-392(%ebp), %edx
	movl	-1484(%ebp,%edx,4), %edx
	movl	%edx, -1484(%ebp,%eax,4)
	.loc 1 3071 0
	cmpl	$0, -404(%ebp)
	je	.L1409
	cmpl	$0, -380(%ebp)
	je	.L1351
.L1409:
	.loc 1 3072 0
	movl	$0, -512(%ebp)
	jmp	.L1412
.L1413:
	.loc 1 3073 0
	movl	-512(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %edx
	movl	-516(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	cmpl	%eax, %edx
	jne	.L1414
	.loc 1 3075 0
	movl	$1, -400(%ebp)
.L1414:
	.loc 1 3072 0
	addl	$1, -512(%ebp)
.L1412:
	movl	-512(%ebp), %eax
	cmpl	-516(%ebp), %eax
	jl	.L1413
	.loc 1 3076 0
	jmp	.L1351
.L1373:
	.loc 1 3081 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3820(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1416
	movl	$2, -3816(%ebp)
	jmp	.L1418
.L1416:
	movl	$5, -3816(%ebp)
.L1418:
	movl	-3816(%ebp), %edx
	movl	-3820(%ebp), %eax
	movl	%edx, -1484(%ebp,%eax,4)
	.loc 1 3082 0
	movl	$1, -408(%ebp)
	.loc 1 3083 0
	movl	$0, -400(%ebp)
	.loc 1 3084 0
	jmp	.L1351
.L1370:
	.loc 1 3087 0
	cmpl	$0, -380(%ebp)
	jne	.L1351
	.loc 1 3089 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1420
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1422
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1422
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L1422
.L1420:
	.loc 1 3093 0
	movl	$1, -408(%ebp)
.L1422:
	.loc 1 3094 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1425
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1433
.L1425:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1433
	.loc 1 3097 0
	movl	$0, -400(%ebp)
.L1433:
	.loc 1 3098 0
	movl	$1, -372(%ebp)
	.loc 1 3099 0
	jmp	.L1351
.L1360:
	.loc 1 3102 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1351
	movl	-516(%ebp), %eax
	movl	-884(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1351
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L1438
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$108, %ax
	jne	.L1351
.L1438:
	.loc 1 3106 0
	movl	$1, -408(%ebp)
	.loc 1 3107 0
	jmp	.L1351
.L1361:
	.loc 1 3110 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1351
	movl	-516(%ebp), %eax
	movl	-884(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1351
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$107, %ax
	je	.L1443
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$109, %ax
	jne	.L1351
.L1443:
	.loc 1 3114 0
	movl	$1, -408(%ebp)
	.loc 1 3115 0
	jmp	.L1351
.L1366:
	.loc 1 3119 0
	cmpl	$0, -380(%ebp)
	jne	.L1351
	.loc 1 3121 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1351
	cmpl	$0, 16(%ebp)
	je	.L1448
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	sete	-3810(%ebp)
	jmp	.L1450
.L1448:
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_nonstrict_memref_p@PLT
	testl	%eax, %eax
	sete	-3810(%ebp)
.L1450:
	cmpb	$0, -3810(%ebp)
	je	.L1351
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1452
	cmpl	$0, 16(%ebp)
	je	.L1351
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1351
.L1452:
	.loc 1 3131 0
	movl	$1, -408(%ebp)
	.loc 1 3132 0
	jmp	.L1351
.L1372:
	.loc 1 3136 0
	cmpl	$0, -380(%ebp)
	jne	.L1351
	.loc 1 3138 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1456
	cmpl	$0, 16(%ebp)
	je	.L1458
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	jne	.L1460
	jmp	.L1462
.L1458:
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_nonstrict_memref_p@PLT
	testl	%eax, %eax
	jne	.L1460
.L1462:
	movl	-516(%ebp), %eax
	movl	-884(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1460
.L1456:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1463
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1463
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L1463
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1467
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	jne	.L1460
.L1467:
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1463
.L1460:
	.loc 1 3157 0
	movl	$1, -408(%ebp)
.L1463:
	.loc 1 3159 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1469
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1477
.L1469:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	jne	.L1478
.L1477:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1479
.L1478:
	.loc 1 3161 0
	movl	$0, -400(%ebp)
.L1479:
	.loc 1 3162 0
	movl	$1, -372(%ebp)
	.loc 1 3163 0
	movl	$1, -376(%ebp)
	.loc 1 3164 0
	jmp	.L1351
.L1357:
	.loc 1 3169 0
	movl	$1, -368(%ebp)
	movl	$1, -456(%ebp)
	.loc 1 3170 0
	jmp	.L1351
.L1363:
	.loc 1 3174 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1480
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L1351
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1351
.L1480:
	.loc 1 3178 0
	movl	$1, -408(%ebp)
	.loc 1 3179 0
	jmp	.L1351
.L1364:
	.loc 1 3183 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1351
	cmpl	$71, -392(%ebp)
	jne	.L1351
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-388(%ebp), %eax
	jne	.L1351
	.loc 1 3185 0
	movl	$1, -408(%ebp)
	.loc 1 3186 0
	jmp	.L1351
.L1375:
	.loc 1 3189 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1351
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1369
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1351
.L1369:
	.loc 1 3194 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1490
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1351
.L1490:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1499
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1351
.L1499:
	.loc 1 3199 0
	movl	$1, -408(%ebp)
	.loc 1 3200 0
	jmp	.L1351
.L1371:
	.loc 1 3203 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1501
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1351
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1351
.L1501:
	.loc 1 3206 0
	movl	$1, -408(%ebp)
	.loc 1 3207 0
	jmp	.L1351
.L1365:
	.loc 1 3217 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1351
	cmpl	$73, -392(%ebp)
	jne	.L1507
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$32768, %eax
	adcl	$0, %edx
	movl	%eax, -3808(%ebp)
	movl	%edx, -3804(%ebp)
	movb	$1, -3809(%ebp)
	cmpl	$0, -3804(%ebp)
	jb	.L1511
	cmpl	$0, -3804(%ebp)
	ja	.L1510
	cmpl	$65535, -3808(%ebp)
	jbe	.L1511
.L1510:
	movb	$0, -3809(%ebp)
	jmp	.L1511
.L1507:
	cmpl	$74, -392(%ebp)
	jne	.L1512
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	sete	-3794(%ebp)
	jmp	.L1514
.L1512:
	cmpl	$75, -392(%ebp)
	jne	.L1515
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -3792(%ebp)
	movl	%edx, -3788(%ebp)
	movb	$1, -3793(%ebp)
	cmpl	$0, -3788(%ebp)
	jb	.L1519
	cmpl	$0, -3788(%ebp)
	ja	.L1518
	cmpl	$65535, -3792(%ebp)
	jbe	.L1519
.L1518:
	movb	$0, -3793(%ebp)
	jmp	.L1519
.L1515:
	cmpl	$76, -392(%ebp)
	jne	.L1520
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1522
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1524
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1522
.L1524:
	movl	$1, -3776(%ebp)
	jmp	.L1526
.L1522:
	movl	$0, -3776(%ebp)
.L1526:
	movzbl	-3776(%ebp), %ecx
	movb	%cl, -3777(%ebp)
	jmp	.L1527
.L1520:
	cmpl	$77, -392(%ebp)
	jne	.L1528
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1530
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-65536, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1530
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1533
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1530
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1530
.L1533:
	movl	$1, -3768(%ebp)
	jmp	.L1536
.L1530:
	movl	$0, -3768(%ebp)
.L1536:
	movzbl	-3768(%ebp), %eax
	movb	%al, -3769(%ebp)
	jmp	.L1537
.L1528:
	cmpl	$78, -392(%ebp)
	jne	.L1538
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$65535, %eax
	adcl	$0, %edx
	movl	%eax, -3760(%ebp)
	movl	%edx, -3756(%ebp)
	movb	$1, -3761(%ebp)
	cmpl	$0, -3756(%ebp)
	jb	.L1542
	cmpl	$0, -3756(%ebp)
	ja	.L1541
	cmpl	$65534, -3760(%ebp)
	jbe	.L1542
.L1541:
	movb	$0, -3761(%ebp)
	jmp	.L1542
.L1538:
	cmpl	$79, -392(%ebp)
	jne	.L1543
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$16384, %eax
	adcl	$0, %edx
	movl	%eax, -3744(%ebp)
	movl	%edx, -3740(%ebp)
	movb	$1, -3745(%ebp)
	cmpl	$0, -3740(%ebp)
	jb	.L1547
	cmpl	$0, -3740(%ebp)
	ja	.L1546
	cmpl	$32767, -3744(%ebp)
	jbe	.L1547
.L1546:
	movb	$0, -3745(%ebp)
	jmp	.L1547
.L1543:
	cmpl	$80, -392(%ebp)
	jne	.L1548
	movl	-388(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1548
	movl	-388(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1548
	movl	$1, -3732(%ebp)
	jmp	.L1552
.L1548:
	movl	$0, -3732(%ebp)
.L1552:
	movzbl	-3732(%ebp), %edx
	movb	%dl, -3745(%ebp)
.L1547:
	movzbl	-3745(%ebp), %ecx
	movb	%cl, -3761(%ebp)
.L1542:
	movzbl	-3761(%ebp), %eax
	movb	%al, -3769(%ebp)
.L1537:
	movzbl	-3769(%ebp), %edx
	movb	%dl, -3777(%ebp)
.L1527:
	movzbl	-3777(%ebp), %ecx
	movb	%cl, -3793(%ebp)
.L1519:
	movzbl	-3793(%ebp), %eax
	movb	%al, -3794(%ebp)
.L1514:
	movzbl	-3794(%ebp), %edx
	movb	%dl, -3809(%ebp)
.L1511:
	cmpb	$0, -3809(%ebp)
	je	.L1351
	.loc 1 3219 0
	movl	$1, -408(%ebp)
	.loc 1 3220 0
	jmp	.L1351
.L1367:
	.loc 1 3223 0
	movl	$1, -408(%ebp)
	.loc 1 3224 0
	jmp	.L1351
.L1368:
	.loc 1 3227 0
	cmpl	$0, -380(%ebp)
	jne	.L1374
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L1374
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1374
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1557
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1565
.L1557:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1565
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1374
.L1565:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1567
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1374
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L1374
.L1567:
	.loc 1 3242 0
	movl	$1, -408(%ebp)
.L1374:
	.loc 1 3246 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	reg_class_subunion@GOT(%ebx), %edx
	imull	$100, %eax, %eax
	addl	%edx, %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	%eax, -1484(%ebp,%ecx,4)
	.loc 1 3248 0
	jmp	.L1570
.L1353:
	.loc 1 3251 0
	movl	-392(%ebp), %eax
	movzbl	%al, %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	jne	.L1571
	.loc 1 3297 0
	cmpl	$84, -392(%ebp)
	jne	.L1573
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	double_memory_operand@PLT
	testl	%eax, %eax
	setne	-3726(%ebp)
	jmp	.L1575
.L1573:
	cmpl	$81, -392(%ebp)
	jne	.L1576
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1578
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_gp_offset_p@PLT
	testl	%eax, %eax
	je	.L1578
	movl	$1, -3724(%ebp)
	jmp	.L1581
.L1578:
	movl	$0, -3724(%ebp)
.L1581:
	movzbl	-3724(%ebp), %ecx
	movb	%cl, -3725(%ebp)
	jmp	.L1582
.L1576:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1583
	cmpl	$82, -392(%ebp)
	jne	.L1583
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_memory_operand@PLT
	testl	%eax, %eax
	je	.L1583
	movl	$1, -3720(%ebp)
	jmp	.L1587
.L1583:
	movl	$0, -3720(%ebp)
.L1587:
	movzbl	-3720(%ebp), %eax
	movb	%al, -3725(%ebp)
.L1582:
	movzbl	-3725(%ebp), %edx
	movb	%dl, -3726(%ebp)
.L1575:
	cmpb	$0, -3726(%ebp)
	je	.L1351
	.loc 1 3298 0
	movl	$1, -408(%ebp)
	.loc 1 3300 0
	jmp	.L1351
.L1571:
	.loc 1 3303 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3716(%ebp)
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %ecx
	movl	-392(%ebp), %eax
	movzbl	%al, %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %esi
	movl	reg_class_subunion@GOT(%ebx), %edi
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%esi, %eax
	movl	(%edi,%eax,4), %eax
	movl	-3716(%ebp), %edx
	movl	%eax, -1484(%ebp,%edx,4)
.L1570:
	.loc 1 3306 0
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L1351
	.loc 1 3308 0
	movl	$1, -396(%ebp)
	.loc 1 3309 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1351
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%eax, %ecx
	movl	%edx, 12(%esp)
	movl	-384(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_fits_class_p@PLT
	testl	%eax, %eax
	je	.L1351
	.loc 1 3312 0
	movl	$1, -408(%ebp)
.L1351:
.L2132:
	.loc 1 2973 0
	movl	-524(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1593
	movl	-524(%ebp), %ecx
	movzbl	(%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, -392(%ebp)
	cmpl	$44, -392(%ebp)
	setne	%dl
	leal	1(%ecx), %eax
	movl	%eax, -524(%ebp)
	testb	%dl, %dl
	jne	.L1352
.L1593:
	.loc 1 3316 0
	movl	-516(%ebp), %edx
	movl	-524(%ebp), %eax
	movl	%eax, -644(%ebp,%edx,4)
	.loc 1 3320 0
	cmpl	$0, -396(%ebp)
	je	.L1595
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1595
	.loc 1 3321 0
	movl	$0, -400(%ebp)
.L1595:
	.loc 1 3324 0
	movl	-516(%ebp), %eax
	movl	-368(%ebp), %edx
	movb	%dl, -170(%ebp,%eax)
	.loc 1 3325 0
	cmpl	$0, -408(%ebp)
	je	.L1598
	cmpl	$0, -380(%ebp)
	jne	.L1598
	.loc 1 3326 0
	movl	-516(%ebp), %eax
	movb	$1, -110(%ebp,%eax)
	.loc 1 3325 0
	jmp	.L1601
.L1598:
	.loc 1 3327 0
	cmpl	$0, -404(%ebp)
	je	.L1602
	cmpl	$0, -380(%ebp)
	jne	.L1602
	.loc 1 3328 0
	movl	-516(%ebp), %eax
	movb	$1, -80(%ebp,%eax)
	.loc 1 3327 0
	jmp	.L1601
.L1602:
.LBB38:
	.loc 1 3331 0
	movl	$0, -360(%ebp)
	.loc 1 3333 0
	movl	-516(%ebp), %eax
	movl	-376(%ebp), %edx
	movb	%dl, -140(%ebp,%eax)
	.loc 1 3334 0
	addl	$1, -420(%ebp)
	.loc 1 3335 0
	cmpl	$0, -400(%ebp)
	je	.L1605
	.loc 1 3336 0
	movl	$1, -416(%ebp)
.L1605:
	.loc 1 3338 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1607
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1607
	movl	-516(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jns	.L1607
	.loc 1 3341 0
	movl	$1, -416(%ebp)
.L1607:
	.loc 1 3351 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1611
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1619
.L1611:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1619
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	cmpl	$24, %eax
	je	.L1621
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1623
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1625
	jmp	.L1632
.L1623:
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1628
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1628
	movl	$1, -3712(%ebp)
	jmp	.L1631
.L1628:
	movl	$0, -3712(%ebp)
.L1631:
	movzbl	-3712(%ebp), %eax
	testb	%al, %al
	jne	.L1625
	jmp	.L1632
.L1621:
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1633
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1633
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1633
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1633
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1633
	movl	$1, -3708(%ebp)
	jmp	.L1639
.L1633:
	movl	$0, -3708(%ebp)
.L1639:
	movzbl	-3708(%ebp), %eax
	testb	%al, %al
	jne	.L1625
.L1632:
	cmpl	$0, -504(%ebp)
	je	.L1619
.L1625:
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1619
	.loc 1 3360 0
	movl	$1, -360(%ebp)
	.loc 1 3361 0
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1619
	.loc 1 3362 0
	addl	$1, -420(%ebp)
.L1619:
	.loc 1 3370 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1642
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1642
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1642
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	cmpl	$24, %eax
	je	.L1652
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1654
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1642
	jmp	.L1662
.L1654:
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1658
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1658
	movl	$1, -3704(%ebp)
	jmp	.L1661
.L1658:
	movl	$0, -3704(%ebp)
.L1661:
	movzbl	-3704(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1642
	jmp	.L1662
.L1652:
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1663
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1663
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1663
	movl	-388(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1663
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1663
	movl	$1, -3700(%ebp)
	jmp	.L1669
.L1663:
	movl	$0, -3700(%ebp)
.L1669:
	movzbl	-3700(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1642
.L1662:
	.loc 1 3375 0
	movl	$1, -416(%ebp)
	.loc 1 3370 0
	jmp	.L1670
.L1642:
	.loc 1 3380 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1671
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1671
	cmpl	$0, -500(%ebp)
	je	.L1671
	movl	-388(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L1671
	.loc 1 3383 0
	movl	$1, -416(%ebp)
	.loc 1 3380 0
	jmp	.L1670
.L1671:
	.loc 1 3384 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1670
	cmpl	$0, -504(%ebp)
	je	.L1670
	cmpl	$0, -360(%ebp)
	jne	.L1670
	.loc 1 3386 0
	movl	$1, -416(%ebp)
.L1670:
	.loc 1 3396 0
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1679
	movl	-388(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1681
.L1679:
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1681
	cmpl	$0, -360(%ebp)
	je	.L1683
	cmpl	$0, -372(%ebp)
	jne	.L1681
.L1683:
	.loc 1 3400 0
	addl	$2, -412(%ebp)
.L1681:
	.loc 1 3404 0
	movl	-516(%ebp), %eax
	movl	-1124(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1601
	movl	-388(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1601
	.loc 1 3406 0
	addl	$1, -412(%ebp)
.L1601:
.LBE38:
	.loc 1 3430 0
	cmpl	$0, -408(%ebp)
	jne	.L1687
	cmpl	$0, -404(%ebp)
	jne	.L1687
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1687
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -3696(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1691
	movl	$8, -3692(%ebp)
	jmp	.L1693
.L1691:
	movl	$4, -3692(%ebp)
.L1693:
	movl	-3692(%ebp), %ecx
	cmpl	%ecx, -3696(%ebp)
	jg	.L1687
	movl	-516(%ebp), %eax
	movl	-764(%ebp,%eax,4), %eax
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jbe	.L1687
	.loc 1 3435 0
	movl	-516(%ebp), %eax
	movl	-764(%ebp,%eax,4), %edx
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L1687
	.loc 1 3442 0
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%eax, %edx
	movl	-516(%ebp), %eax
	movl	-764(%ebp,%eax,4), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L1697
	.loc 1 3444 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	-764(%ebp,%eax,4), %eax
	movl	%eax, -1484(%ebp,%edx,4)
	jmp	.L1687
.L1697:
	.loc 1 3446 0
	movl	-516(%ebp), %eax
	movzbl	-50(%ebp,%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	-412(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -412(%ebp)
.L1687:
.LBE36:
	.loc 1 2849 0
	addl	$1, -516(%ebp)
.L1323:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1324
	.loc 1 3455 0
	movl	$0, -516(%ebp)
	jmp	.L1700
.L1701:
	.loc 1 3456 0
	movl	-516(%ebp), %eax
	movzbl	-170(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1702
	movl	-516(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L1704
	movl	-516(%ebp), %eax
	movzbl	-80(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1702
.L1704:
.LBB39:
	.loc 1 3461 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	leal	-2444(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decompose
	subl	$4, %esp
	.loc 1 3463 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1706
	.loc 1 3464 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3464, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1706:
	.loc 1 3466 0
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1708
	.loc 1 3468 0
	movl	-516(%ebp), %eax
	movb	$0, -170(%ebp,%eax)
	.loc 1 3469 0
	movl	this_insn_is_asm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1710
	.loc 1 3470 0
	movl	this_insn@GOTOFF(%ebx), %edx
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_for_asm@PLT
	jmp	.L1708
.L1710:
	.loc 1 3473 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3473, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1708:
	.loc 1 3476 0
	movl	$0, -512(%ebp)
	jmp	.L1712
.L1713:
	.loc 1 3478 0
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1714
	movl	-512(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1716
.L1714:
	movl	-512(%ebp), %eax
	cmpl	-516(%ebp), %eax
	je	.L1716
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1716
	movl	-512(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	cmpl	-516(%ebp), %eax
	jne	.L1719
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1716
.L1719:
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-2444(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-2440(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-2436(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-2432(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-2428(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-2424(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-2420(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	immune_p
	testl	%eax, %eax
	jne	.L1716
	.loc 1 3494 0
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L1722
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1724
	movl	-512(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1722
.L1724:
	.loc 1 3498 0
	addl	$1, -420(%ebp)
	.loc 1 3499 0
	movl	-512(%ebp), %eax
	movb	$0, -110(%ebp,%eax)
	.loc 1 3500 0
	movl	-512(%ebp), %eax
	movb	$0, -80(%ebp,%eax)
.L1716:
	.loc 1 3476 0
	addl	$1, -512(%ebp)
.L1712:
	movl	-512(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1713
.L1722:
	.loc 1 3507 0
	movl	-512(%ebp), %eax
	cmpl	-508(%ebp), %eax
	je	.L1702
	.loc 1 3509 0
	addl	$1, -420(%ebp)
	.loc 1 3510 0
	movl	-516(%ebp), %eax
	movb	$0, -110(%ebp,%eax)
	.loc 1 3511 0
	movl	-512(%ebp), %eax
	movb	$0, -80(%ebp,%eax)
	.loc 1 3512 0
	movl	$0, -512(%ebp)
	jmp	.L1727
.L1728:
	.loc 1 3513 0
	movl	-512(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	cmpl	-516(%ebp), %eax
	jne	.L1729
	movl	-512(%ebp), %eax
	movzbl	-80(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1729
	.loc 1 3516 0
	movl	-512(%ebp), %eax
	movb	$0, -110(%ebp,%eax)
	.loc 1 3517 0
	movl	-512(%ebp), %eax
	movb	$0, -80(%ebp,%eax)
	.loc 1 3518 0
	addl	$1, -420(%ebp)
.L1729:
	.loc 1 3512 0
	addl	$1, -512(%ebp)
.L1727:
	movl	-512(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1728
.L1702:
.LBE39:
	.loc 1 3455 0
	addl	$1, -516(%ebp)
.L1700:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1701
	.loc 1 3525 0
	cmpl	$0, -420(%ebp)
	jne	.L1733
	.loc 1 3528 0
	cmpl	$0, -472(%ebp)
	js	.L1735
	.loc 1 3530 0
	movl	-472(%ebp), %ecx
	movl	-472(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3531 0
	movl	-472(%ebp), %ecx
	addl	$1, %ecx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
.L1735:
	.loc 1 3534 0
	movl	$0, -516(%ebp)
	jmp	.L1737
.L1738:
	.loc 1 3536 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	movb	%al, -230(%ebp,%edx)
	.loc 1 3537 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-80(%ebp,%eax), %eax
	movb	%al, -200(%ebp,%edx)
	.loc 1 3538 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%eax, -1724(%ebp,%edx,4)
	.loc 1 3539 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-140(%ebp,%eax), %eax
	movb	%al, -260(%ebp,%edx)
	.loc 1 3540 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	movl	%eax, -1964(%ebp,%edx,4)
	.loc 1 3541 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-170(%ebp,%eax), %eax
	movb	%al, -290(%ebp,%edx)
	.loc 1 3534 0
	addl	$1, -516(%ebp)
.L1737:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1738
	.loc 1 3544 0
	movl	-488(%ebp), %eax
	movl	%eax, -484(%ebp)
	.loc 1 3545 0
	movl	-492(%ebp), %eax
	movl	%eax, -480(%ebp)
	.loc 1 3546 0
	movl	-456(%ebp), %eax
	movl	%eax, -460(%ebp)
	.loc 1 3547 0
	jmp	.L1740
.L1733:
	.loc 1 3554 0
	movl	-420(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	-412(%ebp), %eax
	movl	%eax, -420(%ebp)
	.loc 1 3559 0
	cmpl	$0, -416(%ebp)
	jne	.L1741
	movl	-476(%ebp), %eax
	cmpl	-420(%ebp), %eax
	jle	.L1741
	.loc 1 3561 0
	movl	$0, -516(%ebp)
	jmp	.L1744
.L1745:
	.loc 1 3563 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	-1484(%ebp,%eax,4), %eax
	movl	%eax, -1724(%ebp,%edx,4)
	.loc 1 3564 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-110(%ebp,%eax), %eax
	movb	%al, -230(%ebp,%edx)
	.loc 1 3565 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-80(%ebp,%eax), %eax
	movb	%al, -200(%ebp,%edx)
	.loc 1 3566 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-140(%ebp,%eax), %eax
	movb	%al, -260(%ebp,%edx)
	.loc 1 3567 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	-1604(%ebp,%eax,4), %eax
	movl	%eax, -1964(%ebp,%edx,4)
	.loc 1 3568 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movzbl	-170(%ebp,%eax), %eax
	movb	%al, -290(%ebp,%edx)
	.loc 1 3561 0
	addl	$1, -516(%ebp)
.L1744:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1745
	.loc 1 3571 0
	movl	-492(%ebp), %eax
	movl	%eax, -480(%ebp)
	.loc 1 3572 0
	movl	-420(%ebp), %eax
	movl	%eax, -476(%ebp)
	.loc 1 3573 0
	movl	-488(%ebp), %eax
	movl	%eax, -484(%ebp)
	.loc 1 3574 0
	movl	-456(%ebp), %eax
	movl	%eax, -460(%ebp)
.L1741:
.LBE35:
	.loc 1 2830 0
	addl	$1, -488(%ebp)
.L1321:
	.loc 1 2829 0
	movl	-488(%ebp), %eax
	cmpl	-496(%ebp), %eax
	jl	.L1322
	.loc 1 3587 0
	cmpl	$0, -472(%ebp)
	js	.L1748
	.loc 1 3589 0
	cmpl	$0, -492(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -492(%ebp)
	.loc 1 3590 0
	cmpl	$0, -492(%ebp)
	je	.L1750
.LBB40:
	.loc 1 3595 0
	movl	-472(%ebp), %ecx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3596 0
	movl	-472(%ebp), %ecx
	addl	$1, %ecx
	movl	-472(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3598 0
	movl	$0, -516(%ebp)
	jmp	.L1752
.L1753:
	.loc 1 3599 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	cmpl	-472(%ebp), %eax
	je	.L1754
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L1756
.L1754:
	.loc 1 3601 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%ecx)
.L1756:
	.loc 1 3598 0
	addl	$1, -516(%ebp)
.L1752:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-516(%ebp), %eax
	jg	.L1753
	.loc 1 3604 0
	movl	-472(%ebp), %eax
	movl	-764(%ebp,%eax,4), %eax
	movl	%eax, -356(%ebp)
	.loc 1 3605 0
	movl	-472(%ebp), %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movl	-764(%ebp,%eax,4), %eax
	movl	%eax, -764(%ebp,%edx,4)
	.loc 1 3606 0
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	-356(%ebp), %eax
	movl	%eax, -764(%ebp,%edx,4)
	.loc 1 3608 0
	movl	-472(%ebp), %eax
	movzbl	-50(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -352(%ebp)
	.loc 1 3609 0
	movl	-472(%ebp), %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movzbl	-50(%ebp,%eax), %eax
	movb	%al, -50(%ebp,%edx)
	.loc 1 3610 0
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	-352(%ebp), %eax
	movb	%al, -50(%ebp,%edx)
	.loc 1 3612 0
	movl	-508(%ebp), %eax
	leal	0(,%eax,4), %ecx
	leal	-644(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	%eax, %edi
	leal	240(%edx), %esi
	cld
	rep
	movsb
	.loc 1 3614 0
	jmp	.L1320
.L1750:
.LBE40:
	.loc 1 3618 0
	movl	-472(%ebp), %ecx
	movl	-472(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3619 0
	movl	-472(%ebp), %ecx
	addl	$1, %ecx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movl	-2204(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3622 0
	movl	$0, -516(%ebp)
	jmp	.L1758
.L1759:
	.loc 1 3623 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	cmpl	-472(%ebp), %eax
	je	.L1760
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L1762
.L1760:
	.loc 1 3625 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%ecx)
.L1762:
	.loc 1 3622 0
	addl	$1, -516(%ebp)
.L1758:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-516(%ebp), %eax
	jg	.L1759
.L1748:
	.loc 1 3635 0
	cmpl	$660, -476(%ebp)
	jne	.L1740
	.loc 1 3638 0
	cmpl	$0, -520(%ebp)
	js	.L1764
	.loc 1 3639 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$3639, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L1764:
	.loc 1 3640 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	error_for_asm@PLT
	.loc 1 3642 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 3643 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3644 0
	movl	$0, -3932(%ebp)
	jmp	.L1223
.L1740:
	.loc 1 3657 0
	movl	$0, -516(%ebp)
	jmp	.L1766
.L1767:
	.loc 1 3658 0
	movl	-516(%ebp), %eax
	movl	$-1, -2084(%ebp,%eax,4)
	.loc 1 3657 0
	addl	$1, -516(%ebp)
.L1766:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1767
	.loc 1 3660 0
	movl	$0, -516(%ebp)
	jmp	.L1769
.L1770:
	.loc 1 3661 0
	movl	-516(%ebp), %eax
	movzbl	-230(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L1771
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L1771
	.loc 1 3663 0
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %edx
	movl	-516(%ebp), %eax
	movl	%eax, -2084(%ebp,%edx,4)
.L1771:
	.loc 1 3660 0
	addl	$1, -516(%ebp)
.L1769:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1770
	.loc 1 3665 0
	movl	$0, -516(%ebp)
	jmp	.L1775
.L1776:
	.loc 1 3666 0
	movl	-516(%ebp), %ecx
	movl	-516(%ebp), %eax
	movzbl	-230(%ebp,%eax), %edx
	movl	-516(%ebp), %eax
	movzbl	-200(%ebp,%eax), %eax
	orl	%edx, %eax
	movb	%al, -230(%ebp,%ecx)
	.loc 1 3665 0
	addl	$1, -516(%ebp)
.L1775:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1776
	.loc 1 3672 0
	cmpl	$0, -480(%ebp)
	je	.L1778
.LBB41:
	.loc 1 3676 0
	movl	-472(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %eax
	movl	%eax, -348(%ebp)
	.loc 1 3677 0
	movl	-472(%ebp), %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	movl	-2204(%ebp,%eax,4), %eax
	movl	%eax, -2204(%ebp,%edx,4)
	.loc 1 3678 0
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	-348(%ebp), %eax
	movl	%eax, -2204(%ebp,%edx,4)
	.loc 1 3679 0
	movl	-472(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -348(%ebp)
	.loc 1 3680 0
	movl	-472(%ebp), %ecx
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	.loc 1 3681 0
	movl	-472(%ebp), %ecx
	addl	$1, %ecx
	movl	recog_data@GOT(%ebx), %edx
	movl	-348(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	.loc 1 3682 0
	movl	-472(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, -348(%ebp)
	.loc 1 3683 0
	movl	-472(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %ecx
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 3685 0
	movl	-472(%ebp), %edx
	addl	$1, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	-348(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3687 0
	movl	$0, -516(%ebp)
	jmp	.L1780
.L1781:
	.loc 1 3689 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	-472(%ebp), %eax
	jne	.L1782
	.loc 1 3690 0
	movl	-516(%ebp), %eax
	movl	-472(%ebp), %ecx
	addl	$1, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	%ecx, (%eax)
	jmp	.L1784
.L1782:
	.loc 1 3691 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %edx
	movl	-472(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L1784
	.loc 1 3692 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	48(%eax), %edx
	movl	-472(%ebp), %eax
	movl	%eax, (%edx)
.L1784:
	.loc 1 3687 0
	addl	$1, -516(%ebp)
.L1780:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L1781
.L1778:
.LBE41:
	.loc 1 3696 0
	movl	$0, -516(%ebp)
	jmp	.L1786
.L1787:
	.loc 1 3698 0
	movl	-516(%ebp), %eax
	movl	$-1, -1844(%ebp,%eax,4)
	.loc 1 3717 0
	movl	-516(%ebp), %eax
	movzbl	-290(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1788
	movl	-516(%ebp), %eax
	movl	-1124(%ebp,%eax,4), %eax
	cmpl	$9, %eax
	je	.L1788
	.loc 1 3718 0
	movl	-516(%ebp), %eax
	movl	%eax, -3688(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1791
	movl	$2, -3684(%ebp)
	jmp	.L1793
.L1791:
	movl	$9, -3684(%ebp)
.L1793:
	movl	-3684(%ebp), %ecx
	movl	-3688(%ebp), %edx
	movl	%ecx, -1124(%ebp,%edx,4)
.L1788:
	.loc 1 3696 0
	addl	$1, -516(%ebp)
.L1786:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1787
	.loc 1 3725 0
	movl	$0, -516(%ebp)
	jmp	.L1795
.L1796:
	.loc 1 3726 0
	movl	-516(%ebp), %eax
	movzbl	-230(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L1797
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1799
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1797
.L1799:
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1797
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	cmpl	$24, %eax
	je	.L1808
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1810
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1812
	jmp	.L1819
.L1810:
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	cmpl	$5, %eax
	je	.L1815
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1815
	movl	$1, -3680(%ebp)
	jmp	.L1818
.L1815:
	movl	$0, -3680(%ebp)
.L1818:
	movzbl	-3680(%ebp), %eax
	testb	%al, %al
	jne	.L1812
	jmp	.L1819
.L1808:
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1820
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1820
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1820
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1820
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1820
	movl	$1, -3676(%ebp)
	jmp	.L1826
.L1820:
	movl	$0, -3676(%ebp)
.L1826:
	movzbl	-3676(%ebp), %eax
	testb	%al, %al
	jne	.L1812
.L1819:
	cmpl	$0, -504(%ebp)
	je	.L1797
.L1812:
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1797
	.loc 1 3736 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %edi
	movl	-516(%ebp), %eax
	movl	-1244(%ebp,%eax,4), %eax
	movl	%eax, -3672(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, %edx
	movl	$0, 24(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-3672(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_toplev
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%edi,4)
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edi,4), %eax
	movl	%eax, -2204(%ebp,%esi,4)
	.loc 1 3741 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %edx
	movl	-484(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	alternative_allows_memconst
	testl	%eax, %eax
	je	.L1797
	.loc 1 3743 0
	movl	-516(%ebp), %eax
	movb	$1, -230(%ebp,%eax)
.L1797:
	.loc 1 3725 0
	addl	$1, -516(%ebp)
.L1795:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1796
	.loc 1 3747 0
	cmpl	$0, -460(%ebp)
	je	.L1830
	.loc 1 3748 0
	movl	$0, -516(%ebp)
	jmp	.L1832
.L1833:
	.loc 1 3749 0
	movl	-516(%ebp), %eax
	movzbl	-290(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1834
	.loc 1 3750 0
	movl	n_earlyclobbers@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	reload_earlyclobbers@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
	leal	1(%ecx), %edx
	movl	n_earlyclobbers@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1834:
	.loc 1 3748 0
	addl	$1, -516(%ebp)
.L1832:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1833
.L1830:
	.loc 1 3753 0
	movl	$0, -516(%ebp)
	jmp	.L1836
.L1837:
	.loc 1 3754 0
	movl	-516(%ebp), %eax
	movzbl	-230(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L1838
	.loc 1 3757 0
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jns	.L1889
	.loc 1 3766 0
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	cmpl	$-1, %eax
	jne	.L1842
	movl	-516(%ebp), %eax
	movzbl	-260(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1842
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1842
	.loc 1 3770 0
	movl	-516(%ebp), %edx
	movl	%edx, -3668(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -3664(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1846
	movl	$2, -3660(%ebp)
	jmp	.L1848
.L1846:
	movl	$5, -3660(%ebp)
.L1848:
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	leal	4(%eax), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	$0, 40(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-3664(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-3660(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	-3668(%ebp), %edx
	movl	%eax, -1844(%ebp,%edx,4)
	.loc 1 3776 0
	movl	-516(%ebp), %eax
	movl	-1844(%ebp,%eax,4), %esi
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	%ecx, (%eax)
	.loc 1 3784 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1889
	.loc 1 3786 0
	movl	$0, -512(%ebp)
	jmp	.L1851
.L1852:
	.loc 1 3788 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	-516(%ebp), %eax
	jne	.L1853
	.loc 1 3790 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L1855
	.loc 1 3791 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$3, (%eax)
	jmp	.L1853
.L1855:
	.loc 1 3792 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L1853
	.loc 1 3794 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$4, (%eax)
.L1853:
	.loc 1 3786 0
	addl	$1, -512(%ebp)
.L1851:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -512(%ebp)
	jl	.L1852
	.loc 1 3766 0
	jmp	.L1889
.L1842:
	.loc 1 3799 0
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	cmpl	$-1, %eax
	jne	.L1858
	.loc 1 3801 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3656(%ebp)
	movl	-516(%ebp), %eax
	movl	-1124(%ebp,%eax,4), %eax
	movl	%eax, -3652(%ebp)
	cmpl	$0, -520(%ebp)
	js	.L1860
	movl	-520(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzbl	10(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -3648(%ebp)
	jmp	.L1862
.L1860:
	movl	$0, -3648(%ebp)
.L1862:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1863
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3644(%ebp)
	jmp	.L1865
.L1863:
	movl	$0, -3644(%ebp)
.L1865:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1866
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3640(%ebp)
	jmp	.L1868
.L1866:
	movl	$0, -3640(%ebp)
.L1868:
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	movl	%eax, -3636(%ebp)
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1869
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3632(%ebp)
	jmp	.L1871
.L1869:
	movl	$0, -3632(%ebp)
.L1871:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1872
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3628(%ebp)
	jmp	.L1874
.L1872:
	movl	$0, -3628(%ebp)
.L1874:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1875
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3624(%ebp)
	jmp	.L1877
.L1875:
	movl	$0, -3624(%ebp)
.L1877:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1878
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3620(%ebp)
	jmp	.L1880
.L1878:
	movl	$0, -3620(%ebp)
.L1880:
	movl	-3652(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	-3648(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-3644(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	-3640(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-3636(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-3632(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-3628(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-3624(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-3620(%ebp), %ecx
	movl	%ecx, (%esp)
	call	push_reload@PLT
	movl	-3656(%ebp), %edx
	movl	%eax, -1844(%ebp,%edx,4)
	jmp	.L1889
.L1858:
	.loc 1 3822 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1881
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1881
	.loc 1 3825 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	movl	-2324(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %edi
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	movl	%eax, -3616(%ebp)
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3612(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3608(%ebp)
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3604(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	$9, 40(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-3616(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-3612(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-3608(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-3604(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	%eax, -1844(%ebp,%esi,4)
	.loc 1 3834 0
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %edx
	movl	output_reloadnum@GOTOFF(%ebx), %eax
	movl	%eax, -1844(%ebp,%edx,4)
	.loc 1 3822 0
	jmp	.L1889
.L1881:
	.loc 1 3836 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1884
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1884
	.loc 1 3839 0
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %esi
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	movl	-2324(%ebp,%eax,4), %edi
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	movl	%eax, -3600(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3596(%ebp)
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3592(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3588(%ebp)
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	$9, 40(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-3600(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-3596(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-3592(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-3588(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	%eax, -1844(%ebp,%esi,4)
	.loc 1 3848 0
	movl	-516(%ebp), %edx
	movl	output_reloadnum@GOTOFF(%ebx), %eax
	movl	%eax, -1844(%ebp,%edx,4)
	.loc 1 3836 0
	jmp	.L1889
.L1884:
	.loc 1 3850 0
	cmpl	$0, -520(%ebp)
	js	.L1887
	.loc 1 3851 0
	leal	__FUNCTION__.15507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3851, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1887:
	.loc 1 3854 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	error_for_asm@PLT
	.loc 1 3856 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 3857 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3858 0
	movl	$0, -3932(%ebp)
	jmp	.L1223
.L1838:
	.loc 1 3861 0
	movl	-516(%ebp), %eax
	movl	-2084(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jns	.L1890
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jns	.L1890
	movl	-516(%ebp), %eax
	movl	-1004(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1890
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1890
.LBB42:
	.loc 1 3870 0
	movl	-516(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -344(%ebp)
	.loc 1 3872 0
	jmp	.L1895
.L1896:
	.loc 1 3873 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -344(%ebp)
.L1895:
	.loc 1 3872 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1896
	.loc 1 3874 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1898
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1900
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1900
.L1898:
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1902
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1900
.L1902:
	cmpl	$0, -504(%ebp)
	jne	.L1900
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1905
	cmpl	$0, -500(%ebp)
	jne	.L1900
	movl	this_insn_is_asm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1900
.L1905:
	.loc 1 3892 0
	movl	-516(%ebp), %edx
	movl	%edx, -3584(%ebp)
	movl	-516(%ebp), %eax
	movl	-1124(%ebp,%eax,4), %eax
	movl	%eax, -3580(%ebp)
	cmpl	$0, -520(%ebp)
	js	.L1908
	movl	-520(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzbl	10(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -3576(%ebp)
	jmp	.L1910
.L1908:
	movl	$0, -3576(%ebp)
.L1910:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1911
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3572(%ebp)
	jmp	.L1913
.L1911:
	movl	$0, -3572(%ebp)
.L1913:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1914
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3568(%ebp)
	jmp	.L1916
.L1914:
	movl	$0, -3568(%ebp)
.L1916:
	movl	-516(%ebp), %eax
	movl	-1724(%ebp,%eax,4), %eax
	movl	%eax, -3564(%ebp)
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1917
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3560(%ebp)
	jmp	.L1919
.L1917:
	movl	$0, -3560(%ebp)
.L1919:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1920
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3556(%ebp)
	jmp	.L1922
.L1920:
	movl	$0, -3556(%ebp)
.L1922:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1923
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3552(%ebp)
	jmp	.L1925
.L1923:
	movl	$0, -3552(%ebp)
.L1925:
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1926
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3548(%ebp)
	jmp	.L1928
.L1926:
	movl	$0, -3548(%ebp)
.L1928:
	movl	-3580(%ebp), %ecx
	movl	%ecx, 40(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$1, 32(%esp)
	movl	-3576(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-3572(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-3568(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-3564(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-3560(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-3556(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-3552(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-3548(%ebp), %edx
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	-3584(%ebp), %ecx
	movl	%eax, -1844(%ebp,%ecx,4)
	.loc 1 3874 0
	jmp	.L1889
.L1900:
	.loc 1 3914 0
	cmpl	$0, 12(%ebp)
	je	.L1889
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1931
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1889
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1889
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L1889
.L1931:
	.loc 1 3920 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, -344(%ebp)
	.loc 1 3922 0
	jmp	.L1935
.L1936:
	.loc 1 3923 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -344(%ebp)
.L1935:
	.loc 1 3922 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1936
	.loc 1 3924 0
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1889
	.loc 1 3926 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	je	.L1939
	.loc 1 3930 0
	movl	-344(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movb	$2, 2(%eax)
.L1939:
	.loc 1 3932 0
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1889
	.loc 1 3933 0
	movl	-344(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	.loc 1 3861 0
	jmp	.L1889
.L1890:
.LBE42:
	.loc 1 3937 0
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L1889
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	movzbl	-230(%ebp,%eax), %eax
	testb	%al, %al
	je	.L1889
	movl	-516(%ebp), %eax
	movl	-1364(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L1889
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	movl	-1364(%ebp,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L1889
	cmpl	$0, -504(%ebp)
	jne	.L1889
	cmpl	$0, -500(%ebp)
	jne	.L1889
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1889
.LBB43:
	.loc 1 3947 0
	movl	-516(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -340(%ebp)
	.loc 1 3949 0
	jmp	.L1949
.L1950:
	.loc 1 3950 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -340(%ebp)
.L1949:
	.loc 1 3949 0
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1950
	.loc 1 3951 0
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1952
	movl	-340(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1889
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1889
.L1952:
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	movl	-1724(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1889
	.loc 1 3956 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %edi
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3544(%ebp)
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	movl	-2324(%ebp,%eax,4), %eax
	movl	%eax, -3540(%ebp)
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %eax
	movl	-1724(%ebp,%eax,4), %eax
	movl	%eax, -3536(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3532(%ebp)
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -3528(%ebp)
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -3524(%ebp)
	movl	-516(%ebp), %eax
	movl	-1964(%ebp,%eax,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	$9, 40(%esp)
	movl	%ecx, 36(%esp)
	movl	$1, 32(%esp)
	movl	$0, 28(%esp)
	movl	-3544(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-3540(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-3536(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-3532(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-3528(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-3524(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	push_reload@PLT
	movl	%eax, -1844(%ebp,%edi,4)
	movl	-1844(%ebp,%edi,4), %eax
	movl	%eax, -1844(%ebp,%esi,4)
.L1889:
.LBE43:
	.loc 1 3753 0
	addl	$1, -516(%ebp)
.L1836:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1837
	.loc 1 3971 0
	movl	$0, -516(%ebp)
	jmp	.L1957
.L1958:
	.loc 1 3978 0
	cmpl	$0, 12(%ebp)
	je	.L1959
.LBB44:
	.loc 1 3980 0
	movl	-516(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %eax
	movl	%eax, -336(%ebp)
	.loc 1 3982 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	-336(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3987 0
	movl	-3476(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1965
	movl	-336(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L1965
	movl	-336(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	-3476(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L1965
	.loc 1 3990 0
	movl	-3476(%ebp), %eax
	movl	68(%eax), %edx
	movl	-336(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	-3476(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L1965
.L1959:
.LBE44:
	.loc 1 3995 0
	movl	-516(%ebp), %eax
	movl	-2204(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -452(%ebp)
.L1965:
	.loc 1 3971 0
	addl	$1, -516(%ebp)
.L1957:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L1958
	.loc 1 4006 0
	cmpl	$0, -520(%ebp)
	js	.L1967
	cmpl	$0, 12(%ebp)
	je	.L1967
	.loc 1 4007 0
	movl	-520(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	1(%eax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -516(%ebp)
	jmp	.L1970
.L1971:
.LBB45:
	.loc 1 4009 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -332(%ebp)
	.loc 1 4010 0
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %ecx
	movl	-332(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 4011 0
	movl	-332(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %ecx
	movl	-516(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	dup_replacements
.LBE45:
	.loc 1 4007 0
	subl	$1, -516(%ebp)
.L1970:
	cmpl	$0, -516(%ebp)
	jns	.L1971
.L1967:
	.loc 1 4042 0
	cmpl	$0, -460(%ebp)
	jne	.L1972
	.loc 1 4043 0
	call	combine_reloads
.L1972:
	.loc 1 4050 0
	movl	$0, -516(%ebp)
	jmp	.L1974
.L1975:
.LBB46:
	.loc 1 4054 0
	movl	-516(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -512(%ebp)
	jmp	.L1976
.L1977:
	.loc 1 4055 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1978
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L1978
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1978
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L1982
.L1978:
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1983
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L1983
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1983
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L1982
.L1983:
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1982
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L1988
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1982
.L1988:
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L1990
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1982
.L1990:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1964(%ebp,%eax,4), %ecx
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L1992
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1964(%ebp,%eax,4), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L1982
.L1992:
	.loc 1 4072 0
	movl	$0, -328(%ebp)
	jmp	.L1994
.L1995:
	.loc 1 4073 0
	movl	-328(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	-512(%ebp), %eax
	jne	.L1996
	.loc 1 4074 0
	movl	-328(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %ecx
	movl	%eax, %edx
	sall	$4, %edx
	movl	-516(%ebp), %eax
	movl	%eax, (%edx,%ecx)
.L1996:
	.loc 1 4072 0
	addl	$1, -328(%ebp)
.L1994:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -328(%ebp)
	jl	.L1995
	.loc 1 4076 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1999
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L2001
.L1999:
	.loc 1 4078 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
	.loc 1 4076 0
	jmp	.L2002
.L2001:
	.loc 1 4080 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$7, (%eax)
.L2002:
	.loc 1 4081 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	$0, (%eax,%edx)
.L1982:
	.loc 1 4054 0
	addl	$1, -512(%ebp)
.L1976:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -512(%ebp)
	jl	.L1977
.LBE46:
	.loc 1 4050 0
	addl	$1, -516(%ebp)
.L1974:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L1975
	.loc 1 4102 0
	movl	$0, -516(%ebp)
	jmp	.L2005
.L2006:
	.loc 1 4104 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L2007
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1124(%ebp,%eax,4), %eax
	cmpl	%eax, %ecx
	jne	.L2007
	.loc 1 4106 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1244(%ebp,%eax,4), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	%ecx, (%eax)
.L2007:
	.loc 1 4108 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L2010
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L2010
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2010
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L2014
.L2010:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L2015
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2014
.L2015:
	.loc 1 4118 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L2017
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2019
.L2017:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2019
.LBB47:
	.loc 1 4122 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	movl	%eax, -324(%ebp)
	.loc 1 4124 0
	movl	-324(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
	.loc 1 4127 0
	cmpl	$0, -324(%ebp)
	jle	.L2019
	movl	-324(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2019
	.loc 1 4129 0
	movl	-324(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
.L2019:
.LBE47:
	.loc 1 4133 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L2023
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L2025
.L2023:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2025
.LBB48:
	.loc 1 4137 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, -320(%ebp)
	.loc 1 4139 0
	movl	-320(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
	.loc 1 4142 0
	cmpl	$0, -320(%ebp)
	je	.L2025
	movl	-320(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L2025
	.loc 1 4144 0
	movl	-320(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
.L2025:
.LBE48:
	.loc 1 4148 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2029
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L2031
.L2029:
	.loc 1 4150 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$8, (%eax)
	.loc 1 4148 0
	jmp	.L2014
.L2031:
	.loc 1 4152 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$7, (%eax)
.L2014:
	.loc 1 4155 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L2032
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2034
.L2032:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L2034
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1844(%ebp,%eax,4), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	jne	.L2034
	.loc 1 4160 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	$10, (%eax)
.L2034:
	.loc 1 4162 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1964(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L2037
	.loc 1 4163 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-1964(%ebp,%eax,4), %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	%ecx, (%eax)
.L2037:
	.loc 1 4102 0
	addl	$1, -516(%ebp)
.L2005:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L2006
.LBB49:
	.loc 1 4190 0
	movl	$-2, -316(%ebp)
	.loc 1 4193 0
	movl	$0, -312(%ebp)
	.loc 1 4200 0
	movl	$0, -516(%ebp)
	jmp	.L2040
.L2041:
	.loc 1 4201 0
	movl	-516(%ebp), %edx
	movl	-516(%ebp), %eax
	movl	$-2, -2564(%ebp,%eax,4)
	movl	-2564(%ebp,%eax,4), %eax
	movl	%eax, -2444(%ebp,%edx,4)
	.loc 1 4200 0
	addl	$1, -516(%ebp)
.L2040:
	movl	-516(%ebp), %eax
	cmpl	-508(%ebp), %eax
	jl	.L2041
	.loc 1 4202 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -516(%ebp)
	jmp	.L2043
.L2044:
	.loc 1 4204 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	movl	%eax, -3520(%ebp)
	cmpl	$5, -3520(%ebp)
	je	.L2047
	cmpl	$7, -3520(%ebp)
	je	.L2048
	cmpl	$3, -3520(%ebp)
	je	.L2046
	jmp	.L2045
.L2048:
	.loc 1 4207 0
	addl	$1, -316(%ebp)
	cmpl	$0, -316(%ebp)
	js	.L2045
	.loc 1 4209 0
	movl	-516(%ebp), %eax
	movl	%eax, -316(%ebp)
	.loc 1 4210 0
	movl	$1, -312(%ebp)
	.loc 1 4212 0
	jmp	.L2045
.L2046:
	.loc 1 4214 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-2444(%ebp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, -2444(%ebp,%eax,4)
	movl	-2444(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L2045
	.loc 1 4216 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %edx
	movl	-516(%ebp), %eax
	movl	%eax, -2444(%ebp,%edx,4)
	.loc 1 4217 0
	movl	$1, -312(%ebp)
	.loc 1 4219 0
	jmp	.L2045
.L2047:
	.loc 1 4221 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-2564(%ebp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, -2564(%ebp,%eax,4)
	movl	-2564(%ebp,%eax,4), %eax
	testl	%eax, %eax
	js	.L2045
	.loc 1 4223 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %edx
	movl	-516(%ebp), %eax
	movl	%eax, -2564(%ebp,%edx,4)
	.loc 1 4224 0
	movl	$1, -312(%ebp)
.L2045:
	.loc 1 4202 0
	subl	$1, -516(%ebp)
.L2043:
	cmpl	$0, -516(%ebp)
	jns	.L2044
	.loc 1 4232 0
	cmpl	$0, -312(%ebp)
	je	.L2055
	.loc 1 4234 0
	movl	$0, -516(%ebp)
	jmp	.L2057
.L2058:
.LBB50:
	.loc 1 4239 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	movl	%eax, -3516(%ebp)
	cmpl	$6, -3516(%ebp)
	je	.L2061
	cmpl	$8, -3516(%ebp)
	je	.L2062
	cmpl	$4, -3516(%ebp)
	je	.L2060
	jmp	.L2064
.L2062:
	.loc 1 4242 0
	movl	-316(%ebp), %eax
	movl	%eax, -308(%ebp)
	.loc 1 4243 0
	movl	$7, -304(%ebp)
	.loc 1 4244 0
	jmp	.L2063
.L2060:
	.loc 1 4246 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-2444(%ebp,%eax,4), %eax
	movl	%eax, -308(%ebp)
	.loc 1 4247 0
	movl	$3, -304(%ebp)
	.loc 1 4248 0
	jmp	.L2063
.L2061:
	.loc 1 4250 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	-2564(%ebp,%eax,4), %eax
	movl	%eax, -308(%ebp)
	.loc 1 4251 0
	movl	$5, -304(%ebp)
.L2063:
	.loc 1 4256 0
	cmpl	$0, -308(%ebp)
	js	.L2064
	.loc 1 4258 0
	movl	-516(%ebp), %eax
	cmpl	-308(%ebp), %eax
	jle	.L2066
	.loc 1 4259 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	68(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2064
.L2066:
	.loc 1 4264 0
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -512(%ebp)
	jmp	.L2068
.L2069:
	.loc 1 4266 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	-304(%ebp), %eax
	jne	.L2070
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L2072
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	cmpl	-516(%ebp), %eax
	sete	-3509(%ebp)
	jmp	.L2074
.L2072:
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	setne	-3509(%ebp)
.L2074:
	cmpb	$0, -3509(%ebp)
	je	.L2070
	.loc 1 4271 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	68(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4272 0
	jmp	.L2064
.L2070:
	.loc 1 4264 0
	subl	$1, -512(%ebp)
.L2068:
	movl	-512(%ebp), %eax
	cmpl	-308(%ebp), %eax
	jg	.L2069
.L2064:
.LBE50:
	.loc 1 4234 0
	addl	$1, -516(%ebp)
.L2057:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L2058
.L2055:
.LBE49:
	.loc 1 4285 0
	movl	$0, -516(%ebp)
	jmp	.L2076
.L2077:
	.loc 1 4286 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L2078
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2078
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L2081
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$8, %eax
	je	.L2081
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	$10, %eax
	jne	.L2078
.L2081:
	.loc 1 4290 0
	movl	$0, -512(%ebp)
	jmp	.L2084
.L2085:
	.loc 1 4291 0
	movl	-516(%ebp), %eax
	cmpl	-512(%ebp), %eax
	je	.L2086
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L2086
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2086
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L2086
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	cmpl	%eax, %ecx
	je	.L2091
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L2086
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2094
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2096
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %ecx
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L2096
	movl	$1, -3508(%ebp)
	jmp	.L2099
.L2096:
	movl	$0, -3508(%ebp)
.L2099:
	movzbl	-3508(%ebp), %eax
	testb	%al, %al
	jne	.L2091
	jmp	.L2086
.L2094:
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2100
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L2100
	movl	$1, -3504(%ebp)
	jmp	.L2103
.L2100:
	movl	$0, -3504(%ebp)
.L2103:
	movzbl	-3504(%ebp), %eax
	testb	%al, %al
	je	.L2086
.L2091:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L2086
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	jne	.L2086
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	jne	.L2086
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %ecx
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L2086
	.loc 1 4298 0
	movl	-516(%ebp), %eax
	movl	%eax, -3500(%ebp)
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %eax
	movl	%eax, -3496(%ebp)
	movl	%ecx, -3492(%ebp)
	movl	-3496(%ebp), %edx
	cmpl	%edx, -3492(%ebp)
	jle	.L2108
	movl	-3496(%ebp), %ecx
	movl	%ecx, -3492(%ebp)
.L2108:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -3500(%ebp), %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	-3492(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 4299 0
	movl	-512(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-516(%ebp), %eax
	movl	%eax, (%esp)
	call	transfer_replacements@PLT
	.loc 1 4300 0
	movl	-512(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	$0, (%eax,%edx)
.L2086:
	.loc 1 4290 0
	addl	$1, -512(%ebp)
.L2084:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -512(%ebp)
	jl	.L2085
.L2078:
	.loc 1 4285 0
	addl	$1, -516(%ebp)
.L2076:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L2077
	.loc 1 4316 0
	movl	$0, -516(%ebp)
	jmp	.L2110
.L2111:
	.loc 1 4318 0
	movl	-516(%ebp), %ecx
	movl	%ecx, -3488(%ebp)
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2112
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L2114
.L2112:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, -3484(%ebp)
	jmp	.L2115
.L2114:
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -3484(%ebp)
.L2115:
	movl	rld@GOT(%ebx), %edx
	imull	$76, -3488(%ebp), %eax
	addl	%edx, %eax
	addl	$20, %eax
	movl	-3484(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 4324 0
	movl	-516(%ebp), %esi
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$20, %eax
	movl	(%eax), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_class_max_nregs@PLT
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$24, %eax
	movl	%ecx, (%eax)
	.loc 1 4316 0
	addl	$1, -516(%ebp)
.L2110:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L2111
	.loc 1 4329 0
	movl	$0, -516(%ebp)
	jmp	.L2117
.L2118:
	.loc 1 4330 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2119
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2119
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2119
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %ecx
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	cmpl	%eax, %ecx
	jne	.L2119
.LBB51:
	.loc 1 4335 0
	movl	-3476(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -300(%ebp)
	.loc 1 4336 0
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -296(%ebp)
	.loc 1 4338 0
	cmpl	$175, -296(%ebp)
	ja	.L2119
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edi
	movl	(%esi,%eax,8), %esi
	movl	-296(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L2133
	movl	%edx, %eax
	xorl	%edx, %edx
.L2133:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2119
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	-296(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L2119
	.loc 1 4341 0
	movl	-516(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	leal	44(%eax), %edx
	movl	-300(%ebp), %eax
	movl	%eax, (%edx)
.L2119:
.LBE51:
	.loc 1 4329 0
	addl	$1, -516(%ebp)
.L2117:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -516(%ebp)
	jl	.L2118
	.loc 1 4344 0
	movl	-452(%ebp), %ecx
	movl	%ecx, -3932(%ebp)
.L1223:
	movl	-3932(%ebp), %eax
	.loc 1 4345 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2129
	call	__stack_chk_fail_local
.L2129:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	find_reloads, .-find_reloads
	.type	alternative_allows_memconst, @function
alternative_allows_memconst:
.LFB34:
	.loc 1 4354 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	subl	$20, %esp
.LCFI96:
	.loc 1 4357 0
	jmp	.L2135
.L2136:
	.loc 1 4359 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L2136
	.loc 1 4360 0
	subl	$1, 12(%ebp)
.L2135:
	.loc 1 4357 0
	cmpl	$0, 12(%ebp)
	jg	.L2136
	.loc 1 4364 0
	jmp	.L2139
.L2140:
	.loc 1 4365 0
	cmpl	$109, -4(%ebp)
	je	.L2141
	cmpl	$111, -4(%ebp)
	jne	.L2139
.L2141:
	.loc 1 4366 0
	movl	$1, -20(%ebp)
	jmp	.L2143
.L2139:
	.loc 1 4364 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	setne	%al
	addl	$1, 8(%ebp)
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2144
	cmpl	$44, -4(%ebp)
	je	.L2144
	cmpl	$35, -4(%ebp)
	jne	.L2140
.L2144:
	.loc 1 4367 0
	movl	$0, -20(%ebp)
.L2143:
	movl	-20(%ebp), %eax
	.loc 1 4368 0
	leave
	ret
.LFE34:
	.size	alternative_allows_memconst, .-alternative_allows_memconst
	.section	.rodata
	.type	__FUNCTION__.18591, @object
	.size	__FUNCTION__.18591, 20
__FUNCTION__.18591:
	.string	"find_reloads_toplev"
	.text
	.type	find_reloads_toplev, @function
find_reloads_toplev:
.LFB35:
	.loc 1 4402 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%esi
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$96, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4403 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 4405 0
	movl	-44(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4409 0
	cmpl	$71, -44(%ebp)
	jne	.L2149
.LBB52:
	.loc 1 4412 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4413 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2151
	cmpl	$0, 24(%ebp)
	jne	.L2151
	.loc 1 4414 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4413 0
	jmp	.L2154
.L2151:
	.loc 1 4421 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2154
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2156
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2154
.L2156:
.LBB53:
	.loc 1 4424 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_memloc
	movl	%eax, -24(%ebp)
	.loc 1 4425 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2158
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2154
.L2158:
	.loc 1 4431 0
	movl	replace_reloads@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2160
	movl	12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	je	.L2160
	.loc 1 4435 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movb	$2, 2(%eax)
.L2160:
	.loc 1 4437 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4438 0
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	movl	%eax, -36(%ebp)
	.loc 1 4440 0
	cmpl	$0, 32(%ebp)
	je	.L2154
	.loc 1 4441 0
	movl	32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L2154:
.LBE53:
	.loc 1 4444 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2164
.L2149:
.LBE52:
	.loc 1 4446 0
	cmpl	$76, -44(%ebp)
	jne	.L2165
.LBB54:
	.loc 1 4448 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4450 0
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	movl	%eax, -36(%ebp)
	.loc 1 4452 0
	cmpl	$0, 32(%ebp)
	je	.L2167
	.loc 1 4453 0
	movl	32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L2167:
	.loc 1 4455 0
	movl	-48(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2164
.L2165:
.LBE54:
	.loc 1 4458 0
	cmpl	$73, -44(%ebp)
	jne	.L2169
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2169
.LBB55:
	.loc 1 4469 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4472 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_lowpart_p@PLT
	testl	%eax, %eax
	je	.L2172
	cmpl	$175, -20(%ebp)
	jle	.L2172
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L2172
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2172
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_lowpart_common@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L2172
	.loc 1 4477 0
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2164
.L2172:
	.loc 1 4479 0
	cmpl	$175, -20(%ebp)
	jle	.L2178
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L2178
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2178
	.loc 1 4482 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4485 0
	cmpl	$0, -16(%ebp)
	jne	.L2182
	.loc 1 4486 0
	leal	__FUNCTION__.18591@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4486, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2182:
	.loc 1 4487 0
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2164
.L2178:
	.loc 1 4503 0
	cmpl	$175, -20(%ebp)
	jle	.L2169
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L2169
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2186
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2169
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2186
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	je	.L2186
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2169
.L2186:
	.loc 1 4514 0
	movl	8(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_subreg_address
	movl	%eax, 8(%ebp)
.L2169:
.LBE55:
	.loc 1 4518 0
	movl	$0, -32(%ebp)
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L2191
.L2192:
	.loc 1 4520 0
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2193
.LBB56:
	.loc 1 4524 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
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
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_toplev
	movl	%eax, -12(%ebp)
	.loc 1 4530 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	cmpl	-12(%ebp), %eax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2195
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L2195
	cmpl	$0, -32(%ebp)
	jne	.L2195
	.loc 1 4532 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4533 0
	movl	$1, -32(%ebp)
.L2195:
	.loc 1 4535 0
	movl	8(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%ecx,%edx,8)
.L2193:
.LBE56:
	.loc 1 4518 0
	subl	$1, -36(%ebp)
.L2191:
	cmpl	$0, -36(%ebp)
	jns	.L2192
	.loc 1 4538 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
.L2164:
	movl	-60(%ebp), %eax
	.loc 1 4539 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	find_reloads_toplev, .-find_reloads_toplev
	.type	make_memloc, @function
make_memloc:
.LFB36:
	.loc 1 4548 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$52, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4552 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	eliminate_regs@PLT
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4556 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L2209
	.loc 1 4557 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -8(%ebp)
.L2209:
	.loc 1 4559 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4560 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4564 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L2211
	.loc 1 4565 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -8(%ebp)
.L2211:
	.loc 1 4566 0
	movl	-8(%ebp), %eax
	.loc 1 4567 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	make_memloc, .-make_memloc
	.type	maybe_memory_address_p, @function
maybe_memory_address_p:
.LFB37:
	.loc 1 4578 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$36, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4580 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4581 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4583 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4584 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4585 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4587 0
	movl	-16(%ebp), %eax
	.loc 1 4588 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	maybe_memory_address_p, .-maybe_memory_address_p
	.type	find_reloads_address, @function
find_reloads_address:
.LFB38:
	.loc 1 4624 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%esi
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$144, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4626 0
	movl	$0, -12(%ebp)
	.loc 1 4633 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2217
	.loc 1 4635 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4639 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4640 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L2219
	movl	-20(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eliminate_regs@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L2219
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2219
	.loc 1 4644 0
	movl	-20(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4645 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2219:
	.loc 1 4648 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4649 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L2224
	.loc 1 4651 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2226
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2255
.L2226:
	.loc 1 4653 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_memloc
	movl	%eax, -20(%ebp)
	.loc 1 4654 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	jne	.L2229
	.loc 1 4656 0
	cmpl	$3, 28(%ebp)
	je	.L2231
	cmpl	$5, 28(%ebp)
	je	.L2233
	movl	28(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L2235
.L2233:
	movl	$6, -100(%ebp)
.L2235:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L2236
.L2231:
	movl	$4, -104(%ebp)
.L2236:
	movl	-20(%ebp), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
.L2229:
	.loc 1 4665 0
	cmpl	$0, 32(%ebp)
	jle	.L2237
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2237
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2237
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2237
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2240
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2237
.L2240:
	.loc 1 4675 0
	movl	replace_reloads@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2251
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2251
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2251
	.loc 1 4679 0
	movl	-20(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4683 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movb	$2, 2(%eax)
.L2251:
	.loc 1 4689 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2237:
	.loc 1 4691 0
	movl	-20(%ebp), %eax
	movl	%eax, 16(%ebp)
	jmp	.L2255
.L2224:
	.loc 1 4699 0
	cmpl	$175, -16(%ebp)
	jg	.L2255
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2257
	cmpl	$175, -16(%ebp)
	jle	.L2259
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	jle	.L2261
	jmp	.L2263
.L2259:
	cmpl	$1, -16(%ebp)
	jle	.L2261
.L2263:
	cmpl	$175, -16(%ebp)
	jle	.L2264
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	jle	.L2266
	jmp	.L2261
.L2264:
	cmpl	$7, -16(%ebp)
	jle	.L2266
.L2261:
	cmpl	$175, -16(%ebp)
	jle	.L2267
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	je	.L2266
	jmp	.L2270
.L2267:
	cmpl	$16, -16(%ebp)
	je	.L2266
.L2270:
	cmpl	$175, -16(%ebp)
	jle	.L2271
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	je	.L2266
	jmp	.L2274
.L2271:
	cmpl	$17, -16(%ebp)
	je	.L2266
.L2274:
	cmpl	$175, -16(%ebp)
	jle	.L2275
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	je	.L2266
	jmp	.L2278
.L2275:
	cmpl	$1, -16(%ebp)
	je	.L2266
.L2278:
	cmpl	$175, -16(%ebp)
	jle	.L2279
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L2266
	jmp	.L2282
.L2279:
	cmpl	$0, -16(%ebp)
	je	.L2266
.L2282:
	cmpl	$175, -16(%ebp)
	jle	.L2283
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$29, %ax
	jne	.L2285
	jmp	.L2287
.L2283:
	cmpl	$29, -16(%ebp)
	jne	.L2285
.L2287:
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$4, %al
	je	.L2266
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$8, %al
	jne	.L2285
.L2266:
	movl	$1, -92(%ebp)
	jmp	.L2289
.L2285:
	movl	$0, -92(%ebp)
.L2289:
	movzbl	-92(%ebp), %eax
	movb	%al, -93(%ebp)
	jmp	.L2290
.L2257:
	cmpl	$175, -16(%ebp)
	jle	.L2291
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	$31, %eax
	setbe	-85(%ebp)
	jmp	.L2293
.L2291:
	movl	-16(%ebp), %eax
	cmpl	$31, %eax
	setbe	-85(%ebp)
.L2293:
	movzbl	-85(%ebp), %eax
	movb	%al, -93(%ebp)
.L2290:
	cmpb	$0, -93(%ebp)
	je	.L2255
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	regno_clobbered_p@PLT
	testl	%eax, %eax
	jne	.L2255
	.loc 1 4702 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2255:
	.loc 1 4705 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2296
	movl	$2, -80(%ebp)
	jmp	.L2298
.L2296:
	movl	$5, -80(%ebp)
.L2298:
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_reload@PLT
	.loc 1 4707 0
	movl	$1, -108(%ebp)
	jmp	.L2223
.L2217:
	.loc 1 4710 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2299
	.loc 1 4720 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2301
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2301
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2301
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2301
	.loc 1 4724 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2301:
	.loc 1 4726 0
	movl	$0, subst_reg_equivs_changed@GOTOFF(%ebx)
	.loc 1 4727 0
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_reg_equivs
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4729 0
	movl	subst_reg_equivs_changed@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2306
	.loc 1 4730 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2306:
	.loc 1 4733 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2299
	.loc 1 4734 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2299:
	.loc 1 4758 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$93, %ax
	jne	.L2309
	.loc 1 4760 0
	movl	$1, -12(%ebp)
	.loc 1 4761 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 4762 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
.L2309:
	.loc 1 4771 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2311
	.loc 1 4775 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4776 0
	cmpl	$0, 32(%ebp)
	je	.L2313
	movl	32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -76(%ebp)
	jmp	.L2315
.L2313:
	movl	$0, -76(%ebp)
.L2315:
	cmpl	$3, 28(%ebp)
	je	.L2316
	cmpl	$5, 28(%ebp)
	je	.L2318
	movl	28(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L2320
.L2318:
	movl	$6, -68(%ebp)
.L2320:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L2321
.L2316:
	movl	$4, -72(%ebp)
.L2321:
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 4782 0
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L2322
	cmpl	$0, 12(%ebp)
	je	.L2322
	.loc 1 4784 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4785 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_replacements@PLT
	.loc 1 4786 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 4787 0
	cmpl	$0, -12(%ebp)
	je	.L2322
	.loc 1 4788 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
.L2322:
	.loc 1 4795 0
	cmpl	$0, 32(%ebp)
	je	.L2326
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2328
	movl	indirect_symref_ok@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2326
.L2328:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L2326
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2331
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2326
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2326
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2331
.L2326:
	.loc 1 4805 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2335
	movl	$2, -60(%ebp)
	jmp	.L2337
.L2335:
	movl	$5, -60(%ebp)
.L2337:
	movl	-20(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 4809 0
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	jmp	.L2223
.L2331:
	.loc 1 4812 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2311:
	.loc 1 4820 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2338
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2338
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2338
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L2338
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2338
	.loc 1 4827 0
	cmpl	$0, 12(%ebp)
	je	.L2344
	.loc 1 4829 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4830 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 4831 0
	cmpl	$0, -12(%ebp)
	je	.L2344
	.loc 1 4832 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
.L2344:
	.loc 1 4835 0
	movl	double_reg_address_ok@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2347
	.loc 1 4838 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, 16(%ebp)
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4842 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %esi
	addl	$12, %esi
	movl	16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	find_reloads_address_part
	.loc 1 4845 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2347:
	.loc 1 4852 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2349
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2349
	movl	$5, -56(%ebp)
	jmp	.L2352
.L2349:
	movl	$4, -56(%ebp)
.L2352:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2353
	movl	$2, -52(%ebp)
	jmp	.L2355
.L2353:
	movl	$5, -52(%ebp)
.L2355:
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_part
	.loc 1 4855 0
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	jmp	.L2223
.L2338:
	.loc 1 4882 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2356
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2356
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2356
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2356
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2356
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L2356
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	$12, %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_memory_address_p
	testl	%eax, %eax
	jne	.L2356
	.loc 1 4889 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %esi
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 16(%ebp)
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4893 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2364
	movl	$2, -44(%ebp)
	jmp	.L2366
.L2364:
	movl	$5, -44(%ebp)
.L2366:
	movl	16(%ebp), %ecx
	addl	$4, %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_address_part
	.loc 1 4896 0
	movl	16(%ebp), %edx
	addl	$12, %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 4899 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2356:
	.loc 1 4902 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2367
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2367
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2367
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2367
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2367
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L2367
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_memory_address_p
	testl	%eax, %eax
	jne	.L2367
	.loc 1 4909 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 16(%ebp)
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4913 0
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2375
	movl	$2, -36(%ebp)
	jmp	.L2377
.L2375:
	movl	$5, -36(%ebp)
.L2377:
	movl	16(%ebp), %ecx
	addl	$12, %ecx
	movl	16(%ebp), %eax
	movl	12(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_address_part
	.loc 1 4916 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 4919 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2367:
	.loc 1 4925 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4926 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2378
	.loc 1 4927 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_indexed_address
	movl	%eax, -20(%ebp)
.L2378:
	.loc 1 4928 0
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L2380
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2380
	.loc 1 4933 0
	movl	$0, subst_reg_equivs_changed@GOTOFF(%ebx)
	.loc 1 4934 0
	movl	-20(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_reg_equivs
	movl	%eax, -20(%ebp)
	.loc 1 4938 0
	movl	subst_reg_equivs_changed@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2383
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L2380
.L2383:
	.loc 1 4940 0
	movl	-20(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4941 0
	movl	$0, -108(%ebp)
	jmp	.L2223
.L2380:
	.loc 1 4947 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2385
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2393
.L2385:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	jne	.L2393
	.loc 1 4951 0
	cmpl	$0, 12(%ebp)
	je	.L2395
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L2395
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2395
	.loc 1 4954 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4955 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 4956 0
	cmpl	$0, -12(%ebp)
	je	.L2395
	.loc 1 4957 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
.L2395:
	.loc 1 4960 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2400
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2400
	movl	$5, -32(%ebp)
	jmp	.L2403
.L2400:
	movl	$4, -32(%ebp)
.L2403:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2404
	movl	$2, -28(%ebp)
	jmp	.L2406
.L2404:
	movl	$5, -28(%ebp)
.L2406:
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_part
	.loc 1 4962 0
	cmpl	$0, -12(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	jmp	.L2223
.L2393:
	.loc 1 4965 0
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
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	movl	%eax, -108(%ebp)
.L2223:
	movl	-108(%ebp), %eax
	.loc 1 4967 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	find_reloads_address, .-find_reloads_address
	.type	subst_reg_equivs, @function
subst_reg_equivs:
.LFB39:
	.loc 1 4979 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%esi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$64, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4980 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4984 0
	movl	-28(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -48(%ebp)
	cmpl	$80, -48(%ebp)
	ja	.L2409
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L2413@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2413:
	.long	.L2410@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2411@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2410@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2412@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2409@GOTOFF
	.long	.L2410@GOTOFF
	.text
.L2410:
	.loc 1 4995 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2414
.L2411:
.LBB57:
	.loc 1 4999 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5001 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2415
	.loc 1 5003 0
	movl	$1, subst_reg_equivs_changed@GOTOFF(%ebx)
	.loc 1 5004 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2414
.L2415:
	.loc 1 5006 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2417
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2417
.LBB58:
	.loc 1 5008 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_memloc
	movl	%eax, -12(%ebp)
	.loc 1 5009 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2417
	.loc 1 5011 0
	movl	$1, subst_reg_equivs_changed@GOTOFF(%ebx)
	.loc 1 5015 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movb	$2, 2(%eax)
	.loc 1 5017 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2414
.L2417:
.LBE58:
.LBE57:
	.loc 1 5021 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2414
.L2412:
	.loc 1 5025 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2409
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2409
	.loc 1 5027 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2414
.L2409:
	.loc 1 5034 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5035 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L2423
.L2424:
	.loc 1 5036 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2425
	.loc 1 5037 0
	movl	-24(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subst_reg_equivs
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
.L2425:
	.loc 1 5035 0
	subl	$1, -24(%ebp)
.L2423:
	cmpl	$0, -24(%ebp)
	jns	.L2424
	.loc 1 5038 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2414:
	movl	-44(%ebp), %eax
	.loc 1 5039 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE39:
	.size	subst_reg_equivs, .-subst_reg_equivs
.globl form_sum
	.type	form_sum, @function
form_sum:
.LFB40:
	.loc 1 5051 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%esi
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$48, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5053 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 5055 0
	cmpl	$0, -12(%ebp)
	jne	.L2430
	.loc 1 5056 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L2430:
	.loc 1 5058 0
	cmpl	$0, -12(%ebp)
	jne	.L2432
	.loc 1 5059 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2434
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2434
	movl	$5, -32(%ebp)
	jmp	.L2437
.L2434:
	movl	$4, -32(%ebp)
.L2437:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2432:
	.loc 1 5061 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2438
	.loc 1 5062 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2440
.L2438:
	.loc 1 5063 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2441
	.loc 1 5064 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2440
.L2441:
	.loc 1 5065 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2443
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2451
.L2443:
	.loc 1 5066 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
.L2451:
	.loc 1 5068 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2452
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2454
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2452
.L2454:
	.loc 1 5069 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	form_sum@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	form_sum@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2440
.L2452:
	.loc 1 5073 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2462
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2464
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2462
.L2464:
	.loc 1 5074 0
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	form_sum@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	form_sum@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2440
.L2462:
	.loc 1 5078 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2472
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2480
.L2472:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2481
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2480
.L2481:
	.loc 1 5080 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2489
	.loc 1 5081 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L2489:
	.loc 1 5082 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2491
	.loc 1 5083 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L2491:
	.loc 1 5085 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$68, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2440
.L2480:
	.loc 1 5088 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -28(%ebp)
.L2440:
	movl	-28(%ebp), %eax
	.loc 1 5089 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	form_sum, .-form_sum
	.type	subst_indexed_address, @function
subst_indexed_address:
.LFB41:
	.loc 1 5106 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$52, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5107 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 5111 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2495
	.loc 1 5114 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 5115 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2497
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$175, -8(%ebp)
	jle	.L2497
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L2497
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2497
	.loc 1 5119 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5115 0
	jmp	.L2502
.L2497:
	.loc 1 5120 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2503
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$175, -8(%ebp)
	jle	.L2503
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jns	.L2503
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2503
	.loc 1 5124 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5120 0
	jmp	.L2502
.L2503:
	.loc 1 5125 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2508
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_indexed_address
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L2508
	.loc 1 5127 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5125 0
	jmp	.L2502
.L2508:
	.loc 1 5128 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2511
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	subst_indexed_address
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L2511
	.loc 1 5130 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5128 0
	jmp	.L2502
.L2511:
	.loc 1 5132 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2514
.L2502:
	.loc 1 5135 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2515
	.loc 1 5136 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2517
.L2515:
	.loc 1 5137 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2517
	.loc 1 5138 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L2517:
	.loc 1 5141 0
	cmpl	$0, -16(%ebp)
	je	.L2519
	.loc 1 5142 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	form_sum@PLT
	movl	%eax, -20(%ebp)
.L2519:
	.loc 1 5143 0
	cmpl	$0, -20(%ebp)
	je	.L2521
	.loc 1 5144 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	form_sum@PLT
	movl	%eax, -24(%ebp)
.L2521:
	.loc 1 5146 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2514
.L2495:
	.loc 1 5148 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L2514:
	movl	-40(%ebp), %eax
	.loc 1 5149 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	subst_indexed_address, .-subst_indexed_address
	.type	update_auto_inc_notes, @function
update_auto_inc_notes:
.LFB42:
	.loc 1 5166 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	.loc 1 5175 0
	popl	%ebp
	ret
.LFE42:
	.size	update_auto_inc_notes, .-update_auto_inc_notes
	.section	.rodata
	.type	__FUNCTION__.19882, @object
	.size	__FUNCTION__.19882, 23
__FUNCTION__.19882:
	.string	"find_reloads_address_1"
	.text
	.type	find_reloads_address_1, @function
find_reloads_address_1:
.LFB43:
	.loc 1 5211 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%esi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$396, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5212 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -116(%ebp)
	.loc 1 5214 0
	movl	-116(%ebp), %eax
	subl	$71, %eax
	movl	%eax, -364(%ebp)
	cmpl	$40, -364(%ebp)
	ja	.L2527
	movl	-364(%ebp), %eax
	sall	$2, %eax
	movl	.L2534@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2534:
	.long	.L2528@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2529@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2530@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2531@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2532@GOTOFF
	.long	.L2532@GOTOFF
	.long	.L2532@GOTOFF
	.long	.L2532@GOTOFF
	.long	.L2533@GOTOFF
	.long	.L2533@GOTOFF
	.text
.L2531:
.LBB59:
	.loc 1 5218 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 5219 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 5220 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -104(%ebp)
	.loc 1 5221 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -100(%ebp)
	.loc 1 5222 0
	movl	-112(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 5223 0
	movl	-108(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 5225 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2535
	.loc 1 5227 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 5228 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -104(%ebp)
	.loc 1 5229 0
	cmpl	$71, -104(%ebp)
	jne	.L2535
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2535
	.loc 1 5230 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %edi
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-112(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	leal	(%edi,%eax), %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -96(%ebp)
.L2535:
	.loc 1 5238 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L2539
	.loc 1 5240 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 5241 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -100(%ebp)
	.loc 1 5242 0
	cmpl	$71, -100(%ebp)
	jne	.L2539
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2539
	.loc 1 5245 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %edi
	movl	-108(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-108(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	leal	(%edi,%eax), %edx
	movl	-92(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -92(%ebp)
.L2539:
	.loc 1 5256 0
	cmpl	$0, 16(%ebp)
	je	.L2543
	.loc 1 5258 0
	cmpl	$3, 28(%ebp)
	je	.L2545
	cmpl	$5, 28(%ebp)
	je	.L2547
	movl	28(%ebp), %edx
	movl	%edx, -356(%ebp)
	jmp	.L2549
.L2547:
	movl	$6, -356(%ebp)
.L2549:
	movl	-356(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	.L2550
.L2545:
	movl	$4, -360(%ebp)
.L2550:
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 5260 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -352(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2551
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2553
	movl	$2, -344(%ebp)
	jmp	.L2555
.L2553:
	movl	$5, -344(%ebp)
.L2555:
	movl	-344(%ebp), %edx
	movl	%edx, -348(%ebp)
	jmp	.L2556
.L2551:
	movl	$0, -348(%ebp)
.L2556:
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-352(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 5263 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2543:
	.loc 1 5266 0
	cmpl	$88, -104(%ebp)
	je	.L2558
	cmpl	$130, -104(%ebp)
	je	.L2558
	cmpl	$132, -104(%ebp)
	je	.L2558
	cmpl	$131, -104(%ebp)
	je	.L2558
	cmpl	$76, -100(%ebp)
	jne	.L2563
.L2558:
	.loc 1 5269 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5271 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5266 0
	jmp	.L2564
.L2563:
	.loc 1 5275 0
	cmpl	$88, -100(%ebp)
	je	.L2565
	cmpl	$130, -100(%ebp)
	je	.L2565
	cmpl	$132, -100(%ebp)
	je	.L2565
	cmpl	$131, -100(%ebp)
	je	.L2565
	cmpl	$76, -104(%ebp)
	jne	.L2570
.L2565:
	.loc 1 5278 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5280 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5275 0
	jmp	.L2564
.L2570:
	.loc 1 5284 0
	cmpl	$64, -104(%ebp)
	je	.L2571
	cmpl	$68, -104(%ebp)
	je	.L2571
	cmpl	$78, -104(%ebp)
	je	.L2571
	cmpl	$77, -104(%ebp)
	jne	.L2575
.L2571:
	.loc 1 5286 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5284 0
	jmp	.L2564
.L2575:
	.loc 1 5289 0
	cmpl	$64, -100(%ebp)
	je	.L2576
	cmpl	$68, -100(%ebp)
	je	.L2576
	cmpl	$78, -100(%ebp)
	je	.L2576
	cmpl	$77, -100(%ebp)
	jne	.L2580
.L2576:
	.loc 1 5291 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5289 0
	jmp	.L2564
.L2580:
	.loc 1 5294 0
	cmpl	$71, -104(%ebp)
	jne	.L2581
	cmpl	$71, -100(%ebp)
	jne	.L2581
	.loc 1 5302 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L2584
	.loc 1 5303 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	jmp	.L2564
.L2584:
	.loc 1 5305 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L2587
	.loc 1 5306 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	jmp	.L2564
.L2587:
	.loc 1 5316 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5318 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5294 0
	jmp	.L2564
.L2581:
	.loc 1 5323 0
	cmpl	$71, -104(%ebp)
	jne	.L2589
	.loc 1 5325 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5327 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	jmp	.L2564
.L2589:
	.loc 1 5331 0
	cmpl	$71, -100(%ebp)
	jne	.L2564
	.loc 1 5333 0
	movl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
	.loc 1 5335 0
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
.L2564:
.LBE59:
	.loc 1 5340 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2533:
.LBB60:
	.loc 1 5345 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 5346 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 5348 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L2592
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L2592
	.loc 1 5349 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2592:
	.loc 1 5355 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-88(%ebp), %eax
	je	.L2595
	.loc 1 5356 0
	leal	__FUNCTION__.19882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5356, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2595:
	.loc 1 5362 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2597
	.loc 1 5364 0
	movl	-84(%ebp), %edx
	addl	$12, %edx
	movl	-84(%ebp), %eax
	movl	12(%eax), %ecx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
.L2597:
	.loc 1 5367 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2599
.LBB61:
	.loc 1 5369 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 5373 0
	cmpl	$175, -80(%ebp)
	jle	.L2601
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2601
	.loc 1 5375 0
	leal	__FUNCTION__.19882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5375, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2601:
	.loc 1 5379 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2604
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2606
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2604
.L2606:
.LBB62:
	.loc 1 5383 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_memloc
	movl	%eax, -120(%ebp)
	.loc 1 5385 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2608
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-120(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2604
.L2608:
	.loc 1 5392 0
	movl	-120(%ebp), %eax
	leal	4(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-120(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$9, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 5399 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -336(%ebp)
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -332(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2610
	movl	$2, -328(%ebp)
	jmp	.L2612
.L2610:
	movl	$5, -328(%ebp)
.L2612:
	movl	-84(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-120(%ebp), %esi
	movl	-120(%ebp), %edi
	movl	$9, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-332(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	push_reload@PLT
	movl	%eax, -76(%ebp)
	.loc 1 5405 0
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_auto_inc_notes
	.loc 1 5406 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2604:
.LBE62:
	.loc 1 5410 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L2613
	.loc 1 5411 0
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -80(%ebp)
.L2613:
	.loc 1 5414 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2615
	cmpl	$175, -80(%ebp)
	jle	.L2617
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	jle	.L2619
	jmp	.L2621
.L2617:
	cmpl	$1, -80(%ebp)
	jle	.L2619
.L2621:
	cmpl	$175, -80(%ebp)
	jle	.L2622
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	jg	.L2619
	jmp	.L2624
.L2622:
	cmpl	$7, -80(%ebp)
	jle	.L2624
.L2619:
	cmpl	$175, -80(%ebp)
	jle	.L2625
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	je	.L2624
	jmp	.L2628
.L2625:
	cmpl	$16, -80(%ebp)
	je	.L2624
.L2628:
	cmpl	$175, -80(%ebp)
	jle	.L2629
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	je	.L2624
	jmp	.L2632
.L2629:
	cmpl	$17, -80(%ebp)
	je	.L2624
.L2632:
	cmpl	$175, -80(%ebp)
	jle	.L2633
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	je	.L2624
	jmp	.L2636
.L2633:
	cmpl	$1, -80(%ebp)
	je	.L2624
.L2636:
	cmpl	$175, -80(%ebp)
	jle	.L2637
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L2624
	jmp	.L2640
.L2637:
	cmpl	$0, -80(%ebp)
	je	.L2624
.L2640:
	cmpl	$175, -80(%ebp)
	jle	.L2641
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$29, %ax
	jne	.L2643
	jmp	.L2645
.L2641:
	cmpl	$29, -80(%ebp)
	jne	.L2643
.L2645:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$4, %al
	je	.L2624
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$8, %al
	je	.L2624
.L2643:
	movl	$1, -320(%ebp)
	jmp	.L2647
.L2624:
	movl	$0, -320(%ebp)
.L2647:
	movzbl	-320(%ebp), %edx
	movb	%dl, -321(%ebp)
	jmp	.L2648
.L2615:
	cmpl	$175, -80(%ebp)
	jle	.L2649
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	$31, %eax
	seta	-313(%ebp)
	jmp	.L2651
.L2649:
	movl	-80(%ebp), %eax
	cmpl	$31, %eax
	seta	-313(%ebp)
.L2651:
	movzbl	-313(%ebp), %eax
	movb	%al, -321(%ebp)
.L2648:
	cmpb	$0, -321(%ebp)
	je	.L2652
	.loc 1 5416 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -312(%ebp)
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -308(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2654
	movl	$2, -304(%ebp)
	jmp	.L2656
.L2654:
	movl	$5, -304(%ebp)
.L2656:
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	-84(%ebp), %ecx
	addl	$4, %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	-84(%ebp), %eax
	movl	4(%eax), %edi
	movl	$9, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	push_reload@PLT
	movl	%eax, -76(%ebp)
	.loc 1 5422 0
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_auto_inc_notes
	.loc 1 5423 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2652:
.LBE61:
.LBE60:
	.loc 1 5429 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2599:
.LBB63:
	.loc 1 5427 0
	leal	__FUNCTION__.19882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5427, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2532:
.LBE63:
	.loc 1 5435 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2657
.LBB64:
	.loc 1 5437 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 5438 0
	movl	$0, -68(%ebp)
	.loc 1 5439 0
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 5442 0
	cmpl	$175, -72(%ebp)
	jle	.L2659
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2659
	.loc 1 5444 0
	leal	__FUNCTION__.19882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5444, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2659:
	.loc 1 5448 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2662
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2664
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2662
.L2664:
.LBB65:
	.loc 1 5451 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_memloc
	movl	%eax, -120(%ebp)
	.loc 1 5452 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2666
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-120(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2662
.L2666:
	.loc 1 5459 0
	movl	-120(%ebp), %eax
	leal	4(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-120(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 5463 0
	movl	-120(%ebp), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, 12(%ebp)
.L2662:
.LBE65:
	.loc 1 5479 0
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L2668
	.loc 1 5480 0
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -72(%ebp)
.L2668:
	.loc 1 5481 0
	cmpl	$175, -72(%ebp)
	jg	.L2670
	cmpl	$0, 16(%ebp)
	jne	.L2670
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2673
	cmpl	$175, -72(%ebp)
	jle	.L2675
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	jle	.L2677
	jmp	.L2679
.L2675:
	cmpl	$1, -72(%ebp)
	jle	.L2677
.L2679:
	cmpl	$175, -72(%ebp)
	jle	.L2680
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	jg	.L2677
	jmp	.L2682
.L2680:
	cmpl	$7, -72(%ebp)
	jle	.L2682
.L2677:
	cmpl	$175, -72(%ebp)
	jle	.L2683
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	je	.L2682
	jmp	.L2686
.L2683:
	cmpl	$16, -72(%ebp)
	je	.L2682
.L2686:
	cmpl	$175, -72(%ebp)
	jle	.L2687
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	je	.L2682
	jmp	.L2690
.L2687:
	cmpl	$17, -72(%ebp)
	je	.L2682
.L2690:
	cmpl	$175, -72(%ebp)
	jle	.L2691
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	je	.L2682
	jmp	.L2694
.L2691:
	cmpl	$1, -72(%ebp)
	je	.L2682
.L2694:
	cmpl	$175, -72(%ebp)
	jle	.L2695
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L2682
	jmp	.L2698
.L2695:
	cmpl	$0, -72(%ebp)
	je	.L2682
.L2698:
	cmpl	$175, -72(%ebp)
	jle	.L2699
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$29, %ax
	jne	.L2701
	jmp	.L2703
.L2699:
	cmpl	$29, -72(%ebp)
	jne	.L2701
.L2703:
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$4, %al
	je	.L2682
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$8, %al
	je	.L2682
.L2701:
	movl	$1, -300(%ebp)
	jmp	.L2705
.L2682:
	movl	$0, -300(%ebp)
.L2705:
	movzbl	-300(%ebp), %eax
	testb	%al, %al
	jne	.L2670
	jmp	.L2706
.L2673:
	cmpl	$175, -72(%ebp)
	jle	.L2707
	movl	-72(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	$31, %eax
	ja	.L2670
	jmp	.L2706
.L2707:
	movl	-72(%ebp), %eax
	cmpl	$31, %eax
	jbe	.L2706
.L2670:
.LBB66:
	.loc 1 5497 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2709
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -296(%ebp)
	jmp	.L2711
.L2709:
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -296(%ebp)
.L2711:
	movl	-296(%ebp), %edx
	movl	%edx, -56(%ebp)
	.loc 1 5498 0
	movl	optab_table@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2712
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2712
	movl	$5, -288(%ebp)
	jmp	.L2715
.L2712:
	movl	$4, -288(%ebp)
.L2715:
	movl	-288(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -52(%ebp)
	.loc 1 5499 0
	cmpl	$0, 36(%ebp)
	je	.L2716
	movl	36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L2716
	cmpl	$0, -56(%ebp)
	je	.L2716
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_operand@PLT
	testl	%eax, %eax
	je	.L2716
	cmpl	$529, -52(%ebp)
	je	.L2721
	movl	-52(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -284(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2723
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2723
	movl	$5, -280(%ebp)
	jmp	.L2726
.L2723:
	movl	$4, -280(%ebp)
.L2726:
	movl	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	*-284(%ebp)
	testl	%eax, %eax
	je	.L2721
	movl	-52(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -276(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2728
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2728
	movl	$5, -272(%ebp)
	jmp	.L2731
.L2728:
	movl	$4, -272(%ebp)
.L2731:
	movl	-272(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	*-276(%ebp)
	testl	%eax, %eax
	jne	.L2716
.L2721:
	.loc 1 5515 0
	movl	-64(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 20(%ebp)
	.loc 1 5516 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 5517 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -268(%ebp)
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -264(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2732
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2734
	movl	$2, -256(%ebp)
	jmp	.L2736
.L2734:
	movl	$5, -256(%ebp)
.L2736:
	movl	-256(%ebp), %eax
	movl	%eax, -260(%ebp)
	jmp	.L2737
.L2732:
	movl	$0, -260(%ebp)
.L2737:
	movl	12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	$9, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	push_reload@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5499 0
	jmp	.L2738
.L2716:
	.loc 1 5526 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -252(%ebp)
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -248(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2739
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2741
	movl	$2, -240(%ebp)
	jmp	.L2743
.L2741:
	movl	$5, -240(%ebp)
.L2743:
	movl	-240(%ebp), %edx
	movl	%edx, -244(%ebp)
	jmp	.L2744
.L2739:
	movl	$0, -244(%ebp)
.L2744:
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	%eax, -60(%ebp)
	.loc 1 5532 0
	movl	-60(%ebp), %esi
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	find_inc_amount
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	%ecx, (%eax)
	.loc 1 5535 0
	movl	$1, -68(%ebp)
.L2738:
	.loc 1 5538 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	this_insn@GOTOFF(%ebx), %ecx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	update_auto_inc_notes
.L2706:
.LBE66:
	.loc 1 5541 0
	movl	-68(%ebp), %edx
	movl	%edx, -340(%ebp)
	jmp	.L2557
.L2657:
.LBE64:
	.loc 1 5544 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2745
.LBB67:
	.loc 1 5551 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5564 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	leal	4(%eax), %esi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	find_reloads_address
	.loc 1 5568 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -236(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2747
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2749
	movl	$2, -228(%ebp)
	jmp	.L2751
.L2749:
	movl	$5, -228(%ebp)
.L2751:
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
	jmp	.L2752
.L2747:
	movl	$0, -232(%ebp)
.L2752:
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	movl	%eax, -40(%ebp)
	.loc 1 5572 0
	movl	-40(%ebp), %esi
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	find_inc_amount
	movl	%eax, %ecx
	movl	rld@GOT(%ebx), %edx
	imull	$76, %esi, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	%ecx, (%eax)
	.loc 1 5575 0
	movl	$0, -44(%ebp)
	.loc 1 5576 0
	cmpl	$0, -44(%ebp)
	je	.L2753
	.loc 1 5577 0
	movl	-44(%ebp), %edx
	addl	$4, %edx
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_replacement
.L2753:
	.loc 1 5579 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2745:
.LBE67:
	.loc 1 5581 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2530:
	.loc 1 5596 0
	cmpl	$3, 28(%ebp)
	je	.L2755
	cmpl	$5, 28(%ebp)
	je	.L2757
	movl	28(%ebp), %edx
	movl	%edx, -220(%ebp)
	jmp	.L2759
.L2757:
	movl	$6, -220(%ebp)
.L2759:
	movl	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L2760
.L2755:
	movl	$4, -224(%ebp)
.L2760:
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 5598 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -216(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2761
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2763
	movl	$2, -208(%ebp)
	jmp	.L2765
.L2763:
	movl	$5, -208(%ebp)
.L2765:
	movl	-208(%ebp), %edx
	movl	%edx, -212(%ebp)
	jmp	.L2766
.L2761:
	movl	$0, -212(%ebp)
.L2766:
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 5601 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2528:
.LBB68:
	.loc 1 5605 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5607 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2767
	.loc 1 5609 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -204(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2769
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2771
	movl	$2, -196(%ebp)
	jmp	.L2773
.L2771:
	movl	$5, -196(%ebp)
.L2773:
	movl	-196(%ebp), %edx
	movl	%edx, -200(%ebp)
	jmp	.L2774
.L2769:
	movl	$0, -200(%ebp)
.L2774:
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_address_part
	.loc 1 5613 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2767:
	.loc 1 5628 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2775
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2777
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2775
.L2777:
.LBB69:
	.loc 1 5631 0
	movl	12(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_memloc
	movl	%eax, -32(%ebp)
	.loc 1 5632 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2779
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2775
.L2779:
	.loc 1 5635 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 5636 0
	cmpl	$3, 28(%ebp)
	je	.L2781
	cmpl	$5, 28(%ebp)
	je	.L2783
	movl	28(%ebp), %edx
	movl	%edx, -188(%ebp)
	jmp	.L2785
.L2783:
	movl	$6, -188(%ebp)
.L2785:
	movl	-188(%ebp), %eax
	movl	%eax, -192(%ebp)
	jmp	.L2786
.L2781:
	movl	$4, -192(%ebp)
.L2786:
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
.L2775:
.LBE69:
	.loc 1 5642 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L2787
	.loc 1 5643 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -36(%ebp)
.L2787:
	.loc 1 5645 0
	cmpl	$175, -36(%ebp)
	jg	.L2789
	cmpl	$0, 16(%ebp)
	jne	.L2789
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2792
	cmpl	$175, -36(%ebp)
	jle	.L2794
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	jle	.L2796
	jmp	.L2798
.L2794:
	cmpl	$1, -36(%ebp)
	jle	.L2796
.L2798:
	cmpl	$175, -36(%ebp)
	jle	.L2799
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	jg	.L2796
	jmp	.L2801
.L2799:
	cmpl	$7, -36(%ebp)
	jle	.L2801
.L2796:
	cmpl	$175, -36(%ebp)
	jle	.L2802
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	je	.L2801
	jmp	.L2805
.L2802:
	cmpl	$16, -36(%ebp)
	je	.L2801
.L2805:
	cmpl	$175, -36(%ebp)
	jle	.L2806
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	je	.L2801
	jmp	.L2809
.L2806:
	cmpl	$17, -36(%ebp)
	je	.L2801
.L2809:
	cmpl	$175, -36(%ebp)
	jle	.L2810
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	je	.L2801
	jmp	.L2813
.L2810:
	cmpl	$1, -36(%ebp)
	je	.L2801
.L2813:
	cmpl	$175, -36(%ebp)
	jle	.L2814
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L2801
	jmp	.L2817
.L2814:
	cmpl	$0, -36(%ebp)
	je	.L2801
.L2817:
	cmpl	$175, -36(%ebp)
	jle	.L2818
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$29, %ax
	jne	.L2820
	jmp	.L2822
.L2818:
	cmpl	$29, -36(%ebp)
	jne	.L2820
.L2822:
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$4, %al
	je	.L2801
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$8, %al
	je	.L2801
.L2820:
	movl	$1, -184(%ebp)
	jmp	.L2824
.L2801:
	movl	$0, -184(%ebp)
.L2824:
	movzbl	-184(%ebp), %eax
	testb	%al, %al
	jne	.L2789
	jmp	.L2825
.L2792:
	cmpl	$175, -36(%ebp)
	jle	.L2826
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	$31, %eax
	ja	.L2789
	jmp	.L2825
.L2826:
	movl	-36(%ebp), %eax
	cmpl	$31, %eax
	jbe	.L2825
.L2789:
	.loc 1 5649 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -180(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2828
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2830
	movl	$2, -172(%ebp)
	jmp	.L2832
.L2830:
	movl	$5, -172(%ebp)
.L2832:
	movl	-172(%ebp), %edx
	movl	%edx, -176(%ebp)
	jmp	.L2833
.L2828:
	movl	$0, -176(%ebp)
.L2833:
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 5652 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2825:
	.loc 1 5659 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	regno_clobbered_p@PLT
	testl	%eax, %eax
	je	.L2834
	.loc 1 5661 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2836
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2838
	movl	$2, -160(%ebp)
	jmp	.L2840
.L2838:
	movl	$5, -160(%ebp)
.L2840:
	movl	-160(%ebp), %edx
	movl	%edx, -164(%ebp)
	jmp	.L2841
.L2836:
	movl	$0, -164(%ebp)
.L2841:
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 5664 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2834:
.LBE68:
	.loc 1 5667 0
	movl	$0, -340(%ebp)
	jmp	.L2557
.L2529:
	.loc 1 5670 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2527
	.loc 1 5675 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2843
.LBB70:
	.loc 1 5677 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5679 0
	cmpl	$0, 16(%ebp)
	jne	.L2845
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2847
	cmpl	$175, -28(%ebp)
	jle	.L2849
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	jle	.L2851
	jmp	.L2853
.L2849:
	cmpl	$1, -28(%ebp)
	jle	.L2851
.L2853:
	cmpl	$175, -28(%ebp)
	jle	.L2854
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	jg	.L2851
	jmp	.L2856
.L2854:
	cmpl	$7, -28(%ebp)
	jle	.L2856
.L2851:
	cmpl	$175, -28(%ebp)
	jle	.L2857
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	je	.L2856
	jmp	.L2860
.L2857:
	cmpl	$16, -28(%ebp)
	je	.L2856
.L2860:
	cmpl	$175, -28(%ebp)
	jle	.L2861
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	je	.L2856
	jmp	.L2864
.L2861:
	cmpl	$17, -28(%ebp)
	je	.L2856
.L2864:
	cmpl	$175, -28(%ebp)
	jle	.L2865
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$1, %ax
	je	.L2856
	jmp	.L2868
.L2865:
	cmpl	$1, -28(%ebp)
	je	.L2856
.L2868:
	cmpl	$175, -28(%ebp)
	jle	.L2869
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L2856
	jmp	.L2872
.L2869:
	cmpl	$0, -28(%ebp)
	je	.L2856
.L2872:
	cmpl	$175, -28(%ebp)
	jle	.L2873
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$29, %ax
	jne	.L2875
	jmp	.L2877
.L2873:
	cmpl	$29, -28(%ebp)
	jne	.L2875
.L2877:
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$4, %al
	je	.L2856
	movl	8(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$8, %al
	je	.L2856
.L2875:
	movl	$1, -152(%ebp)
	jmp	.L2879
.L2856:
	movl	$0, -152(%ebp)
.L2879:
	movzbl	-152(%ebp), %edx
	movb	%dl, -153(%ebp)
	jmp	.L2880
.L2847:
	cmpl	$175, -28(%ebp)
	jle	.L2881
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	cmpl	$31, %eax
	seta	-145(%ebp)
	jmp	.L2883
.L2881:
	movl	-28(%ebp), %eax
	cmpl	$31, %eax
	seta	-145(%ebp)
.L2883:
	movzbl	-145(%ebp), %eax
	movb	%al, -153(%ebp)
.L2880:
	movzbl	-153(%ebp), %edx
	movb	%dl, -154(%ebp)
	jmp	.L2884
.L2845:
	movb	$1, -154(%ebp)
.L2884:
	cmpb	$0, -154(%ebp)
	je	.L2527
	.loc 1 5682 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -144(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L2887
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2889
	movl	$2, -136(%ebp)
	jmp	.L2891
.L2889:
	movl	$5, -136(%ebp)
.L2891:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L2892
.L2887:
	movl	$0, -140(%ebp)
.L2892:
	movl	12(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	push_reload@PLT
	.loc 1 5686 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2843:
.LBE70:
.LBB71:
	.loc 1 5694 0
	cmpl	$0, 16(%ebp)
	jne	.L2893
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2895
	movl	$2, -128(%ebp)
	jmp	.L2897
.L2895:
	movl	$5, -128(%ebp)
.L2897:
	movl	-128(%ebp), %edx
	movl	%edx, -132(%ebp)
	jmp	.L2898
.L2893:
	movl	$0, -132(%ebp)
.L2898:
	movl	-132(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5695 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_class_max_nregs@PLT
	movl	%eax, %ecx
	movl	-24(%ebp), %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jbe	.L2527
	.loc 1 5698 0
	movl	12(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	find_reloads_subreg_address
	movl	%eax, 12(%ebp)
	.loc 1 5700 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %ecx
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	push_reload@PLT
	.loc 1 5702 0
	movl	$1, -340(%ebp)
	jmp	.L2557
.L2527:
.LBE71:
.LBB72:
	.loc 1 5713 0
	movl	-116(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5716 0
	movl	-116(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L2900
.L2901:
	.loc 1 5718 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L2902
	.loc 1 5719 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	leal	4(%eax), %ecx
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address_1
.L2902:
	.loc 1 5716 0
	subl	$1, -16(%ebp)
.L2900:
	cmpl	$0, -16(%ebp)
	jns	.L2901
.LBE72:
	.loc 1 5724 0
	movl	$0, -340(%ebp)
.L2557:
	movl	-340(%ebp), %eax
	.loc 1 5725 0
	addl	$396, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	find_reloads_address_1, .-find_reloads_address_1
	.type	find_reloads_address_part, @function
find_reloads_address_part:
.LFB44:
	.loc 1 5751 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$84, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5752 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2907
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2915
.L2907:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L2916
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L2918
.L2916:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2919
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L2919
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2918
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2918
.L2919:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2923
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	je	.L2918
.L2923:
	cmpl	$24, 16(%ebp)
	je	.L2925
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2927
	cmpl	$5, 16(%ebp)
	je	.L2929
	cmpl	$0, 16(%ebp)
	jne	.L2929
	movl	$1, -36(%ebp)
	jmp	.L2932
.L2929:
	movl	$0, -36(%ebp)
.L2932:
	movzbl	-36(%ebp), %eax
	testb	%al, %al
	jne	.L2918
	jmp	.L2915
.L2927:
	cmpl	$0, 16(%ebp)
	je	.L2918
	jmp	.L2915
.L2925:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2933
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2933
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L2933
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L2933
	cmpl	$0, 16(%ebp)
	jne	.L2933
	movl	$1, -32(%ebp)
	jmp	.L2939
.L2933:
	movl	$0, -32(%ebp)
.L2939:
	movzbl	-32(%ebp), %eax
	testb	%al, %al
	je	.L2915
.L2918:
.LBB73:
	.loc 1 5758 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5759 0
	movl	-8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$0, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address
	.loc 1 5752 0
	jmp	.L2940
.L2915:
.LBE73:
	.loc 1 5763 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2940
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L2942
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L2940
.L2942:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L2950
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L2952
.L2950:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L2953
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L2953
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2952
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2952
.L2953:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2957
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	je	.L2952
.L2957:
	cmpl	$24, 16(%ebp)
	je	.L2959
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2961
	cmpl	$5, 16(%ebp)
	je	.L2963
	cmpl	$0, 16(%ebp)
	jne	.L2963
	movl	$1, -28(%ebp)
	jmp	.L2966
.L2963:
	movl	$0, -28(%ebp)
.L2966:
	movzbl	-28(%ebp), %eax
	testb	%al, %al
	jne	.L2952
	jmp	.L2940
.L2961:
	cmpl	$0, 16(%ebp)
	je	.L2952
	jmp	.L2940
.L2959:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2967
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2967
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L2967
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L2967
	cmpl	$0, 16(%ebp)
	jne	.L2967
	movl	$1, -24(%ebp)
	jmp	.L2973
.L2967:
	movl	$0, -24(%ebp)
.L2973:
	movzbl	-24(%ebp), %eax
	testb	%al, %al
	je	.L2940
.L2952:
.LBB74:
	.loc 1 5770 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_const_mem@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5771 0
	movl	-8(%ebp), %ecx
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
	movl	%eax, 8(%ebp)
	.loc 1 5772 0
	movl	-8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$0, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reloads_address
.L2940:
.LBE74:
	.loc 1 5776 0
	movl	28(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_reload@PLT
	.loc 1 5778 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	find_reloads_address_part, .-find_reloads_address_part
.globl __moddi3
	.type	find_reloads_subreg_address, @function
find_reloads_subreg_address:
.LFB45:
	.loc 1 5811 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%edi
.LCFI143:
	pushl	%esi
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$76, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5812 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5814 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2976
	.loc 1 5818 0
	cmpl	$0, 12(%ebp)
	jne	.L2978
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2980
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	jne	.L2978
.L2980:
	.loc 1 5821 0
	movl	$1, 12(%ebp)
.L2978:
	.loc 1 5823 0
	cmpl	$0, 12(%ebp)
	jne	.L2982
	movl	num_not_at_initial_offset@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2976
.L2982:
.LBB75:
	.loc 1 5825 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_memloc
	movl	%eax, -36(%ebp)
	.loc 1 5829 0
	cmpl	$0, 12(%ebp)
	jne	.L2984
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L2976
.L2984:
.LBB76:
	.loc 1 5832 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5833 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 5834 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 5836 0
	movl	-36(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esi)
	.loc 1 5837 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movb	%al, 2(%edx)
	.loc 1 5842 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L2986
.LBB77:
	.loc 1 5846 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5847 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2988
	.loc 1 5849 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2990
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-24(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2990
	.loc 1 5851 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2993
.L2990:
	.loc 1 5852 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L2988:
	.loc 1 5854 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2994
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	sall	$3, %eax
	cmpl	%eax, %edx
	jae	.L2986
.L2994:
	.loc 1 5857 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2993
.L2986:
.LBE77:
	.loc 1 5860 0
	cmpl	$3, 20(%ebp)
	je	.L2996
	cmpl	$5, 20(%ebp)
	je	.L2998
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3000
.L2998:
	movl	$6, -48(%ebp)
.L3000:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L3001
.L2996:
	movl	$4, -52(%ebp)
.L3001:
	movl	-36(%ebp), %eax
	leal	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	find_reloads_address
	.loc 1 5867 0
	movl	replace_reloads@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L3002
	movl	16(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	je	.L3002
	.loc 1 5871 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movb	$2, 2(%eax)
.L3002:
	.loc 1 5874 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%ebp)
.L2976:
.LBE76:
.LBE75:
	.loc 1 5878 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L2993:
	movl	-56(%ebp), %eax
	.loc 1 5879 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	find_reloads_subreg_address, .-find_reloads_subreg_address
	.section	.rodata
	.type	__FUNCTION__.21424, @object
	.size	__FUNCTION__.21424, 14
__FUNCTION__.21424:
	.string	"subst_reloads"
	.text
.globl subst_reloads
	.type	subst_reloads, @function
subst_reloads:
.LFB46:
	.loc 1 5891 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$36, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5894 0
	movl	$0, -20(%ebp)
	jmp	.L3007
.L3008:
.LBB78:
	.loc 1 5896 0
	movl	-20(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5897 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5898 0
	cmpl	$0, -12(%ebp)
	je	.L3009
	.loc 1 5929 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L3011
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L3011
	.loc 1 5931 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L3011:
	.loc 1 5939 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L3014
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3014
	.loc 1 5940 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -12(%ebp)
.L3014:
	.loc 1 5946 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3017
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3017
	.loc 1 5948 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L3020
	.loc 1 5950 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L3024
.L3020:
.LBB79:
	.loc 1 5954 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5958 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, -8(%ebp)
	.loc 1 5960 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 5963 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 5964 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 5946 0
	jmp	.L3024
.L3017:
.LBE79:
	.loc 1 5968 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L3024
.L3009:
	.loc 1 5971 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L3024
	.loc 1 5972 0
	leal	__FUNCTION__.21424@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5972, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3024:
.LBE78:
	.loc 1 5894 0
	addl	$1, -20(%ebp)
.L3007:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L3008
	.loc 1 5974 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	subst_reloads, .-subst_reloads
	.section	.rodata
	.type	__FUNCTION__.21507, @object
	.size	__FUNCTION__.21507, 18
__FUNCTION__.21507:
	.string	"copy_replacements"
	.text
.globl copy_replacements
	.type	copy_replacements, @function
copy_replacements:
.LFB47:
	.loc 1 5982 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$20, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5985 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3029
	.loc 1 5986 0
	leal	__FUNCTION__.21507@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5986, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3029:
	.loc 1 5988 0
	movl	n_replacements@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_replacements_1
	.loc 1 5989 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	copy_replacements, .-copy_replacements
	.type	copy_replacements_1, @function
copy_replacements_1:
.LFB48:
	.loc 1 5996 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$44, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6003 0
	movl	$0, -28(%ebp)
	jmp	.L3033
.L3034:
	.loc 1 6005 0
	movl	-28(%ebp), %eax
	leal	4+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	8(%ebp), %eax
	jne	.L3035
	.loc 1 6007 0
	movl	n_replacements@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	leal	1(%ecx), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 6008 0
	movl	-28(%ebp), %eax
	leal	replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6009 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6010 0
	movl	-28(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 6011 0
	movl	-28(%ebp), %eax
	leal	12+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L3037
.L3035:
	.loc 1 6013 0
	movl	-28(%ebp), %eax
	leal	replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	8(%ebp), %eax
	jne	.L3037
	.loc 1 6015 0
	movl	n_replacements@GOTOFF(%ebx), %ecx
	movl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	leal	1(%ecx), %eax
	movl	%eax, n_replacements@GOTOFF(%ebx)
	.loc 1 6016 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6017 0
	movl	-16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 6018 0
	movl	-28(%ebp), %eax
	leal	8+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 6019 0
	movl	-28(%ebp), %eax
	leal	12+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L3037:
	.loc 1 6003 0
	addl	$1, -28(%ebp)
.L3033:
	movl	-28(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L3034
	.loc 1 6023 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6024 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6025 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 6026 0
	movl	-12(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6028 0
	movl	-12(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L3040
.L3041:
	.loc 1 6030 0
	movl	-32(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3042
	.loc 1 6031 0
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	copy_replacements_1
	jmp	.L3044
.L3042:
	.loc 1 6032 0
	movl	-32(%ebp), %eax
	addl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L3044
	.loc 1 6033 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3046
.L3047:
	.loc 1 6034 0
	movl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	copy_replacements_1
.L3046:
	.loc 1 6033 0
	subl	$1, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jns	.L3047
.L3044:
	.loc 1 6028 0
	subl	$1, -32(%ebp)
.L3040:
	cmpl	$0, -32(%ebp)
	jns	.L3041
	.loc 1 6037 0
	addl	$44, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	copy_replacements_1, .-copy_replacements_1
.globl move_replacements
	.type	move_replacements, @function
move_replacements:
.LFB49:
	.loc 1 6045 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$16, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6048 0
	movl	$0, -8(%ebp)
	jmp	.L3051
.L3052:
	.loc 1 6049 0
	movl	-8(%ebp), %eax
	leal	4+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	8(%ebp), %eax
	jne	.L3053
	.loc 1 6050 0
	movl	-8(%ebp), %eax
	leal	4+replacements@GOTOFF(%ebx), %ecx
	movl	%eax, %edx
	sall	$4, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx,%ecx)
	jmp	.L3055
.L3053:
	.loc 1 6051 0
	movl	-8(%ebp), %eax
	leal	replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	cmpl	8(%ebp), %eax
	jne	.L3055
	.loc 1 6053 0
	movl	-8(%ebp), %eax
	leal	replacements@GOTOFF(%ebx), %ecx
	movl	%eax, %edx
	sall	$4, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx,%ecx)
	.loc 1 6054 0
	movl	-8(%ebp), %eax
	leal	4+replacements@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	$0, (%eax,%edx)
.L3055:
	.loc 1 6048 0
	addl	$1, -8(%ebp)
.L3051:
	movl	n_replacements@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L3052
	.loc 1 6056 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	move_replacements, .-move_replacements
.globl find_replacement
	.type	find_replacement, @function
find_replacement:
.LFB50:
	.loc 1 6064 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%edi
.LCFI165:
	pushl	%esi
.LCFI166:
	pushl	%ebx
.LCFI167:
	subl	$60, %esp
.LCFI168:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6067 0
	leal	replacements@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L3060
.L3061:
.LBB80:
	.loc 1 6069 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6071 0
	cmpl	$0, -28(%ebp)
	je	.L3062
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3062
	.loc 1 6073 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L3065
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L3065
	.loc 1 6074 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -28(%ebp)
.L3065:
	.loc 1 6076 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L3068
.L3062:
	.loc 1 6078 0
	cmpl	$0, -28(%ebp)
	je	.L3069
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L3069
	.loc 1 6084 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3072
	.loc 1 6085 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	leal	(%esi,%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3068
.L3072:
	.loc 1 6091 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L3074
	.loc 1 6092 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L3068
.L3074:
.LBB81:
	.loc 1 6095 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6099 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, -24(%ebp)
	.loc 1 6100 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6101 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3068
.L3069:
.LBE81:
.LBE80:
	.loc 1 6067 0
	addl	$16, -32(%ebp)
.L3060:
	movl	n_replacements@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	replacements@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	cmpl	-32(%ebp), %eax
	ja	.L3061
	.loc 1 6109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L3077
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L3077
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	jne	.L3080
.L3077:
.LBB82:
	.loc 1 6112 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	find_replacement@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6113 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	find_replacement@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6115 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L3081
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L3080
.L3081:
	.loc 1 6116 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3068
.L3080:
.LBE82:
	.loc 1 6119 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L3068:
	movl	-48(%ebp), %eax
	.loc 1 6120 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	find_replacement, .-find_replacement
	.section	.rodata
	.type	__FUNCTION__.21749, @object
	.size	__FUNCTION__.21749, 29
__FUNCTION__.21749:
	.string	"refers_to_regno_for_reload_p"
	.text
.globl refers_to_regno_for_reload_p
	.type	refers_to_regno_for_reload_p, @function
refers_to_regno_for_reload_p:
.LFB51:
	.loc 1 6137 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$84, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6143 0
	cmpl	$0, 16(%ebp)
	jne	.L3147
	.loc 1 6144 0
	movl	$0, -56(%ebp)
	jmp	.L3087
.L3085:
.L3147:
	.loc 1 6147 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6149 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$59, -60(%ebp)
	je	.L3089
	cmpl	$59, -60(%ebp)
	ja	.L3092
	cmpl	$57, -60(%ebp)
	je	.L3089
	jmp	.L3088
.L3092:
	cmpl	$71, -60(%ebp)
	je	.L3090
	cmpl	$73, -60(%ebp)
	je	.L3091
	jmp	.L3088
.L3090:
	.loc 1 6152 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6156 0
	cmpl	$175, -28(%ebp)
	jbe	.L3093
	.loc 1 6158 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3095
	.loc 1 6159 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	movl	%eax, -56(%ebp)
	jmp	.L3087
.L3095:
	.loc 1 6163 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3097
	.loc 1 6164 0
	movl	$0, -56(%ebp)
	jmp	.L3087
.L3097:
	.loc 1 6166 0
	leal	__FUNCTION__.21749@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6166, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3093:
	.loc 1 6169 0
	movl	12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L3099
	cmpl	$175, -28(%ebp)
	ja	.L3101
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -48(%ebp)
	jmp	.L3103
.L3101:
	movl	$1, -48(%ebp)
.L3103:
	movl	-48(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jbe	.L3099
	movl	$1, -52(%ebp)
	jmp	.L3105
.L3099:
	movl	$0, -52(%ebp)
.L3105:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3087
.L3091:
	.loc 1 6177 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3088
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L3088
.LBB83:
	.loc 1 6180 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6183 0
	cmpl	$175, -16(%ebp)
	ja	.L3109
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -44(%ebp)
	jmp	.L3111
.L3109:
	movl	$1, -44(%ebp)
.L3111:
	movl	-44(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6185 0
	movl	12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L3112
	movl	8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jae	.L3112
	movl	$1, -40(%ebp)
	jmp	.L3115
.L3112:
	movl	$0, -40(%ebp)
.L3115:
	movl	-40(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3087
.L3089:
.LBE83:
	.loc 1 6191 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L3116
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3118
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L3118
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3118
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3118
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L3123
.L3118:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3124
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	earlyclobber_operand_p@PLT
	testl	%eax, %eax
	je	.L3116
.L3124:
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3116
.L3123:
	.loc 1 6208 0
	movl	$1, -56(%ebp)
	jmp	.L3087
.L3116:
	.loc 1 6210 0
	cmpl	$59, -24(%ebp)
	je	.L3126
	movl	16(%ebp), %eax
	addl	$12, %eax
	cmpl	20(%ebp), %eax
	jne	.L3128
.L3126:
	.loc 1 6211 0
	movl	$0, -56(%ebp)
	jmp	.L3087
.L3128:
	.loc 1 6212 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 6213 0
	jmp	.L3085
.L3088:
	.loc 1 6221 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6222 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L3129
.L3130:
	.loc 1 6224 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3131
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	16(%ebp), %eax
	addl	$4, %eax
	cmpl	20(%ebp), %eax
	je	.L3131
	.loc 1 6226 0
	cmpl	$0, -32(%ebp)
	jne	.L3134
	.loc 1 6228 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 6229 0
	jmp	.L3085
.L3134:
	.loc 1 6232 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3138
	.loc 1 6234 0
	movl	$1, -56(%ebp)
	jmp	.L3087
.L3131:
	.loc 1 6236 0
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L3138
.LBB84:
	.loc 1 6239 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L3140
.L3141:
	.loc 1 6240 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	cmpl	20(%ebp), %eax
	je	.L3142
	movl	-32(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3142
	.loc 1 6243 0
	movl	$1, -56(%ebp)
	jmp	.L3087
.L3142:
	.loc 1 6239 0
	subl	$1, -8(%ebp)
.L3140:
	cmpl	$0, -8(%ebp)
	jns	.L3141
.L3138:
.LBE84:
	.loc 1 6222 0
	subl	$1, -32(%ebp)
.L3129:
	cmpl	$0, -32(%ebp)
	jns	.L3130
	.loc 1 6246 0
	movl	$0, -56(%ebp)
.L3087:
	movl	-56(%ebp), %eax
	.loc 1 6247 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	refers_to_regno_for_reload_p, .-refers_to_regno_for_reload_p
	.section	.rodata
	.align 32
	.type	__FUNCTION__.21915, @object
	.size	__FUNCTION__.21915, 35
__FUNCTION__.21915:
	.string	"reg_overlap_mentioned_for_reload_p"
	.text
.globl reg_overlap_mentioned_for_reload_p
	.type	reg_overlap_mentioned_for_reload_p, @function
reg_overlap_mentioned_for_reload_p:
.LFB52:
	.loc 1 6261 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%esi
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$48, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6265 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3149
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L3151
.L3149:
	.loc 1 6267 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L3151:
	.loc 1 6270 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3152
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3152
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3168
.L3152:
	.loc 1 6271 0
	movl	$0, -36(%ebp)
	jmp	.L3169
.L3168:
	.loc 1 6272 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L3170
	.loc 1 6274 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6275 0
	cmpl	$175, -16(%ebp)
	jg	.L3174
	.loc 1 6276 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3174
.L3170:
	.loc 1 6281 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3175
	.loc 1 6283 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6288 0
	cmpl	$175, -16(%ebp)
	jle	.L3174
	.loc 1 6290 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3179
	.loc 1 6291 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_mem_for_reload_p@PLT
	movl	%eax, -36(%ebp)
	jmp	.L3169
.L3179:
	.loc 1 6292 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_constant@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3181
	.loc 1 6293 0
	movl	$0, -36(%ebp)
	jmp	.L3169
.L3181:
	.loc 1 6294 0
	leal	__FUNCTION__.21915@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6294, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3175:
	.loc 1 6297 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3183
	.loc 1 6298 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_mem_for_reload_p@PLT
	movl	%eax, -36(%ebp)
	jmp	.L3169
.L3183:
	.loc 1 6299 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L3185
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L3185
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	jne	.L3188
.L3185:
	.loc 1 6301 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	movl	%eax, -36(%ebp)
	jmp	.L3169
.L3188:
	.loc 1 6302 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L3189
	.loc 1 6303 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L3191
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3193
.L3191:
	movl	$1, -32(%ebp)
	jmp	.L3194
.L3193:
	movl	$0, -32(%ebp)
.L3194:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L3169
.L3189:
	.loc 1 6306 0
	leal	__FUNCTION__.21915@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6306, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3174:
	.loc 1 6308 0
	cmpl	$175, -16(%ebp)
	jg	.L3195
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	jmp	.L3197
.L3195:
	movl	$1, -28(%ebp)
.L3197:
	movl	-16(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6311 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	movl	%eax, -36(%ebp)
.L3169:
	movl	-36(%ebp), %eax
	.loc 1 6312 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE52:
	.size	reg_overlap_mentioned_for_reload_p, .-reg_overlap_mentioned_for_reload_p
.globl refers_to_mem_for_reload_p
	.type	refers_to_mem_for_reload_p, @function
refers_to_mem_for_reload_p:
.LFB53:
	.loc 1 6320 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$28, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6324 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3200
	.loc 1 6325 0
	movl	$1, -28(%ebp)
	jmp	.L3202
.L3200:
	.loc 1 6327 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3203
	.loc 1 6328 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L3205
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3205
	movl	$1, -24(%ebp)
	jmp	.L3208
.L3205:
	movl	$0, -24(%ebp)
.L3208:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3202
.L3203:
	.loc 1 6331 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6332 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L3209
.L3210:
	.loc 1 6333 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3211
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L3213
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	refers_to_mem_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3211
.L3213:
	.loc 1 6336 0
	movl	$1, -28(%ebp)
	jmp	.L3202
.L3211:
	.loc 1 6332 0
	subl	$1, -8(%ebp)
.L3209:
	cmpl	$0, -8(%ebp)
	jns	.L3210
	.loc 1 6338 0
	movl	$0, -28(%ebp)
.L3202:
	movl	-28(%ebp), %eax
	.loc 1 6339 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	refers_to_mem_for_reload_p, .-refers_to_mem_for_reload_p
.globl find_equiv_reg
	.type	find_equiv_reg, @function
find_equiv_reg:
.LFB54:
	.loc 1 6377 0
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
	subl	$188, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6378 0
	movl	12(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 6381 0
	movl	$-1, -124(%ebp)
	.loc 1 6383 0
	movl	$0, -116(%ebp)
	.loc 1 6384 0
	movl	$0, -112(%ebp)
	.loc 1 6385 0
	movl	$0, -108(%ebp)
	.loc 1 6386 0
	movl	$0, -104(%ebp)
	.loc 1 6390 0
	cmpl	$0, 8(%ebp)
	jne	.L3218
	.loc 1 6391 0
	movl	28(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L3511
.L3218:
	.loc 1 6392 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3221
	.loc 1 6393 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L3511
.L3221:
	.loc 1 6394 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3223
.LBB85:
	.loc 1 6396 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -92(%ebp)
	.loc 1 6397 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L3225
	.loc 1 6398 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3225:
	.loc 1 6399 0
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3228
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L3228
	.loc 1 6400 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3228:
	.loc 1 6402 0
	movl	-92(%ebp), %eax
	subl	$106, %eax
	cmpl	$5, %eax
	ja	.L3231
	.loc 1 6410 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3231:
	.loc 1 6414 0
	movl	$1, -116(%ebp)
	jmp	.L3511
.L3223:
.LBE85:
	.loc 1 6416 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3233
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3241
.L3233:
	.loc 1 6417 0
	movl	$1, -112(%ebp)
	.loc 1 6416 0
	jmp	.L3511
.L3241:
	.loc 1 6418 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L3242
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3242
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3245
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3242
.L3245:
	.loc 1 6421 0
	movl	$1, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 6418 0
	jmp	.L3511
.L3242:
	.loc 1 6422 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L3253
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3253
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L3256
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L3253
.L3256:
	.loc 1 6425 0
	movl	$1, -112(%ebp)
	.loc 1 6422 0
	jmp	.L3511
.L3253:
	.loc 1 6427 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3220:
.L3511:
	.loc 1 6435 0
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 6436 0
	cmpl	$0, -148(%ebp)
	je	.L3264
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3266
.L3264:
	.loc 1 6437 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3266:
	.loc 1 6439 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L3220
	cmpl	$0, 24(%ebp)
	je	.L3269
	cmpl	$1, 24(%ebp)
	je	.L3269
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	reload_first_uid@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L3220
.L3269:
.LBB86:
	.loc 1 6454 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3272
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3274
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L3276
.L3274:
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -172(%ebp)
.L3276:
	movl	-172(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L3277
.L3272:
	movl	$0, -176(%ebp)
.L3277:
	movl	-176(%ebp), %edx
	movl	%edx, -128(%ebp)
	.loc 1 6457 0
	cmpl	$0, -128(%ebp)
	je	.L3220
	cmpl	$0, -124(%ebp)
	js	.L3279
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	cmpl	-124(%ebp), %eax
	jne	.L3279
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	jns	.L3282
.L3279:
	cmpl	$0, -124(%ebp)
	js	.L3283
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	cmpl	-124(%ebp), %eax
	jne	.L3283
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	jns	.L3282
.L3283:
	cmpl	$0, -112(%ebp)
	je	.L3286
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3286
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	jne	.L3286
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	jns	.L3282
.L3286:
	cmpl	$0, -116(%ebp)
	je	.L3290
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	js	.L3290
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L3282
.L3290:
	cmpl	$0, -116(%ebp)
	je	.L3293
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	js	.L3293
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L3282
.L3293:
	cmpl	$0, -112(%ebp)
	je	.L3296
	movl	-148(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L3296
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L3296
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3300
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	jns	.L3282
.L3300:
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3296
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L3296
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L3296
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3296
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -144(%ebp)
	cmpl	$0, -144(%ebp)
	je	.L3296
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3296
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -140(%ebp)
	cmpl	$0, -140(%ebp)
	je	.L3296
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	jns	.L3282
.L3296:
	cmpl	$0, -112(%ebp)
	je	.L3220
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L3220
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3220
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L3220
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L3220
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3220
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -144(%ebp)
	cmpl	$0, -144(%ebp)
	je	.L3220
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L3220
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword@PLT
	movl	%eax, -140(%ebp)
	cmpl	$0, -140(%ebp)
	je	.L3220
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	true_regnum@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	js	.L3220
.L3282:
	.loc 1 6512 0
	cmpl	$0, 20(%ebp)
	js	.L3318
	.loc 1 6514 0
	movl	-120(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L3220
	.loc 1 6515 0
	jmp	.L3321
.L3318:
	.loc 1 6517 0
	movl	-120(%ebp), %eax
	cmpl	$175, %eax
	ja	.L3220
.LBB87:
	.loc 1 6523 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	subl	$1, %eax
	movl	%eax, -84(%ebp)
	jmp	.L3323
.L3324:
	.loc 1 6524 0
	movl	16(%ebp), %esi
	movl	-84(%ebp), %eax
	addl	-120(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-84(%ebp), %eax
	addl	-120(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L3513
	movl	%edx, %eax
	xorl	%edx, %edx
.L3513:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3325
	.loc 1 6523 0
	subl	$1, -84(%ebp)
.L3323:
	cmpl	$0, -84(%ebp)
	jns	.L3324
.L3325:
	.loc 1 6527 0
	cmpl	$0, -84(%ebp)
	jns	.L3220
.L3321:
.LBE87:
	.loc 1 6530 0
	movl	-140(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 6531 0
	movl	-148(%ebp), %eax
	movl	%eax, -132(%ebp)
.LBE86:
	.loc 1 6545 0
	movl	-132(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L3327
	jmp	.L3328
.L3327:
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L3328
	.loc 1 6546 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3328:
	.loc 1 6550 0
	cmpl	$29, -120(%ebp)
	je	.L3330
	cmpl	$29, -124(%ebp)
	je	.L3330
	cmpl	$0, -116(%ebp)
	je	.L3333
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3333
.L3330:
	.loc 1 6553 0
	movl	$1, -104(%ebp)
.L3333:
	.loc 1 6556 0
	movl	-136(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	32(%ebp), %eax
	je	.L3335
	.loc 1 6557 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3335:
	.loc 1 6562 0
	cmpl	$0, -116(%ebp)
	je	.L3337
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3339
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3341
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L3343
.L3341:
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -164(%ebp)
.L3343:
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
	jmp	.L3344
.L3339:
	movl	$0, -168(%ebp)
.L3344:
	movl	-168(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	-136(%ebp), %eax
	jne	.L3337
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	addl	%eax, %edx
	movl	-120(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	refers_to_regno_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3337
	.loc 1 6567 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3337:
	.loc 1 6571 0
	cmpl	$0, -116(%ebp)
	jne	.L3347
	cmpl	$0, -112(%ebp)
	jne	.L3347
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-124(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jle	.L3347
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-120(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jle	.L3347
	.loc 1 6574 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3347:
	.loc 1 6576 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -100(%ebp)
	.loc 1 6577 0
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -96(%ebp)
	.loc 1 6585 0
	cmpl	$0, 24(%ebp)
	je	.L3352
	cmpl	$1, 24(%ebp)
	je	.L3352
.LBB88:
	.loc 1 6588 0
	movl	$0, -80(%ebp)
	jmp	.L3355
.L3356:
	.loc 1 6589 0
	movl	-80(%ebp), %eax
	addl	-120(%ebp), %eax
	addl	%eax, %eax
	addl	24(%ebp), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L3357
	.loc 1 6590 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3357:
	.loc 1 6588 0
	addl	$1, -80(%ebp)
.L3355:
	movl	-80(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jl	.L3356
.L3352:
.LBE88:
	.loc 1 6596 0
	cmpl	$0, 24(%ebp)
	je	.L3359
.LBB89:
	.loc 1 6599 0
	movl	$0, -76(%ebp)
	jmp	.L3361
.L3362:
	.loc 1 6600 0
	movl	-76(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3363
	movl	-76(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L3363
.LBB90:
	.loc 1 6602 0
	movl	-76(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 6603 0
	movl	-76(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -68(%ebp)
	.loc 1 6605 0
	movl	-96(%ebp), %eax
	addl	-120(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jle	.L3363
	movl	-68(%ebp), %eax
	addl	-72(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jle	.L3363
	.loc 1 6607 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3363:
.LBE90:
	.loc 1 6599 0
	addl	$1, -76(%ebp)
.L3361:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jl	.L3362
.L3359:
.LBE89:
	.loc 1 6611 0
	cmpl	$0, -116(%ebp)
	je	.L3368
	.loc 1 6614 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L3370
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L3370
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L3370
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L3370
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L3375
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3377
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L3375
.L3377:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L3370
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3370
.L3375:
	movl	$1, -160(%ebp)
	jmp	.L3380
.L3370:
	movl	$0, -160(%ebp)
.L3380:
	movl	-160(%ebp), %eax
	movl	%eax, -108(%ebp)
.L3368:
	.loc 1 6619 0
	movl	12(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L3512
.L3381:
.L3512:
	.loc 1 6622 0
	movl	-148(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 6623 0
	movl	-148(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jne	.L3382
	.loc 1 6624 0
	movl	-136(%ebp), %edx
	movl	%edx, -180(%ebp)
	jmp	.L3227
.L3382:
	.loc 1 6628 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3384
.LBB91:
	.loc 1 6632 0
	cmpl	$0, -116(%ebp)
	jne	.L3386
	cmpl	$0, -104(%ebp)
	je	.L3388
.L3386:
	.loc 1 6633 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3388:
	.loc 1 6635 0
	cmpl	$0, -124(%ebp)
	js	.L3389
	cmpl	$175, -124(%ebp)
	jg	.L3389
	.loc 1 6636 0
	movl	$0, -64(%ebp)
	jmp	.L3392
.L3393:
	.loc 1 6637 0
	movl	-64(%ebp), %eax
	movl	-124(%ebp), %edx
	addl	%eax, %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L3394
	.loc 1 6638 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3394:
	.loc 1 6636 0
	addl	$1, -64(%ebp)
.L3392:
	movl	-64(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L3393
.L3389:
	.loc 1 6640 0
	cmpl	$0, -120(%ebp)
	js	.L3384
	cmpl	$175, -120(%ebp)
	jg	.L3384
	.loc 1 6641 0
	movl	$0, -64(%ebp)
	jmp	.L3398
.L3399:
	.loc 1 6642 0
	movl	-64(%ebp), %eax
	movl	-120(%ebp), %edx
	addl	%eax, %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L3400
	.loc 1 6643 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3400:
	.loc 1 6641 0
	addl	$1, -64(%ebp)
.L3398:
	movl	-64(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jl	.L3399
.L3384:
.LBE91:
	.loc 1 6650 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L3381
	.loc 1 6652 0
	movl	-148(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 6655 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	volatile_insn_p@PLT
	testl	%eax, %eax
	je	.L3404
	.loc 1 6656 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3404:
	.loc 1 6663 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L3406
	.loc 1 6664 0
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -128(%ebp)
.L3406:
	.loc 1 6665 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L3408
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3410
.L3408:
.LBB92:
	.loc 1 6667 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 6668 0
	jmp	.L3411
.L3412:
	.loc 1 6672 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L3411:
	.loc 1 6668 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3412
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L3412
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L3412
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3412
	.loc 1 6673 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3417
.LBB93:
	.loc 1 6675 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 6677 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L3419
	.loc 1 6678 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -52(%ebp)
	jmp	.L3421
.L3419:
	.loc 1 6680 0
	movl	$1, -52(%ebp)
.L3421:
	.loc 1 6681 0
	movl	-100(%ebp), %eax
	addl	-124(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jle	.L3422
	movl	-52(%ebp), %eax
	addl	-56(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jle	.L3422
	.loc 1 6682 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3422:
	.loc 1 6683 0
	movl	-96(%ebp), %eax
	addl	-120(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jle	.L3425
	movl	-52(%ebp), %eax
	addl	-56(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jle	.L3425
	.loc 1 6685 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3425:
	.loc 1 6686 0
	cmpl	$0, -108(%ebp)
	je	.L3428
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3428
	.loc 1 6688 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3428:
	.loc 1 6689 0
	cmpl	$29, -56(%ebp)
	jne	.L3445
	cmpl	$0, -104(%ebp)
	je	.L3445
	.loc 1 6690 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3417:
.LBE93:
	.loc 1 6692 0
	cmpl	$0, -116(%ebp)
	je	.L3435
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3435
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	jne	.L3435
	.loc 1 6694 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3435:
	.loc 1 6695 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3439
	cmpl	$175, -124(%ebp)
	jle	.L3439
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3439
	.loc 1 6697 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3439:
	.loc 1 6698 0
	cmpl	$0, -104(%ebp)
	je	.L3445
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	je	.L3445
	.loc 1 6699 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3410:
.LBE92:
	.loc 1 6701 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3445
.LBB94:
	.loc 1 6704 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L3447
.L3448:
.LBB95:
	.loc 1 6706 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6707 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L3449
	.loc 1 6708 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
.L3449:
	.loc 1 6709 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L3451
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3453
.L3451:
.LBB96:
	.loc 1 6711 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6712 0
	jmp	.L3454
.L3455:
	.loc 1 6716 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L3454:
	.loc 1 6712 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L3455
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L3455
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L3455
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L3455
	.loc 1 6717 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3460
.LBB97:
	.loc 1 6719 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 6721 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L3462
	.loc 1 6722 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -32(%ebp)
	jmp	.L3464
.L3462:
	.loc 1 6724 0
	movl	$1, -32(%ebp)
.L3464:
	.loc 1 6725 0
	movl	-100(%ebp), %eax
	addl	-124(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jle	.L3465
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jle	.L3465
	.loc 1 6727 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3465:
	.loc 1 6728 0
	movl	-96(%ebp), %eax
	addl	-120(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jle	.L3468
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jle	.L3468
	.loc 1 6730 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3468:
	.loc 1 6731 0
	cmpl	$0, -108(%ebp)
	je	.L3471
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3471
	.loc 1 6734 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3471:
	.loc 1 6735 0
	cmpl	$29, -36(%ebp)
	jne	.L3453
	cmpl	$0, -104(%ebp)
	je	.L3453
	.loc 1 6736 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3460:
.LBE97:
	.loc 1 6738 0
	cmpl	$0, -116(%ebp)
	je	.L3477
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3477
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	jne	.L3477
	.loc 1 6740 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3477:
	.loc 1 6741 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3481
	cmpl	$175, -124(%ebp)
	jle	.L3481
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3481
	.loc 1 6743 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3481:
	.loc 1 6744 0
	cmpl	$0, -104(%ebp)
	je	.L3453
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	je	.L3453
	.loc 1 6746 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3453:
.LBE96:
.LBE95:
	.loc 1 6704 0
	subl	$1, -48(%ebp)
.L3447:
	cmpl	$0, -48(%ebp)
	jns	.L3448
.L3445:
.LBE94:
	.loc 1 6751 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L3381
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L3381
.LBB98:
	.loc 1 6755 0
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L3489
.L3490:
	.loc 1 6758 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 6759 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L3491
.LBB99:
	.loc 1 6761 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6763 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3493
.LBB100:
	.loc 1 6765 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6767 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6769 0
	movl	-100(%ebp), %eax
	addl	-124(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L3495
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jle	.L3495
	.loc 1 6771 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3495:
	.loc 1 6772 0
	movl	-96(%ebp), %eax
	addl	-120(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L3498
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jle	.L3498
	.loc 1 6774 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3498:
	.loc 1 6775 0
	cmpl	$0, -108(%ebp)
	je	.L3491
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_for_reload_p@PLT
	testl	%eax, %eax
	je	.L3491
	.loc 1 6778 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3493:
.LBE100:
	.loc 1 6781 0
	cmpl	$0, -116(%ebp)
	je	.L3504
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L3504
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	jne	.L3504
	.loc 1 6783 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3504:
	.loc 1 6784 0
	cmpl	$0, -104(%ebp)
	je	.L3491
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	je	.L3491
	.loc 1 6786 0
	movl	$0, -180(%ebp)
	jmp	.L3227
.L3491:
.LBE99:
	.loc 1 6756 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L3489:
	.loc 1 6755 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L3490
	.loc 1 6816 0
	jmp	.L3381
.L3227:
	movl	-180(%ebp), %eax
.LBE98:
	.loc 1 6817 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	find_equiv_reg, .-find_equiv_reg
	.type	find_inc_amount, @function
find_inc_amount:
.LFB55:
	.loc 1 6826 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	pushl	%ebx
.LCFI190:
	subl	$44, %esp
.LCFI191:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6827 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 6831 0
	cmpl	$76, -32(%ebp)
	jne	.L3515
.LBB101:
	.loc 1 6833 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6834 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L3517
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$108, %ax
	je	.L3517
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$107, %ax
	je	.L3517
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$109, %ax
	jne	.L3521
.L3517:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3521
	.loc 1 6839 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L3523
.L3521:
	.loc 1 6840 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$110, %ax
	je	.L3524
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$111, %ax
	jne	.L3515
.L3524:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L3515
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3515
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L3515
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L3515
	.loc 1 6847 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6848 0
	movl	-24(%ebp), %eax
	sarl	$31, %eax
	movl	-24(%ebp), %edx
	xorl	%eax, %edx
	movl	%edx, -40(%ebp)
	subl	%eax, -40(%ebp)
	jmp	.L3523
.L3515:
.LBE101:
	.loc 1 6852 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6853 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L3530
.L3531:
	.loc 1 6855 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L3532
.LBB102:
	.loc 1 6857 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_inc_amount
	movl	%eax, -16(%ebp)
	.loc 1 6858 0
	cmpl	$0, -16(%ebp)
	je	.L3532
	.loc 1 6859 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L3523
.L3532:
.LBE102:
	.loc 1 6861 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L3535
.LBB103:
	.loc 1 6864 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L3537
.L3538:
.LBB104:
	.loc 1 6866 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_inc_amount
	movl	%eax, -8(%ebp)
	.loc 1 6867 0
	cmpl	$0, -8(%ebp)
	je	.L3539
	.loc 1 6868 0
	movl	-8(%ebp), %edx
	movl	%edx, -40(%ebp)
	jmp	.L3523
.L3539:
.LBE104:
	.loc 1 6864 0
	subl	$1, -12(%ebp)
.L3537:
	cmpl	$0, -12(%ebp)
	jns	.L3538
.L3535:
.LBE103:
	.loc 1 6853 0
	subl	$1, -24(%ebp)
.L3530:
	cmpl	$0, -24(%ebp)
	jns	.L3531
	.loc 1 6873 0
	movl	$0, -40(%ebp)
.L3523:
	movl	-40(%ebp), %eax
	.loc 1 6874 0
	addl	$44, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	find_inc_amount, .-find_inc_amount
.globl regno_clobbered_p
	.type	regno_clobbered_p, @function
regno_clobbered_p:
.LFB56:
	.loc 1 6885 0
	pushl	%ebp
.LCFI192:
	movl	%esp, %ebp
.LCFI193:
	pushl	%ebx
.LCFI194:
	subl	$52, %esp
.LCFI195:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6886 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	.loc 1 6887 0
	movl	-28(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6889 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L3544
	cmpl	$0, 20(%ebp)
	je	.L3546
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3546
.L3544:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3546
.LBB105:
	.loc 1 6893 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6895 0
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jb	.L3549
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	.L3549
	movl	$1, -40(%ebp)
	jmp	.L3552
.L3549:
	movl	$0, -40(%ebp)
.L3552:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L3553
.L3546:
.LBE105:
	.loc 1 6898 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L3554
.LBB106:
	.loc 1 6900 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 6902 0
	jmp	.L3556
.L3557:
.LBB107:
	.loc 1 6904 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6905 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L3558
	cmpl	$0, 20(%ebp)
	je	.L3560
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L3560
.L3558:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L3560
.LBB108:
	.loc 1 6909 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6911 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jb	.L3560
	movl	-8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	.L3560
	.loc 1 6912 0
	movl	$1, -44(%ebp)
	jmp	.L3553
.L3560:
.LBE108:
.LBE107:
	.loc 1 6902 0
	subl	$1, -16(%ebp)
.L3556:
	cmpl	$0, -16(%ebp)
	jns	.L3557
.L3554:
.LBE106:
	.loc 1 6917 0
	movl	$0, -44(%ebp)
.L3553:
	movl	-44(%ebp), %eax
	.loc 1 6918 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	regno_clobbered_p, .-regno_clobbered_p
	.section	.rodata
.LC6:
	.string	"RELOAD_FOR_INPUT"
.LC7:
	.string	"RELOAD_FOR_OUTPUT"
.LC8:
	.string	"RELOAD_FOR_INSN"
.LC9:
	.string	"RELOAD_FOR_INPUT_ADDRESS"
.LC10:
	.string	"RELOAD_FOR_INPADDR_ADDRESS"
.LC11:
	.string	"RELOAD_FOR_OUTPUT_ADDRESS"
.LC12:
	.string	"RELOAD_FOR_OUTADDR_ADDRESS"
.LC13:
	.string	"RELOAD_FOR_OPERAND_ADDRESS"
.LC14:
	.string	"RELOAD_FOR_OPADDR_ADDR"
.LC15:
	.string	"RELOAD_OTHER"
.LC16:
	.string	"RELOAD_FOR_OTHER_ADDRESS"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	reload_when_needed_name, @object
	.size	reload_when_needed_name, 44
reload_when_needed_name:
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.section	.rodata
.LC17:
	.string	"NO_REGS"
.LC18:
	.string	"M16_NA_REGS"
.LC19:
	.string	"M16_REGS"
.LC20:
	.string	"T_REG"
.LC21:
	.string	"M16_T_REGS"
.LC22:
	.string	"GR_REGS"
.LC23:
	.string	"FP_REGS"
.LC24:
	.string	"HI_REG"
.LC25:
	.string	"LO_REG"
.LC26:
	.string	"HILO_REG"
.LC27:
	.string	"MD_REGS"
.LC28:
	.string	"COP0_REGS"
.LC29:
	.string	"COP2_REGS"
.LC30:
	.string	"COP3_REGS"
.LC31:
	.string	"HI_AND_GR_REGS"
.LC32:
	.string	"LO_AND_GR_REGS"
.LC33:
	.string	"HILO_AND_GR_REGS"
.LC34:
	.string	"HI_AND_FP_REGS"
.LC35:
	.string	"COP0_AND_GR_REGS"
.LC36:
	.string	"COP2_AND_GR_REGS"
.LC37:
	.string	"COP3_AND_GR_REGS"
.LC38:
	.string	"ALL_COP_REGS"
.LC39:
	.string	"ALL_COP_AND_GR_REGS"
.LC40:
	.string	"ST_REGS"
.LC41:
	.string	"ALL_REGS"
	.section	.data.rel.ro.local
	.align 32
	.type	reg_class_names, @object
	.size	reg_class_names, 100
reg_class_names:
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.section	.rodata
.LC42:
	.string	"Reload %d: "
.LC43:
	.string	"reload_in (%s) = "
.LC44:
	.string	"\n\t"
.LC45:
	.string	"reload_out (%s) = "
.LC46:
	.string	"%s, "
.LC47:
	.string	"%s (opnum = %d)"
.LC48:
	.string	", optional"
.LC49:
	.string	", nongroup"
.LC50:
	.string	", inc by %d"
.LC51:
	.string	", can't combine"
.LC52:
	.string	", secondary_reload_p"
.LC53:
	.string	"\n\treload_in_reg: "
.LC54:
	.string	"\n\treload_out_reg: "
.LC55:
	.string	"\n\treload_reg_rtx: "
.LC56:
	.string	"%ssecondary_in_reload = %d"
.LC57:
	.string	", "
.LC58:
	.string	"%ssecondary_out_reload = %d\n"
.LC59:
	.string	"%ssecondary_in_icode = %s"
.LC60:
	.string	"%ssecondary_out_icode = %s"
	.text
.globl debug_reload_to_stream
	.type	debug_reload_to_stream, @function
debug_reload_to_stream:
.LFB57:
	.loc 1 6942 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	pushl	%ebx
.LCFI198:
	subl	$36, %esp
.LCFI199:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6946 0
	cmpl	$0, 8(%ebp)
	jne	.L3567
	.loc 1 6947 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L3567:
	.loc 1 6948 0
	movl	$0, -12(%ebp)
	jmp	.L3569
.L3570:
	.loc 1 6950 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6952 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L3571
	.loc 1 6954 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6956 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	movl	(%eax,%edx), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 6957 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3571:
	.loc 1 6960 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3573
	.loc 1 6962 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6964 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
	.loc 1 6965 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3573:
	.loc 1 6968 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	reg_class_names@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6970 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$48, %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$68, %eax
	movl	(%eax), %eax
	movl	reload_when_needed_name@GOTOFF(%ebx,%eax,4), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6974 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L3575
	.loc 1 6975 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3575:
	.loc 1 6977 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L3577
	.loc 1 6978 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3577:
	.loc 1 6980 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3579
	.loc 1 6981 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$28, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3579:
	.loc 1 6983 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	je	.L3581
	.loc 1 6984 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3581:
	.loc 1 6986 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L3583
	.loc 1 6987 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L3583:
	.loc 1 6989 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3585
	.loc 1 6991 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6992 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
.L3585:
	.loc 1 6995 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3587
	.loc 1 6997 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6998 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
.L3587:
	.loc 1 7001 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3589
	.loc 1 7003 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$18, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 7004 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	movl	(%eax), %eax
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
.L3589:
	.loc 1 7007 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7008 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L3591
	.loc 1 7010 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$52, %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7012 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L3591:
	.loc 1 7015 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L3593
	.loc 1 7016 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$56, %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3593:
	.loc 1 7019 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7020 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	(%eax), %eax
	cmpl	$529, %eax
	je	.L3595
	.loc 1 7022 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$60, %eax
	movl	(%eax), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7024 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L3595:
	.loc 1 7027 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	(%eax), %eax
	cmpl	$529, %eax
	je	.L3597
	.loc 1 7028 0
	movl	-12(%ebp), %eax
	movl	rld@GOT(%ebx), %edx
	imull	$76, %eax, %eax
	addl	%edx, %eax
	addl	$64, %eax
	movl	(%eax), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L3597:
	.loc 1 7031 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 6948 0
	addl	$1, -12(%ebp)
.L3569:
	movl	n_reloads@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L3570
	.loc 1 7033 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	debug_reload_to_stream, .-debug_reload_to_stream
.globl debug_reload
	.type	debug_reload, @function
debug_reload:
.LFB58:
	.loc 1 7037 0
	pushl	%ebp
.LCFI200:
	movl	%esp, %ebp
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$4, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7038 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	debug_reload_to_stream@PLT
	.loc 1 7039 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	debug_reload, .-debug_reload
	.local	replace_reloads
	.comm	replace_reloads,4,4
	.local	replacements
	.comm	replacements,1440,32
	.local	n_replacements
	.comm	n_replacements,4,4
	.local	this_insn
	.comm	this_insn,4,4
	.local	this_insn_is_asm
	.comm	this_insn_is_asm,4,4
	.local	hard_regs_live_known
	.comm	hard_regs_live_known,4,4
	.local	static_reload_reg_p
	.comm	static_reload_reg_p,4,4
	.local	subst_reg_equivs_changed
	.comm	subst_reg_equivs_changed,4,4
	.local	output_reloadnum
	.comm	output_reloadnum,4,4
	.comm	rld,9120,32
	.comm	n_reloads,4,4
	.comm	n_earlyclobbers,4,4
	.comm	reload_earlyclobbers,120,32
	.comm	reload_n_operands,4,4
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
	.long	.LCFI10-.LCFI6
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI11-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI17-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI18
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
	.long	.LCFI22-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI23
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
	.long	.LCFI28-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI32-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
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
	.long	.LCFI36-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
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
	.long	.LCFI40-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI41
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
	.long	.LCFI46-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI47
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI52-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI53
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
	.long	.LCFI58-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
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
	.long	.LCFI61-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
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
	.long	.LCFI65-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI69-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI75-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI76
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
	.long	.LCFI81-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI82
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
	.long	.LCFI85-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
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
	.long	.LCFI88-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI93-.LCFI89
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
	.long	.LCFI94-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI97-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI98
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
	.long	.LCFI102-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI103
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
	.long	.LCFI106-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
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
	.long	.LCFI110-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI111
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
	.long	.LCFI115-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI116
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI120-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI121
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI125-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
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
	.long	.LCFI129-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
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
	.long	.LCFI131-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI132
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
	.long	.LCFI137-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
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
	.long	.LCFI141-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI142
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
	.long	.LCFI147-.LFB46
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI151-.LFB47
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI155-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI159-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI163-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI168-.LCFI164
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI169-.LFB51
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI173-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI174
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
	.long	.LCFI178-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
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
	.long	.LCFI182-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI188-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI189
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
	.long	.LCFI192-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI193-.LCFI192
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI195-.LCFI193
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
	.long	.LCFI196-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI199-.LCFI197
	.byte	0x83
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
	.long	.LCFI200-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI201
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 9 "../../../kgccfe/gnu/reload.h"
	.file 10 "../../../kgccfe/gnu/MIPS/insn-codes.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 16 "../../../include/gnu/safe-ctype.h"
	.file 17 "../../../kgccfe/gnu/optabs.h"
	.file 18 "../../../kgccfe/gnu/recog.h"
	.file 19 "../../../kgccfe/gnu/regs.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
	.file 21 "../../../kgccfe/gnu/function.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI33-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI103-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI192-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI193-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI196-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI197-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI200-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI201-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8954
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/reload.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19a
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xba2
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
	.long	0x8aa
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x17be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a7
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad
	.uleb128 0x4
	.long	0x1e2
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x17ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ee
	.uleb128 0x3
	.byte	0x4
	.long	0x1f4
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x206
	.uleb128 0x9
	.long	0x20b
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x390
	.string	"reg_class"
	.byte	0x4
	.byte	0x8
	.value	0x7ec
	.uleb128 0xc
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xc
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xc
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xc
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xc
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xc
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xc
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xc
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xc
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xc
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xc
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xc
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xc
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xc
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xc
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xc
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xc
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xc
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xc
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xc
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xc
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xc
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xc
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xc
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xc
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xc
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xd
	.long	0x462
	.string	"mips_args"
	.byte	0x40
	.byte	0x8
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x8
	.value	0xaad
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x8
	.value	0xab0
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x8
	.value	0xab5
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x8
	.value	0xab8
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x8
	.value	0xabb
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x8
	.value	0xac8
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x8
	.value	0xacb
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x8
	.value	0xad3
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x8
	.value	0xad4
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x479
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0x8
	.value	0xad5
	.long	0x390
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x462
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
	.byte	0xd
	.byte	0x3b
	.long	0x4fe
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x548
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x529
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x2
	.string	"FILE"
	.byte	0xb
	.byte	0x2e
	.long	0x579
	.uleb128 0x14
	.long	0x7f4
	.long	.LASF3
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x85b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x4e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x867
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x877
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x87d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x804
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a6
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x85b
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x85b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xc
	.byte	0xbc
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x818
	.uleb128 0x3
	.byte	0x4
	.long	0x579
	.uleb128 0x10
	.long	0x877
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80a
	.uleb128 0x10
	.long	0x88d
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x89d
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x213
	.uleb128 0x3
	.byte	0x4
	.long	0x8a9
	.uleb128 0x16
	.uleb128 0x17
	.long	0xaf3
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xc
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xc
	.string	"BImode"
	.sleb128 1
	.uleb128 0xc
	.string	"QImode"
	.sleb128 2
	.uleb128 0xc
	.string	"HImode"
	.sleb128 3
	.uleb128 0xc
	.string	"SImode"
	.sleb128 4
	.uleb128 0xc
	.string	"DImode"
	.sleb128 5
	.uleb128 0xc
	.string	"TImode"
	.sleb128 6
	.uleb128 0xc
	.string	"OImode"
	.sleb128 7
	.uleb128 0xc
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xc
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xc
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xc
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xc
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xc
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xc
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xc
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xc
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xc
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xc
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xc
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xc
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xc
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xc
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xc
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xc
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xc
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xc
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xc
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xc
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xc
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xc
	.string	"COImode"
	.sleb128 30
	.uleb128 0xc
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xc
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xc
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xc
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xc
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xc
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xc
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xc
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xc
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xc
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xc
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xc
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xc
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xc
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xc
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xc
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xc
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xc
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xc
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xc
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xc
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xc
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xc
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xc
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0xba2
	.long	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0xc
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xc
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xc
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xc
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xc
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xc
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xc
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xc
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xc
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xc
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x17
	.long	0x1371
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xc
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xc
	.string	"NIL"
	.sleb128 1
	.uleb128 0xc
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xc
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xc
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xc
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xc
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xc
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xc
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xc
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xc
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xc
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xc
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xc
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xc
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xc
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xc
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xc
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xc
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xc
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xc
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xc
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xc
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xc
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xc
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xc
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xc
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xc
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xc
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xc
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xc
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xc
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xc
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xc
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xc
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xc
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xc
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xc
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xc
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xc
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xc
	.string	"INSN"
	.sleb128 42
	.uleb128 0xc
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xc
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xc
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xc
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xc
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xc
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xc
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xc
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xc
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xc
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xc
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xc
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xc
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xc
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xc
	.string	"SET"
	.sleb128 57
	.uleb128 0xc
	.string	"USE"
	.sleb128 58
	.uleb128 0xc
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xc
	.string	"CALL"
	.sleb128 60
	.uleb128 0xc
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xc
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xc
	.string	"RESX"
	.sleb128 63
	.uleb128 0xc
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xc
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xc
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xc
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xc
	.string	"CONST"
	.sleb128 68
	.uleb128 0xc
	.string	"PC"
	.sleb128 69
	.uleb128 0xc
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xc
	.string	"REG"
	.sleb128 71
	.uleb128 0xc
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xc
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xc
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xc
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xc
	.string	"MEM"
	.sleb128 76
	.uleb128 0xc
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xc
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xc
	.string	"CC0"
	.sleb128 79
	.uleb128 0xc
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xc
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xc
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xc
	.string	"COND"
	.sleb128 83
	.uleb128 0xc
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xc
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xc
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xc
	.string	"NEG"
	.sleb128 87
	.uleb128 0xc
	.string	"MULT"
	.sleb128 88
	.uleb128 0xc
	.string	"DIV"
	.sleb128 89
	.uleb128 0xc
	.string	"MOD"
	.sleb128 90
	.uleb128 0xc
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xc
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xc
	.string	"AND"
	.sleb128 93
	.uleb128 0xc
	.string	"IOR"
	.sleb128 94
	.uleb128 0xc
	.string	"XOR"
	.sleb128 95
	.uleb128 0xc
	.string	"NOT"
	.sleb128 96
	.uleb128 0xc
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xc
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xc
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xc
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xc
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xc
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xc
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xc
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xc
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xc
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xc
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xc
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xc
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xc
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xc
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xc
	.string	"NE"
	.sleb128 112
	.uleb128 0xc
	.string	"EQ"
	.sleb128 113
	.uleb128 0xc
	.string	"GE"
	.sleb128 114
	.uleb128 0xc
	.string	"GT"
	.sleb128 115
	.uleb128 0xc
	.string	"LE"
	.sleb128 116
	.uleb128 0xc
	.string	"LT"
	.sleb128 117
	.uleb128 0xc
	.string	"GEU"
	.sleb128 118
	.uleb128 0xc
	.string	"GTU"
	.sleb128 119
	.uleb128 0xc
	.string	"LEU"
	.sleb128 120
	.uleb128 0xc
	.string	"LTU"
	.sleb128 121
	.uleb128 0xc
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xc
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xc
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xc
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xc
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xc
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xc
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xc
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xc
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xc
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xc
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xc
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xc
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xc
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xc
	.string	"FIX"
	.sleb128 136
	.uleb128 0xc
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xc
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xc
	.string	"ABS"
	.sleb128 139
	.uleb128 0xc
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xc
	.string	"FFS"
	.sleb128 141
	.uleb128 0xc
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xc
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xc
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xc
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xc
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xc
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xc
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xc
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xc
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xc
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xc
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xc
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xc
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xc
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xc
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xc
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xc
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xc
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xc
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xc
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xc
	.string	"PHI"
	.sleb128 162
	.uleb128 0xc
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x19
	.long	0x144b
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x1371
	.uleb128 0x14
	.long	0x14bf
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x3
	.byte	0x6e
	.long	0x1466
	.uleb128 0x1c
	.long	0x159c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x4fe
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x213
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x462
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x200
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9b
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19a
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x8aa
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x144b
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x15b0
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1618
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e2
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x17a3
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x17a9
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x159c
	.uleb128 0x4
	.long	0x1618
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x4000
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x4000
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b6
	.uleb128 0x4
	.long	0x17a3
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x4153
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x4153
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x4083
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x4083
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x4083
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x4083
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x17a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x17a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x43cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x4091
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x161e
	.uleb128 0x3
	.byte	0x4
	.long	0x14bf
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x14ca
	.uleb128 0x10
	.long	0x17ce
	.long	0x17af
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x17de
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x18
	.long	0x3943
	.long	.LASF7
	.byte	0x4
	.byte	0xa
	.byte	0x7
	.uleb128 0xc
	.string	"CODE_FOR_trap"
	.sleb128 0
	.uleb128 0xc
	.string	"CODE_FOR_adddf3"
	.sleb128 2
	.uleb128 0xc
	.string	"CODE_FOR_addsf3"
	.sleb128 3
	.uleb128 0xc
	.string	"CODE_FOR_addsi3_internal"
	.sleb128 4
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_1"
	.sleb128 8
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_2"
	.sleb128 9
	.uleb128 0xc
	.string	"CODE_FOR_adddi3_internal_3"
	.sleb128 10
	.uleb128 0xc
	.string	"CODE_FOR_addsi3_internal_2"
	.sleb128 14
	.uleb128 0xc
	.string	"CODE_FOR_subdf3"
	.sleb128 16
	.uleb128 0xc
	.string	"CODE_FOR_subsf3"
	.sleb128 17
	.uleb128 0xc
	.string	"CODE_FOR_subsi3_internal"
	.sleb128 18
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal"
	.sleb128 22
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal_2"
	.sleb128 23
	.uleb128 0xc
	.string	"CODE_FOR_subdi3_internal_3"
	.sleb128 24
	.uleb128 0xc
	.string	"CODE_FOR_subsi3_internal_2"
	.sleb128 28
	.uleb128 0xc
	.string	"CODE_FOR_muldf3_internal"
	.sleb128 30
	.uleb128 0xc
	.string	"CODE_FOR_muldf3_r4300"
	.sleb128 31
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3_internal"
	.sleb128 32
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3_r4300"
	.sleb128 33
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_mult3"
	.sleb128 34
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_internal"
	.sleb128 35
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3_r4000"
	.sleb128 36
	.uleb128 0xc
	.string	"CODE_FOR_muldi3_internal"
	.sleb128 41
	.uleb128 0xc
	.string	"CODE_FOR_muldi3_internal2"
	.sleb128 42
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3_internal"
	.sleb128 43
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3_64bit"
	.sleb128 44
	.uleb128 0xc
	.string	"CODE_FOR_xmulsi3_highpart_internal"
	.sleb128 47
	.uleb128 0xc
	.string	"CODE_FOR_xmulsi3_highpart_mulhi"
	.sleb128 48
	.uleb128 0xc
	.string	"CODE_FOR_smuldi3_highpart"
	.sleb128 50
	.uleb128 0xc
	.string	"CODE_FOR_umuldi3_highpart"
	.sleb128 51
	.uleb128 0xc
	.string	"CODE_FOR_madsi"
	.sleb128 52
	.uleb128 0xc
	.string	"CODE_FOR_divdf3"
	.sleb128 63
	.uleb128 0xc
	.string	"CODE_FOR_divsf3"
	.sleb128 64
	.uleb128 0xc
	.string	"CODE_FOR_divmodsi4_internal"
	.sleb128 67
	.uleb128 0xc
	.string	"CODE_FOR_divmoddi4_internal"
	.sleb128 68
	.uleb128 0xc
	.string	"CODE_FOR_udivmodsi4_internal"
	.sleb128 69
	.uleb128 0xc
	.string	"CODE_FOR_udivmoddi4_internal"
	.sleb128 70
	.uleb128 0xc
	.string	"CODE_FOR_div_trap_normal"
	.sleb128 71
	.uleb128 0xc
	.string	"CODE_FOR_div_trap_mips16"
	.sleb128 72
	.uleb128 0xc
	.string	"CODE_FOR_divsi3_internal"
	.sleb128 73
	.uleb128 0xc
	.string	"CODE_FOR_divdi3_internal"
	.sleb128 74
	.uleb128 0xc
	.string	"CODE_FOR_modsi3_internal"
	.sleb128 75
	.uleb128 0xc
	.string	"CODE_FOR_moddi3_internal"
	.sleb128 76
	.uleb128 0xc
	.string	"CODE_FOR_udivsi3_internal"
	.sleb128 77
	.uleb128 0xc
	.string	"CODE_FOR_udivdi3_internal"
	.sleb128 78
	.uleb128 0xc
	.string	"CODE_FOR_umodsi3_internal"
	.sleb128 79
	.uleb128 0xc
	.string	"CODE_FOR_umoddi3_internal"
	.sleb128 80
	.uleb128 0xc
	.string	"CODE_FOR_sqrtdf2"
	.sleb128 81
	.uleb128 0xc
	.string	"CODE_FOR_sqrtsf2"
	.sleb128 82
	.uleb128 0xc
	.string	"CODE_FOR_abssi2"
	.sleb128 85
	.uleb128 0xc
	.string	"CODE_FOR_absdi2"
	.sleb128 86
	.uleb128 0xc
	.string	"CODE_FOR_absdf2"
	.sleb128 87
	.uleb128 0xc
	.string	"CODE_FOR_abssf2"
	.sleb128 88
	.uleb128 0xc
	.string	"CODE_FOR_ffssi2"
	.sleb128 89
	.uleb128 0xc
	.string	"CODE_FOR_ffsdi2"
	.sleb128 90
	.uleb128 0xc
	.string	"CODE_FOR_negsi2"
	.sleb128 91
	.uleb128 0xc
	.string	"CODE_FOR_negdi2_internal"
	.sleb128 92
	.uleb128 0xc
	.string	"CODE_FOR_negdi2_internal_2"
	.sleb128 93
	.uleb128 0xc
	.string	"CODE_FOR_negdf2"
	.sleb128 94
	.uleb128 0xc
	.string	"CODE_FOR_negsf2"
	.sleb128 95
	.uleb128 0xc
	.string	"CODE_FOR_one_cmplsi2"
	.sleb128 96
	.uleb128 0xc
	.string	"CODE_FOR_one_cmpldi2"
	.sleb128 97
	.uleb128 0xc
	.string	"CODE_FOR_anddi3_internal1"
	.sleb128 102
	.uleb128 0xc
	.string	"CODE_FOR_xordi3_immed"
	.sleb128 112
	.uleb128 0xc
	.string	"CODE_FOR_truncdfsf2"
	.sleb128 115
	.uleb128 0xc
	.string	"CODE_FOR_truncdisi2"
	.sleb128 116
	.uleb128 0xc
	.string	"CODE_FOR_truncdihi2"
	.sleb128 117
	.uleb128 0xc
	.string	"CODE_FOR_truncdiqi2"
	.sleb128 118
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendsidi2_internal"
	.sleb128 125
	.uleb128 0xc
	.string	"CODE_FOR_extendhidi2_internal"
	.sleb128 137
	.uleb128 0xc
	.string	"CODE_FOR_extendhisi2_internal"
	.sleb128 138
	.uleb128 0xc
	.string	"CODE_FOR_extendqihi2_internal"
	.sleb128 139
	.uleb128 0xc
	.string	"CODE_FOR_extendqisi2_insn"
	.sleb128 140
	.uleb128 0xc
	.string	"CODE_FOR_extendqidi2_insn"
	.sleb128 141
	.uleb128 0xc
	.string	"CODE_FOR_extendsfdf2"
	.sleb128 142
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2_insn"
	.sleb128 143
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2_macro"
	.sleb128 144
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2_insn"
	.sleb128 145
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2_macro"
	.sleb128 146
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfdi2"
	.sleb128 147
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfdi2"
	.sleb128 148
	.uleb128 0xc
	.string	"CODE_FOR_floatsidf2"
	.sleb128 149
	.uleb128 0xc
	.string	"CODE_FOR_floatdidf2"
	.sleb128 150
	.uleb128 0xc
	.string	"CODE_FOR_floatsisf2"
	.sleb128 151
	.uleb128 0xc
	.string	"CODE_FOR_floatdisf2"
	.sleb128 152
	.uleb128 0xc
	.string	"CODE_FOR_movsi_ulw"
	.sleb128 153
	.uleb128 0xc
	.string	"CODE_FOR_movsi_usw"
	.sleb128 154
	.uleb128 0xc
	.string	"CODE_FOR_movdi_uld"
	.sleb128 155
	.uleb128 0xc
	.string	"CODE_FOR_movdi_usd"
	.sleb128 156
	.uleb128 0xc
	.string	"CODE_FOR_high"
	.sleb128 157
	.uleb128 0xc
	.string	"CODE_FOR_low"
	.sleb128 158
	.uleb128 0xc
	.string	"CODE_FOR_movdi_internal"
	.sleb128 160
	.uleb128 0xc
	.string	"CODE_FOR_movdi_internal2"
	.sleb128 162
	.uleb128 0xc
	.string	"CODE_FOR_movsi_internal"
	.sleb128 166
	.uleb128 0xc
	.string	"CODE_FOR_hilo_delay"
	.sleb128 168
	.uleb128 0xc
	.string	"CODE_FOR_movcc"
	.sleb128 169
	.uleb128 0xc
	.string	"CODE_FOR_movhi_internal"
	.sleb128 178
	.uleb128 0xc
	.string	"CODE_FOR_movqi_internal"
	.sleb128 180
	.uleb128 0xc
	.string	"CODE_FOR_movsf_internal1"
	.sleb128 182
	.uleb128 0xc
	.string	"CODE_FOR_movsf_internal2"
	.sleb128 183
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal1"
	.sleb128 185
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal1a"
	.sleb128 186
	.uleb128 0xc
	.string	"CODE_FOR_movdf_internal2"
	.sleb128 187
	.uleb128 0xc
	.string	"CODE_FOR_loadgp"
	.sleb128 189
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal"
	.sleb128 190
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal2"
	.sleb128 192
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi_internal3"
	.sleb128 194
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3_internal1"
	.sleb128 195
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3_internal2"
	.sleb128 196
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal"
	.sleb128 197
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal2"
	.sleb128 198
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal3"
	.sleb128 199
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3_internal4"
	.sleb128 200
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3_internal1"
	.sleb128 202
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3_internal2"
	.sleb128 203
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal"
	.sleb128 204
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal2"
	.sleb128 205
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal3"
	.sleb128 206
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3_internal4"
	.sleb128 207
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3_internal1"
	.sleb128 209
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3_internal2"
	.sleb128 210
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal"
	.sleb128 212
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal2"
	.sleb128 213
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal3"
	.sleb128 214
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3_internal4"
	.sleb128 215
	.uleb128 0xc
	.string	"CODE_FOR_rotrsi3"
	.sleb128 217
	.uleb128 0xc
	.string	"CODE_FOR_rotrdi3"
	.sleb128 218
	.uleb128 0xc
	.string	"CODE_FOR_branch_fp"
	.sleb128 219
	.uleb128 0xc
	.string	"CODE_FOR_branch_fp_inverted"
	.sleb128 220
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero"
	.sleb128 221
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_inverted"
	.sleb128 222
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_di"
	.sleb128 223
	.uleb128 0xc
	.string	"CODE_FOR_branch_zero_di_inverted"
	.sleb128 224
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality"
	.sleb128 225
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_di"
	.sleb128 226
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_inverted"
	.sleb128 227
	.uleb128 0xc
	.string	"CODE_FOR_branch_equality_di_inverted"
	.sleb128 228
	.uleb128 0xc
	.string	"CODE_FOR_seq_si_zero"
	.sleb128 231
	.uleb128 0xc
	.string	"CODE_FOR_seq_di_zero"
	.sleb128 233
	.uleb128 0xc
	.string	"CODE_FOR_sne_si_zero"
	.sleb128 235
	.uleb128 0xc
	.string	"CODE_FOR_sne_di_zero"
	.sleb128 236
	.uleb128 0xc
	.string	"CODE_FOR_sgt_si"
	.sleb128 237
	.uleb128 0xc
	.string	"CODE_FOR_sgt_di"
	.sleb128 239
	.uleb128 0xc
	.string	"CODE_FOR_slt_si"
	.sleb128 241
	.uleb128 0xc
	.string	"CODE_FOR_slt_di"
	.sleb128 243
	.uleb128 0xc
	.string	"CODE_FOR_sle_si_const"
	.sleb128 245
	.uleb128 0xc
	.string	"CODE_FOR_sle_di_const"
	.sleb128 247
	.uleb128 0xc
	.string	"CODE_FOR_sgtu_si"
	.sleb128 249
	.uleb128 0xc
	.string	"CODE_FOR_sgtu_di"
	.sleb128 251
	.uleb128 0xc
	.string	"CODE_FOR_sltu_si"
	.sleb128 253
	.uleb128 0xc
	.string	"CODE_FOR_sltu_di"
	.sleb128 255
	.uleb128 0xc
	.string	"CODE_FOR_sleu_si_const"
	.sleb128 257
	.uleb128 0xc
	.string	"CODE_FOR_sleu_di_const"
	.sleb128 259
	.uleb128 0xc
	.string	"CODE_FOR_sunordered_df"
	.sleb128 261
	.uleb128 0xc
	.string	"CODE_FOR_sunlt_df"
	.sleb128 262
	.uleb128 0xc
	.string	"CODE_FOR_suneq_df"
	.sleb128 263
	.uleb128 0xc
	.string	"CODE_FOR_sunle_df"
	.sleb128 264
	.uleb128 0xc
	.string	"CODE_FOR_seq_df"
	.sleb128 265
	.uleb128 0xc
	.string	"CODE_FOR_slt_df"
	.sleb128 266
	.uleb128 0xc
	.string	"CODE_FOR_sle_df"
	.sleb128 267
	.uleb128 0xc
	.string	"CODE_FOR_sgt_df"
	.sleb128 268
	.uleb128 0xc
	.string	"CODE_FOR_sge_df"
	.sleb128 269
	.uleb128 0xc
	.string	"CODE_FOR_sunordered_sf"
	.sleb128 270
	.uleb128 0xc
	.string	"CODE_FOR_sunlt_sf"
	.sleb128 271
	.uleb128 0xc
	.string	"CODE_FOR_suneq_sf"
	.sleb128 272
	.uleb128 0xc
	.string	"CODE_FOR_sunle_sf"
	.sleb128 273
	.uleb128 0xc
	.string	"CODE_FOR_seq_sf"
	.sleb128 274
	.uleb128 0xc
	.string	"CODE_FOR_slt_sf"
	.sleb128 275
	.uleb128 0xc
	.string	"CODE_FOR_sle_sf"
	.sleb128 276
	.uleb128 0xc
	.string	"CODE_FOR_sgt_sf"
	.sleb128 277
	.uleb128 0xc
	.string	"CODE_FOR_sge_sf"
	.sleb128 278
	.uleb128 0xc
	.string	"CODE_FOR_jump"
	.sleb128 279
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump_internal1"
	.sleb128 281
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump_internal2"
	.sleb128 282
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal1"
	.sleb128 283
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal2"
	.sleb128 284
	.uleb128 0xc
	.string	"CODE_FOR_casesi_internal"
	.sleb128 287
	.uleb128 0xc
	.string	"CODE_FOR_casesi_internal_di"
	.sleb128 288
	.uleb128 0xc
	.string	"CODE_FOR_blockage"
	.sleb128 289
	.uleb128 0xc
	.string	"CODE_FOR_return"
	.sleb128 290
	.uleb128 0xc
	.string	"CODE_FOR_return_internal"
	.sleb128 291
	.uleb128 0xc
	.string	"CODE_FOR_get_fnaddr"
	.sleb128 292
	.uleb128 0xc
	.string	"CODE_FOR_eh_set_lr_si"
	.sleb128 293
	.uleb128 0xc
	.string	"CODE_FOR_eh_set_lr_di"
	.sleb128 294
	.uleb128 0xc
	.string	"CODE_FOR_exception_receiver"
	.sleb128 295
	.uleb128 0xc
	.string	"CODE_FOR_call_internal1"
	.sleb128 297
	.uleb128 0xc
	.string	"CODE_FOR_call_internal2"
	.sleb128 298
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3a"
	.sleb128 299
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3b"
	.sleb128 300
	.uleb128 0xc
	.string	"CODE_FOR_call_internal3c"
	.sleb128 301
	.uleb128 0xc
	.string	"CODE_FOR_call_internal4a"
	.sleb128 302
	.uleb128 0xc
	.string	"CODE_FOR_call_internal4b"
	.sleb128 303
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal1"
	.sleb128 305
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal2"
	.sleb128 306
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3a"
	.sleb128 307
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3b"
	.sleb128 308
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal3c"
	.sleb128 309
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal4a"
	.sleb128 310
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal4b"
	.sleb128 311
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal1"
	.sleb128 312
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal2"
	.sleb128 313
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_si_address"
	.sleb128 314
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_si"
	.sleb128 315
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_di_address"
	.sleb128 316
	.uleb128 0xc
	.string	"CODE_FOR_prefetch_di"
	.sleb128 317
	.uleb128 0xc
	.string	"CODE_FOR_nop"
	.sleb128 318
	.uleb128 0xc
	.string	"CODE_FOR_consttable_qi"
	.sleb128 331
	.uleb128 0xc
	.string	"CODE_FOR_consttable_hi"
	.sleb128 332
	.uleb128 0xc
	.string	"CODE_FOR_consttable_si"
	.sleb128 333
	.uleb128 0xc
	.string	"CODE_FOR_consttable_di"
	.sleb128 334
	.uleb128 0xc
	.string	"CODE_FOR_consttable_sf"
	.sleb128 335
	.uleb128 0xc
	.string	"CODE_FOR_consttable_df"
	.sleb128 336
	.uleb128 0xc
	.string	"CODE_FOR_align_2"
	.sleb128 337
	.uleb128 0xc
	.string	"CODE_FOR_align_4"
	.sleb128 338
	.uleb128 0xc
	.string	"CODE_FOR_align_8"
	.sleb128 339
	.uleb128 0xc
	.string	"CODE_FOR_leasi"
	.sleb128 340
	.uleb128 0xc
	.string	"CODE_FOR_leadi"
	.sleb128 341
	.uleb128 0xc
	.string	"CODE_FOR_conditional_trap"
	.sleb128 342
	.uleb128 0xc
	.string	"CODE_FOR_addsi3"
	.sleb128 343
	.uleb128 0xc
	.string	"CODE_FOR_adddi3"
	.sleb128 346
	.uleb128 0xc
	.string	"CODE_FOR_subsi3"
	.sleb128 353
	.uleb128 0xc
	.string	"CODE_FOR_subdi3"
	.sleb128 356
	.uleb128 0xc
	.string	"CODE_FOR_muldf3"
	.sleb128 363
	.uleb128 0xc
	.string	"CODE_FOR_mulsf3"
	.sleb128 364
	.uleb128 0xc
	.string	"CODE_FOR_mulsi3"
	.sleb128 365
	.uleb128 0xc
	.string	"CODE_FOR_muldi3"
	.sleb128 371
	.uleb128 0xc
	.string	"CODE_FOR_mulsidi3"
	.sleb128 372
	.uleb128 0xc
	.string	"CODE_FOR_umulsidi3"
	.sleb128 373
	.uleb128 0xc
	.string	"CODE_FOR_smulsi3_highpart"
	.sleb128 374
	.uleb128 0xc
	.string	"CODE_FOR_umulsi3_highpart"
	.sleb128 375
	.uleb128 0xc
	.string	"CODE_FOR_divmodsi4"
	.sleb128 376
	.uleb128 0xc
	.string	"CODE_FOR_divmoddi4"
	.sleb128 377
	.uleb128 0xc
	.string	"CODE_FOR_udivmodsi4"
	.sleb128 378
	.uleb128 0xc
	.string	"CODE_FOR_udivmoddi4"
	.sleb128 379
	.uleb128 0xc
	.string	"CODE_FOR_div_trap"
	.sleb128 380
	.uleb128 0xc
	.string	"CODE_FOR_divsi3"
	.sleb128 381
	.uleb128 0xc
	.string	"CODE_FOR_divdi3"
	.sleb128 382
	.uleb128 0xc
	.string	"CODE_FOR_modsi3"
	.sleb128 383
	.uleb128 0xc
	.string	"CODE_FOR_moddi3"
	.sleb128 384
	.uleb128 0xc
	.string	"CODE_FOR_udivsi3"
	.sleb128 385
	.uleb128 0xc
	.string	"CODE_FOR_udivdi3"
	.sleb128 386
	.uleb128 0xc
	.string	"CODE_FOR_umodsi3"
	.sleb128 387
	.uleb128 0xc
	.string	"CODE_FOR_umoddi3"
	.sleb128 388
	.uleb128 0xc
	.string	"CODE_FOR_negdi2"
	.sleb128 389
	.uleb128 0xc
	.string	"CODE_FOR_andsi3"
	.sleb128 391
	.uleb128 0xc
	.string	"CODE_FOR_anddi3"
	.sleb128 392
	.uleb128 0xc
	.string	"CODE_FOR_iorsi3"
	.sleb128 394
	.uleb128 0xc
	.string	"CODE_FOR_iordi3"
	.sleb128 395
	.uleb128 0xc
	.string	"CODE_FOR_xorsi3"
	.sleb128 397
	.uleb128 0xc
	.string	"CODE_FOR_xordi3"
	.sleb128 398
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendsidi2"
	.sleb128 401
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendhisi2"
	.sleb128 402
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendhidi2"
	.sleb128 403
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqihi2"
	.sleb128 404
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqisi2"
	.sleb128 405
	.uleb128 0xc
	.string	"CODE_FOR_zero_extendqidi2"
	.sleb128 406
	.uleb128 0xc
	.string	"CODE_FOR_extendsidi2"
	.sleb128 407
	.uleb128 0xc
	.string	"CODE_FOR_extendhidi2"
	.sleb128 408
	.uleb128 0xc
	.string	"CODE_FOR_extendhisi2"
	.sleb128 409
	.uleb128 0xc
	.string	"CODE_FOR_extendqihi2"
	.sleb128 410
	.uleb128 0xc
	.string	"CODE_FOR_extendqisi2"
	.sleb128 411
	.uleb128 0xc
	.string	"CODE_FOR_extendqidi2"
	.sleb128 412
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncdfsi2"
	.sleb128 413
	.uleb128 0xc
	.string	"CODE_FOR_fix_truncsfsi2"
	.sleb128 414
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncdfsi2"
	.sleb128 415
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncdfdi2"
	.sleb128 416
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncsfsi2"
	.sleb128 417
	.uleb128 0xc
	.string	"CODE_FOR_fixuns_truncsfdi2"
	.sleb128 418
	.uleb128 0xc
	.string	"CODE_FOR_extv"
	.sleb128 419
	.uleb128 0xc
	.string	"CODE_FOR_extzv"
	.sleb128 420
	.uleb128 0xc
	.string	"CODE_FOR_insv"
	.sleb128 421
	.uleb128 0xc
	.string	"CODE_FOR_movdi"
	.sleb128 422
	.uleb128 0xc
	.string	"CODE_FOR_reload_indi"
	.sleb128 425
	.uleb128 0xc
	.string	"CODE_FOR_reload_outdi"
	.sleb128 426
	.uleb128 0xc
	.string	"CODE_FOR_movsi"
	.sleb128 428
	.uleb128 0xc
	.string	"CODE_FOR_reload_outsi"
	.sleb128 432
	.uleb128 0xc
	.string	"CODE_FOR_reload_insi"
	.sleb128 433
	.uleb128 0xc
	.string	"CODE_FOR_reload_incc"
	.sleb128 434
	.uleb128 0xc
	.string	"CODE_FOR_reload_outcc"
	.sleb128 435
	.uleb128 0xc
	.string	"CODE_FOR_movhi"
	.sleb128 436
	.uleb128 0xc
	.string	"CODE_FOR_movqi"
	.sleb128 438
	.uleb128 0xc
	.string	"CODE_FOR_movsf"
	.sleb128 440
	.uleb128 0xc
	.string	"CODE_FOR_movdf"
	.sleb128 441
	.uleb128 0xc
	.string	"CODE_FOR_movstrsi"
	.sleb128 443
	.uleb128 0xc
	.string	"CODE_FOR_ashlsi3"
	.sleb128 444
	.uleb128 0xc
	.string	"CODE_FOR_ashldi3"
	.sleb128 446
	.uleb128 0xc
	.string	"CODE_FOR_ashrsi3"
	.sleb128 452
	.uleb128 0xc
	.string	"CODE_FOR_ashrdi3"
	.sleb128 454
	.uleb128 0xc
	.string	"CODE_FOR_lshrsi3"
	.sleb128 460
	.uleb128 0xc
	.string	"CODE_FOR_lshrdi3"
	.sleb128 463
	.uleb128 0xc
	.string	"CODE_FOR_cmpsi"
	.sleb128 469
	.uleb128 0xc
	.string	"CODE_FOR_tstsi"
	.sleb128 470
	.uleb128 0xc
	.string	"CODE_FOR_cmpdi"
	.sleb128 471
	.uleb128 0xc
	.string	"CODE_FOR_tstdi"
	.sleb128 472
	.uleb128 0xc
	.string	"CODE_FOR_cmpdf"
	.sleb128 473
	.uleb128 0xc
	.string	"CODE_FOR_cmpsf"
	.sleb128 474
	.uleb128 0xc
	.string	"CODE_FOR_bunordered"
	.sleb128 475
	.uleb128 0xc
	.string	"CODE_FOR_bordered"
	.sleb128 476
	.uleb128 0xc
	.string	"CODE_FOR_bunlt"
	.sleb128 477
	.uleb128 0xc
	.string	"CODE_FOR_bunge"
	.sleb128 478
	.uleb128 0xc
	.string	"CODE_FOR_buneq"
	.sleb128 479
	.uleb128 0xc
	.string	"CODE_FOR_bltgt"
	.sleb128 480
	.uleb128 0xc
	.string	"CODE_FOR_bunle"
	.sleb128 481
	.uleb128 0xc
	.string	"CODE_FOR_bungt"
	.sleb128 482
	.uleb128 0xc
	.string	"CODE_FOR_beq"
	.sleb128 483
	.uleb128 0xc
	.string	"CODE_FOR_bne"
	.sleb128 484
	.uleb128 0xc
	.string	"CODE_FOR_bgt"
	.sleb128 485
	.uleb128 0xc
	.string	"CODE_FOR_bge"
	.sleb128 486
	.uleb128 0xc
	.string	"CODE_FOR_blt"
	.sleb128 487
	.uleb128 0xc
	.string	"CODE_FOR_ble"
	.sleb128 488
	.uleb128 0xc
	.string	"CODE_FOR_bgtu"
	.sleb128 489
	.uleb128 0xc
	.string	"CODE_FOR_bgeu"
	.sleb128 490
	.uleb128 0xc
	.string	"CODE_FOR_bltu"
	.sleb128 491
	.uleb128 0xc
	.string	"CODE_FOR_bleu"
	.sleb128 492
	.uleb128 0xc
	.string	"CODE_FOR_seq"
	.sleb128 493
	.uleb128 0xc
	.string	"CODE_FOR_sne"
	.sleb128 494
	.uleb128 0xc
	.string	"CODE_FOR_sgt"
	.sleb128 495
	.uleb128 0xc
	.string	"CODE_FOR_sge"
	.sleb128 496
	.uleb128 0xc
	.string	"CODE_FOR_slt"
	.sleb128 497
	.uleb128 0xc
	.string	"CODE_FOR_sle"
	.sleb128 498
	.uleb128 0xc
	.string	"CODE_FOR_sgtu"
	.sleb128 499
	.uleb128 0xc
	.string	"CODE_FOR_sgeu"
	.sleb128 500
	.uleb128 0xc
	.string	"CODE_FOR_sltu"
	.sleb128 501
	.uleb128 0xc
	.string	"CODE_FOR_sleu"
	.sleb128 502
	.uleb128 0xc
	.string	"CODE_FOR_indirect_jump"
	.sleb128 503
	.uleb128 0xc
	.string	"CODE_FOR_tablejump"
	.sleb128 504
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal3"
	.sleb128 505
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_mips161"
	.sleb128 506
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_mips162"
	.sleb128 507
	.uleb128 0xc
	.string	"CODE_FOR_tablejump_internal4"
	.sleb128 508
	.uleb128 0xc
	.string	"CODE_FOR_casesi"
	.sleb128 509
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup"
	.sleb128 510
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup_32"
	.sleb128 511
	.uleb128 0xc
	.string	"CODE_FOR_builtin_setjmp_setup_64"
	.sleb128 512
	.uleb128 0xc
	.string	"CODE_FOR_builtin_longjmp"
	.sleb128 513
	.uleb128 0xc
	.string	"CODE_FOR_prologue"
	.sleb128 514
	.uleb128 0xc
	.string	"CODE_FOR_epilogue"
	.sleb128 515
	.uleb128 0xc
	.string	"CODE_FOR_eh_return"
	.sleb128 516
	.uleb128 0xc
	.string	"CODE_FOR_call"
	.sleb128 518
	.uleb128 0xc
	.string	"CODE_FOR_call_internal0"
	.sleb128 519
	.uleb128 0xc
	.string	"CODE_FOR_call_value"
	.sleb128 520
	.uleb128 0xc
	.string	"CODE_FOR_call_value_internal0"
	.sleb128 521
	.uleb128 0xc
	.string	"CODE_FOR_call_value_multiple_internal0"
	.sleb128 522
	.uleb128 0xc
	.string	"CODE_FOR_untyped_call"
	.sleb128 523
	.uleb128 0xc
	.string	"CODE_FOR_prefetch"
	.sleb128 524
	.uleb128 0xc
	.string	"CODE_FOR_movsicc"
	.sleb128 525
	.uleb128 0xc
	.string	"CODE_FOR_movdicc"
	.sleb128 526
	.uleb128 0xc
	.string	"CODE_FOR_movsfcc"
	.sleb128 527
	.uleb128 0xc
	.string	"CODE_FOR_movdfcc"
	.sleb128 528
	.uleb128 0xc
	.string	"CODE_FOR_nothing"
	.sleb128 529
	.byte	0x0
	.uleb128 0x4
	.long	0x397b
	.string	"optab_handlers"
	.byte	0x8
	.byte	0x11
	.byte	0x2c
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x11
	.byte	0x2d
	.long	0x17e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"libfunc"
	.byte	0x11
	.byte	0x2e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1f
	.long	0x39ac
	.string	"optab"
	.value	0x1b4
	.byte	0x11
	.byte	0x2a
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x11
	.byte	0x2b
	.long	0xba2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"handlers"
	.byte	0x11
	.byte	0x2f
	.long	0x39ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.long	0x39bc
	.long	0x3943
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x2
	.string	"optab"
	.byte	0x11
	.byte	0x31
	.long	0x39c9
	.uleb128 0x3
	.byte	0x4
	.long	0x397b
	.uleb128 0x17
	.long	0x39fc
	.string	"op_type"
	.byte	0x4
	.byte	0x12
	.byte	0x1c
	.uleb128 0xc
	.string	"OP_IN"
	.sleb128 0
	.uleb128 0xc
	.string	"OP_OUT"
	.sleb128 1
	.uleb128 0xc
	.string	"OP_INOUT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x20
	.long	0x3ac0
	.long	.LASF8
	.value	0x274
	.byte	0x12
	.byte	0x9b
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x12
	.byte	0xa3
	.long	0x3ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"operand_loc"
	.byte	0x12
	.byte	0xa6
	.long	0x3ad0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x12
	.byte	0xa9
	.long	0x3ae0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x12
	.byte	0xac
	.long	0x3af0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x12
	.byte	0xaf
	.long	0x3b00
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x7
	.string	"dup_loc"
	.byte	0x12
	.byte	0xb3
	.long	0x3b10
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x7
	.string	"dup_num"
	.byte	0x12
	.byte	0xb7
	.long	0x7f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x12
	.byte	0xc4
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x12
	.byte	0xc7
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x12
	.byte	0xca
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x12
	.byte	0xcd
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0x10
	.long	0x3ad0
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3ae0
	.long	0x17de
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3af0
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3b00
	.long	0x8aa
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3b10
	.long	0x39cf
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3b20
	.long	0x17de
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x12
	.byte	0xd9
	.long	0x3b41
	.uleb128 0x3
	.byte	0x4
	.long	0x3b47
	.uleb128 0x21
	.long	0x3b5c
	.byte	0x1
	.long	0x213
	.uleb128 0x22
	.long	0x9b
	.uleb128 0x22
	.long	0x8aa
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x12
	.byte	0xdb
	.long	0x3b6f
	.uleb128 0x3
	.byte	0x4
	.long	0x3b75
	.uleb128 0x21
	.long	0x3b86
	.byte	0x1
	.long	0x9b
	.uleb128 0x22
	.long	0x9b
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x4
	.long	0x3bf7
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x12
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x12
	.byte	0xdf
	.long	0x3bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x12
	.byte	0xe1
	.long	0x3bfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF1
	.byte	0x12
	.byte	0xe3
	.long	0x3c01
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x12
	.byte	0xe5
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x12
	.byte	0xe7
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x3b20
	.uleb128 0x9
	.long	0x200
	.uleb128 0x9
	.long	0x8aa
	.uleb128 0x14
	.long	0x3c97
	.long	.LASF18
	.byte	0x14
	.byte	0x12
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x12
	.byte	0xf3
	.long	0x3bfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x12
	.byte	0xf4
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x12
	.byte	0xf5
	.long	0x3c97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x12
	.byte	0xf6
	.long	0x3c9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x12
	.byte	0xf8
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x12
	.byte	0xf9
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x12
	.byte	0xfa
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x12
	.byte	0xfb
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x3b5c
	.uleb128 0x9
	.long	0x3ca1
	.uleb128 0x3
	.byte	0x4
	.long	0x3ca7
	.uleb128 0x9
	.long	0x3b86
	.uleb128 0x17
	.long	0x3dcb
	.string	"reload_type"
	.byte	0x4
	.byte	0x9
	.byte	0x4d
	.uleb128 0xc
	.string	"RELOAD_FOR_INPUT"
	.sleb128 0
	.uleb128 0xc
	.string	"RELOAD_FOR_OUTPUT"
	.sleb128 1
	.uleb128 0xc
	.string	"RELOAD_FOR_INSN"
	.sleb128 2
	.uleb128 0xc
	.string	"RELOAD_FOR_INPUT_ADDRESS"
	.sleb128 3
	.uleb128 0xc
	.string	"RELOAD_FOR_INPADDR_ADDRESS"
	.sleb128 4
	.uleb128 0xc
	.string	"RELOAD_FOR_OUTPUT_ADDRESS"
	.sleb128 5
	.uleb128 0xc
	.string	"RELOAD_FOR_OUTADDR_ADDRESS"
	.sleb128 6
	.uleb128 0xc
	.string	"RELOAD_FOR_OPERAND_ADDRESS"
	.sleb128 7
	.uleb128 0xc
	.string	"RELOAD_FOR_OPADDR_ADDR"
	.sleb128 8
	.uleb128 0xc
	.string	"RELOAD_OTHER"
	.sleb128 9
	.uleb128 0xc
	.string	"RELOAD_FOR_OTHER_ADDRESS"
	.sleb128 10
	.byte	0x0
	.uleb128 0x4
	.long	0x3f40
	.string	"reload"
	.byte	0x4c
	.byte	0x9
	.byte	0x58
	.uleb128 0x7
	.string	"in"
	.byte	0x9
	.byte	0x5a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"out"
	.byte	0x9
	.byte	0x5d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x9
	.byte	0x60
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x9
	.byte	0x63
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF21
	.byte	0x9
	.byte	0x65
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x9
	.byte	0x68
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF22
	.byte	0x9
	.byte	0x6b
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"inc"
	.byte	0x9
	.byte	0x70
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"in_reg"
	.byte	0x9
	.byte	0x75
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"out_reg"
	.byte	0x9
	.byte	0x76
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.long	.LASF23
	.byte	0x9
	.byte	0x79
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"reg_rtx"
	.byte	0x9
	.byte	0x7e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x9
	.byte	0x83
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x9
	.byte	0x87
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1a
	.long	.LASF26
	.byte	0x9
	.byte	0x8a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1a
	.long	.LASF27
	.byte	0x9
	.byte	0x8e
	.long	0x17e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1a
	.long	.LASF28
	.byte	0x9
	.byte	0x90
	.long	0x17e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"when_needed"
	.byte	0x9
	.byte	0x95
	.long	0x3cac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x5
	.long	.LASF29
	.byte	0x9
	.byte	0x99
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"nocombine"
	.byte	0x9
	.byte	0x9b
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"secondary_p"
	.byte	0x9
	.byte	0x9d
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"nongroup"
	.byte	0x9
	.byte	0xa0
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x10
	.long	0x3f50
	.long	0x50f
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xf
	.byte	0x29
	.long	0x50f
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x4cd
	.uleb128 0x4
	.long	0x3fd4
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x3fd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x3fd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x3fda
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f7c
	.uleb128 0x10
	.long	0x3fea
	.long	0x3f69
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x3f7c
	.uleb128 0x3
	.byte	0x4
	.long	0x3fea
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1618
	.uleb128 0x4
	.long	0x406e
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x3f40
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x407d
	.uleb128 0x3
	.byte	0x4
	.long	0x4014
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x4006
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x4fe
	.uleb128 0x4
	.long	0x414d
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x414d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x414d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x17a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x17a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x4091
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40a2
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x414d
	.uleb128 0x4
	.long	0x43cf
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x43d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x43d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x43d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x43e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x43d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x43d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x406e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x43e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x43e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x406e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x43ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x43cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x43cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x43cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x415f
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x17a3
	.uleb128 0x3
	.byte	0x4
	.long	0x4153
	.uleb128 0x3
	.byte	0x4
	.long	0x43cf
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x4
	.long	0x445e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x15
	.byte	0x17
	.uleb128 0x1a
	.long	.LASF30
	.byte	0x15
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x15
	.byte	0x19
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x15
	.byte	0x1a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x15
	.byte	0x1b
	.long	0x445e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43fd
	.uleb128 0x14
	.long	0x44ad
	.long	.LASF31
	.byte	0x10
	.byte	0x15
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x15
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x15
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x15
	.byte	0x28
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x15
	.byte	0x29
	.long	0x44ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4464
	.uleb128 0x4
	.long	0x4602
	.string	"emit_status"
	.byte	0x34
	.byte	0x15
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x15
	.byte	0x3a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x15
	.byte	0x3d
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x15
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x15
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x15
	.byte	0x4a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x15
	.byte	0x50
	.long	0x44ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x15
	.byte	0x54
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x15
	.byte	0x58
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x15
	.byte	0x59
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x15
	.byte	0x5f
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x15
	.byte	0x65
	.long	0x804
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x15
	.byte	0x69
	.long	0x4602
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x15
	.byte	0x70
	.long	0x17de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e2
	.uleb128 0x4
	.long	0x46e8
	.string	"expr_status"
	.byte	0x1c
	.byte	0x15
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x15
	.byte	0x80
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x15
	.byte	0x91
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x15
	.byte	0x97
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x15
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x15
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x15
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x15
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x4752
	.long	.LASF33
	.byte	0x4
	.byte	0x15
	.value	0x1f1
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1f
	.long	0x5111
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x15
	.byte	0xb5
	.long	0x511d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x15
	.byte	0xb6
	.long	0x5131
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x15
	.byte	0xb7
	.long	0x5137
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x15
	.byte	0xb8
	.long	0x513d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x15
	.byte	0xb9
	.long	0x5153
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x15
	.byte	0xbe
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x15
	.byte	0xc1
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x15
	.byte	0xc4
	.long	0x5159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x15
	.byte	0xc9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x15
	.byte	0xce
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x15
	.byte	0xd3
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x15
	.byte	0xd7
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x15
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x15
	.byte	0xdf
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x15
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x15
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x15
	.byte	0xec
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x15
	.byte	0xf0
	.long	0x5176
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x15
	.byte	0xf3
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x15
	.byte	0xf8
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x15
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x15
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x15
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x15
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x15
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x15
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x15
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x15
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x15
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x15
	.value	0x121
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x15
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x15
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x15
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x15
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x15
	.value	0x138
	.long	0x4fe
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x15
	.value	0x13d
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x15
	.value	0x146
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x15
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x15
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x15
	.value	0x151
	.long	0x462
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x15
	.value	0x157
	.long	0x17de
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x15
	.value	0x15a
	.long	0x5188
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x15
	.value	0x15d
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x15
	.value	0x160
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x15
	.value	0x166
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x15
	.value	0x16a
	.long	0x445e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x15
	.value	0x16d
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x15
	.value	0x16e
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x15
	.value	0x16f
	.long	0x19a
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x15
	.value	0x170
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x15
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x15
	.value	0x175
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x15
	.value	0x178
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x15
	.value	0x17d
	.long	0x51a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x15
	.value	0x17f
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x15
	.value	0x181
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x15
	.value	0x184
	.long	0x51bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x15
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x25
	.string	"returns_struct"
	.byte	0x15
	.value	0x190
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"returns_pcc_struct"
	.byte	0x15
	.value	0x194
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"returns_pointer"
	.byte	0x15
	.value	0x197
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"needs_context"
	.byte	0x15
	.value	0x19a
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_setjmp"
	.byte	0x15
	.value	0x19d
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_longjmp"
	.byte	0x15
	.value	0x1a0
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_alloca"
	.byte	0x15
	.value	0x1a4
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"calls_eh_return"
	.byte	0x15
	.value	0x1a7
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_nonlocal_label"
	.byte	0x15
	.value	0x1ab
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_nonlocal_goto"
	.byte	0x15
	.value	0x1af
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"contains_functions"
	.byte	0x15
	.value	0x1b2
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"has_computed_jump"
	.byte	0x15
	.value	0x1b5
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"is_thunk"
	.byte	0x15
	.value	0x1ba
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"all_throwers_are_sibcalls"
	.byte	0x15
	.value	0x1c1
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"instrument_entry_exit"
	.byte	0x15
	.value	0x1c5
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"arc_profile"
	.byte	0x15
	.value	0x1c8
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"profile"
	.byte	0x15
	.value	0x1cb
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"limit_stack"
	.byte	0x15
	.value	0x1cf
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"stdarg"
	.byte	0x15
	.value	0x1d2
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"x_whole_function_mode_p"
	.byte	0x15
	.value	0x1d8
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x15
	.value	0x1e1
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_const_pool"
	.byte	0x15
	.value	0x1e4
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_pic_offset_table"
	.byte	0x15
	.value	0x1e7
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"uses_eh_lsda"
	.byte	0x15
	.value	0x1ea
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.string	"arg_pointer_save_area_init"
	.byte	0x15
	.value	0x1ed
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.long	.LASF33
	.byte	0x15
	.value	0x1fa
	.long	0x46e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x15
	.value	0x1fe
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5111
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5123
	.uleb128 0x3
	.byte	0x4
	.long	0x4608
	.uleb128 0x3
	.byte	0x4
	.long	0x44b3
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5143
	.uleb128 0x3
	.byte	0x4
	.long	0x4752
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x515f
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x517c
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x518e
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x51a7
	.uleb128 0x4
	.long	0x5218
	.string	"replacement"
	.byte	0x10
	.byte	0x1
	.byte	0x98
	.uleb128 0x7
	.string	"where"
	.byte	0x1
	.byte	0x99
	.long	0x17de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"subreg_loc"
	.byte	0x1
	.byte	0x9a
	.long	0x17de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"what"
	.byte	0x1
	.byte	0x9c
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.byte	0x9d
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x527e
	.string	"decomposition"
	.byte	0x1c
	.byte	0x1
	.byte	0xa7
	.uleb128 0x7
	.string	"reg_flag"
	.byte	0x1
	.byte	0xa8
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"safe"
	.byte	0x1
	.byte	0xa9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"base"
	.byte	0x1
	.byte	0xaa
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"start"
	.byte	0x1
	.byte	0xab
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"end"
	.byte	0x1
	.byte	0xac
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x27
	.long	0x5459
	.string	"push_secondary_reload"
	.byte	0x1
	.value	0x135
	.byte	0x1
	.long	0x213
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x28
	.string	"in_p"
	.byte	0x1
	.value	0x12d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x12e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x12f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.value	0x130
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"reload_class"
	.byte	0x1
	.value	0x131
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"reload_mode"
	.byte	0x1
	.value	0x132
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x133
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.string	"picode"
	.byte	0x1
	.value	0x134
	.long	0x5459
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x136
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x137
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"icode"
	.byte	0x1
	.value	0x138
	.long	0x17e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"t_class"
	.byte	0x1
	.value	0x139
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"t_mode"
	.byte	0x1
	.value	0x13a
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"t_icode"
	.byte	0x1
	.value	0x13b
	.long	0x17e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"secondary_type"
	.byte	0x1
	.value	0x13c
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"s_reload"
	.byte	0x1
	.value	0x13d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"t_reload"
	.byte	0x1
	.value	0x13d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x5448
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"insn_class"
	.byte	0x1
	.value	0x183
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	0x5429
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"insn_letter"
	.byte	0x1
	.value	0x189
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"t_letter"
	.byte	0x1
	.value	0x19f
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11728
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17e4
	.uleb128 0x27
	.long	0x556c
	.string	"find_valid_class"
	.byte	0x1
	.value	0x2ad
	.byte	0x1
	.long	0x21a
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x28
	.string	"m1"
	.byte	0x1
	.value	0x2aa
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x2ab
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"dest_regno"
	.byte	0x1
	.value	0x2ac
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"best_cost"
	.byte	0x1
	.value	0x2ae
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x2af
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x2b0
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"best_class"
	.byte	0x1
	.value	0x2b1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"dest_class"
	.byte	0x1
	.value	0x2b2
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"best_size"
	.byte	0x1
	.value	0x2b3
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"cost"
	.byte	0x1
	.value	0x2b4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x555b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"bad"
	.byte	0x1
	.value	0x2b8
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8200
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12206
	.byte	0x0
	.uleb128 0x27
	.long	0x5611
	.string	"find_reusable_reload"
	.byte	0x1
	.value	0x2e1
	.byte	0x1
	.long	0x213
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x28
	.string	"p_in"
	.byte	0x1
	.value	0x2dd
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"out"
	.byte	0x1
	.value	0x2dd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF19
	.byte	0x1
	.value	0x2de
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x2df
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x2e0
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF36
	.byte	0x1
	.value	0x2e0
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2b
	.string	"in"
	.byte	0x1
	.value	0x2e2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2e3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x27
	.long	0x5685
	.string	"reload_inner_reg_of_subreg"
	.byte	0x1
	.value	0x32d
	.byte	0x1
	.long	0x213
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x32a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x32b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"output"
	.byte	0x1
	.value	0x32c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"inner"
	.byte	0x1
	.value	0x32e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x5979
	.byte	0x1
	.string	"push_reload"
	.byte	0x1
	.value	0x381
	.byte	0x1
	.long	0x213
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x28
	.string	"in"
	.byte	0x1
	.value	0x379
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"out"
	.byte	0x1
	.value	0x379
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"inloc"
	.byte	0x1
	.value	0x37a
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"outloc"
	.byte	0x1
	.value	0x37a
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF19
	.byte	0x1
	.value	0x37b
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF20
	.byte	0x1
	.value	0x37c
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.value	0x37c
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF17
	.byte	0x1
	.value	0x37d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.value	0x37e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x37f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x380
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x382
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF36
	.byte	0x1
	.value	0x383
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"dont_remove_subreg"
	.byte	0x1
	.value	0x384
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"in_subreg_loc"
	.byte	0x1
	.value	0x385
	.long	0x17de
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"out_subreg_loc"
	.byte	0x1
	.value	0x385
	.long	0x17de
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x386
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x386
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x387
	.long	0x17e4
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF28
	.byte	0x1
	.value	0x388
	.long	0x17e4
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	0x5824
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x398
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x2c
	.long	0x5842
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x3a4
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2c
	.long	0x5865
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2b
	.string	"in_class"
	.byte	0x1
	.value	0x42d
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2c
	.long	0x58a8
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x4d0
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x4e2
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x4e4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x58c8
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"in_reg"
	.byte	0x1
	.value	0x54b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2c
	.long	0x58e3
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x59e
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2c
	.long	0x58fe
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x5a6
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2c
	.long	0x5968
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x5d6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x5d7
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"rel_mode"
	.byte	0x1
	.value	0x5d8
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2b
	.string	"offs"
	.byte	0x1
	.value	0x5ff
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x600
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x81fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12798
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x51c1
	.uleb128 0x30
	.long	0x59ea
	.string	"push_replacement"
	.byte	0x1
	.value	0x622
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x61f
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF37
	.byte	0x1
	.value	0x620
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x621
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x625
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x5a69
	.string	"dup_replacements"
	.byte	0x1
	.value	0x635
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.string	"dup_loc"
	.byte	0x1
	.value	0x633
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"orig_loc"
	.byte	0x1
	.value	0x634
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x636
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x636
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x63a
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x5ac1
	.byte	0x1
	.string	"transfer_replacements"
	.byte	0x1
	.value	0x646
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x28
	.string	"to"
	.byte	0x1
	.value	0x645
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"from"
	.byte	0x1
	.value	0x645
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x647
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5b5e
	.byte	0x1
	.string	"remove_address_replacements"
	.byte	0x1
	.value	0x655
	.byte	0x1
	.long	0x213
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x28
	.string	"in_rtx"
	.byte	0x1
	.value	0x654
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x656
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x656
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"reload_flags"
	.byte	0x1
	.value	0x657
	.long	0x5b5e
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"something_changed"
	.byte	0x1
	.value	0x658
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x10
	.long	0x5b6e
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x77
	.byte	0x0
	.uleb128 0x30
	.long	0x5bfa
	.string	"combine_reloads"
	.byte	0x1
	.value	0x683
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x684
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"output_reload"
	.byte	0x1
	.value	0x685
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"secondary_out"
	.byte	0x1
	.value	0x686
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x687
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x6dd
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x5db5
	.string	"find_dummy_reload"
	.byte	0x1
	.value	0x74f
	.byte	0x1
	.long	0x9b
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x28
	.string	"real_in"
	.byte	0x1
	.value	0x749
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"real_out"
	.byte	0x1
	.value	0x749
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"inloc"
	.byte	0x1
	.value	0x74a
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"outloc"
	.byte	0x1
	.value	0x74a
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF20
	.byte	0x1
	.value	0x74b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.value	0x74b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF19
	.byte	0x1
	.value	0x74c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.string	"for_real"
	.byte	0x1
	.value	0x74d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.long	.LASF38
	.byte	0x1
	.value	0x74e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.string	"in"
	.byte	0x1
	.value	0x750
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"out"
	.byte	0x1
	.value	0x751
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"in_offset"
	.byte	0x1
	.value	0x752
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"out_offset"
	.byte	0x1
	.value	0x753
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF39
	.byte	0x1
	.value	0x754
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	0x5d72
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x77e
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"nwords"
	.byte	0x1
	.value	0x77f
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"saved_rtx"
	.byte	0x1
	.value	0x780
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x793
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x7bb
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"nwords"
	.byte	0x1
	.value	0x7bc
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x7c5
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5e01
	.byte	0x1
	.string	"earlyclobber_operand_p"
	.byte	0x1
	.value	0x7e7
	.byte	0x1
	.long	0x213
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x7e6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x7e8
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x27
	.long	0x5eb1
	.string	"hard_reg_set_here_p"
	.byte	0x1
	.value	0x7fa
	.byte	0x1
	.long	0x213
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x28
	.string	"beg_regno"
	.byte	0x1
	.value	0x7f8
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"end_regno"
	.byte	0x1
	.value	0x7f8
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x7f9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	0x5e99
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x7fd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x803
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x80d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x5f0f
	.byte	0x1
	.string	"strict_memory_address_p"
	.byte	0x1
	.value	0x81f
	.byte	0x1
	.long	0x213
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x81d
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"addr"
	.byte	0x1
	.value	0x81e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"win"
	.byte	0x1
	.value	0x823
	.long	.L969
	.byte	0x0
	.uleb128 0x2f
	.long	0x5ff7
	.byte	0x1
	.string	"operands_match_p"
	.byte	0x1
	.value	0x839
	.byte	0x1
	.long	0x213
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x838
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x838
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x83a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x83b
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x83c
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"success_2"
	.byte	0x1
	.value	0x83d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"slow"
	.byte	0x1
	.value	0x87e
	.long	.L986
	.uleb128 0x2c
	.long	0x5fbc
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x845
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2c
	.long	0x5fe6
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x895
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x895
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x81e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14800
	.byte	0x0
	.uleb128 0x27
	.long	0x6099
	.string	"decompose"
	.byte	0x1
	.value	0x8d1
	.byte	0x1
	.long	0x5218
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x8d0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x8d2
	.long	0x5218
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"all_const"
	.byte	0x1
	.value	0x8d3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x6088
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"base"
	.byte	0x1
	.value	0x8da
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x8da
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"addr"
	.byte	0x1
	.value	0x8db
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x81d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15017
	.byte	0x0
	.uleb128 0x27
	.long	0x6108
	.string	"immune_p"
	.byte	0x1
	.value	0x95d
	.byte	0x1
	.long	0x213
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x95b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x95b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ydata"
	.byte	0x1
	.value	0x95c
	.long	0x5218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"xdata"
	.byte	0x1
	.value	0x95e
	.long	0x5218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF35
	.long	0x81bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15289
	.byte	0x0
	.uleb128 0x2f
	.long	0x616a
	.byte	0x1
	.string	"safe_from_earlyclobber"
	.byte	0x1
	.value	0x989
	.byte	0x1
	.long	0x213
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.value	0x988
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"clobber"
	.byte	0x1
	.value	0x988
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0x98a
	.long	0x5218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2f
	.long	0x6b73
	.byte	0x1
	.string	"find_reloads"
	.byte	0x1
	.value	0x9ac
	.byte	0x1
	.long	0x213
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x9a8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -3484
	.uleb128 0x28
	.string	"replace"
	.byte	0x1
	.value	0x9a9
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x9a9
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"live_known"
	.byte	0x1
	.value	0x9aa
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF42
	.byte	0x1
	.value	0x9ab
	.long	0x6b73
	.byte	0x3
	.byte	0x91
	.sleb128 -3488
	.uleb128 0x2b
	.string	"insn_code_number"
	.byte	0x1
	.value	0x9ad
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x9ae
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x9ae
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2b
	.string	"noperands"
	.byte	0x1
	.value	0x9af
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x9b2
	.long	0x6b79
	.byte	0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x2b
	.string	"preferred_class"
	.byte	0x1
	.value	0x9b5
	.long	0x6b89
	.byte	0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x2b
	.string	"pref_or_nothing"
	.byte	0x1
	.value	0x9b6
	.long	0x6b99
	.byte	0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x2a
	.long	.LASF43
	.byte	0x1
	.value	0x9b8
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x2b
	.string	"address_operand_reloaded"
	.byte	0x1
	.value	0x9ba
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1012
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x9bc
	.long	0x6bb9
	.byte	0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x2b
	.string	"address_type"
	.byte	0x1
	.value	0x9be
	.long	0x6bb9
	.byte	0x3
	.byte	0x91
	.sleb128 -1252
	.uleb128 0xb
	.long	0x6325
	.string	"reload_usage"
	.byte	0x4
	.byte	0x1
	.value	0x9c0
	.uleb128 0xc
	.string	"RELOAD_READ"
	.sleb128 0
	.uleb128 0xc
	.string	"RELOAD_READ_WRITE"
	.sleb128 1
	.uleb128 0xc
	.string	"RELOAD_WRITE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0x9c0
	.long	0x6bc9
	.byte	0x3
	.byte	0x91
	.sleb128 -1372
	.uleb128 0x2b
	.string	"no_input_reloads"
	.byte	0x1
	.value	0x9c1
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2b
	.string	"no_output_reloads"
	.byte	0x1
	.value	0x9c1
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x9c2
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x2b
	.string	"this_alternative"
	.byte	0x1
	.value	0x9c3
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1492
	.uleb128 0x2b
	.string	"this_alternative_match_win"
	.byte	0x1
	.value	0x9c4
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"this_alternative_win"
	.byte	0x1
	.value	0x9c5
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -118
	.uleb128 0x2b
	.string	"this_alternative_offmemok"
	.byte	0x1
	.value	0x9c6
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"this_alternative_earlyclobber"
	.byte	0x1
	.value	0x9c7
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -178
	.uleb128 0x2b
	.string	"this_alternative_matches"
	.byte	0x1
	.value	0x9c8
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1612
	.uleb128 0x2b
	.string	"swapped"
	.byte	0x1
	.value	0x9c9
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x2b
	.string	"goal_alternative"
	.byte	0x1
	.value	0x9ca
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1732
	.uleb128 0x2b
	.string	"this_alternative_number"
	.byte	0x1
	.value	0x9cb
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2b
	.string	"goal_alternative_number"
	.byte	0x1
	.value	0x9cc
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x2b
	.string	"operand_reloadnum"
	.byte	0x1
	.value	0x9cd
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1852
	.uleb128 0x2b
	.string	"goal_alternative_matches"
	.byte	0x1
	.value	0x9ce
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -1972
	.uleb128 0x2b
	.string	"goal_alternative_matched"
	.byte	0x1
	.value	0x9cf
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -2092
	.uleb128 0x2b
	.string	"goal_alternative_match_win"
	.byte	0x1
	.value	0x9d0
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.string	"goal_alternative_win"
	.byte	0x1
	.value	0x9d1
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -238
	.uleb128 0x2b
	.string	"goal_alternative_offmemok"
	.byte	0x1
	.value	0x9d2
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2b
	.string	"goal_alternative_earlyclobber"
	.byte	0x1
	.value	0x9d3
	.long	0x6b99
	.byte	0x3
	.byte	0x91
	.sleb128 -298
	.uleb128 0x2b
	.string	"goal_alternative_swapped"
	.byte	0x1
	.value	0x9d4
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2b
	.string	"best"
	.byte	0x1
	.value	0x9d5
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x2b
	.string	"commutative"
	.byte	0x1
	.value	0x9d6
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2b
	.string	"operands_match"
	.byte	0x1
	.value	0x9d7
	.long	0x6bd9
	.byte	0x3
	.byte	0x91
	.sleb128 -3472
	.uleb128 0x2b
	.string	"substed_operand"
	.byte	0x1
	.value	0x9d8
	.long	0x3ac0
	.byte	0x3
	.byte	0x91
	.sleb128 -2212
	.uleb128 0x2b
	.string	"body"
	.byte	0x1
	.value	0x9d9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x9da
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2b
	.string	"goal_earlyclobber"
	.byte	0x1
	.value	0x9db
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x2b
	.string	"this_earlyclobber"
	.byte	0x1
	.value	0x9db
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x9dc
	.long	0x3af0
	.byte	0x3
	.byte	0x91
	.sleb128 -2332
	.uleb128 0x2b
	.string	"retval"
	.byte	0x1
	.value	0x9dd
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x32
	.string	"try_swapped"
	.byte	0x1
	.value	0xe1e
	.long	.L1320
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0xce9
	.long	.L1570
	.uleb128 0x32
	.string	"finish"
	.byte	0x1
	.value	0xe41
	.long	.L1740
	.uleb128 0x2c
	.long	0x676d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xa21
	.long	0x567
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0xa22
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2c
	.long	0x6750
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"other"
	.byte	0x1
	.value	0xa4c
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -452
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"other"
	.byte	0x1
	.value	0xa53
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -448
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x67d2
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0xa6a
	.long	0xba2
	.byte	0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x2c
	.long	0x67b7
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0xaa3
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2b
	.string	"op"
	.byte	0x1
	.value	0xaa4
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -436
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0xacc
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x695b
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2b
	.string	"losers"
	.byte	0x1
	.value	0xb13
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2b
	.string	"bad"
	.byte	0x1
	.value	0xb16
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2b
	.string	"reject"
	.byte	0x1
	.value	0xb1d
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2c
	.long	0x6940
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xb23
	.long	0x567
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x2b
	.string	"win"
	.byte	0x1
	.value	0xb24
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2b
	.string	"did_match"
	.byte	0x1
	.value	0xb25
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x2b
	.string	"badop"
	.byte	0x1
	.value	0xb27
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2b
	.string	"winreg"
	.byte	0x1
	.value	0xb29
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0xb2a
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0xb2b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0xb2c
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2b
	.string	"force_reload"
	.byte	0x1
	.value	0xb2f
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x2b
	.string	"offmemok"
	.byte	0x1
	.value	0xb30
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2b
	.string	"constmemok"
	.byte	0x1
	.value	0xb33
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.value	0xb34
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2c
	.long	0x691c
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2a
	.long	.LASF39
	.byte	0x1
	.value	0xbe0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"const_to_mem"
	.byte	0x1
	.value	0xd03
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2a
	.long	.LASF40
	.byte	0x1
	.value	0xd83
	.long	0x5218
	.byte	0x3
	.byte	0x91
	.sleb128 -2452
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x698a
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.string	"tclass"
	.byte	0x1
	.value	0xe08
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0xe09
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.byte	0x0
	.uleb128 0x2c
	.long	0x69a8
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xe5a
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.byte	0x0
	.uleb128 0x2c
	.long	0x69c6
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0xf1e
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.byte	0x0
	.uleb128 0x2c
	.long	0x69e4
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2a
	.long	.LASF9
	.byte	0x1
	.value	0xf6b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.byte	0x0
	.uleb128 0x2c
	.long	0x6a0b
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"substitution"
	.byte	0x1
	.value	0xf8c
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.byte	0x0
	.uleb128 0x2c
	.long	0x6a2a
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.string	"opno"
	.byte	0x1
	.value	0xfa9
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.byte	0x0
	.uleb128 0x2c
	.long	0x6a46
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0xfd4
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x2c
	.long	0x6a64
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x101a
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.byte	0x0
	.uleb128 0x2c
	.long	0x6a82
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1029
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.byte	0x0
	.uleb128 0x2c
	.long	0x6b33
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.string	"first_op_addr_num"
	.byte	0x1
	.value	0x105e
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2b
	.string	"first_inpaddr_num"
	.byte	0x1
	.value	0x105f
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -2452
	.uleb128 0x2b
	.string	"first_outpaddr_num"
	.byte	0x1
	.value	0x1060
	.long	0x6ba9
	.byte	0x3
	.byte	0x91
	.sleb128 -2572
	.uleb128 0x2b
	.string	"need_change"
	.byte	0x1
	.value	0x1061
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2d
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"first_num"
	.byte	0x1
	.value	0x108c
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0x108d
	.long	0x3cac
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6b62
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x10ef
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x10f0
	.long	0x462
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x81a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15507
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f1
	.uleb128 0x10
	.long	0x6b89
	.long	0x567
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6b99
	.long	0x21a
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6ba9
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6bb9
	.long	0x213
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6bc9
	.long	0x3cac
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6bd9
	.long	0x62dd
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x6bef
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x27
	.long	0x6c53
	.string	"alternative_allows_memconst"
	.byte	0x1
	.value	0x1102
	.byte	0x1
	.long	0x213
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x29
	.long	.LASF16
	.byte	0x1
	.value	0x1100
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"altnum"
	.byte	0x1
	.value	0x1101
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x1103
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x27
	.long	0x6dde
	.string	"find_reloads_toplev"
	.byte	0x1
	.value	0x1132
	.byte	0x1
	.long	0x9b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x112b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x112c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x112d
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x112e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"is_set_dest"
	.byte	0x1
	.value	0x112f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x1130
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF43
	.byte	0x1
	.value	0x1131
	.long	0x89d
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x1133
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1135
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1136
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"copied"
	.byte	0x1
	.value	0x1137
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	0x6d62
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x113c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0x1148
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6d7f
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1160
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2c
	.long	0x6dab
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x1175
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1176
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	0x6dcd
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2b
	.string	"new_part"
	.byte	0x1
	.value	0x11aa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8192
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18591
	.byte	0x0
	.uleb128 0x27
	.long	0x6e30
	.string	"make_memloc"
	.byte	0x1
	.value	0x11c4
	.byte	0x1
	.long	0x9b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x28
	.string	"ad"
	.byte	0x1
	.value	0x11c2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF23
	.byte	0x1
	.value	0x11c3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x11c7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x6ebc
	.string	"maybe_memory_address_p"
	.byte	0x1
	.value	0x11e2
	.byte	0x1
	.long	0x213
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x11df
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ad"
	.byte	0x1
	.value	0x11e0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"part"
	.byte	0x1
	.value	0x11e1
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"retv"
	.byte	0x1
	.value	0x11e3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x11e4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x11e5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x6f9d
	.string	"find_reloads_address"
	.byte	0x1
	.value	0x1210
	.byte	0x1
	.long	0x213
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x1208
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"memrefloc"
	.byte	0x1
	.value	0x1209
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ad"
	.byte	0x1
	.value	0x120a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x120b
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x120c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x120d
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x120e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x120f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x1211
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"removed_and"
	.byte	0x1
	.value	0x1212
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1213
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.long	0x7042
	.string	"subst_reg_equivs"
	.byte	0x1
	.value	0x1373
	.byte	0x1
	.long	0x9b
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x28
	.string	"ad"
	.byte	0x1
	.value	0x1371
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x1372
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x1374
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1375
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1376
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x1387
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0x1390
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x709e
	.byte	0x1
	.string	"form_sum"
	.byte	0x1
	.value	0x13bb
	.byte	0x1
	.long	0x9b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x13ba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x13ba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x13bc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x13bd
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x7129
	.string	"subst_indexed_address"
	.byte	0x1
	.value	0x13f2
	.byte	0x1
	.long	0x9b
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x28
	.string	"addr"
	.byte	0x1
	.value	0x13f1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x13f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x13f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"op2"
	.byte	0x1
	.value	0x13f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x13f4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x13f5
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x7182
	.string	"update_auto_inc_notes"
	.byte	0x1
	.value	0x142e
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x142b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF23
	.byte	0x1
	.value	0x142c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF37
	.byte	0x1
	.value	0x142d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x27
	.long	0x74a8
	.string	"find_reloads_address_1"
	.byte	0x1
	.value	0x145b
	.byte	0x1
	.long	0x213
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x1453
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1454
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"context"
	.byte	0x1
	.value	0x1455
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x1456
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x1457
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x1458
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x1459
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x145a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x145c
	.long	0xba2
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	0x72b8
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2b
	.string	"orig_op0"
	.byte	0x1
	.value	0x1462
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"orig_op1"
	.byte	0x1
	.value	0x1463
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"code0"
	.byte	0x1
	.value	0x1464
	.long	0xba2
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"code1"
	.byte	0x1
	.value	0x1465
	.long	0xba2
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x1466
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x1467
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x33
	.long	0x7326
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x14e1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x14e2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x14f9
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.value	0x14fa
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1507
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x73c1
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x153d
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF39
	.byte	0x1
	.value	0x153e
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"x_orig"
	.byte	0x1
	.value	0x153f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	0x7384
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x154b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.value	0x156d
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"equiv"
	.byte	0x1
	.value	0x1577
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"icode"
	.byte	0x1
	.value	0x157a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x73fd
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x15af
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x15b0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.value	0x15b1
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2c
	.long	0x7433
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x15e5
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x15ff
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7450
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x162d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2c
	.long	0x746d
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x163d
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2c
	.long	0x7497
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1651
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1652
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x818d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19882
	.byte	0x0
	.uleb128 0x30
	.long	0x7575
	.string	"find_reloads_address_part"
	.byte	0x1
	.value	0x1677
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1670
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x1671
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF19
	.byte	0x1
	.value	0x1672
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x1673
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x1674
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x1675
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x1676
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	0x755b
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x167c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1688
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x7694
	.string	"find_reloads_subreg_address"
	.byte	0x1
	.value	0x16b3
	.byte	0x1
	.long	0x9b
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x16ad
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"force_replace"
	.byte	0x1
	.value	0x16ae
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.value	0x16af
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF34
	.byte	0x1
	.value	0x16b0
	.long	0x3cac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF41
	.byte	0x1
	.value	0x16b1
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x16b2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x16b4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x16c1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x16c8
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"outer_size"
	.byte	0x1
	.value	0x16c9
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"inner_size"
	.byte	0x1
	.value	0x16ca
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2b
	.string	"base"
	.byte	0x1
	.value	0x16d4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7728
	.byte	0x1
	.string	"subst_reloads"
	.byte	0x1
	.value	0x1703
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x1702
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1704
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x7717
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x1708
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF44
	.byte	0x1
	.value	0x1709
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x1741
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8178
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21424
	.byte	0x0
	.uleb128 0x31
	.long	0x777b
	.byte	0x1
	.string	"copy_replacements"
	.byte	0x1
	.value	0x175e
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x175d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x175d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21507
	.byte	0x0
	.uleb128 0x30
	.long	0x783d
	.string	"copy_replacements_1"
	.byte	0x1
	.value	0x176c
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x28
	.string	"px"
	.byte	0x1
	.value	0x1769
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"py"
	.byte	0x1
	.value	0x176a
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"orig_replacements"
	.byte	0x1
	.value	0x176b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x176d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x176d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x176e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x176e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x176f
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x1770
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1771
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x788d
	.byte	0x1
	.string	"move_replacements"
	.byte	0x1
	.value	0x179d
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x179b
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x179c
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x179e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x792f
	.byte	0x1
	.string	"find_replacement"
	.byte	0x1
	.value	0x17b0
	.byte	0x1
	.long	0x9b
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x17af
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x17b1
	.long	0x5979
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	0x790a
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2a
	.long	.LASF44
	.byte	0x1
	.value	0x17b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2a
	.long	.LASF45
	.byte	0x1
	.value	0x17cf
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x17e0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x17e1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7a52
	.byte	0x1
	.string	"refers_to_regno_for_reload_p"
	.byte	0x1
	.value	0x17f9
	.byte	0x1
	.long	0x213
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x29
	.long	.LASF23
	.byte	0x1
	.value	0x17f6
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF46
	.byte	0x1
	.value	0x17f6
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x17f7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"loc"
	.byte	0x1
	.value	0x17f8
	.long	0x17de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x17fa
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x17fb
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x17fc
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x17fd
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"repeat"
	.byte	0x1
	.value	0x1845
	.long	.L3085
	.uleb128 0x2c
	.long	0x7a26
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2b
	.string	"inner_regno"
	.byte	0x1
	.value	0x1824
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"inner_endregno"
	.byte	0x1
	.value	0x1825
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x7a41
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x185e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF35
	.long	0x814e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21749
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ad9
	.byte	0x1
	.string	"reg_overlap_mentioned_for_reload_p"
	.byte	0x1
	.value	0x1875
	.byte	0x1
	.long	0x213
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1874
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"in"
	.byte	0x1
	.value	0x1874
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x1876
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x1876
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF35
	.long	0x8139
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21915
	.byte	0x0
	.uleb128 0x2f
	.long	0x7b38
	.byte	0x1
	.string	"refers_to_mem_for_reload_p"
	.byte	0x1
	.value	0x18b0
	.byte	0x1
	.long	0x213
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x18af
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x18b1
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x18b2
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7edc
	.byte	0x1
	.string	"find_equiv_reg"
	.byte	0x1
	.value	0x18e9
	.byte	0x1
	.long	0x9b
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x28
	.string	"goal"
	.byte	0x1
	.value	0x18e2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x18e3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF19
	.byte	0x1
	.value	0x18e4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"other"
	.byte	0x1
	.value	0x18e5
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF42
	.byte	0x1
	.value	0x18e6
	.long	0x6b73
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"goalreg"
	.byte	0x1
	.value	0x18e7
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x18e8
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x18ea
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.string	"goaltry"
	.byte	0x1
	.value	0x18eb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"valtry"
	.byte	0x1
	.value	0x18eb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF39
	.byte	0x1
	.value	0x18eb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"where"
	.byte	0x1
	.value	0x18eb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x18ec
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x18ed
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"valueno"
	.byte	0x1
	.value	0x18ee
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"goal_mem"
	.byte	0x1
	.value	0x18ef
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"goal_const"
	.byte	0x1
	.value	0x18f0
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"goal_mem_addr_varies"
	.byte	0x1
	.value	0x18f1
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"need_stable_sp"
	.byte	0x1
	.value	0x18f2
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x18f3
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"valuenregs"
	.byte	0x1
	.value	0x18f4
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	0x7d09
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x18fc
	.long	0xba2
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x2c
	.long	0x7d3f
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1935
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1979
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7d5b
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x19bb
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x2c
	.long	0x7da7
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x19c6
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2b
	.string	"regno1"
	.byte	0x1
	.value	0x19ca
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"nregs1"
	.byte	0x1
	.value	0x19cb
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7dc3
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x19e6
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2c
	.long	0x7e0a
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x1a0b
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.value	0x1a13
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x1a14
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x7e7f
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1a2f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2b
	.string	"v1"
	.byte	0x1
	.value	0x1a32
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x1a37
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.value	0x1a3f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x1a40
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2b
	.string	"link"
	.byte	0x1
	.value	0x1a61
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x1a69
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.value	0x1a6d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF48
	.byte	0x1
	.value	0x1a6e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x7fba
	.string	"find_inc_amount"
	.byte	0x1
	.value	0x1aaa
	.byte	0x1
	.long	0x213
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x1aa9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"inced"
	.byte	0x1
	.value	0x1aa9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x1aab
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x1aac
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1aad
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x7f6c
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2b
	.string	"addr"
	.byte	0x1
	.value	0x1ab1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x7f89
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1ac9
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1acf
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1ad2
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x80aa
	.byte	0x1
	.string	"regno_clobbered_p"
	.byte	0x1
	.value	0x1ae5
	.byte	0x1
	.long	0x213
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x29
	.long	.LASF23
	.byte	0x1
	.value	0x1ae1
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.value	0x1ae2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x1ae3
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"sets"
	.byte	0x1
	.value	0x1ae4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x1ae6
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF46
	.byte	0x1
	.value	0x1ae7
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x805f
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2b
	.string	"test"
	.byte	0x1
	.value	0x1aed
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1af4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2b
	.string	"elt"
	.byte	0x1
	.value	0x1af8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x2b
	.string	"test"
	.byte	0x1
	.value	0x1afd
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x8104
	.byte	0x1
	.string	"debug_reload_to_stream"
	.byte	0x1
	.value	0x1b1e
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x1b1d
	.long	0x8104
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x1b1f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"prefix"
	.byte	0x1
	.value	0x1b20
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56d
	.uleb128 0x34
	.byte	0x1
	.string	"debug_reload"
	.byte	0x1
	.value	0x1b7d
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x10
	.long	0x8139
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x22
	.byte	0x0
	.uleb128 0x9
	.long	0x8129
	.uleb128 0x10
	.long	0x814e
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x1c
	.byte	0x0
	.uleb128 0x9
	.long	0x813e
	.uleb128 0x10
	.long	0x8163
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x8153
	.uleb128 0x10
	.long	0x8178
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x8168
	.uleb128 0x10
	.long	0x818d
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x16
	.byte	0x0
	.uleb128 0x9
	.long	0x817d
	.uleb128 0x9
	.long	0x88d
	.uleb128 0x10
	.long	0x81a7
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x8197
	.uleb128 0x10
	.long	0x81bc
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x81ac
	.uleb128 0x10
	.long	0x81d1
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x9
	.byte	0x0
	.uleb128 0x9
	.long	0x81c1
	.uleb128 0x10
	.long	0x81e6
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x81d6
	.uleb128 0x10
	.long	0x81fb
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x81eb
	.uleb128 0x9
	.long	0x81d6
	.uleb128 0x10
	.long	0x8215
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x8205
	.uleb128 0x35
	.string	"replace_reloads"
	.byte	0x1
	.byte	0x94
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	replace_reloads
	.uleb128 0x10
	.long	0x8247
	.long	0x51c1
	.uleb128 0x11
	.long	0x479
	.byte	0x59
	.byte	0x0
	.uleb128 0x35
	.string	"replacements"
	.byte	0x1
	.byte	0xa0
	.long	0x8237
	.byte	0x5
	.byte	0x3
	.long	replacements
	.uleb128 0x35
	.string	"n_replacements"
	.byte	0x1
	.byte	0xa3
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	n_replacements
	.uleb128 0x35
	.string	"this_insn"
	.byte	0x1
	.byte	0xbf
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	this_insn
	.uleb128 0x35
	.string	"this_insn_is_asm"
	.byte	0x1
	.byte	0xc2
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	this_insn_is_asm
	.uleb128 0x35
	.string	"hard_regs_live_known"
	.byte	0x1
	.byte	0xc7
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	hard_regs_live_known
	.uleb128 0x35
	.string	"static_reload_reg_p"
	.byte	0x1
	.byte	0xcd
	.long	0x6b73
	.byte	0x5
	.byte	0x3
	.long	static_reload_reg_p
	.uleb128 0x35
	.string	"subst_reg_equivs_changed"
	.byte	0x1
	.byte	0xd0
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	subst_reg_equivs_changed
	.uleb128 0x35
	.string	"output_reloadnum"
	.byte	0x1
	.byte	0xd4
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	output_reloadnum
	.uleb128 0x10
	.long	0x8349
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0xa
	.byte	0x0
	.uleb128 0x2b
	.string	"reload_when_needed_name"
	.byte	0x1
	.value	0x1b08
	.long	0x836f
	.byte	0x5
	.byte	0x3
	.long	reload_when_needed_name
	.uleb128 0x9
	.long	0x8339
	.uleb128 0x10
	.long	0x8384
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.byte	0x0
	.uleb128 0x2b
	.string	"reg_class_names"
	.byte	0x1
	.value	0x1b17
	.long	0x83a2
	.byte	0x5
	.byte	0x3
	.long	reg_class_names
	.uleb128 0x9
	.long	0x8374
	.uleb128 0x10
	.long	0x83b7
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xaf
	.byte	0x0
	.uleb128 0x36
	.string	"call_used_regs"
	.byte	0xf
	.value	0x196
	.long	0x83a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"target_flags"
	.byte	0x8
	.byte	0x21
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"mips_abi"
	.byte	0x8
	.value	0x3ca
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x840a
	.long	0x20b
	.uleb128 0x38
	.uleb128 0x11
	.long	0x479
	.byte	0xaf
	.byte	0x0
	.uleb128 0x36
	.string	"mips_hard_regno_mode_ok"
	.byte	0x8
	.value	0x778
	.long	0x83f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8437
	.long	0x21a
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x36
	.string	"mips_regno_to_class"
	.byte	0x8
	.value	0x85d
	.long	0x8455
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x842c
	.uleb128 0x10
	.long	0x846a
	.long	0x21a
	.uleb128 0x11
	.long	0x479
	.byte	0xff
	.byte	0x0
	.uleb128 0x36
	.string	"mips_char_to_class"
	.byte	0x8
	.value	0x8b0
	.long	0x845a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"stderr"
	.byte	0xb
	.byte	0x90
	.long	0x861
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x84a7
	.long	0x4b7
	.uleb128 0x11
	.long	0x479
	.byte	0xff
	.byte	0x0
	.uleb128 0x37
	.string	"_sch_istable"
	.byte	0x10
	.byte	0x48
	.long	0x84bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8497
	.uleb128 0x10
	.long	0x84d2
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_name"
	.byte	0x4
	.byte	0x29
	.long	0x84e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x84c2
	.uleb128 0x10
	.long	0x84fa
	.long	0xaf3
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x39
	.long	.LASF4
	.byte	0x4
	.byte	0x34
	.long	0x8507
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x84ea
	.uleb128 0x10
	.long	0x851c
	.long	0x4a6
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x852f
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x850c
	.uleb128 0x37
	.string	"word_mode"
	.byte	0x4
	.byte	0xad
	.long	0x8aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8557
	.long	0x4a6
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x856b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8547
	.uleb128 0x10
	.long	0x8580
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x8594
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8570
	.uleb128 0x10
	.long	0x85a9
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x85bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x8599
	.uleb128 0x10
	.long	0x85d1
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0x80
	.byte	0x0
	.uleb128 0x36
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x85c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x85ff
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0x2
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x36
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x85e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8628
	.long	0x9b
	.uleb128 0x11
	.long	0x479
	.byte	0xa
	.byte	0x0
	.uleb128 0x36
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x8618
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x864d
	.long	0x39bc
	.uleb128 0x11
	.long	0x479
	.byte	0x32
	.byte	0x0
	.uleb128 0x37
	.string	"optab_table"
	.byte	0x11
	.byte	0xa0
	.long	0x863d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8672
	.long	0x17e4
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"reload_in_optab"
	.byte	0x11
	.byte	0xe6
	.long	0x8662
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"reload_out_optab"
	.byte	0x11
	.byte	0xe7
	.long	0x8662
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF8
	.byte	0x12
	.byte	0xd0
	.long	0x39fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x86bd
	.long	0x3c06
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.long	.LASF18
	.byte	0x12
	.byte	0xfe
	.long	0x86ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x86b2
	.uleb128 0x10
	.long	0x86df
	.long	0x3dcb
	.uleb128 0x11
	.long	0x479
	.byte	0x77
	.byte	0x0
	.uleb128 0x3a
	.string	"rld"
	.byte	0x1
	.byte	0x83
	.long	0x86cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rld
	.uleb128 0x3a
	.string	"n_reloads"
	.byte	0x1
	.byte	0x82
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	n_reloads
	.uleb128 0x37
	.string	"reg_equiv_constant"
	.byte	0x9
	.byte	0xa7
	.long	0x17de
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"reg_equiv_memory_loc"
	.byte	0x9
	.byte	0xa8
	.long	0x17de
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"reg_equiv_address"
	.byte	0x9
	.byte	0xa9
	.long	0x17de
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"reg_equiv_mem"
	.byte	0x9
	.byte	0xaa
	.long	0x17de
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"n_earlyclobbers"
	.byte	0x1
	.byte	0x87
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	n_earlyclobbers
	.uleb128 0x3a
	.string	"reload_earlyclobbers"
	.byte	0x1
	.byte	0x88
	.long	0x3ac0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reload_earlyclobbers
	.uleb128 0x3a
	.string	"reload_n_operands"
	.byte	0x1
	.byte	0x8a
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reload_n_operands
	.uleb128 0x37
	.string	"reload_first_uid"
	.byte	0x9
	.byte	0xb6
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"indirect_symref_ok"
	.byte	0x9
	.byte	0xbc
	.long	0x20b
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"double_reg_address_ok"
	.byte	0x9
	.byte	0xbf
	.long	0x20b
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"num_not_at_initial_offset"
	.byte	0x9
	.byte	0xc1
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"fixed_regs"
	.byte	0xf
	.value	0x18b
	.long	0x83a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8879
	.long	0x3f50
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.uleb128 0x11
	.long	0x479
	.byte	0x2
	.byte	0x0
	.uleb128 0x36
	.string	"reg_class_contents"
	.byte	0xf
	.value	0x1cb
	.long	0x8863
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x88a6
	.long	0x462
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.byte	0x0
	.uleb128 0x36
	.string	"reg_class_size"
	.byte	0xf
	.value	0x1cf
	.long	0x8896
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x88d5
	.long	0x21a
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.byte	0x0
	.uleb128 0x36
	.string	"reg_class_subunion"
	.byte	0xf
	.value	0x1dc
	.long	0x88bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"reg_renumber"
	.byte	0x13
	.byte	0x9a
	.long	0x6b73
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"optimize"
	.byte	0x14
	.byte	0x43
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_float_store"
	.byte	0x14
	.value	0x117
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_pic"
	.byte	0x14
	.value	0x1df
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"cfun"
	.byte	0x15
	.value	0x202
	.long	0x5159
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x21
	.byte	0x0
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
	.long	0x245
	.value	0x2
	.long	.Ldebug_info0
	.long	0x8958
	.long	0x5685
	.string	"push_reload"
	.long	0x5a69
	.string	"transfer_replacements"
	.long	0x5ac1
	.string	"remove_address_replacements"
	.long	0x5db5
	.string	"earlyclobber_operand_p"
	.long	0x5eb1
	.string	"strict_memory_address_p"
	.long	0x5f0f
	.string	"operands_match_p"
	.long	0x6108
	.string	"safe_from_earlyclobber"
	.long	0x616a
	.string	"find_reloads"
	.long	0x7042
	.string	"form_sum"
	.long	0x7694
	.string	"subst_reloads"
	.long	0x7728
	.string	"copy_replacements"
	.long	0x783d
	.string	"move_replacements"
	.long	0x788d
	.string	"find_replacement"
	.long	0x792f
	.string	"refers_to_regno_for_reload_p"
	.long	0x7a52
	.string	"reg_overlap_mentioned_for_reload_p"
	.long	0x7ad9
	.string	"refers_to_mem_for_reload_p"
	.long	0x7b38
	.string	"find_equiv_reg"
	.long	0x7fba
	.string	"regno_clobbered_p"
	.long	0x80aa
	.string	"debug_reload_to_stream"
	.long	0x810a
	.string	"debug_reload"
	.long	0x86df
	.string	"rld"
	.long	0x86f1
	.string	"n_reloads"
	.long	0x8775
	.string	"n_earlyclobbers"
	.long	0x8793
	.string	"reload_earlyclobbers"
	.long	0x87b6
	.string	"reload_n_operands"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB60-.Ltext0
	.long	.LBE60-.Ltext0
	.long	.LBB63-.Ltext0
	.long	.LBE63-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF32:
	.string	"sequence_rtl_expr"
.LASF36:
	.string	"dont_share"
.LASF40:
	.string	"early_data"
.LASF15:
	.string	"insn"
.LASF18:
	.string	"insn_data"
.LASF1:
	.string	"mode"
.LASF19:
	.string	"class"
.LASF10:
	.string	"constraints"
.LASF26:
	.string	"secondary_out_reload"
.LASF9:
	.string	"operand"
.LASF6:
	.string	"offset"
.LASF30:
	.string	"modified"
.LASF7:
	.string	"insn_code"
.LASF5:
	.string	"mem_attrs"
.LASF22:
	.string	"nregs"
.LASF38:
	.string	"earlyclobber"
.LASF0:
	.string	"code"
.LASF39:
	.string	"value"
.LASF14:
	.string	"n_alternatives"
.LASF11:
	.string	"operand_mode"
.LASF47:
	.string	"xregno"
.LASF16:
	.string	"constraint"
.LASF23:
	.string	"regno"
.LASF8:
	.string	"recog_data"
.LASF46:
	.string	"endregno"
.LASF21:
	.string	"outmode"
.LASF31:
	.string	"sequence_stack"
.LASF42:
	.string	"reload_reg_p"
.LASF17:
	.string	"strict_low"
.LASF12:
	.string	"operand_type"
.LASF44:
	.string	"reloadreg"
.LASF20:
	.string	"inmode"
.LASF13:
	.string	"n_operands"
.LASF3:
	.string	"_IO_FILE"
.LASF25:
	.string	"secondary_in_reload"
.LASF43:
	.string	"address_reloaded"
.LASF28:
	.string	"secondary_out_icode"
.LASF24:
	.string	"opnum"
.LASF29:
	.string	"optional"
.LASF27:
	.string	"secondary_in_icode"
.LASF34:
	.string	"type"
.LASF41:
	.string	"ind_levels"
.LASF45:
	.string	"final_offset"
.LASF35:
	.string	"__FUNCTION__"
.LASF4:
	.string	"mode_class"
.LASF37:
	.string	"reloadnum"
.LASF33:
	.string	"function_frequency"
.LASF2:
	.string	"unsigned int"
.LASF48:
	.string	"xnregs"
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
