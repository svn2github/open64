	.file	"haifa-sched.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl insert_schedule_bubbles_p
	.bss
	.align 4
	.type	insert_schedule_bubbles_p, @object
	.size	insert_schedule_bubbles_p, 4
insert_schedule_bubbles_p:
	.zero	4
	.local	sched_verbose_param
	.comm	sched_verbose_param,4,4
.globl sched_verbose
	.align 4
	.type	sched_verbose, @object
	.size	sched_verbose, 4
sched_verbose:
	.zero	4
.globl sched_dump
	.align 4
	.type	sched_dump, @object
	.size	sched_dump, 4
sched_dump:
	.zero	4
	.section	.rodata
.LC0:
	.string	"verbose"
	.align 4
.LC1:
	.string	"fix_sched_param: unknown param: %s"
	.text
.globl fix_sched_param
	.type	fix_sched_param, @function
fix_sched_param:
.LFB15:
	.file 1 "../../../kg++fe/gnu/haifa-sched.c"
	.loc 1 192 0
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
	subl	$28, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$8, -24(%ebp)
	cld
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-24(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 194 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, sched_verbose_param@GOTOFF(%ebx)
	jmp	.L5
.L2:
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L5:
	.loc 1 197 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	fix_sched_param, .-fix_sched_param
	.local	q_ptr
	.comm	q_ptr,4,4
	.local	q_size
	.comm	q_size,4,4
	.type	may_trap_exp, @function
may_trap_exp:
.LFB16:
	.loc 1 323 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$68, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 326 0
	cmpl	$0, 8(%ebp)
	jne	.L7
	.loc 1 327 0
	movl	$0, -40(%ebp)
	jmp	.L9
.L7:
	.loc 1 328 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 329 0
	cmpl	$0, 12(%ebp)
	je	.L10
	.loc 1 331 0
	cmpl	$76, -32(%ebp)
	jne	.L12
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L12
	.loc 1 332 0
	movl	$5, -40(%ebp)
	jmp	.L9
.L12:
	.loc 1 334 0
	movl	$0, -40(%ebp)
	jmp	.L9
.L10:
	.loc 1 336 0
	cmpl	$76, -32(%ebp)
	jne	.L15
	.loc 1 339 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L17
	.loc 1 340 0
	movl	$4, -40(%ebp)
	jmp	.L9
.L17:
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L19
	.loc 1 343 0
	movl	$1, -40(%ebp)
	jmp	.L9
.L19:
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L23
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	je	.L23
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$145, %ax
	jne	.L26
.L23:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L21
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L26
.L21:
	.loc 1 346 0
	movl	$2, -40(%ebp)
	jmp	.L9
.L26:
	.loc 1 348 0
	movl	$3, -40(%ebp)
	jmp	.L9
.L15:
.LBB2:
	.loc 1 353 0
	movl	$0, -20(%ebp)
	.loc 1 356 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L42
	.loc 1 357 0
	movl	$5, -40(%ebp)
	jmp	.L9
.L42:
	.loc 1 359 0
	movl	-32(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 360 0
	movl	-32(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L44
.L45:
	.loc 1 362 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L46
.LBB3:
	.loc 1 364 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	may_trap_exp
	movl	%eax, -16(%ebp)
	.loc 1 365 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jge	.L48
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
.L48:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L49
.L46:
.LBE3:
	.loc 1 367 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L49
.LBB4:
	.loc 1 370 0
	movl	$0, -12(%ebp)
	jmp	.L51
.L52:
.LBB5:
	.loc 1 372 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	may_trap_exp
	movl	%eax, -8(%ebp)
	.loc 1 373 0
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jge	.L53
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
.L53:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 374 0
	cmpl	$5, -20(%ebp)
	je	.L49
	cmpl	$4, -20(%ebp)
	je	.L49
.LBE5:
	.loc 1 370 0
	addl	$1, -12(%ebp)
.L51:
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L52
.L49:
.LBE4:
	.loc 1 378 0
	cmpl	$5, -20(%ebp)
	je	.L56
	cmpl	$4, -20(%ebp)
	je	.L56
	.loc 1 360 0
	subl	$1, -24(%ebp)
.L44:
	cmpl	$0, -24(%ebp)
	jns	.L45
.L56:
	.loc 1 381 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L9:
	movl	-40(%ebp), %eax
.LBE2:
	.loc 1 383 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	may_trap_exp, .-may_trap_exp
.globl haifa_classify_insn
	.type	haifa_classify_insn, @function
haifa_classify_insn:
.LFB17:
	.loc 1 397 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	subl	$72, %esp
.LCFI12:
	.loc 1 398 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 399 0
	movl	$0, -20(%ebp)
	.loc 1 400 0
	movl	$0, -16(%ebp)
	.loc 1 403 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L61
.LBB6:
	.loc 1 405 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 407 0
	movl	-4(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L63
.L64:
	.loc 1 409 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 410 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$57, -44(%ebp)
	je	.L67
	cmpl	$57, -44(%ebp)
	ja	.L69
	cmpl	$48, -44(%ebp)
	je	.L66
	jmp	.L65
.L69:
	cmpl	$59, -44(%ebp)
	je	.L68
	cmpl	$62, -44(%ebp)
	je	.L66
	jmp	.L65
.L68:
	.loc 1 414 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -20(%ebp)
	.loc 1 415 0
	jmp	.L65
.L67:
	.loc 1 418 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -20(%ebp)
	.loc 1 419 0
	cmpl	$5, -20(%ebp)
	je	.L65
	.loc 1 422 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	cmpl	-20(%ebp), %eax
	jl	.L71
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -40(%ebp)
	jmp	.L73
.L71:
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L73:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 426 0
	jmp	.L65
.L66:
	.loc 1 429 0
	movl	$5, -20(%ebp)
.L65:
	.loc 1 434 0
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jge	.L74
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
.L74:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 435 0
	cmpl	$5, -16(%ebp)
	je	.L78
	cmpl	$4, -16(%ebp)
	je	.L78
	.loc 1 407 0
	subl	$1, -8(%ebp)
.L63:
	cmpl	$0, -8(%ebp)
	jns	.L64
	jmp	.L78
.L61:
.LBE6:
	.loc 1 441 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 442 0
	movl	-12(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$57, -56(%ebp)
	je	.L81
	cmpl	$57, -56(%ebp)
	ja	.L83
	cmpl	$48, -56(%ebp)
	je	.L80
	jmp	.L79
.L83:
	cmpl	$59, -56(%ebp)
	je	.L82
	cmpl	$62, -56(%ebp)
	je	.L80
	jmp	.L79
.L82:
	.loc 1 446 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -20(%ebp)
	.loc 1 447 0
	jmp	.L79
.L81:
	.loc 1 450 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -20(%ebp)
	.loc 1 451 0
	cmpl	$5, -20(%ebp)
	je	.L79
	.loc 1 454 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	cmpl	-20(%ebp), %eax
	jl	.L85
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	may_trap_exp
	movl	%eax, -36(%ebp)
	jmp	.L87
.L85:
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L87:
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 457 0
	jmp	.L79
.L80:
	.loc 1 460 0
	movl	$5, -20(%ebp)
.L79:
	.loc 1 464 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L78:
	.loc 1 467 0
	movl	-16(%ebp), %eax
	.loc 1 468 0
	leave
	ret
.LFE17:
	.size	haifa_classify_insn, .-haifa_classify_insn
.globl insn_unit
	.type	insn_unit, @function
insn_unit:
.LFB18:
	.loc 1 564 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$36, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 565 0
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
	movzwl	34(%eax), %eax
	cwtl
	movl	%eax, -8(%ebp)
	.loc 1 567 0
	cmpl	$0, -8(%ebp)
	jne	.L90
	.loc 1 569 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L92
	jmp	.L94
.L92:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
.L94:
	.loc 1 574 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jns	.L95
	.loc 1 575 0
	movl	$-1, -8(%ebp)
	jmp	.L97
.L95:
	.loc 1 578 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_units_used@PLT
	movl	%eax, -8(%ebp)
	.loc 1 580 0
	cmpl	$0, -8(%ebp)
	js	.L97
	.loc 1 581 0
	addl	$1, -8(%ebp)
.L97:
	.loc 1 588 0
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
	movl	-8(%ebp), %eax
	movw	%ax, 34(%edx)
.L90:
	.loc 1 590 0
	cmpl	$0, -8(%ebp)
	jle	.L99
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L101
.L99:
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L101:
	movl	-24(%ebp), %eax
	.loc 1 591 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	insn_unit, .-insn_unit
.globl get_unit_last_insn
	.type	get_unit_last_insn, @function
get_unit_last_insn:
.LFB20:
	.loc 1 658 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 659 0
	movl	8(%ebp), %eax
	movl	unit_last_insn@GOTOFF(%ecx,%eax,4), %eax
	.loc 1 660 0
	popl	%ebp
	ret
.LFE20:
	.size	get_unit_last_insn, .-get_unit_last_insn
	.type	clear_units, @function
clear_units:
.LFB21:
	.loc 1 666 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 667 0
	leal	unit_last_insn@GOTOFF(%ecx), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 668 0
	leal	unit_tick@GOTOFF(%ecx), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 669 0
	leal	unit_n_insns@GOTOFF(%ecx), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 670 0
	popl	%ebp
	ret
.LFE21:
	.size	clear_units, .-clear_units
.globl insn_issue_delay
	.type	insn_issue_delay, @function
insn_issue_delay:
.LFB22:
	.loc 1 678 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$36, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 679 0
	movl	$0, -12(%ebp)
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_unit@PLT
	movl	%eax, -8(%ebp)
	.loc 1 686 0
	cmpl	$0, -8(%ebp)
	js	.L108
	.loc 1 688 0
	movl	-8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L113
	movl	-8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L113
	.loc 1 690 0
	movl	-8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	jmp	.L113
.L108:
	.loc 1 693 0
	movl	$0, -16(%ebp)
	notl	-8(%ebp)
	jmp	.L114
.L115:
	.loc 1 694 0
	movl	-8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L116
	movl	-16(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L116
	movl	-16(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L116
	.loc 1 696 0
	movl	-16(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	cmpl	-12(%ebp), %eax
	jl	.L120
	movl	-16(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	jmp	.L122
.L120:
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L122:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
.L116:
	.loc 1 693 0
	addl	$1, -16(%ebp)
	sarl	-8(%ebp)
.L114:
	cmpl	$0, -8(%ebp)
	jne	.L115
.L113:
	.loc 1 698 0
	movl	-12(%ebp), %eax
	.loc 1 699 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	insn_issue_delay, .-insn_issue_delay
.globl actual_hazard_this_instance
	.type	actual_hazard_this_instance, @function
actual_hazard_this_instance:
.LFB23:
	.loc 1 710 0
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
	.loc 1 711 0
	movl	12(%ebp), %eax
	movl	unit_tick@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 713 0
	movl	20(%ebp), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	cmpl	24(%ebp), %eax
	jle	.L125
	.loc 1 724 0
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L127
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 727 0
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	unit_last_insn@GOTOFF(%ebx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -8(%ebp)
	jmp	.L127
.L129:
	.loc 1 731 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	blockage_range
	movzwl	%ax,%ecx
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -8(%ebp)
.L127:
	.loc 1 734 0
	movl	20(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	24(%ebp), %eax
	jle	.L125
	.loc 1 735 0
	movl	20(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 24(%ebp)
.L125:
	.loc 1 737 0
	movl	24(%ebp), %eax
	.loc 1 738 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	actual_hazard_this_instance, .-actual_hazard_this_instance
	.type	blockage_range, @function
blockage_range:
.LFB19:
	.loc 1 604 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$20, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 605 0
	movl	12(%ebp), %eax
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
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 608 0
	movl	-12(%ebp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L134
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$36, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -8(%ebp)
	.loc 1 614 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	shrl	$16, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	sall	$8, %edx
	movzwl	-8(%ebp),%eax
	orl	%edx, %eax
	movl	%eax, 20(%ecx)
	jmp	.L136
.L134:
	.loc 1 617 0
	movl	-12(%ebp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movzbl	-12(%ebp),%eax
	orl	%edx, %eax
	movl	%eax, -8(%ebp)
.L136:
	.loc 1 619 0
	movl	-8(%ebp), %eax
	.loc 1 620 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	blockage_range, .-blockage_range
.globl insn_cost
	.type	insn_cost, @function
insn_cost:
.LFB27:
	.loc 1 877 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$48, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 878 0
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
	movzwl	32(%eax), %eax
	cwtl
	movl	%eax, -12(%ebp)
	.loc 1 880 0
	cmpl	$0, -12(%ebp)
	jns	.L139
	.loc 1 886 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L141
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -33(%ebp)
	jmp	.L143
.L141:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -33(%ebp)
.L143:
	cmpb	$0, -33(%ebp)
	je	.L144
	.loc 1 888 0
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
	movw	$0, 32(%eax)
	.loc 1 889 0
	movl	$0, -32(%ebp)
	jmp	.L146
.L144:
	.loc 1 893 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L147
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L147
	.loc 1 895 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_latency@PLT
	movl	%eax, -12(%ebp)
	.loc 1 893 0
	jmp	.L150
.L147:
	.loc 1 897 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_ready_cost@PLT
	movl	%eax, -12(%ebp)
.L150:
	.loc 1 899 0
	cmpl	$0, -12(%ebp)
	jns	.L151
	.loc 1 900 0
	movl	$0, -12(%ebp)
.L151:
	.loc 1 902 0
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
	movl	-12(%ebp), %eax
	movw	%ax, 32(%edx)
.L139:
	.loc 1 907 0
	cmpl	$0, 12(%ebp)
	je	.L153
	cmpl	$0, 16(%ebp)
	jne	.L155
.L153:
	.loc 1 908 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L146
.L155:
	.loc 1 913 0
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L156
	movl	16(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -25(%ebp)
	jmp	.L158
.L156:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -25(%ebp)
.L158:
	cmpb	$0, -25(%ebp)
	je	.L159
	.loc 1 914 0
	movl	$0, -12(%ebp)
	jmp	.L161
.L159:
	.loc 1 917 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L162
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L162
	.loc 1 920 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L162
	.loc 1 922 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$14, %al
	jne	.L166
	.loc 1 923 0
	movl	$0, -12(%ebp)
	jmp	.L162
.L166:
	.loc 1 924 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$15, %al
	jne	.L168
	.loc 1 926 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_latency@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_latency@PLT
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 928 0
	cmpl	$0, -12(%ebp)
	jg	.L162
	.loc 1 929 0
	movl	$1, -12(%ebp)
	jmp	.L162
.L168:
	.loc 1 931 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bypass_p@PLT
	testl	%eax, %eax
	je	.L162
	.loc 1 932 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_latency@PLT
	movl	%eax, -12(%ebp)
.L162:
	.loc 1 936 0
	movl	targetm@GOT(%ebx), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L173
	.loc 1 937 0
	movl	targetm@GOT(%ebx), %eax
	movl	112(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
.L173:
	.loc 1 939 0
	cmpl	$0, -12(%ebp)
	jns	.L161
	.loc 1 940 0
	movl	$0, -12(%ebp)
.L161:
	.loc 1 943 0
	movl	-12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L146:
	movl	-32(%ebp), %eax
	.loc 1 944 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	insn_cost, .-insn_cost
	.type	priority, @function
priority:
.LFB28:
	.loc 1 951 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$32, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 954 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L178
	.loc 1 955 0
	movl	$0, -28(%ebp)
	jmp	.L180
.L178:
	.loc 1 957 0
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
	andl	$8, %eax
	testb	%al, %al
	jne	.L181
.LBB7:
	.loc 1 959 0
	movl	$0, -20(%ebp)
	.loc 1 961 0
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
	testl	%eax, %eax
	jne	.L183
	.loc 1 962 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_cost@PLT
	movl	%eax, -20(%ebp)
	jmp	.L185
.L183:
	.loc 1 965 0
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
	movl	%eax, -24(%ebp)
	jmp	.L186
.L187:
.LBB8:
	.loc 1 970 0
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L188
	.loc 1 973 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 976 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L188
	.loc 1 979 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_cost@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	priority
	leal	(%esi,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 980 0
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L188
	.loc 1 981 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L188:
.LBE8:
	.loc 1 965 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L186:
	cmpl	$0, -24(%ebp)
	jne	.L187
.L185:
	.loc 1 984 0
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
	movl	-20(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 985 0
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
	orl	$8, %eax
	movb	%al, 38(%edx)
.L181:
.LBE7:
	.loc 1 988 0
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
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L180:
	movl	-28(%ebp), %eax
	.loc 1 989 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	priority, .-priority
	.type	rank_for_schedule, @function
rank_for_schedule:
.LFB29:
	.loc 1 1009 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$68, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1010 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1011 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1017 0
	movl	-44(%ebp), %eax
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
	movl	12(%eax), %ecx
	movl	-48(%ebp), %eax
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
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1018 0
	cmpl	$0, -16(%ebp)
	je	.L194
	.loc 1 1019 0
	movl	-16(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L196
.L194:
	.loc 1 1022 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L197
	movl	-48(%ebp), %eax
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
	movzwl	36(%eax), %eax
	movswl	%ax,%ecx
	movl	-44(%ebp), %eax
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
	movzwl	36(%eax), %eax
	cwtl
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L197
	.loc 1 1024 0
	movl	-12(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L196
.L197:
	.loc 1 1026 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -8(%ebp)
	.loc 1 1027 0
	cmpl	$0, -8(%ebp)
	je	.L200
	.loc 1 1028 0
	movl	-8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L196
.L200:
	.loc 1 1031 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L202
	.loc 1 1038 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
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
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	find_insn_list@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1039 0
	cmpl	$0, -40(%ebp)
	je	.L204
	movl	last_scheduled_insn@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_cost@PLT
	cmpl	$1, %eax
	jne	.L206
.L204:
	.loc 1 1040 0
	movl	$3, -36(%ebp)
	.loc 1 1039 0
	jmp	.L207
.L206:
	.loc 1 1041 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L208
	.loc 1 1042 0
	movl	$1, -36(%ebp)
	jmp	.L207
.L208:
	.loc 1 1044 0
	movl	$2, -36(%ebp)
.L207:
	.loc 1 1046 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
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
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_insn_list@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1047 0
	cmpl	$0, -40(%ebp)
	je	.L210
	movl	last_scheduled_insn@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_cost@PLT
	cmpl	$1, %eax
	jne	.L212
.L210:
	.loc 1 1048 0
	movl	$3, -32(%ebp)
	.loc 1 1047 0
	jmp	.L213
.L212:
	.loc 1 1049 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L214
	.loc 1 1050 0
	movl	$1, -32(%ebp)
	jmp	.L213
.L214:
	.loc 1 1052 0
	movl	$2, -32(%ebp)
.L213:
	.loc 1 1054 0
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L202
	.loc 1 1055 0
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L196
.L202:
	.loc 1 1061 0
	movl	$0, -28(%ebp)
	.loc 1 1062 0
	movl	-48(%ebp), %eax
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
	movl	%eax, -40(%ebp)
	jmp	.L217
.L218:
	.loc 1 1063 0
	addl	$1, -28(%ebp)
	.loc 1 1062 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L217:
	cmpl	$0, -40(%ebp)
	jne	.L218
	.loc 1 1065 0
	movl	$0, -24(%ebp)
	.loc 1 1066 0
	movl	-44(%ebp), %eax
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
	movl	%eax, -40(%ebp)
	jmp	.L220
.L221:
	.loc 1 1067 0
	addl	$1, -24(%ebp)
	.loc 1 1066 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L220:
	cmpl	$0, -40(%ebp)
	jne	.L221
	.loc 1 1069 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1070 0
	cmpl	$0, -20(%ebp)
	je	.L223
	.loc 1 1071 0
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L196
.L223:
	.loc 1 1076 0
	movl	-48(%ebp), %eax
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
	movl	-44(%ebp), %eax
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
	movl	%edx, -56(%ebp)
.L196:
	movl	-56(%ebp), %eax
	.loc 1 1077 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	rank_for_schedule, .-rank_for_schedule
.globl ready_add
	.type	ready_add, @function
ready_add:
.LFB33:
	.loc 1 1139 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%edi
.LCFI49:
	pushl	%esi
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$12, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L227
	.loc 1 1142 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	0(,%eax,4), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_lastpos
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	memmove@PLT
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L227:
	.loc 1 1147 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1148 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1149 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	ready_add, .-ready_add
	.section	.rodata
	.type	__FUNCTION__.11472, @object
	.size	__FUNCTION__.11472, 14
__FUNCTION__.11472:
	.string	"ready_lastpos"
	.align 4
.LC2:
	.string	"../../../kg++fe/gnu/haifa-sched.c"
	.text
	.type	ready_lastpos, @function
ready_lastpos:
.LFB32:
	.loc 1 1126 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$20, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1127 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L231
	.loc 1 1128 0
	leal	__FUNCTION__.11472@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1128, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L231:
	.loc 1 1129 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$4, %eax
	.loc 1 1130 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	ready_lastpos, .-ready_lastpos
	.section	.rodata
.LC3:
	.string	";;\t%3i--> %-40s:"
.LC4:
	.string	"nothing"
	.align 4
.LC5:
	.string	";;\t\t--> scheduling insn <<<%d>>> on unit "
	.align 4
.LC6:
	.string	";;\t\tdependences resolved: insn %s "
.LC7:
	.string	"into ready\n"
.LC8:
	.string	"into queue with cost=%d\n"
	.text
	.type	schedule_insn, @function
schedule_insn:
.LFB40:
	.loc 1 1274 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$2132, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -2088(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -2092(%ebp)
	.loc 1 1274 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1276 0
	movl	$0, -2072(%ebp)
	.loc 1 1278 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L235
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L237
.L235:
	.loc 1 1280 0
	movl	-2088(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_unit@PLT
	movl	%eax, -2072(%ebp)
.L237:
	.loc 1 1282 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L238
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L238
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L238
.LBB9:
	.loc 1 1288 0
	movl	$0, 8(%esp)
	movl	-2088(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2056(%ebp), %eax
	movl	%eax, (%esp)
	call	print_insn@PLT
	.loc 1 1289 0
	movb	$0, -2016(%ebp)
	.loc 1 1290 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-2056(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1292 0
	movl	-2088(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L242
	movl	-2088(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -2109(%ebp)
	jmp	.L244
.L242:
	movl	-2088(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -2109(%ebp)
.L244:
	cmpb	$0, -2109(%ebp)
	je	.L245
	.loc 1 1293 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L247
.L245:
	.loc 1 1295 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-2088(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_reservation@PLT
.L247:
	.loc 1 1296 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1282 0
	jmp	.L248
.L238:
.LBE9:
	.loc 1 1298 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L248
	.loc 1 1300 0
	movl	-2088(%ebp), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1302 0
	movl	-2088(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_print_units@PLT
	.loc 1 1303 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L248:
	.loc 1 1306 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L250
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L252
.L250:
	.loc 1 1309 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L253
	cmpl	$-1, -2072(%ebp)
	jne	.L253
	.loc 1 1310 0
	movl	-2088(%ebp), %eax
	movl	%eax, (%esp)
	call	visualize_no_unit@PLT
.L253:
	.loc 1 1314 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-2088(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2072(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_unit
	.loc 1 1316 0
	movl	-2088(%ebp), %eax
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
	testl	%eax, %eax
	je	.L277
.L252:
	.loc 1 1320 0
	movl	-2088(%ebp), %eax
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
	movl	%eax, -2076(%ebp)
	jmp	.L257
.L258:
.LBB10:
	.loc 1 1322 0
	movl	-2076(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -2068(%ebp)
	.loc 1 1323 0
	movl	-2068(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-2076(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2088(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_cost@PLT
	movl	%eax, -2064(%ebp)
	.loc 1 1325 0
	movl	-2068(%ebp), %eax
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
	movl	%edx, -2108(%ebp)
	movl	-2064(%ebp), %eax
	movl	16(%ebp), %ecx
	addl	%eax, %ecx
	movl	-2068(%ebp), %eax
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
	movl	28(%eax), %eax
	movl	%eax, -2104(%ebp)
	movl	%ecx, -2100(%ebp)
	movl	-2104(%ebp), %edx
	cmpl	%edx, -2100(%ebp)
	jge	.L259
	movl	-2104(%ebp), %eax
	movl	%eax, -2100(%ebp)
.L259:
	movl	-2100(%ebp), %eax
	movl	-2108(%ebp), %edx
	movl	%eax, 28(%edx)
	.loc 1 1327 0
	movl	-2068(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	-2068(%ebp), %eax
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
	subl	$1, %eax
	movl	%eax, 16(%ecx)
	movl	16(%ecx), %eax
	testl	%eax, %eax
	jne	.L260
.LBB11:
	.loc 1 1329 0
	movl	-2068(%ebp), %eax
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
	movl	28(%eax), %eax
	subl	16(%ebp), %eax
	movl	%eax, -2060(%ebp)
	.loc 1 1331 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-2068(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L260
	.loc 1 1334 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L263
	.loc 1 1336 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 4(%esp)
	movl	-2068(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1339 0
	cmpl	$0, -2060(%ebp)
	jg	.L265
	.loc 1 1340 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L263
.L265:
	.loc 1 1342 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-2060(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L263:
	.loc 1 1347 0
	movl	-2068(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_priority
	.loc 1 1348 0
	cmpl	$0, -2060(%ebp)
	jg	.L267
	.loc 1 1349 0
	movl	-2068(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2092(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
	jmp	.L260
.L267:
	.loc 1 1351 0
	movl	-2060(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-2068(%ebp), %eax
	movl	%eax, (%esp)
	call	queue_insn
.L260:
.LBE11:
.LBE10:
	.loc 1 1320 0
	movl	-2076(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -2076(%ebp)
.L257:
	cmpl	$0, -2076(%ebp)
	jne	.L258
	.loc 1 1360 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L277
	movl	issue_rate@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L277
	movl	-2088(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L277
	movl	-2088(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L277
	.loc 1 1364 0
	movl	last_clock_var@GOTOFF(%ebx), %eax
	cmpl	%eax, 16(%ebp)
	jle	.L274
	movb	$6, -2093(%ebp)
	jmp	.L276
.L274:
	movb	$0, -2093(%ebp)
.L276:
	movl	-2088(%ebp), %eax
	movzbl	-2093(%ebp), %edx
	movb	%dl, 2(%eax)
	.loc 1 1365 0
	movl	16(%ebp), %eax
	movl	%eax, last_clock_var@GOTOFF(%ebx)
.L277:
	.loc 1 1367 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L278
	call	__stack_chk_fail_local
.L278:
	addl	$2132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	schedule_insn, .-schedule_insn
	.type	schedule_unit, @function
schedule_unit:
.LFB24:
	.loc 1 748 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$28, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 751 0
	cmpl	$0, 8(%ebp)
	js	.L280
.LBB12:
	.loc 1 753 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 764 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, unit_last_insn@GOTOFF(%ebx,%edx,4)
	.loc 1 765 0
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	function_units@GOT(%ebx), %edx
	imull	$44, %eax, %eax
	addl	%edx, %eax
	addl	$32, %eax
	movl	(%eax), %eax
	addl	16(%ebp), %eax
	movl	%eax, unit_tick@GOTOFF(%ebx,%ecx,4)
	jmp	.L287
.L280:
.LBE12:
	.loc 1 768 0
	movl	$0, -12(%ebp)
	notl	8(%ebp)
	jmp	.L283
.L284:
	.loc 1 769 0
	movl	8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L285
	.loc 1 770 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_unit
.L285:
	.loc 1 768 0
	addl	$1, -12(%ebp)
	sarl	8(%ebp)
.L283:
	cmpl	$0, 8(%ebp)
	jne	.L284
.L287:
	.loc 1 771 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	schedule_unit, .-schedule_unit
	.type	adjust_priority, @function
adjust_priority:
.LFB38:
	.loc 1 1229 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$16, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1237 0
	movl	targetm@GOT(%ebx), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 1238 0
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
	leal	(%edx,%eax), %esi
	movl	targetm@GOT(%ebx), %eax
	movl	116(%eax), %ecx
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
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, 12(%esi)
.L291:
	.loc 1 1240 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	adjust_priority, .-adjust_priority
	.section	.rodata
.LC9:
	.string	";;\t\tReady-->Q: insn %s: "
.LC10:
	.string	"queued for %d cycles.\n"
	.text
	.type	queue_insn, @function
queue_insn:
.LFB31:
	.loc 1 1105 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$36, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1106 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	andl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1107 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_INSN_LIST@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1108 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1109 0
	movl	q_size@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, q_size@GOTOFF(%ebx)
	.loc 1 1111 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L295
	.loc 1 1113 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1116 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L295:
	.loc 1 1118 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	queue_insn, .-queue_insn
	.type	unlink_other_notes, @function
unlink_other_notes:
.LFB41:
	.loc 1 1378 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$16, %esp
.LCFI76:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1379 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1381 0
	jmp	.L297
.L298:
.LBB13:
	.loc 1 1383 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1385 0
	cmpl	$0, -8(%ebp)
	je	.L299
	.loc 1 1386 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 20(%edx)
.L299:
	.loc 1 1387 0
	cmpl	$0, -4(%ebp)
	je	.L301
	.loc 1 1388 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
.L301:
	.loc 1 1391 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L303
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L303
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-86, %eax
	je	.L303
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-85, %eax
	je	.L303
	.loc 1 1397 0
	movl	note_list@GOTOFF(%ecx), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	.loc 1 1398 0
	movl	note_list@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 1399 0
	movl	note_list@GOTOFF(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
.L308:
	.loc 1 1400 0
	movl	8(%ebp), %eax
	movl	%eax, note_list@GOTOFF(%ecx)
.L303:
	.loc 1 1403 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L297:
.LBE13:
	.loc 1 1381 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L310
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L298
.L310:
	.loc 1 1405 0
	movl	8(%ebp), %eax
	.loc 1 1406 0
	leave
	ret
.LFE41:
	.size	unlink_other_notes, .-unlink_other_notes
	.type	unlink_line_notes, @function
unlink_line_notes:
.LFB42:
	.loc 1 1414 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	subl	$16, %esp
.LCFI79:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1415 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1417 0
	jmp	.L314
.L315:
.LBB14:
	.loc 1 1419 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1421 0
	movl	write_symbols@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L316
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L316
	.loc 1 1424 0
	cmpl	$0, -8(%ebp)
	je	.L319
	.loc 1 1425 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 20(%edx)
.L319:
	.loc 1 1426 0
	cmpl	$0, -4(%ebp)
	je	.L321
	.loc 1 1427 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
.L321:
	.loc 1 1430 0
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
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1421 0
	jmp	.L323
.L316:
	.loc 1 1433 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L323:
	.loc 1 1435 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L314:
.LBE14:
	.loc 1 1417 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L324
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L315
.L324:
	.loc 1 1437 0
	movl	8(%ebp), %eax
	.loc 1 1438 0
	leave
	ret
.LFE42:
	.size	unlink_line_notes, .-unlink_line_notes
.globl get_block_head_tail
	.type	get_block_head_tail, @function
get_block_head_tail:
.LFB43:
	.loc 1 1447 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	subl	$16, %esp
.LCFI82:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1449 0
	movl	basic_block_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1450 0
	movl	basic_block_info@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1454 0
	jmp	.L337
.L329:
	.loc 1 1456 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L330
	.loc 1 1457 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L328
.L330:
	.loc 1 1458 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L332
	.loc 1 1459 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L328
.L332:
	.loc 1 1460 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L334
	.loc 1 1461 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L328:
.L337:
	.loc 1 1454 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L329
.L334:
	.loc 1 1466 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1467 0
	movl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1468 0
	leave
	ret
.LFE43:
	.size	get_block_head_tail, .-get_block_head_tail
.globl no_real_insns_p
	.type	no_real_insns_p, @function
no_real_insns_p:
.LFB44:
	.loc 1 1475 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	subl	$4, %esp
.LCFI85:
	.loc 1 1476 0
	jmp	.L339
.L340:
	.loc 1 1478 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L341
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L341
	.loc 1 1479 0
	movl	$0, -4(%ebp)
	jmp	.L344
.L341:
	.loc 1 1480 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L339:
	.loc 1 1476 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L340
	.loc 1 1482 0
	movl	$1, -4(%ebp)
.L344:
	movl	-4(%ebp), %eax
	.loc 1 1483 0
	leave
	ret
.LFE44:
	.size	no_real_insns_p, .-no_real_insns_p
	.section	.rodata
	.type	__FUNCTION__.11942, @object
	.size	__FUNCTION__.11942, 14
__FUNCTION__.11942:
	.string	"rm_line_notes"
	.text
.globl rm_line_notes
	.type	rm_line_notes, @function
rm_line_notes:
.LFB45:
	.loc 1 1492 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$36, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1496 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1497 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L348
.L349:
.LBB15:
	.loc 1 1504 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L350
	.loc 1 1506 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1507 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_line_notes
	movl	%eax, -12(%ebp)
	.loc 1 1509 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L352
	.loc 1 1510 0
	leal	__FUNCTION__.11942@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1510, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L352:
	.loc 1 1511 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L354
	.loc 1 1512 0
	leal	__FUNCTION__.11942@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1512, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L354:
	.loc 1 1513 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L350
	.loc 1 1514 0
	leal	__FUNCTION__.11942@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1514, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L350:
.LBE15:
	.loc 1 1497 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L348:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L349
	.loc 1 1517 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	rm_line_notes, .-rm_line_notes
.globl save_line_notes
	.type	save_line_notes, @function
save_line_notes:
.LFB46:
	.loc 1 1526 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	subl	$16, %esp
.LCFI92:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1534 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	line_note_head@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1537 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1539 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L360
.L361:
	.loc 1 1540 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L362
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L362
	.loc 1 1541 0
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1540 0
	jmp	.L365
.L362:
	.loc 1 1543 0
	movl	-4(%ebp), %eax
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
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
.L365:
	.loc 1 1539 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L360:
	movl	-4(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L361
	.loc 1 1544 0
	leave
	ret
.LFE46:
	.size	save_line_notes, .-save_line_notes
	.section	.rodata
	.align 4
.LC11:
	.string	";; added %d line-number notes\n"
	.text
.globl restore_line_notes
	.type	restore_line_notes, @function
restore_line_notes:
.LFB47:
	.loc 1 1553 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$52, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1555 0
	movl	$0, -16(%ebp)
	.loc 1 1559 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1567 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L369
.L370:
	.loc 1 1568 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L371
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jg	.L373
.L371:
	.loc 1 1567 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L369:
	cmpl	$0, -32(%ebp)
	jne	.L370
.L373:
	.loc 1 1573 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L374
.L375:
	.loc 1 1574 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L376
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L376
	.loc 1 1575 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1574 0
	jmp	.L379
.L376:
	.loc 1 1580 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L379
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	old_max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L379
	movl	-8(%ebp), %eax
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
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L379
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L379
	cmpl	$0, -32(%ebp)
	je	.L384
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L384
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	je	.L379
.L384:
	.loc 1 1588 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1589 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1590 0
	movl	-28(%ebp), %eax
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
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L387
	.loc 1 1593 0
	movl	-28(%ebp), %eax
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
	movl	$0, 4(%eax)
	.loc 1 1594 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1595 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1596 0
	movl	-8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1597 0
	movl	-28(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L379
.L387:
	.loc 1 1601 0
	addl	$1, -16(%ebp)
	.loc 1 1602 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_note_after@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1603 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1604 0
	movl	-28(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	3(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
.L379:
	.loc 1 1573 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L374:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L375
	.loc 1 1607 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L393
	cmpl	$0, -16(%ebp)
	je	.L393
	.loc 1 1608 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L393:
	.loc 1 1609 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	restore_line_notes, .-restore_line_notes
	.section	.rodata
	.align 4
.LC12:
	.string	";; deleted %d line-number notes\n"
	.text
.globl rm_redundant_line_notes
	.type	rm_redundant_line_notes, @function
rm_redundant_line_notes:
.LFB48:
	.loc 1 1616 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$36, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1617 0
	movl	$0, -20(%ebp)
	.loc 1 1618 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1619 0
	movl	$0, -12(%ebp)
	.loc 1 1620 0
	movl	$0, -8(%ebp)
	.loc 1 1625 0
	call	get_last_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L395
.L396:
	.loc 1 1626 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L397
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L397
	.loc 1 1629 0
	cmpl	$0, -12(%ebp)
	jne	.L400
	.loc 1 1631 0
	addl	$1, -8(%ebp)
	.loc 1 1632 0
	movl	-16(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 1633 0
	movl	-16(%ebp), %eax
	movl	$-99, 44(%eax)
	jmp	.L402
.L400:
	.loc 1 1636 0
	cmpl	$0, -20(%ebp)
	je	.L403
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jne	.L403
	movl	-20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jne	.L403
	.loc 1 1640 0
	addl	$1, -8(%ebp)
	.loc 1 1641 0
	movl	-20(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 1642 0
	movl	-20(%ebp), %eax
	movl	$-99, 44(%eax)
	.loc 1 1643 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1636 0
	jmp	.L402
.L403:
	.loc 1 1646 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L402:
	.loc 1 1647 0
	movl	$0, -12(%ebp)
	.loc 1 1626 0
	jmp	.L407
.L397:
	.loc 1 1649 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L408
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L407
.L408:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L410
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L407
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L407
.L410:
	.loc 1 1654 0
	addl	$1, -12(%ebp)
.L407:
	.loc 1 1625 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L395:
	cmpl	$0, -16(%ebp)
	jne	.L396
	.loc 1 1656 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L417
	cmpl	$0, -8(%ebp)
	je	.L417
	.loc 1 1657 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L417:
	.loc 1 1658 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	rm_redundant_line_notes, .-rm_redundant_line_notes
	.section	.rodata
	.type	__FUNCTION__.12118, @object
	.size	__FUNCTION__.12118, 15
__FUNCTION__.12118:
	.string	"rm_other_notes"
	.text
.globl rm_other_notes
	.type	rm_other_notes, @function
rm_other_notes:
.LFB49:
	.loc 1 1667 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$36, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1671 0
	movl	$0, note_list@GOTOFF(%ebx)
	.loc 1 1672 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L419
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L431
.L419:
	.loc 1 1675 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1676 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L422
.L423:
.LBB16:
	.loc 1 1683 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L424
	.loc 1 1685 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1687 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_other_notes
	movl	%eax, -12(%ebp)
	.loc 1 1689 0
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L426
	.loc 1 1690 0
	leal	__FUNCTION__.12118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1690, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L426:
	.loc 1 1691 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L428
	.loc 1 1692 0
	leal	__FUNCTION__.12118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1692, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L428:
	.loc 1 1693 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L424
	.loc 1 1694 0
	leal	__FUNCTION__.12118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1694, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L424:
.LBE16:
	.loc 1 1676 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L422:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L423
.L431:
	.loc 1 1697 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	rm_other_notes, .-rm_other_notes
	.type	find_insn_reg_weight, @function
find_insn_reg_weight:
.LFB50:
	.loc 1 1706 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$52, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1709 0
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_block_head_tail@PLT
	.loc 1 1710 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1712 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L433
.L434:
.LBB17:
	.loc 1 1714 0
	movl	$0, -16(%ebp)
	.loc 1 1718 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L435
	.loc 1 1722 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1723 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L437
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L439
.L437:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L439
	.loc 1 1725 0
	addl	$1, -16(%ebp)
	.loc 1 1723 0
	jmp	.L441
.L439:
	.loc 1 1726 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L441
.LBB18:
	.loc 1 1729 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L443
.L444:
	.loc 1 1731 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1732 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L445
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L447
.L445:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L447
	.loc 1 1734 0
	addl	$1, -16(%ebp)
.L447:
	.loc 1 1729 0
	subl	$1, -8(%ebp)
.L443:
	cmpl	$0, -8(%ebp)
	jns	.L444
.L441:
.LBE18:
	.loc 1 1739 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L449
.L450:
	.loc 1 1741 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	je	.L451
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L453
.L451:
	.loc 1 1743 0
	subl	$1, -16(%ebp)
.L453:
	.loc 1 1739 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L449:
	cmpl	$0, -12(%ebp)
	jne	.L450
	.loc 1 1746 0
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
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movw	%ax, 36(%edx)
.L435:
.LBE17:
	.loc 1 1712 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L433:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L434
	.loc 1 1748 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	find_insn_reg_weight, .-find_insn_reg_weight
	.section	.rodata
.LC13:
	.string	";;\t\tQ-->Ready: insn %s: "
	.align 4
.LC14:
	.string	"moving to ready without stalls\n"
	.align 4
.LC15:
	.string	"moving to ready with %d stalls\n"
	.text
	.type	queue_to_ready, @function
queue_to_ready:
.LFB51:
	.loc 1 1758 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$36, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1762 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	leal	1(%eax), %edx
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	andl	%edx, %eax
	movl	%eax, q_ptr@GOTOFF(%ebx)
	.loc 1 1766 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L458
.L459:
	.loc 1 1768 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1769 0
	movl	q_size@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, q_size@GOTOFF(%ebx)
	.loc 1 1771 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L460
	.loc 1 1772 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L460:
	.loc 1 1775 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
	.loc 1 1776 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L462
	.loc 1 1777 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L462:
	.loc 1 1766 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L458:
	cmpl	$0, -12(%ebp)
	jne	.L459
	.loc 1 1779 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 1783 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L484
.LBB19:
	.loc 1 1787 0
	movl	$1, -8(%ebp)
	jmp	.L467
.L468:
	.loc 1 1789 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	andl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L469
	.loc 1 1791 0
	jmp	.L471
.L472:
	.loc 1 1793 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1794 0
	movl	q_size@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, q_size@GOTOFF(%ebx)
	.loc 1 1796 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L473
	.loc 1 1797 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L473:
	.loc 1 1800 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
	.loc 1 1801 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L475
	.loc 1 1802 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L475:
	.loc 1 1791 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L471:
	cmpl	$0, -12(%ebp)
	jne	.L472
	.loc 1 1804 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	andl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 1806 0
	call	advance_one_cycle
	.loc 1 1808 0
	jmp	.L478
.L469:
	.loc 1 1811 0
	call	advance_one_cycle
	.loc 1 1787 0
	addl	$1, -8(%ebp)
.L467:
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jle	.L468
.L478:
	.loc 1 1814 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L479
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L481
.L479:
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L481
	cmpl	$0, -8(%ebp)
	je	.L481
	.loc 1 1817 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	visualize_stall_cycles@PLT
.L481:
	.loc 1 1819 0
	movl	q_ptr@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	andl	%edx, %eax
	movl	%eax, q_ptr@GOTOFF(%ebx)
	.loc 1 1820 0
	movl	clock_var@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	movl	%eax, clock_var@GOTOFF(%ebx)
.L484:
.LBE19:
	.loc 1 1822 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	queue_to_ready, .-queue_to_ready
	.type	advance_one_cycle, @function
advance_one_cycle:
.LFB39:
	.loc 1 1245 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$20, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1246 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L492
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L492
	.loc 1 1249 0
	movl	targetm@GOT(%ebx), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	je	.L489
	.loc 1 1250 0
	movl	targetm@GOT(%ebx), %eax
	movl	152(%eax), %eax
	call	*%eax
	movl	%eax, %edx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	state_transition@PLT
.L489:
	.loc 1 1253 0
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	state_transition@PLT
	.loc 1 1255 0
	movl	targetm@GOT(%ebx), %eax
	movl	160(%eax), %eax
	testl	%eax, %eax
	je	.L492
	.loc 1 1256 0
	movl	targetm@GOT(%ebx), %eax
	movl	160(%eax), %eax
	call	*%eax
	movl	%eax, %edx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	state_transition@PLT
.L492:
	.loc 1 1259 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	advance_one_cycle, .-advance_one_cycle
	.section	.rodata
.LC16:
	.string	"  %s"
	.text
	.type	debug_ready_list, @function
debug_ready_list:
.LFB52:
	.loc 1 1829 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$36, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1833 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L494
	.loc 1 1835 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1836 0
	jmp	.L500
.L494:
	.loc 1 1839 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_lastpos
	movl	%eax, -12(%ebp)
	.loc 1 1840 0
	movl	$0, -8(%ebp)
	jmp	.L497
.L498:
	.loc 1 1841 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1840 0
	addl	$1, -8(%ebp)
.L497:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L498
	.loc 1 1842 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L500:
	.loc 1 1843 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	debug_ready_list, .-debug_ready_list
	.type	move_insn1, @function
move_insn1:
.LFB53:
	.loc 1 1850 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	.loc 1 1851 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 1852 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 1854 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1855 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1857 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1858 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1860 0
	movl	8(%ebp), %eax
	.loc 1 1861 0
	popl	%ebp
	ret
.LFE53:
	.size	move_insn1, .-move_insn1
	.type	reemit_notes, @function
reemit_notes:
.LFB54:
	.loc 1 1874 0
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
	.loc 1 1877 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1878 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L504
.L505:
	.loc 1 1880 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$23, %al
	jne	.L506
.LBB20:
	.loc 1 1882 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1884 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_note_before@PLT
	movl	%eax, 12(%ebp)
	.loc 1 1885 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1886 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1887 0
	cmpl	$-86, -8(%ebp)
	je	.L508
	cmpl	$-85, -8(%ebp)
	jne	.L510
.L508:
	.loc 1 1889 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
.L510:
	.loc 1 1890 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L506:
.LBE20:
	.loc 1 1878 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L504:
	cmpl	$0, -16(%ebp)
	jne	.L505
	.loc 1 1893 0
	movl	-12(%ebp), %eax
	.loc 1 1894 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	reemit_notes, .-reemit_notes
	.type	move_insn, @function
move_insn:
.LFB55:
	.loc 1 1905 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	subl	$24, %esp
.LCFI129:
	.loc 1 1906 0
	movl	$0, -8(%ebp)
	.loc 1 1910 0
	jmp	.L514
.L515:
.LBB21:
	.loc 1 1912 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1915 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	move_insn1
	.loc 1 1918 0
	cmpl	$0, -8(%ebp)
	jne	.L516
	.loc 1 1919 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reemit_notes
	movl	%eax, -8(%ebp)
	jmp	.L518
.L516:
	.loc 1 1921 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reemit_notes
.L518:
	.loc 1 1923 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 1924 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L514:
.LBE21:
	.loc 1 1910 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L515
	.loc 1 1928 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	move_insn1
	.loc 1 1932 0
	cmpl	$0, -8(%ebp)
	jne	.L520
	.loc 1 1933 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reemit_notes
	movl	%eax, -8(%ebp)
	jmp	.L522
.L520:
	.loc 1 1935 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reemit_notes
.L522:
	.loc 1 1937 0
	movl	-8(%ebp), %eax
	.loc 1 1938 0
	leave
	ret
.LFE55:
	.size	move_insn, .-move_insn
	.local	cached_first_cycle_multipass_dfa_lookahead
	.comm	cached_first_cycle_multipass_dfa_lookahead,4,4
	.local	cached_issue_rate
	.comm	cached_issue_rate,4,4
	.type	max_issue, @function
max_issue:
.LFB56:
	.loc 1 1994 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%edi
.LCFI132:
	pushl	%esi
.LCFI133:
	pushl	%ebx
.LCFI134:
	subl	$76, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1999 0
	movl	$0, -32(%ebp)
	.loc 1 2000 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2001 0
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2002 0
	movl	cached_first_cycle_multipass_dfa_lookahead@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2003 0
	movl	-20(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 2004 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2005 0
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L525
.L526:
	.loc 1 2006 0
	movl	ready_try@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L527
	.loc 1 2007 0
	addl	$1, -40(%ebp)
.L527:
	.loc 1 2005 0
	addl	$1, -44(%ebp)
.L525:
	movl	-44(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L526
	.loc 1 2008 0
	movl	$0, -44(%ebp)
	.loc 1 2009 0
	movl	$0, -24(%ebp)
.L530:
	.loc 1 2012 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L531
	movl	-44(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L533
.L531:
	.loc 1 2014 0
	movl	choice_stack@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	je	.L549
	.loc 1 2016 0
	movl	-20(%ebp), %edx
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$4, %eax
	cmpl	-32(%ebp), %eax
	jle	.L536
	movl	ready_try@GOTOFF(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L536
	.loc 1 2018 0
	movl	-20(%ebp), %edx
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	sarl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2019 0
	movl	choice_stack@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2020 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %ecx
	movl	issue_rate@GOTOFF(%ebx), %edx
	movl	cycle_issued_insns@GOTOFF(%ebx), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	%eax, %ecx
	je	.L549
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L549
.L536:
	.loc 1 2023 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2024 0
	movl	ready_try@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 2025 0
	subl	$16, -20(%ebp)
	.loc 1 2026 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2012 0
	jmp	.L540
.L533:
	.loc 1 2028 0
	movl	ready_try@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L540
	.loc 1 2030 0
	addl	$1, -24(%ebp)
	.loc 1 2031 0
	movl	max_lookahead_tries@GOTOFF(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jg	.L549
	.loc 1 2033 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_element
	movl	%eax, -16(%ebp)
	.loc 1 2034 0
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	state_transition@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2035 0
	cmpl	$0, -28(%ebp)
	jns	.L540
	.loc 1 2037 0
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	state_dead_lock_p@PLT
	testl	%eax, %eax
	je	.L544
	.loc 1 2038 0
	movl	-20(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L546
.L544:
	.loc 1 2040 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
.L546:
	.loc 1 2041 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2042 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -68(%ebp)
	movl	%ecx, -72(%ebp)
	cld
	movl	-72(%ebp), %eax
	cmpl	%eax, -72(%ebp)
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
	je	.L547
	.loc 1 2043 0
	addl	$1, -48(%ebp)
.L547:
	.loc 1 2044 0
	addl	$16, -20(%ebp)
	.loc 1 2045 0
	movl	cached_first_cycle_multipass_dfa_lookahead@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2046 0
	movl	-20(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2047 0
	movl	-20(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2048 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2049 0
	movl	ready_try@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
	.loc 1 2050 0
	movl	$-1, -44(%ebp)
.L540:
	.loc 1 2053 0
	addl	$1, -44(%ebp)
	.loc 1 2054 0
	jmp	.L530
.L550:
	.loc 1 2057 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	ready_try@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 2058 0
	subl	$16, -20(%ebp)
.L549:
	.loc 1 2055 0
	movl	choice_stack@GOTOFF(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L550
	.loc 1 2060 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	12(%eax), %edx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2061 0
	movl	-32(%ebp), %eax
	.loc 1 2062 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE56:
	.size	max_issue, .-max_issue
	.section	.rodata
	.type	__FUNCTION__.11552, @object
	.size	__FUNCTION__.11552, 14
__FUNCTION__.11552:
	.string	"ready_element"
	.text
	.type	ready_element, @function
ready_element:
.LFB35:
	.loc 1 1181 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$20, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1182 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L554
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jg	.L556
.L554:
	.loc 1 1183 0
	leal	__FUNCTION__.11552@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1183, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L556:
	.loc 1 1184 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	.loc 1 1185 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	ready_element, .-ready_element
	.type	choose_ready, @function
choose_ready:
.LFB57:
	.loc 1 2071 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$36, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2072 0
	movl	$0, -16(%ebp)
	.loc 1 2074 0
	movl	targetm@GOT(%ebx), %eax
	movl	164(%eax), %eax
	testl	%eax, %eax
	je	.L559
	.loc 1 2075 0
	movl	targetm@GOT(%ebx), %eax
	movl	164(%eax), %eax
	call	*%eax
	movl	%eax, -16(%ebp)
.L559:
	.loc 1 2076 0
	cmpl	$0, -16(%ebp)
	jle	.L561
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_element
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L563
.L561:
	.loc 1 2077 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_remove_first
	movl	%eax, -24(%ebp)
	jmp	.L564
.L563:
.LBB22:
	.loc 1 2084 0
	movl	cached_first_cycle_multipass_dfa_lookahead@GOTOFF(%ebx), %eax
	cmpl	-16(%ebp), %eax
	je	.L565
	.loc 1 2086 0
	movl	-16(%ebp), %eax
	movl	%eax, cached_first_cycle_multipass_dfa_lookahead@GOTOFF(%ebx)
	.loc 1 2087 0
	movl	$100, max_lookahead_tries@GOTOFF(%ebx)
	.loc 1 2088 0
	movl	$0, -12(%ebp)
	jmp	.L567
.L568:
	.loc 1 2089 0
	movl	max_lookahead_tries@GOTOFF(%ebx), %eax
	imull	-16(%ebp), %eax
	movl	%eax, max_lookahead_tries@GOTOFF(%ebx)
	.loc 1 2088 0
	addl	$1, -12(%ebp)
.L567:
	movl	issue_rate@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L568
.L565:
	.loc 1 2091 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_element
	movl	%eax, -8(%ebp)
	.loc 1 2092 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jns	.L569
	.loc 1 2093 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_remove_first
	movl	%eax, -24(%ebp)
	jmp	.L564
.L569:
	.loc 1 2094 0
	movl	$1, -12(%ebp)
	jmp	.L571
.L572:
	.loc 1 2096 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_element
	movl	%eax, -8(%ebp)
	.loc 1 2097 0
	movl	ready_try@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, (%edx)
	.loc 1 2094 0
	addl	$1, -12(%ebp)
.L571:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L572
	.loc 1 2099 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	max_issue
	testl	%eax, %eax
	jne	.L574
	.loc 1 2100 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_remove_first
	movl	%eax, -24(%ebp)
	jmp	.L564
.L574:
	.loc 1 2102 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_remove
	movl	%eax, -24(%ebp)
.L564:
	movl	-24(%ebp), %eax
.LBE22:
	.loc 1 2104 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	choose_ready, .-choose_ready
	.section	.rodata
	.type	__FUNCTION__.11528, @object
	.size	__FUNCTION__.11528, 19
__FUNCTION__.11528:
	.string	"ready_remove_first"
	.text
	.type	ready_remove_first, @function
ready_remove_first:
.LFB34:
	.loc 1 1157 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$36, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1159 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L578
	.loc 1 1160 0
	leal	__FUNCTION__.11528@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1160, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L578:
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1162 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1164 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L580
	.loc 1 1165 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L580:
	.loc 1 1166 0
	movl	-8(%ebp), %eax
	.loc 1 1167 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	ready_remove_first, .-ready_remove_first
	.section	.rodata
	.type	__FUNCTION__.11573, @object
	.size	__FUNCTION__.11573, 13
__FUNCTION__.11573:
	.string	"ready_remove"
	.text
	.type	ready_remove, @function
ready_remove:
.LFB36:
	.loc 1 1195 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$36, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1199 0
	cmpl	$0, 12(%ebp)
	jne	.L584
	.loc 1 1200 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_remove_first
	movl	%eax, -24(%ebp)
	jmp	.L586
.L584:
	.loc 1 1201 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L587
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jg	.L589
.L587:
	.loc 1 1202 0
	leal	__FUNCTION__.11573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1202, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L589:
	.loc 1 1203 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1204 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1205 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L590
.L591:
	.loc 1 1206 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1205 0
	addl	$1, -8(%ebp)
.L590:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L591
	.loc 1 1207 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L586:
	movl	-24(%ebp), %eax
	.loc 1 1208 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	ready_remove, .-ready_remove
.globl sched_emit_insn
	.type	sched_emit_insn, @function
sched_emit_insn:
.LFB58:
	.loc 1 2112 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$36, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2113 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2114 0
	movl	-8(%ebp), %eax
	movl	%eax, last_scheduled_insn@GOTOFF(%ebx)
	.loc 1 2115 0
	movl	-8(%ebp), %eax
	.loc 1 2116 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	sched_emit_insn, .-sched_emit_insn
	.section	.rodata
	.type	__FUNCTION__.12584, @object
	.size	__FUNCTION__.12584, 15
__FUNCTION__.12584:
	.string	"schedule_block"
	.align 4
.LC17:
	.string	";;   ======================================================\n"
.LC18:
	.string	"after"
.LC19:
	.string	"before"
	.align 4
.LC20:
	.string	";;   -- basic block %d from %d to %d -- %s reload\n"
	.align 4
.LC21:
	.string	";;\t\tReady list after queue_to_ready:  "
.LC22:
	.string	";;\tReady list (t =%3d):  "
	.align 4
.LC23:
	.string	";;\t\t--> scheduling bubble insn <<<%d>>>:reservation "
.LC24:
	.string	";;\tReady list (final):  "
.LC25:
	.string	""
	.align 4
.LC26:
	.string	";;   total time = %d\n;;   new head = %d\n"
.LC27:
	.string	";;   new tail = %d\n\n"
	.text
.globl schedule_block
	.type	schedule_block, @function
schedule_block:
.LFB59:
	.loc 1 2125 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%edi
.LCFI158:
	pushl	%esi
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$156, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2125 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 2130 0
	movl	$0, -60(%ebp)
	.loc 1 2133 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2134 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2135 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2136 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2145 0
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L597
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L597
	.loc 1 2146 0
	leal	__FUNCTION__.12584@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2146, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L597:
	.loc 1 2149 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L600
	.loc 1 2151 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$60, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2152 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L602
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	%edx, -132(%ebp)
	jmp	.L604
.L602:
	leal	.LC19@GOTOFF(%ebx), %ecx
	movl	%ecx, -132(%ebp)
.L604:
	movl	-44(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-132(%ebp), %edi
	movl	%edi, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2156 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$60, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2157 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 2159 0
	call	visualize_alloc@PLT
	.loc 1 2160 0
	call	init_block_visualization@PLT
.L600:
	.loc 1 2163 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L605
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L605
	.loc 1 2165 0
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	state_reset@PLT
	.loc 1 2163 0
	jmp	.L608
.L605:
	.loc 1 2167 0
	call	clear_units
.L608:
	.loc 1 2170 0
	movl	issue_rate@GOTOFF(%ebx), %eax
	addl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -84(%ebp)
	.loc 1 2171 0
	movl	-84(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -80(%ebp)
	.loc 1 2172 0
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -88(%ebp)
	.loc 1 2173 0
	movl	$0, -76(%ebp)
	.loc 1 2175 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L609
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L609
	.loc 1 2179 0
	movl	dfa_state_size@GOTOFF(%ebx), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	24(%esp), %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %edx
	movl	%edx, -60(%ebp)
	.loc 1 2180 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, ready_try@GOTOFF(%ebx)
	.loc 1 2181 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	ready_try@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2182 0
	movl	12(%ebp), %eax
	sall	$4, %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, choice_stack@GOTOFF(%ebx)
	.loc 1 2185 0
	movl	$0, -72(%ebp)
	jmp	.L612
.L613:
	.loc 1 2186 0
	movl	-72(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	choice_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	dfa_state_size@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, 12(%esi)
	.loc 1 2185 0
	addl	$1, -72(%ebp)
.L612:
	movl	-72(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	.L613
.L609:
	.loc 1 2189 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2191 0
	movl	targetm@GOT(%ebx), %eax
	movl	128(%eax), %eax
	testl	%eax, %eax
	je	.L614
	.loc 1 2192 0
	movl	targetm@GOT(%ebx), %eax
	movl	128(%eax), %esi
	movl	-84(%ebp), %edx
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
.L614:
	.loc 1 2195 0
	movl	-56(%ebp), %eax
	movl	%eax, last_scheduled_insn@GOTOFF(%ebx)
	.loc 1 2199 0
	movl	$0, q_ptr@GOTOFF(%ebx)
	.loc 1 2200 0
	movl	$0, q_size@GOTOFF(%ebx)
	.loc 1 2202 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L616
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L618
.L616:
	.loc 1 2204 0
	movl	$127, max_insn_queue_index_macro_value@GOTOFF(%ebx)
	.loc 1 2202 0
	jmp	.L619
.L618:
	.loc 1 2206 0
	movl	max_insn_queue_index@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, max_insn_queue_index_macro_value@GOTOFF(%ebx)
.L619:
	.loc 1 2208 0
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	$4, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	24(%esp), %ecx
	movl	%ecx, -124(%ebp)
	movl	-124(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, insn_queue@GOTOFF(%ebx)
	.loc 1 2209 0
	movl	max_insn_queue_index_macro_value@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, %edx
	movl	insn_queue@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 2210 0
	movl	$-1, last_clock_var@GOTOFF(%ebx)
	.loc 1 2213 0
	movl	$-1, clock_var@GOTOFF(%ebx)
	.loc 1 2216 0
	jmp	.L729
.L621:
	.loc 1 2218 0
	movl	clock_var@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, clock_var@GOTOFF(%ebx)
	.loc 1 2220 0
	call	advance_one_cycle
	.loc 1 2226 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	queue_to_ready
	.loc 1 2228 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	jne	.L622
	.loc 1 2229 0
	leal	__FUNCTION__.12584@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2229, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L622:
	.loc 1 2231 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L624
	.loc 1 2233 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2234 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_ready_list
.L624:
	.loc 1 2238 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_sort
	.loc 1 2242 0
	movl	targetm@GOT(%ebx), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L626
	.loc 1 2243 0
	movl	targetm@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	clock_var@GOTOFF(%ebx), %esi
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_lastpos
	movl	%eax, %edx
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%esi, 16(%esp)
	leal	-88(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	*-120(%ebp)
	movl	%eax, -64(%ebp)
	jmp	.L628
.L626:
	.loc 1 2248 0
	movl	issue_rate@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L628:
	.loc 1 2250 0
	movl	$1, -68(%ebp)
	.loc 1 2251 0
	movl	$0, cycle_issued_insns@GOTOFF(%ebx)
	jmp	.L728
.L629:
.L728:
.LBB23:
	.loc 1 2257 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L630
	.loc 1 2259 0
	movl	clock_var@GOTOFF(%ebx), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2261 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_ready_list
.L630:
	.loc 1 2264 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L632
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L634
.L632:
	.loc 1 2267 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L635
	cmpl	$0, -64(%ebp)
	je	.L635
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L635
	.loc 1 2270 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	choose_ready
	movl	%eax, -40(%ebp)
	.loc 1 2271 0
	movl	clock_var@GOTOFF(%ebx), %esi
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_unit@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	actual_hazard
	movl	%eax, -36(%ebp)
	.loc 1 2264 0
	jmp	.L639
.L634:
	.loc 1 2275 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L635
	cmpl	$0, -64(%ebp)
	je	.L635
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	state_dead_lock_p@PLT
	testl	%eax, %eax
	jne	.L635
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L635
	.loc 1 2281 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	choose_ready
	movl	%eax, -40(%ebp)
	.loc 1 2283 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2284 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L644
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -113(%ebp)
	jmp	.L646
.L644:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -113(%ebp)
.L646:
	cmpb	$0, -113(%ebp)
	je	.L647
	.loc 1 2286 0
	cmpl	$0, -68(%ebp)
	jne	.L649
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L651
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L649
.L651:
	.loc 1 2291 0
	movl	$1, -36(%ebp)
	.loc 1 2286 0
	jmp	.L639
.L649:
	.loc 1 2297 0
	movl	$0, -36(%ebp)
	jmp	.L639
.L647:
	.loc 1 2301 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	state_transition@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2303 0
	movl	targetm@GOT(%ebx), %eax
	movl	164(%eax), %eax
	testl	%eax, %eax
	je	.L654
	movl	targetm@GOT(%ebx), %eax
	movl	172(%eax), %eax
	testl	%eax, %eax
	je	.L654
	.loc 1 2306 0
	cmpl	$0, -36(%ebp)
	jne	.L654
.LBB24:
	.loc 1 2311 0
	movl	$0, -32(%ebp)
	.loc 1 2312 0
	jmp	.L658
.L659:
	.loc 1 2316 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 2318 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	state_transition@PLT
	testl	%eax, %eax
	jns	.L660
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	state_transition@PLT
	testl	%eax, %eax
	js	.L662
.L660:
	.loc 1 2314 0
	addl	$1, -32(%ebp)
.L658:
	.loc 1 2312 0
	movl	targetm@GOT(%ebx), %eax
	movl	172(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L659
.L662:
	.loc 1 2323 0
	cmpl	$0, -28(%ebp)
	je	.L654
	.loc 1 2325 0
	movl	insert_schedule_bubbles_p@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L664
.LBB25:
	.loc 1 2329 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2330 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2331 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, last_scheduled_insn@GOTOFF(%ebx)
	.loc 1 2333 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 52(%edx)
	.loc 1 2338 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	clock_var@GOTOFF(%ebx), %edx
	movl	last_clock_var@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L666
	movl	clock_var@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	last_clock_var@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subb	%al, %cl
	movb	%cl, -106(%ebp)
	jmp	.L668
.L666:
	movb	$0, -106(%ebp)
.L668:
	movzbl	-106(%ebp), %eax
	movl	-112(%ebp), %edx
	movb	%al, 2(%edx)
	.loc 1 2342 0
	movl	clock_var@GOTOFF(%ebx), %eax
	movl	%eax, last_clock_var@GOTOFF(%ebx)
	.loc 1 2344 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L664
	.loc 1 2346 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2350 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L670
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -105(%ebp)
	jmp	.L672
.L670:
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -105(%ebp)
.L672:
	cmpb	$0, -105(%ebp)
	je	.L673
	.loc 1 2352 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L675
.L673:
	.loc 1 2354 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	sched_dump@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_reservation@PLT
.L675:
	.loc 1 2357 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L664:
.LBE25:
	.loc 1 2360 0
	movl	$-1, -36(%ebp)
.L654:
.LBE24:
	.loc 1 2365 0
	cmpl	$0, -36(%ebp)
	jns	.L676
	.loc 1 2366 0
	movl	$0, -36(%ebp)
	jmp	.L639
.L676:
	.loc 1 2367 0
	cmpl	$0, -36(%ebp)
	jne	.L639
	.loc 1 2368 0
	movl	$1, -36(%ebp)
.L639:
	.loc 1 2373 0
	cmpl	$0, -36(%ebp)
	jle	.L679
	.loc 1 2375 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	queue_insn
	.loc 1 2376 0
	jmp	.L629
.L679:
	.loc 1 2379 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L682
	.loc 1 2382 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	move_insn
	movl	%eax, last_scheduled_insn@GOTOFF(%ebx)
	.loc 1 2384 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L684
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L684
	.loc 1 2387 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -140(%ebp)
	movl	%ecx, -144(%ebp)
	cld
	movl	-144(%ebp), %ecx
	cmpl	%ecx, -144(%ebp)
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
	je	.L687
	.loc 1 2388 0
	movl	cycle_issued_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, cycle_issued_insns@GOTOFF(%ebx)
.L687:
	.loc 1 2389 0
	movl	dfa_state_size@GOTOFF(%ebx), %ecx
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L684:
	.loc 1 2392 0
	movl	targetm@GOT(%ebx), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L689
	.loc 1 2393 0
	movl	targetm@GOT(%ebx), %eax
	movl	124(%eax), %esi
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	*%esi
	movl	%eax, -64(%ebp)
	jmp	.L691
.L689:
	.loc 1 2398 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L691
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L691
	.loc 1 2400 0
	subl	$1, -64(%ebp)
.L691:
	.loc 1 2402 0
	movl	clock_var@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_insn
.L682:
	.loc 1 2405 0
	movl	$0, -68(%ebp)
	.loc 1 2407 0
	movl	targetm@GOT(%ebx), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L629
	.loc 1 2410 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	jle	.L695
	.loc 1 2411 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_sort
.L695:
	.loc 1 2412 0
	movl	targetm@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	clock_var@GOTOFF(%ebx), %esi
	movl	%esi, -100(%ebp)
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L697
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_lastpos
	movl	%eax, -96(%ebp)
	jmp	.L699
.L697:
	movl	$0, -96(%ebp)
.L699:
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-100(%ebp), %edi
	movl	%edi, 16(%esp)
	leal	-88(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	*-104(%ebp)
	movl	%eax, -64(%ebp)
	.loc 1 2418 0
	jmp	.L629
.L635:
.LBE23:
	.loc 1 2420 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L700
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L620
.L700:
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L620
	.loc 1 2424 0
	movl	clock_var@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	visualize_scheduled_insns@PLT
.L620:
.L729:
	.loc 1 2216 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L621
	.loc 1 2427 0
	movl	targetm@GOT(%ebx), %eax
	movl	132(%eax), %eax
	testl	%eax, %eax
	je	.L704
	.loc 1 2428 0
	movl	targetm@GOT(%ebx), %eax
	movl	132(%eax), %ecx
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
.L704:
	.loc 1 2431 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L706
	.loc 1 2433 0
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2434 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_ready_list
	.loc 1 2435 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L708
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L706
.L708:
	.loc 1 2437 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_block_visualization@PLT
.L706:
	.loc 1 2442 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L710
	movl	q_size@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L710
	.loc 1 2443 0
	leal	__FUNCTION__.12584@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2443, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L710:
	.loc 1 2446 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2447 0
	movl	last_scheduled_insn@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2452 0
	movl	note_list@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L713
.LBB26:
	.loc 1 2454 0
	movl	note_list@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2456 0
	jmp	.L715
.L716:
	.loc 1 2458 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L715:
	.loc 1 2456 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L716
	.loc 1 2461 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2462 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2463 0
	movl	note_list@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2464 0
	movl	note_list@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2465 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
.L713:
.LBE26:
	.loc 1 2469 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L718
	.loc 1 2471 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	clock_var@GOTOFF(%ebx), %ecx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2473 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	sched_dump@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2475 0
	call	visualize_free@PLT
.L718:
	.loc 1 2478 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 2479 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 2481 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2483 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L726
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L726
	.loc 1 2486 0
	movl	ready_try@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2487 0
	movl	$0, -72(%ebp)
	jmp	.L723
.L724:
	.loc 1 2488 0
	movl	-72(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	choice_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2487 0
	addl	$1, -72(%ebp)
.L723:
	movl	-72(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	.L724
	.loc 1 2489 0
	movl	choice_stack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L726:
	.loc 1 2491 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L727
	call	__stack_chk_fail_local
.L727:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE59:
	.size	schedule_block, .-schedule_block
	.type	actual_hazard, @function
actual_hazard:
.LFB25:
	.loc 1 782 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$52, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 785 0
	cmpl	$0, 8(%ebp)
	js	.L731
.LBB27:
	.loc 1 788 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 790 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	actual_hazard_this_instance@PLT
	movl	%eax, -8(%ebp)
	.loc 1 810 0
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jge	.L733
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L733:
	movl	-24(%ebp), %eax
	movl	%eax, 20(%ebp)
	jmp	.L734
.L731:
.LBE27:
	.loc 1 813 0
	movl	$0, -16(%ebp)
	notl	8(%ebp)
	jmp	.L735
.L736:
	.loc 1 814 0
	movl	8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L737
	.loc 1 815 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	actual_hazard
	movl	%eax, 20(%ebp)
.L737:
	.loc 1 813 0
	addl	$1, -16(%ebp)
	sarl	8(%ebp)
.L735:
	cmpl	$0, 8(%ebp)
	jne	.L736
.L734:
	.loc 1 817 0
	movl	20(%ebp), %eax
	.loc 1 818 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	actual_hazard, .-actual_hazard
	.type	ready_sort, @function
ready_sort:
.LFB37:
	.loc 1 1217 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$36, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1218 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_lastpos
	movl	%eax, -8(%ebp)
	.loc 1 1219 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L741
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_sort
	jmp	.L745
.L741:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jle	.L745
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	leal	rank_for_schedule@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
.L745:
	.loc 1 1220 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	ready_sort, .-ready_sort
	.type	swap_sort, @function
swap_sort:
.LFB30:
	.loc 1 1085 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	subl	$24, %esp
.LCFI172:
	.loc 1 1086 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1087 0
	movl	12(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -4(%ebp)
	.loc 1 1089 0
	jmp	.L747
.L748:
	.loc 1 1091 0
	movl	-4(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1092 0
	subl	$1, -4(%ebp)
.L747:
	.loc 1 1089 0
	cmpl	$0, -4(%ebp)
	js	.L749
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rank_for_schedule
	testl	%eax, %eax
	jns	.L748
.L749:
	.loc 1 1094 0
	movl	-4(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1095 0
	leave
	ret
.LFE30:
	.size	swap_sort, .-swap_sort
.globl set_priorities
	.type	set_priorities, @function
set_priorities:
.LFB60:
	.loc 1 2498 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$36, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2504 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2506 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L753
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L753
	.loc 1 2507 0
	movl	$0, -24(%ebp)
	jmp	.L756
.L753:
	.loc 1 2509 0
	movl	$0, -12(%ebp)
	.loc 1 2510 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L757
.L758:
	.loc 1 2512 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L759
	.loc 1 2515 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L761
	.loc 1 2516 0
	addl	$1, -12(%ebp)
.L761:
	.loc 1 2517 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	priority
.L759:
	.loc 1 2510 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L757:
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L758
	.loc 1 2520 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L756:
	movl	-24(%ebp), %eax
	.loc 1 2521 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	set_priorities, .-set_priorities
.globl sched_init
	.type	sched_init, @function
sched_init:
.LFB61:
	.loc 1 2529 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%ebx
.LCFI179:
	subl	$52, %esp
.LCFI180:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2543 0
	movl	sched_verbose_param@GOTOFF(%ebx), %eax
	movl	sched_verbose@GOT(%ebx), %edx
	movl	%eax, (%edx)
	.loc 1 2544 0
	movl	sched_verbose_param@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L766
	cmpl	$0, 8(%ebp)
	je	.L766
	.loc 1 2545 0
	movl	sched_verbose@GOT(%ebx), %eax
	movl	$1, (%eax)
.L766:
	.loc 1 2546 0
	movl	sched_verbose_param@GOTOFF(%ebx), %eax
	cmpl	$9, %eax
	jg	.L769
	cmpl	$0, 8(%ebp)
	jne	.L771
.L769:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L772
.L771:
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L772:
	movl	sched_dump@GOT(%ebx), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 2550 0
	movl	targetm@GOT(%ebx), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L773
	.loc 1 2551 0
	movl	targetm@GOT(%ebx), %eax
	movl	120(%eax), %eax
	call	*%eax
	movl	%eax, issue_rate@GOTOFF(%ebx)
	jmp	.L775
.L773:
	.loc 1 2553 0
	movl	$1, issue_rate@GOTOFF(%ebx)
.L775:
	.loc 1 2555 0
	movl	cached_issue_rate@GOTOFF(%ebx), %edx
	movl	issue_rate@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L776
	.loc 1 2557 0
	movl	issue_rate@GOTOFF(%ebx), %eax
	movl	%eax, cached_issue_rate@GOTOFF(%ebx)
	.loc 1 2559 0
	movl	$0, cached_first_cycle_multipass_dfa_lookahead@GOTOFF(%ebx)
.L776:
	.loc 1 2564 0
	call	get_max_uid@PLT
	addl	$1, %eax
	movl	%eax, old_max_uid@GOTOFF(%ebx)
	.loc 1 2566 0
	movl	old_max_uid@GOTOFF(%ebx), %eax
	movl	$40, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2568 0
	movl	$0, -12(%ebp)
	jmp	.L778
.L779:
	.loc 1 2569 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movw	$-1, 32(%eax)
	.loc 1 2568 0
	addl	$1, -12(%ebp)
.L778:
	movl	old_max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L779
	.loc 1 2571 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L781
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L781
	.loc 1 2574 0
	movl	targetm@GOT(%ebx), %eax
	movl	148(%eax), %eax
	testl	%eax, %eax
	je	.L784
	.loc 1 2575 0
	movl	targetm@GOT(%ebx), %eax
	movl	148(%eax), %eax
	call	*%eax
.L784:
	.loc 1 2577 0
	movl	targetm@GOT(%ebx), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	je	.L786
	.loc 1 2578 0
	movl	targetm@GOT(%ebx), %eax
	movl	156(%eax), %eax
	call	*%eax
.L786:
	.loc 1 2580 0
	movl	targetm@GOT(%ebx), %eax
	movl	164(%eax), %eax
	testl	%eax, %eax
	je	.L788
	movl	targetm@GOT(%ebx), %eax
	movl	168(%eax), %eax
	testl	%eax, %eax
	je	.L788
	.loc 1 2582 0
	movl	targetm@GOT(%ebx), %eax
	movl	168(%eax), %eax
	call	*%eax
.L788:
	.loc 1 2584 0
	call	dfa_start@PLT
	.loc 1 2585 0
	call	state_size@PLT
	movl	%eax, dfa_state_size@GOTOFF(%ebx)
	.loc 1 2586 0
	movl	dfa_state_size@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	curr_state@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L781:
	.loc 1 2589 0
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 2590 0
	movl	$1, -24(%ebp)
	.loc 1 2591 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L791
.L792:
	.loc 1 2592 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L793:
	.loc 1 2594 0
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
	movl	-24(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2601 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L794
	.loc 1 2602 0
	addl	$1, -24(%ebp)
.L794:
	.loc 1 2604 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L796
	.loc 1 2592 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2606 0
	jmp	.L793
.L796:
	.loc 1 2591 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L791:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L792
	.loc 1 2608 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	init_dependency_caches@PLT
	.loc 1 2610 0
	call	init_alias_analysis@PLT
	.loc 1 2612 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L799
.LBB28:
	.loc 1 2616 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, line_note_head@GOTOFF(%ebx)
	.loc 1 2624 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L801
.L802:
	.loc 1 2626 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L803
.L804:
	.loc 1 2627 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L805
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L805
	.loc 1 2629 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	line_note_head@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2630 0
	jmp	.L808
.L805:
	.loc 1 2626 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L803:
	cmpl	$0, -8(%ebp)
	jne	.L804
.L808:
	.loc 1 2634 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L809
.L810:
	.loc 1 2636 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L811
	.loc 1 2638 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L813
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L813
	.loc 1 2639 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	line_note_head@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L813:
	.loc 1 2634 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L809:
	cmpl	$0, -8(%ebp)
	jne	.L810
.L811:
	.loc 1 2624 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L801:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L802
.L799:
.LBE28:
	.loc 1 2644 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L816
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L818
.L816:
	movl	sched_verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L818
	.loc 1 2648 0
	call	init_target_units@PLT
.L818:
	.loc 1 2653 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2654 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L820
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L822
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L822
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L822
.L820:
	.loc 1 2660 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$-99, (%esp)
	call	emit_note_after@PLT
	.loc 1 2662 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%edx)
.L822:
	.loc 1 2667 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L825
.L826:
	.loc 1 2668 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	find_insn_reg_weight
	.loc 1 2667 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
.L825:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L826
	.loc 1 2669 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	sched_init, .-sched_init
.globl sched_finish
	.type	sched_finish, @function
sched_finish:
.LFB62:
	.loc 1 2675 0
	pushl	%ebp
.LCFI181:
	movl	%esp, %ebp
.LCFI182:
	pushl	%ebx
.LCFI183:
	subl	$4, %esp
.LCFI184:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2676 0
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2678 0
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L830
	movl	targetm@GOT(%ebx), %eax
	movl	144(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L830
	.loc 1 2681 0
	movl	curr_state@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2682 0
	call	dfa_finish@PLT
.L830:
	.loc 1 2684 0
	call	free_dependency_caches@PLT
	.loc 1 2685 0
	call	end_alias_analysis@PLT
	.loc 1 2686 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L835
	.loc 1 2687 0
	movl	line_note_head@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L835:
	.loc 1 2688 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	sched_finish, .-sched_finish
	.local	issue_rate
	.comm	issue_rate,4,4
	.local	old_max_uid
	.comm	old_max_uid,4,4
	.local	line_note_head
	.comm	line_note_head,4,4
	.local	note_list
	.comm	note_list,4,4
	.local	insn_queue
	.comm	insn_queue,4,4
	.local	max_insn_queue_index_macro_value
	.comm	max_insn_queue_index_macro_value,4,4
	.local	dfa_state_size
	.comm	dfa_state_size,4,4
	.local	ready_try
	.comm	ready_try,4,4
	.local	last_scheduled_insn
	.comm	last_scheduled_insn,4,4
	.local	unit_last_insn
	.comm	unit_last_insn,20,4
	.local	unit_tick
	.comm	unit_tick,20,4
	.local	unit_n_insns
	.comm	unit_n_insns,20,4
	.local	last_clock_var
	.comm	last_clock_var,4,4
	.local	clock_var
	.comm	clock_var,4,4
	.local	choice_stack
	.comm	choice_stack,4,4
	.local	cycle_issued_insns
	.comm	cycle_issued_insns,4,4
	.local	max_lookahead_tries
	.comm	max_lookahead_tries,4,4
	.comm	curr_state,4,4
	.comm	current_sched_info,4,4
	.comm	h_i_d,4,4
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI19-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI21-.LFB22
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI25-.LFB23
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI29-.LFB19
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI33-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI34
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
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI38-.LFB28
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI43-.LFB29
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI47-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI48
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
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI53-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI57-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI61-.LFB24
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI65-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
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
	.long	.LCFI73-.LCFI71
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI74-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI77-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI80-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI83-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI86-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI87
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI90-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI93-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI94
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI97-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI98
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI101-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI102
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI105-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI106
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI109-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI110
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI113-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI114
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI117-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI118
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI121-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI123-.LFB54
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI127-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI130-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI131
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
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI136-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI137
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI140-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI141
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI144-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI145
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI148-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI149
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI152-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI153
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI156-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI157
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI162-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI166-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI169-.LCFI167
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI170-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI173-.LFB60
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
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI177-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI180-.LCFI178
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI181-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI182-.LCFI181
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI184-.LCFI182
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/basic-block.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/sched-int.h"
	.file 9 "../../../kg++fe/gnu/MIPS/insn-attr.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../kg++fe/gnu/varray.h"
	.file 15 "../../../kg++fe/gnu/regs.h"
	.file 16 "../../../kg++fe/gnu/flags.h"
	.file 17 "../../../kg++fe/gnu/target.h"
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
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB32-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
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
.LLST18:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB42-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB45-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB47-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB49-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB50-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB51-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB39-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB52-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB53-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB56-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB35-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB34-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI145-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB36-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB58-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB25-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB37-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB62-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI181-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI182-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4c59
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/haifa-sched.c"
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
	.byte	0x3
	.byte	0x84
	.long	0x871
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
	.long	0x628
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x148b
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
	.byte	0x3
	.byte	0xf2
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x149b
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
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20d
	.uleb128 0x8
	.long	0x212
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x221
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
	.byte	0xc
	.byte	0x3b
	.long	0x295
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xc
	.byte	0x90
	.long	0x2df
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xc
	.byte	0x91
	.long	0x2c0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x212
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x310
	.uleb128 0xc
	.long	0x58b
	.long	.LASF1
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x5dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x5fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0x4
	.long	0x5dc
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x5dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x599
	.uleb128 0x3
	.byte	0x4
	.long	0x310
	.uleb128 0xf
	.long	0x5f8
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58b
	.uleb128 0xf
	.long	0x60e
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0x27
	.byte	0x0
	.uleb128 0x8
	.long	0x21a
	.uleb128 0x3
	.byte	0x4
	.long	0x21a
	.uleb128 0x3
	.byte	0x4
	.long	0x61f
	.uleb128 0x11
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x620
	.uleb128 0x13
	.long	0x871
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x13
	.long	0x1040
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x15
	.long	0x111a
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x1040
	.uleb128 0xc
	.long	0x1191
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x295
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0x1135
	.uleb128 0x17
	.long	0x126e
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x295
	.uleb128 0x18
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x21a
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x221
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x207
	.uleb128 0x18
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0xa0
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x1a1
	.uleb128 0x18
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x628
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x111a
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x1282
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x12e8
	.uleb128 0x18
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e9
	.uleb128 0x18
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1470
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1476
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x126e
	.uleb128 0x4
	.long	0x12e8
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x5
	.byte	0x3d
	.long	0x1761
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1761
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1288
	.uleb128 0x4
	.long	0x1470
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x6
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1e4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1e4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1d7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1d7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1d7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1d7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x6
	.byte	0xd3
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1470
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1470
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x20c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1d8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12ee
	.uleb128 0x3
	.byte	0x4
	.long	0x1191
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x119c
	.uleb128 0xf
	.long	0x149b
	.long	0x147c
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x14ab
	.long	0xa0
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x16c6
	.string	"insn_note"
	.byte	0x4
	.byte	0x3
	.value	0x330
	.uleb128 0x14
	.string	"NOTE_INSN_BIAS"
	.sleb128 -100
	.uleb128 0x14
	.string	"NOTE_INSN_DELETED"
	.sleb128 -99
	.uleb128 0x14
	.string	"NOTE_INSN_BLOCK_BEG"
	.sleb128 -98
	.uleb128 0x14
	.string	"NOTE_INSN_BLOCK_END"
	.sleb128 -97
	.uleb128 0x14
	.string	"NOTE_INSN_LOOP_BEG"
	.sleb128 -96
	.uleb128 0x14
	.string	"NOTE_INSN_LOOP_END"
	.sleb128 -95
	.uleb128 0x14
	.string	"NOTE_INSN_LOOP_CONT"
	.sleb128 -94
	.uleb128 0x14
	.string	"NOTE_INSN_LOOP_VTOP"
	.sleb128 -93
	.uleb128 0x14
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
	.sleb128 -92
	.uleb128 0x14
	.string	"NOTE_INSN_FUNCTION_END"
	.sleb128 -91
	.uleb128 0x14
	.string	"NOTE_INSN_PROLOGUE_END"
	.sleb128 -90
	.uleb128 0x14
	.string	"NOTE_INSN_EPILOGUE_BEG"
	.sleb128 -89
	.uleb128 0x14
	.string	"NOTE_INSN_DELETED_LABEL"
	.sleb128 -88
	.uleb128 0x14
	.string	"NOTE_INSN_FUNCTION_BEG"
	.sleb128 -87
	.uleb128 0x14
	.string	"NOTE_INSN_EH_REGION_BEG"
	.sleb128 -86
	.uleb128 0x14
	.string	"NOTE_INSN_EH_REGION_END"
	.sleb128 -85
	.uleb128 0x14
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
	.sleb128 -84
	.uleb128 0x14
	.string	"NOTE_INSN_BASIC_BLOCK"
	.sleb128 -83
	.uleb128 0x14
	.string	"NOTE_INSN_EXPECTED_VALUE"
	.sleb128 -82
	.uleb128 0x14
	.string	"NOTE_INSN_PREDICTION"
	.sleb128 -81
	.uleb128 0x14
	.string	"NOTE_INSN_MAX"
	.sleb128 -80
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x264
	.uleb128 0x4
	.long	0x1735
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x5
	.byte	0x35
	.long	0x1735
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x5
	.byte	0x36
	.long	0x1735
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x173b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x16df
	.uleb128 0xf
	.long	0x174b
	.long	0x16cc
	.uleb128 0x10
	.long	0x228
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x16df
	.uleb128 0x3
	.byte	0x4
	.long	0x174b
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x12e8
	.uleb128 0x4
	.long	0x17cf
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x17cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x17df
	.long	0x2a6
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x17ee
	.uleb128 0x3
	.byte	0x4
	.long	0x1775
	.uleb128 0x4
	.long	0x182a
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xe
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xe
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xe
	.byte	0x36
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x19c5
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xe
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
	.uleb128 0x17
	.long	0x1ac1
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xe
	.byte	0x55
	.uleb128 0x18
	.string	"c"
	.byte	0xe
	.byte	0x56
	.long	0x5e8
	.uleb128 0x18
	.string	"uc"
	.byte	0xe
	.byte	0x58
	.long	0x1ac1
	.uleb128 0x18
	.string	"s"
	.byte	0xe
	.byte	0x5a
	.long	0x1ad1
	.uleb128 0x18
	.string	"us"
	.byte	0xe
	.byte	0x5c
	.long	0x1ae1
	.uleb128 0x18
	.string	"i"
	.byte	0xe
	.byte	0x5e
	.long	0x1af1
	.uleb128 0x18
	.string	"u"
	.byte	0xe
	.byte	0x60
	.long	0x1b01
	.uleb128 0x18
	.string	"l"
	.byte	0xe
	.byte	0x62
	.long	0x1b11
	.uleb128 0x18
	.string	"ul"
	.byte	0xe
	.byte	0x64
	.long	0x1b21
	.uleb128 0x18
	.string	"hint"
	.byte	0xe
	.byte	0x66
	.long	0x1b31
	.uleb128 0x18
	.string	"uhint"
	.byte	0xe
	.byte	0x68
	.long	0x17cf
	.uleb128 0x18
	.string	"generic"
	.byte	0xe
	.byte	0x6a
	.long	0x1b41
	.uleb128 0x18
	.string	"cptr"
	.byte	0xe
	.byte	0x6c
	.long	0x1b51
	.uleb128 0x18
	.string	"rtx"
	.byte	0xe
	.byte	0x6e
	.long	0x1b61
	.uleb128 0x18
	.string	"rtvec"
	.byte	0xe
	.byte	0x70
	.long	0x1b71
	.uleb128 0x18
	.string	"tree"
	.byte	0xe
	.byte	0x72
	.long	0x1b81
	.uleb128 0x18
	.string	"bitmap"
	.byte	0xe
	.byte	0x74
	.long	0x1b91
	.uleb128 0x18
	.string	"reg"
	.byte	0xe
	.byte	0x76
	.long	0x1ba1
	.uleb128 0x18
	.string	"const_equiv"
	.byte	0xe
	.byte	0x78
	.long	0x1c9d
	.uleb128 0x18
	.string	"bb"
	.byte	0xe
	.byte	0x7a
	.long	0x1cad
	.uleb128 0x18
	.string	"te"
	.byte	0xe
	.byte	0x7c
	.long	0x1cbd
	.byte	0x0
	.uleb128 0xf
	.long	0x1ad1
	.long	0x23d
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ae1
	.long	0x288
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1af1
	.long	0x24e
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b01
	.long	0x21a
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b11
	.long	0x221
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b21
	.long	0x2df
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b31
	.long	0x264
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b41
	.long	0x295
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b51
	.long	0x2fc
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b61
	.long	0x2fe
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b71
	.long	0xab
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b81
	.long	0x1ae
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1b91
	.long	0x1f5
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ba1
	.long	0x12e8
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1bb1
	.long	0x1c97
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1c97
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xe
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0xf
	.byte	0x31
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0xf
	.byte	0x32
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0xf
	.byte	0x33
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0xf
	.byte	0x36
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0xf
	.byte	0x39
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0xf
	.byte	0x3a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0xf
	.byte	0x3b
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0xf
	.byte	0x3c
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0xf
	.byte	0x3d
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF8
	.byte	0xf
	.byte	0x3e
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0xf
	.byte	0x3f
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1bb1
	.uleb128 0xf
	.long	0x1cad
	.long	0x17f4
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1cbd
	.long	0x1470
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1ccd
	.long	0x1cd8
	.uleb128 0x10
	.long	0x228
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ccd
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xe
	.byte	0x7e
	.long	0x19c5
	.uleb128 0x4
	.long	0x1d66
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xe
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xe
	.byte	0x82
	.long	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xe
	.byte	0x83
	.long	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xe
	.byte	0x85
	.long	0x182a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xe
	.byte	0x86
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xe
	.byte	0x87
	.long	0x1cde
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xe
	.byte	0x8a
	.long	0x1d79
	.uleb128 0x3
	.byte	0x4
	.long	0x1cf1
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1767
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x295
	.uleb128 0x4
	.long	0x1e49
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1e49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1e49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1470
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1470
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1d8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d9e
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1e49
	.uleb128 0x4
	.long	0x20c8
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x20ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x20ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x20ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x6
	.value	0x18b
	.long	0x20ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x20ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x17df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x17df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x20df
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x20c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x20c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x6
	.value	0x1b7
	.long	0x20c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5b
	.uleb128 0x16
	.long	.LASF8
	.byte	0x6
	.byte	0xe6
	.long	0x1470
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4f
	.uleb128 0x3
	.byte	0x4
	.long	0x20c8
	.uleb128 0x3
	.byte	0x4
	.long	0x1e9
	.uleb128 0x13
	.long	0x2175
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x10
	.byte	0x21
	.uleb128 0x14
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x14
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x14
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x14
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x14
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x14
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x14
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x14
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x4
	.long	0x22a5
	.string	"function_unit_desc"
	.byte	0x2c
	.byte	0x9
	.byte	0x3e
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0x3f
	.long	0x22a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bitmask"
	.byte	0x9
	.byte	0x40
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"multiplicity"
	.byte	0x9
	.byte	0x41
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"simultaneity"
	.byte	0x9
	.byte	0x42
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"default_cost"
	.byte	0x9
	.byte	0x43
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"max_issue_delay"
	.byte	0x9
	.byte	0x44
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ready_cost_function"
	.byte	0x9
	.byte	0x45
	.long	0x22ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"conflict_cost_function"
	.byte	0x9
	.byte	0x46
	.long	0x22da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"max_blockage"
	.byte	0x9
	.byte	0x47
	.long	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"blockage_range_function"
	.byte	0x9
	.byte	0x48
	.long	0x22f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"blockage_function"
	.byte	0x9
	.byte	0x49
	.long	0x22da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x8
	.long	0x207
	.uleb128 0x1d
	.long	0x22ba
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0xa0
	.byte	0x0
	.uleb128 0x8
	.long	0x22bf
	.uleb128 0x3
	.byte	0x4
	.long	0x22aa
	.uleb128 0x1d
	.long	0x22da
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0xa0
	.byte	0x0
	.uleb128 0x8
	.long	0x22df
	.uleb128 0x3
	.byte	0x4
	.long	0x22c5
	.uleb128 0x1d
	.long	0x22f5
	.byte	0x1
	.long	0x221
	.uleb128 0x1e
	.long	0xa0
	.byte	0x0
	.uleb128 0x8
	.long	0x22fa
	.uleb128 0x3
	.byte	0x4
	.long	0x22e5
	.uleb128 0x2
	.string	"state_t"
	.byte	0x9
	.byte	0x82
	.long	0x2fc
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x4
	.long	0x2476
	.string	"sched_info"
	.byte	0x34
	.byte	0x8
	.byte	0x7e
	.uleb128 0x6
	.string	"init_ready_list"
	.byte	0x8
	.byte	0x81
	.long	0x24df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"can_schedule_ready_p"
	.byte	0x8
	.byte	0x84
	.long	0x22bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"schedule_more_p"
	.byte	0x8
	.byte	0x86
	.long	0x24eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"new_ready"
	.byte	0x8
	.byte	0x8a
	.long	0x22bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"rank"
	.byte	0x8
	.byte	0x8e
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"print_insn"
	.byte	0x8
	.byte	0x93
	.long	0x2506
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"contributes_to_priority"
	.byte	0x8
	.byte	0x96
	.long	0x22df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"compute_jump_reg_dependencies"
	.byte	0x8
	.byte	0x9a
	.long	0x2527
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x8
	.byte	0x9d
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x8
	.byte	0x9d
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x8
	.byte	0xa1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x8
	.byte	0xa1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"queue_must_finish_empty"
	.byte	0x8
	.byte	0xa4
	.long	0x221
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
	.long	0x221
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x1f
	.long	0x2482
	.byte	0x1
	.uleb128 0x1e
	.long	0x2482
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2488
	.uleb128 0x4
	.long	0x24df
	.string	"ready_list"
	.byte	0x10
	.byte	0x8
	.byte	0x1b
	.uleb128 0xd
	.string	"vec"
	.byte	0x1
	.value	0x12c
	.long	0x16c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"veclen"
	.byte	0x1
	.value	0x12d
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x12e
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"n_ready"
	.byte	0x1
	.value	0x12f
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2476
	.uleb128 0x20
	.byte	0x1
	.long	0x21a
	.uleb128 0x3
	.byte	0x4
	.long	0x24e5
	.uleb128 0x1d
	.long	0x2506
	.byte	0x1
	.long	0x207
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24f1
	.uleb128 0x1f
	.long	0x2527
	.byte	0x1
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x1d7f
	.uleb128 0x1e
	.long	0x1d7f
	.uleb128 0x1e
	.long	0x1d7f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x250c
	.uleb128 0x4
	.long	0x2664
	.string	"haifa_insn_data"
	.byte	0x28
	.byte	0x8
	.byte	0xb2
	.uleb128 0x6
	.string	"depend"
	.byte	0x8
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line_note"
	.byte	0x8
	.byte	0xb9
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0x8
	.byte	0xbc
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x8
	.byte	0xbf
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"dep_count"
	.byte	0x8
	.byte	0xc4
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x8
	.byte	0xc8
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ref_count"
	.byte	0x8
	.byte	0xcb
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"tick"
	.byte	0x8
	.byte	0xcf
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x8
	.byte	0xd1
	.long	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"units"
	.byte	0x8
	.byte	0xd5
	.long	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x8
	.byte	0xd9
	.long	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"cant_move"
	.byte	0x8
	.byte	0xdc
	.long	0x221
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
	.long	0x221
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
	.long	0x221
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
	.long	0x221
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x4
	.long	0x26ac
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x11
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x11
	.byte	0x3b
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x11
	.byte	0x3c
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x11
	.byte	0x3d
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x11
	.byte	0x3e
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x28e2
	.string	"asm_out"
	.byte	0x70
	.byte	0x11
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x11
	.byte	0x35
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x11
	.byte	0x35
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x11
	.byte	0x38
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x11
	.byte	0x3f
	.long	0x2664
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x11
	.byte	0x3f
	.long	0x2664
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x11
	.byte	0x46
	.long	0x28fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x11
	.byte	0x49
	.long	0x2919
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x11
	.byte	0x4d
	.long	0x2930
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x11
	.byte	0x50
	.long	0x2947
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x11
	.byte	0x53
	.long	0x2959
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x11
	.byte	0x56
	.long	0x2959
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x11
	.byte	0x59
	.long	0x2947
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x11
	.byte	0x5d
	.long	0x2970
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x11
	.byte	0x60
	.long	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x11
	.byte	0x63
	.long	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x11
	.byte	0x6a
	.long	0x298c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x11
	.byte	0x6e
	.long	0x29a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x11
	.byte	0x73
	.long	0x2930
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x11
	.byte	0x76
	.long	0x29bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x11
	.byte	0x79
	.long	0x29bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x11
	.byte	0x80
	.long	0x29e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x11
	.byte	0x8b
	.long	0x2a0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1d
	.long	0x28fc
	.byte	0x1
	.long	0x230f
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x221
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x28e2
	.uleb128 0x1f
	.long	0x2913
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x207
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x304
	.uleb128 0x3
	.byte	0x4
	.long	0x2902
	.uleb128 0x1f
	.long	0x2930
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x291f
	.uleb128 0x1f
	.long	0x2947
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x295
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2936
	.uleb128 0x1f
	.long	0x2959
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x294d
	.uleb128 0x1f
	.long	0x2970
	.byte	0x1
	.uleb128 0x1e
	.long	0x207
	.uleb128 0x1e
	.long	0x221
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x295f
	.uleb128 0x1f
	.long	0x298c
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x21a
	.uleb128 0x1e
	.long	0x2a6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2976
	.uleb128 0x1f
	.long	0x29a8
	.byte	0x1
	.uleb128 0x1e
	.long	0x628
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x2a6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2992
	.uleb128 0x1f
	.long	0x29bf
	.byte	0x1
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29ae
	.uleb128 0x1f
	.long	0x29e5
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x295
	.uleb128 0x1e
	.long	0x295
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29c5
	.uleb128 0x1d
	.long	0x2a0a
	.byte	0x1
	.long	0x230f
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x295
	.uleb128 0x1e
	.long	0x295
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29eb
	.uleb128 0x4
	.long	0x2bb8
	.string	"sched"
	.byte	0x40
	.byte	0x11
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x11
	.byte	0x97
	.long	0x2bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x11
	.byte	0x9b
	.long	0x2bf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x11
	.byte	0xa0
	.long	0x24eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x11
	.byte	0xa4
	.long	0x2c17
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x11
	.byte	0xa7
	.long	0x2c33
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x11
	.byte	0xaa
	.long	0x2c4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x11
	.byte	0xae
	.long	0x2c74
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x11
	.byte	0xaf
	.long	0x2c74
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x11
	.byte	0xb4
	.long	0x24eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x11
	.byte	0xc2
	.long	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x11
	.byte	0xc3
	.long	0x2c80
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x11
	.byte	0xc4
	.long	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x11
	.byte	0xc5
	.long	0x2c80
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x11
	.byte	0xcd
	.long	0x24eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x11
	.byte	0xd8
	.long	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x11
	.byte	0xd9
	.long	0x2c96
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x1d
	.long	0x2bd7
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bb8
	.uleb128 0x1d
	.long	0x2bf2
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bdd
	.uleb128 0x1d
	.long	0x2c17
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x21a
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bf8
	.uleb128 0x1f
	.long	0x2c33
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x21a
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c1d
	.uleb128 0x1f
	.long	0x2c4a
	.byte	0x1
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c39
	.uleb128 0x1d
	.long	0x2c74
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0x2913
	.uleb128 0x1e
	.long	0x21a
	.uleb128 0x1e
	.long	0x16c6
	.uleb128 0x1e
	.long	0x613
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c50
	.uleb128 0x20
	.byte	0x1
	.long	0xa0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c7a
	.uleb128 0x1d
	.long	0x2c96
	.byte	0x1
	.long	0xa0
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c86
	.uleb128 0x4
	.long	0x2f85
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x11
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x11
	.byte	0x8f
	.long	0x26ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x11
	.byte	0xda
	.long	0x2a10
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x11
	.byte	0xdd
	.long	0x2f9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x11
	.byte	0xe0
	.long	0x2f9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x11
	.byte	0xe4
	.long	0x2fb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x11
	.byte	0xe9
	.long	0x2fd1
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x11
	.byte	0xec
	.long	0x2fe3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x11
	.byte	0xef
	.long	0x2ffa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x11
	.byte	0xf3
	.long	0x3010
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x11
	.byte	0xf7
	.long	0x3010
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x11
	.byte	0xfa
	.long	0x622
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x11
	.byte	0xfd
	.long	0x303a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x11
	.value	0x103
	.long	0x305a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x11
	.value	0x107
	.long	0x3066
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x11
	.value	0x10a
	.long	0x307c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x11
	.value	0x10d
	.long	0x3010
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x11
	.value	0x111
	.long	0x3010
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x11
	.value	0x115
	.long	0x2930
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x11
	.value	0x118
	.long	0x3092
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x11
	.value	0x11d
	.long	0x230f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x11
	.value	0x121
	.long	0x230f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x11
	.value	0x124
	.long	0x230f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x11
	.value	0x127
	.long	0x230f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x11
	.value	0x12a
	.long	0x230f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x1d
	.long	0x2f9a
	.byte	0x1
	.long	0x1e9
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f85
	.uleb128 0x19
	.string	"attribute_spec"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fb7
	.uleb128 0x8
	.long	0x2fa0
	.uleb128 0x1d
	.long	0x2fd1
	.byte	0x1
	.long	0x21a
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fbc
	.uleb128 0x1f
	.long	0x2fe3
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd7
	.uleb128 0x1f
	.long	0x2ffa
	.byte	0x1
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x20e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fe9
	.uleb128 0x1d
	.long	0x3010
	.byte	0x1
	.long	0x230f
	.uleb128 0x1e
	.long	0x1e9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3000
	.uleb128 0x1d
	.long	0x303a
	.byte	0x1
	.long	0xa0
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0xa0
	.uleb128 0x1e
	.long	0x628
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3016
	.uleb128 0x1d
	.long	0x305a
	.byte	0x1
	.long	0x221
	.uleb128 0x1e
	.long	0x1e9
	.uleb128 0x1e
	.long	0x207
	.uleb128 0x1e
	.long	0x21a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3040
	.uleb128 0x20
	.byte	0x1
	.long	0x230f
	.uleb128 0x3
	.byte	0x4
	.long	0x3060
	.uleb128 0x1d
	.long	0x307c
	.byte	0x1
	.long	0x230f
	.uleb128 0x1e
	.long	0xa0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x306c
	.uleb128 0x1d
	.long	0x3092
	.byte	0x1
	.long	0x207
	.uleb128 0x1e
	.long	0x207
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3082
	.uleb128 0x21
	.long	0x30dc
	.byte	0x1
	.string	"fix_sched_param"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x22
	.string	"param"
	.byte	0x1
	.byte	0xbf
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.byte	0xbf
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x31b6
	.string	"may_trap_exp"
	.byte	0x1
	.value	0x143
	.byte	0x1
	.long	0x21a
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x141
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"is_store"
	.byte	0x1
	.value	0x142
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.value	0x144
	.long	0x871
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x25
	.string	"fmt"
	.byte	0x1
	.value	0x160
	.long	0x207
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x161
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x161
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	0x3184
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x16c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x26
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x171
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x174
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3257
	.byte	0x1
	.string	"haifa_classify_insn"
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.long	0x21a
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x18c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x18e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x18f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x190
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"code"
	.byte	0x1
	.value	0x191
	.long	0x871
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x195
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x195
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x329a
	.byte	0x1
	.string	"insn_unit"
	.byte	0x1
	.value	0x234
	.byte	0x1
	.long	0x21a
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x233
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF21
	.byte	0x1
	.value	0x235
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x32d7
	.byte	0x1
	.string	"get_unit_last_insn"
	.byte	0x1
	.value	0x292
	.byte	0x1
	.long	0xa0
	.long	.LFB20
	.long	.LFE20
	.long	.LLST4
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x291
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.string	"clear_units"
	.byte	0x1
	.value	0x29a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.uleb128 0x29
	.long	0x335c
	.byte	0x1
	.string	"insn_issue_delay"
	.byte	0x1
	.value	0x2a6
	.byte	0x1
	.long	0x21a
	.long	.LFB22
	.long	.LFE22
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x2a5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2a7
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"delay"
	.byte	0x1
	.value	0x2a7
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF21
	.byte	0x1
	.value	0x2a8
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x33ee
	.byte	0x1
	.string	"actual_hazard_this_instance"
	.byte	0x1
	.value	0x2c6
	.byte	0x1
	.long	0x21a
	.long	.LFB23
	.long	.LFE23
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x2c4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x2c4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x2c5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x2c4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x2c4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.string	"tick"
	.byte	0x1
	.value	0x2c7
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x3455
	.string	"blockage_range"
	.byte	0x1
	.value	0x25c
	.byte	0x1
	.long	0x221
	.long	.LFB19
	.long	.LFE19
	.long	.LLST8
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x25a
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x25b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x25d
	.long	0x221
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"range"
	.byte	0x1
	.value	0x25e
	.long	0x221
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x34b7
	.byte	0x1
	.string	"insn_cost"
	.byte	0x1
	.value	0x36d
	.byte	0x1
	.long	0x21a
	.long	.LFB27
	.long	.LFE27
	.long	.LLST9
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x36c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x36c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"used"
	.byte	0x1
	.value	0x36c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x36e
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x3548
	.long	.LASF12
	.byte	0x1
	.value	0x3b7
	.byte	0x1
	.long	0x21a
	.long	.LFB28
	.long	.LFE28
	.long	.LLST10
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x3b6
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x3b8
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x25
	.string	"this_priority"
	.byte	0x1
	.value	0x3bf
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x3c7
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"next_priority"
	.byte	0x1
	.value	0x3c8
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x3664
	.string	"rank_for_schedule"
	.byte	0x1
	.value	0x3f1
	.byte	0x1
	.long	0x21a
	.long	.LFB29
	.long	.LFE29
	.long	.LLST11
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x3ef
	.long	0x619
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.value	0x3f0
	.long	0x619
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.value	0x3f2
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"tmp2"
	.byte	0x1
	.value	0x3f3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x3f4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x3f5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"tmp2_class"
	.byte	0x1
	.value	0x3f5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"depend_count1"
	.byte	0x1
	.value	0x3f5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"depend_count2"
	.byte	0x1
	.value	0x3f5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0x3f6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"priority_val"
	.byte	0x1
	.value	0x3f6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"weight_val"
	.byte	0x1
	.value	0x3f6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"info_val"
	.byte	0x1
	.value	0x3f6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x36a3
	.byte	0x1
	.string	"ready_add"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x471
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x472
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x36ea
	.string	"ready_lastpos"
	.byte	0x1
	.value	0x466
	.byte	0x1
	.long	0x16c6
	.long	.LFB32
	.long	.LFE32
	.long	.LLST13
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x465
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF26
	.long	0x4788
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11472
	.byte	0x0
	.uleb128 0x2f
	.long	0x37ca
	.string	"schedule_insn"
	.byte	0x1
	.value	0x4fa
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST14
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x4f7
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x4f8
	.long	0x2482
	.byte	0x3
	.byte	0x91
	.sleb128 -2100
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x4f9
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x4fb
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -2084
	.uleb128 0x27
	.long	.LASF21
	.byte	0x1
	.value	0x4fc
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x28
	.long	0x377a
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x506
	.long	0x37ca
	.byte	0x3
	.byte	0x91
	.sleb128 -2064
	.byte	0x0
	.uleb128 0x26
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x52a
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -2076
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x52b
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -2072
	.uleb128 0x26
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x25
	.string	"effective_cost"
	.byte	0x1
	.value	0x531
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -2068
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x37db
	.long	0x212
	.uleb128 0x30
	.long	0x228
	.value	0x7ff
	.byte	0x0
	.uleb128 0x2f
	.long	0x3852
	.string	"schedule_unit"
	.byte	0x1
	.value	0x2ec
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST15
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x2ea
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x2eb
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x2ea
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2ed
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.long	.LASF22
	.byte	0x1
	.value	0x2f1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x387b
	.long	.LASF16
	.byte	0x1
	.value	0x4cd
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST16
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x4cc
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x38e0
	.string	"queue_insn"
	.byte	0x1
	.value	0x451
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST17
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x44f
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"n_cycles"
	.byte	0x1
	.value	0x450
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"next_q"
	.byte	0x1
	.value	0x452
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x453
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x3953
	.string	"unlink_other_notes"
	.byte	0x1
	.value	0x562
	.byte	0x1
	.long	0xa0
	.long	.LFB41
	.long	.LFE41
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x561
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x561
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x563
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x567
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x39c5
	.string	"unlink_line_notes"
	.byte	0x1
	.value	0x586
	.byte	0x1
	.long	0xa0
	.long	.LFB42
	.long	.LFE42
	.long	.LLST19
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x585
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x585
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x587
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x58b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3a3d
	.byte	0x1
	.string	"get_block_head_tail"
	.byte	0x1
	.value	0x5a7
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST20
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x5a4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"headp"
	.byte	0x1
	.value	0x5a5
	.long	0x16c6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"tailp"
	.byte	0x1
	.value	0x5a6
	.long	0x16c6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x5a9
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x5aa
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x3a86
	.byte	0x1
	.string	"no_real_insns_p"
	.byte	0x1
	.value	0x5c3
	.byte	0x1
	.long	0x21a
	.long	.LFB44
	.long	.LFE44
	.long	.LLST21
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x5c2
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x5c2
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b14
	.byte	0x1
	.string	"rm_line_notes"
	.byte	0x1
	.value	0x5d4
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST22
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x5d3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x5d3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x5d5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x5d6
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	0x3b03
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x5db
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF26
	.long	0x4783
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11942
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b94
	.byte	0x1
	.string	"save_line_notes"
	.byte	0x1
	.value	0x5f6
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST23
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x5f4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x5f5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x5f5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x5f7
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"line"
	.byte	0x1
	.value	0x5fe
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x5ff
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x3c4f
	.byte	0x1
	.string	"restore_line_notes"
	.byte	0x1
	.value	0x611
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST24
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x610
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x610
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"line"
	.byte	0x1
	.value	0x612
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"note"
	.byte	0x1
	.value	0x612
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x612
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x612
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"added_notes"
	.byte	0x1
	.value	0x613
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x614
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x614
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3cc5
	.byte	0x1
	.string	"rm_redundant_line_notes"
	.byte	0x1
	.value	0x650
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST25
	.uleb128 0x25
	.string	"line"
	.byte	0x1
	.value	0x651
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x652
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"active_insn"
	.byte	0x1
	.value	0x653
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"notes"
	.byte	0x1
	.value	0x654
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3d54
	.byte	0x1
	.string	"rm_other_notes"
	.byte	0x1
	.value	0x683
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST26
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x681
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x682
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x684
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x685
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	0x3d43
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x68e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF26
	.long	0x477e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12118
	.byte	0x0
	.uleb128 0x2f
	.long	0x3e05
	.string	"find_insn_reg_weight"
	.byte	0x1
	.value	0x6aa
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST27
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x6a9
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x6ab
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x6ab
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x6ab
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x6ab
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x27
	.long	.LASF15
	.byte	0x1
	.value	0x6b2
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x6b3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x6c0
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3e73
	.string	"queue_to_ready"
	.byte	0x1
	.value	0x6de
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST28
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x6dd
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x6df
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.value	0x6e0
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x25
	.string	"stalls"
	.byte	0x1
	.value	0x6f9
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.string	"advance_one_cycle"
	.byte	0x1
	.value	0x4dd
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST29
	.uleb128 0x2f
	.long	0x3ee6
	.string	"debug_ready_list"
	.byte	0x1
	.value	0x725
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST30
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x724
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x726
	.long	0x16c6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x727
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x3f2a
	.string	"move_insn1"
	.byte	0x1
	.value	0x73a
	.byte	0x1
	.long	0xa0
	.long	.LFB53
	.long	.LFE53
	.long	.LLST31
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x739
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"last"
	.byte	0x1
	.value	0x739
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x3fb1
	.string	"reemit_notes"
	.byte	0x1
	.value	0x752
	.byte	0x1
	.long	0xa0
	.long	.LFB54
	.long	.LFE54
	.long	.LLST32
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x750
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"last"
	.byte	0x1
	.value	0x751
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"note"
	.byte	0x1
	.value	0x753
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"retval"
	.byte	0x1
	.value	0x753
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x25
	.string	"note_type"
	.byte	0x1
	.value	0x75a
	.long	0x14ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x401f
	.string	"move_insn"
	.byte	0x1
	.value	0x771
	.byte	0x1
	.long	0xa0
	.long	.LFB55
	.long	.LFE55
	.long	.LLST33
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x770
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"last"
	.byte	0x1
	.value	0x770
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"retval"
	.byte	0x1
	.value	0x772
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x778
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x4073
	.string	"choice_entry"
	.byte	0x10
	.byte	0x1
	.value	0x796
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x798
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rest"
	.byte	0x1
	.value	0x79a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.value	0x79c
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"state"
	.byte	0x1
	.value	0x79e
	.long	0x2300
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x23
	.long	0x4145
	.string	"max_issue"
	.byte	0x1
	.value	0x7ca
	.byte	0x1
	.long	0x21a
	.long	.LFB56
	.long	.LFE56
	.long	.LLST34
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x7c8
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x7c9
	.long	0x613
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"all"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"n_ready"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"best"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"delay"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"tries_num"
	.byte	0x1
	.value	0x7cb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"top"
	.byte	0x1
	.value	0x7cc
	.long	0x4145
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x7cd
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x401f
	.uleb128 0x23
	.long	0x41a1
	.string	"ready_element"
	.byte	0x1
	.value	0x49d
	.byte	0x1
	.long	0xa0
	.long	.LFB35
	.long	.LFE35
	.long	.LLST35
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x49b
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x49c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF26
	.long	0x4779
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11552
	.byte	0x0
	.uleb128 0x23
	.long	0x4221
	.string	"choose_ready"
	.byte	0x1
	.value	0x817
	.byte	0x1
	.long	0xa0
	.long	.LFB57
	.long	.LFE57
	.long	.LLST36
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x816
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"lookahead"
	.byte	0x1
	.value	0x818
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.value	0x821
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x821
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x822
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x427a
	.string	"ready_remove_first"
	.byte	0x1
	.value	0x485
	.byte	0x1
	.long	0xa0
	.long	.LFB34
	.long	.LFE34
	.long	.LLST37
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x484
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x486
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF26
	.long	0x4764
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11528
	.byte	0x0
	.uleb128 0x23
	.long	0x42e9
	.string	"ready_remove"
	.byte	0x1
	.value	0x4ab
	.byte	0x1
	.long	0xa0
	.long	.LFB36
	.long	.LFE36
	.long	.LLST38
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x4a9
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x4aa
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x4ac
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x4ad
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF26
	.long	0x474f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11573
	.byte	0x0
	.uleb128 0x29
	.long	0x4332
	.byte	0x1
	.string	"sched_emit_insn"
	.byte	0x1
	.value	0x840
	.byte	0x1
	.long	0xa0
	.long	.LFB58
	.long	.LFE58
	.long	.LLST39
	.uleb128 0x24
	.string	"pat"
	.byte	0x1
	.value	0x83f
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x841
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x44d5
	.byte	0x1
	.string	"schedule_block"
	.byte	0x1
	.value	0x84d
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST40
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x84b
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"rgn_n_insns"
	.byte	0x1
	.value	0x84c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF25
	.byte	0x1
	.value	0x84e
	.long	0x2488
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x84f
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"first_cycle_insn_p"
	.byte	0x1
	.value	0x850
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.string	"can_issue_more"
	.byte	0x1
	.value	0x851
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"temp_state"
	.byte	0x1
	.value	0x852
	.long	0x2300
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x855
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x856
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x857
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x858
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF6
	.byte	0x1
	.value	0x964
	.long	.L682
	.uleb128 0x28
	.long	0x44a1
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x8ce
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x8cf
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x904
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bubble"
	.byte	0x1
	.value	0x905
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x25
	.string	"copy"
	.byte	0x1
	.value	0x917
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x44c4
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x25
	.string	"note_head"
	.byte	0x1
	.value	0x996
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF26
	.long	0x473a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12584
	.byte	0x0
	.uleb128 0x23
	.long	0x4574
	.string	"actual_hazard"
	.byte	0x1
	.value	0x30e
	.byte	0x1
	.long	0x21a
	.long	.LFB25
	.long	.LFE25
	.long	.LLST41
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x30c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x30d
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x30c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x30c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x30f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x27
	.long	.LASF22
	.byte	0x1
	.value	0x314
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"best_cost"
	.byte	0x1
	.value	0x315
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x45b3
	.string	"ready_sort"
	.byte	0x1
	.value	0x4c1
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST42
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x4c0
	.long	0x2482
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF3
	.byte	0x1
	.value	0x4c2
	.long	0x16c6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x4609
	.string	"swap_sort"
	.byte	0x1
	.value	0x43d
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST43
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x43b
	.long	0x16c6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x43c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x43e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x43f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x4681
	.byte	0x1
	.string	"set_priorities"
	.byte	0x1
	.value	0x9c2
	.byte	0x1
	.long	0x21a
	.long	.LFB60
	.long	.LFE60
	.long	.LLST44
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x9c1
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x9c1
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x9c3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"n_insn"
	.byte	0x1
	.value	0x9c4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x9c6
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x470b
	.byte	0x1
	.string	"sched_init"
	.byte	0x1
	.value	0x9e1
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST45
	.uleb128 0x24
	.string	"dump_file"
	.byte	0x1
	.value	0x9e0
	.long	0x2913
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"luid"
	.byte	0x1
	.value	0x9e2
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x9e3
	.long	0x20ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF20
	.byte	0x1
	.value	0x9e4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x9e5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x25
	.string	"line"
	.byte	0x1
	.value	0xa36
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"sched_finish"
	.byte	0x1
	.value	0xa73
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST46
	.uleb128 0xf
	.long	0x473a
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x472a
	.uleb128 0xf
	.long	0x474f
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x473f
	.uleb128 0xf
	.long	0x4764
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x4754
	.uleb128 0xf
	.long	0x4779
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x4769
	.uleb128 0x8
	.long	0x472a
	.uleb128 0x8
	.long	0x4769
	.uleb128 0x8
	.long	0x4769
	.uleb128 0x35
	.long	.LASF17
	.byte	0x1
	.byte	0x9f
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	issue_rate
	.uleb128 0x36
	.string	"sched_verbose_param"
	.byte	0x1
	.byte	0xb0
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	sched_verbose_param
	.uleb128 0x36
	.string	"old_max_uid"
	.byte	0x1
	.byte	0xb8
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	old_max_uid
	.uleb128 0x36
	.string	"line_note_head"
	.byte	0x1
	.byte	0xce
	.long	0x16c6
	.byte	0x5
	.byte	0x3
	.long	line_note_head
	.uleb128 0x36
	.string	"note_list"
	.byte	0x1
	.byte	0xd2
	.long	0xa0
	.byte	0x5
	.byte	0x3
	.long	note_list
	.uleb128 0x25
	.string	"insn_queue"
	.byte	0x1
	.value	0x10b
	.long	0x16c6
	.byte	0x5
	.byte	0x3
	.long	insn_queue
	.uleb128 0x25
	.string	"q_ptr"
	.byte	0x1
	.value	0x10c
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	q_ptr
	.uleb128 0x25
	.string	"q_size"
	.byte	0x1
	.value	0x10d
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	q_size
	.uleb128 0x25
	.string	"max_insn_queue_index_macro_value"
	.byte	0x1
	.value	0x113
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	max_insn_queue_index_macro_value
	.uleb128 0x25
	.string	"dfa_state_size"
	.byte	0x1
	.value	0x11c
	.long	0x22f
	.byte	0x5
	.byte	0x3
	.long	dfa_state_size
	.uleb128 0x25
	.string	"ready_try"
	.byte	0x1
	.value	0x120
	.long	0x2fe
	.byte	0x5
	.byte	0x3
	.long	ready_try
	.uleb128 0x25
	.string	"last_scheduled_insn"
	.byte	0x1
	.value	0x228
	.long	0xa0
	.byte	0x5
	.byte	0x3
	.long	last_scheduled_insn
	.uleb128 0xf
	.long	0x48e3
	.long	0xa0
	.uleb128 0x10
	.long	0x228
	.byte	0x4
	.byte	0x0
	.uleb128 0x25
	.string	"unit_last_insn"
	.byte	0x1
	.value	0x273
	.long	0x48d3
	.byte	0x5
	.byte	0x3
	.long	unit_last_insn
	.uleb128 0xf
	.long	0x4910
	.long	0x21a
	.uleb128 0x10
	.long	0x228
	.byte	0x4
	.byte	0x0
	.uleb128 0x25
	.string	"unit_tick"
	.byte	0x1
	.value	0x27d
	.long	0x4900
	.byte	0x5
	.byte	0x3
	.long	unit_tick
	.uleb128 0x25
	.string	"unit_n_insns"
	.byte	0x1
	.value	0x286
	.long	0x4900
	.byte	0x5
	.byte	0x3
	.long	unit_n_insns
	.uleb128 0x25
	.string	"last_clock_var"
	.byte	0x1
	.value	0x4ee
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	last_clock_var
	.uleb128 0x25
	.string	"clock_var"
	.byte	0x1
	.value	0x6d7
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	clock_var
	.uleb128 0x25
	.string	"choice_stack"
	.byte	0x1
	.value	0x7a3
	.long	0x4145
	.byte	0x5
	.byte	0x3
	.long	choice_stack
	.uleb128 0x25
	.string	"cycle_issued_insns"
	.byte	0x1
	.value	0x7a8
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	cycle_issued_insns
	.uleb128 0x25
	.string	"max_lookahead_tries"
	.byte	0x1
	.value	0x7b3
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	max_lookahead_tries
	.uleb128 0x25
	.string	"cached_first_cycle_multipass_dfa_lookahead"
	.byte	0x1
	.value	0x7b8
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	cached_first_cycle_multipass_dfa_lookahead
	.uleb128 0x25
	.string	"cached_issue_rate"
	.byte	0x1
	.value	0x7bc
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	cached_issue_rate
	.uleb128 0x37
	.string	"stderr"
	.byte	0xa
	.byte	0x90
	.long	0x5e2
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4a4f
	.long	0x23d
	.uleb128 0x10
	.long	0x228
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x4a63
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4a3f
	.uleb128 0xf
	.long	0x4a78
	.long	0x207
	.uleb128 0x10
	.long	0x228
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x4a8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4a68
	.uleb128 0xf
	.long	0x4aa1
	.long	0x212
	.uleb128 0x10
	.long	0x228
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x4ab4
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4a91
	.uleb128 0x38
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x1d66
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4b18
	.long	0x12ee
	.uleb128 0x10
	.long	0x228
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x4b08
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"write_symbols"
	.byte	0x10
	.byte	0x2e
	.long	0x20eb
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4b56
	.long	0x2175
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x37
	.string	"function_units"
	.byte	0x9
	.byte	0x4a
	.long	0x4b6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4b4b
	.uleb128 0x37
	.string	"max_insn_queue_index"
	.byte	0x9
	.byte	0x7f
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"curr_state"
	.byte	0x1
	.value	0x117
	.long	0x2300
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	curr_state
	.uleb128 0x3a
	.string	"current_sched_info"
	.byte	0x1
	.value	0x21a
	.long	0x4bcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_sched_info
	.uleb128 0x3
	.byte	0x4
	.long	0x2318
	.uleb128 0x3b
	.string	"h_i_d"
	.byte	0x1
	.byte	0xc7
	.long	0x4be7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	h_i_d
	.uleb128 0x3
	.byte	0x4
	.long	0x252d
	.uleb128 0x3b
	.string	"sched_dump"
	.byte	0x1
	.byte	0xb5
	.long	0x2913
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sched_dump
	.uleb128 0x3b
	.string	"sched_verbose"
	.byte	0x1
	.byte	0xb1
	.long	0x21a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sched_verbose
	.uleb128 0x38
	.string	"targetm"
	.byte	0x11
	.value	0x12d
	.long	0x2c9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"insert_schedule_bubbles_p"
	.byte	0x1
	.byte	0xa5
	.long	0x21a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insert_schedule_bubbles_p
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x211
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4c5d
	.long	0x3098
	.string	"fix_sched_param"
	.long	0x31b6
	.string	"haifa_classify_insn"
	.long	0x3257
	.string	"insn_unit"
	.long	0x329a
	.string	"get_unit_last_insn"
	.long	0x32f4
	.string	"insn_issue_delay"
	.long	0x335c
	.string	"actual_hazard_this_instance"
	.long	0x3455
	.string	"insn_cost"
	.long	0x3664
	.string	"ready_add"
	.long	0x39c5
	.string	"get_block_head_tail"
	.long	0x3a3d
	.string	"no_real_insns_p"
	.long	0x3a86
	.string	"rm_line_notes"
	.long	0x3b14
	.string	"save_line_notes"
	.long	0x3b94
	.string	"restore_line_notes"
	.long	0x3c4f
	.string	"rm_redundant_line_notes"
	.long	0x3cc5
	.string	"rm_other_notes"
	.long	0x42e9
	.string	"sched_emit_insn"
	.long	0x4332
	.string	"schedule_block"
	.long	0x4609
	.string	"set_priorities"
	.long	0x4681
	.string	"sched_init"
	.long	0x470b
	.string	"sched_finish"
	.long	0x4b91
	.string	"curr_state"
	.long	0x4bab
	.string	"current_sched_info"
	.long	0x4bd3
	.string	"h_i_d"
	.long	0x4bed
	.string	"sched_dump"
	.long	0x4c06
	.string	"sched_verbose"
	.long	0x4c34
	.string	"insert_schedule_bubbles_p"
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
.LASF6:
	.string	"next"
.LASF14:
	.string	"cost"
.LASF12:
	.string	"priority"
.LASF21:
	.string	"unit"
.LASF18:
	.string	"insn_class"
.LASF8:
	.string	"basic_block"
.LASF9:
	.string	"prev_head"
.LASF13:
	.string	"blockage"
.LASF24:
	.string	"link"
.LASF23:
	.string	"clock"
.LASF2:
	.string	"mem_attrs"
.LASF3:
	.string	"first"
.LASF22:
	.string	"instance"
.LASF20:
	.string	"insn"
.LASF19:
	.string	"tmp_class"
.LASF11:
	.string	"tail"
.LASF16:
	.string	"adjust_priority"
.LASF1:
	.string	"_IO_FILE"
.LASF17:
	.string	"issue_rate"
.LASF25:
	.string	"ready"
.LASF4:
	.string	"head"
.LASF15:
	.string	"reg_weight"
.LASF10:
	.string	"next_tail"
.LASF26:
	.string	"__FUNCTION__"
.LASF5:
	.string	"index"
.LASF0:
	.string	"unsigned int"
.LASF7:
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
