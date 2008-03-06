	.file	"unroll.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 32
	.type	factors, @object
	.size	factors, 32
factors:
	.long	2
	.long	0
	.long	3
	.long	0
	.long	5
	.long	0
	.long	7
	.long	0
	.section	.rodata
	.type	__FUNCTION__.10887, @object
	.size	__FUNCTION__.10887, 12
__FUNCTION__.10887:
	.string	"unroll_loop"
	.align 4
.LC0:
	.string	"Unrolling failure: Loop too big.\n"
.LC1:
	.string	"Loop unrolling: "
.LC2:
	.string	"%lld"
.LC3:
	.string	" iterations.\n"
.globl __udivdi3
.globl __umoddi3
	.align 4
.LC4:
	.string	"Loop unrolling: No factors found.\n"
.LC5:
	.string	"Unrolling loop %d times.\n"
	.align 4
.LC6:
	.string	"Unrolling failure: loop does not end with a JUMP_INSN.\n"
	.align 4
.LC7:
	.string	"Splitting not safe, because loop not entered at top.\n"
	.align 4
.LC8:
	.string	"Unrolling failure: unknown insns between BEG note and loop label.\n"
	.align 4
.LC9:
	.string	"Unrolling failure: loop start label is gone\n"
	.align 4
.LC10:
	.string	"Unrolling failure: final conditional branch not to loop start\n"
.LC11:
	.string	"../../../kgccfe/gnu/unroll.c"
.LC12:
	.string	"Marked reg %d as local\n"
.LC13:
	.string	"Did not mark reg %d as local\n"
.LC14:
	.string	"unroll_loop_precondition"
	.align 4
.LC15:
	.string	"Unrolling failure: Naive unrolling not being done.\n"
.LC16:
	.string	"unroll_loop"
	.text
.globl unroll_loop
	.type	unroll_loop, @function
unroll_loop:
.LFB15:
	.file 1 "../../../kgccfe/gnu/unroll.c"
	.loc 1 233 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$396, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -224(%ebp)
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -220(%ebp)
	.loc 1 239 0
	movl	$1, -204(%ebp)
	.loc 1 245 0
	movl	$0, -160(%ebp)
	.loc 1 249 0
	movl	$0, -144(%ebp)
	.loc 1 252 0
	movl	$0, -132(%ebp)
	.loc 1 253 0
	movl	$2, -128(%ebp)
	.loc 1 254 0
	movl	$0, -124(%ebp)
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 266 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	cmpl	12(%ebp), %eax
	jge	.L2
	.loc 1 268 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 269 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$33, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 270 0
	jmp	.L319
