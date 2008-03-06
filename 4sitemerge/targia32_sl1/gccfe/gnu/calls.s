	.file	"calls.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	calls_function, @function
calls_function:
.LFB15:
	.file 1 "../../../kgccfe/gnu/calls.c"
	.loc 1 266 0
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
	.loc 1 269 0
	movl	$0, calls_function_save_exprs@GOTOFF(%ebx)
	.loc 1 270 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calls_function_1
	movl	%eax, -8(%ebp)
	.loc 1 271 0
	movl	$0, calls_function_save_exprs@GOTOFF(%ebx)
	.loc 1 272 0
	movl	-8(%ebp), %eax
	.loc 1 273 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	calls_function, .-calls_function
	.type	calls_function_1, @function
calls_function_1:
.LFB16:
	.loc 1 281 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$68, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 283 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 284 0
	movl	-28(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 285 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -20(%ebp)
	.loc 1 288 0
	movl	-28(%ebp), %eax
	cmpl	$150, %eax
	jle	.L4
	.loc 1 289 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L4:
	.loc 1 291 0
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$47, -48(%ebp)
	je	.L10
	cmpl	$47, -48(%ebp)
	ja	.L13
	cmpl	$3, -48(%ebp)
	je	.L47
	cmpl	$5, -48(%ebp)
	je	.L9
	jmp	.L7
.L13:
	cmpl	$54, -48(%ebp)
	je	.L11
	cmpl	$120, -48(%ebp)
	je	.L12
	jmp	.L7
.L11:
	.loc 1 294 0
	cmpl	$0, 12(%ebp)
	jne	.L14
	.loc 1 295 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L14:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L16
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L16
	.loc 1 300 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L16:
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L7
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L7
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	special_function_p
	andl	$8, %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 307 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L10:
.LBB2:
	.loc 1 315 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L23
.L24:
	.loc 1 316 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L25
	.loc 1 317 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L25:
	.loc 1 315 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L23:
	cmpl	$0, -16(%ebp)
	jne	.L24
.LBE2:
	.loc 1 320 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L12:
	.loc 1 323 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 324 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L28:
	.loc 1 325 0
	movl	calls_function_save_exprs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	je	.L30
	.loc 1 326 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L30:
	.loc 1 327 0
	movl	calls_function_save_exprs@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, calls_function_save_exprs@GOTOFF(%ebx)
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L32
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L32
	movl	$1, -40(%ebp)
	jmp	.L35
.L32:
	movl	$0, -40(%ebp)
.L35:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L6
.L9:
.LBB3:
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L36
.L37:
	.loc 1 338 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L38
	movl	-12(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L38
	.loc 1 340 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L38:
	.loc 1 337 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L36:
	cmpl	$0, -12(%ebp)
	jne	.L37
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 343 0
	jmp	.L42
.L43:
	.loc 1 345 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L44
	.loc 1 346 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L44:
	.loc 1 344 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L42:
	.loc 1 343 0
	cmpl	$0, -8(%ebp)
	jne	.L43
.LBE3:
	.loc 1 348 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L48:
	.loc 1 352 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L49
	.loc 1 353 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L49:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L47:
	cmpl	$0, 8(%ebp)
	jne	.L48
	.loc 1 354 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L7:
	.loc 1 361 0
	cmpl	$60, -24(%ebp)
	je	.L52
	cmpl	$49, -24(%ebp)
	je	.L52
	cmpl	$50, -24(%ebp)
	je	.L52
	cmpl	$101, -24(%ebp)
	je	.L52
	cmpl	$114, -24(%ebp)
	je	.L52
	cmpl	$98, -24(%ebp)
	je	.L52
	.loc 1 362 0
	movl	$0, -44(%ebp)
	jmp	.L6
.L52:
	.loc 1 364 0
	movl	$0, -32(%ebp)
	jmp	.L59
.L60:
	.loc 1 365 0
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L61
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	calls_function_1
	testl	%eax, %eax
	je	.L61
	.loc 1 367 0
	movl	$1, -44(%ebp)
	jmp	.L6
.L61:
	.loc 1 364 0
	addl	$1, -32(%ebp)
.L59:
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L60
	.loc 1 369 0
	movl	$0, -44(%ebp)
.L6:
	movl	-44(%ebp), %eax
	.loc 1 370 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	calls_function_1, .-calls_function_1
.globl prepare_call_address
	.type	prepare_call_address, @function
prepare_call_address:
.LFB17:
	.loc 1 386 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 387 0
	movl	$0, -8(%ebp)
	.loc 1 389 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%ebp)
	.loc 1 391 0
	cmpl	$0, 12(%ebp)
	je	.L67
	.loc 1 393 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_static_chain@PLT
	movl	%eax, -8(%ebp)
.L67:
	.loc 1 397 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L69
	.loc 1 400 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L71
	cmpl	$0, 20(%ebp)
	je	.L71
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L74
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L74
	movl	$5, -28(%ebp)
	jmp	.L77
.L74:
	movl	$4, -28(%ebp)
.L77:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, (%esp)
	call	force_not_mem@PLT
	movl	%eax, -32(%ebp)
	jmp	.L78
.L71:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L79
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L79
	movl	$5, -24(%ebp)
	jmp	.L82
.L79:
	movl	$4, -24(%ebp)
.L82:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, -32(%ebp)
.L78:
	movl	-32(%ebp), %eax
	movl	%eax, 8(%ebp)
.L69:
	.loc 1 414 0
	cmpl	$0, -8(%ebp)
	je	.L83
	.loc 1 416 0
	movl	static_chain_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
	.loc 1 418 0
	movl	static_chain_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L83
	.loc 1 419 0
	movl	static_chain_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L83:
	.loc 1 422 0
	movl	8(%ebp), %eax
	.loc 1 423 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	prepare_call_address, .-prepare_call_address
	.section	.rodata
	.type	__FUNCTION__.13716, @object
	.size	__FUNCTION__.13716, 12
__FUNCTION__.13716:
	.string	"emit_call_1"
.LC0:
	.string	"../../../kgccfe/gnu/calls.c"
	.text
	.type	emit_call_1, @function
emit_call_1:
.LFB18:
	.loc 1 481 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$96, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 482 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -28(%ebp)
	.loc 1 484 0
	movl	$0, -20(%ebp)
	.loc 1 485 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 488 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -16(%ebp)
	.loc 1 498 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L88
	.loc 1 499 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L90
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L90
	movl	$5, -76(%ebp)
	jmp	.L93
.L90:
	movl	$4, -76(%ebp)
.L93:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 8(%ebp)
.L88:
	.loc 1 579 0
	cmpl	$0, 48(%ebp)
	je	.L94
	.loc 1 580 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L96
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L96
	movl	$5, -72(%ebp)
	jmp	.L99
.L96:
	movl	$4, -72(%ebp)
.L99:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %esi
	movl	%esi, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	48(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_call_value@PLT
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	jmp	.L100
.L94:
	.loc 1 585 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L101
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L101
	movl	$5, -68(%ebp)
	jmp	.L104
.L101:
	movl	$4, -68(%ebp)
.L104:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_call@PLT
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
.L100:
	.loc 1 594 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 595 0
	jmp	.L105
.L106:
	.loc 1 596 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L105:
	.loc 1 595 0
	cmpl	$0, -24(%ebp)
	je	.L107
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L106
.L107:
	.loc 1 599 0
	cmpl	$0, -24(%ebp)
	jne	.L109
	.loc 1 600 0
	leal	__FUNCTION__.13716@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$600, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L109:
	.loc 1 603 0
	movl	60(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L111
	.loc 1 604 0
	movl	$0, 4(%esp)
	movl	$72, (%esp)
	call	gen_rtx_fmt_0@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 56(%ebp)
.L111:
	.loc 1 613 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L113
.LBB4:
	.loc 1 617 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L115
.L116:
	.loc 1 618 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L115:
	.loc 1 617 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L116
	.loc 1 621 0
	movl	-12(%ebp), %edx
	movl	56(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L118
.L113:
.LBE4:
	.loc 1 624 0
	movl	-24(%ebp), %edx
	movl	56(%ebp), %eax
	movl	%eax, 76(%edx)
.L118:
	.loc 1 627 0
	movl	60(%ebp), %eax
	andl	$513, %eax
	testl	%eax, %eax
	je	.L119
	.loc 1 628 0
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$4, %edx
	movb	%dl, 3(%eax)
.L119:
	.loc 1 632 0
	movl	60(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L121
	.loc 1 633 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$22, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 68(%eax)
	jmp	.L123
.L121:
	.loc 1 636 0
	call	note_eh_region_may_contain_throw@PLT
.L123:
	.loc 1 638 0
	movl	60(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 639 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$25, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 68(%eax)
.L124:
	.loc 1 641 0
	movl	60(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L126
	.loc 1 642 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$28, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 68(%eax)
.L126:
	.loc 1 645 0
	movl	60(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L128
	.loc 1 647 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$27, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 649 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$16, %eax
	movb	%al, 296(%edx)
.L128:
	.loc 1 652 0
	movl	60(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movl	-24(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	3(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	.loc 1 656 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	52(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 659 0
	movl	60(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	jne	.L138
	.loc 1 662 0
	cmpl	$0, -36(%ebp)
	js	.L132
	cmpl	$0, -36(%ebp)
	jg	.L134
	cmpl	$0, -40(%ebp)
	jbe	.L132
.L134:
	.loc 1 664 0
	cmpl	$0, -20(%ebp)
	jne	.L135
	.loc 1 665 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %esi
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 76(%eax)
.L135:
	.loc 1 669 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	subl	%eax, -56(%ebp)
	sbbl	%edx, -52(%ebp)
	.loc 1 670 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -28(%ebp)
	.loc 1 671 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, 8(%ecx)
.L132:
	.loc 1 706 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L138
	.loc 1 707 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, (%esp)
	call	anti_adjust_stack@PLT
.L138:
	.loc 1 708 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	emit_call_1, .-emit_call_1
	.section	.rodata
.LC1:
	.string	"alloca"
.LC2:
	.string	"__builtin_alloca"
.LC3:
	.string	"setjmp"
.LC4:
	.string	"setjmp_syscall"
.LC5:
	.string	"sigsetjmp"
.LC6:
	.string	"savectx"
.LC7:
	.string	"siglongjmp"
.LC8:
	.string	"qsetjmp"
.LC9:
	.string	"vfork"
.LC10:
	.string	"longjmp"
.LC11:
	.string	"fork"
.LC12:
	.string	"clone"
.LC13:
	.string	"malloc"
.LC14:
	.string	"calloc"
.LC15:
	.string	"strdup"
	.text
	.type	special_function_p, @function
special_function_p:
.LFB19:
	.loc 1 728 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%edi
.LCFI19:
	pushl	%esi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$204, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 729 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L140
	cmpl	$0, 8(%ebp)
	je	.L140
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L140
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	cmpl	$17, %eax
	ja	.L140
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L140
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L140
.LBB5:
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 738 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 743 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	cmpl	$6, %eax
	jne	.L147
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L147
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	$7, -48(%ebp)
	cld
	movl	-40(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L150
.L147:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jne	.L151
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L151
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -56(%ebp)
	movl	$17, -60(%ebp)
	cld
	movl	-52(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L151
.L150:
	.loc 1 749 0
	orl	$8, 12(%ebp)
.L151:
	.loc 1 752 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L154
	.loc 1 754 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L156
	movl	-20(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L156
	.loc 1 755 0
	addl	$3, -16(%ebp)
	.loc 1 754 0
	jmp	.L154
.L156:
	.loc 1 756 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L159
	.loc 1 757 0
	addl	$2, -16(%ebp)
	jmp	.L154
.L159:
	.loc 1 759 0
	addl	$1, -16(%ebp)
.L154:
	.loc 1 762 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L161
	.loc 1 764 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L163
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -68(%ebp)
	movl	$7, -72(%ebp)
	cld
	movl	-64(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-72(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L165
	movl	-16(%ebp), %eax
	movl	%eax, -76(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -80(%ebp)
	movl	$15, -84(%ebp)
	cld
	movl	-76(%ebp), %esi
	movl	-80(%ebp), %edi
	movl	-84(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L165
.L163:
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L167
	movl	-16(%ebp), %eax
	movl	%eax, -88(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -92(%ebp)
	movl	$10, -96(%ebp)
	cld
	movl	-88(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L165
.L167:
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L169
	movl	-16(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	.LC6@GOTOFF(%ebx), %esi
	movl	%esi, -104(%ebp)
	movl	$8, -108(%ebp)
	cld
	movl	-100(%ebp), %esi
	movl	-104(%ebp), %edi
	movl	-108(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L169
.L165:
	.loc 1 771 0
	orl	$32, 12(%ebp)
.L169:
	.loc 1 773 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L140
	movl	-16(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	.LC7@GOTOFF(%ebx), %esi
	movl	%esi, -116(%ebp)
	movl	$11, -120(%ebp)
	cld
	movl	-112(%ebp), %esi
	movl	-116(%ebp), %edi
	movl	-120(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L140
	.loc 1 775 0
	orl	$64, 12(%ebp)
	jmp	.L140
.L161:
	.loc 1 777 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$113, %al
	jne	.L174
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L174
	movl	-16(%ebp), %eax
	movl	%eax, -124(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -128(%ebp)
	movl	$8, -132(%ebp)
	cld
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	-132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L177
.L174:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L178
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$102, %al
	jne	.L178
	movl	-16(%ebp), %eax
	movl	%eax, -136(%ebp)
	leal	.LC9@GOTOFF(%ebx), %esi
	movl	%esi, -140(%ebp)
	movl	$6, -144(%ebp)
	cld
	movl	-136(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	-144(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L178
.L177:
	.loc 1 781 0
	orl	$32, 12(%ebp)
	.loc 1 777 0
	jmp	.L140
.L178:
	.loc 1 783 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$108, %al
	jne	.L181
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L181
	movl	-16(%ebp), %eax
	movl	%eax, -148(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -152(%ebp)
	movl	$8, -156(%ebp)
	cld
	movl	-148(%ebp), %esi
	movl	-152(%ebp), %edi
	movl	-156(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L181
	.loc 1 785 0
	orl	$64, 12(%ebp)
	.loc 1 783 0
	jmp	.L140
.L181:
	.loc 1 787 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$102, %al
	jne	.L185
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L185
	movl	-16(%ebp), %eax
	movl	%eax, -160(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -164(%ebp)
	movl	$5, -168(%ebp)
	cld
	movl	-160(%ebp), %esi
	movl	-164(%ebp), %edi
	movl	-168(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L188
.L185:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L189
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L189
	movl	-16(%ebp), %eax
	movl	%eax, -172(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -176(%ebp)
	movl	$6, -180(%ebp)
	cld
	movl	-172(%ebp), %esi
	movl	-176(%ebp), %edi
	movl	-180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L188
.L189:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L192
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L192
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L192
	movl	-16(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$99, %al
	jne	.L192
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$108, %al
	je	.L197
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L192
.L197:
	movl	-16(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L188
	movl	-16(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	je	.L200
	movl	-16(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L192
.L200:
	movl	-16(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L192
.L188:
	.loc 1 799 0
	orl	$128, 12(%ebp)
	.loc 1 787 0
	jmp	.L140
.L192:
	.loc 1 808 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L202
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L202
	movl	$5, -32(%ebp)
	jmp	.L205
.L202:
	movl	$4, -32(%ebp)
.L205:
	movl	-32(%ebp), %esi
	cmpl	%esi, -36(%ebp)
	jne	.L140
	movl	-16(%ebp), %eax
	movl	%eax, -184(%ebp)
	leal	.LC13@GOTOFF(%ebx), %edi
	movl	%edi, -188(%ebp)
	movl	$7, -192(%ebp)
	cld
	movl	-184(%ebp), %esi
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L207
	movl	-16(%ebp), %eax
	movl	%eax, -196(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -200(%ebp)
	movl	$7, -204(%ebp)
	cld
	movl	-196(%ebp), %esi
	movl	-200(%ebp), %edi
	movl	-204(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L207
	movl	-16(%ebp), %eax
	movl	%eax, -208(%ebp)
	leal	.LC15@GOTOFF(%ebx), %esi
	movl	%esi, -212(%ebp)
	movl	$7, -216(%ebp)
	cld
	movl	-208(%ebp), %esi
	movl	-212(%ebp), %edi
	movl	-216(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L140
.L207:
	.loc 1 812 0
	orl	$4, 12(%ebp)
.L140:
.LBE5:
	.loc 1 814 0
	movl	12(%ebp), %eax
	.loc 1 815 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	special_function_p, .-special_function_p
.globl setjmp_call_p
	.type	setjmp_call_p, @function
setjmp_call_p:
.LFB20:
	.loc 1 822 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	subl	$8, %esp
.LCFI25:
	.loc 1 823 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	special_function_p
	andl	$32, %eax
	.loc 1 824 0
	leave
	ret
.LFE20:
	.size	setjmp_call_p, .-setjmp_call_p
.globl alloca_call_p
	.type	alloca_call_p, @function
alloca_call_p:
.LFB21:
	.loc 1 830 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	subl	$12, %esp
.LCFI28:
	.loc 1 831 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L214
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L214
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L214
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	special_function_p
	andl	$8, %eax
	testl	%eax, %eax
	je	.L214
	.loc 1 837 0
	movl	$1, -4(%ebp)
	jmp	.L219
.L214:
	.loc 1 838 0
	movl	$0, -4(%ebp)
.L219:
	movl	-4(%ebp), %eax
	.loc 1 839 0
	leave
	ret
.LFE21:
	.size	alloca_call_p, .-alloca_call_p
	.type	flags_from_decl_or_type, @function
flags_from_decl_or_type:
.LFB22:
	.loc 1 846 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	subl	$16, %esp
.LCFI31:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 847 0
	movl	$0, -8(%ebp)
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 850 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L222
	.loc 1 852 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 855 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L224
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L224
	.loc 1 856 0
	orl	$4, -8(%ebp)
.L224:
	.loc 1 859 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L227
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L227
	.loc 1 860 0
	orl	$4608, -8(%ebp)
.L227:
	.loc 1 862 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L230
	.loc 1 863 0
	orl	$16, -8(%ebp)
.L230:
	.loc 1 865 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L222
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L222
	.loc 1 866 0
	orl	$4096, -8(%ebp)
.L222:
	.loc 1 869 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L234
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L234
	.loc 1 870 0
	orl	$1, -8(%ebp)
.L234:
	.loc 1 872 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L237
	.loc 1 873 0
	orl	$2, -8(%ebp)
.L237:
	.loc 1 877 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L239
	movl	-4(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L239
	.loc 1 879 0
	orl	$1024, -8(%ebp)
	.loc 1 880 0
	andl	$-4610, -8(%ebp)
.L239:
	.loc 1 883 0
	movl	-8(%ebp), %eax
	.loc 1 884 0
	leave
	ret
.LFE22:
	.size	flags_from_decl_or_type, .-flags_from_decl_or_type
	.type	precompute_register_parameters, @function
precompute_register_parameters:
.LFB23:
	.loc 1 898 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%edi
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$44, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 901 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 903 0
	movl	$0, -16(%ebp)
	jmp	.L244
.L245:
	.loc 1 904 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L246
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L246
	.loc 1 906 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 908 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L249
	.loc 1 910 0
	call	push_temp_slots@PLT
	.loc 1 911 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 8(%esi)
	.loc 1 913 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	preserve_temp_slots@PLT
	.loc 1 914 0
	call	pop_temp_slots@PLT
	.loc 1 918 0
	call	emit_queue@PLT
.L249:
	.loc 1 923 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L251
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L259
.L251:
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L260
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L262
.L260:
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L263
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L263
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L262
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L262
.L263:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L259
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	jne	.L259
.L262:
	.loc 1 925 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, 8(%esi)
.L259:
	.loc 1 930 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L268
	.loc 1 931 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %edi
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, 8(%esi)
.L268:
	.loc 1 944 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L246
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L271
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L246
.L271:
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$52, %eax
	je	.L246
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$57, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_cost@PLT
	cmpl	$4, %eax
	jle	.L246
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L275
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L277
.L275:
	call	preserve_subexpressions_p@PLT
	testl	%eax, %eax
	je	.L246
.L277:
	.loc 1 951 0
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	copy_to_mode_reg@PLT
	movl	%eax, 8(%esi)
.L246:
	.loc 1 903 0
	addl	$1, -16(%ebp)
.L244:
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L245
	.loc 1 953 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	precompute_register_parameters, .-precompute_register_parameters
	.type	save_fixed_argument_area, @function
save_fixed_argument_area:
.LFB24:
	.loc 1 968 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$80, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 970 0
	movl	$0, -24(%ebp)
	.loc 1 976 0
	movl	$0, -28(%ebp)
	jmp	.L281
.L282:
	.loc 1 979 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L283
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L283
	.loc 1 983 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L286
	.loc 1 984 0
	movl	16(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L286:
	.loc 1 986 0
	movl	20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L283:
	.loc 1 976 0
	addl	$1, -28(%ebp)
.L281:
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L282
	.loc 1 989 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L289
.LBB6:
	.loc 1 991 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 993 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -16(%ebp)
	.loc 1 997 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L291
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L293
.L291:
	movl	$128, -60(%ebp)
	jmp	.L294
.L293:
	movl	$64, -60(%ebp)
.L294:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L295
	movl	$8, -56(%ebp)
	jmp	.L297
.L295:
	movl	$4, -56(%ebp)
.L297:
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-56(%ebp)
	cmpl	%eax, -64(%ebp)
	jge	.L298
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	jmp	.L300
.L298:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L301
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L303
.L301:
	movl	$128, -52(%ebp)
	jmp	.L304
.L303:
	movl	$64, -52(%ebp)
.L304:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L305
	movl	$8, -48(%ebp)
	jmp	.L307
.L305:
	movl	$4, -48(%ebp)
.L307:
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-48(%ebp)
	subl	$1, %eax
	movl	%eax, -68(%ebp)
.L300:
	movl	-72(%ebp), %eax
	andl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 999 0
	movl	$52, -16(%ebp)
.L308:
	.loc 1 1008 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1014 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L310
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L310
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L310
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L314
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L314
.L310:
	movl	$64, -44(%ebp)
	jmp	.L316
.L314:
	movl	$32, -44(%ebp)
.L316:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1015 0
	cmpl	$52, -16(%ebp)
	jne	.L317
	.loc 1 1017 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1018 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_block_move@PLT
	jmp	.L289
.L317:
	.loc 1 1023 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1024 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L289:
.LBE6:
	.loc 1 1028 0
	movl	-24(%ebp), %eax
	.loc 1 1029 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	save_fixed_argument_area, .-save_fixed_argument_area
	.type	restore_fixed_argument_area, @function
restore_fixed_argument_area:
.LFB25:
	.loc 1 1037 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%esi
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$32, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1038 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1049 0
	movl	20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1053 0
	cmpl	$52, -16(%ebp)
	je	.L321
	.loc 1 1054 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L324
.L321:
	.loc 1 1056 0
	movl	20(%ebp), %edx
	movl	16(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
.L324:
	.loc 1 1059 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	restore_fixed_argument_area, .-restore_fixed_argument_area
	.type	store_unaligned_arguments_into_pseudos, @function
store_unaligned_arguments_into_pseudos:
.LFB26:
	.loc 1 1075 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%edi
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$204, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1078 0
	movl	$0, -44(%ebp)
	jmp	.L326
.L327:
	.loc 1 1079 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L328
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L328
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$52, %eax
	jne	.L328
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L332
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L334
.L332:
	movl	$128, -132(%ebp)
	jmp	.L335
.L334:
	movl	$64, -132(%ebp)
.L335:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L336
	movl	$64, -128(%ebp)
	jmp	.L338
.L336:
	movl	$32, -128(%ebp)
.L338:
	movl	-128(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	jge	.L339
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L341
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L343
.L341:
	movl	$128, -124(%ebp)
	jmp	.L344
.L343:
	movl	$64, -124(%ebp)
.L344:
	movl	-124(%ebp), %edx
	movl	%edx, -136(%ebp)
	jmp	.L345
.L339:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L346
	movl	$64, -120(%ebp)
	jmp	.L348
.L346:
	movl	$32, -120(%ebp)
.L348:
	movl	-120(%ebp), %eax
	movl	%eax, -136(%ebp)
.L345:
	movl	-136(%ebp), %edx
	cmpl	%edx, -140(%ebp)
	jae	.L328
.LBB7:
	.loc 1 1084 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1085 0
	movl	$0, -32(%ebp)
	.loc 1 1087 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	8(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -116(%ebp)
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L350
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L352
.L350:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L353
	movl	$7, -108(%ebp)
	jmp	.L355
.L353:
	movl	$3, -108(%ebp)
.L355:
	movl	-108(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L356
	movl	$8, -100(%ebp)
	jmp	.L358
.L356:
	movl	$4, -100(%ebp)
.L358:
	movl	-104(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-100(%ebp)
	movl	%eax, -112(%ebp)
.L352:
	movl	-112(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 88(%edx)
	.loc 1 1091 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	8(%ebp), %esi
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	88(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, 84(%esi)
	.loc 1 1098 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L359
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L361
	movl	$8, -96(%ebp)
	jmp	.L363
.L361:
	movl	$4, -96(%ebp)
.L363:
	movl	-96(%ebp), %edx
	cmpl	-36(%ebp), %edx
	jle	.L359
	.loc 1 1100 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L365
	movl	$64, -92(%ebp)
	jmp	.L367
.L365:
	movl	$32, -92(%ebp)
.L367:
	movl	-36(%ebp), %eax
	sall	$3, %eax
	movl	-92(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%ebp)
.L359:
	.loc 1 1102 0
	movl	$0, -40(%ebp)
	jmp	.L368
.L369:
.LBB8:
	.loc 1 1104 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1105 0
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$52, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_subword_force@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1106 0
	movl	-36(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L370
	movl	$64, -80(%ebp)
	jmp	.L372
.L370:
	movl	$32, -80(%ebp)
.L372:
	movl	-80(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jge	.L373
	movl	-36(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -88(%ebp)
	jmp	.L375
.L373:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L376
	movl	$64, -76(%ebp)
	jmp	.L378
.L376:
	movl	$32, -76(%ebp)
.L378:
	movl	-76(%ebp), %edx
	movl	%edx, -88(%ebp)
.L375:
	movl	-88(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1108 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1121 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1123 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	subl	%eax, -36(%ebp)
	.loc 1 1124 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L379
	movl	$64, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L381
.L379:
	movl	$32, -72(%ebp)
	movl	$0, -68(%ebp)
.L381:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L382
	movl	$64, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L384
.L382:
	movl	$32, -64(%ebp)
	movl	$0, -60(%ebp)
.L384:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	%ecx, 32(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-20(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -148(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 24(%esp)
	movl	-52(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
.LBE8:
	.loc 1 1102 0
	addl	$1, -40(%ebp)
.L368:
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	88(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L369
.L328:
.LBE7:
	.loc 1 1078 0
	addl	$1, -44(%ebp)
.L326:
	movl	-44(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L327
	.loc 1 1131 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	store_unaligned_arguments_into_pseudos, .-store_unaligned_arguments_into_pseudos
.globl __moddi3
	.type	initialize_argument_information, @function
initialize_argument_information:
.LFB27:
	.loc 1 1172 0
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
	subl	$220, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1183 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 1184 0
	movl	16(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1198 0
	movl	$0, -44(%ebp)
	movl	$1, -52(%ebp)
	.loc 1 1202 0
	movl	24(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L388
.L389:
.LBB9:
	.loc 1 1204 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1208 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1211 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L390
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L392
.L390:
	.loc 1 1212 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L392:
	.loc 1 1217 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L393
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L393
	.loc 1 1218 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L393:
	.loc 1 1235 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L396
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L398
.L396:
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L398
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	setl	%al
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	je	.L400
.L398:
	.loc 1 1246 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L401
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L403
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L403
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	setl	%al
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	je	.L403
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L407
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L409
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -200(%ebp)
	jmp	.L411
.L409:
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -200(%ebp)
.L411:
	movl	-200(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	je	.L403
.L407:
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L403
.L401:
	.loc 1 1267 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L412
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L412
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L415
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L417
.L415:
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -196(%ebp)
.L417:
	movl	-196(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$71, %ax
	je	.L412
	.loc 1 1270 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
.L412:
	.loc 1 1272 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edi
	addl	12(%ebp), %edi
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, (%edi)
	.loc 1 1275 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1246 0
	jmp	.L400
.L403:
	.loc 1 1277 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	jne	.L419
	.loc 1 1282 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edi
	addl	12(%ebp), %edi
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, (%edi)
	.loc 1 1285 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -36(%ebp)
	jmp	.L400
.L419:
.LBB10:
	.loc 1 1293 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L421
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L421
	movl	flag_stack_check@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L424
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	movl	$40, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L424
.L421:
.LBB11:
	.loc 1 1301 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	expr_size@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1303 0
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L426
	.loc 1 1305 0
	movl	$0, 8(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
	.loc 1 1306 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	44(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1307 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L426:
	.loc 1 1310 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1313 0
	movl	$1, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 1293 0
	jmp	.L428
.L424:
.LBE11:
	.loc 1 1316 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -28(%ebp)
.L428:
	.loc 1 1318 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	store_expr@PLT
	.loc 1 1319 0
	movl	52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andl	$-4610, %edx
	movl	52(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1321 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edi
	addl	12(%ebp), %edi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, (%edi)
	.loc 1 1324 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -36(%ebp)
.L400:
.LBE10:
	.loc 1 1328 0
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1329 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 1332 0
	movl	$1, 12(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	promote_mode@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1335 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1336 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1338 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	%eax, 16(%esi)
	.loc 1 1347 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 1351 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L429
	.loc 1 1352 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	12(%ebp), %esi
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_partial_nregs@PLT
	movl	%eax, 28(%esi)
.L429:
	.loc 1 1357 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	12(%ebp), %esi
	addl	%eax, %esi
	movl	%esi, -192(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L431
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L433
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L433
	cmpl	$52, -32(%ebp)
	jne	.L431
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L431
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L431
	cmpl	$0, -36(%ebp)
	je	.L439
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L439
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L442
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L442
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L442
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L446
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L446
.L442:
	movl	$8, -176(%ebp)
	movl	$0, -172(%ebp)
	jmp	.L448
.L446:
	movl	$4, -176(%ebp)
	movl	$0, -172(%ebp)
.L448:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %edx
	movl	-180(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L431
.L439:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L449
	cmpl	$52, -32(%ebp)
	jne	.L451
	cmpl	$0, -36(%ebp)
	je	.L453
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L453
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L456
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L456
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L456
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L460
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L460
.L456:
	movl	$8, -144(%ebp)
	movl	$0, -140(%ebp)
	jmp	.L462
.L460:
	movl	$4, -144(%ebp)
	movl	$0, -140(%ebp)
.L462:
	movl	-140(%ebp), %ecx
	cmpl	%ecx, -148(%ebp)
	jg	.L453
	movl	-140(%ebp), %esi
	cmpl	%esi, -148(%ebp)
	jl	.L464
	movl	-144(%ebp), %edi
	cmpl	%edi, -152(%ebp)
	jae	.L453
.L464:
	movl	$1, -156(%ebp)
	jmp	.L465
.L453:
	movl	$0, -156(%ebp)
.L465:
	movzbl	-156(%ebp), %eax
	movb	%al, -157(%ebp)
	jmp	.L466
.L451:
	movl	-32(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -128(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L467
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L467
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L467
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L471
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L471
.L467:
	movl	$64, -124(%ebp)
	jmp	.L473
.L471:
	movl	$32, -124(%ebp)
.L473:
	movl	-124(%ebp), %edx
	cmpl	%edx, -128(%ebp)
	jge	.L474
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L476
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L476
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L476
	movl	-32(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L474
.L476:
	movl	$1, -132(%ebp)
	jmp	.L480
.L474:
	movl	$0, -132(%ebp)
.L480:
	movzbl	-132(%ebp), %ecx
	movb	%cl, -157(%ebp)
.L466:
	cmpb	$0, -157(%ebp)
	je	.L481
	movl	$2, -164(%ebp)
	jmp	.L483
.L481:
	movl	$1, -164(%ebp)
.L483:
	movl	-164(%ebp), %esi
	movl	%esi, -168(%ebp)
	jmp	.L484
.L449:
	movl	$1, -168(%ebp)
.L484:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L485
	movl	$1, -120(%ebp)
	jmp	.L487
.L485:
	movl	$2, -120(%ebp)
.L487:
	movl	-120(%ebp), %edi
	cmpl	%edi, -168(%ebp)
	jne	.L431
.L433:
	movl	$1, -188(%ebp)
	jmp	.L488
.L431:
	movl	$0, -188(%ebp)
.L488:
	movl	-188(%ebp), %edx
	movl	-192(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 1362 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L489
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L489
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L489
	.loc 1 1364 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	$1, 32(%eax)
.L489:
	.loc 1 1371 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L493
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L495
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L495
.L493:
	.loc 1 1373 0
	movl	48(%ebp), %eax
	movl	$1, (%eax)
.L495:
	.loc 1 1377 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L497
	.loc 1 1378 0
	movl	52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	andb	$239, %dh
	movl	52(%ebp), %eax
	movl	%edx, (%eax)
.L497:
	.loc 1 1381 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L499
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L499
	cmpl	$0, 36(%ebp)
	jg	.L499
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L503
.L499:
	.loc 1 1384 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	leal	60(%eax), %ecx
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	leal	36(%eax), %esi
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leal	-68(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_and_pad_parm@PLT
.L503:
	.loc 1 1394 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, 48(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 52(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 56(%ecx)
	.loc 1 1397 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 92(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 96(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 100(%edx)
	.loc 1 1401 0
	cmpl	$0, 36(%ebp)
	jne	.L504
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L504
	.loc 1 1402 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	movl	12(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -116(%ebp)
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	60(%eax), %esi
	movl	64(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L507
	movl	$8, -100(%ebp)
	jmp	.L509
.L507:
	movl	$4, -100(%ebp)
.L509:
	movl	-104(%ebp), %edi
	imull	-100(%ebp), %edi
	movl	%edi, -96(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L510
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L510
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L510
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L514
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L514
.L510:
	movl	$8, -92(%ebp)
	jmp	.L516
.L514:
	movl	$4, -92(%ebp)
.L516:
	movl	-96(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-92(%ebp)
	movl	%eax, -88(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L517
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L517
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L517
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L521
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L521
.L517:
	movl	$8, -84(%ebp)
	jmp	.L523
.L521:
	movl	$4, -84(%ebp)
.L523:
	movl	-88(%ebp), %eax
	imull	-84(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-116(%ebp), %edi
	movl	%eax, 60(%edi)
	movl	%edx, 64(%edi)
.L504:
	.loc 1 1408 0
	movl	16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1409 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L524
.LBB12:
	.loc 1 1411 0
	movl	-44(%ebp), %eax
	imull	$104, %eax, %eax
	addl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L526
	movl	16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L524
.L526:
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L528
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L524
.L528:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
.L524:
.LBE12:
	.loc 1 1427 0
	movl	-48(%ebp), %eax
	cmpl	20(%ebp), %eax
	setl	%al
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_advance@PLT
.LBE9:
	.loc 1 1202 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	addl	$1, -48(%ebp)
.L388:
	cmpl	$0, -40(%ebp)
	jne	.L389
	.loc 1 1430 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	initialize_argument_information, .-initialize_argument_information
	.section	.rodata
	.type	__FUNCTION__.15365, @object
	.size	__FUNCTION__.15365, 28
__FUNCTION__.15365:
	.string	"compute_argument_block_size"
.globl __divdi3
	.text
	.type	compute_argument_block_size, @function
compute_argument_block_size:
.LFB28:
	.loc 1 1444 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%edi
.LCFI62:
	pushl	%esi
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$76, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1445 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1450 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L533
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L533
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L536
.L533:
	movl	$64, -60(%ebp)
	jmp	.L537
.L536:
	movl	$128, -60(%ebp)
.L537:
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	.L538
	.loc 1 1451 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L540
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L540
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L543
.L540:
	movl	$64, -56(%ebp)
	jmp	.L544
.L543:
	movl	$128, -56(%ebp)
.L544:
	movl	-56(%ebp), %edx
	movl	%edx, 16(%ebp)
.L538:
	.loc 1 1457 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L545
	.loc 1 1459 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L547
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -52(%ebp)
	jmp	.L549
.L547:
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -52(%ebp)
.L549:
	movl	12(%ebp), %eax
	movl	-52(%ebp), %ecx
	movl	%ecx, 8(%eax)
	.loc 1 1460 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 1462 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, 16(%ebp)
	.loc 1 1463 0
	cmpl	$1, 16(%ebp)
	jle	.L550
	.loc 1 1468 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L552
	.loc 1 1469 0
	leal	__FUNCTION__.15365@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1469, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L552:
	.loc 1 1470 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
.L550:
	.loc 1 1473 0
	cmpl	$0, 8(%ebp)
	jle	.L556
	.loc 1 1475 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L556
.L545:
	.loc 1 1490 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, 16(%ebp)
	.loc 1 1491 0
	cmpl	$0, 16(%ebp)
	jg	.L557
	.loc 1 1492 0
	movl	$1, 16(%ebp)
.L557:
	.loc 1 1493 0
	movl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -68(%ebp)
	movl	-72(%ebp), %ecx
	imull	%edi, %ecx
	movl	-68(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -64(%ebp)
	addl	-64(%ebp), %ecx
	movl	-72(%ebp), %eax
	mull	%esi
	movl	%eax, %esi
	movl	%edx, %edi
	addl	%edi, %ecx
	movl	%ecx, %edi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -68(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	subl	-72(%ebp), %eax
	sbbl	-68(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	12(%ebp), %ecx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, (%ecx)
	movl	%edi, 4(%ecx)
	.loc 1 1500 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-44(%ebp), %edi
	cmpl	%edi, -36(%ebp)
	jg	.L559
	movl	-44(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jl	.L560
	movl	-48(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jae	.L559
.L560:
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
.L559:
	movl	12(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
.L556:
	.loc 1 1512 0
	movl	-20(%ebp), %eax
	.loc 1 1513 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	compute_argument_block_size, .-compute_argument_block_size
	.section	.rodata
	.type	__FUNCTION__.15453, @object
	.size	__FUNCTION__.15453, 21
__FUNCTION__.15453:
	.string	"precompute_arguments"
	.text
	.type	precompute_arguments, @function
precompute_arguments:
.LFB29:
	.loc 1 1530 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%edi
.LCFI68:
	pushl	%esi
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$44, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1548 0
	movl	$0, -20(%ebp)
	jmp	.L563
.L564:
	.loc 1 1549 0
	movl	8(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L565
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	calls_function
	testl	%eax, %eax
	je	.L567
.L565:
.LBB13:
	.loc 1 1555 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L568
	.loc 1 1556 0
	leal	__FUNCTION__.15453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1556, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L568:
	.loc 1 1558 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	16(%ebp), %esi
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 8(%esi)
	.loc 1 1563 0
	call	emit_queue@PLT
	.loc 1 1565 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %edi
	addl	16(%ebp), %edi
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	16(%ebp), %esi
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	protect_from_queue@PLT
	movl	%eax, 8(%esi)
	movl	8(%esi), %eax
	movl	%eax, 12(%edi)
	.loc 1 1568 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1569 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L567
	.loc 1 1571 0
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	16(%ebp), %esi
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	24(%eax), %edi
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-20(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_modes@PLT
	movl	%eax, 8(%esi)
.L567:
.LBE13:
	.loc 1 1548 0
	addl	$1, -20(%ebp)
.L563:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L564
	.loc 1 1590 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	precompute_arguments, .-precompute_arguments
	.type	finalize_must_preallocate, @function
finalize_must_preallocate:
.LFB30:
	.loc 1 1602 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$52, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1622 0
	cmpl	$0, 8(%ebp)
	jne	.L574
.LBB14:
	.loc 1 1624 0
	movl	$0, -20(%ebp)
	.loc 1 1625 0
	movl	$0, -16(%ebp)
	.loc 1 1628 0
	movl	$0, -12(%ebp)
	jmp	.L576
.L577:
	.loc 1 1630 0
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jle	.L578
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L578
	.loc 1 1631 0
	movl	$1, -20(%ebp)
	.loc 1 1630 0
	jmp	.L581
.L578:
	.loc 1 1632 0
	cmpl	$0, -20(%ebp)
	je	.L581
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L581
	.loc 1 1633 0
	movl	$1, 8(%ebp)
.L581:
	.loc 1 1635 0
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L584
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	je	.L586
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$51, %al
	je	.L586
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L586
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L584
.L586:
	.loc 1 1640 0
	movl	-12(%ebp), %eax
	imull	$104, %eax, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
.L584:
	.loc 1 1628 0
	addl	$1, -12(%ebp)
.L576:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L590
	cmpl	$0, 8(%ebp)
	je	.L577
.L590:
	.loc 1 1644 0
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -48(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -44(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	jl	.L574
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jg	.L593
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jb	.L574
.L593:
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	cmpl	$0, -28(%ebp)
	js	.L574
	cmpl	$0, -28(%ebp)
	jg	.L595
	cmpl	$0, -32(%ebp)
	jbe	.L574
.L595:
	.loc 1 1646 0
	movl	$1, 8(%ebp)
.L574:
.LBE14:
	.loc 1 1648 0
	movl	8(%ebp), %eax
	.loc 1 1649 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	finalize_must_preallocate, .-finalize_must_preallocate
	.type	compute_argument_addresses, @function
compute_argument_addresses:
.LFB31:
	.loc 1 1664 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$80, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1665 0
	cmpl	$0, 12(%ebp)
	je	.L647
.LBB15:
	.loc 1 1667 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1668 0
	movl	$0, -24(%ebp)
	.loc 1 1670 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L600
	.loc 1 1671 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L600:
	.loc 1 1673 0
	movl	$0, -28(%ebp)
	jmp	.L602
.L603:
.LBB16:
	.loc 1 1675 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L604
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -72(%ebp)
	jmp	.L606
.L604:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L607
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -68(%ebp)
	jmp	.L609
.L607:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -68(%ebp)
.L609:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -72(%ebp)
.L606:
	movl	-72(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 1676 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L610
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -64(%ebp)
	jmp	.L612
.L610:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L613
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	48(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -60(%ebp)
	jmp	.L615
.L613:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	48(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -60(%ebp)
.L615:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -64(%ebp)
.L612:
	movl	-64(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 1680 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L616
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L618
.L616:
	.loc 1 1683 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L619
	.loc 1 1684 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	jmp	.L621
.L619:
	.loc 1 1686 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L622
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L622
	movl	$5, -56(%ebp)
	jmp	.L625
.L622:
	movl	$4, -56(%ebp)
.L625:
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
.L621:
	.loc 1 1688 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1689 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	8(%ebp), %esi
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 72(%esi)
	.loc 1 1690 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L626
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L626
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L626
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L630
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L630
.L626:
	movl	$64, -52(%ebp)
	jmp	.L632
.L630:
	movl	$32, -52(%ebp)
.L632:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	-52(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1691 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 1694 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L633
	.loc 1 1695 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	jmp	.L635
.L633:
	.loc 1 1697 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L636
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L636
	movl	$5, -48(%ebp)
	jmp	.L639
.L636:
	movl	$4, -48(%ebp)
.L639:
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
.L635:
	.loc 1 1699 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1700 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	8(%ebp), %esi
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 76(%esi)
	.loc 1 1701 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L640
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L640
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L640
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L644
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L644
.L640:
	movl	$64, -44(%ebp)
	jmp	.L646
.L644:
	movl	$32, -44(%ebp)
.L646:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1702 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 1709 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 1710 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L618:
.LBE16:
	.loc 1 1673 0
	addl	$1, -28(%ebp)
.L602:
	movl	-28(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L603
.L647:
.LBE15:
	.loc 1 1713 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	compute_argument_addresses, .-compute_argument_addresses
	.type	rtx_for_function_call, @function
rtx_for_function_call:
.LFB32:
	.loc 1 1727 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$36, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1731 0
	cmpl	$0, 8(%ebp)
	je	.L649
	.loc 1 1735 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L651
	.loc 1 1737 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
	.loc 1 1738 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L651:
	.loc 1 1742 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L653
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L655
.L653:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L655:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L656
.L649:
.LBB17:
	.loc 1 1748 0
	call	push_temp_slots@PLT
	.loc 1 1749 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1751 0
	call	pop_temp_slots@PLT
	.loc 1 1752 0
	call	emit_queue@PLT
.L656:
.LBE17:
	.loc 1 1754 0
	movl	-12(%ebp), %eax
	.loc 1 1755 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	rtx_for_function_call, .-rtx_for_function_call
	.type	load_register_parameters, @function
load_register_parameters:
.LFB33:
	.loc 1 1770 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%esi
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$112, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1776 0
	movl	$0, -28(%ebp)
	jmp	.L659
.L660:
.LBB18:
	.loc 1 1780 0
	movl	20(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L661
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L663
.L661:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
.L663:
	movl	-92(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1781 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1784 0
	cmpl	$0, -20(%ebp)
	je	.L664
	.loc 1 1790 0
	cmpl	$0, -16(%ebp)
	jne	.L666
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L668
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L670
	movl	$7, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L672
.L670:
	movl	$3, -72(%ebp)
	movl	$0, -68(%ebp)
.L672:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L673
	movl	$8, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L675
.L673:
	movl	$4, -56(%ebp)
	movl	$0, -52(%ebp)
.L675:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -84(%ebp)
	jmp	.L676
.L668:
	movl	$-1, -84(%ebp)
.L676:
	movl	-84(%ebp), %edx
	movl	%edx, -88(%ebp)
	jmp	.L677
.L666:
	movl	-16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L677:
	movl	-88(%ebp), %edx
	movl	%edx, -12(%ebp)
	.loc 1 1799 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L678
	.loc 1 1800 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_group_load@PLT
	jmp	.L680
.L678:
	.loc 1 1807 0
	cmpl	$-1, -12(%ebp)
	jne	.L681
	.loc 1 1808 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L680
.L681:
	.loc 1 1813 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L683
	.loc 1 1814 0
	movl	$0, -24(%ebp)
	jmp	.L685
.L686:
	.loc 1 1815 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 1814 0
	addl	$1, -24(%ebp)
.L685:
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	88(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L686
	jmp	.L680
.L683:
	.loc 1 1818 0
	cmpl	$0, -16(%ebp)
	je	.L688
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L680
.L688:
	.loc 1 1819 0
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	-28(%ebp), %eax
	imull	$104, %eax, %eax
	addl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	move_block_to_reg@PLT
.L680:
	.loc 1 1825 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L690
	.loc 1 1826 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	use_group_regs@PLT
	jmp	.L664
.L690:
	.loc 1 1827 0
	cmpl	$-1, -12(%ebp)
	jne	.L692
	.loc 1 1828 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
	jmp	.L664
.L692:
	.loc 1 1830 0
	cmpl	$0, -12(%ebp)
	je	.L694
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L696
.L694:
	movl	$1, -44(%ebp)
.L696:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	use_regs@PLT
.L664:
.LBE18:
	.loc 1 1776 0
	addl	$1, -28(%ebp)
.L659:
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L660
	.loc 1 1833 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE33:
	.size	load_register_parameters, .-load_register_parameters
	.section	.rodata
	.align 4
.LC16:
	.string	"inlining failed in call to `%s'"
.LC17:
	.string	"called from here"
	.text
	.type	try_to_integrate, @function
try_to_integrate:
.LFB34:
	.loc 1 1846 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$84, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1850 0
	movl	$0, -40(%ebp)
	.loc 1 1851 0
	movl	$0, -24(%ebp)
	.loc 1 1857 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L700
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L702
.L700:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L703
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L705
.L703:
	movl	$4, -68(%ebp)
	jmp	.L706
.L705:
	movl	$8, -68(%ebp)
.L706:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L707
	movl	$8, -64(%ebp)
	jmp	.L709
.L707:
	movl	$4, -64(%ebp)
.L709:
	movl	-68(%ebp), %eax
	imull	-64(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L710
.L702:
	movl	$0, -72(%ebp)
.L710:
	movl	-72(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1861 0
	call	get_last_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1863 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 1866 0
	movl	$-1, -36(%ebp)
	.loc 1 1873 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 1876 0
	cmpl	$-1, -36(%ebp)
	je	.L711
	.loc 1 1884 0
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L713
.L714:
	.loc 1 1885 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L715
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L717
.L715:
	.loc 1 1884 0
	subl	$1, -28(%ebp)
.L713:
	cmpl	$0, -28(%ebp)
	jns	.L714
.L717:
	.loc 1 1888 0
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L718
	cmpl	$0, -28(%ebp)
	js	.L720
.L718:
.LBB19:
	.loc 1 1891 0
	cmpl	$0, -32(%ebp)
	je	.L721
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L723
.L721:
	call	get_insns@PLT
	movl	%eax, -60(%ebp)
.L723:
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1892 0
	movl	$0, -16(%ebp)
	.loc 1 1899 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L724
	.loc 1 1900 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L726
.L727:
	.loc 1 1901 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L724
	.loc 1 1900 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L726:
	cmpl	$0, -16(%ebp)
	jne	.L727
.L724:
	.loc 1 1904 0
	cmpl	$0, -16(%ebp)
	je	.L720
.LBB20:
	.loc 1 1924 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	44(%eax), %eax
	addl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1926 0
	call	start_sequence@PLT
	.loc 1 1927 0
	movl	$0, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
	.loc 1 1928 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	.loc 1 1930 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1931 0
	call	end_sequence@PLT
	.loc 1 1932 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1933 0
	movl	-40(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
.L720:
.LBE20:
.LBE19:
	.loc 1 1941 0
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L730
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L730
	.loc 1 1942 0
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L733
.L730:
	.loc 1 1943 0
	movl	-36(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L733
.L711:
	.loc 1 1949 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L734
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L734
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L734
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L734
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L734
	.loc 1 1952 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1953 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L734:
	.loc 1 1955 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1956 0
	movl	$-1, -56(%ebp)
.L733:
	movl	-56(%ebp), %eax
	.loc 1 1957 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	try_to_integrate, .-try_to_integrate
	.type	combine_pending_stack_adjustment_and_call, @function
combine_pending_stack_adjustment_and_call:
.LFB35:
	.loc 1 1975 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	pushl	%edi
.LCFI96:
	pushl	%esi
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$20, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1983 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1994 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, -24(%ebp)
	sbbl	%edx, -20(%ebp)
	.loc 1 1997 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2000 0
	cmpl	$1, 16(%ebp)
	jle	.L742
	.loc 1 2002 0
	cmpl	$0, -20(%ebp)
	js	.L744
	cmpl	$0, -20(%ebp)
	jg	.L746
	cmpl	$0, -24(%ebp)
	jbe	.L744
.L746:
	.loc 1 2003 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	-24(%ebp), %eax
	sbbl	-20(%ebp), %edx
	subl	%eax, -32(%ebp)
	sbbl	%edx, -28(%ebp)
	jmp	.L742
.L744:
	.loc 1 2005 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	addl	%eax, -32(%ebp)
	adcl	%edx, -28(%ebp)
.L742:
	.loc 1 2012 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-32(%ebp), %esi
	sbbl	-28(%ebp), %edi
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 2015 0
	movl	-32(%ebp), %eax
	.loc 1 2016 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	combine_pending_stack_adjustment_and_call, .-combine_pending_stack_adjustment_and_call
	.type	check_sibcall_argument_overlap_1, @function
check_sibcall_argument_overlap_1:
.LFB36:
	.loc 1 2027 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$40, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2033 0
	cmpl	$0, 8(%ebp)
	jne	.L749
	.loc 1 2034 0
	movl	$0, -48(%ebp)
	jmp	.L751
.L749:
	.loc 1 2036 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2038 0
	cmpl	$76, -32(%ebp)
	jne	.L752
	.loc 1 2040 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L754
	.loc 1 2041 0
	movl	$0, -28(%ebp)
	jmp	.L756
.L754:
	.loc 1 2042 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L757
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L757
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L757
	.loc 1 2046 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2042 0
	jmp	.L756
.L757:
	.loc 1 2048 0
	movl	$0, -48(%ebp)
	jmp	.L751
.L756:
	.loc 1 2054 0
	movl	$0, -20(%ebp)
	jmp	.L761
.L762:
	.loc 1 2055 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	stored_args_map@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L763
	movl	stored_args_map@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-28(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L781
	movl	%edi, %esi
	xorl	%edi, %edi
.L781:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L763
	.loc 1 2057 0
	movl	$1, -48(%ebp)
	jmp	.L751
.L763:
	.loc 1 2054 0
	addl	$1, -20(%ebp)
.L761:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	ja	.L762
	.loc 1 2059 0
	movl	$0, -48(%ebp)
	jmp	.L751
.L752:
	.loc 1 2063 0
	movl	-32(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2064 0
	movl	$0, -28(%ebp)
	jmp	.L767
.L768:
	.loc 1 2066 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L769
	.loc 1 2068 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	check_sibcall_argument_overlap_1
	testl	%eax, %eax
	je	.L773
	.loc 1 2069 0
	movl	$1, -48(%ebp)
	jmp	.L751
.L769:
	.loc 1 2071 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L773
	.loc 1 2073 0
	movl	$0, -24(%ebp)
	jmp	.L775
.L776:
	.loc 1 2074 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	check_sibcall_argument_overlap_1
	testl	%eax, %eax
	je	.L777
	.loc 1 2075 0
	movl	$1, -48(%ebp)
	jmp	.L751
.L777:
	.loc 1 2073 0
	addl	$1, -24(%ebp)
.L775:
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L776
.L773:
	.loc 1 2064 0
	addl	$1, -28(%ebp)
	addl	$1, -16(%ebp)
.L767:
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jg	.L768
	.loc 1 2078 0
	movl	$0, -48(%ebp)
.L751:
	movl	-48(%ebp), %eax
	.loc 1 2079 0
	addl	$40, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	check_sibcall_argument_overlap_1, .-check_sibcall_argument_overlap_1
	.type	check_sibcall_argument_overlap, @function
check_sibcall_argument_overlap:
.LFB37:
	.loc 1 2091 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%edi
.LCFI108:
	pushl	%esi
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$44, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2094 0
	cmpl	$0, 8(%ebp)
	jne	.L783
	.loc 1 2095 0
	call	get_insns@PLT
	movl	%eax, 8(%ebp)
	jmp	.L786
.L783:
	.loc 1 2097 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2099 0
	jmp	.L786
.L787:
	.loc 1 2100 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L788
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	check_sibcall_argument_overlap_1
	testl	%eax, %eax
	jne	.L790
.L788:
	.loc 1 2099 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L786:
	cmpl	$0, 8(%ebp)
	jne	.L787
.L790:
	.loc 1 2107 0
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2110 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L791
.L792:
	.loc 1 2111 0
	movl	stored_args_map@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	stored_args_map@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L795
	movl	%esi, %edi
	xorl	%esi, %esi
.L795:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2110 0
	addl	$1, -24(%ebp)
.L791:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L792
	.loc 1 2112 0
	cmpl	$0, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 2113 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	check_sibcall_argument_overlap, .-check_sibcall_argument_overlap
	.section	.rodata
	.type	__FUNCTION__.16353, @object
	.size	__FUNCTION__.16353, 16
__FUNCTION__.16353:
	.string	"fix_unsafe_tree"
	.text
	.type	fix_unsafe_tree, @function
fix_unsafe_tree:
.LFB38:
	.loc 1 2118 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$36, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2119 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unsafe_for_reeval@PLT
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L799
	cmpl	$2, -24(%ebp)
	je	.L800
	cmpl	$0, -24(%ebp)
	je	.L801
	jmp	.L797
.L799:
	.loc 1 2125 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unsave_expr@PLT
	movl	%eax, 8(%ebp)
	.loc 1 2126 0
	jmp	.L801
.L800:
.LBB21:
	.loc 1 2131 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2132 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 2134 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2136 0
	jmp	.L801
.L797:
.LBE21:
	.loc 1 2139 0
	leal	__FUNCTION__.16353@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2139, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L801:
	.loc 1 2141 0
	movl	8(%ebp), %eax
	.loc 1 2142 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	fix_unsafe_tree, .-fix_unsafe_tree
	.section	.rodata
	.type	__FUNCTION__.16414, @object
	.size	__FUNCTION__.16414, 12
__FUNCTION__.16414:
	.string	"expand_call"
	.local	currently_expanding_call.16366
	.comm	currently_expanding_call.16366,4,4
.LC18:
	.string	"can't inline call to `%s'"
	.align 4
.LC19:
	.string	"function call has aggregate value"
.LC20:
	.string	"__bb_fork_func"
	.text
.globl expand_call
	.type	expand_call, @function
expand_call:
.LFB39:
	.loc 1 2155 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%edi
.LCFI118:
	pushl	%esi
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$652, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -420(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -424(%ebp)
	.loc 1 2155 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 2160 0
	movl	-420(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -264(%ebp)
	.loc 1 2164 0
	movl	$0, -256(%ebp)
	.loc 1 2166 0
	movl	$0, -252(%ebp)
	.loc 1 2168 0
	movl	$0, -248(%ebp)
	.loc 1 2173 0
	movl	$0, -240(%ebp)
	.loc 1 2175 0
	movl	$1, -232(%ebp)
	.loc 1 2176 0
	movl	$1, -228(%ebp)
	.loc 1 2184 0
	movl	$0, -216(%ebp)
	.loc 1 2188 0
	movl	$0, -212(%ebp)
	.loc 1 2192 0
	movl	$0, -328(%ebp)
	movl	$0, -324(%ebp)
	.loc 1 2195 0
	movl	$0, -208(%ebp)
	.loc 1 2225 0
	movl	$1, -272(%ebp)
	.loc 1 2228 0
	movl	$0, -188(%ebp)
	.loc 1 2232 0
	movl	$0, -184(%ebp)
	.loc 1 2235 0
	movl	$0, -276(%ebp)
	.loc 1 2237 0
	movl	$0, -180(%ebp)
	.loc 1 2241 0
	movl	$-1, -280(%ebp)
	.loc 1 2242 0
	movl	$0, -176(%ebp)
	.loc 1 2245 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	movl	%eax, -172(%ebp)
	.loc 1 2246 0
	movl	stack_usage_map@GOTOFF(%ebx), %eax
	movl	%eax, -168(%ebp)
	.loc 1 2247 0
	movl	$0, -164(%ebp)
	.loc 1 2249 0
	movl	$0, -288(%ebp)
	.loc 1 2250 0
	movl	$0, -292(%ebp)
	.loc 1 2251 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	.loc 1 2254 0
	movl	-420(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 2255 0
	movl	-420(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 2263 0
	movl	-420(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L804
	.loc 1 2264 0
	movl	-276(%ebp), %eax
	orl	$16, %eax
	movl	%eax, -276(%ebp)
.L804:
	.loc 1 2269 0
	movl	-420(%ebp), %eax
	movl	%eax, (%esp)
	call	get_callee_fndecl@PLT
	movl	%eax, -240(%ebp)
	.loc 1 2270 0
	cmpl	$0, -240(%ebp)
	je	.L806
	.loc 1 2272 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L808
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -240(%ebp)
	je	.L808
	movl	-240(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L808
	movl	-240(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L808
	movl	-240(%ebp), %eax
	movl	96(%eax), %eax
	movl	248(%eax), %eax
	testl	%eax, %eax
	je	.L808
	.loc 1 2277 0
	movl	$1, -180(%ebp)
	.loc 1 2272 0
	jmp	.L814
.L808:
	.loc 1 2278 0
	movl	-240(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L814
	.loc 1 2285 0
	movl	-240(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L816
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L816
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L816
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L816
	.loc 1 2288 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 2289 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L816:
	.loc 1 2291 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	68(%eax), %edx
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L814:
	.loc 1 2294 0
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	flags_from_decl_or_type
	movl	%eax, %edx
	movl	-276(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -276(%ebp)
	jmp	.L821
.L806:
	.loc 1 2300 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	flags_from_decl_or_type
	movl	%eax, %edx
	movl	-276(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -276(%ebp)
.L821:
	.loc 1 2306 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L822
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L824
.L822:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L825
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L827
.L825:
	movl	$4, -548(%ebp)
	jmp	.L828
.L827:
	movl	$8, -548(%ebp)
.L828:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L829
	movl	$8, -544(%ebp)
	jmp	.L831
.L829:
	movl	$4, -544(%ebp)
.L831:
	movl	-548(%ebp), %edx
	imull	-544(%ebp), %edx
	movl	%edx, -552(%ebp)
	jmp	.L832
.L824:
	movl	$0, -552(%ebp)
.L832:
	movl	-552(%ebp), %ecx
	movl	%ecx, -188(%ebp)
	.loc 1 2317 0
	movl	warn_aggregate_return@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L833
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L835
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L835
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L835
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L835
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L833
.L835:
	.loc 1 2318 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L833:
	.loc 1 2323 0
	movl	-420(%ebp), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	je	.L840
	.loc 1 2326 0
	movl	-276(%ebp), %eax
	andl	$-4610, %eax
	movl	%eax, -276(%ebp)
	.loc 1 2343 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -328(%ebp)
	movl	%edx, -324(%ebp)
	.loc 1 2345 0
	cmpl	$0, -424(%ebp)
	je	.L842
	movl	-424(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L842
	.loc 1 2346 0
	movl	-424(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -216(%ebp)
	.loc 1 2345 0
	jmp	.L840
.L842:
.LBB22:
	.loc 1 2352 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -140(%ebp)
	.loc 1 2354 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_temp_addr_taken@PLT
	.loc 1 2355 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -216(%ebp)
	.loc 1 2356 0
	movl	$0, -424(%ebp)
.L840:
.LBE22:
	.loc 1 2364 0
	cmpl	$0, -180(%ebp)
	je	.L845
.LBB23:
	.loc 1 2368 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	try_to_integrate
	movl	%eax, -136(%ebp)
	.loc 1 2369 0
	cmpl	$-1, -136(%ebp)
	je	.L845
	.loc 1 2370 0
	movl	-136(%ebp), %esi
	movl	%esi, -540(%ebp)
	jmp	.L848
.L845:
.LBE23:
	.loc 1 2374 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L849
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L849
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L852
.L849:
	movl	$64, -536(%ebp)
	movl	$0, -532(%ebp)
	jmp	.L853
.L852:
	movl	$128, -536(%ebp)
	movl	$0, -532(%ebp)
.L853:
	movl	-536(%ebp), %eax
	movl	-532(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	.loc 1 2377 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -244(%ebp)
	.loc 1 2378 0
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L854
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L854
	.loc 1 2379 0
	leal	__FUNCTION__.16414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2379, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L854:
	.loc 1 2380 0
	movl	-244(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -244(%ebp)
	.loc 1 2384 0
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	special_function_p
	movl	%eax, %edx
	movl	-276(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -276(%ebp)
	.loc 1 2386 0
	movl	-276(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L857
	.loc 1 2387 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$64, %eax
	movb	%al, 296(%edx)
.L857:
	.loc 1 2391 0
	cmpl	$0, -216(%ebp)
	je	.L859
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L859
.LBB24:
	.loc 1 2403 0
	movl	-216(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L862
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L864
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	-216(%ebp), %eax
	jne	.L864
.L862:
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_addr_to_reg@PLT
	movl	%eax, -524(%ebp)
	jmp	.L866
.L864:
	movl	-216(%ebp), %edx
	movl	%edx, -524(%ebp)
.L866:
	movl	-524(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	.loc 1 2405 0
	movl	-244(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_tree@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-264(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -264(%ebp)
	.loc 1 2410 0
	movl	$1, -212(%ebp)
.L859:
.LBE24:
	.loc 1 2414 0
	movl	-264(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	$0, -204(%ebp)
	jmp	.L867
.L868:
	.loc 1 2415 0
	addl	$1, -204(%ebp)
	.loc 1 2414 0
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
.L867:
	cmpl	$0, -152(%ebp)
	jne	.L868
	.loc 1 2433 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L870
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L870
	movl	-244(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L870
	.loc 1 2436 0
	movl	-244(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, -520(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L874
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L876
.L874:
	movl	$1, -516(%ebp)
	jmp	.L877
.L876:
	movl	$0, -516(%ebp)
.L877:
	movl	-520(%ebp), %eax
	subl	-516(%ebp), %eax
	addl	-212(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 2433 0
	jmp	.L878
.L870:
	.loc 1 2444 0
	movl	-204(%ebp), %eax
	movl	%eax, -200(%ebp)
.L878:
	.loc 1 2452 0
	movl	$0, 8(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-416(%ebp), %eax
	movl	%eax, (%esp)
	call	init_cumulative_args@PLT
	.loc 1 2455 0
	movl	-204(%ebp), %eax
	imull	$104, %eax, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	60(%esp), %esi
	movl	%esi, -512(%ebp)
	movl	-512(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -512(%ebp)
	movl	-512(%ebp), %edi
	movl	%edi, -196(%ebp)
	.loc 1 2456 0
	movl	-204(%ebp), %eax
	imull	$104, %eax, %edx
	movl	-196(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2460 0
	leal	-276(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-292(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-416(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_argument_information
	.loc 1 2466 0
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	.L879
	.loc 1 2473 0
	movl	-276(%ebp), %eax
	andb	$239, %ah
	movl	%eax, -276(%ebp)
	.loc 1 2474 0
	movl	$1, -272(%ebp)
.L879:
	.loc 1 2478 0
	movl	-272(%ebp), %edx
	leal	-340(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finalize_must_preallocate
	movl	%eax, -272(%ebp)
	.loc 1 2486 0
	cmpl	$0, -216(%ebp)
	je	.L881
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L883
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L881
.L883:
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	.L881
	.loc 1 2492 0
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -216(%ebp)
.L881:
	.loc 1 2505 0
	movl	currently_expanding_call.16366@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, currently_expanding_call.16366@GOTOFF(%ebx)
	movl	currently_expanding_call.16366@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L886
	movl	flag_optimize_sibling_calls@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L886
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L886
	movl	$1, (%esp)
	call	any_pending_cleanups@PLT
	testl	%eax, %eax
	jne	.L886
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	.L891
.L886:
	.loc 1 2510 0
	movl	$0, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
.L891:
	.loc 1 2513 0
	cmpl	$0, -228(%ebp)
	je	.L892
	movl	-148(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L892
	movl	-148(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L895
.L892:
	.loc 1 2516 0
	movl	$0, -228(%ebp)
.L895:
	.loc 1 2551 0
	movl	$0, -232(%ebp)
	.loc 1 2553 0
	cmpl	$0, -232(%ebp)
	jne	.L896
	cmpl	$0, -228(%ebp)
	je	.L898
.L896:
.LBB25:
	.loc 1 2556 0
	movl	$0, -264(%ebp)
	.loc 1 2580 0
	movl	$-1, -124(%ebp)
	.loc 1 2581 0
	movl	-204(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -144(%ebp)
	.loc 1 2582 0
	movl	$-1, -128(%ebp)
	.loc 1 2585 0
	jmp	.L899
.L900:
	.loc 1 2587 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	-196(%ebp), %esi
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fix_unsafe_tree
	movl	%eax, (%esi)
	.loc 1 2591 0
	cmpl	$0, -228(%ebp)
	je	.L901
	.loc 1 2592 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	-264(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -264(%ebp)
.L901:
	.loc 1 2585 0
	movl	-124(%ebp), %eax
	addl	%eax, -144(%ebp)
.L899:
	movl	-144(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jne	.L900
	.loc 1 2595 0
	cmpl	$0, -240(%ebp)
	jne	.L904
	.loc 1 2596 0
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_unsafe_tree
	movl	%eax, -148(%ebp)
.L904:
	.loc 1 2599 0
	movl	$1, (%esp)
	call	any_pending_cleanups@PLT
	testl	%eax, %eax
	je	.L898
	.loc 1 2600 0
	movl	$0, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
.L898:
.LBE25:
	.loc 1 2605 0
	cmpl	$0, -228(%ebp)
	je	.L907
.LBB26:
	.loc 1 2611 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2612 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 2616 0
	call	emit_queue@PLT
	.loc 1 2622 0
	call	start_sequence@PLT
	.loc 1 2628 0
	call	expand_start_target_temps@PLT
	.loc 1 2629 0
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_tail_recursion@PLT
	testl	%eax, %eax
	je	.L909
	.loc 1 2631 0
	movl	$1, (%esp)
	call	any_pending_cleanups@PLT
	testl	%eax, %eax
	je	.L911
	.loc 1 2632 0
	movl	$0, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
	jmp	.L909
.L911:
	.loc 1 2634 0
	call	get_insns@PLT
	movl	%eax, -256(%ebp)
.L909:
	.loc 1 2636 0
	call	expand_end_target_temps@PLT
	.loc 1 2637 0
	call	end_sequence@PLT
	.loc 1 2641 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2642 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 8(%edx)
.L907:
.LBE26:
	.loc 1 2645 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L913
	movl	-276(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L913
	.loc 1 2654 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L916
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L916
	movl	$5, -508(%ebp)
	jmp	.L919
.L916:
	movl	$4, -508(%ebp)
.L919:
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-508(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	%eax, (%esp)
	call	emit_library_call@PLT
.L913:
	.loc 1 2662 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	284(%eax), %eax
	movl	%eax, -504(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -500(%ebp)
	movl	-500(%ebp), %ecx
	cmpl	-316(%ebp), %ecx
	jg	.L920
	movl	-500(%ebp), %esi
	cmpl	-316(%ebp), %esi
	jl	.L922
	movl	-504(%ebp), %edi
	cmpl	-320(%ebp), %edi
	jae	.L920
.L922:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -240(%ebp)
	je	.L920
	.loc 1 2664 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-320(%ebp), %eax
	movl	%eax, 284(%edx)
.L920:
	.loc 1 2666 0
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-556(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -584(%ebp)
	movl	%edx, -580(%ebp)
	movl	-584(%ebp), %esi
	movl	-580(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-560(%ebp), %eax
	adcl	-556(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -312(%ebp)
	movl	%edx, -308(%ebp)
	.loc 1 2668 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	132(%edx), %eax
	addl	$1, %eax
	movl	%eax, 132(%edx)
	.loc 1 2673 0
	movl	$0, -224(%ebp)
	jmp	.L924
.L925:
.LBB27:
	.loc 1 2675 0
	movl	$0, -112(%ebp)
	.loc 1 2680 0
	movl	$0, -108(%ebp)
	.loc 1 2681 0
	movl	$0, -104(%ebp)
	.loc 1 2685 0
	cmpl	$0, -224(%ebp)
	jne	.L926
	.loc 1 2687 0
	cmpl	$0, -232(%ebp)
	je	.L928
	.loc 1 2692 0
	call	emit_queue@PLT
	.loc 1 2696 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 2697 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -104(%ebp)
.L926:
	.loc 1 2699 0
	cmpl	$0, -224(%ebp)
	je	.L930
	.loc 1 2700 0
	movl	-276(%ebp), %eax
	andb	$254, %ah
	movl	%eax, -276(%ebp)
	jmp	.L932
.L930:
	.loc 1 2702 0
	movl	-276(%ebp), %eax
	orb	$1, %ah
	movl	%eax, -276(%ebp)
.L932:
	.loc 1 2706 0
	movl	$0, -184(%ebp)
	.loc 1 2707 0
	movl	$0, -296(%ebp)
	.loc 1 2713 0
	call	start_sequence@PLT
	.loc 1 2715 0
	cmpl	$0, -224(%ebp)
	jne	.L933
	.loc 1 2721 0
	call	expand_start_target_temps@PLT
.L933:
	.loc 1 2729 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	$31, %eax
	jg	.L935
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L937
	movl	-276(%ebp), %eax
	andl	$1032, %eax
	testl	%eax, %eax
	jne	.L935
.L937:
	cmpl	$0, -224(%ebp)
	jne	.L939
.L935:
	.loc 1 2733 0
	call	do_pending_stack_adjust@PLT
.L939:
	.loc 1 2737 0
	cmpl	$0, -224(%ebp)
	je	.L940
	movl	-276(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L940
	.loc 1 2738 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
.L940:
	.loc 1 2745 0
	cmpl	$0, -224(%ebp)
	je	.L943
	.loc 1 2746 0
	movl	-276(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	precompute_arguments
.L943:
	.loc 1 2750 0
	cmpl	$0, -224(%ebp)
	je	.L945
	movl	-276(%ebp), %eax
	andl	$4100, %eax
	testl	%eax, %eax
	je	.L945
	.loc 1 2751 0
	call	start_sequence@PLT
.L945:
	.loc 1 2753 0
	movl	-340(%ebp), %eax
	movl	%eax, -352(%ebp)
	movl	-336(%ebp), %eax
	movl	%eax, -348(%ebp)
	movl	-332(%ebp), %eax
	movl	%eax, -344(%ebp)
	.loc 1 2759 0
	cmpl	$0, -224(%ebp)
	je	.L948
	movl	-320(%ebp), %edx
	movl	%edx, -492(%ebp)
	jmp	.L950
.L948:
	movl	$0, -492(%ebp)
.L950:
	movl	-492(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_argument_block_size
	movl	%eax, -192(%ebp)
	.loc 1 2765 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -156(%ebp)
	.loc 1 2769 0
	cmpl	$0, -224(%ebp)
	jne	.L951
	.loc 1 2771 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -184(%ebp)
	.loc 1 2772 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -184(%ebp)
	.loc 1 2778 0
	movl	-340(%ebp), %eax
	movl	-336(%ebp), %edx
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, stored_args_map@GOTOFF(%ebx)
	.loc 1 2779 0
	movl	stored_args_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L953
.L951:
	.loc 1 2784 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	je	.L954
	.loc 1 2786 0
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	jne	.L956
	.loc 1 2788 0
	movl	$0, 8(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_save@PLT
	.loc 1 2789 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
	.loc 1 2790 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
	.loc 1 2794 0
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
	.loc 1 2795 0
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	$0, (%eax)
.L956:
	.loc 1 2797 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	jne	.L958
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -488(%ebp)
	jmp	.L960
.L958:
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	jne	.L961
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -484(%ebp)
	jmp	.L963
.L961:
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-344(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -484(%ebp)
.L963:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-484(%ebp), %edi
	movl	%edi, (%esp)
	call	expand_expr@PLT
	movl	%eax, -488(%ebp)
.L960:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-488(%ebp), %eax
	movl	%eax, (%esp)
	call	push_block@PLT
	movl	%eax, -184(%ebp)
	jmp	.L953
.L954:
.LBB28:
	.loc 1 2806 0
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	movl	%eax, -88(%ebp)
	.loc 1 2812 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-88(%ebp), %eax
	jge	.L964
	.loc 1 2813 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 44(%edx)
.L964:
	.loc 1 2815 0
	movl	-272(%ebp), %eax
	testl	%eax, %eax
	je	.L953
	.loc 1 2844 0
	movl	-172(%ebp), %edx
	movl	%edx, -564(%ebp)
	movl	-88(%ebp), %ecx
	movl	%ecx, -480(%ebp)
	movl	-564(%ebp), %esi
	cmpl	%esi, -480(%ebp)
	jge	.L967
	movl	-564(%ebp), %edi
	movl	%edi, -480(%ebp)
.L967:
	movl	-480(%ebp), %eax
	movl	%eax, highest_outgoing_arg_in_use@GOTOFF(%ebx)
	.loc 1 2847 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	60(%esp), %edx
	movl	%edx, -476(%ebp)
	movl	-476(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -476(%ebp)
	movl	-476(%ebp), %eax
	movl	%eax, stack_usage_map@GOTOFF(%ebx)
	.loc 1 2850 0
	cmpl	$0, -172(%ebp)
	je	.L968
	.loc 1 2851 0
	movl	-172(%ebp), %ecx
	movl	stack_usage_map@GOTOFF(%ebx), %eax
	movl	-168(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L968:
	.loc 1 2854 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	cmpl	%eax, -172(%ebp)
	je	.L970
	.loc 1 2855 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	subl	-172(%ebp), %eax
	movl	%eax, %ecx
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-172(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
.L970:
	.loc 1 2858 0
	movl	$0, -88(%ebp)
	.loc 1 2865 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -184(%ebp)
.L953:
.LBE28:
	.loc 1 2962 0
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_argument_addresses
	.loc 1 2988 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 2990 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_for_function_call
	movl	%eax, -260(%ebp)
	.loc 1 2993 0
	movl	$0, -220(%ebp)
	.loc 1 2994 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L972
	cmpl	$0, -216(%ebp)
	jne	.L972
	.loc 1 2997 0
	cmpl	$0, -208(%ebp)
	je	.L975
	.loc 1 2998 0
	cmpl	$0, -224(%ebp)
	sete	%al
	movzbl	%al, %esi
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_function_value@PLT
	movl	%eax, -220(%ebp)
	jmp	.L972
.L975:
	.loc 1 3001 0
	cmpl	$0, -224(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	hard_function_value@PLT
	movl	%eax, -220(%ebp)
.L972:
	.loc 1 3006 0
	leal	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, (%esp)
	call	precompute_register_parameters
	.loc 1 3011 0
	cmpl	$0, -224(%ebp)
	je	.L977
	.loc 1 3012 0
	leal	-284(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	save_fixed_argument_area
	movl	%eax, -176(%ebp)
.L977:
	.loc 1 3022 0
	movl	$0, -144(%ebp)
	jmp	.L979
.L980:
	.loc 1 3023 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L981
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L983
.L981:
.LBB29:
	.loc 1 3025 0
	call	get_last_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3027 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-276(%ebp), %ecx
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	-196(%ebp), %esi
	movl	-188(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	store_one_arg
	testl	%eax, %eax
	jne	.L984
	cmpl	$0, -224(%ebp)
	jne	.L983
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	check_sibcall_argument_overlap
	testl	%eax, %eax
	je	.L983
.L984:
	.loc 1 3033 0
	movl	$1, -112(%ebp)
.L983:
.LBE29:
	.loc 1 3022 0
	addl	$1, -144(%ebp)
.L979:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L980
	.loc 1 3041 0
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	store_unaligned_arguments_into_pseudos
	.loc 1 3045 0
	movl	-268(%ebp), %eax
	testl	%eax, %eax
	je	.L988
	.loc 1 3046 0
	movl	$0, -144(%ebp)
	jmp	.L990
.L991:
	.loc 1 3047 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L992
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L992
.LBB30:
	.loc 1 3049 0
	call	get_last_insn@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3051 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-276(%ebp), %ecx
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	movl	%eax, %esi
	addl	-196(%ebp), %esi
	movl	-188(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	store_one_arg
	testl	%eax, %eax
	jne	.L995
	cmpl	$0, -224(%ebp)
	jne	.L992
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	check_sibcall_argument_overlap
	testl	%eax, %eax
	je	.L992
.L995:
	.loc 1 3057 0
	movl	$1, -112(%ebp)
.L992:
.LBE30:
	.loc 1 3046 0
	addl	$1, -144(%ebp)
.L990:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L991
.L988:
	.loc 1 3062 0
	cmpl	$0, -184(%ebp)
	jne	.L998
	.loc 1 3063 0
	movl	-352(%ebp), %esi
	movl	-348(%ebp), %edi
	movl	%esi, -576(%ebp)
	movl	%edi, -572(%ebp)
	movl	-192(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-576(%ebp), %esi
	movl	-572(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, (%esp)
	call	anti_adjust_stack@PLT
.L998:
	.loc 1 3077 0
	cmpl	$0, -224(%ebp)
	je	.L1000
	cmpl	$0, -216(%ebp)
	je	.L1000
	cmpl	$0, -212(%ebp)
	jne	.L1000
	.loc 1 3079 0
	movl	$0, 4(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -472(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1004
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1004
	movl	$5, -468(%ebp)
	jmp	.L1007
.L1004:
	movl	$4, -468(%ebp)
.L1007:
	movl	-472(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, %edx
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3084 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1000
	.loc 1 3085 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L1000:
	.loc 1 3088 0
	cmpl	$0, -224(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	-268(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_call_address@PLT
	movl	%eax, -260(%ebp)
	.loc 1 3091 0
	movl	-276(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	load_register_parameters
	.loc 1 3094 0
	call	emit_queue@PLT
	.loc 1 3098 0
	call	get_last_insn@PLT
	movl	%eax, -96(%ebp)
	.loc 1 3108 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-416(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	%eax, -92(%ebp)
	.loc 1 3115 0
	cmpl	$0, -224(%ebp)
	je	.L1009
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1009
	.loc 1 3116 0
	leal	__FUNCTION__.16414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3116, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1009:
	.loc 1 3119 0
	movl	-276(%ebp), %edx
	movl	%edx, -588(%ebp)
	movl	-296(%ebp), %ecx
	movl	-352(%ebp), %esi
	movl	-348(%ebp), %edi
	movl	-192(%ebp), %eax
	movl	%eax, -584(%ebp)
	movl	-584(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -464(%ebp)
	movl	%edx, -460(%ebp)
	leal	-416(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-588(%ebp), %edx
	movl	%edx, 52(%esp)
	movl	%ecx, 48(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-328(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-464(%ebp), %esi
	movl	-460(%ebp), %edi
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_1
	.loc 1 3125 0
	cmpl	$0, -224(%ebp)
	je	.L1012
	movl	-276(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	jne	.L1012
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	-156(%ebp), %eax
	je	.L1012
	.loc 1 3128 0
	leal	__FUNCTION__.16414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3128, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1012:
	.loc 1 3134 0
	cmpl	$0, -224(%ebp)
	je	.L1016
	movl	-276(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1016
.LBB31:
	.loc 1 3138 0
	cmpl	$0, -220(%ebp)
	je	.L1019
	movl	-220(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1021
.L1019:
	.loc 1 3140 0
	call	get_insns@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3141 0
	call	end_sequence@PLT
	.loc 1 3142 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 3138 0
	jmp	.L1030
.L1021:
.LBB32:
	.loc 1 3146 0
	movl	$0, -68(%ebp)
	.loc 1 3147 0
	movl	-220(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3150 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1023
	.loc 1 3151 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L1023:
	.loc 1 3156 0
	movl	$0, -144(%ebp)
	jmp	.L1025
.L1026:
	.loc 1 3157 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3156 0
	addl	$1, -144(%ebp)
.L1025:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L1026
	.loc 1 3159 0
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3161 0
	call	get_insns@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3162 0
	call	end_sequence@PLT
	.loc 1 3164 0
	movl	-276(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1028
	.loc 1 3165 0
	movl	$0, 4(%esp)
	movl	$72, (%esp)
	call	gen_rtx_fmt_0@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -68(%ebp)
.L1028:
	.loc 1 3171 0
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
	.loc 1 3173 0
	movl	-64(%ebp), %eax
	movl	%eax, -220(%ebp)
	.loc 1 3134 0
	jmp	.L1030
.L1016:
.LBE32:
.LBE31:
	.loc 1 3176 0
	cmpl	$0, -224(%ebp)
	je	.L1030
	movl	-276(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1030
.LBB33:
	.loc 1 3178 0
	movl	-220(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3182 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1033
	.loc 1 3183 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1035
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1037
.L1035:
	movl	$128, -452(%ebp)
	jmp	.L1038
.L1037:
	movl	$64, -452(%ebp)
.L1038:
	movl	-452(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L1033:
	.loc 1 3185 0
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3189 0
	call	get_last_insn@PLT
	movl	%eax, -56(%ebp)
	.loc 1 3190 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$17, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 3194 0
	call	get_insns@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3195 0
	call	end_sequence@PLT
	.loc 1 3196 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 3197 0
	movl	-60(%ebp), %eax
	movl	%eax, -220(%ebp)
.L1030:
.LBE33:
	.loc 1 3204 0
	movl	-276(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	jne	.L1039
	cmpl	$0, -224(%ebp)
	jne	.L1041
.L1039:
.LBB34:
	.loc 1 3210 0
	call	get_last_insn@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3211 0
	jmp	.L1042
.L1043:
	.loc 1 3213 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3215 0
	movl	-48(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jne	.L1042
	.loc 1 3216 0
	leal	__FUNCTION__.16414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3216, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1042:
	.loc 1 3211 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1043
	.loc 1 3219 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 3222 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-156(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3223 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L1041:
.LBE34:
	.loc 1 3226 0
	movl	-276(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1046
	.loc 1 3227 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$32, %eax
	movb	%al, 296(%edx)
.L1046:
	.loc 1 3233 0
	cmpl	$0, -424(%ebp)
	je	.L1048
	movl	-424(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1048
	cmpl	$0, -216(%ebp)
	je	.L1048
	movl	-424(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1048
	.loc 1 3235 0
	movl	-424(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L1048:
	.loc 1 3241 0
	movl	$1, (%esp)
	call	any_pending_cleanups@PLT
	testl	%eax, %eax
	je	.L1053
	.loc 1 3243 0
	cmpl	$0, -424(%ebp)
	je	.L1055
	movl	-424(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1055
	movl	-424(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1055
	.loc 1 3245 0
	movl	$0, -424(%ebp)
.L1055:
	.loc 1 3246 0
	movl	$1, -112(%ebp)
.L1053:
	.loc 1 3249 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	testb	%al, %al
	je	.L1059
	cmpl	$0, 16(%ebp)
	je	.L1061
.L1059:
	.loc 1 3251 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -424(%ebp)
	.loc 1 3249 0
	jmp	.L1062
.L1061:
	.loc 1 3252 0
	cmpl	$0, -216(%ebp)
	je	.L1063
	.loc 1 3254 0
	cmpl	$0, -424(%ebp)
	je	.L1065
	movl	-424(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1062
.L1065:
	.loc 1 3256 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memory_address@PLT
	movl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -424(%ebp)
	.loc 1 3260 0
	movl	$1, 8(%esp)
	movl	-420(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	jmp	.L1062
.L1063:
	.loc 1 3263 0
	cmpl	$0, -208(%ebp)
	je	.L1068
	.loc 1 3268 0
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -424(%ebp)
	.loc 1 3270 0
	movl	$1, 8(%esp)
	movl	-420(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	jmp	.L1062
.L1068:
	.loc 1 3274 0
	movl	-220(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1070
	.loc 1 3276 0
	cmpl	$0, -424(%ebp)
	jne	.L1072
.LBB35:
	.loc 1 3281 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -448(%ebp)
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1074
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1074
	movl	$1, -444(%ebp)
	jmp	.L1077
.L1074:
	movl	$0, -444(%ebp)
.L1077:
	movl	-444(%ebp), %eax
	sall	$3, %eax
	orl	-448(%ebp), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3283 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -424(%ebp)
	.loc 1 3284 0
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	preserve_temp_slots@PLT
.L1072:
.LBE35:
	.loc 1 3287 0
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L1078
	.loc 1 3288 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_group_store@PLT
.L1078:
	.loc 1 3292 0
	movl	$1, -112(%ebp)
	jmp	.L1062
.L1070:
	.loc 1 3294 0
	cmpl	$0, -424(%ebp)
	je	.L1080
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	.L1080
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-220(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1080
	.loc 1 3304 0
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3294 0
	jmp	.L1062
.L1080:
	.loc 1 3306 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L1084
	.loc 1 3308 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_blkmode_from_reg@PLT
	movl	%eax, -424(%ebp)
	.loc 1 3311 0
	movl	$1, -112(%ebp)
	jmp	.L1062
.L1084:
	.loc 1 3314 0
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -424(%ebp)
.L1062:
	.loc 1 3319 0
	movl	-424(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1086
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L1086
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L1086
.LBB36:
	.loc 1 3323 0
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3324 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -300(%ebp)
	.loc 1 3325 0
	movl	$0, -36(%ebp)
	.loc 1 3328 0
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	$1, 12(%esp)
	leal	-300(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	promote_mode@PLT
	cmpl	%eax, %esi
	je	.L1090
	.loc 1 3330 0
	leal	__FUNCTION__.16414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3330, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1090:
	.loc 1 3332 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1092
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1094
.L1092:
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1094
	.loc 1 3336 0
	movl	-424(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -36(%ebp)
	.loc 1 3338 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1096
	.loc 1 3339 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1098
	movl	$8, -440(%ebp)
	jmp	.L1100
.L1098:
	movl	$4, -440(%ebp)
.L1100:
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-440(%ebp)
	movl	%eax, -436(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1101
	movl	$8, -432(%ebp)
	jmp	.L1103
.L1101:
	movl	$4, -432(%ebp)
.L1103:
	movl	-436(%ebp), %eax
	imull	-432(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1094
.L1096:
	.loc 1 3340 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L1094
	.loc 1 3341 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1105
	movl	$8, -428(%ebp)
	jmp	.L1107
.L1105:
	movl	$4, -428(%ebp)
.L1107:
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-428(%ebp)
	movl	%edx, -36(%ebp)
.L1094:
	.loc 1 3343 0
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-424(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -424(%ebp)
	.loc 1 3344 0
	movl	-424(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
.LBB37:
	.loc 1 3345 0
	movl	-424(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-300(%ebp), %eax
	testl	%eax, %eax
	jns	.L1108
	movl	-32(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$8, %edx
	movb	%dl, 3(%eax)
	jmp	.L1086
.L1108:
	movl	-32(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-9, %eax
	movb	%al, 3(%edx)
	movl	-300(%ebp), %eax
	andl	$1, %eax
	movl	-32(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
.L1086:
.LBE37:
.LBE36:
	.loc 1 3352 0
	movl	-288(%ebp), %eax
	testl	%eax, %eax
	je	.L1110
	movl	-276(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1110
	.loc 1 3354 0
	movl	-288(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_stack_restore@PLT
	.loc 1 3355 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-292(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3356 0
	movl	stack_arg_under_construction@GOT(%ebx), %edx
	movl	-164(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3357 0
	movl	-172(%ebp), %eax
	movl	%eax, highest_outgoing_arg_in_use@GOTOFF(%ebx)
	.loc 1 3358 0
	movl	-168(%ebp), %eax
	movl	%eax, stack_usage_map@GOTOFF(%ebx)
	.loc 1 3359 0
	movl	$1, -112(%ebp)
	.loc 1 3352 0
	jmp	.L1113
.L1110:
	.loc 1 3361 0
	cmpl	$0, -224(%ebp)
	je	.L1113
	.loc 1 3364 0
	cmpl	$0, -176(%ebp)
	je	.L1115
	.loc 1 3366 0
	movl	-280(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	restore_fixed_argument_area
.L1115:
	.loc 1 3372 0
	movl	$0, -144(%ebp)
	jmp	.L1117
.L1118:
	.loc 1 3373 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L1119
.LBB38:
	.loc 1 3375 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	80(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3379 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3381 0
	cmpl	$52, -28(%ebp)
	je	.L1121
	.loc 1 3382 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1119
.L1121:
	.loc 1 3384 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	80(%eax), %eax
	movl	$2, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
.L1119:
.LBE38:
	.loc 1 3372 0
	addl	$1, -144(%ebp)
.L1117:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L1118
	.loc 1 3389 0
	movl	-172(%ebp), %eax
	movl	%eax, highest_outgoing_arg_in_use@GOTOFF(%ebx)
	.loc 1 3390 0
	movl	-168(%ebp), %eax
	movl	%eax, stack_usage_map@GOTOFF(%ebx)
.L1113:
	.loc 1 3397 0
	movl	-276(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1124
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L1124
	.loc 1 3398 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$148, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	emit_stack_save@PLT
.L1124:
	.loc 1 3401 0
	movl	$0, -144(%ebp)
	jmp	.L1127
.L1128:
	.loc 1 3402 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	.L1129
	.loc 1 3403 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1129:
	.loc 1 3401 0
	addl	$1, -144(%ebp)
.L1127:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L1128
	.loc 1 3405 0
	cmpl	$0, -224(%ebp)
	jne	.L1132
	.loc 1 3410 0
	call	expand_end_target_temps@PLT
.L1132:
	.loc 1 3413 0
	call	get_insns@PLT
	movl	%eax, -100(%ebp)
	.loc 1 3414 0
	call	end_sequence@PLT
	.loc 1 3416 0
	cmpl	$0, -224(%ebp)
	jne	.L1134
	.loc 1 3418 0
	movl	-100(%ebp), %eax
	movl	%eax, -248(%ebp)
	.loc 1 3423 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3424 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3427 0
	movl	$0, -144(%ebp)
	jmp	.L1136
.L1137:
	.loc 1 3429 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 3430 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	$0, 84(%eax)
	.loc 1 3431 0
	movl	-144(%ebp), %eax
	imull	$104, %eax, %eax
	addl	-196(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 3427 0
	addl	$1, -144(%ebp)
.L1136:
	movl	-144(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L1137
	.loc 1 3434 0
	movl	stored_args_map@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L1139
.L1134:
	.loc 1 3437 0
	movl	-100(%ebp), %eax
	movl	%eax, -252(%ebp)
.L1139:
	.loc 1 3441 0
	cmpl	$0, -112(%ebp)
	je	.L928
	.loc 1 3442 0
	movl	$0, -248(%ebp)
.L928:
.LBE27:
	.loc 1 2673 0
	addl	$1, -224(%ebp)
.L924:
	cmpl	$1, -224(%ebp)
	jle	.L925
	.loc 1 3453 0
	movl	-252(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L1142
.L1143:
	.loc 1 3454 0
	movl	-236(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1144
	movl	-236(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L1144
	.loc 1 3456 0
	movl	$1, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_call_placeholder@PLT
.L1144:
	.loc 1 3453 0
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -236(%ebp)
.L1142:
	cmpl	$0, -236(%ebp)
	jne	.L1143
	.loc 1 3458 0
	movl	-248(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L1148
.L1149:
	.loc 1 3459 0
	movl	-236(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1150
	movl	-236(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L1150
	.loc 1 3461 0
	movl	$1, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_call_placeholder@PLT
.L1150:
	.loc 1 3458 0
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -236(%ebp)
.L1148:
	cmpl	$0, -236(%ebp)
	jne	.L1149
	.loc 1 3463 0
	movl	-256(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L1154
.L1155:
	.loc 1 3464 0
	movl	-236(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1156
	movl	-236(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L1156
	.loc 1 3466 0
	movl	$1, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_call_placeholder@PLT
.L1156:
	.loc 1 3463 0
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -236(%ebp)
.L1154:
	cmpl	$0, -236(%ebp)
	jne	.L1155
	.loc 1 3471 0
	cmpl	$0, -256(%ebp)
	jne	.L1160
	cmpl	$0, -248(%ebp)
	je	.L1162
.L1160:
	.loc 1 3479 0
	cmpl	$0, -256(%ebp)
	je	.L1163
	.loc 1 3480 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	180(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
.L1163:
	.loc 1 3481 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	180(%eax), %eax
	movl	%eax, 20(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$151, (%esp)
	call	gen_rtx_fmt_uuuu@PLT
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	.loc 1 3471 0
	jmp	.L1165
.L1162:
	.loc 1 3487 0
	movl	-252(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L1165:
	.loc 1 3489 0
	movl	currently_expanding_call.16366@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, currently_expanding_call.16366@GOTOFF(%ebx)
	.loc 1 3494 0
	movl	-276(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L1166
	.loc 1 3496 0
	call	clear_pending_stack_adjust@PLT
	.loc 1 3497 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 3498 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 3499 0
	call	save_stack_pointer@PLT
.L1166:
	.loc 1 3502 0
	movl	-424(%ebp), %edi
	movl	%edi, -540(%ebp)
.L848:
	movl	-540(%ebp), %eax
	.loc 1 3503 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1169
	call	__stack_chk_fail_local
.L1169:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	expand_call, .-expand_call
	.section	.rodata
	.type	__FUNCTION__.17638, @object
	.size	__FUNCTION__.17638, 26
__FUNCTION__.17638:
	.string	"emit_library_call_value_1"
	.text
	.type	emit_library_call_value_1, @function
emit_library_call_value_1:
.LFB40:
	.loc 1 3518 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%edi
.LCFI124:
	pushl	%esi
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$716, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -340(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -344(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 1 3518 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 3528 0
	movl	$0, -216(%ebp)
	.loc 1 3541 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -208(%ebp)
	.loc 1 3542 0
	movl	$0, -236(%ebp)
	.loc 1 3543 0
	movl	$0, -204(%ebp)
	.loc 1 3545 0
	movl	$0, -196(%ebp)
	.loc 1 3546 0
	movl	$0, -192(%ebp)
	.loc 1 3548 0
	movl	$0, -184(%ebp)
	.loc 1 3556 0
	movl	$-1, -168(%ebp)
	movl	$0, -164(%ebp)
	.loc 1 3557 0
	movl	$0, -160(%ebp)
	.loc 1 3561 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	movl	%eax, -156(%ebp)
	.loc 1 3562 0
	movl	stack_usage_map@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
	.loc 1 3568 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1171
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1173
.L1171:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1174
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1176
.L1174:
	movl	$4, -640(%ebp)
	jmp	.L1177
.L1176:
	movl	$8, -640(%ebp)
.L1177:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1178
	movl	$8, -636(%ebp)
	jmp	.L1180
.L1178:
	movl	$4, -636(%ebp)
.L1180:
	movl	-640(%ebp), %edx
	imull	-636(%ebp), %edx
	movl	%edx, -644(%ebp)
	jmp	.L1181
.L1173:
	movl	$0, -644(%ebp)
.L1181:
	movl	-644(%ebp), %ecx
	movl	%ecx, -184(%ebp)
	.loc 1 3573 0
	movl	$16, -188(%ebp)
	.loc 1 3575 0
	cmpl	$8, 20(%ebp)
	ja	.L1182
	movl	20(%ebp), %eax
	sall	$2, %eax
	movl	.L1192@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1192:
	.long	.L1182@GOTOFF
	.long	.L1184@GOTOFF
	.long	.L1185@GOTOFF
	.long	.L1186@GOTOFF
	.long	.L1187@GOTOFF
	.long	.L1188@GOTOFF
	.long	.L1189@GOTOFF
	.long	.L1190@GOTOFF
	.long	.L1191@GOTOFF
	.text
.L1184:
	.loc 1 3580 0
	orl	$1, -188(%ebp)
	.loc 1 3581 0
	jmp	.L1182
.L1185:
	.loc 1 3583 0
	orl	$512, -188(%ebp)
	.loc 1 3584 0
	jmp	.L1182
.L1186:
	.loc 1 3586 0
	orl	$4097, -188(%ebp)
	.loc 1 3587 0
	jmp	.L1182
.L1187:
	.loc 1 3589 0
	orl	$4608, -188(%ebp)
	.loc 1 3590 0
	jmp	.L1182
.L1188:
	.loc 1 3592 0
	orl	$2, -188(%ebp)
	.loc 1 3593 0
	jmp	.L1182
.L1189:
	.loc 1 3595 0
	movl	$2, -188(%ebp)
	.loc 1 3596 0
	jmp	.L1182
.L1190:
	.loc 1 3598 0
	movl	$2048, -188(%ebp)
	.loc 1 3599 0
	jmp	.L1182
.L1191:
	.loc 1 3601 0
	movl	$32, -188(%ebp)
.L1182:
	.loc 1 3604 0
	movl	-340(%ebp), %eax
	movl	%eax, -228(%ebp)
	.loc 1 3608 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	284(%eax), %eax
	movl	%eax, -632(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1193
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1193
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1196
.L1193:
	movl	$64, -628(%ebp)
	jmp	.L1197
.L1196:
	movl	$128, -628(%ebp)
.L1197:
	movl	-628(%ebp), %esi
	cmpl	%esi, -632(%ebp)
	jge	.L1198
	.loc 1 3609 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -624(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1200
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1200
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1203
.L1200:
	movl	$64, -620(%ebp)
	jmp	.L1204
.L1203:
	movl	$128, -620(%ebp)
.L1204:
	movl	-620(%ebp), %eax
	movl	-624(%ebp), %edi
	movl	%eax, 284(%edi)
.L1198:
	.loc 1 3613 0
	cmpl	$0, 24(%ebp)
	je	.L1205
	.loc 1 3615 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -172(%ebp)
	.loc 1 3616 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	je	.L1213
	.loc 1 3626 0
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	.loc 1 3627 0
	cmpl	$0, -344(%ebp)
	je	.L1209
	movl	-344(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1209
	.loc 1 3628 0
	movl	-344(%ebp), %eax
	movl	%eax, -204(%ebp)
	.loc 1 3627 0
	jmp	.L1212
.L1209:
	.loc 1 3630 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -204(%ebp)
.L1212:
	.loc 1 3633 0
	andl	$-4610, -188(%ebp)
	jmp	.L1213
.L1205:
	.loc 1 3637 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, -172(%ebp)
.L1213:
	.loc 1 3648 0
	movl	28(%ebp), %eax
	imull	$44, %eax, %eax
	addl	$44, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	60(%esp), %edx
	movl	%edx, -616(%ebp)
	movl	-616(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -616(%ebp)
	movl	-616(%ebp), %ecx
	movl	%ecx, -212(%ebp)
	.loc 1 3649 0
	movl	28(%ebp), %eax
	imull	$44, %eax, %eax
	addl	$44, %eax
	movl	%eax, %edx
	movl	-212(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 3654 0
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	init_cumulative_args@PLT
	.loc 1 3657 0
	movl	$0, -248(%ebp)
	movl	$0, -244(%ebp)
	.loc 1 3658 0
	movl	$0, -240(%ebp)
	.loc 1 3660 0
	movl	$0, -220(%ebp)
	.loc 1 3664 0
	movl	-188(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1214
	.loc 1 3665 0
	call	start_sequence@PLT
.L1214:
	.loc 1 3667 0
	call	push_temp_slots@PLT
	.loc 1 3671 0
	cmpl	$0, -204(%ebp)
	je	.L1265
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1265
	cmpl	$0, -196(%ebp)
	jne	.L1265
.LBB39:
	.loc 1 3673 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 3674 0
	addl	$1, 28(%ebp)
	.loc 1 3677 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1220
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1220
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1223
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1231
.L1223:
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1232
	movl	-148(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L1231
.L1232:
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1234
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1234
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1231
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1231
.L1234:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1220
	movl	-148(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	jne	.L1220
.L1231:
	.loc 1 3679 0
	movl	$0, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -148(%ebp)
.L1220:
	.loc 1 3681 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	addl	-212(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3682 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	-212(%ebp), %esi
	addl	%eax, %esi
	movl	%esi, -612(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1239
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1239
	movl	$5, -608(%ebp)
	jmp	.L1242
.L1239:
	movl	$4, -608(%ebp)
.L1242:
	movl	-608(%ebp), %eax
	movl	-612(%ebp), %edi
	movl	%eax, 4(%edi)
	.loc 1 3683 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 3685 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	-212(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -604(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1243
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1243
	movl	$5, -600(%ebp)
	jmp	.L1246
.L1243:
	movl	$4, -600(%ebp)
.L1246:
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-600(%ebp), %ecx
	movl	%ecx, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	-604(%ebp), %esi
	movl	%eax, 8(%esi)
	.loc 1 3687 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1247
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1247
	movl	$5, -596(%ebp)
	jmp	.L1250
.L1247:
	movl	$4, -596(%ebp)
.L1250:
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-596(%ebp), %edi
	movl	%edi, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_partial_nregs@PLT
	testl	%eax, %eax
	je	.L1251
	.loc 1 3688 0
	leal	__FUNCTION__.17638@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3688, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1251:
	.loc 1 3691 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	addl	$28, %eax
	movl	%eax, -592(%ebp)
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -588(%ebp)
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -584(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1253
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1253
	movl	$5, -580(%ebp)
	jmp	.L1256
.L1253:
	movl	$4, -580(%ebp)
.L1256:
	leal	-272(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-588(%ebp), %edx
	movl	%edx, 20(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-584(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-580(%ebp), %esi
	movl	%esi, (%esp)
	call	locate_and_pad_parm@PLT
	.loc 1 3700 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1257
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1257
	cmpl	$0, -184(%ebp)
	jle	.L1260
.L1257:
	.loc 1 3702 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L1260:
	.loc 1 3704 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1261
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1261
	movl	$5, -576(%ebp)
	jmp	.L1264
.L1261:
	movl	$4, -576(%ebp)
.L1264:
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-576(%ebp), %edi
	movl	%edi, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_advance@PLT
	.loc 1 3706 0
	addl	$1, -220(%ebp)
	.loc 1 3709 0
	jmp	.L1265
.L1266:
.LBE39:
.LBB40:
	.loc 1 3711 0
	movl	-348(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -348(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 3712 0
	movl	-348(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -348(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3716 0
	cmpl	$52, -140(%ebp)
	je	.L1267
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-140(%ebp), %eax
	je	.L1269
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1269
.L1267:
	.loc 1 3718 0
	leal	__FUNCTION__.17638@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3718, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1269:
	.loc 1 3731 0
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1271
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1271
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1274
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1282
.L1274:
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1283
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L1282
.L1283:
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1285
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1285
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1282
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1282
.L1285:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1271
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	jne	.L1271
.L1282:
	.loc 1 3733 0
	movl	$0, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -144(%ebp)
.L1271:
	.loc 1 3736 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	je	.L1290
.LBB41:
	.loc 1 3744 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1292
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	jne	.L1294
.L1292:
	movl	$1, -572(%ebp)
	jmp	.L1295
.L1294:
	movl	$0, -572(%ebp)
.L1295:
	movl	-572(%ebp), %eax
	movl	%eax, -132(%ebp)
	.loc 1 3748 0
	movl	-188(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1296
.LBB42:
	.loc 1 3750 0
	call	get_insns@PLT
	movl	%eax, -128(%ebp)
	.loc 1 3751 0
	call	end_sequence@PLT
	.loc 1 3752 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L1296:
.LBE42:
	.loc 1 3754 0
	andl	$-4610, -188(%ebp)
	.loc 1 3758 0
	movl	-188(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1298
	.loc 1 3760 0
	andl	$-2, -188(%ebp)
	.loc 1 3761 0
	orl	$512, -188(%ebp)
.L1298:
	.loc 1 3764 0
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$76, %al
	jne	.L1300
	cmpl	$0, -132(%ebp)
	jne	.L1300
	.loc 1 3765 0
	movl	-144(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 3764 0
	jmp	.L1303
.L1300:
	.loc 1 3766 0
	cmpl	$0, -132(%ebp)
	je	.L1304
	.loc 1 3768 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, -136(%ebp)
	.loc 1 3770 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1303
.L1304:
.LBB43:
	.loc 1 3774 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -124(%ebp)
	.loc 1 3776 0
	movl	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	%eax, %esi
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -136(%ebp)
.L1303:
.LBE43:
	.loc 1 3784 0
	movl	-236(%ebp), %esi
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -236(%ebp)
	.loc 1 3787 0
	cmpl	$0, -132(%ebp)
	je	.L1306
	.loc 1 3788 0
	movl	-236(%ebp), %esi
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -236(%ebp)
.L1306:
	.loc 1 3793 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1308
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1308
	movl	$5, -568(%ebp)
	jmp	.L1311
.L1308:
	movl	$4, -568(%ebp)
.L1311:
	movl	-568(%ebp), %edx
	movl	%edx, -140(%ebp)
	.loc 1 3794 0
	movl	-136(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -144(%ebp)
.L1290:
.LBE41:
	.loc 1 3798 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	addl	-212(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3799 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	addl	-212(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3801 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %esi
	addl	-212(%ebp), %esi
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	%eax, 8(%esi)
	.loc 1 3804 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %esi
	addl	-212(%ebp), %esi
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_partial_nregs@PLT
	movl	%eax, 12(%esi)
	.loc 1 3810 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	leal	28(%eax), %ecx
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	leal	16(%eax), %esi
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leal	-272(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_and_pad_parm@PLT
	.loc 1 3819 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1312
	.loc 1 3820 0
	leal	__FUNCTION__.17638@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3820, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1312:
	.loc 1 3822 0
	cmpl	$0, -184(%ebp)
	jne	.L1314
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1314
	.loc 1 3823 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	movl	-212(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -564(%ebp)
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	%esi, -560(%ebp)
	movl	%edi, -556(%ebp)
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -552(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1317
	movl	$8, -548(%ebp)
	jmp	.L1319
.L1317:
	movl	$4, -548(%ebp)
.L1319:
	movl	-552(%ebp), %eax
	imull	-548(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-564(%ebp), %edi
	movl	%eax, 28(%edi)
	movl	%edx, 32(%edi)
.L1314:
	.loc 1 3825 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1320
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1320
	cmpl	$0, -184(%ebp)
	jle	.L1323
.L1320:
	.loc 1 3827 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L1323:
	.loc 1 3829 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_advance@PLT
.LBE40:
	.loc 1 3709 0
	addl	$1, -220(%ebp)
.L1265:
	movl	-220(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1266
	.loc 1 3838 0
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external_libcall@PLT
	.loc 1 3840 0
	movl	-248(%ebp), %eax
	movl	%eax, -260(%ebp)
	movl	-244(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	-240(%ebp), %eax
	movl	%eax, -252(%ebp)
	.loc 1 3841 0
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, -656(%ebp)
	movl	%edx, -652(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-656(%ebp), %esi
	movl	-652(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -544(%ebp)
	movl	%edi, -540(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1325
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1325
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1328
.L1325:
	movl	$8, -536(%ebp)
	movl	$0, -532(%ebp)
	jmp	.L1329
.L1328:
	movl	$16, -536(%ebp)
	movl	$0, -532(%ebp)
.L1329:
	movl	-544(%ebp), %eax
	movl	-540(%ebp), %edx
	addl	-536(%ebp), %eax
	adcl	-532(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -528(%ebp)
	movl	%edi, -524(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1330
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1330
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1333
.L1330:
	movl	$8, -520(%ebp)
	movl	$0, -516(%ebp)
	jmp	.L1334
.L1333:
	movl	$16, -520(%ebp)
	movl	$0, -516(%ebp)
.L1334:
	movl	-520(%ebp), %eax
	movl	-516(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-528(%ebp), %edx
	movl	-524(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -512(%ebp)
	movl	%edx, -508(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1335
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1335
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1338
.L1335:
	movl	$8, -504(%ebp)
	movl	$0, -500(%ebp)
	jmp	.L1339
.L1338:
	movl	$16, -504(%ebp)
	movl	$0, -500(%ebp)
.L1339:
	movl	-508(%ebp), %ecx
	imull	-504(%ebp), %ecx
	movl	%ecx, -664(%ebp)
	movl	-500(%ebp), %edx
	imull	-512(%ebp), %edx
	addl	%edx, -664(%ebp)
	movl	-512(%ebp), %eax
	mull	-504(%ebp)
	movl	%eax, %esi
	movl	%edx, %edi
	addl	%edi, -664(%ebp)
	movl	-664(%ebp), %edi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -664(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -660(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	subl	-664(%ebp), %eax
	sbbl	-660(%ebp), %edx
	movl	%eax, -664(%ebp)
	movl	%edx, -660(%ebp)
	movl	-664(%ebp), %edx
	movl	-660(%ebp), %ecx
	movl	%edx, -248(%ebp)
	movl	%ecx, -244(%ebp)
	.loc 1 3848 0
	movl	-184(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	%esi, -496(%ebp)
	movl	%edi, -492(%ebp)
	movl	%eax, -488(%ebp)
	movl	%edx, -484(%ebp)
	movl	-492(%ebp), %edi
	cmpl	%edi, -484(%ebp)
	jg	.L1340
	movl	-492(%ebp), %eax
	cmpl	%eax, -484(%ebp)
	jl	.L1341
	movl	-496(%ebp), %edx
	cmpl	%edx, -488(%ebp)
	jae	.L1340
.L1341:
	movl	-496(%ebp), %esi
	movl	-492(%ebp), %edi
	movl	%esi, -488(%ebp)
	movl	%edi, -484(%ebp)
.L1340:
	movl	-488(%ebp), %eax
	movl	-484(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	.loc 1 3855 0
	movl	-248(%ebp), %edx
	movl	-244(%ebp), %ecx
	movl	%edx, -480(%ebp)
	movl	%ecx, -476(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -472(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -468(%ebp)
	movl	-468(%ebp), %esi
	cmpl	%esi, -476(%ebp)
	jl	.L1342
	movl	-468(%ebp), %edi
	cmpl	%edi, -476(%ebp)
	jg	.L1344
	movl	-472(%ebp), %eax
	cmpl	%eax, -480(%ebp)
	jbe	.L1342
.L1344:
	.loc 1 3856 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, 44(%ecx)
.L1342:
	.loc 1 3872 0
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, -180(%ebp)
	.loc 1 3885 0
	movl	-156(%ebp), %edx
	movl	%edx, -648(%ebp)
	movl	-180(%ebp), %ecx
	movl	%ecx, -460(%ebp)
	movl	-648(%ebp), %esi
	cmpl	%esi, -460(%ebp)
	jge	.L1345
	movl	-648(%ebp), %edi
	movl	%edi, -460(%ebp)
.L1345:
	movl	-460(%ebp), %eax
	movl	%eax, highest_outgoing_arg_in_use@GOTOFF(%ebx)
	.loc 1 3888 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	60(%esp), %edx
	movl	%edx, -456(%ebp)
	movl	-456(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -456(%ebp)
	movl	-456(%ebp), %eax
	movl	%eax, stack_usage_map@GOTOFF(%ebx)
	.loc 1 3890 0
	cmpl	$0, -156(%ebp)
	je	.L1346
	.loc 1 3891 0
	movl	-156(%ebp), %ecx
	movl	stack_usage_map@GOTOFF(%ebx), %eax
	movl	-152(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L1346:
	.loc 1 3894 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	cmpl	%eax, -156(%ebp)
	je	.L1348
	.loc 1 3895 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	subl	-156(%ebp), %eax
	movl	%eax, %ecx
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-156(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
.L1348:
	.loc 1 3897 0
	movl	$0, -180(%ebp)
	.loc 1 3904 0
	movl	virtuals_instantiated@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1350
	.loc 1 3905 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -216(%ebp)
	jmp	.L1352
.L1350:
	.loc 1 3907 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -216(%ebp)
.L1352:
	.loc 1 3928 0
	movl	$1, -224(%ebp)
	.loc 1 3929 0
	movl	$0, -232(%ebp)
	.loc 1 3944 0
	movl	$0, -220(%ebp)
	jmp	.L1353
.L1354:
	.loc 1 3947 0
	movl	highest_outgoing_arg_in_use@GOTOFF(%ebx), %eax
	cmpl	%eax, -220(%ebp)
	jge	.L1355
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-220(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1355
	.loc 1 3951 0
	cmpl	$-1, -168(%ebp)
	jne	.L1358
	.loc 1 3952 0
	movl	-220(%ebp), %eax
	movl	%eax, -168(%ebp)
.L1358:
	.loc 1 3954 0
	movl	-220(%ebp), %eax
	movl	%eax, -164(%ebp)
.L1355:
	.loc 1 3944 0
	addl	$1, -220(%ebp)
.L1353:
	movl	-220(%ebp), %eax
	cmpl	-184(%ebp), %eax
	jl	.L1354
	.loc 1 3957 0
	cmpl	$0, -168(%ebp)
	js	.L1361
.LBB44:
	.loc 1 3959 0
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -120(%ebp)
	.loc 1 3961 0
	movl	-120(%ebp), %eax
	sall	$3, %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -116(%ebp)
	.loc 1 3965 0
	movl	-116(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -448(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1363
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1365
.L1363:
	movl	$128, -444(%ebp)
	jmp	.L1366
.L1365:
	movl	$64, -444(%ebp)
.L1366:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1367
	movl	$8, -440(%ebp)
	jmp	.L1369
.L1367:
	movl	$4, -440(%ebp)
.L1369:
	movl	-444(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-440(%ebp)
	cmpl	%eax, -448(%ebp)
	jge	.L1370
	movl	-116(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -452(%ebp)
	jmp	.L1372
.L1370:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1373
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1375
.L1373:
	movl	$128, -436(%ebp)
	jmp	.L1376
.L1375:
	movl	$64, -436(%ebp)
.L1376:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1377
	movl	$8, -432(%ebp)
	jmp	.L1379
.L1377:
	movl	$4, -432(%ebp)
.L1379:
	movl	-436(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-432(%ebp)
	subl	$1, %eax
	movl	%eax, -452(%ebp)
.L1372:
	movl	-452(%ebp), %eax
	andl	-168(%ebp), %eax
	testl	%eax, %eax
	je	.L1380
	.loc 1 3967 0
	movl	$52, -116(%ebp)
.L1380:
	.loc 1 3975 0
	movl	-168(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -112(%ebp)
	.loc 1 3980 0
	cmpl	$52, -116(%ebp)
	jne	.L1382
	.loc 1 3982 0
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -160(%ebp)
	.loc 1 3983 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1384
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1384
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1384
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1388
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1388
.L1384:
	movl	$64, -428(%ebp)
	jmp	.L1390
.L1388:
	movl	$32, -428(%ebp)
.L1390:
	movl	-428(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 3984 0
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	jmp	.L1361
.L1382:
	.loc 1 3989 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -160(%ebp)
	.loc 1 3990 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1361:
.LBE44:
	.loc 1 4000 0
	movl	$0, -220(%ebp)
	jmp	.L1391
.L1392:
.LBB45:
	.loc 1 4002 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 4003 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 4004 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 4005 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 4006 0
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	.loc 1 4008 0
	cmpl	$0, -100(%ebp)
	je	.L1393
	cmpl	$0, -96(%ebp)
	je	.L1395
.L1393:
	.loc 1 4021 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4022 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, %edx
	movl	-92(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4025 0
	movl	-92(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1396
.L1397:
	.loc 1 4026 0
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-84(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1398
	movl	-84(%ebp), %eax
	cmpl	-184(%ebp), %eax
	jg	.L1400
.L1398:
	.loc 1 4025 0
	addl	$1, -84(%ebp)
.L1396:
	movl	-84(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jl	.L1397
.L1400:
	.loc 1 4032 0
	movl	-84(%ebp), %eax
	cmpl	-88(%ebp), %eax
	je	.L1401
.LBB46:
	.loc 1 4039 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -80(%ebp)
	.loc 1 4045 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4047 0
	cmpl	$52, -80(%ebp)
	jne	.L1403
	.loc 1 4049 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %esi
	addl	-212(%ebp), %esi
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, 40(%esi)
	.loc 1 4053 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_block_move@PLT
	jmp	.L1401
.L1403:
	.loc 1 4060 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %esi
	addl	-212(%ebp), %esi
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 40(%esi)
	.loc 1 4062 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
.L1401:
.LBE46:
	.loc 1 4067 0
	movl	-264(%ebp), %eax
	testl	%eax, %eax
	jne	.L1405
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -424(%ebp)
	jmp	.L1407
.L1405:
	movl	-264(%ebp), %eax
	testl	%eax, %eax
	jne	.L1408
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -420(%ebp)
	jmp	.L1410
.L1408:
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-264(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -420(%ebp)
.L1410:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-420(%ebp), %esi
	movl	%esi, (%esp)
	call	expand_expr@PLT
	movl	%eax, -424(%ebp)
.L1407:
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -416(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1411
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1411
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1411
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1415
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1415
.L1411:
	movl	$64, -412(%ebp)
	jmp	.L1417
.L1415:
	movl	$32, -412(%ebp)
.L1417:
	movl	-424(%ebp), %edi
	movl	%edi, 44(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 28(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-412(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_push_insn@PLT
	.loc 1 4074 0
	movl	-92(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1418
.L1419:
	.loc 1 4075 0
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-84(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
	.loc 1 4074 0
	addl	$1, -84(%ebp)
.L1418:
	movl	-84(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jl	.L1419
	.loc 1 4077 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
.L1395:
.LBE45:
	.loc 1 4000 0
	addl	$1, -220(%ebp)
	movl	-224(%ebp), %eax
	addl	%eax, -232(%ebp)
.L1391:
	movl	-220(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1392
	.loc 1 4083 0
	cmpl	$0, -216(%ebp)
	jne	.L1422
	.loc 1 4084 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	%esi, -656(%ebp)
	movl	%edi, -652(%ebp)
	movl	-260(%ebp), %eax
	movl	-256(%ebp), %edx
	movl	-656(%ebp), %esi
	movl	-652(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, (%esp)
	call	anti_adjust_stack@PLT
.L1422:
	.loc 1 4090 0
	movl	$0, -232(%ebp)
	.loc 1 4092 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	prepare_call_address@PLT
	movl	%eax, -228(%ebp)
	.loc 1 4098 0
	movl	$0, -220(%ebp)
	jmp	.L1424
.L1425:
.LBB47:
	.loc 1 4100 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4101 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4102 0
	movl	-232(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4106 0
	cmpl	$0, -68(%ebp)
	je	.L1426
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1426
	.loc 1 4107 0
	movl	-72(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_group_load@PLT
	.loc 1 4106 0
	jmp	.L1429
.L1426:
	.loc 1 4108 0
	cmpl	$0, -68(%ebp)
	je	.L1429
	cmpl	$0, -64(%ebp)
	jne	.L1429
	.loc 1 4109 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1429:
	.loc 1 4111 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
.LBE47:
	.loc 1 4098 0
	addl	$1, -220(%ebp)
	movl	-224(%ebp), %eax
	addl	%eax, -232(%ebp)
.L1424:
	movl	-220(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1425
	.loc 1 4115 0
	movl	$0, -220(%ebp)
	jmp	.L1433
.L1434:
.LBB48:
	.loc 1 4117 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4118 0
	cmpl	$0, -60(%ebp)
	je	.L1435
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1435
	.loc 1 4119 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	use_group_regs@PLT
	.loc 1 4118 0
	jmp	.L1438
.L1435:
	.loc 1 4120 0
	cmpl	$0, -60(%ebp)
	je	.L1438
	.loc 1 4121 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L1438:
.LBE48:
	.loc 1 4115 0
	addl	$1, -220(%ebp)
.L1433:
	movl	-220(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1434
	.loc 1 4125 0
	cmpl	$0, -204(%ebp)
	je	.L1441
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1441
	cmpl	$0, -196(%ebp)
	jne	.L1441
	.loc 1 4127 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -408(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1445
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1445
	movl	$5, -404(%ebp)
	jmp	.L1448
.L1445:
	movl	$4, -404(%ebp)
.L1448:
	movl	-408(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-404(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, %edx
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4131 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1441
	.loc 1 4132 0
	movl	struct_value_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	use_reg@PLT
.L1441:
	.loc 1 4137 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 4138 0
	cmpl	$0, -204(%ebp)
	jne	.L1450
	cmpl	$0, 24(%ebp)
	je	.L1450
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	hard_libcall_value@PLT
	movl	%eax, -400(%ebp)
	jmp	.L1453
.L1450:
	movl	$0, -400(%ebp)
.L1453:
	movl	-400(%ebp), %edx
	movl	%edx, -200(%ebp)
	.loc 1 4142 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -396(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1454
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1454
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1457
.L1454:
	movl	$7, -392(%ebp)
	jmp	.L1458
.L1457:
	movl	$15, -392(%ebp)
.L1458:
	movl	-396(%ebp), %eax
	andl	-392(%ebp), %eax
	testl	%eax, %eax
	je	.L1459
	.loc 1 4143 0
	leal	__FUNCTION__.17638@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4143, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1459:
	.loc 1 4145 0
	call	get_last_insn@PLT
	movl	%eax, -176(%ebp)
	.loc 1 4154 0
	movl	-236(%ebp), %esi
	movl	-208(%ebp), %edi
	addl	$1, %edi
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	%eax, -388(%ebp)
	movl	-192(%ebp), %eax
	movl	%eax, -384(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -380(%ebp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, -376(%ebp)
	movl	%edx, -372(%ebp)
	movl	-260(%ebp), %edx
	movl	-256(%ebp), %ecx
	movl	%edx, -368(%ebp)
	movl	%ecx, -364(%ebp)
	movl	$0, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -356(%ebp)
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	leal	-336(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	%esi, 48(%esp)
	movl	%edi, 44(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-388(%ebp), %ecx
	movl	%ecx, 36(%esp)
	movl	-384(%ebp), %esi
	movl	-380(%ebp), %edi
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-376(%ebp), %esi
	movl	-372(%ebp), %edi
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-368(%ebp), %esi
	movl	-364(%ebp), %edi
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-356(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_1
	.loc 1 4167 0
	movl	-188(%ebp), %eax
	andl	$66, %eax
	testl	%eax, %eax
	je	.L1461
.LBB49:
	.loc 1 4173 0
	call	get_last_insn@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4174 0
	jmp	.L1463
.L1464:
	.loc 1 4176 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4178 0
	movl	-56(%ebp), %eax
	cmpl	-176(%ebp), %eax
	jne	.L1463
	.loc 1 4179 0
	leal	__FUNCTION__.17638@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4179, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1463:
	.loc 1 4174 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1464
	.loc 1 4182 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L1461:
.LBE49:
	.loc 1 4186 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 4192 0
	movl	-188(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1467
.LBB50:
	.loc 1 4196 0
	cmpl	$0, -200(%ebp)
	jne	.L1469
	.loc 1 4198 0
	call	get_insns@PLT
	movl	%eax, -52(%ebp)
	.loc 1 4199 0
	call	end_sequence@PLT
	.loc 1 4200 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	jmp	.L1467
.L1469:
.LBB51:
	.loc 1 4204 0
	movl	$0, -48(%ebp)
	.loc 1 4208 0
	movl	-200(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1471
	.loc 1 4210 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4211 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_group_store@PLT
	.loc 1 4212 0
	movl	-44(%ebp), %eax
	movl	%eax, -200(%ebp)
.L1471:
	.loc 1 4215 0
	movl	-200(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 4219 0
	movl	$0, -40(%ebp)
	jmp	.L1473
.L1474:
	.loc 1 4220 0
	movl	-40(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4219 0
	addl	$1, -40(%ebp)
.L1473:
	movl	-40(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1474
	.loc 1 4221 0
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4223 0
	call	get_insns@PLT
	movl	%eax, -52(%ebp)
	.loc 1 4224 0
	call	end_sequence@PLT
	.loc 1 4226 0
	movl	-188(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1476
	.loc 1 4227 0
	movl	$0, 4(%esp)
	movl	$72, (%esp)
	call	gen_rtx_fmt_0@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
.L1476:
	.loc 1 4233 0
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_libcall_block@PLT
	.loc 1 4235 0
	movl	-44(%ebp), %eax
	movl	%eax, -200(%ebp)
.L1467:
.LBE51:
.LBE50:
	.loc 1 4238 0
	call	pop_temp_slots@PLT
	.loc 1 4241 0
	cmpl	$0, 24(%ebp)
	je	.L1478
	cmpl	$0, 8(%ebp)
	je	.L1478
	.loc 1 4243 0
	cmpl	$0, -204(%ebp)
	je	.L1481
	.loc 1 4245 0
	cmpl	$0, -344(%ebp)
	jne	.L1483
	.loc 1 4246 0
	movl	-204(%ebp), %eax
	movl	%eax, -344(%ebp)
.L1483:
	.loc 1 4247 0
	movl	-344(%ebp), %eax
	cmpl	-204(%ebp), %eax
	je	.L1478
	.loc 1 4248 0
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1478
.L1481:
	.loc 1 4250 0
	movl	-200(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1487
	.loc 1 4252 0
	cmpl	$0, -344(%ebp)
	jne	.L1489
	.loc 1 4253 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -344(%ebp)
.L1489:
	.loc 1 4254 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_group_store@PLT
	jmp	.L1478
.L1487:
	.loc 1 4256 0
	cmpl	$0, -344(%ebp)
	je	.L1491
	.loc 1 4257 0
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1478
.L1491:
	.loc 1 4259 0
	movl	-200(%ebp), %eax
	movl	%eax, -344(%ebp)
.L1478:
	.loc 1 4265 0
	cmpl	$0, -160(%ebp)
	je	.L1493
.LBB52:
	.loc 1 4267 0
	movl	-160(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4278 0
	movl	-168(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4281 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1495
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1495
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1495
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1499
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1499
.L1495:
	movl	$64, -352(%ebp)
	jmp	.L1501
.L1499:
	movl	$32, -352(%ebp)
.L1501:
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 4282 0
	cmpl	$52, -36(%ebp)
	je	.L1502
	.loc 1 4283 0
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L1493
.L1502:
	.loc 1 4285 0
	movl	-168(%ebp), %edx
	movl	-164(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
.L1493:
.LBE52:
	.loc 1 4292 0
	movl	$0, -220(%ebp)
	jmp	.L1504
.L1505:
	.loc 1 4293 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L1506
.LBB53:
	.loc 1 4295 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4300 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4303 0
	cmpl	$52, -28(%ebp)
	jne	.L1508
	.loc 1 4304 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_block_move@PLT
	jmp	.L1506
.L1508:
	.loc 1 4309 0
	movl	-220(%ebp), %eax
	imull	$44, %eax, %eax
	addl	-212(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1506:
.LBE53:
	.loc 1 4292 0
	addl	$1, -220(%ebp)
.L1504:
	movl	-220(%ebp), %eax
	cmpl	28(%ebp), %eax
	jl	.L1505
	.loc 1 4312 0
	movl	-156(%ebp), %eax
	movl	%eax, highest_outgoing_arg_in_use@GOTOFF(%ebx)
	.loc 1 4313 0
	movl	-152(%ebp), %eax
	movl	%eax, stack_usage_map@GOTOFF(%ebx)
	.loc 1 4316 0
	movl	-344(%ebp), %eax
	.loc 1 4318 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1512
	call	__stack_chk_fail_local
.L1512:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	emit_library_call_value_1, .-emit_library_call_value_1
.globl emit_library_call
	.type	emit_library_call, @function
emit_library_call:
.LFB41:
	.loc 1 4337 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	subl	$56, %esp
.LCFI130:
	.loc 1 4347 0
	leal	24(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4350 0
	movl	-4(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	emit_library_call_value_1
	.loc 1 4357 0
	leave
	ret
.LFE41:
	.size	emit_library_call, .-emit_library_call
.globl emit_library_call_value
	.type	emit_library_call_value, @function
emit_library_call_value:
.LFB42:
	.loc 1 4371 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	subl	$56, %esp
.LCFI133:
	.loc 1 4384 0
	leal	28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4387 0
	movl	-8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	emit_library_call_value_1
	movl	%eax, -4(%ebp)
	.loc 1 4396 0
	movl	-4(%ebp), %eax
	.loc 1 4397 0
	leave
	ret
.LFE42:
	.size	emit_library_call_value, .-emit_library_call_value
	.section	.rodata
	.type	__FUNCTION__.18743, @object
	.size	__FUNCTION__.18743, 14
__FUNCTION__.18743:
	.string	"store_one_arg"
	.text
	.type	store_one_arg, @function
store_one_arg:
.LFB43:
	.loc 1 4425 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%edi
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$396, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4426 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 4427 0
	movl	$0, -88(%ebp)
	.loc 1 4428 0
	movl	$0, -84(%ebp)
	.loc 1 4429 0
	movl	$0, -80(%ebp)
	.loc 1 4430 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 4431 0
	movl	$0, -64(%ebp)
	.loc 1 4433 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L1518
	.loc 1 4434 0
	movl	$1, -332(%ebp)
	jmp	.L1520
.L1518:
	.loc 1 4438 0
	call	push_temp_slots@PLT
	.loc 1 4440 0
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L1521
	.loc 1 4444 0
	cmpl	$0, 12(%ebp)
	je	.L1521
	cmpl	$0, 20(%ebp)
	jne	.L1521
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1521
	.loc 1 4456 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1526
	.loc 1 4457 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1528
.L1526:
	.loc 1 4459 0
	movl	$0, -72(%ebp)
.L1528:
	.loc 1 4461 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4464 0
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1529
.L1530:
	.loc 1 4465 0
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1531
	movl	-76(%ebp), %eax
	cmpl	24(%ebp), %eax
	jg	.L1533
.L1531:
	.loc 1 4464 0
	addl	$1, -76(%ebp)
.L1529:
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L1530
.L1533:
	.loc 1 4471 0
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L1521
.LBB54:
	.loc 1 4475 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4479 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4481 0
	cmpl	$52, -60(%ebp)
	jne	.L1535
.LBB55:
	.loc 1 4483 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4485 0
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-52(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -328(%ebp)
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1537
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1537
	movl	$1, -324(%ebp)
	jmp	.L1540
.L1537:
	movl	$0, -324(%ebp)
.L1540:
	movl	-324(%ebp), %eax
	sall	$3, %eax
	orl	-328(%ebp), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -48(%ebp)
	.loc 1 4487 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_temp@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 4488 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	preserve_temp_slots@PLT
	.loc 1 4489 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	expr_size@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_block_move@PLT
	jmp	.L1521
.L1535:
.LBE55:
	.loc 1 4495 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 4496 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
.L1521:
.LBE54:
	.loc 1 4504 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L1541
	.loc 1 4506 0
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1543
	.loc 1 4507 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1545
.L1543:
	.loc 1 4509 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
.L1545:
	.loc 1 4510 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -84(%ebp)
.L1541:
	.loc 1 4513 0
	cmpl	$0, -88(%ebp)
	je	.L1546
	cmpl	$0, -84(%ebp)
	jne	.L1546
	.loc 1 4516 0
	leal	__FUNCTION__.18743@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4516, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1546:
	.loc 1 4520 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1549
	.loc 1 4521 0
	movl	$0, -88(%ebp)
.L1549:
	.loc 1 4525 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1551
	.loc 1 4545 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1553
	.loc 1 4546 0
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1553:
	.loc 1 4548 0
	cmpl	$0, -84(%ebp)
	jne	.L1555
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1555
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -320(%ebp)
	jmp	.L1558
.L1555:
	movl	$0, -320(%ebp)
.L1558:
	movl	$2, 12(%esp)
	movl	$0, 8(%esp)
	movl	-320(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 4557 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L1559
	.loc 1 4558 0
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %esi
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert_modes@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L1559:
	.loc 1 4561 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L1551
	.loc 1 4562 0
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	stack_arg_under_construction@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1551:
	.loc 1 4567 0
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1562
	.loc 1 4568 0
	call	do_pending_stack_adjust@PLT
.L1562:
	.loc 1 4570 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1564
	.loc 1 4573 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$52, %eax
	je	.L1566
.LBB56:
	.loc 1 4587 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 4594 0
	movl	-44(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 4598 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1568
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$52, %eax
	jne	.L1570
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1585
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1585
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -312(%ebp)
	movl	%edx, -308(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1575
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1575
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1575
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1579
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1579
.L1575:
	movl	$8, -304(%ebp)
	movl	$0, -300(%ebp)
	jmp	.L1581
.L1579:
	movl	$4, -304(%ebp)
	movl	$0, -300(%ebp)
.L1581:
	movl	-300(%ebp), %edi
	cmpl	%edi, -308(%ebp)
	jg	.L1585
	movl	-300(%ebp), %eax
	cmpl	%eax, -308(%ebp)
	jl	.L1585
	jmp	.L1585
.L1570:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -296(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1586
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1586
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1586
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1590
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1590
.L1586:
	movl	$64, -292(%ebp)
	jmp	.L1592
.L1590:
	movl	$32, -292(%ebp)
.L1592:
	movl	-292(%ebp), %edx
	cmpl	%edx, -296(%ebp)
	jge	.L1585
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1585
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1585
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1585
.L1585:
	movb	$1, -313(%ebp)
	jmp	.L1600
.L1568:
	movb	$1, -313(%ebp)
.L1600:
	cmpb	$0, -313(%ebp)
	je	.L1601
	.loc 1 4599 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1603
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1603
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1603
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1607
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1607
.L1603:
	movl	$8, -288(%ebp)
	jmp	.L1609
.L1607:
	movl	$4, -288(%ebp)
.L1609:
	movl	-288(%ebp), %eax
	addl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -284(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1610
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1610
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1610
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1614
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1614
.L1610:
	movl	$8, -280(%ebp)
	jmp	.L1616
.L1614:
	movl	$4, -280(%ebp)
.L1616:
	movl	-284(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-280(%ebp)
	movl	%eax, -276(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1617
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1617
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1617
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1621
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1621
.L1617:
	movl	$8, -272(%ebp)
	jmp	.L1623
.L1621:
	movl	$4, -272(%ebp)
.L1623:
	movl	-276(%ebp), %eax
	imull	-272(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1601:
	.loc 1 4605 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L1624
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -268(%ebp)
	jmp	.L1626
.L1624:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L1627
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -264(%ebp)
	jmp	.L1629
.L1627:
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -264(%ebp)
.L1629:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-264(%ebp), %ecx
	movl	%ecx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -268(%ebp)
.L1626:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L1630
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -260(%ebp)
	jmp	.L1632
.L1630:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L1633
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -256(%ebp)
	jmp	.L1635
.L1633:
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -256(%ebp)
.L1635:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-256(%ebp), %esi
	movl	%esi, (%esp)
	call	expand_expr@PLT
	movl	%eax, -260(%ebp)
.L1632:
	movl	-44(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, -252(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1636
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1636
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1636
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1640
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1640
.L1636:
	movl	$64, -248(%ebp)
	jmp	.L1642
.L1640:
	movl	$32, -248(%ebp)
.L1642:
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %esi
	movl	-268(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-260(%ebp), %edi
	movl	%edi, 36(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-252(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-248(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	emit_push_insn@PLT
	.loc 1 4612 0
	cmpl	$0, -84(%ebp)
	jne	.L1564
	.loc 1 4613 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L1564
.L1566:
.LBE56:
.LBB57:
	.loc 1 4630 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1645
	.loc 1 4632 0
	movl	$0, -36(%ebp)
	.loc 1 4633 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1647
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -244(%ebp)
	jmp	.L1649
.L1647:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1650
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -240(%ebp)
	jmp	.L1652
.L1650:
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -240(%ebp)
.L1652:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -244(%ebp)
.L1649:
	movl	-244(%ebp), %edx
	movl	%edx, -32(%ebp)
	jmp	.L1653
.L1645:
	.loc 1 4639 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	movl	%eax, %esi
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, -236(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1654
	movl	$8, -232(%ebp)
	jmp	.L1656
.L1654:
	movl	$4, -232(%ebp)
.L1656:
	movl	-232(%ebp), %eax
	imull	-84(%ebp), %eax
	addl	-236(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4641 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %esi
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, -32(%ebp)
.L1653:
	.loc 1 4647 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1657
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1657
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1657
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1661
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1661
.L1657:
	movl	$64, -224(%ebp)
	jmp	.L1663
.L1661:
	movl	$32, -224(%ebp)
.L1663:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, -224(%ebp)
	jbe	.L1664
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1666
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1666
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1666
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1670
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1670
.L1666:
	movl	$64, -220(%ebp)
	jmp	.L1672
.L1670:
	movl	$32, -220(%ebp)
.L1672:
	movl	-220(%ebp), %esi
	movl	%esi, -228(%ebp)
	jmp	.L1673
.L1664:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -228(%ebp)
.L1673:
	movl	-228(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 4651 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1674
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$52, %eax
	jne	.L1676
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1678
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1678
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1681
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1681
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1681
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1685
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1685
.L1681:
	movl	$8, -200(%ebp)
	movl	$0, -196(%ebp)
	jmp	.L1687
.L1685:
	movl	$4, -200(%ebp)
	movl	$0, -196(%ebp)
.L1687:
	movl	-196(%ebp), %eax
	cmpl	%eax, -204(%ebp)
	jg	.L1678
	movl	-196(%ebp), %edx
	cmpl	%edx, -204(%ebp)
	jl	.L1689
	movl	-200(%ebp), %ecx
	cmpl	%ecx, -208(%ebp)
	jae	.L1678
.L1689:
	movl	$1, -212(%ebp)
	jmp	.L1690
.L1678:
	movl	$0, -212(%ebp)
.L1690:
	cmpl	$0, -212(%ebp)
	setne	-213(%ebp)
	jmp	.L1691
.L1676:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -184(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1692
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1692
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1692
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1696
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1696
.L1692:
	movl	$64, -180(%ebp)
	jmp	.L1698
.L1696:
	movl	$32, -180(%ebp)
.L1698:
	movl	-180(%ebp), %esi
	cmpl	%esi, -184(%ebp)
	jge	.L1699
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1701
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1701
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1701
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L1699
.L1701:
	movl	$1, -188(%ebp)
	jmp	.L1705
.L1699:
	movl	$0, -188(%ebp)
.L1705:
	cmpl	$0, -188(%ebp)
	setne	-213(%ebp)
.L1691:
	movzbl	-213(%ebp), %eax
	movb	%al, -214(%ebp)
	jmp	.L1706
.L1674:
	movb	$0, -214(%ebp)
.L1706:
	cmpb	$0, -214(%ebp)
	je	.L1707
	.loc 1 4653 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1709
	.loc 1 4654 0
	movl	$8, -40(%ebp)
	jmp	.L1707
.L1709:
	.loc 1 4655 0
	cmpl	$0, -36(%ebp)
	je	.L1707
.LBB58:
	.loc 1 4657 0
	movl	-36(%ebp), %eax
	negl	%eax
	andl	-36(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4658 0
	movl	-40(%ebp), %edx
	movl	%edx, -340(%ebp)
	movl	-28(%ebp), %ecx
	movl	%ecx, -336(%ebp)
	movl	-340(%ebp), %esi
	cmpl	%esi, -336(%ebp)
	jbe	.L1712
	movl	-340(%ebp), %edi
	movl	%edi, -336(%ebp)
.L1712:
	movl	-336(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1707:
.LBE58:
	.loc 1 4662 0
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1713
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1713
.LBB59:
	.loc 1 4666 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4667 0
	movl	$0, -20(%ebp)
	.loc 1 4669 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	je	.L1716
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1713
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1713
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1713
.L1716:
	.loc 1 4675 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	je	.L1720
	.loc 1 4676 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L1720:
	.loc 1 4679 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L1722
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1724
.L1722:
	.loc 1 4680 0
	leal	__FUNCTION__.18743@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4680, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1724:
	.loc 1 4682 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	40(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -164(%ebp)
	movl	-164(%ebp), %esi
	cmpl	%esi, -172(%ebp)
	jl	.L1725
	movl	-164(%ebp), %edi
	cmpl	%edi, -172(%ebp)
	jg	.L1727
	movl	-168(%ebp), %eax
	cmpl	%eax, -176(%ebp)
	jbe	.L1725
.L1727:
	.loc 1 4684 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	40(%eax), %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -352(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -348(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-352(%ebp), %esi
	movl	-348(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-148(%ebp), %edi
	cmpl	%edi, -156(%ebp)
	jg	.L1713
	movl	-148(%ebp), %eax
	cmpl	%eax, -156(%ebp)
	jl	.L1730
	movl	-152(%ebp), %edx
	cmpl	%edx, -160(%ebp)
	jae	.L1713
.L1730:
	.loc 1 4685 0
	movl	$1, -64(%ebp)
	jmp	.L1713
.L1725:
	.loc 1 4687 0
	movl	8(%ebp), %eax
	movl	36(%eax), %esi
	movl	40(%eax), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edi, -132(%ebp)
	movl	-132(%ebp), %eax
	cmpl	%eax, -140(%ebp)
	jg	.L1713
	movl	-132(%ebp), %edx
	cmpl	%edx, -140(%ebp)
	jl	.L1732
	movl	-136(%ebp), %ecx
	cmpl	%ecx, -144(%ebp)
	jae	.L1713
.L1732:
	.loc 1 4689 0
	movl	-20(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	%eax, %esi
	sarl	$31, %esi
	movl	%esi, -124(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	40(%eax), %ecx
	movl	%edx, -352(%ebp)
	movl	%ecx, -348(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-352(%ebp), %esi
	movl	-348(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-116(%ebp), %edi
	cmpl	%edi, -124(%ebp)
	jg	.L1713
	movl	-116(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	jl	.L1734
	movl	-120(%ebp), %edx
	cmpl	%edx, -128(%ebp)
	jae	.L1713
.L1734:
	.loc 1 4690 0
	movl	$1, -64(%ebp)
.L1713:
.LBE59:
	.loc 1 4695 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L1735
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -112(%ebp)
	jmp	.L1737
.L1735:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L1738
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -108(%ebp)
	jmp	.L1740
.L1738:
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	92(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -108(%ebp)
.L1740:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-108(%ebp), %ecx
	movl	%ecx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -112(%ebp)
.L1737:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L1741
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -104(%ebp)
	jmp	.L1743
.L1741:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L1744
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1746
.L1744:
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -100(%ebp)
.L1746:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-100(%ebp), %esi
	movl	%esi, (%esp)
	call	expand_expr@PLT
	movl	%eax, -104(%ebp)
.L1743:
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %esi
	movl	-112(%ebp), %edi
	movl	%edi, 44(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	emit_push_insn@PLT
	.loc 1 4708 0
	cmpl	$0, -84(%ebp)
	jne	.L1564
	.loc 1 4709 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L1564:
.LBE57:
	.loc 1 4713 0
	movl	16(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L1748
	cmpl	$0, 12(%ebp)
	je	.L1748
	cmpl	$0, 20(%ebp)
	jne	.L1748
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1748
	.loc 1 4715 0
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1753
.L1754:
	.loc 1 4716 0
	movl	stack_usage_map@GOTOFF(%ebx), %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
	.loc 1 4715 0
	addl	$1, -76(%ebp)
.L1753:
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L1754
.L1748:
	.loc 1 4720 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 4724 0
	call	emit_queue@PLT
	.loc 1 4729 0
	movl	$0, (%esp)
	call	preserve_temp_slots@PLT
	.loc 1 4730 0
	call	free_temp_slots@PLT
	.loc 1 4731 0
	call	pop_temp_slots@PLT
	.loc 1 4733 0
	movl	-64(%ebp), %edx
	movl	%edx, -332(%ebp)
.L1520:
	movl	-332(%ebp), %eax
	.loc 1 4734 0
	addl	$396, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	store_one_arg, .-store_one_arg
	.local	stack_usage_map
	.comm	stack_usage_map,4,4
	.local	highest_outgoing_arg_in_use
	.comm	highest_outgoing_arg_in_use,4,4
	.local	stored_args_map
	.comm	stored_args_map,4,4
	.local	calls_function_save_exprs
	.comm	calls_function_save_exprs,4,4
	.comm	stack_arg_under_construction,4,4
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
	.long	.LCFI11-.LCFI9
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
	.long	.LCFI12-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI13
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
	.long	.LCFI22-.LCFI18
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
	.long	.LCFI23-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
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
	.long	.LCFI29-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
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
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI33
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
	.long	.LCFI42-.LCFI39
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI43-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI44
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI48-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI49
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI54-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI60-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI61
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
	.long	.LCFI66-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI67
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
	.long	.LCFI72-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI77
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI81-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI85-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI86
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI90-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI93-.LCFI91
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
	.long	.LCFI94-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI95
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI100-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI101
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI111-.LCFI107
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
	.long	.LCFI112-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI113
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
	.long	.LCFI116-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI121-.LCFI117
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI122-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI123
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI128-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI131-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
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
	.long	.LCFI134-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI135
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE56:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/basic-block.h"
	.file 8 "../../../kgccfe/gnu/sbitmap.h"
	.file 9 "../../../kgccfe/gnu/hashtable.h"
	.file 10 "../../../kgccfe/gnu/location.h"
	.file 11 "../../../kgccfe/gnu/function.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/omp_types.h"
	.file 14 "../../../kgccfe/gnu/expr.h"
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 16 "../../../kgccfe/gnu/flags.h"
	.file 17 "../../../kgccfe/gnu/langhooks.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/libio.h"
	.file 21 "/usr/include/bits/types.h"
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
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI44-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI129-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x95ba
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/calls.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa5
	.uleb128 0x3
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.long	0x19a
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x8a
	.long	0xb27
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x4
	.byte	0x8d
	.long	0x82f
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xd4
	.long	0x1740
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
	.byte	0x4
	.byte	0xf8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x1750
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
	.long	0x2cd
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x855
	.long	0x3a81
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x3d9a
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x3de2
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3f02
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x859
	.long	0x3e43
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3ead
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3f88
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x85c
	.long	0x4ff5
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x85d
	.long	0x41e8
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3fbf
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x4004
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x4052
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x409e
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x5992
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
	.byte	0xc
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xc
	.value	0xaad
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xc
	.value	0xab0
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xc
	.value	0xab5
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xc
	.value	0xab8
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xc
	.value	0xabb
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xc
	.value	0xac8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xc
	.value	0xacb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xc
	.value	0xad3
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xc
	.value	0xad4
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3d0
	.long	0x9a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xc
	.value	0xad5
	.long	0x2e7
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0xf
	.byte	0x2b
	.long	0x405
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0x2
	.string	"va_list"
	.byte	0xf
	.byte	0x69
	.long	0x3ef
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
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
	.byte	0x15
	.byte	0x3b
	.long	0x480
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x15
	.byte	0x90
	.long	0x4ca
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x15
	.byte	0x91
	.long	0x4ab
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0x2
	.string	"FILE"
	.byte	0x13
	.byte	0x2e
	.long	0x4fb
	.uleb128 0x14
	.long	0x776
	.long	.LASF4
	.byte	0x94
	.byte	0x13
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x14
	.value	0x10c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x14
	.value	0x111
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x14
	.value	0x112
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x14
	.value	0x113
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x14
	.value	0x114
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x14
	.value	0x115
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x14
	.value	0x116
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x14
	.value	0x117
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x14
	.value	0x118
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x14
	.value	0x11a
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x14
	.value	0x11b
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x14
	.value	0x11c
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x14
	.value	0x11e
	.long	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x14
	.value	0x120
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x14
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x14
	.value	0x126
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x14
	.value	0x128
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x14
	.value	0x12c
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x14
	.value	0x12d
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x14
	.value	0x12e
	.long	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x14
	.value	0x132
	.long	0x7f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x14
	.value	0x13b
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x14
	.value	0x144
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x14
	.value	0x145
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x14
	.value	0x146
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x14
	.value	0x147
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x14
	.value	0x148
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x14
	.value	0x14a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x14
	.value	0x14c
	.long	0x7fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77c
	.uleb128 0xb
	.long	0x428
	.uleb128 0x3
	.byte	0x4
	.long	0x428
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x14
	.byte	0xb0
	.uleb128 0x4
	.long	0x7d8
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x14
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x14
	.byte	0xb7
	.long	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x14
	.byte	0xb8
	.long	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x14
	.byte	0xbc
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x795
	.uleb128 0x3
	.byte	0x4
	.long	0x4fb
	.uleb128 0x10
	.long	0x7f4
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x787
	.uleb128 0x10
	.long	0x80a
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x2e0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e0
	.uleb128 0x3
	.byte	0x4
	.long	0x81b
	.uleb128 0x16
	.long	0x827
	.byte	0x1
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x827
	.uleb128 0x19
	.long	0xa78
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
	.long	0xb27
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
	.long	0x12f6
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
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
	.long	0x13d0
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.byte	0x4
	.byte	0x5e
	.long	0x12f6
	.uleb128 0x14
	.long	0x1443
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x4
	.byte	0x6b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x4
	.byte	0x6c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x4
	.byte	0x6e
	.long	0x13eb
	.uleb128 0x8
	.long	0x1520
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x1f
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x480
	.uleb128 0x1f
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2e0
	.uleb128 0x1f
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3b9
	.uleb128 0x1f
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2cd
	.uleb128 0x1f
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9a
	.uleb128 0x1f
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19a
	.uleb128 0x1f
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x82f
	.uleb128 0x1f
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x13d0
	.uleb128 0x1f
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x1534
	.uleb128 0x1f
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x159c
	.uleb128 0x1f
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e2
	.uleb128 0x1f
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x1725
	.uleb128 0x1f
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x172b
	.byte	0x0
	.uleb128 0x20
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1520
	.uleb128 0x4
	.long	0x159c
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x5fb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x5fb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x153a
	.uleb128 0x4
	.long	0x1725
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x6105
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x6105
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x6039
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x6039
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x6039
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x6039
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x6381
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x6047
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x7
	.byte	0xe5
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a2
	.uleb128 0x3
	.byte	0x4
	.long	0x1443
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x144e
	.uleb128 0x10
	.long	0x1750
	.long	0x1731
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1760
	.long	0x9a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x21
	.long	0x1811
	.string	"libcall_type"
	.byte	0x4
	.byte	0x4
	.value	0x896
	.uleb128 0x1a
	.string	"LCT_NORMAL"
	.sleb128 0
	.uleb128 0x1a
	.string	"LCT_CONST"
	.sleb128 1
	.uleb128 0x1a
	.string	"LCT_PURE"
	.sleb128 2
	.uleb128 0x1a
	.string	"LCT_CONST_MAKE_BLOCK"
	.sleb128 3
	.uleb128 0x1a
	.string	"LCT_PURE_MAKE_BLOCK"
	.sleb128 4
	.uleb128 0x1a
	.string	"LCT_NORETURN"
	.sleb128 5
	.uleb128 0x1a
	.string	"LCT_THROW"
	.sleb128 6
	.uleb128 0x1a
	.string	"LCT_ALWAYS_RETURN"
	.sleb128 7
	.uleb128 0x1a
	.string	"LCT_RETURNS_TWICE"
	.sleb128 8
	.byte	0x0
	.uleb128 0x4
	.long	0x1843
	.string	"location_s"
	.byte	0x8
	.byte	0xa
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xa
	.byte	0x1e
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xa
	.byte	0x21
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xa
	.byte	0x23
	.long	0x1811
	.uleb128 0x19
	.long	0x2177
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x27
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
	.byte	0x31
	.long	0x3b9
	.uleb128 0x4
	.long	0x21c4
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x3
	.byte	0x32
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x21ce
	.uleb128 0x20
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x2223
	.long	.LASF10
	.byte	0x4
	.byte	0x3
	.byte	0x5a
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
	.long	0x3a81
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1a
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1a
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1a
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1a
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1a
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1a
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1a
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1a
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1a
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1a
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1a
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1a
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1a
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1a
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1a
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1a
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1a
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1a
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1a
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1a
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1a
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1a
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1a
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1a
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1a
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1a
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1a
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1a
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1a
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1a
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1a
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1a
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1a
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1a
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1a
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1a
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1a
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1a
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1a
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1a
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1a
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1a
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1a
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1a
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1a
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1a
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1a
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1a
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1a
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1a
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1a
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1a
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1a
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1a
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1a
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1a
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1a
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1a
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1a
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1a
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1a
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1a
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1a
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1a
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1a
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1a
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1a
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1a
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1a
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1a
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1a
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1a
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1a
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1a
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1a
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1a
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1a
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1a
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1a
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1a
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1a
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1a
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3d5e
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF2
	.byte	0x3
	.byte	0x90
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
	.long	0x1855
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0xa6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0xa7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0xa8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0xa9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0xaa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0xab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0xac
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
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
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3d9a
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3de2
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x2f0
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x3d5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3e30
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x30c
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3e30
	.uleb128 0xd
	.long	0x3ea7
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF18
	.byte	0x3
	.value	0x322
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x3ea7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21c4
	.uleb128 0xd
	.long	0x3f02
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x32f
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3f4a
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x341
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x3f88
	.long	.LASF19
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x9
	.byte	0x1c
	.long	0x776
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x9
	.byte	0x1d
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x9
	.byte	0x1e
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3fbf
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x360
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x3f4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4004
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x36a
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x36c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4042
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x378
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.long	.LASF18
	.byte	0x3
	.value	0x379
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x4042
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4052
	.long	0x1e2
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x409e
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3be
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x4042
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x418e
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3f4
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF21
	.byte	0x3
	.value	0x3f7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.string	"block_num"
	.byte	0x3
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
	.byte	0x3
	.value	0x3fa
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x3fd
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x41d5
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2e0
	.uleb128 0xa
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x4e9
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x41e2
	.byte	0x0
	.uleb128 0x20
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x41d5
	.uleb128 0xd
	.long	0x4538
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x540
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x542
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x543
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x544
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x3
	.value	0x547
	.long	0x3b9
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF0
	.byte	0x3
	.value	0x548
	.long	0x82f
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"string_flag"
	.byte	0x3
	.value	0x54a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x54b
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x54c
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x54d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"packed_flag"
	.byte	0x3
	.value	0x54e
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"restrict_flag"
	.byte	0x3
	.value	0x54f
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF25
	.byte	0x3
	.value	0x550
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x552
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x553
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x554
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x555
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x556
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x557
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x3
	.value	0x558
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF26
	.byte	0x3
	.value	0x559
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"defer_expansion"
	.byte	0x3
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
	.byte	0x3
	.value	0x55f
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x418e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x22
	.long	.LASF27
	.byte	0x3
	.value	0x568
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x22
	.long	.LASF28
	.byte	0x3
	.value	0x571
	.long	0x4544
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x2188
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x20
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4538
	.uleb128 0xd
	.long	0x458f
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x23
	.string	"align"
	.byte	0x3
	.value	0x7f1
	.long	0x3b9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"off_align"
	.byte	0x3
	.value	0x7f2
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x45c4
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x2223
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x480
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x454a
	.byte	0x0
	.uleb128 0x25
	.long	0x4603
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x4fa1
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9a
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e2
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2e0
	.byte	0x0
	.uleb128 0x26
	.long	0x4fa1
	.long	.LASF29
	.value	0x134
	.byte	0x4
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xb
	.byte	0xb5
	.long	0x5e72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xb
	.byte	0xb6
	.long	0x5e86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xb
	.byte	0xb7
	.long	0x5e8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xb
	.byte	0xb8
	.long	0x5e92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xb
	.byte	0xb9
	.long	0x5ea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF27
	.byte	0xb
	.byte	0xbe
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xb
	.byte	0xc1
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xb
	.byte	0xc4
	.long	0x4fa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xb
	.byte	0xc9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF30
	.byte	0xb
	.byte	0xce
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xb
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xb
	.byte	0xd7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xb
	.byte	0xdb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xb
	.byte	0xdf
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xb
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xb
	.byte	0xe8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xb
	.byte	0xec
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xb
	.byte	0xf0
	.long	0x5ec5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xb
	.byte	0xf3
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xb
	.byte	0xf8
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xb
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xb
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xb
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xb
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xb
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xb
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xb
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xb
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xb
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xb
	.value	0x121
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xb
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xb
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xb
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xb
	.value	0x133
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xb
	.value	0x138
	.long	0x480
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xb
	.value	0x13d
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xb
	.value	0x146
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xb
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xb
	.value	0x14d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xb
	.value	0x151
	.long	0x3b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xb
	.value	0x157
	.long	0x1760
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xb
	.value	0x15a
	.long	0x5ed7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xb
	.value	0x15d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xb
	.value	0x160
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xb
	.value	0x166
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xb
	.value	0x16a
	.long	0x5b78
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xb
	.value	0x16d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xb
	.value	0x16e
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xb
	.value	0x16f
	.long	0x19a
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xb
	.value	0x170
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xb
	.value	0x173
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xb
	.value	0x175
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xb
	.value	0x178
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xb
	.value	0x17d
	.long	0x5ef0
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xb
	.value	0x17f
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x22
	.long	.LASF31
	.byte	0xb
	.value	0x181
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xb
	.value	0x184
	.long	0x5f0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xb
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x23
	.string	"returns_struct"
	.byte	0xb
	.value	0x190
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pcc_struct"
	.byte	0xb
	.value	0x194
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pointer"
	.byte	0xb
	.value	0x197
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"needs_context"
	.byte	0xb
	.value	0x19a
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_setjmp"
	.byte	0xb
	.value	0x19d
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_longjmp"
	.byte	0xb
	.value	0x1a0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_alloca"
	.byte	0xb
	.value	0x1a4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_eh_return"
	.byte	0xb
	.value	0x1a7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_label"
	.byte	0xb
	.value	0x1ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_goto"
	.byte	0xb
	.value	0x1af
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"contains_functions"
	.byte	0xb
	.value	0x1b2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_computed_jump"
	.byte	0xb
	.value	0x1b5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"is_thunk"
	.byte	0xb
	.value	0x1ba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"all_throwers_are_sibcalls"
	.byte	0xb
	.value	0x1c1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"instrument_entry_exit"
	.byte	0xb
	.value	0x1c5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arc_profile"
	.byte	0xb
	.value	0x1c8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"profile"
	.byte	0xb
	.value	0x1cb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"limit_stack"
	.byte	0xb
	.value	0x1cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"stdarg"
	.byte	0xb
	.value	0x1d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_whole_function_mode_p"
	.byte	0xb
	.value	0x1d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xb
	.value	0x1e1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_const_pool"
	.byte	0xb
	.value	0x1e4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_pic_offset_table"
	.byte	0xb
	.value	0x1e7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_eh_lsda"
	.byte	0xb
	.value	0x1ea
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arg_pointer_save_area_init"
	.byte	0xb
	.value	0x1ed
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.long	.LASF32
	.byte	0xb
	.value	0x1fa
	.long	0x5dfc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xb
	.value	0x1fe
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4603
	.uleb128 0x27
	.long	0x4fdf
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3ea7
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x2177
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x3b9
	.byte	0x0
	.uleb128 0x27
	.long	0x4ff5
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3ea7
	.byte	0x0
	.uleb128 0xd
	.long	0x572f
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x7a1
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x1843
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x7a4
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x24
	.long	.LASF0
	.byte	0x3
	.value	0x7a5
	.long	0x82f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"external_flag"
	.byte	0x3
	.value	0x7a7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7a8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7a9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"inline_flag"
	.byte	0x3
	.value	0x7aa
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7ab
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7ac
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7ad
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF21
	.byte	0x3
	.value	0x7ae
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7b2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7b3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7b4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7b5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7b6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7ba
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"common_flag"
	.byte	0x3
	.value	0x7bb
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"defer_output"
	.byte	0x3
	.value	0x7bc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"transparent_union"
	.byte	0x3
	.value	0x7bd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7be
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7bf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7c0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"weak_flag"
	.byte	0x3
	.value	0x7c1
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7c3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7c4
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7c5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7c6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7c7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x7c8
	.long	0x21d3
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"pure_flag"
	.byte	0x3
	.value	0x7c9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF25
	.byte	0x3
	.value	0x7cb
	.long	0x3b9
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"non_addressable"
	.byte	0x3
	.value	0x7cc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF26
	.byte	0x3
	.value	0x7cd
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"uninlinable"
	.byte	0x3
	.value	0x7ce
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x7d5
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x7d6
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x7d7
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x7d8
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x7d9
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x7da
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x3
	.value	0x7db
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x3b9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"always_inline_attrib"
	.byte	0x3
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
	.byte	0x3
	.value	0x7f4
	.long	0x458f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x7f6
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x22
	.long	.LASF27
	.byte	0x3
	.value	0x7f7
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x3
	.value	0x7fa
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x7fc
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x7ff
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x45c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x22
	.long	.LASF28
	.byte	0x3
	.value	0x819
	.long	0x573b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x3b9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
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
	.byte	0x3
	.value	0x822
	.long	0x4fa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x4fdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x2188
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x20
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x572f
	.uleb128 0x19
	.long	0x5992
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1a
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1a
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1a
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1a
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1a
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1a
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1a
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1a
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x59e1
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x833
	.long	0x3a81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x5741
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5a9c
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x22
	.long	.LASF27
	.byte	0x3
	.value	0x9de
	.long	0x5a9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x80a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x80a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x5aa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x5aa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x5aa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x5adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2cd
	.uleb128 0xb
	.long	0x5aa6
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x28
	.long	0x5ad3
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x5ad3
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x2e0
	.uleb128 0x17
	.long	0x5ad9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e2
	.uleb128 0x3
	.byte	0x4
	.long	0x5aa6
	.uleb128 0xb
	.long	0x5ae4
	.uleb128 0x3
	.byte	0x4
	.long	0x5aaf
	.uleb128 0x14
	.long	0x5b18
	.long	.LASF30
	.byte	0xc
	.byte	0xe
	.byte	0x4c
	.uleb128 0x7
	.string	"constant"
	.byte	0xe
	.byte	0x4d
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"var"
	.byte	0xe
	.byte	0x4e
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x5b78
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xb
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xb
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xb
	.byte	0x19
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF33
	.byte	0xb
	.byte	0x1a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xb
	.byte	0x1b
	.long	0x5b78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b18
	.uleb128 0x14
	.long	0x5bc7
	.long	.LASF34
	.byte	0x10
	.byte	0xb
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xb
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xb
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF35
	.byte	0xb
	.byte	0x28
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xb
	.byte	0x29
	.long	0x5bc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b7e
	.uleb128 0x4
	.long	0x5d1c
	.string	"emit_status"
	.byte	0x34
	.byte	0xb
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xb
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xb
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xb
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xb
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF35
	.byte	0xb
	.byte	0x4a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF34
	.byte	0xb
	.byte	0x50
	.long	0x5bc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xb
	.byte	0x54
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xb
	.byte	0x58
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xb
	.byte	0x59
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xb
	.byte	0x5f
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xb
	.byte	0x65
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xb
	.byte	0x69
	.long	0x5ad3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xb
	.byte	0x70
	.long	0x1760
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5dfc
	.string	"expr_status"
	.byte	0x1c
	.byte	0xb
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xb
	.byte	0x80
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xb
	.byte	0x91
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xb
	.byte	0x97
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xb
	.byte	0x9c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xb
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xb
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xb
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x29
	.long	0x5e66
	.long	.LASF32
	.byte	0x4
	.byte	0xb
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
	.long	0x5e66
	.uleb128 0x20
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e78
	.uleb128 0x3
	.byte	0x4
	.long	0x5d1c
	.uleb128 0x3
	.byte	0x4
	.long	0x5bcd
	.uleb128 0x20
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e98
	.uleb128 0x20
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5eae
	.uleb128 0x20
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ecb
	.uleb128 0x20
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5edd
	.uleb128 0x20
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5ef6
	.uleb128 0x10
	.long	0x5f20
	.long	0x491
	.uleb128 0x11
	.long	0x3d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x44f
	.uleb128 0x4
	.long	0x5f8b
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x5f8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x5f8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x5f91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f33
	.uleb128 0x10
	.long	0x5fa1
	.long	0x5f20
	.uleb128 0x11
	.long	0x3d0
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5f33
	.uleb128 0x3
	.byte	0x4
	.long	0x5fa1
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x159c
	.uleb128 0x4
	.long	0x6024
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x8
	.byte	0x22
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x5f10
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x6033
	.uleb128 0x3
	.byte	0x4
	.long	0x5fcb
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x5fbd
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x480
	.uleb128 0x4
	.long	0x60ff
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x60ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x60ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF36
	.byte	0x7
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x7
	.byte	0x83
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x7
	.byte	0x85
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x7
	.byte	0x87
	.long	0x6047
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6058
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x60ff
	.uleb128 0x4
	.long	0x6381
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x6387
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x6387
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x6387
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x639a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x7
	.value	0x18b
	.long	0x6387
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x6387
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x6024
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x7
	.value	0x195
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x639a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x639a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x6024
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x63a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x6381
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x6381
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"next"
	.byte	0x7
	.value	0x1b7
	.long	0x6381
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x4e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x7
	.value	0x1c3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x7
	.value	0x1e6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6111
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x1725
	.uleb128 0x3
	.byte	0x4
	.long	0x6105
	.uleb128 0x3
	.byte	0x4
	.long	0x6381
	.uleb128 0xc
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x11
	.byte	0x1d
	.long	0x63cb
	.uleb128 0x3
	.byte	0x4
	.long	0x63d1
	.uleb128 0x16
	.long	0x63e7
	.byte	0x1
	.uleb128 0x17
	.long	0x63e7
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ef
	.uleb128 0x4
	.long	0x6573
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x11
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x11
	.byte	0x24
	.long	0x65bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x11
	.byte	0x29
	.long	0x65d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x11
	.byte	0x2a
	.long	0x65e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x11
	.byte	0x2b
	.long	0x6604
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x11
	.byte	0x2d
	.long	0x65e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x11
	.byte	0x2e
	.long	0x661f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x11
	.byte	0x2f
	.long	0x664e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x11
	.byte	0x34
	.long	0x65e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x11
	.byte	0x35
	.long	0x6664
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x11
	.byte	0x36
	.long	0x65e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x11
	.byte	0x37
	.long	0x6676
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x11
	.byte	0x38
	.long	0x6696
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x28
	.long	0x6597
	.byte	0x1
	.long	0x1ee
	.uleb128 0x17
	.long	0x6597
	.uleb128 0x17
	.long	0x80f
	.uleb128 0x17
	.long	0x659d
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x17
	.long	0x4e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee
	.uleb128 0x3
	.byte	0x4
	.long	0x65a3
	.uleb128 0x28
	.long	0x65bd
	.byte	0x1
	.long	0x1ee
	.uleb128 0x17
	.long	0x6597
	.uleb128 0x17
	.long	0x80f
	.uleb128 0x17
	.long	0x4e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6573
	.uleb128 0x28
	.long	0x65d3
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x6597
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65c3
	.uleb128 0x28
	.long	0x65e9
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65d9
	.uleb128 0x28
	.long	0x6604
	.byte	0x1
	.long	0x1ee
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65ef
	.uleb128 0x28
	.long	0x661f
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x660a
	.uleb128 0x28
	.long	0x664e
	.byte	0x1
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x17
	.long	0x80f
	.uleb128 0x17
	.long	0x4e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6625
	.uleb128 0x28
	.long	0x6664
	.byte	0x1
	.long	0x5aa6
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6654
	.uleb128 0x16
	.long	0x6676
	.byte	0x1
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x666a
	.uleb128 0x28
	.long	0x6696
	.byte	0x1
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.uleb128 0x17
	.long	0x1ee
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x667c
	.uleb128 0x4
	.long	0x670b
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x11
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x11
	.byte	0x42
	.long	0x6717
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x11
	.byte	0x45
	.long	0x6717
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x11
	.byte	0x48
	.long	0x6717
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x11
	.byte	0x4b
	.long	0x6717
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x16
	.long	0x6717
	.byte	0x1
	.uleb128 0x17
	.long	0x4fa1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x670b
	.uleb128 0x4
	.long	0x6768
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x11
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x11
	.byte	0x54
	.long	0x677d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x11
	.byte	0x57
	.long	0x6793
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x28
	.long	0x677d
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x4e7
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6768
	.uleb128 0x28
	.long	0x6793
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6783
	.uleb128 0x4
	.long	0x6886
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x11
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x11
	.byte	0x60
	.long	0x6896
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x11
	.byte	0x64
	.long	0x68b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x11
	.byte	0x68
	.long	0x68cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x11
	.byte	0x6c
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x11
	.byte	0x70
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x11
	.byte	0x74
	.long	0x68fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x11
	.byte	0x7a
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x11
	.byte	0x80
	.long	0x6914
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x28
	.long	0x6896
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x1855
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6886
	.uleb128 0x28
	.long	0x68b1
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x82f
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x689c
	.uleb128 0x28
	.long	0x68cc
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x3b9
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68b7
	.uleb128 0x28
	.long	0x68e2
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68d2
	.uleb128 0x28
	.long	0x68fd
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x2e0
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68e8
	.uleb128 0x16
	.long	0x6914
	.byte	0x1
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6903
	.uleb128 0x4
	.long	0x6a20
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x11
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x11
	.byte	0x89
	.long	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x11
	.byte	0x90
	.long	0x6a3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x11
	.byte	0x94
	.long	0x6a46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x11
	.byte	0x99
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x11
	.byte	0x9c
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x11
	.byte	0xa2
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x11
	.byte	0xa5
	.long	0x6a64
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x11
	.byte	0xa9
	.long	0x6a7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x11
	.byte	0xad
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x11
	.byte	0xb0
	.long	0x6a7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x28
	.long	0x6a3a
	.byte	0x1
	.long	0x1e2
	.uleb128 0x17
	.long	0x2e0
	.uleb128 0x17
	.long	0x2e0
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a20
	.uleb128 0x2a
	.byte	0x1
	.long	0x2e0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a40
	.uleb128 0x16
	.long	0x6a58
	.byte	0x1
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a4c
	.uleb128 0x2a
	.byte	0x1
	.long	0x1e2
	.uleb128 0x3
	.byte	0x4
	.long	0x6a5e
	.uleb128 0x28
	.long	0x6a7a
	.byte	0x1
	.long	0x5aa6
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a6a
	.uleb128 0x26
	.long	0x6eb1
	.long	.LASF37
	.value	0x120
	.byte	0x11
	.byte	0xb6
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x11
	.byte	0xb8
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x11
	.byte	0xbc
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x11
	.byte	0xc0
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x11
	.byte	0xca
	.long	0x6ecc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x11
	.byte	0xd6
	.long	0x6ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x11
	.byte	0xde
	.long	0x6eee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x11
	.byte	0xe1
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x11
	.byte	0xe5
	.long	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x11
	.byte	0xe8
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x11
	.byte	0xec
	.long	0x6f04
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x11
	.byte	0xf1
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x11
	.byte	0xf5
	.long	0x6f29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x11
	.value	0x102
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x11
	.value	0x106
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x11
	.value	0x10f
	.long	0x6f44
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x11
	.value	0x113
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x11
	.value	0x118
	.long	0x6793
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x11
	.value	0x11d
	.long	0x6a7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x11
	.value	0x120
	.long	0x6793
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x11
	.value	0x124
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x11
	.value	0x129
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x11
	.value	0x12d
	.long	0x68e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x11
	.value	0x134
	.long	0x6a58
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x11
	.value	0x138
	.long	0x6ed8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x11
	.value	0x13b
	.long	0x5aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x11
	.value	0x13f
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x11
	.value	0x143
	.long	0x63af
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x11
	.value	0x147
	.long	0x63af
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x11
	.value	0x148
	.long	0x63af
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x11
	.value	0x149
	.long	0x63af
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x11
	.value	0x151
	.long	0x6f5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x11
	.value	0x154
	.long	0x6f91
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x11
	.value	0x15b
	.long	0x68e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"attribute_table"
	.byte	0x11
	.value	0x162
	.long	0x6f97
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x11
	.value	0x163
	.long	0x6f97
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x11
	.value	0x164
	.long	0x6f97
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF29
	.byte	0x11
	.value	0x167
	.long	0x669c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x11
	.value	0x169
	.long	0x63ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x11
	.value	0x16b
	.long	0x671d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x11
	.value	0x16d
	.long	0x691a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x11
	.value	0x16f
	.long	0x6799
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x28
	.long	0x6ec6
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x2e0
	.uleb128 0x17
	.long	0x6ec6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4e9
	.uleb128 0x3
	.byte	0x4
	.long	0x6eb1
	.uleb128 0x2a
	.byte	0x1
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x4
	.long	0x6ed2
	.uleb128 0x28
	.long	0x6eee
	.byte	0x1
	.long	0x2cd
	.uleb128 0x17
	.long	0x2cd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ede
	.uleb128 0x28
	.long	0x6f04
	.byte	0x1
	.long	0x480
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ef4
	.uleb128 0x28
	.long	0x6f29
	.byte	0x1
	.long	0x9a
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x9a
	.uleb128 0x17
	.long	0x82f
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f0a
	.uleb128 0x28
	.long	0x6f44
	.byte	0x1
	.long	0x2e0
	.uleb128 0x17
	.long	0x9a
	.uleb128 0x17
	.long	0x1e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f2f
	.uleb128 0x28
	.long	0x6f5f
	.byte	0x1
	.long	0x2cd
	.uleb128 0x17
	.long	0x1e2
	.uleb128 0x17
	.long	0x2e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f4a
	.uleb128 0x16
	.long	0x6f76
	.byte	0x1
	.uleb128 0x17
	.long	0x6f76
	.uleb128 0x17
	.long	0x2cd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f7c
	.uleb128 0x20
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6f65
	.uleb128 0x3
	.byte	0x4
	.long	0x6f9d
	.uleb128 0xb
	.long	0x59e1
	.uleb128 0x4
	.long	0x70f2
	.string	"arg_data"
	.byte	0x68
	.byte	0x1
	.byte	0x58
	.uleb128 0x7
	.string	"tree_value"
	.byte	0x1
	.byte	0x5a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x1
	.byte	0x5c
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x1
	.byte	0x5e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"initial_value"
	.byte	0x1
	.byte	0x60
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"reg"
	.byte	0x1
	.byte	0x64
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"tail_call_reg"
	.byte	0x1
	.byte	0x68
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.byte	0x6b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF38
	.byte	0x1
	.byte	0x6e
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pass_on_stack"
	.byte	0x1
	.byte	0x73
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x1
	.byte	0x75
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.byte	0x78
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x1
	.byte	0x7d
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"stack"
	.byte	0x1
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"stack_slot"
	.byte	0x1
	.byte	0x84
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.byte	0x86
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"aligned_regs"
	.byte	0x1
	.byte	0x8b
	.long	0x1760
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"n_aligned_regs"
	.byte	0x1
	.byte	0x8c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.byte	0x8f
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x0
	.uleb128 0x2b
	.long	0x714a
	.string	"calls_function"
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0x2e0
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x108
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"which"
	.byte	0x1
	.value	0x109
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0x10b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x721e
	.string	"calls_function_1"
	.byte	0x1
	.value	0x119
	.byte	0x1
	.long	0x2e0
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x117
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"which"
	.byte	0x1
	.value	0x118
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x11a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"code"
	.byte	0x1
	.value	0x11b
	.long	0x1855
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"class"
	.byte	0x1
	.value	0x11c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF18
	.byte	0x1
	.value	0x11d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	0x71ee
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x139
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.string	"local"
	.byte	0x1
	.value	0x14e
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"subblock"
	.byte	0x1
	.value	0x14f
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x72bc
	.byte	0x1
	.string	"prepare_call_address"
	.byte	0x1
	.value	0x182
	.byte	0x1
	.long	0x9a
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x17d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x17e
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x17f
	.long	0x1760
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x180
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"sibcallp"
	.byte	0x1
	.value	0x181
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"static_chain_value"
	.byte	0x1
	.value	0x183
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x7461
	.string	"emit_call_1"
	.byte	0x1
	.value	0x1e1
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x1d5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x1d6
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"funtype"
	.byte	0x1
	.value	0x1d7
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"stack_size"
	.byte	0x1
	.value	0x1d8
	.long	0x480
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"rounded_stack_size"
	.byte	0x1
	.value	0x1d9
	.long	0x480
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x1da
	.long	0x480
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x1db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x32
	.long	.LASF48
	.byte	0x1
	.value	0x1dc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x32
	.long	.LASF49
	.byte	0x1
	.value	0x1dd
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x1de
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x1df
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x32
	.long	.LASF51
	.byte	0x1
	.value	0x1e0
	.long	0x7461
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2d
	.string	"rounded_stack_size_rtx"
	.byte	0x1
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"call_insn"
	.byte	0x1
	.value	0x1e3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"already_popped"
	.byte	0x1
	.value	0x1e4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"n_popped"
	.byte	0x1
	.value	0x1e5
	.long	0x480
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"struct_value_size_rtx"
	.byte	0x1
	.value	0x1e7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	0x7450
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x267
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LASF52
	.long	0x9156
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13716
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d7
	.uleb128 0x2b
	.long	0x74dc
	.string	"special_function_p"
	.byte	0x1
	.value	0x2d8
	.byte	0x1
	.long	0x2e0
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x2d6
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x2d7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2e
	.long	.LASF27
	.byte	0x1
	.value	0x2e1
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"tname"
	.byte	0x1
	.value	0x2e2
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7514
	.byte	0x1
	.string	"setjmp_call_p"
	.byte	0x1
	.value	0x336
	.byte	0x1
	.long	0x2e0
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x335
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x754c
	.byte	0x1
	.string	"alloca_call_p"
	.byte	0x1
	.value	0x33e
	.byte	0x1
	.long	0x5aa6
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x33d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x75ab
	.string	"flags_from_decl_or_type"
	.byte	0x1
	.value	0x34e
	.byte	0x1
	.long	0x2e0
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x34d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF9
	.byte	0x1
	.value	0x34f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x350
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x33
	.long	0x761a
	.string	"precompute_register_parameters"
	.byte	0x1
	.value	0x382
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x37f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x380
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x381
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x383
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fa2
	.uleb128 0x2b
	.long	0x76e2
	.string	"save_fixed_argument_area"
	.byte	0x1
	.value	0x3c8
	.byte	0x1
	.long	0x9a
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x3c4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x3c5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x3c6
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x3c7
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x3c9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0x3ca
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2e
	.long	.LASF59
	.byte	0x1
	.value	0x3df
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0x3e0
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0x3e2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x776e
	.string	"restore_fixed_argument_area"
	.byte	0x1
	.value	0x40d
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x32
	.long	.LASF40
	.byte	0x1
	.value	0x409
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x40a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x40b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0x40c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0x40e
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0x416
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x785b
	.string	"store_unaligned_arguments_into_pseudos"
	.byte	0x1
	.value	0x433
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x431
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x432
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x434
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x434
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2d
	.string	"bytes"
	.byte	0x1
	.value	0x43c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"big_endian_correction"
	.byte	0x1
	.value	0x43d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x450
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"word"
	.byte	0x1
	.value	0x451
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"bitsize"
	.byte	0x1
	.value	0x452
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7a17
	.string	"initialize_argument_information"
	.byte	0x1
	.value	0x494
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x488
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x489
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF30
	.byte	0x1
	.value	0x48a
	.long	0x7a17
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x48b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x48c
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x48d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF51
	.byte	0x1
	.value	0x48e
	.long	0x7461
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x48f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LASF64
	.byte	0x1
	.value	0x490
	.long	0x1760
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.long	.LASF65
	.byte	0x1
	.value	0x491
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x492
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x493
	.long	0x80f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x496
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"argpos"
	.byte	0x1
	.value	0x499
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0x49b
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x49c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x49d
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0x4b4
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x4b5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x4b6
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	0x79fc
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2d
	.string	"copy"
	.byte	0x1
	.value	0x50b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2e
	.long	.LASF67
	.byte	0x1
	.value	0x515
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x583
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5aea
	.uleb128 0x2b
	.long	0x7a9f
	.string	"compute_argument_block_size"
	.byte	0x1
	.value	0x5a4
	.byte	0x1
	.long	0x2e0
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x5a1
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF30
	.byte	0x1
	.value	0x5a2
	.long	0x7a17
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.value	0x5a3
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF68
	.byte	0x1
	.value	0x5a5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF52
	.long	0x9151
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15365
	.byte	0x0
	.uleb128 0x33
	.long	0x7b31
	.string	"precompute_arguments"
	.byte	0x1
	.value	0x5fa
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x5f7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x5f8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x5f9
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x5fb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	0x7b20
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x610
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LASF52
	.long	0x913c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15453
	.byte	0x0
	.uleb128 0x2b
	.long	0x7bf1
	.string	"finalize_must_preallocate"
	.byte	0x1
	.value	0x642
	.byte	0x1
	.long	0x2e0
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x63e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x63f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x640
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF30
	.byte	0x1
	.value	0x641
	.long	0x7a17
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2d
	.string	"partial_seen"
	.byte	0x1
	.value	0x658
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"copy_to_evaluate_size"
	.byte	0x1
	.value	0x659
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x65a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7cc7
	.string	"compute_argument_addresses"
	.byte	0x1
	.value	0x680
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x67d
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x67e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x67f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2d
	.string	"arg_reg"
	.byte	0x1
	.value	0x683
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x684
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"arg_offset"
	.byte	0x1
	.value	0x684
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x68b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF39
	.byte	0x1
	.value	0x68c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"addr"
	.byte	0x1
	.value	0x68d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7d42
	.string	"rtx_for_function_call"
	.byte	0x1
	.value	0x6bf
	.byte	0x1
	.long	0x9a
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x6bd
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"addr"
	.byte	0x1
	.value	0x6be
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.value	0x6c0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2d
	.string	"funaddr"
	.byte	0x1
	.value	0x6d3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7e00
	.string	"load_register_parameters"
	.byte	0x1
	.value	0x6ea
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x6e6
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x6e7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x6e8
	.long	0x1760
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x6e9
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x6eb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x6eb
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x6f3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF38
	.byte	0x1
	.value	0x6f5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"nregs"
	.byte	0x1
	.value	0x6f6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7f2f
	.string	"try_to_integrate"
	.byte	0x1
	.value	0x736
	.byte	0x1
	.long	0x9a
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x730
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x731
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"target"
	.byte	0x1
	.value	0x732
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"ignore"
	.byte	0x1
	.value	0x733
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x734
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF69
	.byte	0x1
	.value	0x735
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0x737
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0x738
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x739
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF64
	.byte	0x1
	.value	0x73a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.value	0x73b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2d
	.string	"first_insn"
	.byte	0x1
	.value	0x762
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"insn"
	.byte	0x1
	.value	0x764
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x764
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2d
	.string	"adjust"
	.byte	0x1
	.value	0x783
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7fd6
	.string	"combine_pending_stack_adjustment_and_call"
	.byte	0x1
	.value	0x7b7
	.byte	0x1
	.long	0x2e0
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x32
	.long	.LASF68
	.byte	0x1
	.value	0x7b4
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF30
	.byte	0x1
	.value	0x7b5
	.long	0x7a17
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x7b6
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"adjustment"
	.byte	0x1
	.value	0x7ba
	.long	0x480
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"unadjusted_alignment"
	.byte	0x1
	.value	0x7bd
	.long	0x480
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	0x8064
	.string	"check_sibcall_argument_overlap_1"
	.byte	0x1
	.value	0x7eb
	.byte	0x1
	.long	0x2e0
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x7ea
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"code"
	.byte	0x1
	.value	0x7ec
	.long	0xb27
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x7ed
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x7ed
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.value	0x7ee
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0x7ef
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	0x80db
	.string	"check_sibcall_argument_overlap"
	.byte	0x1
	.value	0x82b
	.byte	0x1
	.long	0x2e0
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2c
	.string	"insn"
	.byte	0x1
	.value	0x829
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x82a
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x82c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"high"
	.byte	0x1
	.value	0x82c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	0x813f
	.string	"fix_unsafe_tree"
	.byte	0x1
	.value	0x846
	.byte	0x1
	.long	0x1e2
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x845
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	0x812e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2d
	.string	"var"
	.byte	0x1
	.value	0x852
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	.LASF52
	.long	0x9127
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16353
	.byte	0x0
	.uleb128 0x31
	.long	0x8802
	.byte	0x1
	.string	"expand_call"
	.byte	0x1
	.value	0x86b
	.byte	0x1
	.long	0x9a
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0x868
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2c
	.string	"target"
	.byte	0x1
	.value	0x869
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2c
	.string	"ignore"
	.byte	0x1
	.value	0x86a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF63
	.byte	0x1
	.value	0x870
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.value	0x872
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2d
	.string	"tail_recursion_insns"
	.byte	0x1
	.value	0x874
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2d
	.string	"normal_call_insns"
	.byte	0x1
	.value	0x876
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2d
	.string	"tail_call_insns"
	.byte	0x1
	.value	0x878
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2d
	.string	"funtype"
	.byte	0x1
	.value	0x87a
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x87d
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.string	"insn"
	.byte	0x1
	.value	0x87e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.string	"try_tail_call"
	.byte	0x1
	.value	0x87f
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.string	"try_tail_recursion"
	.byte	0x1
	.value	0x880
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.string	"pass"
	.byte	0x1
	.value	0x881
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.long	.LASF48
	.byte	0x1
	.value	0x885
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.long	.LASF69
	.byte	0x1
	.value	0x888
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.string	"structure_value_addr_parm"
	.byte	0x1
	.value	0x88c
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2e
	.long	.LASF46
	.byte	0x1
	.value	0x890
	.long	0x480
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x1
	.value	0x893
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF53
	.byte	0x1
	.value	0x896
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2e
	.long	.LASF62
	.byte	0x1
	.value	0x899
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.long	.LASF54
	.byte	0x1
	.value	0x89e
	.long	0x761a
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0x8a1
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2d
	.string	"adjusted_args_size"
	.byte	0x1
	.value	0x8a2
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2e
	.long	.LASF68
	.byte	0x1
	.value	0x8a4
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF51
	.byte	0x1
	.value	0x8a6
	.long	0x3d7
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2e
	.long	.LASF45
	.byte	0x1
	.value	0x8a8
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2e
	.long	.LASF66
	.byte	0x1
	.value	0x8b1
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.value	0x8b4
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.value	0x8b8
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.long	.LASF9
	.byte	0x1
	.value	0x8bb
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2d
	.string	"is_integrable"
	.byte	0x1
	.value	0x8bd
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x8c1
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.value	0x8c1
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0x8c2
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x1
	.value	0x8c5
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2e
	.long	.LASF75
	.byte	0x1
	.value	0x8c6
	.long	0x4e9
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"old_stack_arg_under_construction"
	.byte	0x1
	.value	0x8c7
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2e
	.long	.LASF64
	.byte	0x1
	.value	0x8c9
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2e
	.long	.LASF65
	.byte	0x1
	.value	0x8ca
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2e
	.long	.LASF49
	.byte	0x1
	.value	0x8cb
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"old_stack_allocated"
	.byte	0x1
	.value	0x8cc
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2e
	.long	.LASF44
	.byte	0x1
	.value	0x8cd
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x8ce
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.string	"addr"
	.byte	0x1
	.value	0x8cf
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x8d0
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.value	0x8d2
	.long	0x480
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x1
	.value	0x8d4
	.long	0x480
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	0x8529
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x930
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x2f
	.long	0x8547
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0x93e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x2f
	.long	0x8565
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0x95e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x2f
	.long	0x8593
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2d
	.string	"end"
	.byte	0x1
	.value	0x9fb
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x9fb
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x2f
	.long	0x85c1
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x1
	.value	0xa33
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF77
	.byte	0x1
	.value	0xa34
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x2f
	.long	0x87ca
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2e
	.long	.LASF78
	.byte	0x1
	.value	0xa73
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x1
	.value	0xa78
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.long	.LASF77
	.byte	0x1
	.value	0xa79
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xa7a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0xa7b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF47
	.byte	0x1
	.value	0xa7b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	0x864f
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2d
	.string	"needed"
	.byte	0x1
	.value	0xaf6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x2f
	.long	0x866d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2e
	.long	.LASF79
	.byte	0x1
	.value	0xbd1
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x2f
	.long	0x868b
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2e
	.long	.LASF79
	.byte	0x1
	.value	0xbe9
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2f
	.long	0x86d4
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xc40
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0xc4a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0xc4b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8711
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0xc6a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"last"
	.byte	0x1
	.value	0xc6b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xc6b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.long	0x872f
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2d
	.string	"last"
	.byte	0x1
	.value	0xc8a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2f
	.long	0x874b
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2d
	.string	"nt"
	.byte	0x1
	.value	0xccf
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2f
	.long	0x87a1
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0xcfb
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0xcfc
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0xcfd
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2d
	.string	"_rtx"
	.byte	0x1
	.value	0xd11
	.long	0x8802
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0xd2f
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0xd30
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.string	"currently_expanding_call"
	.byte	0x1
	.value	0x86d
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	currently_expanding_call.16366
	.uleb128 0x34
	.long	.LASF52
	.long	0x9112
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16414
	.byte	0x0
	.uleb128 0xb
	.long	0x9a
	.uleb128 0x2b
	.long	0x8db1
	.string	"emit_library_call_value_1"
	.byte	0x1
	.value	0xdbe
	.byte	0x1
	.long	0x9a
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2c
	.string	"retval"
	.byte	0x1
	.value	0xdb7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.value	0xdb8
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0xdb9
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x32
	.long	.LASF81
	.byte	0x1
	.value	0xdba
	.long	0x1766
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0xdbb
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.string	"nargs"
	.byte	0x1
	.value	0xdbc
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0xdbd
	.long	0x40b
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.value	0xdc0
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2d
	.string	"original_args_size"
	.byte	0x1
	.value	0xdc2
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2d
	.string	"argnum"
	.byte	0x1
	.value	0xdc3
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.string	"fun"
	.byte	0x1
	.value	0xdc4
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0xdc5
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2d
	.string	"count"
	.byte	0x1
	.value	0xdc6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0xdc7
	.long	0x5aea
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.value	0xdc8
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2e
	.long	.LASF51
	.byte	0x1
	.value	0xdc9
	.long	0x3d7
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0xd
	.long	0x89c4
	.string	"arg"
	.byte	0x2c
	.byte	0x1
	.value	0xdcb
	.uleb128 0x22
	.long	.LASF20
	.byte	0x1
	.value	0xdcc
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.long	.LASF0
	.byte	0x1
	.value	0xdcd
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"reg"
	.byte	0x1
	.value	0xdce
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x22
	.long	.LASF38
	.byte	0x1
	.value	0xdcf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x22
	.long	.LASF7
	.byte	0x1
	.value	0xdd0
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.value	0xdd1
	.long	0x5aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF40
	.byte	0x1
	.value	0xdd2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2d
	.string	"argvec"
	.byte	0x1
	.value	0xdd4
	.long	0x8db1
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2e
	.long	.LASF49
	.byte	0x1
	.value	0xdd5
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF44
	.byte	0x1
	.value	0xdd6
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.string	"mem_value"
	.byte	0x1
	.value	0xdd7
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2e
	.long	.LASF48
	.byte	0x1
	.value	0xdd8
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x1
	.value	0xdd9
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2e
	.long	.LASF46
	.byte	0x1
	.value	0xdda
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF9
	.byte	0x1
	.value	0xddb
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.value	0xddc
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"needed"
	.byte	0x1
	.value	0xddd
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0xdde
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.string	"tfom"
	.byte	0x1
	.value	0xddf
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0xde4
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.value	0xde4
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0xde5
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x1
	.value	0xde9
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2e
	.long	.LASF75
	.byte	0x1
	.value	0xdea
	.long	0x4e9
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	0x8b00
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2d
	.string	"addr"
	.byte	0x1
	.value	0xe59
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b97
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xe7f
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xe80
	.long	0x82f
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x30
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0xe9a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"must_copy"
	.byte	0x1
	.value	0xe9b
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.long	0x8b7b
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xea6
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x30
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.value	0xebe
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8bd5
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2e
	.long	.LASF59
	.byte	0x1
	.value	0xf77
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0xf78
	.long	0x82f
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0xf7a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x2f
	.long	0x8c7b
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xfa2
	.long	0x82f
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xfa3
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0xfa4
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF38
	.byte	0x1
	.value	0xfa5
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF83
	.byte	0x1
	.value	0xfa6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF84
	.byte	0x1
	.value	0xfa6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xfa6
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0xfc4
	.long	0x82f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0xfc8
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8cb9
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0x1004
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x1005
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF38
	.byte	0x1
	.value	0x1006
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2f
	.long	0x8cd7
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x1015
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2f
	.long	0x8cf5
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2d
	.string	"last"
	.byte	0x1
	.value	0x104d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2f
	.long	0x8d48
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x1062
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0x106c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF70
	.byte	0x1
	.value	0x106d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x106e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8d74
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0x10ab
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0x10b3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2f
	.long	0x8da0
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0x10c7
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0x10c8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x34
	.long	.LASF52
	.long	0x90fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17638
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x894d
	.uleb128 0x35
	.long	0x8e2c
	.byte	0x1
	.string	"emit_library_call"
	.byte	0x1
	.value	0x10f1
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.value	0x10ef
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF81
	.byte	0x1
	.value	0x10ef
	.long	0x1766
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x10ef
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"nargs"
	.byte	0x1
	.value	0x10ef
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x10f9
	.long	0x40b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x31
	.long	0x8ecc
	.byte	0x1
	.string	"emit_library_call_value"
	.byte	0x1
	.value	0x1113
	.byte	0x1
	.long	0x9a
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.value	0x1110
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0x1110
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF81
	.byte	0x1
	.value	0x1110
	.long	0x1766
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x1110
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"nargs"
	.byte	0x1
	.value	0x1110
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.uleb128 0x2d
	.string	"result"
	.byte	0x1
	.value	0x1114
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x111e
	.long	0x40b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x90d8
	.string	"store_one_arg"
	.byte	0x1
	.value	0x1149
	.byte	0x1
	.long	0x2e0
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x1144
	.long	0x761a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x1145
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x1146
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"variable_size"
	.byte	0x1
	.value	0x1147
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0x1148
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"pval"
	.byte	0x1
	.value	0x114a
	.long	0x1e2
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x114b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF38
	.byte	0x1
	.value	0x114c
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"used"
	.byte	0x1
	.value	0x114d
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x114e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF83
	.byte	0x1
	.value	0x114e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF84
	.byte	0x1
	.value	0x114e
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF78
	.byte	0x1
	.value	0x114f
	.long	0x2e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	0x901b
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x1
	.value	0x117a
	.long	0x82f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.value	0x117c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2d
	.string	"ot"
	.byte	0x1
	.value	0x1183
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"nt"
	.byte	0x1
	.value	0x1184
	.long	0x1e2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x9038
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2e
	.long	.LASF8
	.byte	0x1
	.value	0x11df
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2f
	.long	0x90c7
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2d
	.string	"parm_align"
	.byte	0x1
	.value	0x120b
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"excess"
	.byte	0x1
	.value	0x120c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF67
	.byte	0x1
	.value	0x120d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	0x90a2
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2d
	.string	"excess_align"
	.byte	0x1
	.value	0x1231
	.long	0x3b9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x123a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x123b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LASF52
	.long	0x90e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18743
	.byte	0x0
	.uleb128 0x10
	.long	0x90e8
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x90d8
	.uleb128 0x10
	.long	0x90fd
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x19
	.byte	0x0
	.uleb128 0xb
	.long	0x90ed
	.uleb128 0x10
	.long	0x9112
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xb
	.byte	0x0
	.uleb128 0xb
	.long	0x9102
	.uleb128 0x10
	.long	0x9127
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x9117
	.uleb128 0x10
	.long	0x913c
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0x912c
	.uleb128 0x10
	.long	0x9151
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0x1b
	.byte	0x0
	.uleb128 0xb
	.long	0x9141
	.uleb128 0xb
	.long	0x9102
	.uleb128 0x37
	.string	"stack_usage_map"
	.byte	0x1
	.byte	0x96
	.long	0x4e9
	.byte	0x5
	.byte	0x3
	.long	stack_usage_map
	.uleb128 0x37
	.string	"highest_outgoing_arg_in_use"
	.byte	0x1
	.byte	0x99
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	highest_outgoing_arg_in_use
	.uleb128 0x37
	.string	"stored_args_map"
	.byte	0x1
	.byte	0xa0
	.long	0x6024
	.byte	0x5
	.byte	0x3
	.long	stored_args_map
	.uleb128 0x2d
	.string	"calls_function_save_exprs"
	.byte	0x1
	.value	0x104
	.long	0x1e2
	.byte	0x5
	.byte	0x3
	.long	calls_function_save_exprs
	.uleb128 0x38
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"mips_abi"
	.byte	0xc
	.value	0x3ca
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x921f
	.long	0xa78
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0x922c
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x920f
	.uleb128 0x10
	.long	0x9241
	.long	0x428
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x9254
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9231
	.uleb128 0x10
	.long	0x9269
	.long	0x439
	.uleb128 0x11
	.long	0x3d0
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0x927f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9259
	.uleb128 0x38
	.string	"word_mode"
	.byte	0x5
	.byte	0xad
	.long	0x82f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x92a7
	.long	0x428
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_length"
	.byte	0x4
	.byte	0x3c
	.long	0x92bb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9297
	.uleb128 0x10
	.long	0x92d0
	.long	0x2cd
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_format"
	.byte	0x4
	.byte	0x42
	.long	0x92e4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x92c0
	.uleb128 0x10
	.long	0x92f9
	.long	0x2d8
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x38
	.string	"rtx_class"
	.byte	0x4
	.byte	0x45
	.long	0x930c
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x92e9
	.uleb128 0x39
	.string	"rtx_equal_function_value_matters"
	.byte	0x4
	.value	0x541
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x934c
	.long	0x9a
	.uleb128 0x11
	.long	0x3d0
	.byte	0x80
	.byte	0x0
	.uleb128 0x39
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x6a4
	.long	0x933c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x9374
	.long	0x9a
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa
	.byte	0x0
	.uleb128 0x39
	.string	"global_rtl"
	.byte	0x4
	.value	0x6e5
	.long	0x9364
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"struct_value_rtx"
	.byte	0x4
	.value	0x6f4
	.long	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"static_chain_rtx"
	.byte	0x4
	.value	0x6f6
	.long	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x93ca
	.long	0x2d8
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x38
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0x93e2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x93bf
	.uleb128 0x10
	.long	0x93f7
	.long	0x1e2
	.uleb128 0x11
	.long	0x3d0
	.byte	0x3a
	.byte	0x0
	.uleb128 0x39
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x93e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x941e
	.long	0x1e2
	.uleb128 0x11
	.long	0x3d0
	.byte	0xa
	.byte	0x0
	.uleb128 0x39
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0x940e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x9446
	.long	0x1e2
	.uleb128 0x11
	.long	0x3d0
	.byte	0x5
	.byte	0x0
	.uleb128 0x39
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xad1
	.long	0x9436
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"optimize"
	.byte	0x10
	.byte	0x43
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"warn_inline"
	.byte	0x10
	.byte	0x75
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"warn_aggregate_return"
	.byte	0x10
	.byte	0xae
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"profile_arc_flag"
	.byte	0x10
	.byte	0xcc
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_defer_pop"
	.byte	0x10
	.value	0x112
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_optimize_sibling_calls"
	.byte	0x10
	.value	0x167
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_no_inline"
	.byte	0x10
	.value	0x19a
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_stack_check"
	.byte	0x10
	.value	0x242
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"cfun"
	.byte	0xb
	.value	0x202
	.long	0x4fa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"virtuals_instantiated"
	.byte	0xb
	.value	0x205
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF37
	.byte	0x11
	.value	0x176
	.long	0x958d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x6a80
	.uleb128 0x3d
	.string	"stack_arg_under_construction"
	.byte	0x1
	.byte	0xa7
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	stack_arg_under_construction
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x32
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xae
	.value	0x2
	.long	.Ldebug_info0
	.long	0x95be
	.long	0x721e
	.string	"prepare_call_address"
	.long	0x74dc
	.string	"setjmp_call_p"
	.long	0x7514
	.string	"alloca_call_p"
	.long	0x813f
	.string	"expand_call"
	.long	0x8db7
	.string	"emit_library_call"
	.long	0x8e2c
	.string	"emit_library_call_value"
	.long	0x9592
	.string	"stack_arg_under_construction"
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
.LASF41:
	.string	"alignment_pad"
.LASF77:
	.string	"save_stack_pointer_delta"
.LASF27:
	.string	"name"
.LASF43:
	.string	"fndecl"
.LASF12:
	.string	"lang_flag_1"
.LASF13:
	.string	"lang_flag_2"
.LASF17:
	.string	"lang_flag_6"
.LASF65:
	.string	"old_pending_adj"
.LASF8:
	.string	"size"
.LASF6:
	.string	"mem_attrs"
.LASF64:
	.string	"old_stack_level"
.LASF53:
	.string	"num_actuals"
.LASF81:
	.string	"fn_type"
.LASF68:
	.string	"unadjusted_args_size"
.LASF1:
	.string	"common"
.LASF28:
	.string	"lang_specific"
.LASF35:
	.string	"sequence_rtl_expr"
.LASF56:
	.string	"argblock"
.LASF34:
	.string	"sequence_stack"
.LASF32:
	.string	"function_frequency"
.LASF14:
	.string	"lang_flag_3"
.LASF29:
	.string	"function"
.LASF62:
	.string	"n_named_args"
.LASF3:
	.string	"unsigned int"
.LASF80:
	.string	"orgfun"
.LASF57:
	.string	"low_to_save"
.LASF45:
	.string	"reg_parm_seen"
.LASF22:
	.string	"abstract_origin"
.LASF46:
	.string	"struct_value_size"
.LASF25:
	.string	"pointer_depth"
.LASF60:
	.string	"save_mode"
.LASF47:
	.string	"next_arg_reg"
.LASF73:
	.string	"pcc_struct_value"
.LASF40:
	.string	"save_area"
.LASF26:
	.string	"user_align"
.LASF50:
	.string	"ecf_flags"
.LASF37:
	.string	"lang_hooks"
.LASF63:
	.string	"actparms"
.LASF23:
	.string	"size_unit"
.LASF42:
	.string	"funexp"
.LASF76:
	.string	"save_pending_stack_adjust"
.LASF2:
	.string	"type"
.LASF70:
	.string	"temp"
.LASF69:
	.string	"structure_value_addr"
.LASF20:
	.string	"value"
.LASF31:
	.string	"preferred_stack_boundary"
.LASF55:
	.string	"reg_parm_stack_space"
.LASF58:
	.string	"high_to_save"
.LASF30:
	.string	"args_size"
.LASF51:
	.string	"args_so_far"
.LASF71:
	.string	"before_call"
.LASF66:
	.string	"must_preallocate"
.LASF75:
	.string	"initial_stack_usage_map"
.LASF59:
	.string	"num_to_save"
.LASF36:
	.string	"insns"
.LASF11:
	.string	"lang_flag_0"
.LASF15:
	.string	"lang_flag_4"
.LASF16:
	.string	"lang_flag_5"
.LASF21:
	.string	"abstract_flag"
.LASF79:
	.string	"before_arg"
.LASF5:
	.string	"mode_class"
.LASF78:
	.string	"sibcall_failure"
.LASF33:
	.string	"unsignedp"
.LASF19:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF49:
	.string	"old_inhibit_defer_pop"
.LASF82:
	.string	"outmode"
.LASF67:
	.string	"size_rtx"
.LASF10:
	.string	"built_in_class"
.LASF39:
	.string	"slot_offset"
.LASF54:
	.string	"args"
.LASF9:
	.string	"flags"
.LASF72:
	.string	"preferred_unit_stack_boundary"
.LASF38:
	.string	"partial"
.LASF52:
	.string	"__FUNCTION__"
.LASF61:
	.string	"stack_area"
.LASF0:
	.string	"mode"
.LASF84:
	.string	"upper_bound"
.LASF48:
	.string	"valreg"
.LASF4:
	.string	"_IO_FILE"
.LASF83:
	.string	"lower_bound"
.LASF24:
	.string	"attributes"
.LASF18:
	.string	"length"
.LASF44:
	.string	"call_fusage"
.LASF74:
	.string	"initial_highest_arg_in_use"
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