.L2:
	.loc 1 281 0
	cmpl	$0, 16(%ebp)
	jne	.L7
	.loc 1 282 0
	movl	-224(%ebp), %eax
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
.L7:
	.loc 1 284 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L9
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 286 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 287 0
	movl	-224(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 289 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L9:
	.loc 1 294 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -116(%ebp)
	.loc 1 299 0
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L12
.LBB2:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ujump_to_loop_cont
	movl	%eax, -104(%ebp)
	.loc 1 318 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L14
	.loc 1 321 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
.L14:
	.loc 1 324 0
	cmpl	$0, -104(%ebp)
	je	.L12
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L12
	.loc 1 329 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 337 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L18
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L18:
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L20:
	.loc 1 344 0
	cmpl	$0, -112(%ebp)
	je	.L22
	.loc 1 345 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L22:
	.loc 1 346 0
	cmpl	$0, -108(%ebp)
	je	.L319
	.loc 1 347 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 349 0
	jmp	.L319
.L12:
.LBE2:
	.loc 1 353 0
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L26
	movl	-224(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %eax
	movl	%eax, -336(%ebp)
	movl	$0, -332(%ebp)
	movl	-332(%ebp), %ecx
	cmpl	%ecx, -340(%ebp)
	ja	.L26
	movl	-332(%ebp), %eax
	cmpl	%eax, -340(%ebp)
	jb	.L29
	movl	-336(%ebp), %edx
	cmpl	%edx, -344(%ebp)
	jae	.L26
.L29:
	movl	-224(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	12(%ebp), %eax
	movl	%eax, -360(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -356(%ebp)
	movl	-360(%ebp), %ecx
	imull	%edi, %ecx
	movl	-356(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -348(%ebp)
	addl	-348(%ebp), %ecx
	movl	-360(%ebp), %eax
	mull	%esi
	movl	%eax, -328(%ebp)
	movl	%edx, -324(%ebp)
	addl	-324(%ebp), %ecx
	movl	%ecx, -324(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	$0, -316(%ebp)
	movl	-316(%ebp), %edx
	cmpl	%edx, -324(%ebp)
	ja	.L26
	movl	-316(%ebp), %ecx
	cmpl	%ecx, -324(%ebp)
	jb	.L31
	movl	-320(%ebp), %eax
	cmpl	%eax, -328(%ebp)
	jae	.L26
.L31:
	.loc 1 358 0
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, -204(%ebp)
	.loc 1 359 0
	movl	$0, -128(%ebp)
	.loc 1 353 0
	jmp	.L32
.L26:
	.loc 1 361 0
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L32
	.loc 1 367 0
	movl	$0, -216(%ebp)
	jmp	.L34
.L35:
	.loc 1 368 0
	movl	-216(%ebp), %eax
	movl	$0, 4+factors@GOTOFF(%ebx,%eax,8)
	.loc 1 367 0
	addl	$1, -216(%ebp)
.L34:
	cmpl	$3, -216(%ebp)
	jle	.L35
	.loc 1 370 0
	movl	-224(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	.loc 1 371 0
	movl	$3, -216(%ebp)
	jmp	.L37
.L40:
	.loc 1 374 0
	movl	-216(%ebp), %edx
	movl	4+factors@GOTOFF(%ebx,%edx,8), %eax
	addl	$1, %eax
	movl	%eax, 4+factors@GOTOFF(%ebx,%edx,8)
	.loc 1 375 0
	movl	-216(%ebp), %eax
	movl	factors@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L39:
	.loc 1 372 0
	movl	-216(%ebp), %eax
	movl	factors@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 371 0
	subl	$1, -216(%ebp)
.L37:
	cmpl	$0, -216(%ebp)
	jns	.L39
	.loc 1 381 0
	movl	$1, -204(%ebp)
	.loc 1 382 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	.loc 1 383 0
	movl	$3, -216(%ebp)
	jmp	.L43
.L46:
	.loc 1 386 0
	movl	-216(%ebp), %eax
	movl	factors@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -360(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -356(%ebp)
	movl	-356(%ebp), %esi
	imull	-248(%ebp), %esi
	movl	-244(%ebp), %ecx
	imull	-360(%ebp), %ecx
	addl	%ecx, %esi
	movl	-248(%ebp), %ecx
	movl	-360(%ebp), %eax
	mull	%ecx
	movl	%eax, -312(%ebp)
	movl	%edx, -308(%ebp)
	addl	-308(%ebp), %esi
	movl	%esi, -308(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %eax
	movl	%eax, -304(%ebp)
	movl	$0, -300(%ebp)
	movl	-300(%ebp), %edx
	cmpl	%edx, -308(%ebp)
	ja	.L47
	movl	-300(%ebp), %ecx
	cmpl	%ecx, -308(%ebp)
	jb	.L49
	movl	-304(%ebp), %eax
	cmpl	%eax, -312(%ebp)
	jae	.L47
.L49:
	.loc 1 388 0
	movl	-216(%ebp), %eax
	movl	factors@GOTOFF(%ebx,%eax,8), %edx
	movl	-204(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -204(%ebp)
	.loc 1 389 0
	movl	-216(%ebp), %eax
	movl	factors@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-244(%ebp), %ecx
	imull	%eax, %ecx
	movl	%edx, %esi
	imull	-248(%ebp), %esi
	addl	%esi, %ecx
	mull	-248(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L45:
	.loc 1 384 0
	movl	-216(%ebp), %eax
	movl	4+factors@GOTOFF(%ebx,%eax,8), %edx
	subl	$1, %edx
	movl	%edx, 4+factors@GOTOFF(%ebx,%eax,8)
	movl	4+factors@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$-1, %eax
	jne	.L46
.L47:
	.loc 1 383 0
	subl	$1, -216(%ebp)
.L43:
	cmpl	$0, -216(%ebp)
	jns	.L45
	.loc 1 397 0
	cmpl	$1, -204(%ebp)
	jne	.L51
	.loc 1 399 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L32
	.loc 1 400 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L32
.L51:
	.loc 1 403 0
	movl	$1, -128(%ebp)
.L32:
	.loc 1 408 0
	cmpl	$2, -128(%ebp)
	jne	.L55
	.loc 1 410 0
	movl	12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jge	.L57
	.loc 1 411 0
	movl	$8, -204(%ebp)
	jmp	.L55
.L57:
	.loc 1 412 0
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jge	.L59
	.loc 1 413 0
	movl	$4, -204(%ebp)
	jmp	.L55
.L59:
	.loc 1 415 0
	movl	$2, -204(%ebp)
.L55:
	.loc 1 420 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 421 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L61:
	.loc 1 423 0
	cmpl	$0, -128(%ebp)
	je	.L63
	cmpl	$1, -128(%ebp)
	jne	.L65
.L63:
	.loc 1 448 0
	movl	-112(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 449 0
	jmp	.L66
.L67:
	.loc 1 450 0
	movl	-192(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
.L66:
	.loc 1 449 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L68
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L67
.L68:
	.loc 1 451 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L319
.L65:
	.loc 1 455 0
	cmpl	$0, -128(%ebp)
	jne	.L70
	.loc 1 464 0
	movl	-112(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 469 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 472 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L72
	.loc 1 473 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L79
.L72:
	.loc 1 474 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L75
	.loc 1 476 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L79
.L75:
	.loc 1 490 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 491 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$55, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 493 0
	jmp	.L319
.L70:
	.loc 1 496 0
	cmpl	$1, -128(%ebp)
	jne	.L80
	.loc 1 504 0
	movl	-112(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 508 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L82
	.loc 1 510 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 511 0
	movl	-168(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L79
.L82:
	.loc 1 513 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L85
	.loc 1 515 0
	movl	-116(%ebp), %eax
	movl	%eax, -168(%ebp)
	.loc 1 522 0
	movl	-168(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L79
.L85:
	.loc 1 530 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 531 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$55, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 533 0
	jmp	.L319
.L80:
	.loc 1 541 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L89
	.loc 1 551 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 552 0
	movl	-168(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L91
.L89:
	.loc 1 554 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L92
	.loc 1 559 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 560 0
	movl	-116(%ebp), %eax
	movl	%eax, -196(%ebp)
	jmp	.L91
.L92:
	.loc 1 568 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 569 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$55, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 571 0
	jmp	.L319
.L91:
	.loc 1 581 0
	call	gen_label_rtx@PLT
	movl	%eax, -144(%ebp)
	.loc 1 583 0
	movl	-112(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 584 0
	jmp	.L96
.L97:
	.loc 1 585 0
	movl	-192(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
.L96:
	.loc 1 584 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L98
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L97
.L98:
	.loc 1 587 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L100
	.loc 1 592 0
	movl	-192(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -200(%ebp)
	.loc 1 599 0
	movl	$1, -132(%ebp)
	.loc 1 600 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 601 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$53, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L79
.L100:
	.loc 1 605 0
	movl	-112(%ebp), %eax
	movl	%eax, -200(%ebp)
.L79:
	.loc 1 609 0
	movl	-200(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 611 0
	jmp	.L104
.L105:
	.loc 1 612 0
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -140(%ebp)
.L104:
	.loc 1 611 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L105
	.loc 1 613 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L107
	.loc 1 622 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 623 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$66, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 625 0
	jmp	.L319
.L107:
	.loc 1 627 0
	movl	-140(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L111
	.loc 1 634 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 635 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 637 0
	jmp	.L319
.L111:
	.loc 1 640 0
	cmpl	$2, -128(%ebp)
	jne	.L115
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L115
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L115
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	cmpl	-140(%ebp), %eax
	je	.L115
	.loc 1 648 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 649 0
	movl	-116(%ebp), %eax
	movl	%eax, -196(%ebp)
.L115:
	.loc 1 652 0
	cmpl	$2, -128(%ebp)
	jne	.L120
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L120
	movl	-116(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-140(%ebp), %eax
	je	.L120
	.loc 1 663 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 664 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$62, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 666 0
	jmp	.L319
.L120:
	.loc 1 672 0
	call	max_label_num@PLT
	movl	%eax, -176(%ebp)
	.loc 1 673 0
	call	get_max_uid@PLT
	movl	%eax, -172(%ebp)
	.loc 1 679 0
	movl	$328, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -164(%ebp)
	.loc 1 683 0
	cmpl	$0, -176(%ebp)
	jle	.L126
	.loc 1 685 0
	movl	-176(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 686 0
	movl	-176(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -160(%ebp)
.L126:
	.loc 1 696 0
	movl	-200(%ebp), %eax
	movl	%eax, -192(%ebp)
	jmp	.L128
.L129:
.LBB3:
	.loc 1 700 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L130
	.loc 1 701 0
	movl	-192(%ebp), %eax
	movl	52(%eax), %eax
	addl	-160(%ebp), %eax
	movb	$1, (%eax)
	jmp	.L132
.L130:
	.loc 1 702 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L132
	.loc 1 704 0
	movl	-192(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L134
	.loc 1 705 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %edx
	movl	-192(%ebp), %eax
	movl	76(%eax), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-192(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L132
.L134:
	.loc 1 708 0
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L136
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L132
.L136:
.LBB4:
	.loc 1 711 0
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 712 0
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	.loc 1 713 0
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 716 0
	movl	$0, -216(%ebp)
	jmp	.L138
.L139:
	.loc 1 718 0
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-216(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 719 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %edx
	movl	-84(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 716 0
	addl	$1, -216(%ebp)
.L138:
	movl	-216(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jl	.L139
.L132:
.LBE4:
	.loc 1 723 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	.L140
	.loc 1 724 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L140:
.LBE3:
	.loc 1 696 0
	movl	-192(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
.L128:
	movl	-192(%ebp), %eax
	cmpl	-108(%ebp), %eax
	jne	.L129
	.loc 1 730 0
	movl	-172(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 734 0
	movl	-164(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 743 0
	call	max_reg_num@PLT
	movl	%eax, -148(%ebp)
	.loc 1 746 0
	movl	-148(%ebp), %eax
	movl	%eax, -152(%ebp)
	.loc 1 756 0
	movl	$4, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, splittable_regs@GOTOFF(%ebx)
	.loc 1 757 0
	movl	$4, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, splittable_regs_updates@GOTOFF(%ebx)
	.loc 1 758 0
	movl	$4, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, addr_combined_regs@GOTOFF(%ebx)
	.loc 1 760 0
	movl	$1, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -156(%ebp)
	.loc 1 764 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L143
.LBB5:
	.loc 1 766 0
	movl	-200(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L145
	movl	-200(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 767 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L147
	jmp	.L148
.L145:
	.loc 1 766 0
	leal	__FUNCTION__.10887@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$766, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L147:
	.loc 1 767 0
	movl	-196(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 771 0
	movl	-196(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L149
	jmp	.L150
.L148:
	.loc 1 767 0
	leal	__FUNCTION__.10887@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$767, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L149:
	.loc 1 772 0
	subl	$1, -76(%ebp)
.L150:
	.loc 1 786 0
	movl	-200(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jne	.L151
	.loc 1 787 0
	addl	$1, -80(%ebp)
.L151:
	.loc 1 794 0
	movl	$176, -208(%ebp)
	jmp	.L153
.L154:
	.loc 1 795 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L155
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L155
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-80(%ebp), %eax
	jl	.L155
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	.L155
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L155
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-76(%ebp), %eax
	jg	.L155
	.loc 1 809 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %esi
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %ecx
	movl	-196(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	set_dominates_use@PLT
	testl	%eax, %eax
	je	.L162
	.loc 1 811 0
	movl	-208(%ebp), %eax
	addl	-156(%ebp), %eax
	movb	$1, (%eax)
.L162:
	.loc 1 813 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 815 0
	movl	-208(%ebp), %eax
	addl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L165
	.loc 1 816 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L155
.L165:
	.loc 1 818 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L155:
	.loc 1 794 0
	addl	$1, -208(%ebp)
.L153:
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -208(%ebp)
	jb	.L154
.L143:
.LBE5:
	.loc 1 846 0
	cmpl	$2, -128(%ebp)
	jne	.L167
	cmpl	$0, -132(%ebp)
	jne	.L167
	cmpl	$0, 16(%ebp)
	je	.L167
.LBB6:
	.loc 1 851 0
	leal	-240(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	precondition_loop_p@PLT
	testl	%eax, %eax
	je	.L167
.LBB7:
	.loc 1 858 0
	movl	-224(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 859 0
	cmpl	$116, -52(%ebp)
	je	.L172
	cmpl	$120, -52(%ebp)
	je	.L172
	cmpl	$117, -52(%ebp)
	je	.L172
	cmpl	$121, -52(%ebp)
	jne	.L176
.L172:
	movl	$1, -292(%ebp)
	jmp	.L177
.L176:
	movl	$0, -292(%ebp)
.L177:
	movl	-292(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 860 0
	cmpl	$120, -52(%ebp)
	je	.L178
	cmpl	$118, -52(%ebp)
	je	.L178
	cmpl	$121, -52(%ebp)
	je	.L178
	cmpl	$119, -52(%ebp)
	jne	.L182
.L178:
	movl	$1, -288(%ebp)
	jmp	.L183
.L182:
	movl	$0, -288(%ebp)
.L183:
	movl	-288(%ebp), %ecx
	movl	%ecx, -44(%ebp)
	.loc 1 862 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 864 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$17, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 866 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 868 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	init_reg_map
	.loc 1 872 0
	cmpl	$4, -204(%ebp)
	jle	.L184
	.loc 1 873 0
	movl	$4, -204(%ebp)
.L184:
	.loc 1 877 0
	movl	$0, -56(%ebp)
	.loc 1 878 0
	movl	-236(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 879 0
	cmpl	$0, -60(%ebp)
	jns	.L186
	.loc 1 881 0
	negl	-60(%ebp)
	.loc 1 882 0
	movl	$1, -56(%ebp)
.L186:
	.loc 1 885 0
	call	start_sequence@PLT
	.loc 1 889 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -232(%ebp)
	.loc 1 890 0
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -228(%ebp)
	.loc 1 895 0
	movl	-232(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -232(%ebp)
	.loc 1 896 0
	movl	-232(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	nonmemory_operand@PLT
	testl	%eax, %eax
	jne	.L188
	.loc 1 897 0
	movl	-232(%ebp), %eax
	movl	-240(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_reg@PLT
	movl	%eax, -232(%ebp)
.L188:
	.loc 1 912 0
	cmpl	$112, -52(%ebp)
	je	.L190
	movl	-48(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L192
.L190:
	.loc 1 913 0
	movl	-228(%ebp), %eax
	movl	-232(%ebp), %edx
	movl	-240(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$86, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -72(%ebp)
	.loc 1 912 0
	jmp	.L193
.L192:
	.loc 1 916 0
	movl	-240(%ebp), %eax
	movl	%eax, -284(%ebp)
	movl	-228(%ebp), %edx
	movl	%edx, -280(%ebp)
	movl	-240(%ebp), %ecx
	movl	%ecx, -276(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L194
	movl	$96, -272(%ebp)
	jmp	.L196
.L194:
	movl	$87, -272(%ebp)
.L196:
	movl	-284(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-276(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_unary@PLT
	movl	%eax, -72(%ebp)
.L193:
	.loc 1 918 0
	movl	$0, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -72(%ebp)
	.loc 1 922 0
	movl	-204(%ebp), %eax
	imull	-60(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-240(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$93, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -72(%ebp)
	.loc 1 924 0
	movl	$0, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -72(%ebp)
	.loc 1 929 0
	movl	-204(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 930 0
	movl	$0, -216(%ebp)
	jmp	.L197
.L198:
	.loc 1 931 0
	movl	-216(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-64(%ebp), %esi
	call	gen_label_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 930 0
	addl	$1, -216(%ebp)
.L197:
	movl	-216(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L198
	.loc 1 939 0
	cmpl	$112, -52(%ebp)
	je	.L200
.LBB8:
	.loc 1 944 0
	movl	-236(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	-240(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, -40(%ebp)
	.loc 1 946 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -40(%ebp)
	.loc 1 949 0
	cmpl	$0, -48(%ebp)
	je	.L202
	cmpl	$0, -44(%ebp)
	je	.L204
	movl	$118, -264(%ebp)
	jmp	.L206
.L204:
	movl	$114, -264(%ebp)
.L206:
	movl	-264(%ebp), %edx
	movl	%edx, -268(%ebp)
	jmp	.L207
.L202:
	cmpl	$0, -44(%ebp)
	je	.L208
	movl	$120, -260(%ebp)
	jmp	.L210
.L208:
	movl	$116, -260(%ebp)
.L210:
	movl	-260(%ebp), %ecx
	movl	%ecx, -268(%ebp)
.L207:
	movl	-268(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 953 0
	movl	-64(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	-232(%ebp), %edx
	movl	-240(%ebp), %ecx
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_cmp_and_jump_insns
	movl	%eax, -68(%ebp)
	.loc 1 956 0
	cmpl	$0, -68(%ebp)
	je	.L200
	.loc 1 957 0
	movl	$1, 8(%esp)
	movl	$11, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn_def@PLT
.L200:
.LBE8:
	.loc 1 973 0
	movl	$0, -216(%ebp)
	jmp	.L212
.L213:
.LBB9:
	.loc 1 980 0
	cmpl	$0, -216(%ebp)
	jne	.L214
	.loc 1 982 0
	movl	$0, -32(%ebp)
	.loc 1 983 0
	movl	$113, -28(%ebp)
	jmp	.L216
.L214:
	.loc 1 985 0
	cmpl	$0, -56(%ebp)
	je	.L217
	.loc 1 987 0
	movl	-216(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 988 0
	movl	$114, -28(%ebp)
	jmp	.L216
.L217:
	.loc 1 992 0
	movl	-216(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 993 0
	movl	$116, -28(%ebp)
.L216:
	.loc 1 996 0
	movl	-216(%ebp), %eax
	sall	$2, %eax
	addl	-64(%ebp), %eax
	movl	(%eax), %esi
	movl	-60(%ebp), %eax
	imull	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-240(%ebp), %edx
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_cmp_and_jump_insns
	movl	%eax, -68(%ebp)
	.loc 1 999 0
	cmpl	$0, -68(%ebp)
	je	.L219
	.loc 1 1000 0
	movl	-216(%ebp), %edx
	movl	-204(%ebp), %eax
	subl	%edx, %eax
	movl	$10000, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, 8(%esp)
	movl	$12, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	predict_insn@PLT
.L219:
.LBE9:
	.loc 1 973 0
	addl	$1, -216(%ebp)
.L212:
	movl	-204(%ebp), %eax
	subl	$1, %eax
	cmpl	-216(%ebp), %eax
	jg	.L213
	.loc 1 1013 0
	cmpl	$1, -60(%ebp)
	je	.L222
.LBB10:
	.loc 1 1018 0
	cmpl	$0, -56(%ebp)
	je	.L224
	.loc 1 1020 0
	movl	-60(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1021 0
	movl	$116, -20(%ebp)
	jmp	.L226
.L224:
	.loc 1 1025 0
	movl	-204(%ebp), %eax
	subl	$1, %eax
	imull	-60(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1026 0
	movl	$114, -20(%ebp)
.L226:
	.loc 1 1029 0
	movl	-64(%ebp), %eax
	movl	(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-240(%ebp), %edx
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_cmp_and_jump_insns
.L222:
.LBE10:
	.loc 1 1033 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 1034 0
	call	end_sequence@PLT
	.loc 1 1035 0
	movl	-188(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 1042 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L227
	.loc 1 1043 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L229
.L227:
	.loc 1 1044 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L230
	.loc 1 1046 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L229
.L230:
	.loc 1 1055 0
	leal	__FUNCTION__.10887@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1055, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L229:
	.loc 1 1057 0
	movl	$1, -216(%ebp)
	jmp	.L232
.L233:
	.loc 1 1059 0
	movl	-112(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-216(%ebp), %edx
	movl	-204(%ebp), %eax
	subl	%edx, %eax
	sall	$2, %eax
	addl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	.loc 1 1062 0
	movl	-172(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-164(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1063 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	leal	0(,%eax,8), %edx
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	addl	$16, %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1066 0
	movl	-164(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1068 0
	movl	$0, -212(%ebp)
	jmp	.L234
.L235:
	.loc 1 1069 0
	movl	-212(%ebp), %eax
	addl	-160(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L236
	.loc 1 1070 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %edx
	movl	-212(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, (%esi)
.L236:
	.loc 1 1068 0
	addl	$1, -212(%ebp)
.L234:
	movl	-212(%ebp), %eax
	cmpl	-176(%ebp), %eax
	jl	.L235
	.loc 1 1072 0
	movl	$176, -208(%ebp)
	jmp	.L239
.L240:
	.loc 1 1073 0
	movl	-208(%ebp), %eax
	addl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L241
	.loc 1 1075 0
	movl	-164(%ebp), %eax
	movl	16(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 1077 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-164(%ebp), %eax
	movl	16(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
.L241:
	.loc 1 1072 0
	addl	$1, -208(%ebp)
.L239:
	movl	-208(%ebp), %eax
	cmpl	-152(%ebp), %eax
	jb	.L240
	.loc 1 1084 0
	movl	-204(%ebp), %eax
	subl	$1, %eax
	cmpl	-216(%ebp), %eax
	jne	.L244
	.loc 1 1086 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L246
	.loc 1 1087 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L244
.L246:
	.loc 1 1089 0
	movl	-116(%ebp), %eax
	movl	%eax, -196(%ebp)
.L244:
	.loc 1 1094 0
	movl	-196(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_loop_body
	.loc 1 1057 0
	addl	$1, -216(%ebp)
.L232:
	movl	-216(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L233
	.loc 1 1098 0
	movl	-112(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	.loc 1 1100 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L249
	.loc 1 1102 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 1103 0
	movl	-168(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L251
.L249:
	.loc 1 1107 0
	movl	-116(%ebp), %eax
	movl	%eax, -168(%ebp)
	.loc 1 1115 0
	movl	-168(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -196(%ebp)
.L251:
	.loc 1 1119 0
	movl	$1, -128(%ebp)
	.loc 1 1120 0
	movl	$1, -124(%ebp)
	.loc 1 1123 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L167:
.LBE7:
.LBE6:
	.loc 1 1129 0
	cmpl	$2, -128(%ebp)
	jne	.L252
	movl	flag_unroll_all_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L252
	.loc 1 1131 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L257
	.loc 1 1132 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$51, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1134 0
	jmp	.L257
.L252:
	.loc 1 1140 0
	movl	-204(%ebp), %edx
	movl	-224(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 1143 0
	movl	-224(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 1146 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 1156 0
	cmpl	$0, -132(%ebp)
	je	.L258
	.loc 1 1157 0
	movl	$0, -248(%ebp)
	movl	$0, -244(%ebp)
	jmp	.L260
.L258:
	.loc 1 1159 0
	movl	-204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_splittable_regs
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
.L260:
	.loc 1 1165 0
	call	max_reg_num@PLT
	movl	%eax, -148(%ebp)
	.loc 1 1166 0
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1168 0
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	init_reg_map
	.loc 1 1170 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L261
	.loc 1 1171 0
	movl	-204(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %esi
	imull	-248(%ebp), %esi
	movl	-244(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-248(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-148(%ebp), %edx
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$17, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 36(%eax)
.L261:
	.loc 1 1174 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %edx
	movl	global_const_equiv_varray@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1179 0
	movl	-220(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L263
.L264:
	.loc 1 1181 0
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	-136(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L265
	.loc 1 1182 0
	movl	-164(%ebp), %eax
	movl	16(%eax), %edx
	movl	-136(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%edx)
.L265:
	.loc 1 1179 0
	movl	-136(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -136(%ebp)
.L263:
	cmpl	$0, -136(%ebp)
	jne	.L264
	.loc 1 1192 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 1193 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-164(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1201 0
	cmpl	$1, -128(%ebp)
	jne	.L268
	.loc 1 1203 0
	movl	-196(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1204 0
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L270
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L268
.L270:
	.loc 1 1205 0
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_split_bivs
	movl	%eax, %edx
	movl	-192(%ebp), %eax
	movl	%edx, 44(%eax)
.L268:
	.loc 1 1212 0
	movl	$0, -216(%ebp)
	jmp	.L272
.L273:
	.loc 1 1214 0
	movl	-172(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-164(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1215 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	leal	0(,%eax,8), %edx
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	addl	$16, %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1217 0
	movl	-164(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 1219 0
	movl	$0, -212(%ebp)
	jmp	.L274
.L275:
	.loc 1 1220 0
	movl	-212(%ebp), %eax
	addl	-160(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L276
	.loc 1 1221 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %edx
	movl	-212(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, (%esi)
.L276:
	.loc 1 1219 0
	addl	$1, -212(%ebp)
.L274:
	movl	-212(%ebp), %eax
	cmpl	-176(%ebp), %eax
	jl	.L275
	.loc 1 1223 0
	movl	$176, -208(%ebp)
	jmp	.L279
.L280:
	.loc 1 1224 0
	movl	-208(%ebp), %eax
	addl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L281
	.loc 1 1226 0
	movl	-164(%ebp), %eax
	movl	16(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, (%esi)
	.loc 1 1227 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-164(%ebp), %eax
	movl	16(%eax), %edx
	movl	-208(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
.L281:
	.loc 1 1223 0
	addl	$1, -208(%ebp)
.L279:
	movl	-208(%ebp), %eax
	cmpl	-152(%ebp), %eax
	jb	.L280
	.loc 1 1233 0
	cmpl	$0, -216(%ebp)
	jne	.L284
	movl	-112(%ebp), %eax
	cmpl	-200(%ebp), %eax
	je	.L284
	.loc 1 1235 0
	movl	-200(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1236 0
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -184(%ebp)
	.loc 1 1238 0
	movl	-184(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, -180(%ebp)
	.loc 1 1241 0
	movl	-180(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, %edx
	movl	-184(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1245 0
	movl	-192(%ebp), %edx
	movl	-180(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 1246 0
	movl	-180(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-180(%ebp), %eax
	movl	%edx, 36(%eax)
.L284:
	.loc 1 1249 0
	movl	-204(%ebp), %eax
	subl	$1, %eax
	cmpl	-216(%ebp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-168(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_loop_body
	.loc 1 1212 0
	addl	$1, -216(%ebp)
.L272:
	movl	-216(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L273
	.loc 1 1263 0
	cmpl	$0, -128(%ebp)
	jne	.L288
	.loc 1 1264 0
	call	gen_label_rtx@PLT
	movl	-116(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	movl	%eax, -120(%ebp)
	jmp	.L290
.L288:
	.loc 1 1266 0
	call	gen_label_rtx@PLT
	movl	-196(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	movl	%eax, -120(%ebp)
.L290:
	.loc 1 1271 0
	movl	-200(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1272 0
	jmp	.L320
.L292:
	.loc 1 1282 0
	movl	-192(%ebp), %eax
	cmpl	-140(%ebp), %eax
	je	.L293
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L295
	movl	-192(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L293
.L295:
	movl	-192(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L297
	movl	-192(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	je	.L293
.L297:
	.loc 1 1286 0
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	movl	%eax, -192(%ebp)
	.loc 1 1282 0
	jmp	.L291
.L293:
	.loc 1 1288 0
	movl	-192(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -192(%ebp)
.L291:
.L320:
	.loc 1 1272 0
	movl	-192(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jne	.L292
	.loc 1 1293 0
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L300
	.loc 1 1294 0
	leal	__FUNCTION__.10887@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1294, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L300:
	.loc 1 1295 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1302 0
	cmpl	$0, -144(%ebp)
	je	.L257
	.loc 1 1303 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_after@PLT
.L257:
	.loc 1 1306 0
	cmpl	$0, -128(%ebp)
	jne	.L303
	.loc 1 1309 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L305
	.loc 1 1310 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L305:
	.loc 1 1311 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L307
	.loc 1 1312 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L307:
	.loc 1 1313 0
	cmpl	$0, -112(%ebp)
	je	.L309
	.loc 1 1314 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L309:
	.loc 1 1315 0
	cmpl	$0, -108(%ebp)
	je	.L303
	.loc 1 1316 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L303:
	.loc 1 1319 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L312
	.loc 1 1320 0
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L312
	movl	-164(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-164(%ebp), %eax
	movl	$0, 36(%eax)
.L312:
	.loc 1 1321 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L315
	.loc 1 1323 0
	movl	-164(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1324 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L315:
	.loc 1 1326 0
	movl	-164(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1327 0
	movl	splittable_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1328 0
	movl	splittable_regs_updates@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1329 0
	movl	addr_combined_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1330 0
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1331 0
	movl	-164(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L317
	.loc 1 1332 0
	movl	-164(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L317:
	.loc 1 1333 0
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L319:
	.loc 1 1334 0
	addl	$396, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	unroll_loop, .-unroll_loop
	.type	simplify_cmp_and_jump_insns, @function
simplify_cmp_and_jump_insns:
.LFB16:
	.loc 1 1346 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$52, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1349 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1350 0
	cmpl	$0, -16(%ebp)
	jne	.L322
.LBB11:
	.loc 1 1352 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	signed_condition@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1353 0
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setne	%al
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_cmp_and_jump_insns@PLT
	.loc 1 1355 0
	call	get_last_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1357 0
	movl	-12(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 1358 0
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1360 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L324
.L322:
.LBE11:
	.loc 1 1362 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L325
	.loc 1 1364 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1365 0
	call	emit_barrier@PLT
	.loc 1 1366 0
	movl	-12(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 1367 0
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, 36(%eax)
.L325:
	.loc 1 1370 0
	movl	$0, -24(%ebp)
.L324:
	movl	-24(%ebp), %eax
	.loc 1 1371 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	simplify_cmp_and_jump_insns, .-simplify_cmp_and_jump_insns
	.section	.rodata
	.type	__FUNCTION__.11806, @object
	.size	__FUNCTION__.11806, 20
__FUNCTION__.11806:
	.string	"precondition_loop_p"
	.align 4
.LC17:
	.string	"Preconditioning: Success, number of iterations known, "
.LC18:
	.string	".\n"
	.align 4
.LC19:
	.string	"Preconditioning: Could not find iteration variable.\n"
	.align 4
.LC20:
	.string	"Preconditioning: Could not find initial value.\n"
	.align 4
.LC21:
	.string	"Preconditioning: Could not find increment value.\n"
	.align 4
.LC22:
	.string	"Preconditioning: Increment not a constant.\n"
	.align 4
.LC23:
	.string	"Preconditioning: Increment not a constant power of 2.\n"
	.align 4
.LC24:
	.string	"Preconditioning: EQ comparison loop.\n"
	.align 4
.LC25:
	.string	"Preconditioning: Final value not invariant.\n"
	.align 4
.LC26:
	.string	"Preconditioning: Floating point final or initial value.\n"
	.align 4
.LC27:
	.string	"Preconditioning: Iteration var not live before loop start.\n"
.LC28:
	.string	"Preconditioning: Successful.\n"
	.text
.globl precondition_loop_p
	.type	precondition_loop_p, @function
precondition_loop_p:
.LFB17:
	.loc 1 1395 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%esi
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$48, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1396 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1397 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1399 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L329
	.loc 1 1401 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	cmpl	$0, -36(%ebp)
	js	.L331
	cmpl	$0, -36(%ebp)
	jg	.L333
	cmpl	$0, -40(%ebp)
	jbe	.L331
.L333:
	.loc 1 1403 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1404 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1405 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L334
.L331:
	.loc 1 1409 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1410 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1411 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L334:
	.loc 1 1413 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1415 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L335
	.loc 1 1417 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$54, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1419 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 1421 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L335:
	.loc 1 1423 0
	movl	$1, -32(%ebp)
	jmp	.L337
.L329:
	.loc 1 1426 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L338
	.loc 1 1428 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L340
	.loc 1 1429 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$52, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L340:
	.loc 1 1431 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L338:
	.loc 1 1433 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L342
	.loc 1 1435 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 1436 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$47, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L344:
	.loc 1 1438 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L342:
	.loc 1 1440 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L346
	.loc 1 1442 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L348
	.loc 1 1443 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$49, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L348:
	.loc 1 1445 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L346:
	.loc 1 1447 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L350
	.loc 1 1449 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L352
	.loc 1 1450 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L352:
	.loc 1 1452 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L350:
	.loc 1 1454 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	jns	.L354
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	jns	.L354
	.loc 1 1457 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L357
	.loc 1 1458 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$54, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L357:
	.loc 1 1460 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L354:
	.loc 1 1466 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L359
	.loc 1 1468 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L361
	.loc 1 1469 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$37, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L361:
	.loc 1 1471 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L359:
	.loc 1 1479 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L363
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L365
.L363:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L366
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L365
.L366:
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L368
.L365:
	.loc 1 1485 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L369
	.loc 1 1486 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L369:
	.loc 1 1488 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L368:
	.loc 1 1493 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L371
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L373
.L371:
	.loc 1 1496 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L374
	.loc 1 1497 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$56, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L374:
	.loc 1 1499 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L373:
	.loc 1 1505 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L376
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jg	.L378
	jmp	.L379
.L376:
	leal	__FUNCTION__.11806@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1506, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L378:
	.loc 1 1508 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L380
	.loc 1 1509 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$59, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L380:
	.loc 1 1511 0
	movl	$0, -32(%ebp)
	jmp	.L337
.L379:
	.loc 1 1521 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1522 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1523 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1528 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1529 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L382
	.loc 1 1531 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1532 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L386
	.loc 1 1533 0
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L386
.L382:
	.loc 1 1535 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L386
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L386
	.loc 1 1538 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L386:
	.loc 1 1541 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L389
	.loc 1 1542 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L389:
	.loc 1 1543 0
	movl	$1, -32(%ebp)
.L337:
	movl	-32(%ebp), %eax
	.loc 1 1544 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	precondition_loop_p, .-precondition_loop_p
	.type	init_reg_map, @function
init_reg_map:
.LFB18:
	.loc 1 1557 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$16, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1560 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L393
.L394:
	.loc 1 1561 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1560 0
	subl	$1, -8(%ebp)
.L393:
	cmpl	$180, -8(%ebp)
	jg	.L394
	.loc 1 1563 0
	movl	$180, -8(%ebp)
	jmp	.L396
.L397:
	.loc 1 1564 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 1563 0
	subl	$1, -8(%ebp)
.L396:
	cmpl	$0, -8(%ebp)
	jns	.L397
	.loc 1 1566 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	708(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %eax
	addl	$708, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1568 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	704(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %eax
	addl	$704, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1570 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	init_reg_map, .-init_reg_map
	.section	.rodata
	.type	__FUNCTION__.12047, @object
	.size	__FUNCTION__.12047, 18
__FUNCTION__.12047:
	.string	"calculate_giv_inc"
	.text
	.type	calculate_giv_inc, @function
calculate_giv_inc:
.LFB19:
	.loc 1 1584 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%edi
.LCFI21:
	pushl	%esi
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$76, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1586 0
	movl	$0, -36(%ebp)
	.loc 1 1587 0
	movl	$0, -32(%ebp)
.L401:
	.loc 1 1592 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L402
	.loc 1 1596 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1597 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L404
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L406
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L408
.L406:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L408:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L409
.L404:
	movl	$0, -72(%ebp)
.L409:
	movl	-72(%ebp), %edx
	movl	%edx, 8(%ebp)
	.loc 1 1598 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L410
	.loc 1 1599 0
	leal	__FUNCTION__.12047@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1599, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L410:
	.loc 1 1603 0
	call	get_last_insn@PLT
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L402:
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1608 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L412
	.loc 1 1612 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_last_value@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1617 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$145, %ax
	jne	.L414
	.loc 1 1618 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L416
.L414:
	.loc 1 1622 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L417
.LBB12:
	.loc 1 1624 0
	movl	12(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1625 0
	cmpl	$0, -28(%ebp)
	je	.L416
	.loc 1 1626 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L416
.L417:
.LBE12:
	.loc 1 1629 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$94, %ax
	je	.L421
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L421
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$97, %ax
	je	.L421
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$100, %ax
	jne	.L416
.L421:
.LBB13:
	.loc 1 1637 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1638 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1640 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_last_value@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1643 0
	call	get_last_insn@PLT
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1645 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L425
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L427
.L425:
	.loc 1 1647 0
	leal	__FUNCTION__.12047@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1647, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L427:
	.loc 1 1649 0
	cmpl	$94, -20(%ebp)
	jne	.L428
	.loc 1 1650 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -40(%ebp)
	jmp	.L416
.L428:
	.loc 1 1651 0
	cmpl	$85, -20(%ebp)
	jne	.L430
	.loc 1 1652 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -40(%ebp)
	jmp	.L416
.L430:
	.loc 1 1653 0
	cmpl	$97, -20(%ebp)
	jne	.L432
	.loc 1 1654 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L452
	movl	%eax, %edx
	xorl	%eax, %eax
.L452:
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -40(%ebp)
	jmp	.L416
.L432:
	.loc 1 1656 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L451
	movl	%edx, %eax
	xorl	%edx, %edx
.L451:
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -40(%ebp)
.L416:
.LBE13:
	.loc 1 1659 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L434
	.loc 1 1660 0
	leal	__FUNCTION__.12047@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1660, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L434:
	.loc 1 1664 0
	call	get_last_insn@PLT
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L412:
	.loc 1 1667 0
	cmpl	$0, -36(%ebp)
	je	.L436
	.loc 1 1668 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -36(%ebp)
	jmp	.L438
.L436:
	.loc 1 1670 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L438:
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L439
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L441
.L439:
	.loc 1 1681 0
	cmpl	$0, -32(%ebp)
	jne	.L442
	.loc 1 1683 0
	addl	$1, -32(%ebp)
	.loc 1 1685 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1686 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L444
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L446
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L448
.L446:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L448:
	movl	-52(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L449
.L444:
	movl	$0, -56(%ebp)
.L449:
	movl	-56(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1688 0
	call	get_last_insn@PLT
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1690 0
	jmp	.L401
.L442:
	.loc 1 1693 0
	leal	__FUNCTION__.12047@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1693, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L441:
	.loc 1 1696 0
	movl	-36(%ebp), %eax
	.loc 1 1697 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	calculate_giv_inc, .-calculate_giv_inc
	.section	.rodata
	.type	__FUNCTION__.12198, @object
	.size	__FUNCTION__.12198, 22
__FUNCTION__.12198:
	.string	"initial_reg_note_copy"
	.text
	.type	initial_reg_note_copy, @function
initial_reg_note_copy:
.LFB20:
	.loc 1 1707 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$36, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1710 0
	cmpl	$0, 8(%ebp)
	jne	.L454
	.loc 1 1711 0
	movl	$0, -24(%ebp)
	jmp	.L456
.L454:
	.loc 1 1713 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1714 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-8(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 1716 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L457
	.loc 1 1717 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L459
.L457:
	.loc 1 1718 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$4, %ax
	jne	.L460
	.loc 1 1720 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L459
.L460:
	.loc 1 1722 0
	leal	__FUNCTION__.12198@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1722, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L459:
	.loc 1 1724 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initial_reg_note_copy
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1726 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L456:
	movl	-24(%ebp), %eax
	.loc 1 1727 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	initial_reg_note_copy, .-initial_reg_note_copy
	.section	.rodata
	.type	__FUNCTION__.12228, @object
	.size	__FUNCTION__.12228, 20
__FUNCTION__.12228:
	.string	"final_reg_note_copy"
	.text
	.type	final_reg_note_copy, @function
final_reg_note_copy:
.LFB21:
	.loc 1 1735 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$36, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB14:
	.loc 1 1736 0
	jmp	.L476
.L465:
	.loc 1 1738 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1740 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$4, %ax
	jne	.L466
	.loc 1 1745 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$5, %al
	jne	.L468
	.loc 1 1747 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1748 0
	jmp	.L464
.L468:
.LBB15:
	.loc 1 1752 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1757 0
	cmpl	$0, -8(%ebp)
	jne	.L470
	.loc 1 1759 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$13, %al
	je	.L466
	.loc 1 1760 0
	leal	__FUNCTION__.12228@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1760, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L470:
	.loc 1 1763 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
.L466:
.LBE15:
	.loc 1 1767 0
	movl	-12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 8(%ebp)
.L464:
.L476:
.LBE14:
	.loc 1 1736 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L465
	.loc 1 1769 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	final_reg_note_copy, .-final_reg_note_copy
	.section	.rodata
	.type	__FUNCTION__.12296, @object
	.size	__FUNCTION__.12296, 15
__FUNCTION__.12296:
	.string	"copy_loop_body"
.globl __divdi3
	.text
	.type	copy_loop_body, @function
copy_loop_body:
.LFB22:
	.loc 1 1785 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%edi
.LCFI35:
	pushl	%esi
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$204, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1786 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -132(%ebp)
	.loc 1 1788 0
	movl	$0, -112(%ebp)
	.loc 1 1793 0
	movl	$0, -100(%ebp)
	.loc 1 1802 0
	cmpl	$0, 28(%ebp)
	jne	.L478
	.loc 1 1804 0
	call	gen_label_rtx@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1805 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	36(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L480
.L478:
	.loc 1 1808 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	36(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	36(%ebp), %eax
	movl	%eax, (%edx)
.L480:
	.loc 1 1810 0
	call	start_sequence@PLT
	.loc 1 1812 0
	movl	12(%ebp), %eax
	movl	%eax, -128(%ebp)
.L481:
	.loc 1 1815 0
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1817 0
	movl	20(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 1819 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -180(%ebp)
	cmpl	$5, -180(%ebp)
	ja	.L482
	movl	-180(%ebp), %eax
	sall	$2, %eax
	movl	.L489@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L489:
	.long	.L483@GOTOFF
	.long	.L484@GOTOFF
	.long	.L485@GOTOFF
	.long	.L486@GOTOFF
	.long	.L487@GOTOFF
	.long	.L488@GOTOFF
	.text
.L483:
	.loc 1 1822 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1823 0
	movl	$0, -112(%ebp)
	.loc 1 1824 0
	movl	$0, -96(%ebp)
	.loc 1 1834 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L490
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L492
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L494
.L492:
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -172(%ebp)
.L494:
	movl	-172(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L495
.L490:
	movl	$0, -176(%ebp)
.L495:
	movl	-176(%ebp), %edx
	movl	%edx, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L496
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L496
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	addr_combined_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L496
.LBB16:
	.loc 1 1840 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1842 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	addr_combined_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1843 0
	movl	-132(%ebp), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1851 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_giv_inc
	movl	%eax, -96(%ebp)
	.loc 1 1855 0
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L500
.L501:
	.loc 1 1856 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L502
	movl	-76(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	-80(%ebp), %eax
	jne	.L502
.LBB17:
	.loc 1 1861 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L502
	.loc 1 1866 0
	movl	-96(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1867 0
	movl	-76(%ebp), %eax
	movl	32(%eax), %edx
	movl	-80(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	je	.L506
	.loc 1 1868 0
	movl	-68(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-80(%ebp), %eax
	movl	32(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-76(%ebp), %eax
	movl	32(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	-192(%ebp), %ecx
	imull	%edi, %ecx
	movl	-188(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -184(%ebp)
	addl	-184(%ebp), %ecx
	movl	-192(%ebp), %eax
	mull	%esi
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	addl	-188(%ebp), %ecx
	movl	%ecx, -188(%ebp)
	movl	-192(%ebp), %edx
	movl	%edx, -68(%ebp)
.L506:
	.loc 1 1871 0
	movl	-68(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1872 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %edx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1874 0
	cmpl	$0, 28(%ebp)
	je	.L502
	cmpl	$0, 32(%ebp)
	je	.L502
.LBB18:
	.loc 1 1883 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L510
	.loc 1 1884 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L512
.L510:
	.loc 1 1886 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L512:
	.loc 1 1891 0
	movl	-76(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	jne	.L513
	movl	-76(%ebp), %eax
	movzbl	53(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L513
	.loc 1 1897 0
	movl	-76(%ebp), %eax
	movl	76(%eax), %edx
	movl	80(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1900 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L513
	.loc 1 1905 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_unrolled_add@PLT
.L513:
	.loc 1 1914 0
	movl	-76(%ebp), %eax
	movl	80(%eax), %edx
	movl	76(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1916 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %edx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%edx)
.L502:
.LBE18:
.LBE17:
	.loc 1 1855 0
	movl	-76(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -76(%ebp)
.L500:
	cmpl	$0, -76(%ebp)
	jne	.L501
.L496:
.LBE16:
	.loc 1 1926 0
	movl	$0, -108(%ebp)
	.loc 1 1928 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L517
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L519
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L521
.L519:
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -164(%ebp)
.L521:
	movl	-164(%ebp), %ecx
	movl	%ecx, -168(%ebp)
	jmp	.L522
.L517:
	movl	$0, -168(%ebp)
.L522:
	movl	-168(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L523
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L523
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L523
.LBB19:
	.loc 1 1932 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1935 0
	movl	$1, -108(%ebp)
	.loc 1 1937 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1938 0
	movl	-92(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1941 0
	cmpl	$0, -96(%ebp)
	jne	.L527
	.loc 1 1942 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_giv_inc
	movl	%eax, -96(%ebp)
.L527:
	.loc 1 1944 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1946 0
	cmpl	$0, 32(%ebp)
	jne	.L529
	.loc 1 1953 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -160(%ebp)
	movl	-96(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	-160(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 1957 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L531
	.loc 1 1959 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1960 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L534
.L531:
	.loc 1 1967 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1968 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L534
.L529:
	.loc 1 1985 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-56(%ebp), %eax
	jbe	.L535
	movl	-132(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L535
	.loc 1 1988 0
	movl	-132(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1989 0
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
.L535:
	.loc 1 1998 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	%eax, (%esi)
	.loc 1 2002 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 2018 0
	cmpl	$0, 28(%ebp)
	je	.L538
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs_updates@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	subl	$1, %edx
	movl	%edx, (%eax)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L540
.L538:
	.loc 1 2021 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -116(%ebp)
	.loc 1 2022 0
	movl	-116(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2023 0
	movl	20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-116(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2024 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-96(%ebp), %eax
	je	.L541
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -156(%ebp)
	jmp	.L543
.L541:
	movl	-88(%ebp), %ecx
	movl	%ecx, -156(%ebp)
.L543:
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 2018 0
	jmp	.L534
.L540:
	.loc 1 2032 0
	movl	20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L534:
	.loc 1 2037 0
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_unrolled_add@PLT
	.loc 1 2038 0
	call	get_last_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2039 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1928 0
	jmp	.L544
.L523:
.LBE19:
	.loc 1 2043 0
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2044 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -112(%ebp)
.L544:
	.loc 1 2046 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initial_reg_note_copy
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2047 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2052 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -116(%ebp)
	cmpl	$0, -116(%ebp)
	je	.L545
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L545
	.loc 1 2054 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L545:
	.loc 1 2080 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 2086 0
	cmpl	$0, -108(%ebp)
	je	.L552
.LBB20:
	.loc 1 2088 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2090 0
	movl	-48(%ebp), %edx
	movl	20(%ebp), %eax
	movl	36(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L552
	movl	20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-48(%ebp), %eax
	movl	20(%edx,%eax,8), %edx
	movl	20(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jne	.L552
	.loc 1 2093 0
	movl	20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-48(%ebp), %eax
	movl	$-1, 20(%edx,%eax,8)
	.loc 1 2095 0
	jmp	.L552
.L484:
.LBE20:
	.loc 1 2098 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2099 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2100 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initial_reg_note_copy
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2101 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2103 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L553
	.loc 1 2105 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2108 0
	movl	-112(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
.L553:
	.loc 1 2110 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	36(%ebp), %eax
	jne	.L555
	movl	-128(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L555
	cmpl	$0, 28(%ebp)
	jne	.L555
	.loc 1 2120 0
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	jne	.L555
.LBB21:
	.loc 1 2123 0
	call	gen_label_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2128 0
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2129 0
	movl	-44(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 2130 0
	movl	24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2131 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2132 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label_after@PLT
	.loc 1 2133 0
	movl	-40(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 2134 0
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	jne	.L555
	.loc 1 2135 0
	leal	__FUNCTION__.12296@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2135, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L555:
.LBE21:
	.loc 1 2144 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 2148 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L561
.LBB22:
	.loc 1 2150 0
	movl	$0, -36(%ebp)
	.loc 1 2154 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L563
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L565
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L567
.L565:
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -148(%ebp)
.L567:
	movl	-148(%ebp), %ecx
	movl	%ecx, -152(%ebp)
	jmp	.L568
.L563:
	movl	$0, -152(%ebp)
.L568:
	movl	-152(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L569
	.loc 1 2156 0
	movl	-120(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 2157 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L571
	.loc 1 2158 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L569
.L571:
	.loc 1 2159 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L569
	.loc 1 2161 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L574
	.loc 1 2162 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L569
.L574:
	.loc 1 2164 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L569:
	.loc 1 2168 0
	cmpl	$0, -36(%ebp)
	je	.L576
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L576
	.loc 1 2169 0
	movl	-112(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 2168 0
	jmp	.L579
.L576:
	.loc 1 2175 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 76(%eax)
.L579:
	.loc 1 2183 0
	movl	-112(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	jmp	.L580
.L561:
.LBE22:
	.loc 1 2185 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L581
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L580
.L581:
.LBB23:
	.loc 1 2188 0
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2189 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2190 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2193 0
	movl	$0, -20(%ebp)
	jmp	.L583
.L584:
	.loc 1 2194 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 2193 0
	addl	$1, -20(%ebp)
.L583:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L584
.L580:
.LBE23:
	.loc 1 2199 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L552
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L552
	movl	20(%ebp), %eax
	movl	316(%eax), %eax
	testl	%eax, %eax
	je	.L552
	.loc 1 2208 0
	movl	20(%ebp), %eax
	movl	316(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L589
	.loc 1 2210 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2211 0
	movl	$0, -112(%ebp)
	jmp	.L552
.L589:
	.loc 1 2217 0
	call	emit_barrier@PLT
	.loc 1 2219 0
	jmp	.L552
.L485:
	.loc 1 2222 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2223 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_call_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2224 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initial_reg_note_copy
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2225 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2226 0
	movl	-128(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movl	-112(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	3(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 3(%edx)
	.loc 1 2227 0
	movl	-128(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-112(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2231 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %edx
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	copy_rtx_and_substitute@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2240 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	try_constants@PLT
	.loc 1 2243 0
	movl	$0, -104(%ebp)
	jmp	.L591
.L592:
	.loc 1 2244 0
	movl	20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-104(%ebp), %eax
	movl	$0, 16(%edx,%eax,8)
	.loc 1 2243 0
	addl	$1, -104(%ebp)
.L591:
	cmpl	$175, -104(%ebp)
	jle	.L592
	.loc 1 2245 0
	jmp	.L552
.L487:
	.loc 1 2251 0
	movl	-128(%ebp), %eax
	cmpl	36(%ebp), %eax
	je	.L552
	.loc 1 2253 0
	movl	-128(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_from_map@PLT
	movl	%eax, (%esp)
	call	emit_label@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2255 0
	movl	20(%ebp), %eax
	movl	40(%eax), %eax
	leal	1(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 2257 0
	jmp	.L552
.L486:
	.loc 1 2260 0
	call	emit_barrier@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2261 0
	jmp	.L552
.L488:
	.loc 1 2270 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L596
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	je	.L596
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L596
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	je	.L600
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	jne	.L602
.L600:
	cmpl	$0, 28(%ebp)
	je	.L596
	cmpl	$0, 32(%ebp)
	je	.L596
.L602:
	.loc 1 2276 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	movl	%eax, -112(%ebp)
	.loc 1 2270 0
	jmp	.L552
.L596:
	.loc 1 2279 0
	movl	$0, -112(%ebp)
	.loc 1 2280 0
	jmp	.L552
.L482:
	.loc 1 2283 0
	leal	__FUNCTION__.12296@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2283, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L552:
	.loc 1 2286 0
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2288 0
	movl	-128(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L481
	.loc 1 2291 0
	movl	12(%ebp), %eax
	movl	%eax, -128(%ebp)
.L606:
	.loc 1 2294 0
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 2295 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L607
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L607
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L610
.L607:
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L610
	.loc 1 2298 0
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	leal	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	final_reg_note_copy
.L610:
	.loc 1 2300 0
	movl	-128(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L606
	.loc 1 2312 0
	cmpl	$0, 28(%ebp)
	jne	.L613
	.loc 1 2314 0
	movl	48(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L615
.L616:
	.loc 1 2322 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L617
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L617
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L617
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	je	.L617
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	je	.L617
	.loc 1 2327 0
	movl	-128(%ebp), %eax
	movl	44(%eax), %edx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
.L617:
	.loc 1 2314 0
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
.L615:
	movl	-128(%ebp), %eax
	cmpl	40(%ebp), %eax
	jne	.L616
.L613:
	.loc 1 2331 0
	cmpl	$0, -100(%ebp)
	je	.L623
	movl	-100(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jle	.L623
	.loc 1 2332 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
.L623:
	.loc 1 2334 0
	call	get_insns@PLT
	movl	%eax, -116(%ebp)
	.loc 1 2335 0
	call	end_sequence@PLT
	.loc 1 2336 0
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_emit_before@PLT
	.loc 1 2337 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	copy_loop_body, .-copy_loop_body
.globl emit_unrolled_add
	.type	emit_unrolled_add, @function
emit_unrolled_add:
.LFB23:
	.loc 1 2346 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$52, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2349 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$85, 4(%esp)
	movl	%edx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2352 0
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L630
	.loc 1 2353 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L630:
	.loc 1 2354 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	emit_unrolled_add, .-emit_unrolled_add
.globl back_branch_in_range_p
	.type	back_branch_in_range_p, @function
back_branch_in_range_p:
.LFB24:
	.loc 1 2368 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$52, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2370 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2371 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2372 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2375 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2376 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L634
	.loc 1 2377 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2381 0
	jmp	.L634
.L635:
	.loc 1 2382 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L634:
	.loc 1 2381 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L635
	.loc 1 2387 0
	movl	12(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L637
	movl	12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L639
.L637:
	.loc 1 2388 0
	movl	$0, -40(%ebp)
	jmp	.L640
.L639:
	.loc 1 2390 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L641
.L642:
	.loc 1 2392 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L643
	.loc 1 2394 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2399 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L645
.L646:
	.loc 1 2400 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L647
	.loc 1 2401 0
	movl	$1, -40(%ebp)
	jmp	.L640
.L647:
	.loc 1 2399 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L645:
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L646
.L643:
	.loc 1 2390 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L641:
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L642
	.loc 1 2405 0
	movl	$0, -40(%ebp)
.L640:
	movl	-40(%ebp), %eax
	.loc 1 2406 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	back_branch_in_range_p, .-back_branch_in_range_p
	.section	.rodata
	.type	__FUNCTION__.12862, @object
	.size	__FUNCTION__.12862, 18
__FUNCTION__.12862:
	.string	"fold_rtx_mult_add"
	.text
	.type	fold_rtx_mult_add, @function
fold_rtx_mult_add:
.LFB25:
	.loc 1 2416 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$36, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2422 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	je	.L652
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L654
.L652:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	je	.L655
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L654
.L655:
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	20(%ebp), %eax
	je	.L657
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L657
.L654:
	.loc 1 2425 0
	leal	__FUNCTION__.12862@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2425, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L657:
	.loc 1 2429 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L659
	.loc 1 2431 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2432 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2433 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
.L659:
	.loc 1 2436 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2437 0
	cmpl	$0, -12(%ebp)
	jne	.L661
	.loc 1 2438 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
.L661:
	.loc 1 2441 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L663
	.loc 1 2443 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2444 0
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 2445 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L663:
	.loc 1 2448 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2449 0
	cmpl	$0, -8(%ebp)
	jne	.L665
	.loc 1 2450 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
.L665:
	.loc 1 2452 0
	movl	-8(%ebp), %eax
	.loc 1 2453 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	fold_rtx_mult_add, .-fold_rtx_mult_add
.globl biv_total_increment
	.type	biv_total_increment, @function
biv_total_increment:
.LFB26:
	.loc 1 2464 0
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
	.loc 1 2475 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2476 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L669
.L670:
	.loc 1 2478 0
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L671
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	jne	.L671
	movl	-12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L671
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L675
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	jne	.L671
.L675:
	.loc 1 2481 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_rtx_mult_add
	movl	%eax, -8(%ebp)
	.loc 1 2476 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L669
.L671:
	.loc 1 2483 0
	movl	$0, -24(%ebp)
	jmp	.L677
.L669:
	.loc 1 2476 0
	cmpl	$0, -12(%ebp)
	jne	.L670
	.loc 1 2486 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L677:
	movl	-24(%ebp), %eax
	.loc 1 2487 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	biv_total_increment, .-biv_total_increment
	.section	.rodata
	.type	__FUNCTION__.12942, @object
	.size	__FUNCTION__.12942, 21
__FUNCTION__.12942:
	.string	"find_splittable_regs"
	.align 4
.LC29:
	.string	"Biv %d initial value remapped to %d.\n"
.LC30:
	.string	"Biv %d safe to split.\n"
	.align 4
.LC31:
	.string	"Biv %d mapped to %d for split.\n"
	.text
	.type	find_splittable_regs, @function
find_splittable_regs:
.LFB27:
	.loc 1 2518 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%esi
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$96, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2519 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2525 0
	movl	$0, -20(%ebp)
	.loc 1 2527 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L681
.L682:
	.loc 1 2532 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2533 0
	cmpl	$0, -36(%ebp)
	je	.L683
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L683
	.loc 1 2545 0
	movl	$1, -24(%ebp)
	.loc 1 2546 0
	movl	$0, -28(%ebp)
	.loc 1 2547 0
	cmpl	$0, 12(%ebp)
	je	.L686
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L688
	cmpl	$2, 12(%ebp)
	jne	.L686
.L688:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L690
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -72(%ebp)
	jge	.L692
	jmp	.L693
.L690:
	leal	__FUNCTION__.12942@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2549, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L693:
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L692
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L692
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L696
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L692
	jmp	.L698
.L696:
	leal	__FUNCTION__.12942@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2553, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L698:
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L686
.L692:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	final_biv_value@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L686
	.loc 1 2556 0
	movl	$0, -24(%ebp)
.L686:
	.loc 1 2560 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L700
.L701:
	.loc 1 2561 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L702
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L704
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L706
.L704:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L706:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L707
.L702:
	movl	$0, -64(%ebp)
.L707:
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L708
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L708
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L708
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L712
.L708:
	.loc 1 2565 0
	movl	$0, -24(%ebp)
.L712:
	.loc 1 2560 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -40(%ebp)
.L700:
	cmpl	$0, -24(%ebp)
	je	.L713
	cmpl	$0, -40(%ebp)
	jne	.L701
.L713:
	.loc 1 2575 0
	cmpl	$1, -24(%ebp)
	jne	.L715
	.loc 1 2577 0
	cmpl	$0, 12(%ebp)
	jne	.L717
	.loc 1 2584 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L719
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L721
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L721
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L719
.L721:
.LBB24:
	.loc 1 2589 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2591 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 2592 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 2595 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L724
	.loc 1 2596 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %ecx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L724:
	.loc 1 2600 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2584 0
	jmp	.L727
.L719:
.LBE24:
	.loc 1 2603 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L727
.L717:
	.loc 1 2606 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, (%edx)
.L727:
	.loc 1 2611 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs_updates@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 2612 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -20(%ebp)
	.loc 1 2614 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L715
	.loc 1 2615 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L715:
	.loc 1 2624 0
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_splittable_givs
	addl	%eax, -20(%ebp)
	.loc 1 2631 0
	cmpl	$0, -28(%ebp)
	je	.L683
	.loc 1 2637 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L730
	.loc 1 2638 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
	jmp	.L683
.L730:
.LBB25:
	.loc 1 2647 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2648 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 2650 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 2651 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 2654 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L732
	.loc 1 2655 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %esi
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L732:
	.loc 1 2660 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
.L683:
.LBE25:
	.loc 1 2527 0
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
.L681:
	cmpl	$0, -44(%ebp)
	jne	.L682
	.loc 1 2664 0
	movl	-20(%ebp), %eax
	.loc 1 2665 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	find_splittable_regs, .-find_splittable_regs
	.section	.rodata
	.type	__FUNCTION__.13180, @object
	.size	__FUNCTION__.13180, 21
__FUNCTION__.13180:
	.string	"find_splittable_givs"
	.align 4
.LC32:
	.string	"giv combined with unreduced giv not split.\n"
	.align 4
.LC33:
	.string	"Giv %d at insn %d safe to split.\n"
	.text
	.type	find_splittable_givs, @function
find_splittable_givs:
.LFB28:
	.loc 1 2679 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%esi
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$96, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2680 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -60(%ebp)
	.loc 1 2684 0
	movl	$0, -40(%ebp)
	.loc 1 2688 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L737
.L738:
	.loc 1 2689 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L739
.L740:
	.loc 1 2690 0
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L741
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L741
	movl	-52(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	jne	.L741
	.loc 1 2692 0
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 84(%edx)
.L741:
	.loc 1 2689 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -52(%ebp)
.L739:
	cmpl	$0, -52(%ebp)
	jne	.L740
	.loc 1 2688 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -56(%ebp)
.L737:
	cmpl	$0, -56(%ebp)
	jne	.L738
	.loc 1 2694 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L747
.L748:
.LBB26:
	.loc 1 2700 0
	cmpl	$0, 16(%ebp)
	je	.L749
	movl	-56(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L751
.L749:
	.loc 1 2709 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L752
	movl	-56(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L751
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	back_branch_in_range_p@PLT
	testl	%eax, %eax
	jne	.L751
.L752:
	.loc 1 2715 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	32(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fold_rtx_mult_add
	movl	%eax, -36(%ebp)
	.loc 1 2717 0
	cmpl	$0, -36(%ebp)
	je	.L751
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L751
	.loc 1 2730 0
	movl	$0, -48(%ebp)
	.loc 1 2731 0
	cmpl	$0, 16(%ebp)
	je	.L757
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L759
	cmpl	$2, 16(%ebp)
	jne	.L757
.L759:
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L757
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	max_reg_before_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L762
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L764
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L762
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L762
.L764:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L767
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -76(%ebp)
	jge	.L762
	jmp	.L757
.L767:
	leal	__FUNCTION__.13180@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2747, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L762:
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L751
.L757:
	.loc 1 2779 0
	cmpl	$0, 16(%ebp)
	jne	.L769
.LBB27:
	.loc 1 2788 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L771
	.loc 1 2789 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L773
.L771:
	.loc 1 2790 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L774
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L776
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L776
.L774:
	.loc 1 2793 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2790 0
	jmp	.L773
.L776:
.LBB28:
	.loc 1 2796 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2798 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 2799 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_hoist@PLT
	.loc 1 2800 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L773:
.LBE28:
	.loc 1 2802 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2803 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edx
	movl	-56(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	32(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fold_rtx_mult_add
	movl	%eax, -32(%ebp)
	jmp	.L778
.L769:
.LBE27:
	.loc 1 2807 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -32(%ebp)
.L778:
	.loc 1 2809 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L751
	.loc 1 2815 0
	movl	-56(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L780
	movl	-56(%ebp), %eax
	movl	72(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L780
	.loc 1 2817 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L751
	.loc 1 2818 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2820 0
	jmp	.L751
.L780:
	.loc 1 2824 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L751
	.loc 1 2832 0
	cmpl	$0, 16(%ebp)
	jne	.L786
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L786
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L786
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L790
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L790
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L786
.L790:
.LBB29:
	.loc 1 2839 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2840 0
	movl	-56(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 2841 0
	movl	-56(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	32(%eax), %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_hoist@PLT
	.loc 1 2843 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
.L786:
.LBE29:
	.loc 1 2846 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_or_subregno@PLT
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2874 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L793
.LBB30:
	.loc 1 2876 0
	movl	$1, -16(%ebp)
	.loc 1 2877 0
	movl	-56(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L795
	.loc 1 2878 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L795:
	.loc 1 2880 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_or_subregno@PLT
	sall	$2, %eax
	movl	%eax, %edx
	movl	splittable_regs_updates@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L793:
.LBE30:
	.loc 1 2883 0
	addl	$1, -40(%ebp)
	.loc 1 2885 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L751
.LBB31:
	.loc 1 2889 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L798
	.loc 1 2890 0
	movl	$-1, -12(%ebp)
	jmp	.L800
.L798:
	.loc 1 2891 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L801
	.loc 1 2892 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L800
.L801:
	.loc 1 2894 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L800:
	.loc 1 2895 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L751:
.LBE31:
.LBE26:
	.loc 1 2694 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -56(%ebp)
.L747:
	cmpl	$0, -56(%ebp)
	jne	.L748
	.loc 1 2900 0
	movl	-40(%ebp), %eax
	.loc 1 2901 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	find_splittable_givs, .-find_splittable_givs
	.type	reg_dead_after_loop, @function
reg_dead_after_loop:
.LFB29:
	.loc 1 2915 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$68, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2918 0
	movl	$0, -20(%ebp)
	.loc 1 2919 0
	movl	$0, -16(%ebp)
	.loc 1 2926 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L806
.L807:
	.loc 1 2927 0
	addl	$1, -16(%ebp)
	.loc 1 2926 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L806:
	cmpl	$0, -28(%ebp)
	jne	.L807
	.loc 1 2929 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L809
	.loc 1 2930 0
	movl	$0, -48(%ebp)
	jmp	.L811
.L809:
	.loc 1 2935 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2936 0
	movl	8(%ebp), %eax
	movl	120(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2938 0
	jmp	.L812
.L813:
	.loc 1 2944 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2945 0
	jmp	.L814
.L815:
	.loc 1 2947 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2948 0
	movl	-24(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L816
.LBB32:
	.loc 1 2952 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L818
	.loc 1 2953 0
	movl	$0, -48(%ebp)
	jmp	.L811
.L818:
	.loc 1 2955 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2956 0
	cmpl	$0, -8(%ebp)
	je	.L820
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L820
	.loc 1 2957 0
	movl	$0, -48(%ebp)
	jmp	.L811
.L820:
	.loc 1 2959 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L823
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L825
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L827
.L825:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L827:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L828
.L823:
	movl	$0, -44(%ebp)
.L828:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2960 0
	cmpl	$0, -12(%ebp)
	je	.L816
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L830
.L816:
.LBE32:
	.loc 1 2964 0
	cmpl	$43, -24(%ebp)
	jne	.L831
	.loc 1 2966 0
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L830
	.loc 1 2968 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L834
	cmpl	$20, -20(%ebp)
	setg	%al
	addl	$1, -20(%ebp)
	testb	%al, %al
	je	.L836
.L834:
	.loc 1 2971 0
	movl	$0, -48(%ebp)
	jmp	.L811
.L836:
	.loc 1 2973 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -32(%ebp)
.L831:
	.loc 1 2976 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L814:
	.loc 1 2945 0
	cmpl	$0, -32(%ebp)
	jne	.L815
.L830:
	.loc 1 2938 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L812:
	cmpl	$0, -28(%ebp)
	jne	.L813
	.loc 1 2981 0
	movl	$1, -48(%ebp)
.L811:
	movl	-48(%ebp), %eax
	.loc 1 2982 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	reg_dead_after_loop, .-reg_dead_after_loop
	.section	.rodata
	.align 4
.LC34:
	.string	"Final biv value for %d, reversed biv.\n"
	.align 4
.LC35:
	.string	"Final biv value for %d, calculated.\n"
	.align 4
.LC36:
	.string	"Final biv value for %d, biv dead after loop exit.\n"
	.text
.globl final_biv_value
	.type	final_biv_value, @function
final_biv_value:
.LFB30:
	.loc 1 2991 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%esi
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$48, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2992 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 2997 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L840
	.loc 1 2998 0
	movl	$0, -28(%ebp)
	jmp	.L842
.L840:
	.loc 1 3004 0
	movl	12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L843
	.loc 1 3006 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L845
	.loc 1 3007 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L845:
	.loc 1 3010 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L842
.L843:
	.loc 1 3019 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L847
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L847
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L847
	.loc 1 3023 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3025 0
	cmpl	$0, -16(%ebp)
	je	.L847
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L847
	.loc 1 3031 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3032 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 3033 0
	movl	12(%ebp), %eax
	movl	24(%eax), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_sink@PLT
	.loc 1 3036 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L853
	.loc 1 3037 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L853:
	.loc 1 3040 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L842
.L847:
	.loc 1 3045 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_dead_after_loop
	testl	%eax, %eax
	je	.L855
	.loc 1 3047 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L857
	.loc 1 3048 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L857:
	.loc 1 3052 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L842
.L855:
	.loc 1 3055 0
	movl	$0, -28(%ebp)
.L842:
	movl	-28(%ebp), %eax
	.loc 1 3056 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	final_biv_value, .-final_biv_value
	.section	.rodata
	.type	__FUNCTION__.13574, @object
	.size	__FUNCTION__.13574, 16
__FUNCTION__.13574:
	.string	"final_giv_value"
	.align 4
.LC37:
	.string	"Final giv value for %d, depends on reversed biv\n"
	.align 4
.LC38:
	.string	"Final giv value for %d, calc from biv's value.\n"
	.align 4
.LC39:
	.string	"Final giv value for %d, giv dead after loop exit.\n"
	.text
.globl final_giv_value
	.type	final_giv_value, @function
final_giv_value:
.LFB31:
	.loc 1 3065 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%edi
.LCFI76:
	pushl	%esi
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$92, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3066 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -48(%ebp)
	.loc 1 3071 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3072 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 3074 0
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3080 0
	movl	-44(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L861
	.loc 1 3082 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L863
	.loc 1 3083 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L863:
	.loc 1 3086 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L865
.L861:
	.loc 1 3099 0
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L866
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L866
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L866
	.loc 1 3114 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3116 0
	cmpl	$0, -36(%ebp)
	je	.L866
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L866
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L866
	.loc 1 3130 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3131 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_base_value@PLT
	.loc 1 3132 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%eax, %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %esi
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_sink@PLT
	.loc 1 3138 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L873
.L874:
.LBB33:
	.loc 1 3143 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L875
.L876:
	.loc 1 3144 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L877
	.loc 1 3146 0
	call	start_sequence@PLT
	.loc 1 3147 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$86, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3150 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3151 0
	call	end_sequence@PLT
	.loc 1 3152 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_insn_sink@PLT
.L877:
	.loc 1 3143 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -20(%ebp)
.L875:
	cmpl	$0, -20(%ebp)
	jne	.L876
.LBE33:
	.loc 1 3139 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L873:
	.loc 1 3138 0
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L874
	.loc 1 3157 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	32(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_iv_add_mult_sink@PLT
	.loc 1 3159 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L881
	.loc 1 3160 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L881:
	.loc 1 3164 0
	movl	-32(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L865
.L866:
	.loc 1 3169 0
	movl	12(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L883
	.loc 1 3170 0
	leal	__FUNCTION__.13574@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3170, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L883:
	.loc 1 3173 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_dead_after_loop
	testl	%eax, %eax
	je	.L885
	.loc 1 3175 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L887
	.loc 1 3176 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L887:
	.loc 1 3180 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L865
.L885:
	.loc 1 3183 0
	movl	$0, -68(%ebp)
.L865:
	movl	-68(%ebp), %eax
	.loc 1 3184 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	final_giv_value, .-final_giv_value
	.type	loop_find_equiv_value, @function
loop_find_equiv_value:
.LFB32:
	.loc 1 3194 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$52, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3195 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3199 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3200 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L891
.L892:
	.loc 1 3202 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L893
	.loc 1 3205 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L895
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L895
	.loc 1 3210 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L898
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L900
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L902
.L900:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L902:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L903
.L898:
	movl	$0, -44(%ebp)
.L903:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L893
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L893
.LBB34:
	.loc 1 3213 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3218 0
	cmpl	$0, -8(%ebp)
	je	.L907
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	je	.L907
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L910
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L907
.L910:
	.loc 1 3220 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3218 0
	jmp	.L918
.L907:
	.loc 1 3222 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L918:
	.loc 1 3226 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	je	.L893
	.loc 1 3227 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3229 0
	jmp	.L893
.L895:
.LBE34:
	.loc 1 3200 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L891:
	cmpl	$0, -20(%ebp)
	jne	.L892
.L893:
	.loc 1 3232 0
	movl	-12(%ebp), %eax
	.loc 1 3233 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	loop_find_equiv_value, .-loop_find_equiv_value
	.section	.rodata
	.type	__FUNCTION__.13739, @object
	.size	__FUNCTION__.13739, 18
__FUNCTION__.13739:
	.string	"subtract_reg_term"
	.text
	.type	subtract_reg_term, @function
subtract_reg_term:
.LFB33:
	.loc 1 3248 0
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
	.loc 1 3249 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L922
	.loc 1 3250 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L924
.L922:
	.loc 1 3251 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L925
	.loc 1 3253 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L927
	.loc 1 3254 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L924
.L927:
	.loc 1 3255 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L925
	.loc 1 3256 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L924
.L925:
	.loc 1 3259 0
	leal	__FUNCTION__.13739@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3259, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L924:
	movl	-8(%ebp), %eax
	.loc 1 3260 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	subtract_reg_term, .-subtract_reg_term
	.type	find_common_reg_term, @function
find_common_reg_term:
.LFB34:
	.loc 1 3269 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3270 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L932
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L934
.L932:
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L935
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L934
.L935:
.LBB35:
	.loc 1 3278 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L937
	.loc 1 3279 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L939
.L937:
	.loc 1 3281 0
	movl	const_int_rtx@GOT(%ecx), %eax
	movl	256(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L939:
	.loc 1 3283 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L940
	.loc 1 3284 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L942
.L940:
	.loc 1 3286 0
	movl	const_int_rtx@GOT(%ecx), %eax
	movl	256(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L942:
	.loc 1 3289 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L943
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L945
	movl	-16(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L943
.L945:
	.loc 1 3290 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L947
.L943:
	.loc 1 3291 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L934
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L949
	movl	-12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L934
.L949:
	.loc 1 3292 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L947
.L934:
.LBE35:
	.loc 1 3296 0
	movl	$0, -20(%ebp)
.L947:
	movl	-20(%ebp), %eax
	.loc 1 3297 0
	leave
	ret
.LFE34:
	.size	find_common_reg_term, .-find_common_reg_term
	.section	.rodata
	.type	__FUNCTION__.13815, @object
	.size	__FUNCTION__.13815, 16
__FUNCTION__.13815:
	.string	"loop_iterations"
	.align 4
.LC40:
	.string	"Loop iterations: No final conditional branch found.\n"
	.align 4
.LC41:
	.string	"Loop iterations: Loop has multiple back edges.\n"
	.align 4
.LC42:
	.string	"Loop iterations: Jump insn has null JUMP_LABEL.\n"
	.align 4
.LC43:
	.string	"Loop iterations: No final comparison found.\n"
	.align 4
.LC44:
	.string	"Loop iterations: Comparison not against register.\n"
	.align 4
.LC45:
	.string	"Loop iterations: No reg_iv_type entry for iteration var.\n"
	.align 4
.LC46:
	.string	"Loop iterations: Iteration var rejected because mode too large.\n"
	.align 4
.LC47:
	.string	"Loop iterations: Iteration var not an integer.\n"
	.align 4
.LC48:
	.string	"Loop iterations: Basic induction var not set once in each iteration.\n"
	.align 4
.LC49:
	.string	"Loop iterations: General induction var not set once in each iteration.\n"
	.align 4
.LC50:
	.string	"Loop iterations: Basic induction var add_val is REG %d.\n"
	.align 4
.LC51:
	.string	"Loop iterations: Giv iterator, initial value bias %ld.\n"
	.align 4
.LC52:
	.string	"Loop iterations: Not basic or general induction var.\n"
	.align 4
.LC53:
	.string	"Loop iterations: Increment value can't be calculated.\n"
	.align 4
.LC54:
	.string	"Loop iterations: Increment value not constant "
	.align 4
.LC55:
	.string	"Loop iterations: Initial value not constant "
	.align 4
.LC56:
	.string	"Loop iterations: Final value not constant "
	.align 4
.LC57:
	.string	"Loop iterations: EQ comparison loop.\n"
	.align 4
.LC58:
	.string	"Loop iterations: Not normal loop.\n"
	.text
.globl loop_iterations
	.type	loop_iterations, @function
loop_iterations:
.LFB35:
	.loc 1 3306 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$364, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3307 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 3308 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -124(%ebp)
	.loc 1 3322 0
	movl	-128(%ebp), %eax
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	.loc 1 3323 0
	movl	-128(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 3324 0
	movl	-128(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 3325 0
	movl	-128(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 3326 0
	movl	-128(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 3327 0
	movl	-128(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 3328 0
	movl	-128(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 3329 0
	movl	-128(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 3330 0
	movl	-128(%ebp), %eax
	movl	$1, 76(%eax)
	.loc 1 3331 0
	movl	-128(%ebp), %eax
	movl	$0, 84(%eax)
	.loc 1 3337 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3342 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L953
	.loc 1 3344 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L955
	.loc 1 3345 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$52, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L955:
	.loc 1 3347 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L953:
	.loc 1 3352 0
	movl	-72(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	cmpl	$1, %eax
	jle	.L958
	.loc 1 3354 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L960
	.loc 1 3355 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$47, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L960:
	.loc 1 3357 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L958:
	.loc 1 3362 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L962
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L962
.LBB36:
	.loc 1 3364 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
.L965:
	.loc 1 3368 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L966
	.loc 1 3371 0
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L968
	.loc 1 3373 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L970
	.loc 1 3374 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$48, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L970:
	.loc 1 3377 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L968:
	.loc 1 3380 0
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L966
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L973
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -312(%ebp)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L975
	jmp	.L976
.L973:
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3384, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L975:
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -312(%ebp)
	jg	.L977
	jmp	.L966
.L976:
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3384, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L977:
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jge	.L978
	movl	-60(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -308(%ebp)
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %edx
	movl	max_uid_for_loop@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L980
	jmp	.L981
.L978:
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3385, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L980:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_luid@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, -308(%ebp)
	jl	.L982
	jmp	.L966
.L981:
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3385, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L982:
	.loc 1 3387 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L983
	.loc 1 3388 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$47, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L983:
	.loc 1 3391 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L966:
	.loc 1 3395 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	cmpl	%eax, -60(%ebp)
	jne	.L965
.L962:
.LBE36:
	.loc 1 3402 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_condition_for_loop@PLT
	movl	%eax, -120(%ebp)
	.loc 1 3403 0
	cmpl	$0, -120(%ebp)
	jne	.L985
	.loc 1 3405 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L987
	.loc 1 3406 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L987:
	.loc 1 3408 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L985:
	.loc 1 3414 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -96(%ebp)
	.loc 1 3415 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 3416 0
	movl	-120(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 3418 0
	movl	-112(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L989
	.loc 1 3420 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L991
	.loc 1 3421 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$50, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L991:
	.loc 1 3423 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L989:
	.loc 1 3432 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L993
	movl	-112(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L993
	.loc 1 3434 0
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3434, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L993:
	.loc 1 3441 0
	movl	$0, -108(%ebp)
	.loc 1 3442 0
	movl	$0, -104(%ebp)
	.loc 1 3450 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L996
	.loc 1 3452 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L998
	.loc 1 3453 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$57, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L998:
	.loc 1 3455 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L996:
	.loc 1 3461 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	$64, %ax
	jbe	.L1000
	.loc 1 3464 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1002
	.loc 1 3465 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$64, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1002:
	.loc 1 3467 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1000:
	.loc 1 3469 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1004
	.loc 1 3471 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1006
	.loc 1 3472 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$47, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1006:
	.loc 1 3474 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1004:
	.loc 1 3476 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1008
	.loc 1 3478 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1010
	.loc 1 3479 0
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3479, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1010:
	.loc 1 3482 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3483 0
	movl	-64(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 3484 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	52(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1012
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1014
.L1012:
	.loc 1 3486 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1015
	.loc 1 3487 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$69, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1015:
	.loc 1 3489 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1014:
	.loc 1 3492 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -104(%ebp)
	jmp	.L1017
.L1008:
	.loc 1 3494 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1018
.LBB37:
	.loc 1 3496 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	.loc 1 3497 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3500 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jb	.L1020
	.loc 1 3501 0
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3501, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1020:
	.loc 1 3503 0
	movl	-56(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1022
	movl	-56(%ebp), %eax
	movzbl	52(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1024
.L1022:
	.loc 1 3505 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1025
	.loc 1 3506 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$71, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1025:
	.loc 1 3508 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1024:
	.loc 1 3511 0
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3515 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	biv_total_increment@PLT
	movl	%eax, -104(%ebp)
	.loc 1 3516 0
	cmpl	$0, -104(%ebp)
	je	.L1027
.LBB38:
	.loc 1 3520 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edi
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %esi
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx_mult_add
	movl	%eax, -104(%ebp)
	.loc 1 3529 0
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1029
.L1030:
	.loc 1 3531 0
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	loop_insn_first_p@PLT
	testl	%eax, %eax
	je	.L1031
	.loc 1 3533 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1033
	.loc 1 3535 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1035
	.loc 1 3536 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %eax
	movl	4(%eax), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1035:
	.loc 1 3539 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1033:
	.loc 1 3542 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	subl	%eax, -136(%ebp)
	sbbl	%edx, -132(%ebp)
.L1031:
	.loc 1 3529 0
	movl	-48(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -48(%ebp)
.L1029:
	cmpl	$0, -48(%ebp)
	jne	.L1030
.L1027:
.LBE38:
	.loc 1 3546 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1037
	.loc 1 3547 0
	movl	-136(%ebp), %edx
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1037:
	.loc 1 3553 0
	movl	-64(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	extend_value_for_giv@PLT
	movl	%eax, -52(%ebp)
	.loc 1 3554 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %edi
	movl	-56(%ebp), %eax
	movl	36(%eax), %esi
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fold_rtx_mult_add
	movl	%eax, -108(%ebp)
	jmp	.L1017
.L1018:
.LBE37:
	.loc 1 3561 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1039
	.loc 1 3562 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$53, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1039:
	.loc 1 3564 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1017:
	.loc 1 3567 0
	cmpl	$0, -108(%ebp)
	jne	.L1041
	.loc 1 3568 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1041:
	.loc 1 3570 0
	movl	$0, -84(%ebp)
	.loc 1 3571 0
	movl	$0, -92(%ebp)
	.loc 1 3572 0
	movl	-96(%ebp), %eax
	subl	$112, %eax
	movl	%eax, -324(%ebp)
	cmpl	$9, -324(%ebp)
	ja	.L1043
	movl	-324(%ebp), %eax
	sall	$2, %eax
	movl	.L1054@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1054:
	.long	.L1044@GOTOFF
	.long	.L1045@GOTOFF
	.long	.L1046@GOTOFF
	.long	.L1047@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1049@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1051@GOTOFF
	.long	.L1052@GOTOFF
	.long	.L1053@GOTOFF
	.text
.L1052:
	.loc 1 3575 0
	movl	$1, -84(%ebp)
.L1048:
	.loc 1 3577 0
	movl	$1, -80(%ebp)
	.loc 1 3578 0
	movl	$1, -92(%ebp)
	.loc 1 3579 0
	jmp	.L1055
.L1050:
	.loc 1 3581 0
	movl	$1, -84(%ebp)
.L1046:
	.loc 1 3583 0
	movl	$-1, -80(%ebp)
	.loc 1 3584 0
	movl	$-1, -92(%ebp)
	.loc 1 3585 0
	jmp	.L1055
.L1045:
	.loc 1 3588 0
	movl	$0, -80(%ebp)
	.loc 1 3589 0
	jmp	.L1055
.L1053:
	.loc 1 3591 0
	movl	$1, -84(%ebp)
.L1049:
	.loc 1 3593 0
	movl	$1, -80(%ebp)
	.loc 1 3594 0
	jmp	.L1055
.L1051:
	.loc 1 3596 0
	movl	$1, -84(%ebp)
.L1047:
	.loc 1 3598 0
	movl	$-1, -80(%ebp)
.L1044:
	.loc 1 3600 0
	movl	$0, -80(%ebp)
	.loc 1 3601 0
	jmp	.L1055
.L1043:
	.loc 1 3603 0
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3603, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1055:
	.loc 1 3609 0
	movl	-116(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 3610 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1056
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L1056
	.loc 1 3613 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -100(%ebp)
	.loc 1 3617 0
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	jne	.L1056
	.loc 1 3618 0
	movl	-116(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1056:
	.loc 1 3630 0
	cmpl	$0, -92(%ebp)
	je	.L1060
	.loc 1 3631 0
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -100(%ebp)
.L1060:
	.loc 1 3642 0
	movl	-128(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 3643 0
	movl	-128(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 3644 0
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 3645 0
	movl	-128(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 3646 0
	movl	-128(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 3647 0
	movl	-128(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 3648 0
	movl	-128(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 84(%edx)
	.loc 1 3655 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1062
.LBB39:
	.loc 1 3661 0
	movl	-108(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3662 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1064
	.loc 1 3663 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1066
.L1064:
	.loc 1 3665 0
	movl	-100(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -36(%ebp)
.L1066:
	.loc 1 3669 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1067
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	je	.L1067
.LBB40:
	.loc 1 3675 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -32(%ebp)
	.loc 1 3677 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_common_reg_term
	testl	%eax, %eax
	je	.L1070
	.loc 1 3678 0
	movl	-32(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1062
.L1070:
	.loc 1 3679 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_invariant_p@PLT
	testl	%eax, %eax
	je	.L1062
	.loc 1 3684 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -32(%ebp)
	.loc 1 3686 0
	movl	-128(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1074
	.loc 1 3687 0
	movl	-108(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1074:
	.loc 1 3688 0
	movl	-32(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1062
	.loc 1 3689 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1077
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -304(%ebp)
	jmp	.L1079
.L1077:
	movl	-44(%ebp), %edx
	movl	%edx, -304(%ebp)
.L1079:
	movl	-304(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	.loc 1 3669 0
	jmp	.L1062
.L1067:
.LBE40:
	.loc 1 3693 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1062
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1062
.LBB41:
	.loc 1 3704 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -28(%ebp)
	.loc 1 3706 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L1062
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1062
.LBB42:
	.loc 1 3708 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -24(%ebp)
	.loc 1 3710 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1062
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1062
	.loc 1 3712 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -108(%ebp)
.L1062:
.LBE42:
.LBE41:
.LBE39:
	.loc 1 3726 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1086
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	find_common_reg_term
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L1086
	.loc 1 3729 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	subtract_reg_term
	movl	%eax, -108(%ebp)
	.loc 1 3730 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	subtract_reg_term
	movl	%eax, -100(%ebp)
.L1086:
	.loc 1 3733 0
	movl	-128(%ebp), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 3734 0
	movl	-128(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 3739 0
	cmpl	$113, -96(%ebp)
	jne	.L1089
	.loc 1 3740 0
	movl	-128(%ebp), %eax
	movl	$0, 44(%eax)
	movl	-128(%ebp), %eax
	movl	44(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 52(%eax)
.L1089:
	.loc 1 3742 0
	cmpl	$0, -104(%ebp)
	jne	.L1091
	.loc 1 3744 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1093
	.loc 1 3745 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$54, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1093:
	.loc 1 3747 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1091:
	.loc 1 3750 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1095
	.loc 1 3755 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1097
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1099
.L1097:
	.loc 1 3756 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_find_equiv_value
	movl	%eax, -104(%ebp)
.L1099:
	.loc 1 3758 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1100
	.loc 1 3760 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1102
	.loc 1 3762 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$46, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3764 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 3765 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1102:
	.loc 1 3767 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1100:
	.loc 1 3769 0
	movl	-128(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 60(%edx)
.L1095:
	.loc 1 3772 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1104
	.loc 1 3774 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1106
	.loc 1 3776 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3778 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 3779 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1106:
	.loc 1 3781 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1104:
	.loc 1 3783 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1108
	.loc 1 3785 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1110
	.loc 1 3787 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3789 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_simple_rtl@PLT
	.loc 1 3790 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1110:
	.loc 1 3792 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1108:
	.loc 1 3794 0
	cmpl	$113, -96(%ebp)
	jne	.L1112
.LBB43:
	.loc 1 3798 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1114
	.loc 1 3799 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$37, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1114:
	.loc 1 3801 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-108(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3804 0
	movl	-20(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jne	.L1116
	.loc 1 3809 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-104(%ebp), %eax
	jne	.L1118
	.loc 1 3810 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1118:
	.loc 1 3811 0
	movl	-128(%ebp), %eax
	movl	$2, 68(%eax)
	movl	$0, 72(%eax)
	jmp	.L1120
.L1116:
	.loc 1 3814 0
	movl	-128(%ebp), %eax
	movl	$1, 68(%eax)
	movl	$0, 72(%eax)
.L1120:
	.loc 1 3816 0
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1121
	.loc 1 3817 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -300(%ebp)
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	movl	-128(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-352(%ebp), %ecx
	imull	%edi, %ecx
	movl	-348(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -328(%ebp)
	addl	-328(%ebp), %ecx
	movl	-352(%ebp), %eax
	mull	%esi
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	addl	-348(%ebp), %ecx
	movl	%ecx, -348(%ebp)
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	addl	-296(%ebp), %eax
	adcl	-292(%ebp), %edx
	movl	-300(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 44(%eax)
	jmp	.L1123
.L1121:
	.loc 1 3822 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-352(%ebp), %ecx
	imull	%edi, %ecx
	movl	-348(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -332(%ebp)
	addl	-332(%ebp), %ecx
	movl	-352(%ebp), %eax
	mull	%esi
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	addl	-348(%ebp), %ecx
	movl	%ecx, -348(%ebp)
	movl	-352(%ebp), %edx
	movl	-348(%ebp), %ecx
	movl	-128(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 44(%eax)
.L1123:
	.loc 1 3825 0
	movl	-112(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -284(%ebp)
	movl	-108(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -280(%ebp)
	movl	%edx, -276(%ebp)
	movl	-128(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-352(%ebp), %ecx
	imull	%edi, %ecx
	movl	-348(%ebp), %edx
	imull	%esi, %edx
	movl	%edx, -336(%ebp)
	addl	-336(%ebp), %ecx
	movl	-352(%ebp), %eax
	mull	%esi
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	addl	-348(%ebp), %ecx
	movl	%ecx, -348(%ebp)
	movl	-352(%ebp), %eax
	movl	-348(%ebp), %edx
	addl	-280(%ebp), %eax
	adcl	-276(%ebp), %edx
	movl	-284(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	gen_int_mode@PLT
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 3829 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	%esi, -320(%ebp)
	movl	%edi, -316(%ebp)
	jmp	.L957
.L1112:
.LBE43:
	.loc 1 3833 0
	cmpl	$0, -84(%ebp)
	je	.L1124
	.loc 1 3834 0
	movl	-100(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -272(%ebp)
	movl	%edx, -268(%ebp)
	movl	-108(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -264(%ebp)
	movl	%edx, -260(%ebp)
	movl	$1, -252(%ebp)
	movl	-260(%ebp), %edi
	cmpl	%edi, -268(%ebp)
	ja	.L1126
	movl	-260(%ebp), %eax
	cmpl	%eax, -268(%ebp)
	jb	.L1127
	movl	-264(%ebp), %edx
	cmpl	%edx, -272(%ebp)
	ja	.L1126
.L1127:
	movl	$0, -252(%ebp)
.L1126:
	movl	-100(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	-108(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	$1, -228(%ebp)
	movl	-236(%ebp), %ecx
	cmpl	%ecx, -244(%ebp)
	jb	.L1128
	movl	-236(%ebp), %esi
	cmpl	%esi, -244(%ebp)
	ja	.L1129
	movl	-240(%ebp), %edi
	cmpl	%edi, -248(%ebp)
	jb	.L1128
.L1129:
	movl	$0, -228(%ebp)
.L1128:
	movl	-252(%ebp), %eax
	subl	-228(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1130
.L1124:
	.loc 1 3840 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -224(%ebp)
	movl	%ecx, -220(%ebp)
	movl	-108(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	$1, -204(%ebp)
	movl	-212(%ebp), %edi
	cmpl	%edi, -220(%ebp)
	jg	.L1131
	movl	-212(%ebp), %eax
	cmpl	%eax, -220(%ebp)
	jl	.L1132
	movl	-216(%ebp), %edx
	cmpl	%edx, -224(%ebp)
	ja	.L1131
.L1132:
	movl	$0, -204(%ebp)
.L1131:
	movl	-100(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	$1, -180(%ebp)
	movl	-188(%ebp), %ecx
	cmpl	%ecx, -196(%ebp)
	jl	.L1133
	movl	-188(%ebp), %esi
	cmpl	%esi, -196(%ebp)
	jg	.L1134
	movl	-192(%ebp), %edi
	cmpl	%edi, -200(%ebp)
	jb	.L1133
.L1134:
	movl	$0, -180(%ebp)
.L1133:
	movl	-204(%ebp), %eax
	subl	-180(%ebp), %eax
	movl	%eax, -76(%ebp)
.L1130:
	.loc 1 3843 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	cmpl	$0, -172(%ebp)
	js	.L1135
	cmpl	$0, -172(%ebp)
	jg	.L1137
	cmpl	$0, -176(%ebp)
	jbe	.L1135
.L1137:
	.loc 1 3844 0
	movl	$1, -88(%ebp)
	jmp	.L1138
.L1135:
	.loc 1 3845 0
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1139
	.loc 1 3846 0
	movl	$0, -88(%ebp)
	jmp	.L1138
.L1139:
	.loc 1 3848 0
	movl	$-1, -88(%ebp)
.L1138:
	.loc 1 3877 0
	movl	-76(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jne	.L1141
	cmpl	$0, -76(%ebp)
	je	.L1141
	movl	-76(%ebp), %eax
	cmpl	-80(%ebp), %eax
	je	.L1144
	cmpl	$0, -80(%ebp)
	jne	.L1141
.L1144:
	.loc 1 3892 0
	movl	-104(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 3893 0
	cmpl	$0, -156(%ebp)
	jg	.L1146
	cmpl	$0, -156(%ebp)
	js	.L1148
	cmpl	$0, -160(%ebp)
	ja	.L1146
	jmp	.L1148
.L1141:
	.loc 1 3883 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1149
	.loc 1 3884 0
	movl	loop_dump_stream@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$34, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1149:
	.loc 1 3885 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1146:
	.loc 1 3895 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-108(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-344(%ebp), %esi
	movl	-340(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 3896 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	jmp	.L1151
.L1148:
	.loc 1 3898 0
	cmpl	$0, -156(%ebp)
	jns	.L1152
	.loc 1 3900 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	-100(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-344(%ebp), %esi
	movl	-340(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 3901 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	jmp	.L1151
.L1152:
	.loc 1 3904 0
	leal	__FUNCTION__.13815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3904, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1151:
	.loc 1 3910 0
	movl	-112(%ebp), %eax
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
	je	.L1158
	movl	%eax, %edx
	xorl	%eax, %eax
.L1158:
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-144(%ebp), %eax
	andl	%esi, %eax
	movl	-140(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 3918 0
	cmpl	$0, -80(%ebp)
	jne	.L1154
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1154
	.loc 1 3919 0
	movl	$0, -320(%ebp)
	movl	$0, -316(%ebp)
	jmp	.L957
.L1154:
	.loc 1 3924 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	-168(%ebp), %eax
	adcl	-164(%ebp), %edx
	movl	-128(%ebp), %ecx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	.loc 1 3925 0
	movl	-128(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
	movl	%edx, -320(%ebp)
	movl	%ecx, -316(%ebp)
.L957:
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	.loc 1 3926 0
	addl	$364, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	loop_iterations, .-loop_iterations
	.type	remap_split_bivs, @function
remap_split_bivs:
.LFB36:
	.loc 1 3936 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%edi
.LCFI99:
	pushl	%esi
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$52, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3937 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	addl	$144, %eax
	movl	%eax, -32(%ebp)
	.loc 1 3942 0
	cmpl	$0, 12(%ebp)
	jne	.L1160
	.loc 1 3943 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1160:
	.loc 1 3945 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3946 0
	movl	-28(%ebp), %edx
	subl	$64, %edx
	movl	%edx, -52(%ebp)
	cmpl	$15, -52(%ebp)
	ja	.L1163
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-52(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -56(%ebp)
	movl	-56(%ebp), %eax
	andl	$57651, %eax
	testl	%eax, %eax
	jne	.L1164
	movl	-56(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L1165
	jmp	.L1163
.L1164:
	.loc 1 3956 0
	movl	12(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L1162
.L1165:
	.loc 1 3963 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1163
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1163
	.loc 1 3965 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1162
.L1163:
	.loc 1 3972 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3973 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1168
.L1169:
	.loc 1 3975 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1170
	.loc 1 3976 0
	movl	-24(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_split_bivs
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	jmp	.L1172
.L1170:
	.loc 1 3977 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1172
.LBB44:
	.loc 1 3980 0
	movl	$0, -16(%ebp)
	jmp	.L1174
.L1175:
	.loc 1 3981 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-16(%ebp), %edi
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_split_bivs
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 3980 0
	addl	$1, -16(%ebp)
.L1174:
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1175
.L1172:
.LBE44:
	.loc 1 3973 0
	subl	$1, -24(%ebp)
.L1168:
	cmpl	$0, -24(%ebp)
	jns	.L1169
	.loc 1 3984 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L1162:
	movl	-48(%ebp), %eax
	.loc 1 3985 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	remap_split_bivs, .-remap_split_bivs
.globl set_dominates_use
	.type	set_dominates_use, @function
set_dominates_use:
.LFB37:
	.loc 1 4009 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$36, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4010 0
	movl	$0, -12(%ebp)
	.loc 1 4011 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4013 0
	jmp	.L1179
.L1180:
	.loc 1 4015 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1181
	.loc 1 4016 0
	movl	$1, -12(%ebp)
.L1181:
	.loc 1 4018 0
	movl	-8(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L1183
	.loc 1 4019 0
	movl	$0, -24(%ebp)
	jmp	.L1185
.L1183:
	.loc 1 4020 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1179:
	.loc 1 4013 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1180
	.loc 1 4024 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1187
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_regno_p@PLT
	testl	%eax, %eax
	jne	.L1189
.L1187:
	.loc 1 4025 0
	movl	$0, -24(%ebp)
	jmp	.L1185
.L1189:
	.loc 1 4028 0
	cmpl	$0, -12(%ebp)
	jne	.L1192
	.loc 1 4029 0
	movl	$1, -24(%ebp)
	jmp	.L1185
.L1193:
	.loc 1 4035 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1194
	.loc 1 4036 0
	movl	$0, -24(%ebp)
	jmp	.L1185
.L1194:
	.loc 1 4039 0
	movl	-8(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L1196
	.loc 1 4040 0
	movl	$1, -24(%ebp)
	jmp	.L1185
.L1196:
	.loc 1 4041 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1192:
	.loc 1 4031 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L1193
	.loc 1 4045 0
	movl	$1, -24(%ebp)
.L1185:
	movl	-24(%ebp), %eax
	.loc 1 4046 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	set_dominates_use, .-set_dominates_use
	.type	ujump_to_loop_cont, @function
ujump_to_loop_cont:
.LFB38:
	.loc 1 4058 0
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
	.loc 1 4062 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	.loc 1 4064 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4065 0
	cmpl	$0, -16(%ebp)
	jne	.L1201
	.loc 1 4066 0
	movl	$0, -24(%ebp)
	jmp	.L1203
.L1201:
	.loc 1 4068 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4069 0
	cmpl	$0, -8(%ebp)
	jne	.L1204
	.loc 1 4070 0
	movl	$0, -24(%ebp)
	jmp	.L1203
.L1204:
	.loc 1 4073 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4074 0
	cmpl	$0, -12(%ebp)
	je	.L1206
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L1208
.L1206:
	.loc 1 4075 0
	movl	$0, -24(%ebp)
	jmp	.L1203
.L1208:
	.loc 1 4078 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1209
	.loc 1 4079 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1203
.L1209:
	.loc 1 4081 0
	movl	$0, -24(%ebp)
.L1203:
	movl	-24(%ebp), %eax
	.loc 1 4082 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	ujump_to_loop_cont, .-ujump_to_loop_cont
	.local	addr_combined_regs
	.comm	addr_combined_regs,4,4
	.local	splittable_regs
	.comm	splittable_regs,4,4
	.local	splittable_regs_updates
	.comm	splittable_regs_updates,4,4
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.long	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI11
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.long	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI20
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
	.long	.LCFI25-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI26
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
	.long	.LCFI29-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI30
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
	.long	.LCFI33-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI34
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
	.long	.LCFI39-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
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
	.long	.LCFI43-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI44
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
	.long	.LCFI47-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI48
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
	.long	.LCFI59-.LCFI56
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
	.long	.LCFI64-.LCFI61
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI65-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI69-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI70
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI74-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI75
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
	.long	.LCFI80-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI84-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI88-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
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
	.long	.LCFI91-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI92
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
	.long	.LCFI97-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI102-.LCFI98
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
	.long	.LCFI103-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI107-.LFB38
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
.LEFDE46:
	.file 2 "../../../kgccfe/gnu/basic-block.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/MIPS/config.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/loop.h"
	.file 9 "../../../kgccfe/gnu/integrate.h"
	.file 10 "../../../kgccfe/gnu/varray.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kgccfe/gnu/regs.h"
	.file 13 "../../../kgccfe/gnu/flags.h"
	.file 14 "../../../kgccfe/gnu/function.h"
	.file 15 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "../../../kgccfe/gnu/params.h"
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
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI48-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI75-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5819
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/unroll.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0xa1b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0x8d
	.long	0x723
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x2ed
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
	.long	0x1638
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1648
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x207
	.uleb128 0x9
	.long	0x20c
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2ed
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x304
	.long	0x9b
	.uleb128 0xf
	.long	0x304
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x21b
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x2ed
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
	.byte	0x12
	.byte	0x3b
	.long	0x389
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x3d3
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x3b4
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x404
	.uleb128 0x12
	.long	0x67f
	.long	.LASF2
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xc
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x36d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x331
	.uleb128 0x13
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x6d6
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x693
	.uleb128 0x3
	.byte	0x4
	.long	0x404
	.uleb128 0xe
	.long	0x6f2
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x685
	.uleb128 0xe
	.long	0x708
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.long	0x718
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x214
	.uleb128 0x3
	.byte	0x4
	.long	0x214
	.uleb128 0x14
	.long	0x96c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x15
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x15
	.string	"BImode"
	.sleb128 1
	.uleb128 0x15
	.string	"QImode"
	.sleb128 2
	.uleb128 0x15
	.string	"HImode"
	.sleb128 3
	.uleb128 0x15
	.string	"SImode"
	.sleb128 4
	.uleb128 0x15
	.string	"DImode"
	.sleb128 5
	.uleb128 0x15
	.string	"TImode"
	.sleb128 6
	.uleb128 0x15
	.string	"OImode"
	.sleb128 7
	.uleb128 0x15
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x15
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x15
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x15
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x15
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x15
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x15
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x15
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x15
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x15
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x15
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x15
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x15
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x15
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x15
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x15
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x15
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x15
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x15
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x15
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x15
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x15
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x15
	.string	"COImode"
	.sleb128 30
	.uleb128 0x15
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x15
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x15
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x15
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x15
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x15
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x15
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x15
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x15
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x15
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x15
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x15
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x15
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x15
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x15
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x15
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x15
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x15
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x15
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x15
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x15
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x15
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x15
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x15
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x16
	.long	0xa1b
	.long	.LASF3
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x15
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x15
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x15
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x15
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x15
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x15
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x15
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x15
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x15
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x15
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x14
	.long	0x11ea
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x15
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0x15
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x15
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x15
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x15
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x15
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x15
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x15
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x15
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x15
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x15
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x15
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x15
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x15
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x15
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x15
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x15
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x15
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x15
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x15
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x15
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x15
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x15
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x15
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x15
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x15
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x15
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x15
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x15
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x15
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x15
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x15
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x15
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x15
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x15
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x15
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x15
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x15
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x15
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x15
	.string	"INSN"
	.sleb128 42
	.uleb128 0x15
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x15
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x15
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x15
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x15
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x15
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x15
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x15
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x15
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x15
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x15
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x15
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x15
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x15
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x15
	.string	"SET"
	.sleb128 57
	.uleb128 0x15
	.string	"USE"
	.sleb128 58
	.uleb128 0x15
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x15
	.string	"CALL"
	.sleb128 60
	.uleb128 0x15
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x15
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x15
	.string	"RESX"
	.sleb128 63
	.uleb128 0x15
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x15
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x15
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x15
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x15
	.string	"CONST"
	.sleb128 68
	.uleb128 0x15
	.string	"PC"
	.sleb128 69
	.uleb128 0x15
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x15
	.string	"REG"
	.sleb128 71
	.uleb128 0x15
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x15
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x15
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x15
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x15
	.string	"MEM"
	.sleb128 76
	.uleb128 0x15
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x15
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x15
	.string	"CC0"
	.sleb128 79
	.uleb128 0x15
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x15
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x15
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x15
	.string	"COND"
	.sleb128 83
	.uleb128 0x15
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x15
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x15
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x15
	.string	"NEG"
	.sleb128 87
	.uleb128 0x15
	.string	"MULT"
	.sleb128 88
	.uleb128 0x15
	.string	"DIV"
	.sleb128 89
	.uleb128 0x15
	.string	"MOD"
	.sleb128 90
	.uleb128 0x15
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x15
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x15
	.string	"AND"
	.sleb128 93
	.uleb128 0x15
	.string	"IOR"
	.sleb128 94
	.uleb128 0x15
	.string	"XOR"
	.sleb128 95
	.uleb128 0x15
	.string	"NOT"
	.sleb128 96
	.uleb128 0x15
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x15
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x15
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x15
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x15
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x15
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x15
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x15
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x15
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x15
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x15
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x15
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x15
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x15
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x15
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x15
	.string	"NE"
	.sleb128 112
	.uleb128 0x15
	.string	"EQ"
	.sleb128 113
	.uleb128 0x15
	.string	"GE"
	.sleb128 114
	.uleb128 0x15
	.string	"GT"
	.sleb128 115
	.uleb128 0x15
	.string	"LE"
	.sleb128 116
	.uleb128 0x15
	.string	"LT"
	.sleb128 117
	.uleb128 0x15
	.string	"GEU"
	.sleb128 118
	.uleb128 0x15
	.string	"GTU"
	.sleb128 119
	.uleb128 0x15
	.string	"LEU"
	.sleb128 120
	.uleb128 0x15
	.string	"LTU"
	.sleb128 121
	.uleb128 0x15
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x15
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x15
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x15
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x15
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x15
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x15
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x15
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x15
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x15
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x15
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x15
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x15
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x15
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x15
	.string	"FIX"
	.sleb128 136
	.uleb128 0x15
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x15
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x15
	.string	"ABS"
	.sleb128 139
	.uleb128 0x15
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x15
	.string	"FFS"
	.sleb128 141
	.uleb128 0x15
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x15
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x15
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x15
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x15
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x15
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x15
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x15
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x15
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x15
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x15
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x15
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x15
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x15
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x15
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x15
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x15
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x15
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x15
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x15
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x15
	.string	"PHI"
	.sleb128 162
	.uleb128 0x15
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x12c4
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x2ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x5d
	.long	0x2ed
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
	.long	0x11ea
	.uleb128 0x12
	.long	0x133b
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
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
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF4
	.byte	0x3
	.byte	0x6e
	.long	0x12df
	.uleb128 0x19
	.long	0x1418
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x389
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x214
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2ed
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x201
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9b
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19b
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x723
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x12c4
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x142c
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1494
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x1a
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x161d
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1623
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1418
	.uleb128 0x4
	.long	0x1494
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x1eee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x1eee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1432
	.uleb128 0x4
	.long	0x161d
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x203f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x203f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x1f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x1f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x1f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x1f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x161d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x161d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x22ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x2
	.byte	0xdf
	.long	0x1f7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x149a
	.uleb128 0x3
	.byte	0x4
	.long	0x133b
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1346
	.uleb128 0xe
	.long	0x1648
	.long	0x1629
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1658
	.long	0x9b
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x1694
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xa
	.byte	0x32
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xa
	.byte	0x36
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0x182f
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.uleb128 0x15
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x15
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x15
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x15
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x15
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x15
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x15
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x15
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x15
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x15
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x15
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x15
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x15
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x15
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x15
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x15
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x15
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x15
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x15
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x15
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x15
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x19
	.long	0x192b
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.uleb128 0x1a
	.string	"c"
	.byte	0xa
	.byte	0x56
	.long	0x6e2
	.uleb128 0x1a
	.string	"uc"
	.byte	0xa
	.byte	0x58
	.long	0x192b
	.uleb128 0x1a
	.string	"s"
	.byte	0xa
	.byte	0x5a
	.long	0x193b
	.uleb128 0x1a
	.string	"us"
	.byte	0xa
	.byte	0x5c
	.long	0x194b
	.uleb128 0x1a
	.string	"i"
	.byte	0xa
	.byte	0x5e
	.long	0x195b
	.uleb128 0x1a
	.string	"u"
	.byte	0xa
	.byte	0x60
	.long	0x196b
	.uleb128 0x1a
	.string	"l"
	.byte	0xa
	.byte	0x62
	.long	0x197b
	.uleb128 0x1a
	.string	"ul"
	.byte	0xa
	.byte	0x64
	.long	0x198b
	.uleb128 0x1a
	.string	"hint"
	.byte	0xa
	.byte	0x66
	.long	0x199b
	.uleb128 0x1a
	.string	"uhint"
	.byte	0xa
	.byte	0x68
	.long	0x19ab
	.uleb128 0x1a
	.string	"generic"
	.byte	0xa
	.byte	0x6a
	.long	0x19bb
	.uleb128 0x1a
	.string	"cptr"
	.byte	0xa
	.byte	0x6c
	.long	0x19cb
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xa
	.byte	0x6e
	.long	0x19db
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0xa
	.byte	0x70
	.long	0x19eb
	.uleb128 0x1a
	.string	"tree"
	.byte	0xa
	.byte	0x72
	.long	0x19fb
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0xa
	.byte	0x74
	.long	0x1a0b
	.uleb128 0x1a
	.string	"reg"
	.byte	0xa
	.byte	0x76
	.long	0x1a1b
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0xa
	.byte	0x78
	.long	0x1b0c
	.uleb128 0x1a
	.string	"bb"
	.byte	0xa
	.byte	0x7a
	.long	0x1b1c
	.uleb128 0x1a
	.string	"te"
	.byte	0xa
	.byte	0x7c
	.long	0x1b2c
	.byte	0x0
	.uleb128 0xe
	.long	0x193b
	.long	0x331
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x194b
	.long	0x37c
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x195b
	.long	0x342
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x196b
	.long	0x214
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x197b
	.long	0x2ed
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x198b
	.long	0x3d3
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x199b
	.long	0x358
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19ab
	.long	0x389
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19bb
	.long	0x39a
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19cb
	.long	0x3f0
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19db
	.long	0x3f2
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19eb
	.long	0xa6
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19fb
	.long	0x1a8
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a0b
	.long	0x1ef
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a1b
	.long	0x1494
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a2b
	.long	0x1b06
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1b06
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xa
	.byte	0x76
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0x31
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF7
	.byte	0xc
	.byte	0x32
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0xc
	.byte	0x33
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0xc
	.byte	0x36
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0xc
	.byte	0x39
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0xc
	.byte	0x3a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0xc
	.byte	0x3b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0xc
	.byte	0x3c
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0xc
	.byte	0x3d
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF8
	.byte	0xc
	.byte	0x3e
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0xc
	.byte	0x3f
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a2b
	.uleb128 0xe
	.long	0x1b1c
	.long	0x165e
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1b2c
	.long	0x161d
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1b3c
	.long	0x1b47
	.uleb128 0xf
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3c
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xa
	.byte	0x7e
	.long	0x182f
	.uleb128 0x4
	.long	0x1bd5
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xa
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xa
	.byte	0x82
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xa
	.byte	0x83
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0xa
	.byte	0x85
	.long	0x1694
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0xa
	.byte	0x86
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xa
	.byte	0x87
	.long	0x1b4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xa
	.byte	0x8a
	.long	0x1be8
	.uleb128 0x3
	.byte	0x4
	.long	0x1b60
	.uleb128 0x4
	.long	0x1c22
	.string	"equiv_table"
	.byte	0x8
	.byte	0x9
	.byte	0x6f
	.uleb128 0x7
	.string	"dest"
	.byte	0x9
	.byte	0x70
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"equiv"
	.byte	0x9
	.byte	0x71
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x1e47
	.string	"inline_remap"
	.value	0x148
	.byte	0x9
	.byte	0x24
	.uleb128 0x7
	.string	"integrating"
	.byte	0x9
	.byte	0x28
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fndecl"
	.byte	0x9
	.byte	0x2a
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"insns_at_start"
	.byte	0x9
	.byte	0x2c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"block_map"
	.byte	0x9
	.byte	0x2e
	.long	0x1bd5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"reg_map"
	.byte	0x9
	.byte	0x31
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"label_map"
	.byte	0x9
	.byte	0x38
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"insn_map"
	.byte	0x9
	.byte	0x3e
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"min_insnno"
	.byte	0x9
	.byte	0x3f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x9
	.byte	0x3f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"const_equiv_varray"
	.byte	0x9
	.byte	0x4e
	.long	0x1bd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"const_age"
	.byte	0x9
	.byte	0x55
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"inline_target"
	.byte	0x9
	.byte	0x58
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"orig_asm_operands_vector"
	.byte	0x9
	.byte	0x5c
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"copy_asm_operands_vector"
	.byte	0x9
	.byte	0x60
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"copy_asm_constraints_vector"
	.byte	0x9
	.byte	0x62
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"local_return_label"
	.byte	0x9
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x9
	.byte	0x68
	.long	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x9
	.byte	0x69
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"num_sets"
	.byte	0x9
	.byte	0x6d
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"equiv_sets"
	.byte	0x9
	.byte	0x72
	.long	0x1e47
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"last_pc_value"
	.byte	0x9
	.byte	0x75
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x7
	.string	"compare_src"
	.byte	0x9
	.byte	0x7c
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x7
	.string	"compare_mode"
	.byte	0x9
	.byte	0x7d
	.long	0x723
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.byte	0x0
	.uleb128 0xe
	.long	0x1e57
	.long	0x1bee
	.uleb128 0xf
	.long	0x304
	.byte	0x1d
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x358
	.uleb128 0x4
	.long	0x1ec2
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x1ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x1ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x1ec8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6a
	.uleb128 0xe
	.long	0x1ed8
	.long	0x1e57
	.uleb128 0xf
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x1e6a
	.uleb128 0x3
	.byte	0x4
	.long	0x1ed8
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1494
	.uleb128 0x4
	.long	0x1f5c
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x19ab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1f6b
	.uleb128 0x3
	.byte	0x4
	.long	0x1f02
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x1ef4
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x389
	.uleb128 0x4
	.long	0x2039
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x2039
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x2039
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x161d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x161d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x2
	.byte	0x87
	.long	0x1f7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f90
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x2039
	.uleb128 0x12
	.long	0x22ba
	.long	.LASF12
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x22c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x22c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x22c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x22cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x22c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x22c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x1f5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x22cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x22cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x1f5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x22d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x22ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x22ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x22ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x204b
	.uleb128 0x18
	.long	.LASF8
	.byte	0x2
	.byte	0xe6
	.long	0x161d
	.uleb128 0x3
	.byte	0x4
	.long	0x203f
	.uleb128 0x3
	.byte	0x4
	.long	0x22ba
	.uleb128 0x9
	.long	0x201
	.uleb128 0x4
	.long	0x2342
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xe
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xe
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xe
	.byte	0x19
	.long	0x723
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xe
	.byte	0x1b
	.long	0x2342
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x22dc
	.uleb128 0x12
	.long	0x2391
	.long	.LASF13
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xe
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xe
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF14
	.byte	0xe
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xe
	.byte	0x29
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2348
	.uleb128 0x4
	.long	0x24ca
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xe
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xe
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF14
	.byte	0xe
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF13
	.byte	0xe
	.byte	0x50
	.long	0x2391
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0xe
	.byte	0x65
	.long	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x24ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1c
	.long	.LASF11
	.byte	0xe
	.byte	0x70
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x4
	.long	0x25b0
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xe
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xe
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xe
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xe
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1e
	.long	0x261a
	.long	.LASF15
	.byte	0x4
	.byte	0xe
	.value	0x1f1
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	0x2fd9
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x2fe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x2ff9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x2fff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x3005
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x301b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0xe
	.byte	0xbe
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0xe
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xe
	.byte	0xc4
	.long	0x3021
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0xe
	.byte	0xce
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xe
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xe
	.byte	0xdf
	.long	0x30b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xe
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xe
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xe
	.byte	0xec
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x303e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xe
	.byte	0xf8
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xe
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x389
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x2ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x1658
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x3050
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x2342
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x3069
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x3083
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF15
	.byte	0xe
	.value	0x1fa
	.long	0x25b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd9
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2feb
	.uleb128 0x3
	.byte	0x4
	.long	0x24d0
	.uleb128 0x3
	.byte	0x4
	.long	0x2397
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x300b
	.uleb128 0x3
	.byte	0x4
	.long	0x261a
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3027
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3044
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3056
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x306f
	.uleb128 0x14
	.long	0x30b1
	.string	"g_types"
	.byte	0x4
	.byte	0x8
	.byte	0x43
	.uleb128 0x15
	.string	"DEST_ADDR"
	.sleb128 0
	.uleb128 0x15
	.string	"DEST_REG"
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.long	0x337d
	.string	"induction"
	.byte	0x5c
	.byte	0x8
	.byte	0x4d
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x8
	.byte	0x4e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"new_reg"
	.byte	0x8
	.byte	0x4f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src_reg"
	.byte	0x8
	.byte	0x51
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"giv_type"
	.byte	0x8
	.byte	0x53
	.long	0x3089
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x8
	.byte	0x54
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"location"
	.byte	0x8
	.byte	0x58
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x8
	.byte	0x5c
	.long	0x723
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"mem"
	.byte	0x8
	.byte	0x5d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"mult_val"
	.byte	0x8
	.byte	0x5e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"add_val"
	.byte	0x8
	.byte	0x5f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"benefit"
	.byte	0x8
	.byte	0x60
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x8
	.byte	0x61
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"combined_with"
	.byte	0x8
	.byte	0x65
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"replaceable"
	.byte	0x8
	.byte	0x68
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"not_replaceable"
	.byte	0x8
	.byte	0x6d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"ignore"
	.byte	0x8
	.byte	0x73
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"always_computable"
	.byte	0x8
	.byte	0x74
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"always_executed"
	.byte	0x8
	.byte	0x76
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"maybe_multiple"
	.byte	0x8
	.byte	0x77
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"cant_derive"
	.byte	0x8
	.byte	0x7a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"maybe_dead"
	.byte	0x8
	.byte	0x7e
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"auto_inc_opt"
	.byte	0x8
	.byte	0x81
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"unrolled"
	.byte	0x8
	.byte	0x83
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"shared"
	.byte	0x8
	.byte	0x85
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"no_const_addval"
	.byte	0x8
	.byte	0x86
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"lifetime"
	.byte	0x8
	.byte	0x87
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"derive_adjustment"
	.byte	0x8
	.byte	0x88
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"ext_dependent"
	.byte	0x8
	.byte	0x8c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"next_iv"
	.byte	0x8
	.byte	0x8e
	.long	0x337d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"same"
	.byte	0x8
	.byte	0x92
	.long	0x337d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"const_adjust"
	.byte	0x8
	.byte	0x95
	.long	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"same_insn"
	.byte	0x8
	.byte	0x99
	.long	0x337d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"last_use"
	.byte	0x8
	.byte	0x9d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x30b1
	.uleb128 0x4
	.long	0x34dc
	.string	"iv_class"
	.byte	0x34
	.byte	0x8
	.byte	0xa5
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x8
	.byte	0xa6
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"biv_count"
	.byte	0x8
	.byte	0xa7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"biv"
	.byte	0x8
	.byte	0xa8
	.long	0x337d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"giv_count"
	.byte	0x8
	.byte	0xa9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"giv"
	.byte	0x8
	.byte	0xac
	.long	0x337d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"total_benefit"
	.byte	0x8
	.byte	0xae
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x8
	.byte	0xaf
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"initial_test"
	.byte	0x8
	.byte	0xb0
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x8
	.byte	0xb1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"next"
	.byte	0x8
	.byte	0xb2
	.long	0x34dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"init_insn"
	.byte	0x8
	.byte	0xb3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_set"
	.byte	0x8
	.byte	0xb4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"incremented"
	.byte	0x8
	.byte	0xb5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"eliminable"
	.byte	0x8
	.byte	0xb6
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"nonneg"
	.byte	0x8
	.byte	0xb8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"reversed"
	.byte	0x8
	.byte	0xba
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"all_reduced"
	.byte	0x8
	.byte	0xbc
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3383
	.uleb128 0x14
	.long	0x3537
	.string	"iv_mode"
	.byte	0x4
	.byte	0x8
	.byte	0xc3
	.uleb128 0x15
	.string	"UNKNOWN_INDUCT"
	.sleb128 0
	.uleb128 0x15
	.string	"BASIC_INDUCT"
	.sleb128 1
	.uleb128 0x15
	.string	"NOT_BASIC_INDUCT"
	.sleb128 2
	.uleb128 0x15
	.string	"GENERAL_INDUCT"
	.sleb128 3
	.byte	0x0
	.uleb128 0x21
	.long	0x3559
	.byte	0x4
	.byte	0x8
	.byte	0xd1
	.uleb128 0x1a
	.string	"class"
	.byte	0x8
	.byte	0xd2
	.long	0x34dc
	.uleb128 0x1a
	.string	"info"
	.byte	0x8
	.byte	0xd3
	.long	0x337d
	.byte	0x0
	.uleb128 0x4
	.long	0x3581
	.string	"iv"
	.byte	0x8
	.byte	0x8
	.byte	0xce
	.uleb128 0x7
	.string	"type"
	.byte	0x8
	.byte	0xcf
	.long	0x34e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"iv"
	.byte	0x8
	.byte	0xd4
	.long	0x3537
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x35c2
	.string	"loop_ivs"
	.byte	0xc
	.byte	0x8
	.byte	0xde
	.uleb128 0x7
	.string	"regs"
	.byte	0x8
	.byte	0xe1
	.long	0x35c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"n_regs"
	.byte	0x8
	.byte	0xe4
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"list"
	.byte	0x8
	.byte	0xe8
	.long	0x34dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3559
	.uleb128 0x12
	.long	0x3604
	.long	.LASF21
	.byte	0xc
	.byte	0x8
	.byte	0xed
	.uleb128 0x7
	.string	"mem"
	.byte	0x8
	.byte	0xee
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"reg"
	.byte	0x8
	.byte	0xef
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"optimize"
	.byte	0x8
	.byte	0xf0
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	.LASF21
	.byte	0x8
	.byte	0xf1
	.long	0x35c8
	.uleb128 0x4
	.long	0x3699
	.string	"loop_reg"
	.byte	0x10
	.byte	0x8
	.byte	0xf6
	.uleb128 0xc
	.string	"set_in_loop"
	.byte	0x8
	.value	0x101
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"n_times_set"
	.byte	0x8
	.value	0x106
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"single_usage"
	.byte	0x8
	.value	0x10a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"may_not_optimize"
	.byte	0x8
	.value	0x10e
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"moved_once"
	.byte	0x8
	.value	0x112
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xb
	.long	0x36f6
	.string	"loop_regs"
	.byte	0x10
	.byte	0x8
	.value	0x117
	.uleb128 0xc
	.string	"num"
	.byte	0x8
	.value	0x118
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"size"
	.byte	0x8
	.value	0x119
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"array"
	.byte	0x8
	.value	0x11a
	.long	0x36f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"multiple_uses"
	.byte	0x8
	.value	0x11b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x360f
	.uleb128 0xb
	.long	0x3734
	.string	"loop_movables"
	.byte	0x8
	.byte	0x8
	.value	0x121
	.uleb128 0xc
	.string	"head"
	.byte	0x8
	.value	0x123
	.long	0x373e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"last"
	.byte	0x8
	.value	0x125
	.long	0x373e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.string	"movable"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3734
	.uleb128 0x22
	.long	0x3a51
	.long	.LASF22
	.byte	0xa0
	.byte	0x8
	.value	0x12c
	.uleb128 0xc
	.string	"has_call"
	.byte	0x8
	.value	0x12e
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"has_libcall"
	.byte	0x8
	.value	0x130
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"has_nonconst_call"
	.byte	0x8
	.value	0x132
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"has_prefetch"
	.byte	0x8
	.value	0x134
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"has_volatile"
	.byte	0x8
	.value	0x137
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"has_tablejump"
	.byte	0x8
	.value	0x139
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"has_multiple_exit_targets"
	.byte	0x8
	.value	0x13c
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"has_indirect_jump"
	.byte	0x8
	.value	0x13e
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"preconditioned"
	.byte	0x8
	.value	0x141
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF20
	.byte	0x8
	.value	0x143
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF23
	.byte	0x8
	.value	0x145
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x20
	.long	.LASF18
	.byte	0x8
	.value	0x147
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"initial_equiv_value"
	.byte	0x8
	.value	0x14a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"final_equiv_value"
	.byte	0x8
	.value	0x14d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x20
	.long	.LASF24
	.byte	0x8
	.value	0x14f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x20
	.long	.LASF25
	.byte	0x8
	.value	0x151
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x20
	.long	.LASF26
	.byte	0x8
	.value	0x152
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x20
	.long	.LASF27
	.byte	0x8
	.value	0x158
	.long	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x20
	.long	.LASF28
	.byte	0x8
	.value	0x15a
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"used_count_register"
	.byte	0x8
	.value	0x15b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"iv"
	.byte	0x8
	.value	0x15d
	.long	0x34dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"store_mems"
	.byte	0x8
	.value	0x15f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"mems"
	.byte	0x8
	.value	0x165
	.long	0x3a51
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"mems_idx"
	.byte	0x8
	.value	0x167
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"mems_allocated"
	.byte	0x8
	.value	0x169
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"unknown_address_altered"
	.byte	0x8
	.value	0x16e
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"unknown_constant_address_altered"
	.byte	0x8
	.value	0x171
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"num_mem_sets"
	.byte	0x8
	.value	0x173
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"first_loop_store_insn"
	.byte	0x8
	.value	0x175
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"movables"
	.byte	0x8
	.value	0x177
	.long	0x36fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"regs"
	.byte	0x8
	.value	0x179
	.long	0x3699
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.string	"ivs"
	.byte	0x8
	.value	0x17b
	.long	0x3581
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"pre_header_has_call"
	.byte	0x8
	.value	0x17d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3604
	.uleb128 0x12
	.long	0x3a94
	.long	.LASF29
	.byte	0xc
	.byte	0x13
	.byte	0x2d
	.uleb128 0x7
	.string	"option"
	.byte	0x13
	.byte	0x30
	.long	0x22d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"value"
	.byte	0x13
	.byte	0x32
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"help"
	.byte	0x13
	.byte	0x34
	.long	0x22d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	.LASF29
	.byte	0x13
	.byte	0x35
	.long	0x3a57
	.uleb128 0x4
	.long	0x3acf
	.string	"_factor"
	.byte	0x8
	.byte	0x1
	.byte	0xa1
	.uleb128 0x7
	.string	"factor"
	.byte	0x1
	.byte	0xa1
	.long	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.byte	0xa1
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0x3b18
	.string	"unroll_types"
	.byte	0x4
	.byte	0x1
	.byte	0xa7
	.uleb128 0x15
	.string	"UNROLL_COMPLETELY"
	.sleb128 0
	.uleb128 0x15
	.string	"UNROLL_MODULO"
	.sleb128 1
	.uleb128 0x15
	.string	"UNROLL_NAIVE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x23
	.long	0x3ff7
	.byte	0x1
	.string	"unroll_loop"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x24
	.long	.LASF12
	.byte	0x1
	.byte	0xe6
	.long	0x22ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"insn_count"
	.byte	0x1
	.byte	0xe7
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"strength_reduce_p"
	.byte	0x1
	.byte	0xe8
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF22
	.byte	0x1
	.byte	0xea
	.long	0x3ff7
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.string	"ivs"
	.byte	0x1
	.byte	0xeb
	.long	0x3ffd
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0xec
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.byte	0xec
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xed
	.long	0x2ed
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.string	"temp"
	.byte	0x1
	.byte	0xee
	.long	0x39a
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF28
	.byte	0x1
	.byte	0xef
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x26
	.long	.LASF30
	.byte	0x1
	.byte	0xf0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF31
	.byte	0x1
	.byte	0xf0
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x26
	.long	.LASF16
	.byte	0x1
	.byte	0xf1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.string	"sequence"
	.byte	0x1
	.byte	0xf1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x26
	.long	.LASF32
	.byte	0x1
	.byte	0xf1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.byte	0xf1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x27
	.string	"max_labelno"
	.byte	0x1
	.byte	0xf2
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF9
	.byte	0x1
	.byte	0xf2
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x26
	.long	.LASF33
	.byte	0x1
	.byte	0xf3
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.string	"map"
	.byte	0x1
	.byte	0xf4
	.long	0x4003
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x27
	.string	"local_label"
	.byte	0x1
	.byte	0xf5
	.long	0x3f2
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.string	"local_regno"
	.byte	0x1
	.byte	0xf6
	.long	0x3f2
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.string	"max_local_regnum"
	.byte	0x1
	.byte	0xf7
	.long	0x2ed
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF34
	.byte	0x1
	.byte	0xf8
	.long	0x2ed
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x26
	.long	.LASF35
	.byte	0x1
	.byte	0xf9
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF36
	.byte	0x1
	.byte	0xfa
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.string	"bl"
	.byte	0x1
	.byte	0xfb
	.long	0x34dc
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.string	"splitting_not_safe"
	.byte	0x1
	.byte	0xfc
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x26
	.long	.LASF37
	.byte	0x1
	.byte	0xfd
	.long	0x3acf
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.string	"loop_preconditioned"
	.byte	0x1
	.byte	0xfe
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.string	"safety_label"
	.byte	0x1
	.byte	0xff
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF38
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF39
	.byte	0x1
	.value	0x104
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x105
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.string	"egress"
	.byte	0x1
	.value	0x519
	.long	.L257
	.uleb128 0x2a
	.long	0x3dc7
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"ujump"
	.byte	0x1
	.value	0x135
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x2a
	.long	0x3e30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x2ba
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x2c7
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF41
	.byte	0x1
	.value	0x2c8
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x2c9
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0x2ca
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x3e74
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"copy_start_luid"
	.byte	0x1
	.value	0x2fe
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"copy_end_luid"
	.byte	0x1
	.value	0x2ff
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2a
	.long	0x3fe6
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x350
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.value	0x350
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0x350
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x351
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"diff"
	.byte	0x1
	.value	0x357
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x357
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"labels"
	.byte	0x1
	.value	0x358
	.long	0x1658
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"abs_inc"
	.byte	0x1
	.value	0x359
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"neg_inc"
	.byte	0x1
	.value	0x359
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"cc"
	.byte	0x1
	.value	0x35a
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"less_p"
	.byte	0x1
	.value	0x35b
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF43
	.byte	0x1
	.value	0x35c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	0x3f90
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2b
	.string	"incremented_initval"
	.byte	0x1
	.value	0x3ad
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF44
	.byte	0x1
	.value	0x3ae
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2a
	.long	0x3fbc
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x28
	.long	.LASF45
	.byte	0x1
	.value	0x3cf
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF44
	.byte	0x1
	.value	0x3d0
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x28
	.long	.LASF45
	.byte	0x1
	.value	0x3f7
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF44
	.byte	0x1
	.value	0x3f8
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x5530
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10887
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3744
	.uleb128 0x3
	.byte	0x4
	.long	0x3581
	.uleb128 0x3
	.byte	0x4
	.long	0x1c22
	.uleb128 0x2e
	.long	0x40c2
	.string	"simplify_cmp_and_jump_insns"
	.byte	0x1
	.value	0x542
	.byte	0x1
	.long	0x9b
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2f
	.string	"code"
	.byte	0x1
	.value	0x53f
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x540
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"op0"
	.byte	0x1
	.value	0x541
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"op1"
	.byte	0x1
	.value	0x541
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF42
	.byte	0x1
	.value	0x541
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x543
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x543
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"scode"
	.byte	0x1
	.value	0x548
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x416a
	.byte	0x1
	.string	"precondition_loop_p"
	.byte	0x1
	.value	0x573
	.byte	0x1
	.long	0x214
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0x570
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF20
	.byte	0x1
	.value	0x571
	.long	0x1658
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF18
	.byte	0x1
	.value	0x571
	.long	0x1658
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x571
	.long	0x1658
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x572
	.long	0x4175
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.long	.LASF39
	.byte	0x1
	.value	0x574
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x575
	.long	0x3ff7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF46
	.long	0x551b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11806
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4170
	.uleb128 0x9
	.long	0x204b
	.uleb128 0x3
	.byte	0x4
	.long	0x723
	.uleb128 0x32
	.long	0x41c9
	.string	"init_reg_map"
	.byte	0x1
	.value	0x615
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.string	"map"
	.byte	0x1
	.value	0x613
	.long	0x4003
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0x614
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x616
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x42d3
	.string	"calculate_giv_inc"
	.byte	0x1
	.value	0x630
	.byte	0x1
	.long	0x9b
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF32
	.byte	0x1
	.value	0x62e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"src_insn"
	.byte	0x1
	.value	0x62e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF19
	.byte	0x1
	.value	0x62f
	.long	0x2ed
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0x631
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"increment_total"
	.byte	0x1
	.value	0x632
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"tries"
	.byte	0x1
	.value	0x633
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"retry"
	.byte	0x1
	.value	0x69a
	.long	.L401
	.uleb128 0x2a
	.long	0x428d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x658
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	0x42c2
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"second_part"
	.byte	0x1
	.value	0x665
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x666
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x5516
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12047
	.byte	0x0
	.uleb128 0x2e
	.long	0x4343
	.string	"initial_reg_note_copy"
	.byte	0x1
	.value	0x6ab
	.byte	0x1
	.long	0x9b
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.string	"notes"
	.byte	0x1
	.value	0x6a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"map"
	.byte	0x1
	.value	0x6aa
	.long	0x4003
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"copy"
	.byte	0x1
	.value	0x6ac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LASF46
	.long	0x5511
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12198
	.byte	0x0
	.uleb128 0x32
	.long	0x43d5
	.string	"final_reg_note_copy"
	.byte	0x1
	.value	0x6c7
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.string	"notesp"
	.byte	0x1
	.value	0x6c5
	.long	0x1658
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"map"
	.byte	0x1
	.value	0x6c6
	.long	0x4003
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	0x43c4
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x6ca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x6d8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12228
	.byte	0x0
	.uleb128 0x32
	.long	0x472a
	.string	"copy_loop_body"
	.byte	0x1
	.value	0x6f9
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0x6f2
	.long	0x22ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF30
	.byte	0x1
	.value	0x6f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0x6f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"map"
	.byte	0x1
	.value	0x6f4
	.long	0x4003
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x6f5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.string	"last_iteration"
	.byte	0x1
	.value	0x6f6
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x6f7
	.long	0x3acf
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x6f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.value	0x6f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x30
	.long	.LASF33
	.byte	0x1
	.value	0x6f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x2f
	.string	"copy_notes_from"
	.byte	0x1
	.value	0x6f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x6fa
	.long	0x3ffd
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x6fb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x6fb
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x6fc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x6fc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"copy"
	.byte	0x1
	.value	0x6fc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"dest_reg_was_split"
	.byte	0x1
	.value	0x6fd
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x6fd
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"final_label"
	.byte	0x1
	.value	0x701
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"giv_inc"
	.byte	0x1
	.value	0x702
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"giv_dest_reg"
	.byte	0x1
	.value	0x702
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"giv_src_reg"
	.byte	0x1
	.value	0x702
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	0x4639
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x72e
	.long	0x34dc
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x72f
	.long	0x337d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"tv"
	.byte	0x1
	.value	0x72f
	.long	0x337d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0x730
	.long	0x2ed
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"this_giv_inc"
	.byte	0x1
	.value	0x742
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"value"
	.byte	0x1
	.value	0x757
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x757
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x466b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0x78c
	.long	0x2ed
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"src_regno"
	.byte	0x1
	.value	0x78d
	.long	0x2ed
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2a
	.long	0x4688
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0x828
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2a
	.long	0x46b4
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"jmp"
	.byte	0x1
	.value	0x84a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"lab"
	.byte	0x1
	.value	0x84b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2a
	.long	0x46d1
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0x866
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2a
	.long	0x4719
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x88c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF41
	.byte	0x1
	.value	0x88d
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x88e
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x88f
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12296
	.byte	0x0
	.uleb128 0x33
	.long	0x4793
	.byte	0x1
	.string	"emit_unrolled_add"
	.byte	0x1
	.value	0x92a
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.long	.LASF17
	.byte	0x1
	.value	0x929
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"src_reg"
	.byte	0x1
	.value	0x929
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x929
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0x92b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x484b
	.byte	0x1
	.string	"back_branch_in_range_p"
	.byte	0x1
	.value	0x940
	.byte	0x1
	.long	0x214
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0x93e
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF16
	.byte	0x1
	.value	0x93f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x941
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x941
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"target_insn"
	.byte	0x1
	.value	0x941
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF39
	.byte	0x1
	.value	0x942
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x943
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"orig_loop_end"
	.byte	0x1
	.value	0x944
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x48fb
	.string	"fold_rtx_mult_add"
	.byte	0x1
	.value	0x970
	.byte	0x1
	.long	0x9b
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2f
	.string	"mult1"
	.byte	0x1
	.value	0x96e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"mult2"
	.byte	0x1
	.value	0x96e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"add1"
	.byte	0x1
	.value	0x96e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x96f
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x971
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"mult_res"
	.byte	0x1
	.value	0x971
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0x972
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12862
	.byte	0x0
	.uleb128 0x31
	.long	0x4954
	.byte	0x1
	.string	"biv_total_increment"
	.byte	0x1
	.value	0x9a0
	.byte	0x1
	.long	0x9b
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.string	"bl"
	.byte	0x1
	.value	0x99f
	.long	0x4954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x9a1
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0x9a2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x495a
	.uleb128 0x9
	.long	0x3383
	.uleb128 0x2e
	.long	0x4a91
	.string	"find_splittable_regs"
	.byte	0x1
	.value	0x9d6
	.byte	0x1
	.long	0x214
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0x9d3
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x9d4
	.long	0x3acf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x9d5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0x9d7
	.long	0x3ffd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x9d8
	.long	0x34dc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x9d9
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0x9da
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x9da
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"biv_final_value"
	.byte	0x1
	.value	0x9db
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"biv_splittable"
	.byte	0x1
	.value	0x9dc
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0x9dd
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	0x4a63
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xa1d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x4a80
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xa57
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12942
	.byte	0x0
	.uleb128 0x2e
	.long	0x4c30
	.string	"find_splittable_givs"
	.byte	0x1
	.value	0xa77
	.byte	0x1
	.long	0x214
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xa72
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"bl"
	.byte	0x1
	.value	0xa73
	.long	0x34dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0xa74
	.long	0x3acf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0xa75
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0xa76
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0xa78
	.long	0x3ffd
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0xa79
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"v2"
	.byte	0x1
	.value	0xa79
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.value	0xa7a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xa7b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0xa7c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	0x4c1f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"giv_inc"
	.byte	0x1
	.value	0xa88
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"value"
	.byte	0x1
	.value	0xa88
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x4bc8
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.value	0xae2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xaec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x4be5
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xb17
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	0x4c02
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x28
	.long	.LASF5
	.byte	0x1
	.value	0xb3c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"regnum"
	.byte	0x1
	.value	0xb47
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13180
	.byte	0x0
	.uleb128 0x2e
	.long	0x4d00
	.string	"reg_dead_after_loop"
	.byte	0x1
	.value	0xb63
	.byte	0x1
	.long	0x214
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xb61
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0xb62
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0xb64
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0xb64
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0xb65
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"jump_count"
	.byte	0x1
	.value	0xb66
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"label_count"
	.byte	0x1
	.value	0xb67
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xb86
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0xb86
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x4d75
	.byte	0x1
	.string	"final_biv_value"
	.byte	0x1
	.value	0xbaf
	.byte	0x1
	.long	0x9b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xbad
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"bl"
	.byte	0x1
	.value	0xbae
	.long	0x34dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xbb0
	.long	0x39a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0xbb1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xbb1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0x4e60
	.byte	0x1
	.string	"final_giv_value"
	.byte	0x1
	.value	0xbf9
	.byte	0x1
	.long	0x9b
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xbf7
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"v"
	.byte	0x1
	.value	0xbf8
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0xbfa
	.long	0x3ffd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0xbfb
	.long	0x34dc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0xbfc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0xbfd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xbfd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xbfe
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0xbff
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xc00
	.long	0x39a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	0x4e4f
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2b
	.string	"biv"
	.byte	0x1
	.value	0xc45
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13574
	.byte	0x0
	.uleb128 0x2e
	.long	0x4f04
	.string	"loop_find_equiv_value"
	.byte	0x1
	.value	0xc7a
	.byte	0x1
	.long	0x9b
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xc78
	.long	0x416a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0xc79
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF39
	.byte	0x1
	.value	0xc7b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0xc7c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xc7c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0xc7d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0xc8d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4f5d
	.string	"subtract_reg_term"
	.byte	0x1
	.value	0xcb0
	.byte	0x1
	.long	0x9b
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0xcaf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"reg"
	.byte	0x1
	.value	0xcaf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13739
	.byte	0x0
	.uleb128 0x2e
	.long	0x4ff4
	.string	"find_common_reg_term"
	.byte	0x1
	.value	0xcc5
	.byte	0x1
	.long	0x9b
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.string	"op0"
	.byte	0x1
	.value	0xcc4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"op1"
	.byte	0x1
	.value	0xcc4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2b
	.string	"op00"
	.byte	0x1
	.value	0xcc9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"op01"
	.byte	0x1
	.value	0xcca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"op10"
	.byte	0x1
	.value	0xccb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"op11"
	.byte	0x1
	.value	0xccc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x52e2
	.byte	0x1
	.string	"loop_iterations"
	.byte	0x1
	.value	0xcea
	.byte	0x1
	.long	0x39a
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xce9
	.long	0x22ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0xceb
	.long	0x3ff7
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0xcec
	.long	0x3ffd
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"comparison"
	.byte	0x1
	.value	0xced
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.value	0xced
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF24
	.byte	0x1
	.value	0xcee
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0xcee
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0xcee
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.value	0xcee
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0xcef
	.long	0xa1b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"inc"
	.byte	0x1
	.value	0xcf0
	.long	0x389
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"abs_inc"
	.byte	0x1
	.value	0xcf1
	.long	0x39a
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"abs_diff"
	.byte	0x1
	.value	0xcf2
	.long	0x39a
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"off_by_one"
	.byte	0x1
	.value	0xcf3
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"increment_dir"
	.byte	0x1
	.value	0xcf4
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF43
	.byte	0x1
	.value	0xcf5
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"compare_dir"
	.byte	0x1
	.value	0xcf5
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"final_larger"
	.byte	0x1
	.value	0xcf5
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF38
	.byte	0x1
	.value	0xcf6
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"reg_term"
	.byte	0x1
	.value	0xcf7
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0xcf8
	.long	0x34dc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	0x51c2
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0xd24
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2a
	.long	0x521c
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2b
	.string	"offset"
	.byte	0x1
	.value	0xda8
	.long	0x389
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0xda9
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.value	0xdaa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"biv_inc"
	.byte	0x1
	.value	0xdbe
	.long	0x337d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x52af
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2b
	.string	"reg1"
	.byte	0x1
	.value	0xe49
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"reg2"
	.byte	0x1
	.value	0xe4a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"const2"
	.byte	0x1
	.value	0xe4b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	0x5279
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0xe57
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0xe6f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2b
	.string	"temp2"
	.byte	0x1
	.value	0xe7c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x52d1
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2b
	.string	"inc_once"
	.byte	0x1
	.value	0xed4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF46
	.long	0x54a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13815
	.byte	0x0
	.uleb128 0x2e
	.long	0x537b
	.string	"remap_split_bivs"
	.byte	0x1
	.value	0xf60
	.byte	0x1
	.long	0x9b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0xf5e
	.long	0x22ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xf5f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"ivs"
	.byte	0x1
	.value	0xf61
	.long	0x3ffd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0xf62
	.long	0xa1b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xf63
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xf64
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xf8b
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x5417
	.byte	0x1
	.string	"set_dominates_use"
	.byte	0x1
	.value	0xfa9
	.byte	0x1
	.long	0x214
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x30
	.long	.LASF19
	.byte	0x1
	.value	0xfa4
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xfa5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0xfa6
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF30
	.byte	0x1
	.value	0xfa7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0xfa8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"passed_jump"
	.byte	0x1
	.value	0xfaa
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xfab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x5499
	.string	"ujump_to_loop_cont"
	.byte	0x1
	.value	0xfda
	.byte	0x1
	.long	0x9b
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x30
	.long	.LASF39
	.byte	0x1
	.value	0xfd8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"loop_cont"
	.byte	0x1
	.value	0xfd9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0xfdb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0xfdb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"label_ref"
	.byte	0x1
	.value	0xfdb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	0x54a9
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x5499
	.uleb128 0xe
	.long	0x54be
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x54ae
	.uleb128 0x9
	.long	0x5499
	.uleb128 0xe
	.long	0x54d8
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x14
	.byte	0x0
	.uleb128 0x9
	.long	0x54c8
	.uleb128 0x9
	.long	0x54c8
	.uleb128 0x9
	.long	0x54ae
	.uleb128 0xe
	.long	0x54f7
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x54e7
	.uleb128 0x9
	.long	0x708
	.uleb128 0xe
	.long	0x5511
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x5501
	.uleb128 0x9
	.long	0x54ae
	.uleb128 0x9
	.long	0x708
	.uleb128 0xe
	.long	0x5530
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x5520
	.uleb128 0xe
	.long	0x5545
	.long	0x3a9f
	.uleb128 0xf
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0x27
	.string	"factors"
	.byte	0x1
	.byte	0xa2
	.long	0x5535
	.byte	0x5
	.byte	0x3
	.long	factors
	.uleb128 0x27
	.string	"addr_combined_regs"
	.byte	0x1
	.byte	0xb3
	.long	0x557a
	.byte	0x5
	.byte	0x3
	.long	addr_combined_regs
	.uleb128 0x3
	.byte	0x4
	.long	0x337d
	.uleb128 0x27
	.string	"splittable_regs"
	.byte	0x1
	.byte	0xb9
	.long	0x1658
	.byte	0x5
	.byte	0x3
	.long	splittable_regs
	.uleb128 0x27
	.string	"splittable_regs_updates"
	.byte	0x1
	.byte	0xc0
	.long	0x71d
	.byte	0x5
	.byte	0x3
	.long	splittable_regs_updates
	.uleb128 0xe
	.long	0x55d2
	.long	0x96c
	.uleb128 0xf
	.long	0x304
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.long	.LASF3
	.byte	0x5
	.byte	0x34
	.long	0x55df
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x55c2
	.uleb128 0xe
	.long	0x55f4
	.long	0x331
	.uleb128 0xf
	.long	0x304
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x5607
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x55e4
	.uleb128 0xe
	.long	0x561c
	.long	0x342
	.uleb128 0xf
	.long	0x304
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0x5632
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x560c
	.uleb128 0x35
	.string	"word_mode"
	.byte	0x5
	.byte	0xad
	.long	0x723
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x565a
	.long	0x331
	.uleb128 0xf
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x566e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x564a
	.uleb128 0xe
	.long	0x5683
	.long	0x201
	.uleb128 0xf
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x5697
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x5673
	.uleb128 0xe
	.long	0x56ac
	.long	0x20c
	.uleb128 0xf
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x56bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x569c
	.uleb128 0xe
	.long	0x56d4
	.long	0x9b
	.uleb128 0xf
	.long	0x304
	.byte	0x80
	.byte	0x0
	.uleb128 0x36
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x56c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6aa
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x5715
	.long	0x9b
	.uleb128 0xf
	.long	0x304
	.byte	0xa
	.byte	0x0
	.uleb128 0x36
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x5705
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"global_const_equiv_varray"
	.byte	0x9
	.byte	0xad
	.long	0x1bd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"reg_n_info"
	.byte	0xc
	.byte	0x43
	.long	0x1bd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"flag_unroll_all_loops"
	.byte	0xd
	.value	0x127
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x3021
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"uid_luid"
	.byte	0x8
	.value	0x183
	.long	0x71d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"max_uid_for_loop"
	.byte	0x8
	.value	0x184
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"max_reg_before_loop"
	.byte	0x8
	.value	0x185
	.long	0x2ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"loop_dump_stream"
	.byte	0x8
	.value	0x187
	.long	0x57f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3f8
	.uleb128 0x35
	.string	"compiler_params"
	.byte	0x13
	.byte	0x3a
	.long	0x5816
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3a94
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xd1
	.value	0x2
	.long	.Ldebug_info0
	.long	0x581d
	.long	0x3b18
	.string	"unroll_loop"
	.long	0x40c2
	.string	"precondition_loop_p"
	.long	0x472a
	.string	"emit_unrolled_add"
	.long	0x4793
	.string	"back_branch_in_range_p"
	.long	0x48fb
	.string	"biv_total_increment"
	.long	0x4d00
	.string	"final_biv_value"
	.long	0x4d75
	.string	"final_giv_value"
	.long	0x4ff4
	.string	"loop_iterations"
	.long	0x537b
	.string	"set_dominates_use"
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
.LASF7:
	.string	"last_uid"
.LASF35:
	.string	"exit_label"
.LASF9:
	.string	"max_insnno"
.LASF22:
	.string	"loop_info"
.LASF28:
	.string	"unroll_number"
.LASF16:
	.string	"insn"
.LASF18:
	.string	"final_value"
.LASF29:
	.string	"param_info"
.LASF36:
	.string	"start_label"
.LASF8:
	.string	"basic_block"
.LASF0:
	.string	"mode"
.LASF33:
	.string	"insert_before"
.LASF17:
	.string	"dest_reg"
.LASF45:
	.string	"cmp_const"
.LASF37:
	.string	"unroll_type"
.LASF11:
	.string	"x_regno_reg_rtx"
.LASF34:
	.string	"maxregnum"
.LASF26:
	.string	"comparison_code"
.LASF4:
	.string	"mem_attrs"
.LASF41:
	.string	"diff_vec_p"
.LASF40:
	.string	"loop_end"
.LASF12:
	.string	"loop"
.LASF47:
	.string	"result"
.LASF27:
	.string	"n_iterations"
.LASF5:
	.string	"count"
.LASF31:
	.string	"copy_end"
.LASF13:
	.string	"sequence_stack"
.LASF39:
	.string	"loop_start"
.LASF42:
	.string	"label"
.LASF32:
	.string	"pattern"
.LASF46:
	.string	"__FUNCTION__"
.LASF21:
	.string	"loop_mem_info"
.LASF43:
	.string	"unsigned_p"
.LASF2:
	.string	"_IO_FILE"
.LASF30:
	.string	"copy_start"
.LASF48:
	.string	"biv_initial_value"
.LASF38:
	.string	"last_loop_insn"
.LASF10:
	.string	"regno_pointer_align"
.LASF44:
	.string	"cmp_code"
.LASF23:
	.string	"comparison_value"
.LASF3:
	.string	"mode_class"
.LASF20:
	.string	"initial_value"
.LASF24:
	.string	"iteration_var"
.LASF15:
	.string	"function_frequency"
.LASF14:
	.string	"sequence_rtl_expr"
.LASF6:
	.string	"first_uid"
.LASF1:
	.string	"unsigned int"
.LASF19:
	.string	"regno"
.LASF25:
	.string	"increment"
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
