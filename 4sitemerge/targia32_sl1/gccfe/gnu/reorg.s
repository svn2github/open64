	.file	"reorg.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.11285, @object
	.size	__FUNCTION__.11285, 14
__FUNCTION__.11285:
	.string	"stop_search_p"
.LC0:
	.string	"../../../kgccfe/gnu/reorg.c"
	.text
	.type	stop_search_p, @function
stop_search_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/reorg.c"
	.loc 1 235 0
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
	.loc 1 236 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 237 0
	movl	$1, -12(%ebp)
	jmp	.L4
.L2:
	.loc 1 239 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -16(%ebp)
	cmpl	$5, -16(%ebp)
	ja	.L5
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	.L10@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L10:
	.long	.L6@GOTOFF
	.long	.L7@GOTOFF
	.long	.L8@GOTOFF
	.long	.L7@GOTOFF
	.long	.L9@GOTOFF
	.long	.L8@GOTOFF
	.text
.L8:
	.loc 1 243 0
	movl	$0, -12(%ebp)
	jmp	.L4
.L9:
	.loc 1 246 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L4
.L7:
	.loc 1 250 0
	movl	$1, -12(%ebp)
	jmp	.L4
.L6:
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L11
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L11
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L14
.L11:
	movl	$1, -8(%ebp)
	jmp	.L15
.L14:
	movl	$0, -8(%ebp)
.L15:
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L4
.L5:
	.loc 1 260 0
	leal	__FUNCTION__.11285@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$260, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L4:
	movl	-12(%ebp), %eax
	.loc 1 262 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	stop_search_p, .-stop_search_p
	.type	resource_conflicts_p, @function
resource_conflicts_p:
.LFB16:
	.loc 1 270 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%edi
.LCFI6:
	pushl	%esi
.LCFI7:
	subl	$32, %esp
.LCFI8:
	.loc 1 271 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	testb	%al, %al
	je	.L18
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	testb	%al, %al
	jne	.L20
.L18:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L21
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L20
.L21:
	movl	8(%ebp), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	.L23
	movl	12(%ebp), %eax
	movzbl	1(%eax), %eax
	testb	%al, %al
	jne	.L20
.L23:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L20
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L26
.L20:
	.loc 1 274 0
	movl	$1, -36(%ebp)
	jmp	.L27
.L26:
.LBB2:
	.loc 1 282 0
	movl	$0, -12(%ebp)
	jmp	.L28
.L29:
	.loc 1 283 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-32(%ebp), %eax
	andl	%esi, %eax
	movl	-28(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 284 0
	movl	$1, -36(%ebp)
	jmp	.L27
.L30:
	.loc 1 282 0
	addl	$1, -12(%ebp)
.L28:
	cmpl	$2, -12(%ebp)
	jle	.L29
	.loc 1 285 0
	movl	$0, -36(%ebp)
.L27:
	movl	-36(%ebp), %eax
.LBE2:
	.loc 1 288 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	resource_conflicts_p, .-resource_conflicts_p
	.type	insn_references_resource_p, @function
insn_references_resource_p:
.LFB17:
	.loc 1 304 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$52, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 307 0
	movb	$0, -33(%ebp)
	movzbl	-33(%ebp), %eax
	movb	%al, -34(%ebp)
	movzbl	-34(%ebp), %eax
	movb	%al, -35(%ebp)
	movzbl	-35(%ebp), %eax
	movb	%al, -36(%ebp)
.LBB3:
	leal	-36(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE3:
	.loc 1 308 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 309 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	resource_conflicts_p
	.loc 1 310 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	insn_references_resource_p, .-insn_references_resource_p
	.type	insn_sets_resource_p, @function
insn_sets_resource_p:
.LFB18:
	.loc 1 322 0
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
	.loc 1 325 0
	movb	$0, -33(%ebp)
	movzbl	-33(%ebp), %eax
	movb	%al, -34(%ebp)
	movzbl	-34(%ebp), %eax
	movb	%al, -35(%ebp)
	movzbl	-35(%ebp), %eax
	movb	%al, -36(%ebp)
.LBB4:
	leal	-36(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE4:
	.loc 1 326 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 327 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	resource_conflicts_p
	.loc 1 328 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	insn_sets_resource_p, .-insn_sets_resource_p
	.type	find_end_label, @function
find_end_label:
.LFB19:
	.loc 1 335 0
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
	.loc 1 339 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 340 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L41
.L39:
	.loc 1 346 0
	call	get_last_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 347 0
	jmp	.L42
.L43:
	.loc 1 351 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L42:
	.loc 1 347 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L43
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L45
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L43
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L43
.L45:
	.loc 1 356 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L48
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L48
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L48
.LBB5:
	.loc 1 360 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 361 0
	call	gen_label_rtx@PLT
	movl	%eax, end_of_function_label@GOTOFF(%ebx)
	.loc 1 362 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	$0, 36(%eax)
	.loc 1 365 0
	jmp	.L52
.L53:
	.loc 1 366 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L52:
	.loc 1 365 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L53
	.loc 1 368 0
	movl	end_of_function_label@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_label_after@PLT
	.loc 1 356 0
	jmp	.L55
.L48:
.LBE5:
	.loc 1 371 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L56
	.loc 1 372 0
	movl	-20(%ebp), %eax
	movl	%eax, end_of_function_label@GOTOFF(%ebx)
	jmp	.L55
.L56:
	.loc 1 375 0
	call	gen_label_rtx@PLT
	movl	%eax, end_of_function_label@GOTOFF(%ebx)
	.loc 1 376 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	$0, 36(%eax)
	.loc 1 380 0
	jmp	.L58
.L59:
	.loc 1 382 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L58:
	.loc 1 380 0
	cmpl	$0, -20(%ebp)
	je	.L60
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L59
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L59
.L60:
	.loc 1 383 0
	cmpl	$0, -20(%ebp)
	je	.L63
	.loc 1 385 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 389 0
	jmp	.L65
.L66:
	.loc 1 390 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L65:
	.loc 1 389 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L66
	.loc 1 392 0
	movl	end_of_function_label@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_label_after@PLT
	jmp	.L55
.L63:
	.loc 1 398 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	emit_label@PLT
	.loc 1 400 0
	call	mips_can_use_return_insn@PLT
	testl	%eax, %eax
	je	.L55
.LBB6:
	.loc 1 403 0
	call	gen_return@PLT
	movl	%eax, -12(%ebp)
	.loc 1 404 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 405 0
	call	emit_barrier@PLT
	.loc 1 406 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	testl	%eax, %eax
	jle	.L55
.LBB7:
	.loc 1 407 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L70
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L70:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L55:
.LBE7:
.LBE6:
	.loc 1 415 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	36(%eax), %edx
	addl	$1, %edx
	movl	%edx, 36(%eax)
	.loc 1 417 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L41:
	movl	-24(%ebp), %eax
	.loc 1 418 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	find_end_label, .-find_end_label
	.section	.rodata
	.type	__FUNCTION__.11482, @object
	.size	__FUNCTION__.11482, 20
__FUNCTION__.11482:
	.string	"emit_delay_sequence"
	.text
	.type	emit_delay_sequence, @function
emit_delay_sequence:
.LFB20:
	.loc 1 435 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$68, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 436 0
	movl	$1, -52(%ebp)
	.loc 1 438 0
	movl	$0, -44(%ebp)
	.loc 1 441 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 442 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$24, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, -36(%ebp)
	.loc 1 443 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_insn_raw@PLT
	movl	%eax, -32(%ebp)
	.loc 1 444 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	.loc 1 445 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 448 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L74
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L74
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 456 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 457 0
	movl	$1, -44(%ebp)
.L74:
	.loc 1 461 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 462 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 464 0
	movl	8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L77
	.loc 1 465 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
.L77:
	.loc 1 467 0
	movl	8(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L79
	.loc 1 468 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 20(%edx)
.L79:
	.loc 1 475 0
	movl	8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L81
	.loc 1 476 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_new_first_and_last_insn@PLT
.L81:
	.loc 1 478 0
	movl	8(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L83
	.loc 1 479 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_new_first_and_last_insn@PLT
.L83:
	.loc 1 482 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 483 0
	movl	-20(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-9, %eax
	movb	%al, 3(%edx)
	.loc 1 484 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 486 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L85
.L86:
.LBB8:
	.loc 1 488 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 492 0
	movl	-16(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-9, %eax
	movb	%al, 3(%edx)
	.loc 1 494 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-52(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%ecx,%edx,4)
	.loc 1 495 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 496 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 498 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L87
.L88:
	.loc 1 500 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 501 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L90
	cmpl	$13, -56(%ebp)
	je	.L91
	jmp	.L89
.L90:
	.loc 1 506 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 507 0
	jmp	.L89
.L91:
	.loc 1 511 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L89
	.loc 1 512 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
.L89:
	.loc 1 498 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L87:
	cmpl	$0, -12(%ebp)
	jne	.L88
.LBE8:
	.loc 1 486 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	addl	$1, -52(%ebp)
.L85:
	cmpl	$0, -48(%ebp)
	jne	.L86
	.loc 1 521 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 527 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L95
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L95
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L95
	.loc 1 529 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 20(%edx)
.L95:
	.loc 1 533 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L99
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L99
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L99
	.loc 1 535 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
.L99:
	.loc 1 538 0
	cmpl	$0, -44(%ebp)
	je	.L103
	.loc 1 539 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L103:
	.loc 1 541 0
	movl	16(%ebp), %eax
	addl	$1, %eax
	cmpl	-52(%ebp), %eax
	je	.L105
	.loc 1 542 0
	leal	__FUNCTION__.11482@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$542, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L105:
	.loc 1 544 0
	movl	-32(%ebp), %eax
	.loc 1 545 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	emit_delay_sequence, .-emit_delay_sequence
	.type	add_to_delay_list, @function
add_to_delay_list:
.LFB21:
	.loc 1 554 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$20, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 559 0
	cmpl	$0, 12(%ebp)
	jne	.L109
	.loc 1 561 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_hashed_info_for_insn@PLT
	.loc 1 562 0
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, -8(%ebp)
	jmp	.L111
.L109:
	.loc 1 567 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 569 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L111:
	movl	-8(%ebp), %eax
	.loc 1 570 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	add_to_delay_list, .-add_to_delay_list
	.type	delete_from_delay_slot, @function
delete_from_delay_slot:
.LFB22:
	.loc 1 578 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$52, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 580 0
	movl	$0, -16(%ebp)
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 588 0
	jmp	.L114
.L115:
	.loc 1 589 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L114:
	.loc 1 588 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L115
	.loc 1 592 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 593 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 597 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jle	.L117
	.loc 1 598 0
	movl	$1, -12(%ebp)
	jmp	.L119
.L120:
	.loc 1 599 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	je	.L121
	.loc 1 600 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_delay_list
	movl	%eax, -16(%ebp)
.L121:
	.loc 1 598 0
	addl	$1, -12(%ebp)
.L119:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L120
.L117:
	.loc 1 604 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 605 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 606 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 607 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn_after@PLT
	.loc 1 609 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L123
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L125
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L123
.L125:
	.loc 1 611 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L123:
	.loc 1 615 0
	cmpl	$0, -16(%ebp)
	je	.L127
	.loc 1 616 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$2, %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_delay_sequence
	movl	%eax, -32(%ebp)
	jmp	.L129
.L127:
	.loc 1 617 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L130
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L130
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L129
.L130:
	.loc 1 620 0
	movl	-32(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 3(%eax)
.L129:
	.loc 1 622 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
.LBB9:
	.loc 1 625 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L133
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L133:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE9:
	.loc 1 627 0
	movl	-32(%ebp), %eax
	.loc 1 628 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	delete_from_delay_slot, .-delete_from_delay_slot
	.type	delete_scheduled_jump, @function
delete_scheduled_jump:
.LFB23:
	.loc 1 636 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$4, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 676 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 677 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	delete_scheduled_jump, .-delete_scheduled_jump
	.type	note_delay_statistics, @function
note_delay_statistics:
.LFB24:
	.loc 1 694 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%edi
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 695 0
	movl	12(%ebp), %ecx
	movl	reorg_pass_number@GOTOFF(%ebx), %esi
	leal	(%ecx,%ecx), %eax
	addl	%esi, %eax
	movl	num_insns_needing_delays@GOTOFF(%ebx,%eax,4), %eax
	leal	1(%eax), %edx
	leal	(%ecx,%ecx), %eax
	addl	%esi, %eax
	movl	%edx, num_insns_needing_delays@GOTOFF(%ebx,%eax,4)
	.loc 1 696 0
	cmpl	$3, 8(%ebp)
	jle	.L139
	.loc 1 697 0
	movl	$3, 8(%ebp)
.L139:
	.loc 1 698 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %esi
	movl	reorg_pass_number@GOTOFF(%ebx), %edi
	leal	0(,%ecx,4), %eax
	addl	%esi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	num_filled_delays@GOTOFF(%ebx,%eax,4), %eax
	leal	1(%eax), %edx
	leal	0(,%ecx,4), %eax
	addl	%esi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	%edx, num_filled_delays@GOTOFF(%ebx,%eax,4)
	.loc 1 699 0
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	note_delay_statistics, .-note_delay_statistics
	.type	optimize_skip, @function
optimize_skip:
.LFB25:
	.loc 1 738 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$52, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 739 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 740 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 741 0
	movl	$0, -16(%ebp)
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -8(%ebp)
	.loc 1 747 0
	cmpl	$0, -24(%ebp)
	je	.L143
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L143
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L143
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L147
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L143
	jmp	.L150
.L147:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	testl	%eax, %eax
	js	.L143
.L150:
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	jne	.L151
	jmp	.L143
.L151:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L153
.L143:
	.loc 1 754 0
	movl	$0, -40(%ebp)
	jmp	.L154
.L153:
	.loc 1 762 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	cmpl	-20(%ebp), %eax
	jne	.L155
	cmpl	$0, -20(%ebp)
	jne	.L157
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	testl	%eax, %eax
	je	.L157
.L155:
	cmpl	$0, -20(%ebp)
	je	.L159
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L159
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L159
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L157
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L159
.L157:
	.loc 1 770 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	je	.L164
	.loc 1 772 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L166
	.loc 1 773 0
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$16, %edx
	movb	%dl, 3(%eax)
	jmp	.L164
.L166:
	.loc 1 775 0
	movl	$0, -40(%ebp)
	jmp	.L154
.L164:
	.loc 1 778 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, -16(%ebp)
	.loc 1 779 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 780 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 781 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 787 0
	cmpl	$0, -20(%ebp)
	je	.L168
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L168
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L171
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L168
.L171:
	.loc 1 791 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 792 0
	cmpl	$0, -12(%ebp)
	jne	.L173
	.loc 1 793 0
	call	find_end_label
	movl	%eax, -12(%ebp)
.L173:
	.loc 1 799 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -8(%ebp)
.L168:
	.loc 1 804 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$4, %edx
	movb	%dl, 3(%eax)
.L159:
	.loc 1 807 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L154:
	movl	-40(%ebp), %eax
	.loc 1 808 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	optimize_skip, .-optimize_skip
	.section	.rodata
	.type	__FUNCTION__.11769, @object
	.size	__FUNCTION__.11769, 15
__FUNCTION__.11769:
	.string	"get_jump_flags"
	.text
	.type	get_jump_flags, @function
get_jump_flags:
.LFB26:
	.loc 1 820 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$36, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 829 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L177
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L179
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L177
.L179:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L177
	cmpl	$0, 12(%ebp)
	je	.L177
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L177
	.loc 1 834 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L184
	movl	$1, -24(%ebp)
	jmp	.L186
.L184:
	movl	$2, -24(%ebp)
.L186:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 829 0
	jmp	.L187
.L177:
	.loc 1 839 0
	movl	$0, -12(%ebp)
.L187:
	.loc 1 845 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L188
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L190
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L188
.L190:
.LBB10:
	.loc 1 850 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_branch_condition
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mostly_true_jump
	movl	%eax, -8(%ebp)
	.loc 1 851 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L194
	cmpl	$0, -28(%ebp)
	jg	.L197
	cmpl	$-1, -28(%ebp)
	je	.L193
	jmp	.L192
.L197:
	cmpl	$1, -28(%ebp)
	je	.L195
	cmpl	$2, -28(%ebp)
	je	.L196
	jmp	.L192
.L196:
	.loc 1 854 0
	orl	$12, -12(%ebp)
	.loc 1 855 0
	jmp	.L199
.L195:
	.loc 1 857 0
	orl	$4, -12(%ebp)
	.loc 1 858 0
	jmp	.L199
.L194:
	.loc 1 860 0
	orl	$16, -12(%ebp)
	.loc 1 861 0
	jmp	.L199
.L193:
	.loc 1 863 0
	orl	$48, -12(%ebp)
	.loc 1 864 0
	jmp	.L199
.L192:
	.loc 1 867 0
	leal	__FUNCTION__.11769@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$867, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L188:
.LBE10:
	.loc 1 871 0
	orl	$12, -12(%ebp)
.L199:
	.loc 1 873 0
	movl	-12(%ebp), %eax
	.loc 1 874 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	get_jump_flags, .-get_jump_flags
	.type	rare_destination, @function
rare_destination:
.LFB27:
	.loc 1 884 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$36, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 885 0
	movl	$0, -12(%ebp)
	.loc 1 888 0
	jmp	.L202
.L203:
	.loc 1 890 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L204
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L204
	.loc 1 891 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L204:
	.loc 1 893 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 895 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$45, -28(%ebp)
	je	.L209
	cmpl	$46, -28(%ebp)
	je	.L210
	cmpl	$43, -28(%ebp)
	je	.L208
	jmp	.L207
.L210:
	.loc 1 898 0
	movl	$0, -24(%ebp)
	jmp	.L211
.L209:
	.loc 1 904 0
	movl	$2, -24(%ebp)
	jmp	.L211
.L208:
	.loc 1 906 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L212
	.loc 1 907 0
	movl	$1, -24(%ebp)
	jmp	.L211
.L212:
	.loc 1 908 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L214
	cmpl	$9, -12(%ebp)
	setle	%al
	addl	$1, -12(%ebp)
	xorl	$1, %eax
	testb	%al, %al
	jne	.L214
	.loc 1 910 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 908 0
	jmp	.L207
.L214:
	.loc 1 912 0
	movl	$0, -24(%ebp)
	jmp	.L211
.L207:
	.loc 1 888 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L202:
	cmpl	$0, 8(%ebp)
	jne	.L203
	.loc 1 922 0
	movl	$1, -24(%ebp)
.L211:
	movl	-24(%ebp), %eax
	.loc 1 923 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	rare_destination, .-rare_destination
	.type	mostly_true_jump, @function
mostly_true_jump:
.LFB28:
	.loc 1 936 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$68, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 939 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rare_destination
	movl	%eax, -16(%ebp)
	.loc 1 940 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	rare_destination
	movl	%eax, -12(%ebp)
	.loc 1 944 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 945 0
	cmpl	$0, -20(%ebp)
	je	.L220
.LBB11:
	.loc 1 947 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 949 0
	cmpl	$8999, -8(%ebp)
	jle	.L222
	.loc 1 950 0
	movl	$2, -44(%ebp)
	jmp	.L224
.L222:
	.loc 1 951 0
	cmpl	$4999, -8(%ebp)
	jle	.L225
	.loc 1 952 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L225:
	.loc 1 953 0
	cmpl	$999, -8(%ebp)
	jle	.L227
	.loc 1 954 0
	movl	$0, -44(%ebp)
	jmp	.L224
.L227:
	.loc 1 956 0
	movl	$-1, -44(%ebp)
	jmp	.L224
.L220:
.LBE11:
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L229
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L229
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L232
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L234
.L232:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L229
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L229
.L234:
	.loc 1 968 0
	movl	$-1, -44(%ebp)
	jmp	.L224
.L229:
	.loc 1 970 0
	cmpl	$0, -28(%ebp)
	je	.L236
	.loc 1 976 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 977 0
	jmp	.L238
.L239:
	.loc 1 979 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L240
	.loc 1 980 0
	movl	$2, -44(%ebp)
	jmp	.L224
.L240:
	.loc 1 978 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L238:
	.loc 1 977 0
	cmpl	$0, -24(%ebp)
	je	.L242
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L239
.L242:
	.loc 1 986 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 987 0
	jmp	.L244
.L245:
	.loc 1 989 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-93, %eax
	jne	.L246
	.loc 1 990 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L246:
	.loc 1 988 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L244:
	.loc 1 987 0
	cmpl	$0, -24(%ebp)
	je	.L236
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L245
.L236:
	.loc 1 996 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$2, %eax
	movl	%eax, -48(%ebp)
	cmpl	$4, -48(%ebp)
	ja	.L249
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L255@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L255:
	.long	.L250@GOTOFF
	.long	.L251@GOTOFF
	.long	.L249@GOTOFF
	.long	.L253@GOTOFF
	.long	.L254@GOTOFF
	.text
.L250:
	.loc 1 999 0
	movl	$-1, -44(%ebp)
	jmp	.L224
.L251:
	.loc 1 1001 0
	movl	$0, -44(%ebp)
	jmp	.L224
.L253:
	.loc 1 1005 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L254:
	.loc 1 1007 0
	movl	$2, -44(%ebp)
	jmp	.L224
.L249:
	.loc 1 1012 0
	cmpl	$0, 12(%ebp)
	jne	.L256
	.loc 1 1013 0
	movl	$0, -44(%ebp)
	jmp	.L224
.L256:
	.loc 1 1018 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -52(%ebp)
	cmpl	$53, -52(%ebp)
	ja	.L258
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L264@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L264:
	.long	.L259@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L258@GOTOFF
	.long	.L260@GOTOFF
	.long	.L261@GOTOFF
	.long	.L262@GOTOFF
	.long	.L262@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.text
.L259:
	.loc 1 1022 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L261:
	.loc 1 1024 0
	movl	$0, -44(%ebp)
	jmp	.L224
.L260:
	.loc 1 1026 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L263:
	.loc 1 1029 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L258
	.loc 1 1030 0
	movl	$0, -44(%ebp)
	jmp	.L224
.L262:
	.loc 1 1034 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L258
	.loc 1 1035 0
	movl	$1, -44(%ebp)
	jmp	.L224
.L258:
	.loc 1 1045 0
	cmpl	$0, -28(%ebp)
	je	.L268
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L268
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L268
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L272
.L268:
	movl	$1, -40(%ebp)
	jmp	.L273
.L272:
	movl	$0, -40(%ebp)
.L273:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L224:
	movl	-44(%ebp), %eax
	.loc 1 1049 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	mostly_true_jump, .-mostly_true_jump
	.type	get_branch_condition, @function
get_branch_condition:
.LFB29:
	.loc 1 1060 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$52, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1061 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1064 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L276
	.loc 1 1065 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L276:
	.loc 1 1067 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L278
	.loc 1 1068 0
	cmpl	$0, 12(%ebp)
	jne	.L280
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L282
.L280:
	movl	$0, -24(%ebp)
.L282:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L283
.L278:
	.loc 1 1070 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L284
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L286
.L284:
	.loc 1 1071 0
	movl	$0, -28(%ebp)
	jmp	.L283
.L286:
	.loc 1 1073 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1074 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L287
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L287
	.loc 1 1075 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L283
.L287:
	.loc 1 1077 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L290
	cmpl	$0, 12(%ebp)
	jne	.L292
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L294
.L292:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L290
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L290
.L294:
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L290
	.loc 1 1082 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L283
.L290:
	.loc 1 1084 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L297
	cmpl	$0, 12(%ebp)
	jne	.L299
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L301
.L299:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L297
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L297
.L301:
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L297
.LBB12:
	.loc 1 1091 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1092 0
	cmpl	$0, -8(%ebp)
	je	.L297
	.loc 1 1093 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -28(%ebp)
	jmp	.L283
.L297:
.LBE12:
	.loc 1 1098 0
	movl	$0, -28(%ebp)
.L283:
	movl	-28(%ebp), %eax
	.loc 1 1099 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	get_branch_condition, .-get_branch_condition
	.type	condition_dominates_p, @function
condition_dominates_p:
.LFB30:
	.loc 1 1108 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$36, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1109 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_branch_condition
	movl	%eax, -16(%ebp)
	.loc 1 1110 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1113 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L307
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L309
.L307:
	.loc 1 1115 0
	movl	$1, -24(%ebp)
	jmp	.L310
.L309:
	.loc 1 1117 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	.L311
	cmpl	$0, -16(%ebp)
	jne	.L313
.L311:
	.loc 1 1118 0
	movl	$0, -24(%ebp)
	jmp	.L310
.L313:
	.loc 1 1120 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1121 0
	movl	-12(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$2, %al
	jne	.L314
	movl	-8(%ebp), %eax
	movl	rtx_length@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$2, %al
	jne	.L314
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L314
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L318
.L314:
	.loc 1 1124 0
	movl	$0, -24(%ebp)
	jmp	.L310
.L318:
	.loc 1 1126 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_dominates_p@PLT
	movl	%eax, -24(%ebp)
.L310:
	movl	-24(%ebp), %eax
	.loc 1 1127 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	condition_dominates_p, .-condition_dominates_p
	.type	redirect_with_delay_slots_safe_p, @function
redirect_with_delay_slots_safe_p:
.LFB31:
	.loc 1 1135 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$36, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1137 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1143 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -16(%ebp)
	.loc 1 1144 0
	movl	$1, -12(%ebp)
	jmp	.L321
.L322:
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L323
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L323
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-12(%ebp), %ecx
	subl	$1, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	sete	-21(%ebp)
	jmp	.L326
.L323:
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-12(%ebp), %ecx
	subl	$1, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	sete	-21(%ebp)
.L326:
	cmpb	$0, -21(%ebp)
	jne	.L327
	.loc 1 1144 0
	addl	$1, -12(%ebp)
.L321:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L322
.L327:
	.loc 1 1161 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 1162 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	redirect_with_delay_slots_safe_p, .-redirect_with_delay_slots_safe_p
	.type	redirect_with_delay_list_safe_p, @function
redirect_with_delay_list_safe_p:
.LFB32:
	.loc 1 1170 0
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
	.loc 1 1178 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -16(%ebp)
	.loc 1 1179 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L331
.L332:
	.loc 1 1180 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L333
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L333
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	sete	-21(%ebp)
	jmp	.L336
.L333:
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	sete	-21(%ebp)
.L336:
	cmpb	$0, -21(%ebp)
	jne	.L337
	.loc 1 1179 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	addl	$1, -12(%ebp)
.L331:
	cmpl	$0, -8(%ebp)
	jne	.L332
.L337:
	.loc 1 1194 0
	cmpl	$0, -8(%ebp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 1195 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	redirect_with_delay_list_safe_p, .-redirect_with_delay_list_safe_p
	.type	check_annul_list_true_false, @function
check_annul_list_true_false:
.LFB33:
	.loc 1 1205 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$20, %esp
.LCFI76:
	.loc 1 1208 0
	cmpl	$0, 12(%ebp)
	je	.L341
	.loc 1 1210 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L343
.L344:
.LBB13:
	.loc 1 1212 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1214 0
	cmpl	$0, 8(%ebp)
	je	.L345
	movl	-4(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L347
.L345:
	cmpl	$0, 8(%ebp)
	jne	.L348
	movl	-4(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L348
.L347:
	.loc 1 1216 0
	movl	$0, -20(%ebp)
	jmp	.L350
.L348:
.LBE13:
	.loc 1 1210 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L343:
	cmpl	$0, -8(%ebp)
	jne	.L344
.L341:
	.loc 1 1220 0
	movl	$1, -20(%ebp)
.L350:
	movl	-20(%ebp), %eax
	.loc 1 1221 0
	leave
	ret
.LFE33:
	.size	check_annul_list_true_false, .-check_annul_list_true_false
	.type	steal_delay_list_from_target, @function
steal_delay_list_from_target:
.LFB34:
	.loc 1 1256 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$116, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1258 0
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	36(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1259 0
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1260 0
	movl	$0, -36(%ebp)
	.loc 1 1261 0
	movl	44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1262 0
	movl	$0, -28(%ebp)
	.loc 1 1282 0
	movb	$0, -73(%ebp)
	movzbl	-73(%ebp), %eax
	movb	%al, -74(%ebp)
	movzbl	-74(%ebp), %eax
	movb	%al, -75(%ebp)
	movzbl	-75(%ebp), %eax
	movb	%al, -76(%ebp)
.LBB14:
	leal	-76(%ebp), %eax
	addl	$4, %eax
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
.LBE14:
	.loc 1 1283 0
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L353
.L354:
.LBB15:
	.loc 1 1285 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1287 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1288 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	je	.L355
	.loc 1 1289 0
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L357
.L355:
.LBE15:
	.loc 1 1283 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L353:
	cmpl	$0, -48(%ebp)
	jne	.L354
	.loc 1 1292 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	cmpl	-44(%ebp), %eax
	jg	.L359
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	condition_dominates_p
	testl	%eax, %eax
	je	.L359
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L359
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L363
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L359
	jmp	.L365
.L363:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	testl	%eax, %eax
	jne	.L365
.L359:
	.loc 1 1295 0
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L357
.L365:
	.loc 1 1305 0
	movl	$1, -24(%ebp)
	jmp	.L366
.L367:
.LBB16:
	.loc 1 1307 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1310 0
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L368
	movl	$0, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L368
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L368
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L372
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L372
.L368:
	.loc 1 1322 0
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L357
.L372:
	.loc 1 1326 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	redundant_insn
	testl	%eax, %eax
	jne	.L374
	.loc 1 1331 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -8(%ebp)
	.loc 1 1333 0
	cmpl	$0, -32(%ebp)
	jne	.L376
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	.L378
	movl	$0, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L376
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L376
.L378:
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	setne	-93(%ebp)
	jmp	.L381
.L376:
	cmpl	$0, -32(%ebp)
	jne	.L382
	cmpl	$0, 20(%ebp)
	jne	.L384
	cmpl	$0, -36(%ebp)
	jne	.L384
.L382:
	movl	$1, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	check_annul_list_true_false
	testl	%eax, %eax
	je	.L386
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	check_annul_list_true_false
	testl	%eax, %eax
	je	.L386
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	je	.L386
	movl	$1, -88(%ebp)
	jmp	.L390
.L386:
	movl	$0, -88(%ebp)
.L390:
	cmpl	$0, -88(%ebp)
	je	.L384
	movl	$1, -92(%ebp)
	jmp	.L392
.L384:
	movl	$0, -92(%ebp)
.L392:
	movzbl	-92(%ebp), %eax
	movb	%al, -93(%ebp)
.L381:
	cmpb	$0, -93(%ebp)
	je	.L393
	.loc 1 1345 0
	cmpl	$0, -32(%ebp)
	je	.L395
	.loc 1 1346 0
	movl	$1, -28(%ebp)
.L395:
	.loc 1 1347 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1348 0
	movl	-48(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	.loc 1 1349 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, -36(%ebp)
	.loc 1 1350 0
	addl	$1, -40(%ebp)
	.loc 1 1352 0
	subl	$1, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L397
	.loc 1 1353 0
	jmp	.L374
.L393:
	.loc 1 1356 0
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L357
.L374:
.LBE16:
	.loc 1 1305 0
	addl	$1, -24(%ebp)
.L366:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L367
.L397:
	.loc 1 1360 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %edx
	movl	48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1364 0
	movl	40(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1365 0
	cmpl	$0, -28(%ebp)
	je	.L399
	.loc 1 1366 0
	movl	44(%ebp), %eax
	movl	$1, (%eax)
.L399:
	.loc 1 1368 0
	cmpl	$0, 20(%ebp)
	jne	.L401
	.loc 1 1369 0
	movl	-36(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L357
.L401:
	.loc 1 1371 0
	movl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L403
.L404:
	.loc 1 1372 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_delay_list
	movl	%eax, 20(%ebp)
	.loc 1 1371 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L403:
	cmpl	$0, -48(%ebp)
	jne	.L404
	.loc 1 1374 0
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
.L357:
	movl	-100(%ebp), %eax
	.loc 1 1375 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	steal_delay_list_from_target, .-steal_delay_list_from_target
	.type	steal_delay_list_from_fallthrough, @function
steal_delay_list_from_fallthrough:
.LFB35:
	.loc 1 1393 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$68, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1396 0
	movl	44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1397 0
	movl	$0, -12(%ebp)
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -20(%ebp)
	.loc 1 1404 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L408
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L408
	.loc 1 1406 0
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L411
.L408:
	.loc 1 1408 0
	movl	$1, -24(%ebp)
	jmp	.L412
.L413:
.LBB17:
	.loc 1 1410 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1414 0
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L414
	movl	$0, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L414
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L414
	.loc 1 1425 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	redundant_insn
	testl	%eax, %eax
	je	.L418
	.loc 1 1427 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_delay_slot
	.loc 1 1428 0
	jmp	.L420
.L418:
	.loc 1 1431 0
	cmpl	$0, -16(%ebp)
	jne	.L421
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	.L423
	movl	$0, 8(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L421
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L421
.L423:
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	setne	-37(%ebp)
	jmp	.L426
.L421:
	cmpl	$0, -16(%ebp)
	jne	.L427
	cmpl	$0, 20(%ebp)
	jne	.L429
.L427:
	movl	$1, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	check_annul_list_true_false
.L429:
	movl	$0, %eax
	movb	%al, -37(%ebp)
.L426:
	cmpb	$0, -37(%ebp)
	je	.L414
	.loc 1 1440 0
	cmpl	$0, -16(%ebp)
	je	.L431
	.loc 1 1441 0
	movl	$1, -12(%ebp)
.L431:
	.loc 1 1442 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_delay_slot
	.loc 1 1443 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, 20(%ebp)
	.loc 1 1445 0
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	40(%ebp), %eax
	movl	%edx, (%eax)
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	36(%ebp), %eax
	je	.L414
.L420:
.LBE17:
	.loc 1 1408 0
	addl	$1, -24(%ebp)
.L412:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L413
.L414:
	.loc 1 1452 0
	cmpl	$0, -12(%ebp)
	je	.L433
	.loc 1 1453 0
	movl	44(%ebp), %eax
	movl	$1, (%eax)
.L433:
	.loc 1 1454 0
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L411:
	movl	-44(%ebp), %eax
	.loc 1 1455 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	steal_delay_list_from_fallthrough, .-steal_delay_list_from_fallthrough
	.type	try_merge_delay_insns, @function
try_merge_delay_insns:
.LFB36:
	.loc 1 1469 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$164, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1471 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1472 0
	movl	-72(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	.loc 1 1473 0
	movl	$1, -64(%ebp)
	.loc 1 1474 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1475 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1477 0
	movl	$0, -52(%ebp)
	.loc 1 1481 0
	movl	-72(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -44(%ebp)
	.loc 1 1483 0
	movb	$0, -133(%ebp)
	movzbl	-133(%ebp), %eax
	movb	%al, -134(%ebp)
	movzbl	-134(%ebp), %eax
	movb	%al, -135(%ebp)
	movzbl	-135(%ebp), %eax
	movb	%al, -136(%ebp)
.LBB18:
	leal	-136(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE18:
	.loc 1 1484 0
	movb	$0, -105(%ebp)
	movzbl	-105(%ebp), %eax
	movb	%al, -106(%ebp)
	movzbl	-106(%ebp), %eax
	movb	%al, -107(%ebp)
	movzbl	-107(%ebp), %eax
	movb	%al, -108(%ebp)
.LBB19:
	leal	-108(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE19:
	.loc 1 1492 0
	cmpl	$0, -68(%ebp)
	jne	.L437
	.loc 1 1493 0
	movl	$1, -48(%ebp)
	jmp	.L439
.L440:
	.loc 1 1494 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 1495 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
.L441:
	.loc 1 1493 0
	addl	$1, -48(%ebp)
.L439:
	movl	-48(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L440
.L437:
	.loc 1 1497 0
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L443
.L444:
.LBB20:
	.loc 1 1499 0
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1500 0
	movl	-80(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1502 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1505 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L445
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L447
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L447
.L445:
	.loc 1 1509 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %edx
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L449
	movl	$1, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L449
	movl	$1, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L449
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L449
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L449
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L449
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L456
	movl	-80(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	.L458
.L456:
	movl	12(%ebp), %eax
	movl	%eax, -152(%ebp)
.L458:
	movl	-152(%ebp), %eax
	movl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L449
	movl	-80(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L449
	movl	-64(%ebp), %edx
	subl	$1, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L449
	.loc 1 1528 0
	cmpl	$0, -68(%ebp)
	jne	.L462
	.loc 1 1530 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 1531 0
	movl	-80(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L464
	.loc 1 1532 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, 12(%ebp)
.L464:
	.loc 1 1534 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 1535 0
	movl	-56(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	jmp	.L466
.L462:
	.loc 1 1538 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, -52(%ebp)
.L466:
	.loc 1 1540 0
	addl	$1, -64(%ebp)
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L467
	.loc 1 1543 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -56(%ebp)
.L449:
	.loc 1 1546 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1547 0
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
.L447:
.LBE20:
	.loc 1 1497 0
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
.L443:
	movl	$1, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	stop_search_p
	testl	%eax, %eax
	je	.L444
.L467:
	.loc 1 1552 0
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L469
	cmpl	$0, -80(%ebp)
	je	.L469
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L469
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L469
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L469
.LBB21:
	.loc 1 1557 0
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1558 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1561 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1562 0
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 1564 0
	movl	$1, -48(%ebp)
	jmp	.L475
.L476:
.LBB22:
	.loc 1 1566 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1568 0
	movl	$1, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L477
	movl	$1, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L477
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L477
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L477
	movl	-64(%ebp), %edx
	subl	$1, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L477
	.loc 1 1577 0
	cmpl	$0, -68(%ebp)
	jne	.L483
.LBB23:
	.loc 1 1581 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 1582 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_delay_slot
	movl	%eax, -12(%ebp)
	.loc 1 1583 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L485
	.loc 1 1584 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
.L485:
	.loc 1 1585 0
	movl	-56(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 3(%eax)
	jmp	.L487
.L483:
.LBE23:
	.loc 1 1588 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, -52(%ebp)
.L487:
	.loc 1 1591 0
	addl	$1, -64(%ebp)
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L469
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1568 0
	jmp	.L489
.L477:
	.loc 1 1600 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1601 0
	movl	$1, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
.L489:
.LBE22:
	.loc 1 1564 0
	addl	$1, -48(%ebp)
.L475:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L476
.L469:
.LBE21:
	.loc 1 1611 0
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L503
	cmpl	$0, -68(%ebp)
	je	.L503
	.loc 1 1613 0
	jmp	.L493
.L494:
	.loc 1 1615 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$4, %al
	jne	.L495
.LBB24:
	.loc 1 1619 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_block
	.loc 1 1620 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_from_delay_slot
	movl	%eax, -8(%ebp)
	.loc 1 1621 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L499
	.loc 1 1622 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L499
.L495:
.LBE24:
	.loc 1 1626 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_block
	.loc 1 1627 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L499:
	.loc 1 1613 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
.L493:
	cmpl	$0, -52(%ebp)
	jne	.L494
	.loc 1 1631 0
	movl	-72(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 3(%eax)
	.loc 1 1633 0
	movl	$0, -48(%ebp)
	jmp	.L501
.L502:
	.loc 1 1634 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 1633 0
	addl	$1, -48(%ebp)
.L501:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L502
.L503:
	.loc 1 1636 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	try_merge_delay_insns, .-try_merge_delay_insns
	.type	redundant_insn, @function
redundant_insn:
.LFB37:
	.loc 1 1662 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%edi
.LCFI91:
	pushl	%esi
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$172, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1663 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1664 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1672 0
	movl	$0, 8(%esp)
	movl	$10, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L505
	.loc 1 1673 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L505:
	.loc 1 1677 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$72, %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1678 0
	jmp	.L508
.L509:
	.loc 1 1681 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L510
	.loc 1 1682 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L510:
	.loc 1 1684 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L512
	.loc 1 1687 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1688 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L512
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L512
	.loc 1 1691 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L516
	.loc 1 1695 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L518
	.loc 1 1696 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L518:
	.loc 1 1714 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L520
.L521:
	.loc 1 1715 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L522
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L522
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L525
.L522:
	.loc 1 1714 0
	subl	$1, -44(%ebp)
.L520:
	cmpl	$0, -44(%ebp)
	jg	.L521
.L525:
	.loc 1 1721 0
	cmpl	$0, -44(%ebp)
	jg	.L526
	.loc 1 1722 0
	jmp	.L512
.L516:
	.loc 1 1725 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %edx
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L512
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L512
	movl	$0, 8(%esp)
	movl	$10, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L526
.L512:
	.loc 1 1679 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	subl	$1, -40(%ebp)
.L508:
	.loc 1 1678 0
	cmpl	$0, -52(%ebp)
	je	.L526
	cmpl	$0, -40(%ebp)
	jne	.L509
.L526:
	.loc 1 1731 0
	cmpl	$0, -52(%ebp)
	jne	.L531
	.loc 1 1732 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L531:
	.loc 1 1737 0
	movb	$0, -85(%ebp)
	movzbl	-85(%ebp), %eax
	movb	%al, -86(%ebp)
	movzbl	-86(%ebp), %eax
	movb	%al, -87(%ebp)
	movzbl	-87(%ebp), %eax
	movb	%al, -88(%ebp)
.LBB25:
	leal	-88(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE25:
	.loc 1 1738 0
	movb	$0, -113(%ebp)
	movzbl	-113(%ebp), %eax
	movb	%al, -114(%ebp)
	movzbl	-114(%ebp), %eax
	movb	%al, -115(%ebp)
	movzbl	-115(%ebp), %eax
	movb	%al, -116(%ebp)
.LBB26:
	leal	-116(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE26:
	.loc 1 1739 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1740 0
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 1743 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L533
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L533
	.loc 1 1744 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L533:
	.loc 1 1746 0
	leal	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	resource_conflicts_p
	testl	%eax, %eax
	jne	.L536
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L536
	movl	$1, 8(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L539
.L536:
	.loc 1 1754 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L539:
	.loc 1 1758 0
	movzbl	-88(%ebp), %edx
	movzbl	-116(%ebp), %eax
	orl	%edx, %eax
	movb	%al, -88(%ebp)
	.loc 1 1759 0
	movzbl	-87(%ebp), %edx
	movzbl	-115(%ebp), %eax
	orl	%edx, %eax
	movb	%al, -87(%ebp)
.LBB27:
	.loc 1 1760 0
	leal	-88(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	leal	-116(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$8, %ecx
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-144(%ebp), %eax
	orl	%esi, %eax
	movl	-140(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$16, %ecx
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1765 0
	jmp	.L540
.L541:
.LBE27:
	.loc 1 1767 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L542
	.loc 1 1768 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L542:
	.loc 1 1769 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 16(%ebp)
.L540:
	.loc 1 1765 0
	cmpl	$0, 16(%ebp)
	jne	.L541
	.loc 1 1772 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L545
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L545
	.loc 1 1773 0
	movl	$1, -44(%ebp)
	jmp	.L548
.L549:
	.loc 1 1774 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L550
	.loc 1 1775 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L550:
	.loc 1 1773 0
	addl	$1, -44(%ebp)
.L548:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L549
.L545:
	.loc 1 1781 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$72, %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1782 0
	jmp	.L552
.L553:
	.loc 1 1785 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L554
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L554
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L557
.L554:
	.loc 1 1789 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1790 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L557
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L557
	.loc 1 1793 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L560
	.loc 1 1797 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L562
	.loc 1 1798 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L562:
	.loc 1 1815 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L564
.L565:
.LBB28:
	.loc 1 1817 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1821 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L566
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L568
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L566
.L568:
	.loc 1 1826 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 3(%eax)
	.loc 1 1827 0
	movl	-20(%ebp), %edi
	movl	%edi, -156(%ebp)
	jmp	.L507
.L566:
	.loc 1 1832 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L570
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L572
.L570:
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L572
	.loc 1 1835 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L572:
.LBE28:
	.loc 1 1815 0
	subl	$1, -44(%ebp)
.L564:
	cmpl	$0, -44(%ebp)
	jg	.L565
	.loc 1 1840 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L557
	.loc 1 1841 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L560:
	.loc 1 1846 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1847 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L577
	.loc 1 1848 0
	movl	-52(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L507
.L577:
	.loc 1 1851 0
	movl	$1, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	je	.L557
	.loc 1 1852 0
	movl	$0, -156(%ebp)
	jmp	.L507
.L557:
	.loc 1 1783 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	subl	$1, -40(%ebp)
.L552:
	.loc 1 1782 0
	cmpl	$0, -52(%ebp)
	je	.L580
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L580
	cmpl	$0, -40(%ebp)
	jne	.L553
.L580:
	.loc 1 1856 0
	movl	$0, -156(%ebp)
.L507:
	movl	-156(%ebp), %eax
	.loc 1 1857 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	redundant_insn, .-redundant_insn
	.type	own_thread_p, @function
own_thread_p:
.LFB38:
	.loc 1 1872 0
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
	.loc 1 1877 0
	cmpl	$0, 8(%ebp)
	jne	.L585
	.loc 1 1878 0
	movl	$0, -24(%ebp)
	jmp	.L587
.L585:
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1883 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L588
.L589:
	.loc 1 1884 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L590
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L592
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	$1, %eax
	je	.L590
.L592:
	.loc 1 1886 0
	movl	$0, -24(%ebp)
	jmp	.L587
.L590:
	.loc 1 1883 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L588:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L589
	.loc 1 1888 0
	cmpl	$0, 16(%ebp)
	je	.L595
	.loc 1 1889 0
	movl	$1, -24(%ebp)
	jmp	.L587
.L595:
	.loc 1 1892 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1893 0
	jmp	.L597
.L598:
	.loc 1 1895 0
	cmpl	$0, -8(%ebp)
	je	.L599
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L599
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L602
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L602
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L602
.L599:
	.loc 1 1900 0
	movl	$0, -24(%ebp)
	jmp	.L587
.L602:
	.loc 1 1894 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
.L597:
	.loc 1 1893 0
	cmpl	$0, -8(%ebp)
	je	.L598
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L598
	.loc 1 1902 0
	movl	$1, -24(%ebp)
.L587:
	movl	-24(%ebp), %eax
	.loc 1 1903 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	own_thread_p, .-own_thread_p
	.type	update_block, @function
update_block:
.LFB39:
	.loc 1 1918 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$20, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1921 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L611
	.loc 1 1924 0
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
	.loc 1 1929 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	incr_ticks_for_insn@PLT
.L611:
	.loc 1 1930 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	update_block, .-update_block
	.type	reorg_redirect_jump, @function
reorg_redirect_jump:
.LFB40:
	.loc 1 1939 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$20, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1940 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	incr_ticks_for_insn@PLT
	.loc 1 1941 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	.loc 1 1942 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	reorg_redirect_jump, .-reorg_redirect_jump
	.type	update_reg_dead_notes, @function
update_reg_dead_notes:
.LFB41:
	.loc 1 1958 0
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
	.loc 1 1961 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L615
.L616:
	.loc 1 1963 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L617
.L618:
	.loc 1 1965 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1967 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L619
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L619
	.loc 1 1971 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L619
	.loc 1 1974 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1975 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1976 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 68(%edx)
.L619:
	.loc 1 1963 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L617:
	cmpl	$0, -12(%ebp)
	jne	.L618
	.loc 1 1962 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
.L615:
	.loc 1 1961 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L616
	.loc 1 1979 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	update_reg_dead_notes, .-update_reg_dead_notes
	.type	fix_reg_dead_note, @function
fix_reg_dead_note:
.LFB42:
	.loc 1 1992 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$36, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1995 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L627
.L628:
	.loc 1 1997 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L629
.L630:
	.loc 1 1999 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2001 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L631
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L631
	.loc 1 2005 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L631
	.loc 1 2007 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 2008 0
	jmp	.L637
.L631:
	.loc 1 1997 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L629:
	cmpl	$0, -12(%ebp)
	jne	.L630
	.loc 1 1996 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
.L627:
	.loc 1 1995 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L628
.L637:
	.loc 1 2011 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	fix_reg_dead_note, .-fix_reg_dead_note
	.type	update_reg_unused_notes, @function
update_reg_unused_notes:
.LFB43:
	.loc 1 2023 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$36, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2026 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L639
.L640:
	.loc 1 2028 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2030 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L641
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L641
	.loc 1 2034 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	jne	.L641
	.loc 1 2036 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L641:
	.loc 1 2026 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L639:
	cmpl	$0, -12(%ebp)
	jne	.L640
	.loc 1 2038 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	update_reg_unused_notes, .-update_reg_unused_notes
	.type	fill_simple_delay_slots, @function
fill_simple_delay_slots:
.LFB44:
	.loc 1 2057 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%esi
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$192, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2060 0
	movl	12+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, -72(%ebp)
	.loc 1 2065 0
	movl	$0, -76(%ebp)
	jmp	.L648
.L649:
.LBB29:
	.loc 1 2071 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 2072 0
	cmpl	$0, -92(%ebp)
	je	.L650
	movl	-92(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L650
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L653
	movl	-92(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L650
.L653:
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L655
	cmpl	$0, 8(%ebp)
	jne	.L650
.L655:
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L657
	cmpl	$0, 8(%ebp)
	je	.L650
.L657:
	.loc 1 2084 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	movl	%eax, -68(%ebp)
	.loc 1 2097 0
	cmpl	$0, -68(%ebp)
	je	.L650
	.loc 1 2118 0
	movl	$0, -96(%ebp)
	.loc 1 2119 0
	movl	$0, -64(%ebp)
	.loc 1 2121 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L660
	.loc 1 2122 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -60(%ebp)
	jmp	.L662
.L660:
	.loc 1 2124 0
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -60(%ebp)
.L662:
	.loc 1 2126 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -84(%ebp)
	cmpl	$0, -84(%ebp)
	je	.L663
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L663
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L663
	movl	-96(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L663
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L663
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L663
.LBB30:
	.loc 1 2134 0
	movl	-96(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -96(%ebp)
	.loc 1 2135 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, -64(%ebp)
	.loc 1 2143 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -56(%ebp)
	.loc 1 2144 0
	jmp	.L670
.L671:
	.loc 1 2145 0
	addl	$4, -56(%ebp)
.L670:
	.loc 1 2144 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-84(%ebp), %eax
	je	.L672
	movl	12+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	cmpl	-56(%ebp), %eax
	jne	.L671
.L672:
	.loc 1 2149 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L674
	.loc 1 2150 0
	movl	-56(%ebp), %eax
	movl	$0, (%eax)
.L674:
.LBB31:
	.loc 1 2152 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2153 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2154 0
	cmpl	$0, -48(%ebp)
	je	.L676
	.loc 1 2155 0
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 20(%edx)
.L676:
	.loc 1 2156 0
	cmpl	$0, -52(%ebp)
	je	.L663
	.loc 1 2157 0
	movl	-52(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%edx)
.L663:
.LBE31:
.LBE30:
	.loc 1 2173 0
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jge	.L679
	.loc 1 2175 0
	movb	$0, -121(%ebp)
	movzbl	-121(%ebp), %eax
	movb	%al, -122(%ebp)
	movzbl	-122(%ebp), %eax
	movb	%al, -123(%ebp)
	movzbl	-123(%ebp), %eax
	movb	%al, -124(%ebp)
.LBB32:
	leal	-124(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE32:
	.loc 1 2176 0
	movb	$0, -149(%ebp)
	movzbl	-149(%ebp), %eax
	movb	%al, -150(%ebp)
	movzbl	-150(%ebp), %eax
	movb	%al, -151(%ebp)
	movzbl	-151(%ebp), %eax
	movb	%al, -152(%ebp)
.LBB33:
	leal	-152(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE33:
	.loc 1 2177 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2178 0
	movl	$0, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 2180 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -84(%ebp)
	jmp	.L681
.L682:
	.loc 1 2183 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2186 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2189 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L683
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L683
	.loc 1 2194 0
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L686
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L686
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L686
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L686
	.loc 1 2203 0
	movl	$1, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2204 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2205 0
	movl	-96(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L686
	.loc 1 2212 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_dead_notes
	.loc 1 2213 0
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2215 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 2216 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 2217 0
	movl	-96(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L679
	.loc 1 2219 0
	jmp	.L683
.L686:
	.loc 1 2223 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2224 0
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
.L683:
	.loc 1 2181 0
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
.L681:
	.loc 1 2180 0
	movl	$1, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	stop_search_p
	testl	%eax, %eax
	je	.L682
.L679:
	.loc 1 2232 0
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L693
	cmpl	$0, -64(%ebp)
	jne	.L693
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L693
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L697
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L693
.L697:
	.loc 1 2237 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_skip
	movl	%eax, -64(%ebp)
	.loc 1 2238 0
	cmpl	$0, -64(%ebp)
	je	.L693
	.loc 1 2239 0
	movl	-96(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -96(%ebp)
.L693:
	.loc 1 2256 0
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L700
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L700
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L703
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L705
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L700
.L705:
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L700
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L700
.L703:
.LBB34:
	.loc 1 2285 0
	movl	$0, -36(%ebp)
	.loc 1 2286 0
	movl	$0, -32(%ebp)
	.loc 1 2289 0
	movb	$0, -121(%ebp)
	movzbl	-121(%ebp), %eax
	movb	%al, -122(%ebp)
	movzbl	-122(%ebp), %eax
	movb	%al, -123(%ebp)
	movzbl	-123(%ebp), %eax
	movb	%al, -124(%ebp)
.LBB35:
	leal	-124(%ebp), %eax
	addl	$4, %eax
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
.LBE35:
	.loc 1 2290 0
	movb	$0, -149(%ebp)
	movzbl	-149(%ebp), %eax
	movb	%al, -150(%ebp)
	movzbl	-150(%ebp), %eax
	movb	%al, -151(%ebp)
	movzbl	-151(%ebp), %eax
	movb	%al, -152(%ebp)
.LBB36:
	leal	-152(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE36:
	.loc 1 2292 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L708
	.loc 1 2294 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2295 0
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 2296 0
	movl	$1, -32(%ebp)
	jmp	.L710
.L708:
	.loc 1 2300 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2301 0
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 2302 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L710
	.loc 1 2303 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
.L710:
	.loc 1 2306 0
	cmpl	$0, -36(%ebp)
	jne	.L712
	.loc 1 2307 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -84(%ebp)
	jmp	.L714
.L715:
	.loc 1 2309 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2311 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L712
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L712
	.loc 1 2316 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2319 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L718
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L718
	.loc 1 2324 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L721
	.loc 1 2325 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L723
.L721:
	.loc 1 2327 0
	movl	-84(%ebp), %eax
	movl	%eax, -24(%ebp)
.L723:
	.loc 1 2330 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L712
	.loc 1 2335 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L725
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L725
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L725
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L725
	cmpl	$0, -32(%ebp)
	je	.L730
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L725
.L730:
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -84(%ebp)
	cmpl	$0, -84(%ebp)
	je	.L725
	movl	-96(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L725
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L725
	.loc 1 2347 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2348 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, -64(%ebp)
	.loc 1 2355 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 2356 0
	movl	-96(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L712
	.loc 1 2358 0
	jmp	.L718
.L725:
	.loc 1 2361 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2362 0
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 2367 0
	movb	$1, -149(%ebp)
	.loc 1 2370 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L736
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L718
.L736:
	.loc 1 2372 0
	movl	$1, -32(%ebp)
.L718:
	.loc 1 2307 0
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
.L714:
	cmpl	$0, -84(%ebp)
	jne	.L715
.L712:
	.loc 1 2380 0
	movl	-96(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	je	.L700
	cmpl	$0, -84(%ebp)
	je	.L700
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L700
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L700
	cmpl	$0, -36(%ebp)
	je	.L742
	movl	-84(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L700
.L742:
	movl	-84(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L700
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L745
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L700
.L745:
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L700
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L700
	movl	$1, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L700
	movl	$1, 8(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L700
	cmpl	$0, -32(%ebp)
	je	.L751
	movl	-80(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L700
.L751:
	movl	-80(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	try_split@PLT
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L700
	movl	-96(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L700
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L700
.LBB37:
	.loc 1 2400 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2402 0
	cmpl	$0, -12(%ebp)
	je	.L756
	.loc 1 2403 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_before@PLT
	movl	%eax, -12(%ebp)
	jmp	.L758
.L756:
	.loc 1 2405 0
	call	find_end_label
	movl	%eax, -12(%ebp)
.L758:
	.loc 1 2407 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_delay_list
	movl	%eax, -64(%ebp)
	.loc 1 2409 0
	movl	-96(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -96(%ebp)
	.loc 1 2410 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	.loc 1 2414 0
	cmpl	$0, -36(%ebp)
	je	.L700
	.loc 1 2415 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
.L700:
.LBE37:
.LBE34:
	.loc 1 2421 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L760
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L760
	movl	-96(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L760
	.loc 1 2424 0
	movl	-92(%ebp), %eax
	movl	76(%eax), %edx
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	own_thread_p
	movl	%eax, %esi
	movl	-92(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %edx
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%esi, 24(%esp)
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_slots_from_thread
	movl	%eax, -64(%ebp)
.L760:
	.loc 1 2433 0
	cmpl	$0, -64(%ebp)
	je	.L764
	.loc 1 2434 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_delay_sequence
	movl	%eax, (%esi)
.L764:
	.loc 1 2437 0
	movl	-96(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jne	.L766
	.loc 1 2438 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L766:
	.loc 1 2440 0
	movl	-96(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	note_delay_statistics
.L650:
.LBE29:
	.loc 1 2065 0
	addl	$1, -76(%ebp)
.L648:
	movl	-76(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jl	.L649
	.loc 1 2532 0
	addl	$192, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	fill_simple_delay_slots, .-fill_simple_delay_slots
	.section	.rodata
	.type	__FUNCTION__.13381, @object
	.size	__FUNCTION__.13381, 23
__FUNCTION__.13381:
	.string	"fill_slots_from_thread"
	.text
	.type	fill_slots_from_thread, @function
fill_slots_from_thread:
.LFB45:
	.loc 1 2570 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%esi
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$256, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2574 0
	movl	$0, -80(%ebp)
	.loc 1 2575 0
	movl	$0, -92(%ebp)
	.loc 1 2579 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L771
	cmpl	$0, 28(%ebp)
	je	.L773
.L771:
	cmpl	$0, 32(%ebp)
	jne	.L774
	cmpl	$0, 28(%ebp)
	jne	.L774
.L773:
	.loc 1 2581 0
	leal	__FUNCTION__.13381@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2581, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L774:
	.loc 1 2583 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -76(%ebp)
	.loc 1 2587 0
	cmpl	$0, 16(%ebp)
	jne	.L776
	.loc 1 2588 0
	movl	44(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	.L778
.L776:
	.loc 1 2592 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L779
	.loc 1 2593 0
	movb	$0, -117(%ebp)
	movzbl	-117(%ebp), %eax
	movb	%al, -118(%ebp)
	movzbl	-118(%ebp), %eax
	movb	%al, -119(%ebp)
	movzbl	-119(%ebp), %eax
	movb	%al, -120(%ebp)
.LBB38:
	leal	-120(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L781
.L779:
.LBE38:
	.loc 1 2595 0
	call	get_insns@PLT
	leal	-120(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mark_target_live_regs@PLT
.L781:
	.loc 1 2601 0
	movl	16(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	try_split@PLT
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 2609 0
	movb	$0, -173(%ebp)
	movzbl	-173(%ebp), %eax
	movb	%al, -174(%ebp)
	movzbl	-174(%ebp), %eax
	movb	%al, -175(%ebp)
	movzbl	-175(%ebp), %eax
	movb	%al, -176(%ebp)
.LBB39:
	leal	-176(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE39:
	.loc 1 2610 0
	movb	$0, -145(%ebp)
	movzbl	-145(%ebp), %eax
	movb	%al, -146(%ebp)
	movzbl	-146(%ebp), %eax
	movb	%al, -147(%ebp)
	movzbl	-147(%ebp), %eax
	movb	%al, -148(%ebp)
.LBB40:
	leal	-148(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE40:
	.loc 1 2617 0
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2618 0
	jmp	.L782
.L783:
.LBB41:
	.loc 1 2624 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L784
	.loc 1 2626 0
	movl	$0, 32(%ebp)
	.loc 1 2627 0
	jmp	.L786
.L784:
	.loc 1 2630 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2631 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L786
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L786
	.loc 1 2636 0
	movl	$1, 8(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L789
	movl	$1, 8(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L789
	movl	$1, 8(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L789
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L789
.LBB42:
	.loc 1 2650 0
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	redundant_insn
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L794
	.loc 1 2652 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_reg_dead_note
	.loc 1 2653 0
	cmpl	$0, 32(%ebp)
	je	.L796
	.loc 1 2655 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 2656 0
	movl	-84(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L798
	.loc 1 2658 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2659 0
	movl	-88(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L798
	.loc 1 2660 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L798:
	.loc 1 2663 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	jmp	.L786
.L796:
	.loc 1 2667 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_unused_notes
	.loc 1 2668 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -88(%ebp)
	.loc 1 2671 0
	jmp	.L786
.L794:
	.loc 1 2677 0
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L802
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 12(%ebp)
	je	.L804
	movl	$1, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L802
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L802
.L804:
	.loc 1 2682 0
	movl	-84(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2683 0
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2684 0
	movl	-88(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L807
	.loc 1 2685 0
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L807:
	.loc 1 2686 0
	movl	16(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L809
	.loc 1 2687 0
	movl	-84(%ebp), %eax
	movl	%eax, 16(%ebp)
.L809:
	.loc 1 2688 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2689 0
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	jne	.L811
	.loc 1 2677 0
	jmp	.L789
.L802:
	.loc 1 2692 0
	cmpl	$0, 28(%ebp)
	je	.L789
	.loc 1 2701 0
	movl	-84(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2702 0
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2703 0
	movl	-88(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L814
	.loc 1 2704 0
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L814:
	.loc 1 2705 0
	movl	16(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L816
	.loc 1 2706 0
	movl	-84(%ebp), %eax
	movl	%eax, 16(%ebp)
.L816:
	.loc 1 2707 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2708 0
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L818
	cmpl	$0, 44(%ebp)
	jne	.L789
.L818:
	cmpl	$0, 28(%ebp)
	je	.L820
	movl	44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	check_annul_list_true_false
	testl	%eax, %eax
	je	.L822
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	je	.L822
	movl	$1, -204(%ebp)
	jmp	.L825
.L822:
	movl	$0, -204(%ebp)
.L825:
	movzbl	-204(%ebp), %eax
	movb	%al, -205(%ebp)
	jmp	.L826
.L820:
	movl	44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	check_annul_list_true_false
	movb	$0, -205(%ebp)
.L826:
	cmpb	$0, -205(%ebp)
	je	.L789
.LBB43:
	.loc 1 2716 0
	movl	$1, -92(%ebp)
.L811:
	.loc 1 2728 0
	cmpl	$0, 32(%ebp)
	je	.L828
.LBB44:
	.loc 1 2732 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 2733 0
	movl	-84(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L830
	.loc 1 2735 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2736 0
	movl	-88(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L830
	.loc 1 2737 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L830:
	.loc 1 2743 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2745 0
	cmpl	$0, -44(%ebp)
	je	.L833
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L833
	.loc 1 2746 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
.L833:
	.loc 1 2748 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 2750 0
	cmpl	$0, -44(%ebp)
	je	.L839
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L839
	.loc 1 2751 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	jmp	.L839
.L828:
.LBE44:
	.loc 1 2754 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -88(%ebp)
.L839:
	.loc 1 2756 0
	cmpl	$0, 32(%ebp)
	jne	.L840
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -200(%ebp)
	jmp	.L842
.L840:
	movl	-84(%ebp), %eax
	movl	%eax, -200(%ebp)
.L842:
	movl	-200(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2757 0
	cmpl	$0, 28(%ebp)
	je	.L843
	.loc 1 2758 0
	movl	-48(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$16, %edx
	movb	%dl, 3(%eax)
.L843:
	.loc 1 2760 0
	movl	44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, 44(%ebp)
	.loc 1 2762 0
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	40(%ebp), %eax
	movl	%edx, (%eax)
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	36(%ebp), %eax
	jne	.L786
	.loc 1 2767 0
	jmp	.L847
.L848:
	.loc 1 2778 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_reg_dead_note
	.loc 1 2779 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	update_reg_unused_notes
	.loc 1 2780 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -88(%ebp)
.L847:
	.loc 1 2767 0
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	.L855
	cmpl	$0, 32(%ebp)
	jne	.L855
	movl	-88(%ebp), %eax
	movl	$1, 8(%esp)
	leal	-148(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L855
	movl	-88(%ebp), %eax
	movl	$1, 8(%esp)
	leal	-176(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	insn_sets_resource_p
	testl	%eax, %eax
	jne	.L855
	movl	-88(%ebp), %eax
	movl	$1, 8(%esp)
	leal	-148(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	insn_references_resource_p
	testl	%eax, %eax
	jne	.L855
	movl	-88(%ebp), %edx
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redundant_insn
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	.L848
	.loc 1 2782 0
	jmp	.L855
.L789:
.LBE43:
.LBE42:
	.loc 1 2791 0
	movl	$1, -80(%ebp)
	.loc 1 2792 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 2793 0
	movl	$1, 8(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 2798 0
	movb	$1, -145(%ebp)
	.loc 1 2816 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L786
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L786
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L786
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L786
.LBB45:
	.loc 1 2820 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2822 0
	cmpl	$0, -40(%ebp)
	je	.L786
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L786
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L786
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L786
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L786
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L786
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L786
	.loc 1 2828 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	validate_replace_rtx@PLT
.L786:
.LBE45:
.LBE41:
	.loc 1 2619 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -84(%ebp)
.L782:
	.loc 1 2618 0
	cmpl	$0, 28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	stop_search_p
	testl	%eax, %eax
	jne	.L855
	cmpl	$0, -80(%ebp)
	je	.L783
	cmpl	$0, 32(%ebp)
	jne	.L783
.L855:
	.loc 1 2834 0
	cmpl	$0, -84(%ebp)
	je	.L869
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L869
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L869
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L869
	.loc 1 2840 0
	cmpl	$0, 28(%ebp)
	je	.L874
	movl	-88(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jne	.L874
	.loc 1 2842 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %edx
	leal	-88(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	steal_delay_list_from_target
	movl	%eax, 44(%ebp)
	.loc 1 2850 0
	cmpl	$0, 32(%ebp)
	je	.L869
	movl	-88(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	je	.L869
	.loc 1 2851 0
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	own_thread_p
	movl	%eax, 32(%ebp)
	.loc 1 2840 0
	jmp	.L869
.L874:
	.loc 1 2853 0
	cmpl	$0, 28(%ebp)
	jne	.L869
	.loc 1 2854 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %edx
	leal	-92(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	steal_delay_list_from_fallthrough
	movl	%eax, 44(%ebp)
.L869:
	.loc 1 2868 0
	cmpl	$0, 44(%ebp)
	jne	.L881
	cmpl	$0, 24(%ebp)
	je	.L881
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	.L881
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L881
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L881
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jns	.L881
.LBB46:
	.loc 1 2873 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2877 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2878 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2880 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L888
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L888
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	je	.L888
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L892
.L888:
	.loc 1 2884 0
	movl	$0, -212(%ebp)
	jmp	.L778
.L892:
	.loc 1 2886 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2887 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L893
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L881
.L893:
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L881
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L881
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L881
.LBB47:
	.loc 1 2892 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2899 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L898
	.loc 1 2900 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	negate_rtx@PLT
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	%ecx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -20(%ebp)
	jmp	.L900
.L898:
	.loc 1 2903 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -196(%ebp)
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L901
	movl	$86, -192(%ebp)
	jmp	.L903
.L901:
	movl	$85, -192(%ebp)
.L903:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -20(%ebp)
.L900:
	.loc 1 2906 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2909 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L904
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L906
	jmp	.L908
.L904:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	testl	%eax, %eax
	js	.L906
.L908:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	movl	$1, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L909
.L906:
	.loc 1 2912 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 2913 0
	movl	$0, -212(%ebp)
	jmp	.L778
.L909:
	.loc 1 2916 0
	cmpl	$0, 32(%ebp)
	je	.L910
	.loc 1 2918 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 2919 0
	movl	-84(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L912
	.loc 1 2921 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, 16(%ebp)
	.loc 1 2922 0
	movl	-88(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L912
	.loc 1 2923 0
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
.L912:
	.loc 1 2925 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	jmp	.L915
.L910:
	.loc 1 2928 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -88(%ebp)
.L915:
	.loc 1 2930 0
	cmpl	$0, 32(%ebp)
	jne	.L916
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -188(%ebp)
	jmp	.L918
.L916:
	movl	-84(%ebp), %eax
	movl	%eax, -188(%ebp)
.L918:
	movl	-188(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2931 0
	cmpl	$0, 28(%ebp)
	je	.L919
	.loc 1 2932 0
	movl	-16(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$16, %edx
	movb	%dl, 3(%eax)
.L919:
	.loc 1 2934 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_delay_list
	movl	%eax, 44(%ebp)
	.loc 1 2935 0
	movl	40(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	40(%ebp), %eax
	movl	%edx, (%eax)
.L881:
.LBE47:
.LBE46:
	.loc 1 2939 0
	cmpl	$0, 44(%ebp)
	je	.L921
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L921
	.loc 1 2940 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$4, %edx
	movb	%dl, 3(%eax)
.L921:
	.loc 1 2945 0
	movl	-88(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L924
.LBB48:
	.loc 1 2949 0
	cmpl	$0, 28(%ebp)
	jne	.L926
	.loc 1 2950 0
	leal	__FUNCTION__.13381@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2950, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L926:
	.loc 1 2952 0
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	.L928
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L928
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L931
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L928
.L931:
	movl	-88(%ebp), %eax
	movl	76(%eax), %edx
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_with_delay_list_safe_p
	testl	%eax, %eax
	je	.L928
	.loc 1 2958 0
	movl	-88(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	follow_jumps@PLT
	movl	%eax, -88(%ebp)
.L928:
	.loc 1 2960 0
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	jne	.L934
	.loc 1 2961 0
	call	find_end_label
	movl	%eax, -12(%ebp)
	jmp	.L936
.L934:
	.loc 1 2962 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L937
	.loc 1 2963 0
	movl	-88(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L936
.L937:
	.loc 1 2965 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_before@PLT
	movl	%eax, -12(%ebp)
.L936:
	.loc 1 2967 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
.L924:
.LBE48:
	.loc 1 2970 0
	movl	44(%ebp), %eax
	movl	%eax, -212(%ebp)
.L778:
	movl	-212(%ebp), %eax
	.loc 1 2971 0
	addl	$256, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	fill_slots_from_thread, .-fill_slots_from_thread
	.type	fill_eager_delay_slots, @function
fill_eager_delay_slots:
.LFB46:
	.loc 1 2985 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%esi
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$112, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2988 0
	movl	12+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2990 0
	movl	$0, -52(%ebp)
	jmp	.L941
.L942:
.LBB49:
	.loc 1 2994 0
	movl	$0, -28(%ebp)
	.loc 1 2999 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3000 0
	cmpl	$0, -56(%ebp)
	je	.L943
	movl	-56(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L943
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L943
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L947
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L943
.L947:
	.loc 1 3006 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3018 0
	cmpl	$0, -12(%ebp)
	je	.L943
	.loc 1 3021 0
	movl	$0, -60(%ebp)
	.loc 1 3022 0
	movl	-56(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3023 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_branch_condition
	movl	%eax, -44(%ebp)
	.loc 1 3025 0
	cmpl	$0, -44(%ebp)
	je	.L943
	.loc 1 3032 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3033 0
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	own_thread_p
	movl	%eax, -24(%ebp)
	.loc 1 3035 0
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jne	.L951
	.loc 1 3037 0
	movl	$0, -20(%ebp)
	.loc 1 3038 0
	movl	$0, -32(%ebp)
	.loc 1 3039 0
	movl	$2, -16(%ebp)
	jmp	.L953
.L951:
	.loc 1 3043 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3044 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	own_thread_p
	movl	%eax, -20(%ebp)
	.loc 1 3045 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	mostly_true_jump
	movl	%eax, -16(%ebp)
.L953:
	.loc 1 3052 0
	cmpl	$0, -16(%ebp)
	jle	.L954
	.loc 1 3054 0
	cmpl	$2, -16(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	%edx, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_slots_from_thread
	movl	%eax, -28(%ebp)
	.loc 1 3060 0
	cmpl	$0, -28(%ebp)
	jne	.L959
	cmpl	$0, -20(%ebp)
	je	.L959
	.loc 1 3066 0
	movl	-56(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3067 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3069 0
	movl	-28(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_slots_from_thread
	movl	%eax, -28(%ebp)
	jmp	.L959
.L954:
	.loc 1 3079 0
	cmpl	$0, -20(%ebp)
	je	.L960
	.loc 1 3080 0
	movl	-28(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_slots_from_thread
	movl	%eax, -28(%ebp)
.L960:
	.loc 1 3087 0
	cmpl	$0, -28(%ebp)
	jne	.L959
	.loc 1 3088 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_slots_from_thread
	movl	%eax, -28(%ebp)
.L959:
	.loc 1 3096 0
	cmpl	$0, -28(%ebp)
	je	.L963
	.loc 1 3097 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_delay_sequence
	movl	%eax, (%esi)
.L963:
	.loc 1 3100 0
	movl	-60(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L965
	.loc 1 3101 0
	movl	8+unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L965:
	.loc 1 3103 0
	movl	-60(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	note_delay_statistics
.L943:
.LBE49:
	.loc 1 2990 0
	addl	$1, -52(%ebp)
.L941:
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	.L942
	.loc 1 3105 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE46:
	.size	fill_eager_delay_slots, .-fill_eager_delay_slots
	.section	.rodata
	.type	__FUNCTION__.13914, @object
	.size	__FUNCTION__.13914, 18
__FUNCTION__.13914:
	.string	"relax_delay_slots"
	.text
	.type	relax_delay_slots, @function
relax_delay_slots:
.LFB47:
	.loc 1 3114 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%esi
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$96, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3119 0
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L970
.L971:
.LBB50:
	.loc 1 3123 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3128 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L972
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L974
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L972
.L974:
	movl	-88(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L972
	.loc 1 3132 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	follow_jumps@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3133 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, (%esp)
	call	prev_label@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3135 0
	cmpl	$0, -68(%ebp)
	jne	.L977
	.loc 1 3136 0
	call	find_end_label
	movl	%eax, -68(%ebp)
.L977:
	.loc 1 3138 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	cmpl	-84(%ebp), %eax
	jne	.L979
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	jne	.L979
	.loc 1 3141 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_jump@PLT
	.loc 1 3142 0
	jmp	.L982
.L979:
	.loc 1 3145 0
	movl	-88(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L983
	.loc 1 3146 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
.L983:
	.loc 1 3151 0
	cmpl	$0, -84(%ebp)
	je	.L972
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L972
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L987
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L972
.L987:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %esi
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	cmpl	%eax, %esi
	jne	.L972
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L972
.LBB51:
	.loc 1 3156 0
	movl	-84(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3165 0
	movl	-68(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 3166 0
	cmpl	$0, -60(%ebp)
	je	.L991
	.loc 1 3167 0
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 36(%eax)
.L991:
	.loc 1 3169 0
	movl	$1, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L993
	.loc 1 3171 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3172 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
.L993:
	.loc 1 3175 0
	cmpl	$0, -60(%ebp)
	je	.L995
	.loc 1 3176 0
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 36(%eax)
.L995:
	.loc 1 3178 0
	movl	-68(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-68(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L982
	.loc 1 3179 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3181 0
	jmp	.L982
.L972:
.LBE51:
	.loc 1 3193 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L999
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L1001
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L999
.L1001:
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_active_insn@PLT
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L999
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L1004
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L999
.L1004:
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L999
	movl	-64(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_branch_condition
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	mostly_true_jump
	testl	%eax, %eax
	jns	.L999
.LBB52:
	.loc 1 3202 0
	movl	-64(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3203 0
	movl	-88(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 3205 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L999
	.loc 1 3206 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
.L999:
.LBE52:
	.loc 1 3210 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L982
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L982
	.loc 1 3214 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 3215 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3220 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redundant_insn
	testl	%eax, %eax
	je	.L1011
	.loc 1 3222 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	delete_from_delay_slot
	.loc 1 3223 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_active_insn@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3224 0
	jmp	.L982
.L1011:
	.loc 1 3234 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1013
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1013
	cmpl	$0, -84(%ebp)
	je	.L1013
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1013
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1013
.LBB53:
	.loc 1 3252 0
	movl	$0, -48(%ebp)
	jmp	.L1019
.L1020:
	.loc 1 3253 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 3252 0
	addl	$1, -48(%ebp)
.L1019:
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L1020
	.loc 1 3255 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3256 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3257 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L1022
	.loc 1 3258 0
	leal	__FUNCTION__.13914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3258, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1022:
	.loc 1 3259 0
	movl	-76(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3260 0
	movl	$0, -48(%ebp)
	jmp	.L1024
.L1025:
.LBB54:
	.loc 1 3262 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3263 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn_after@PLT
	.loc 1 3264 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
.LBE54:
	.loc 1 3260 0
	addl	$1, -48(%ebp)
.L1024:
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L1025
	.loc 1 3266 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_scheduled_jump
	.loc 1 3267 0
	jmp	.L982
.L1013:
.LBE53:
	.loc 1 3271 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L982
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L1028
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L982
.L1028:
	.loc 1 3276 0
	movl	-72(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 3278 0
	cmpl	$0, -68(%ebp)
	je	.L1030
	.loc 1 3282 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	follow_jumps@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3288 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	next_real_insn@PLT
	movl	%eax, (%esp)
	call	prev_label@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3289 0
	cmpl	$0, -76(%ebp)
	jne	.L1032
	cmpl	$0, -68(%ebp)
	je	.L1032
	.loc 1 3290 0
	call	find_end_label
	movl	%eax, -76(%ebp)
.L1032:
	.loc 1 3292 0
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	je	.L1035
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_with_delay_slots_safe_p
	testl	%eax, %eax
	je	.L1035
	.loc 1 3295 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	.loc 1 3296 0
	movl	-76(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1035:
	.loc 1 3301 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3302 0
	cmpl	$0, -76(%ebp)
	je	.L1038
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L1038
	movl	$0, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	redundant_insn
	testl	%eax, %eax
	je	.L1038
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1038
.LBB55:
	.loc 1 3310 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3311 0
	cmpl	$0, -40(%ebp)
	jne	.L1043
	.loc 1 3312 0
	call	find_end_label
	movl	%eax, -40(%ebp)
.L1043:
	.loc 1 3315 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block
	.loc 1 3319 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	get_label_before@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3320 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	.loc 1 3321 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 3322 0
	jmp	.L982
.L1038:
.LBE55:
	.loc 1 3327 0
	cmpl	$0, -76(%ebp)
	je	.L1030
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L1030
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1030
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1030
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L1049
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1030
.L1049:
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	$0, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redundant_insn
	testl	%eax, %eax
	je	.L1030
	.loc 1 3334 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 3335 0
	cmpl	$0, -68(%ebp)
	jne	.L1052
	.loc 1 3336 0
	call	find_end_label
	movl	%eax, -68(%ebp)
.L1052:
	.loc 1 3338 0
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_with_delay_slots_safe_p
	testl	%eax, %eax
	je	.L1030
	.loc 1 3341 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	.loc 1 3342 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 3343 0
	jmp	.L982
.L1030:
	.loc 1 3348 0
	movl	-72(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1055
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_active_insn@PLT
	cmpl	-88(%ebp), %eax
	jne	.L1055
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	jne	.L1055
.LBB56:
	.loc 1 3375 0
	movl	$0, -32(%ebp)
	jmp	.L1059
.L1060:
	.loc 1 3376 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 3375 0
	addl	$1, -32(%ebp)
.L1059:
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L1060
	.loc 1 3378 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3379 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3380 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L1062
	.loc 1 3381 0
	leal	__FUNCTION__.13914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3381, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1062:
	.loc 1 3382 0
	movl	-76(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3383 0
	movl	$0, -32(%ebp)
	jmp	.L1064
.L1065:
.LBB57:
	.loc 1 3385 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3386 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn_after@PLT
	.loc 1 3387 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBE57:
	.loc 1 3383 0
	addl	$1, -32(%ebp)
.L1064:
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L1065
	.loc 1 3389 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_scheduled_jump
	.loc 1 3390 0
	jmp	.L982
.L1055:
.LBE56:
	.loc 1 3396 0
	cmpl	$0, -84(%ebp)
	je	.L1067
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1067
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, (%esp)
	call	prev_label@PLT
	cmpl	-68(%ebp), %eax
	jne	.L1067
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L1067
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1067
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1067
	.loc 1 3402 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3403 0
	jmp	.L982
.L1067:
	.loc 1 3411 0
	movl	-72(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1074
	cmpl	$0, -84(%ebp)
	je	.L1074
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1074
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L1078
	movl	-84(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1074
.L1078:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %esi
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	cmpl	%eax, %esi
	jne	.L1074
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L1074
.LBB58:
	.loc 1 3417 0
	movl	-84(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3418 0
	movl	-72(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3420 0
	cmpl	$0, -24(%ebp)
	jne	.L1082
	.loc 1 3421 0
	call	find_end_label
	movl	%eax, -24(%ebp)
.L1082:
	.loc 1 3424 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	no_labels_between_p@PLT
	testl	%eax, %eax
	je	.L1074
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_with_delay_slots_safe_p
	testl	%eax, %eax
	je	.L1074
	.loc 1 3430 0
	cmpl	$0, -20(%ebp)
	je	.L1086
	.loc 1 3431 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
.L1086:
	.loc 1 3433 0
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L1088
.LBB59:
	.loc 1 3440 0
	movl	$1, -16(%ebp)
	jmp	.L1090
.L1091:
.LBB60:
	.loc 1 3442 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3443 0
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	sete	%al
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
.LBE60:
	.loc 1 3440 0
	addl	$1, -16(%ebp)
.L1090:
	movl	-88(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1091
	.loc 1 3446 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3447 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
.L1088:
.LBE59:
	.loc 1 3450 0
	cmpl	$0, -20(%ebp)
	je	.L982
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L982
	.loc 1 3451 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3452 0
	jmp	.L982
.L1074:
.LBE58:
	.loc 1 3458 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1096
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	own_thread_p
	testl	%eax, %eax
	je	.L1096
	.loc 1 3460 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	try_merge_delay_insns
	.loc 1 3458 0
	jmp	.L1099
.L1096:
	.loc 1 3461 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1099
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	own_thread_p
	testl	%eax, %eax
	je	.L1099
	.loc 1 3463 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	try_merge_delay_insns
.L1099:
	.loc 1 3467 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -84(%ebp)
.L982:
.LBE50:
	.loc 1 3119 0
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L970:
	cmpl	$0, -88(%ebp)
	jne	.L971
	.loc 1 3469 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE47:
	.size	relax_delay_slots, .-relax_delay_slots
	.type	make_return_insns, @function
make_return_insns:
.LFB48:
	.loc 1 3480 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$68, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3482 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3499 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1105
.L1106:
	.loc 1 3500 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1107
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1107
	.loc 1 3502 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_label_before@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3503 0
	jmp	.L1110
.L1107:
	.loc 1 3499 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L1105:
	cmpl	$0, -48(%ebp)
	jne	.L1106
.L1110:
	.loc 1 3508 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
.LBB61:
	.loc 1 3511 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	unfilled_firstobj@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	.L1111
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L1111
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1114
.L1111:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L1114:
.LBE61:
	.loc 1 3513 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1115
.L1116:
.LBB62:
	.loc 1 3519 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1117
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L1117
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1117
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1117
	.loc 1 3525 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3526 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3530 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	testl	%eax, %eax
	jne	.L1122
	.loc 1 3534 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_with_delay_slots_safe_p
	testl	%eax, %eax
	je	.L1117
	.loc 1 3537 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
	.loc 1 3538 0
	jmp	.L1117
.L1122:
	.loc 1 3545 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -16(%ebp)
	.loc 1 3546 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3547 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	cmpl	-32(%ebp), %eax
	jg	.L1126
	.loc 1 3549 0
	movl	$1, -28(%ebp)
	jmp	.L1128
.L1129:
	.loc 1 3550 0
	movl	-44(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1130
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1130
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-28(%ebp), %ecx
	subl	$1, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_annul_false@PLT
	testl	%eax, %eax
	sete	-53(%ebp)
	jmp	.L1133
.L1130:
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-28(%ebp), %ecx
	subl	$1, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	eligible_for_delay@PLT
	testl	%eax, %eax
	sete	-53(%ebp)
.L1133:
	cmpb	$0, -53(%ebp)
	jne	.L1136
	.loc 1 3549 0
	addl	$1, -28(%ebp)
.L1128:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L1129
	jmp	.L1136
.L1126:
	.loc 1 3568 0
	movl	$0, -28(%ebp)
.L1136:
	.loc 1 3570 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1117
	.loc 1 3577 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L1138
.LBB63:
	.loc 1 3579 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3581 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	.loc 1 3582 0
	movl	$1, -28(%ebp)
	jmp	.L1140
.L1141:
	.loc 1 3583 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3582 0
	addl	$1, -28(%ebp)
.L1140:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L1141
	.loc 1 3585 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3586 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 3588 0
	cmpl	$0, -32(%ebp)
	je	.L1117
.LBB64:
	.loc 1 3589 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1145
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1145:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1117
.L1138:
.LBE64:
.LBE63:
	.loc 1 3594 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reorg_redirect_jump
.L1117:
.LBE62:
	.loc 1 3513 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L1115:
	cmpl	$0, -48(%ebp)
	jne	.L1116
	.loc 1 3599 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L1148
	.loc 1 3600 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L1148:
	.loc 1 3602 0
	movl	$1, (%esp)
	call	fill_simple_delay_slots
	.loc 1 3603 0
	movl	$0, (%esp)
	call	fill_simple_delay_slots
	.loc 1 3604 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	make_return_insns, .-make_return_insns
	.section	.rodata
.LC1:
	.string	";; Reorg pass #%d:\n"
.LC2:
	.string	";; Reorg function #%d\n"
	.align 4
.LC3:
	.string	";; %d insns needing delay slots\n;; "
.LC4:
	.string	", "
.LC5:
	.string	"%d got %d delays"
.LC6:
	.string	";; Reorg totals: "
.LC7:
	.string	";; Reorg annuls: "
	.text
.globl dbr_schedule
	.type	dbr_schedule, @function
dbr_schedule:
.LFB49:
	.loc 1 3613 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%esi
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$144, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3614 0
	movl	$0, -92(%ebp)
	.loc 1 3630 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1268
	.loc 1 3635 0
	movl	$0, max_uid@GOTOFF(%ebx)
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1154
.L1155:
	.loc 1 3637 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L1156
	.loc 1 3638 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, max_uid@GOTOFF(%ebx)
.L1156:
	.loc 1 3639 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1158
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-89, %eax
	jne	.L1158
	.loc 1 3641 0
	movl	-100(%ebp), %eax
	movl	%eax, -92(%ebp)
.L1158:
	.loc 1 3635 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
.L1154:
	cmpl	$0, -100(%ebp)
	jne	.L1155
	.loc 1 3644 0
	movl	max_uid@GOTOFF(%ebx), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, uid_to_ruid@GOTOFF(%ebx)
	.loc 1 3645 0
	movl	$0, -88(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1162
.L1163:
	.loc 1 3646 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3645 0
	addl	$1, -88(%ebp)
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
.L1162:
	cmpl	$0, -100(%ebp)
	jne	.L1163
	.loc 1 3649 0
	movl	unfilled_firstobj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1165
	.loc 1 3651 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
.LBB65:
	.loc 1 3652 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
.LBB66:
	movl	-84(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-76(%ebp), %eax
	jge	.L1167
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1167:
	movl	-80(%ebp), %eax
	movl	12(%eax), %edx
	movl	-76(%ebp), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE66:
.LBB67:
	movl	-84(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-68(%ebp), %eax
	jne	.L1169
	movl	-72(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L1169:
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-72(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L1171
	movl	-72(%ebp), %eax
	movl	16(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 12(%eax)
.L1171:
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-68(%ebp), %eax
.LBE67:
.LBE65:
	movl	%eax, unfilled_firstobj@GOTOFF(%ebx)
.L1165:
	.loc 1 3655 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -100(%ebp)
	jmp	.L1173
.L1174:
.LBB68:
	.loc 1 3659 0
	movl	-100(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-5, %eax
	movb	%al, 3(%edx)
	.loc 1 3660 0
	movl	-100(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 3663 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1175
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L1177
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L1177
.L1175:
	.loc 1 3668 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	testl	%eax, %eax
	jle	.L1179
.LBB69:
	.loc 1 3669 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1181
	movl	$4, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1181:
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
.L1179:
.LBE69:
	.loc 1 3672 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1177
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L1184
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_in_parallel_p@PLT
	testl	%eax, %eax
	je	.L1177
.L1184:
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L1177
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, (%esp)
	call	prev_label@PLT
	movl	%eax, -64(%ebp)
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, -64(%ebp)
	je	.L1177
	.loc 1 3677 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
.L1177:
.LBE68:
	.loc 1 3655 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -100(%ebp)
.L1173:
	cmpl	$0, -100(%ebp)
	jne	.L1174
	.loc 1 3680 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	init_resource_info@PLT
	.loc 1 3683 0
	movl	$0, end_of_function_label@GOTOFF(%ebx)
	.loc 1 3686 0
	leal	num_insns_needing_delays@GOTOFF(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 1 3687 0
	leal	num_filled_delays@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$64, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 3692 0
	movl	$0, reorg_pass_number@GOTOFF(%ebx)
	.loc 1 3693 0
	jmp	.L1189
.L1190:
	.loc 1 3696 0
	movl	$1, (%esp)
	call	fill_simple_delay_slots
	.loc 1 3697 0
	movl	$0, (%esp)
	call	fill_simple_delay_slots
	.loc 1 3698 0
	call	fill_eager_delay_slots
	.loc 1 3699 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	relax_delay_slots
	.loc 1 3694 0
	movl	reorg_pass_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, reorg_pass_number@GOTOFF(%ebx)
.L1189:
	.loc 1 3693 0
	movl	reorg_pass_number@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L1190
	.loc 1 3704 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1192
.L1193:
	.loc 1 3706 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 3708 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1194
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L1194
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1194
	.loc 1 3710 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
	movl	%eax, -96(%ebp)
.L1194:
	.loc 1 3704 0
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1192:
	cmpl	$0, -100(%ebp)
	jne	.L1193
	.loc 1 3716 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1199
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	36(%eax), %edx
	subl	$1, %edx
	movl	%edx, 36(%eax)
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L1199
	.loc 1 3717 0
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L1199:
	.loc 1 3720 0
	call	mips_can_use_return_insn@PLT
	testl	%eax, %eax
	je	.L1202
	movl	end_of_function_label@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1202
	.loc 1 3721 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_return_insns
.L1202:
.LBB70:
	.loc 1 3724 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	unfilled_firstobj@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	jae	.L1205
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-52(%ebp), %eax
	jbe	.L1205
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-56(%ebp), %eax
	movl	8(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L1208
.L1205:
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L1208:
.LBE70:
.LBB71:
	.loc 1 3727 0
	leal	unfilled_slots_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
.LBB72:
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-40(%ebp), %eax
	jge	.L1209
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L1209:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE72:
.LBB73:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L1211
	movl	-36(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L1211:
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
	jle	.L1213
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.L1213:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %eax
.LBE73:
.LBE71:
	movl	%eax, unfilled_firstobj@GOTOFF(%ebx)
	.loc 1 3729 0
	cmpl	$0, 12(%ebp)
	je	.L1215
.LBB74:
	.loc 1 3735 0
	movl	$0, reorg_pass_number@GOTOFF(%ebx)
	.loc 1 3736 0
	jmp	.L1217
.L1218:
	.loc 1 3739 0
	movl	reorg_pass_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3740 0
	movl	$0, -28(%ebp)
	jmp	.L1219
.L1220:
	.loc 1 3742 0
	movl	$0, -20(%ebp)
	.loc 1 3743 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3745 0
	movl	-28(%ebp), %eax
	movl	reorg_pass_number@GOTOFF(%ebx), %edx
	addl	%eax, %eax
	addl	%edx, %eax
	movl	num_insns_needing_delays@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3748 0
	movl	$0, -24(%ebp)
	jmp	.L1221
.L1222:
	.loc 1 3749 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	reorg_pass_number@GOTOFF(%ebx), %ecx
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	num_filled_delays@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	je	.L1223
	.loc 1 3751 0
	cmpl	$0, -20(%ebp)
	je	.L1225
	.loc 1 3752 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1225:
	.loc 1 3753 0
	movl	$1, -20(%ebp)
	.loc 1 3754 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	reorg_pass_number@GOTOFF(%ebx), %ecx
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	num_filled_delays@GOTOFF(%ebx,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1223:
	.loc 1 3748 0
	addl	$1, -24(%ebp)
.L1221:
	cmpl	$3, -24(%ebp)
	jle	.L1222
	.loc 1 3757 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3740 0
	addl	$1, -28(%ebp)
.L1219:
	cmpl	$1, -28(%ebp)
	jle	.L1220
	.loc 1 3737 0
	movl	reorg_pass_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, reorg_pass_number@GOTOFF(%ebx)
.L1217:
	.loc 1 3736 0
	movl	reorg_pass_number@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jle	.L1218
	.loc 1 3760 0
	leal	-116(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 1 3761 0
	leal	-132(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 1 3762 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1230
.L1231:
	.loc 1 3764 0
	movl	-100(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1232
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1232
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L1232
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L1232
	.loc 1 3769 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L1237
	.loc 1 3771 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3772 0
	cmpl	$3, -24(%ebp)
	jle	.L1239
	.loc 1 3773 0
	movl	$3, -24(%ebp)
.L1239:
	.loc 1 3774 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1241
	.loc 1 3775 0
	movl	-24(%ebp), %eax
	movl	-132(%ebp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, -132(%ebp,%eax,4)
	jmp	.L1232
.L1241:
	.loc 1 3777 0
	movl	-24(%ebp), %eax
	movl	-116(%ebp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, -116(%ebp,%eax,4)
	jmp	.L1232
.L1237:
	.loc 1 3779 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	num_delay_slots@PLT
	testl	%eax, %eax
	jle	.L1232
	.loc 1 3780 0
	movl	-116(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -116(%ebp)
.L1232:
	.loc 1 3762 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
.L1230:
	cmpl	$0, -100(%ebp)
	jne	.L1231
	.loc 1 3783 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3784 0
	movl	$0, -20(%ebp)
	.loc 1 3785 0
	movl	$0, -24(%ebp)
	jmp	.L1246
.L1247:
	.loc 1 3787 0
	movl	-24(%ebp), %eax
	movl	-116(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1248
	.loc 1 3789 0
	cmpl	$0, -20(%ebp)
	je	.L1250
	.loc 1 3790 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1250:
	.loc 1 3791 0
	movl	$1, -20(%ebp)
	.loc 1 3792 0
	movl	-24(%ebp), %eax
	movl	-116(%ebp,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1248:
	.loc 1 3785 0
	addl	$1, -24(%ebp)
.L1246:
	cmpl	$3, -24(%ebp)
	jle	.L1247
	.loc 1 3795 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3797 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3798 0
	movl	$0, -20(%ebp)
	.loc 1 3799 0
	movl	$0, -24(%ebp)
	jmp	.L1253
.L1254:
	.loc 1 3801 0
	movl	-24(%ebp), %eax
	movl	-132(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1255
	.loc 1 3803 0
	cmpl	$0, -20(%ebp)
	je	.L1257
	.loc 1 3804 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1257:
	.loc 1 3805 0
	movl	$1, -20(%ebp)
	.loc 1 3806 0
	movl	-24(%ebp), %eax
	movl	-132(%ebp,%eax,4), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1255:
	.loc 1 3799 0
	addl	$1, -24(%ebp)
.L1253:
	cmpl	$3, -24(%ebp)
	jle	.L1254
	.loc 1 3809 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3811 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1215:
.LBE74:
	.loc 1 3819 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1260
.L1261:
.LBB75:
	.loc 1 3823 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1262
.LBB76:
	.loc 1 3825 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3827 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L1262
	.loc 1 3828 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
.L1262:
.LBE76:
	.loc 1 3830 0
	movl	-100(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1265
	.loc 1 3833 0
	movl	-100(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	get_jump_flags
	movl	%eax, -16(%ebp)
	.loc 1 3834 0
	movl	-100(%ebp), %eax
	movl	68(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$19, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	%edx, 68(%eax)
.L1265:
.LBE75:
	.loc 1 3819 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
.L1260:
	cmpl	$0, -100(%ebp)
	jne	.L1261
	.loc 1 3838 0
	call	free_resource_info@PLT
	.loc 1 3839 0
	movl	uid_to_ruid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1268:
	.loc 1 3840 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE49:
	.size	dbr_schedule, .-dbr_schedule
	.local	unfilled_slots_obstack
	.comm	unfilled_slots_obstack,44,32
	.local	unfilled_firstobj
	.comm	unfilled_firstobj,4,4
	.local	end_of_function_label
	.comm	end_of_function_label,4,4
	.local	uid_to_ruid
	.comm	uid_to_ruid,4,4
	.local	max_uid
	.comm	max_uid,4,4
	.local	num_insns_needing_delays
	.comm	num_insns_needing_delays,16,4
	.local	num_filled_delays
	.comm	num_filled_delays,64,32
	.local	reorg_pass_number
	.comm	reorg_pass_number,4,4
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
	.long	.LCFI8-.LCFI5
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
	.long	.LCFI28-.LCFI26
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
	.long	.LCFI32-.LCFI30
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
	.long	.LCFI33-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI34
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
	.long	.LCFI37-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI38
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
	.long	.LCFI42-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI46-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
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
	.long	.LCFI50-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI51
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
	.long	.LCFI57-.LCFI55
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
	.long	.LCFI58-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI59
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
	.long	.LCFI62-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI63
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
	.long	.LCFI66-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI67
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
	.long	.LCFI70-.LFB32
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
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI74-.LFB33
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI77-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI78
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
	.long	.LCFI81-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI85-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI86
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
	.long	.LCFI89-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI90
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
	.long	.LCFI95-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI99-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI103-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI107-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI111-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI115-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI119-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI120
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI124-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI125
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI129-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI133-.LCFI130
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI134-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI135
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI147-.LCFI144
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE68:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/resource.h"
	.file 9 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "../../../include/gnu/obstack.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kgccfe/gnu/function.h"
	.file 16 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 17 "../../../kgccfe/gnu/flags.h"
	.file 18 "../../../kgccfe/gnu/params.h"
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.section	.debug_info
	.long	0x4ccf
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/reorg.c"
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
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x977
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x72e
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
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x1592
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x15a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x207
	.uleb128 0x8
	.long	0x20c
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ed
	.string	"mips_args"
	.byte	0x40
	.byte	0x10
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0x10
	.value	0xaad
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0x10
	.value	0xab0
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0x10
	.value	0xab5
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0x10
	.value	0xab8
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0x10
	.value	0xabb
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0x10
	.value	0xac8
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0x10
	.value	0xacb
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0x10
	.value	0xad3
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0x10
	.value	0xad4
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x304
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0x10
	.value	0xad5
	.long	0x21b
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x2ed
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
	.byte	0xd
	.byte	0x3b
	.long	0x389
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x3d3
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x3b4
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x404
	.uleb128 0x11
	.long	0x67f
	.long	.LASF1
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x6e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x6ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x36d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x708
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x68f
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x331
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x6e6
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x6e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x6ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xc
	.byte	0xbc
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a3
	.uleb128 0x3
	.byte	0x4
	.long	0x404
	.uleb128 0xd
	.long	0x702
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x695
	.uleb128 0xd
	.long	0x718
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x27
	.byte	0x0
	.uleb128 0xd
	.long	0x728
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x214
	.uleb128 0x13
	.long	0x977
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
	.long	0x1146
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
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
	.long	0x1220
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
	.long	0x1146
	.uleb128 0x11
	.long	0x1297
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x123b
	.uleb128 0x17
	.long	0x1374
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x389
	.uleb128 0x18
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x214
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2ed
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x201
	.uleb128 0x18
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9a
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19b
	.uleb128 0x18
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x72e
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1220
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1388
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x13ee
	.uleb128 0x18
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x18
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1577
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x157d
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1374
	.uleb128 0x4
	.long	0x13ee
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x5
	.byte	0x3d
	.long	0x2583
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x2583
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x138e
	.uleb128 0x4
	.long	0x1577
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x26e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x26e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x2616
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x2616
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x2616
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x2616
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1577
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1577
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x295d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x2624
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x6
	.byte	0xe5
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1297
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x12a2
	.uleb128 0xd
	.long	0x15a2
	.long	0x1583
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15b2
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x161d
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xf
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xf
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xf
	.byte	0x19
	.long	0x72e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xf
	.byte	0x1a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0xf
	.byte	0x1b
	.long	0x161d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b8
	.uleb128 0x11
	.long	0x1669
	.long	.LASF6
	.byte	0x10
	.byte	0xf
	.byte	0x24
	.uleb128 0x1a
	.long	.LASF3
	.byte	0xf
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xf
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF7
	.byte	0xf
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0xf
	.byte	0x29
	.long	0x1669
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1623
	.uleb128 0xa
	.long	0x179c
	.string	"obstack"
	.byte	0x2c
	.byte	0xa
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0xb
	.byte	0xaa
	.long	0x3d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0xb
	.byte	0xab
	.long	0x29d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0xb
	.byte	0xac
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0xb
	.byte	0xad
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0xb
	.byte	0xae
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0xb
	.byte	0xaf
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0xb
	.byte	0xb0
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0xb
	.byte	0xb5
	.long	0x29ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0xb
	.byte	0xb6
	.long	0x2a03
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0xb
	.byte	0xb7
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0xb
	.byte	0xbd
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0xb
	.byte	0xbe
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0xb
	.byte	0xc2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x166f
	.uleb128 0x4
	.long	0x18f1
	.string	"emit_status"
	.byte	0x34
	.byte	0xf
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xf
	.byte	0x3a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xf
	.byte	0x3d
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xf
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xf
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF7
	.byte	0xf
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF6
	.byte	0xf
	.byte	0x50
	.long	0x1669
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xf
	.byte	0x54
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xf
	.byte	0x58
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xf
	.byte	0x59
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xf
	.byte	0x5f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xf
	.byte	0x65
	.long	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xf
	.byte	0x69
	.long	0x18f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xf
	.byte	0x70
	.long	0x15b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x4
	.long	0x19d7
	.string	"expr_status"
	.byte	0x1c
	.byte	0xf
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xf
	.byte	0x80
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xf
	.byte	0x91
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xf
	.byte	0x97
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xf
	.byte	0x9c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xf
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xf
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xf
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1b
	.long	0x1a41
	.long	.LASF8
	.byte	0x4
	.byte	0xf
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1c
	.long	0x2400
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb5
	.long	0x240c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xf
	.byte	0xb6
	.long	0x2420
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xf
	.byte	0xb7
	.long	0x2426
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xf
	.byte	0xb8
	.long	0x242c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xf
	.byte	0xb9
	.long	0x2442
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xf
	.byte	0xbe
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xf
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xf
	.byte	0xc4
	.long	0x2448
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xf
	.byte	0xc9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xf
	.byte	0xce
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xf
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xf
	.byte	0xd7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xf
	.byte	0xdb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xf
	.byte	0xdf
	.long	0x30b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xf
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xf
	.byte	0xe8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xf
	.byte	0xec
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xf
	.byte	0xf0
	.long	0x2465
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xf
	.byte	0xf3
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xf
	.byte	0xf8
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xf
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xf
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xf
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0xf
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0xf
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0xf
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0xf
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0xf
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0xf
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0xf
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0xf
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0xf
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0xf
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0xf
	.value	0x133
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0xf
	.value	0x138
	.long	0x389
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0xf
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0xf
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0xf
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0xf
	.value	0x14d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0xf
	.value	0x151
	.long	0x2ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0xf
	.value	0x157
	.long	0x15b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0xf
	.value	0x15a
	.long	0x2477
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0xf
	.value	0x15d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0xf
	.value	0x160
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0xf
	.value	0x166
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0xf
	.value	0x16a
	.long	0x161d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0xf
	.value	0x16d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0xf
	.value	0x16e
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0xf
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0xf
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0xf
	.value	0x173
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0xf
	.value	0x175
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0xf
	.value	0x178
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0xf
	.value	0x17d
	.long	0x2490
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0xf
	.value	0x17f
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0xf
	.value	0x181
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xb
	.string	"language"
	.byte	0xf
	.value	0x184
	.long	0x24aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0xf
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1d
	.string	"returns_struct"
	.byte	0xf
	.value	0x190
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pcc_struct"
	.byte	0xf
	.value	0x194
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pointer"
	.byte	0xf
	.value	0x197
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"needs_context"
	.byte	0xf
	.value	0x19a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_setjmp"
	.byte	0xf
	.value	0x19d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_longjmp"
	.byte	0xf
	.value	0x1a0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_alloca"
	.byte	0xf
	.value	0x1a4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_eh_return"
	.byte	0xf
	.value	0x1a7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_label"
	.byte	0xf
	.value	0x1ab
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_goto"
	.byte	0xf
	.value	0x1af
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"contains_functions"
	.byte	0xf
	.value	0x1b2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_computed_jump"
	.byte	0xf
	.value	0x1b5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"is_thunk"
	.byte	0xf
	.value	0x1ba
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"all_throwers_are_sibcalls"
	.byte	0xf
	.value	0x1c1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"instrument_entry_exit"
	.byte	0xf
	.value	0x1c5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arc_profile"
	.byte	0xf
	.value	0x1c8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"profile"
	.byte	0xf
	.value	0x1cb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"limit_stack"
	.byte	0xf
	.value	0x1cf
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"stdarg"
	.byte	0xf
	.value	0x1d2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_whole_function_mode_p"
	.byte	0xf
	.value	0x1d8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xf
	.value	0x1e1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_const_pool"
	.byte	0xf
	.value	0x1e4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_pic_offset_table"
	.byte	0xf
	.value	0x1e7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_eh_lsda"
	.byte	0xf
	.value	0x1ea
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arg_pointer_save_area_init"
	.byte	0xf
	.value	0x1ed
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF8
	.byte	0xf
	.value	0x1fa
	.long	0x19d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0xf
	.value	0x1fe
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2400
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2412
	.uleb128 0x3
	.byte	0x4
	.long	0x18f7
	.uleb128 0x3
	.byte	0x4
	.long	0x17a2
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2432
	.uleb128 0x3
	.byte	0x4
	.long	0x1a41
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x244e
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x246b
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x247d
	.uleb128 0x19
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2496
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x9
	.byte	0x29
	.long	0x39a
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x9
	.byte	0x34
	.long	0x24dd
	.uleb128 0xd
	.long	0x24ed
	.long	0x24b0
	.uleb128 0xe
	.long	0x304
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x358
	.uleb128 0x4
	.long	0x2557
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x5
	.byte	0x35
	.long	0x2557
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x2557
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x255d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2500
	.uleb128 0xd
	.long	0x256d
	.long	0x24ed
	.uleb128 0xe
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x2500
	.uleb128 0x3
	.byte	0x4
	.long	0x256d
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x13ee
	.uleb128 0x4
	.long	0x25f1
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x25f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x2601
	.long	0x39a
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x2610
	.uleb128 0x3
	.byte	0x4
	.long	0x2597
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x2589
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x389
	.uleb128 0x4
	.long	0x26de
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1577
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1577
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x6
	.byte	0x85
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x2624
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2635
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x26de
	.uleb128 0x4
	.long	0x295d
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xb
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x2963
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x2963
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x2963
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x2976
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x6
	.value	0x18b
	.long	0x2963
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x2963
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x2601
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x2976
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x2976
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x2601
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x297c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x295d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x295d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x6
	.value	0x1b7
	.long	0x295d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x26f0
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x1577
	.uleb128 0x3
	.byte	0x4
	.long	0x26e4
	.uleb128 0x3
	.byte	0x4
	.long	0x295d
	.uleb128 0x8
	.long	0x201
	.uleb128 0x4
	.long	0x29d1
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xb
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0xb
	.byte	0xa3
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xb
	.byte	0xa4
	.long	0x29d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0xb
	.byte	0xa5
	.long	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2987
	.uleb128 0x1f
	.long	0x29ec
	.byte	0x1
	.long	0x29d1
	.uleb128 0x20
	.long	0x3f0
	.uleb128 0x20
	.long	0x3d3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29d7
	.uleb128 0x21
	.long	0x2a03
	.byte	0x1
	.uleb128 0x20
	.long	0x3f0
	.uleb128 0x20
	.long	0x29d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29f2
	.uleb128 0x4
	.long	0x2a71
	.string	"resources"
	.byte	0x1c
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"memory"
	.byte	0x8
	.byte	0x1d
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unch_memory"
	.byte	0x8
	.byte	0x1e
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"volatil"
	.byte	0x8
	.byte	0x1f
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"cc"
	.byte	0x8
	.byte	0x20
	.long	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"regs"
	.byte	0x8
	.byte	0x21
	.long	0x24c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x2aae
	.long	.LASF9
	.byte	0xc
	.byte	0x12
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0x12
	.byte	0x30
	.long	0x2982
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x12
	.byte	0x32
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x12
	.byte	0x34
	.long	0x2982
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.long	.LASF9
	.byte	0x12
	.byte	0x35
	.long	0x2a71
	.uleb128 0x22
	.long	0x2b11
	.string	"stop_search_p"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x214
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.byte	0xe9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"labels_p"
	.byte	0x1
	.byte	0xea
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF11
	.long	0x4a8c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11285
	.byte	0x0
	.uleb128 0x26
	.long	0x2b77
	.string	"resource_conflicts_p"
	.byte	0x1
	.value	0x10e
	.byte	0x1
	.long	0x214
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.string	"res1"
	.byte	0x1
	.value	0x10d
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"res2"
	.byte	0x1
	.value	0x10d
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x118
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a09
	.uleb128 0x26
	.long	0x2c0c
	.string	"insn_references_resource_p"
	.byte	0x1
	.value	0x130
	.byte	0x1
	.long	0x214
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x12d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"res"
	.byte	0x1
	.value	0x12e
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x12f
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"insn_res"
	.byte	0x1
	.value	0x131
	.long	0x2a09
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x133
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24b0
	.uleb128 0x26
	.long	0x2c9c
	.string	"insn_sets_resource_p"
	.byte	0x1
	.value	0x142
	.byte	0x1
	.long	0x214
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x13f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"res"
	.byte	0x1
	.value	0x140
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x141
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"insn_sets"
	.byte	0x1
	.value	0x143
	.long	0x2a09
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x145
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2d24
	.string	"find_end_label"
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.long	0x9a
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0x150
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x2cf1
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0x168
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x28
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0x193
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0x197
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2e5d
	.string	"emit_delay_sequence"
	.byte	0x1
	.value	0x1b3
	.byte	0x1
	.long	0x9a
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x1b0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"list"
	.byte	0x1
	.value	0x1b1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"length"
	.byte	0x1
	.value	0x1b2
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1b4
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"li"
	.byte	0x1
	.value	0x1b5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"had_barrier"
	.byte	0x1
	.value	0x1b6
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"seqv"
	.byte	0x1
	.value	0x1b9
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x1ba
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x1bb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x1bc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"last"
	.byte	0x1
	.value	0x1bd
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF15
	.byte	0x1
	.value	0x1c0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x2e4c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.string	"tem"
	.byte	0x1
	.value	0x1e8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x1e9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x1e9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	.LASF11
	.long	0x4a77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11482
	.byte	0x0
	.uleb128 0x26
	.long	0x2ea7
	.string	"add_to_delay_list"
	.byte	0x1
	.value	0x22a
	.byte	0x1
	.long	0x9a
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x228
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x229
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x26
	.long	0x2f59
	.string	"delete_from_delay_slot"
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	0x9a
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x241
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x243
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x243
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x243
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"prev"
	.byte	0x1
	.value	0x243
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF16
	.byte	0x1
	.value	0x244
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x245
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0x271
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2f94
	.string	"delete_scheduled_jump"
	.byte	0x1
	.value	0x27c
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x27b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2fe0
	.string	"note_delay_statistics"
	.byte	0x1
	.value	0x2b6
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x2b5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"index"
	.byte	0x1
	.value	0x2b5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x26
	.long	0x3062
	.string	"optimize_skip"
	.byte	0x1
	.value	0x2e2
	.byte	0x1
	.long	0x9a
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x2e1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x2e3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF19
	.byte	0x1
	.value	0x2e4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF16
	.byte	0x1
	.value	0x2e5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF20
	.byte	0x1
	.value	0x2e6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x2e7
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x30e5
	.string	"get_jump_flags"
	.byte	0x1
	.value	0x334
	.byte	0x1
	.long	0x214
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x333
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x333
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x335
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	0x30d4
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2b
	.long	.LASF22
	.byte	0x1
	.value	0x350
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	.LASF11
	.long	0x4a72
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11769
	.byte	0x0
	.uleb128 0x26
	.long	0x3144
	.string	"rare_destination"
	.byte	0x1
	.value	0x374
	.byte	0x1
	.long	0x214
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x373
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"jump_count"
	.byte	0x1
	.value	0x375
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x376
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x3206
	.string	"mostly_true_jump"
	.byte	0x1
	.value	0x3a8
	.byte	0x1
	.long	0x214
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x3a7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x3a7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF20
	.byte	0x1
	.value	0x3a9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0x3aa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x3aa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"rare_dest"
	.byte	0x1
	.value	0x3ab
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"rare_fallthrough"
	.byte	0x1
	.value	0x3ac
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x29
	.string	"prob"
	.byte	0x1
	.value	0x3b3
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x328a
	.string	"get_branch_condition"
	.byte	0x1
	.value	0x424
	.byte	0x1
	.long	0x9a
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x422
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x423
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x425
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x426
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x29
	.string	"rev"
	.byte	0x1
	.value	0x442
	.long	0x977
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3319
	.string	"condition_dominates_p"
	.byte	0x1
	.value	0x454
	.byte	0x1
	.long	0x214
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x452
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x453
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"other_condition"
	.byte	0x1
	.value	0x455
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"code"
	.byte	0x1
	.value	0x456
	.long	0x977
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"other_code"
	.byte	0x1
	.value	0x457
	.long	0x977
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x33ad
	.string	"redirect_with_delay_slots_safe_p"
	.byte	0x1
	.value	0x46f
	.byte	0x1
	.long	0x214
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x27
	.string	"jump"
	.byte	0x1
	.value	0x46e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x46e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"seq"
	.byte	0x1
	.value	0x46e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x470
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x470
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x471
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x343f
	.string	"redirect_with_delay_list_safe_p"
	.byte	0x1
	.value	0x492
	.byte	0x1
	.long	0x214
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x27
	.string	"jump"
	.byte	0x1
	.value	0x491
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x491
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x491
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x493
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x493
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"li"
	.byte	0x1
	.value	0x494
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x34c5
	.string	"check_annul_list_true_false"
	.byte	0x1
	.value	0x4b5
	.byte	0x1
	.long	0x214
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x27
	.string	"annul_true_p"
	.byte	0x1
	.value	0x4b3
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x4b4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0x4b6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x4bc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x36ad
	.string	"steal_delay_list_from_target"
	.byte	0x1
	.value	0x4e8
	.byte	0x1
	.long	0x9a
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x4e0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x4e0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"seq"
	.byte	0x1
	.value	0x4e1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x4e2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.string	"sets"
	.byte	0x1
	.value	0x4e3
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x4e3
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.long	.LASF28
	.byte	0x1
	.value	0x4e3
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x4e4
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0x4e5
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.value	0x4e6
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x27
	.string	"pnew_thread"
	.byte	0x1
	.value	0x4e7
	.long	0x15b2
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0x4e9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"slots_remaining"
	.byte	0x1
	.value	0x4ea
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"total_slots_filled"
	.byte	0x1
	.value	0x4eb
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"new_delay_list"
	.byte	0x1
	.value	0x4ec
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.value	0x4ed
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF33
	.byte	0x1
	.value	0x4ee
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x4ef
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"cc_set"
	.byte	0x1
	.value	0x4f0
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	0x3667
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x502
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x3684
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x505
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x28
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x51b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x51c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x37d3
	.string	"steal_delay_list_from_fallthrough"
	.byte	0x1
	.value	0x571
	.byte	0x1
	.long	0x9a
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x56a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x56a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"seq"
	.byte	0x1
	.value	0x56b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x56c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.string	"sets"
	.byte	0x1
	.value	0x56d
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x56d
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.long	.LASF28
	.byte	0x1
	.value	0x56d
	.long	0x2b77
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x56e
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0x56f
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.value	0x570
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x572
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x573
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.value	0x574
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF33
	.byte	0x1
	.value	0x575
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x582
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x39e9
	.string	"try_merge_delay_insns"
	.byte	0x1
	.value	0x5bd
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x5bc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0x5bc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x5be
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF19
	.byte	0x1
	.value	0x5be
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF15
	.byte	0x1
	.value	0x5bf
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"annul_p"
	.byte	0x1
	.value	0x5c0
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"slot_number"
	.byte	0x1
	.value	0x5c1
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"num_slots"
	.byte	0x1
	.value	0x5c2
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"next_to_match"
	.byte	0x1
	.value	0x5c3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x5c4
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.long	.LASF27
	.byte	0x1
	.value	0x5c4
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.string	"merged_insns"
	.byte	0x1
	.value	0x5c5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x5c6
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x5c7
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	0x3918
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x5cb
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2c
	.long	0x3935
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x5cc
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2c
	.long	0x3966
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"oldtrial"
	.byte	0x1
	.value	0x5dc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2c
	.long	0x39cf
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x615
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"filled_insn"
	.byte	0x1
	.value	0x616
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x29
	.string	"dtrial"
	.byte	0x1
	.value	0x61e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.value	0x62b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.value	0x651
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3b4c
	.long	.LASF35
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	0x9a
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x67b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x67c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x67d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"target_main"
	.byte	0x1
	.value	0x67f
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"ipat"
	.byte	0x1
	.value	0x680
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x681
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x681
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF27
	.byte	0x1
	.value	0x682
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x682
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x683
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"insns_to_search"
	.byte	0x1
	.value	0x684
	.long	0x2ed
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	0x3ade
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x6c9
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2c
	.long	0x3afb
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x6ca
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2c
	.long	0x3b2c
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x6e0
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"scan_fp_"
	.byte	0x1
	.value	0x6e0
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x28
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x29
	.string	"candidate"
	.byte	0x1
	.value	0x719
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3bd4
	.string	"own_thread_p"
	.byte	0x1
	.value	0x750
	.byte	0x1
	.long	0x214
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0x74d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x74e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"allow_fallthrough"
	.byte	0x1
	.value	0x74f
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"active_insn"
	.byte	0x1
	.value	0x751
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0x752
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3c17
	.string	"update_block"
	.byte	0x1
	.value	0x77e
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x77c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"where"
	.byte	0x1
	.value	0x77d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x26
	.long	0x3c67
	.string	"reorg_redirect_jump"
	.byte	0x1
	.value	0x793
	.byte	0x1
	.long	0x214
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x27
	.string	"jump"
	.byte	0x1
	.value	0x791
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"nlabel"
	.byte	0x1
	.value	0x792
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x3ce6
	.string	"update_reg_dead_notes"
	.byte	0x1
	.value	0x7a6
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x7a5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"delayed_insn"
	.byte	0x1
	.value	0x7a5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x7a7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x7a7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x7a7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3d65
	.string	"fix_reg_dead_note"
	.byte	0x1
	.value	0x7c8
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x27
	.string	"start_insn"
	.byte	0x1
	.value	0x7c7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"stop_insn"
	.byte	0x1
	.value	0x7c7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x7c9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x7c9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x7c9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3dd0
	.string	"update_reg_unused_notes"
	.byte	0x1
	.value	0x7e7
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x7e6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF35
	.byte	0x1
	.value	0x7e6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.value	0x7e8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x7e8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x400c
	.string	"fill_simple_delay_slots"
	.byte	0x1
	.value	0x809
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x27
	.string	"non_jumps_p"
	.byte	0x1
	.value	0x808
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0x80a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x80a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0x80a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF19
	.byte	0x1
	.value	0x80a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x80b
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF36
	.byte	0x1
	.value	0x80c
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF27
	.byte	0x1
	.value	0x80d
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x80d
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF29
	.byte	0x1
	.value	0x80e
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF18
	.byte	0x1
	.value	0x80e
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF16
	.byte	0x1
	.value	0x80f
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x813
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	0x3f21
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x855
	.long	0x15b2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x868
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"prev"
	.byte	0x1
	.value	0x869
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3f3e
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x87f
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2c
	.long	0x3f5b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x880
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x28
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2b
	.long	.LASF25
	.byte	0x1
	.value	0x8ed
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"maybe_never"
	.byte	0x1
	.value	0x8ee
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0x8ef
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"trial_delay"
	.byte	0x1
	.value	0x8ef
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x3fcd
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x8f1
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x3fea
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x8f2
	.long	0x2c0c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x28
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x29
	.string	"new_label"
	.byte	0x1
	.value	0x960
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x433f
	.string	"fill_slots_from_thread"
	.byte	0x1
	.value	0xa0a
	.byte	0x1
	.long	0x9a
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0xa02
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0xa03
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0xa04
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"opposite_thread"
	.byte	0x1
	.value	0xa04
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.string	"likely"
	.byte	0x1
	.value	0xa05
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.string	"thread_if_true"
	.byte	0x1
	.value	0xa06
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x27
	.string	"own_thread"
	.byte	0x1
	.value	0xa07
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0xa08
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0xa08
	.long	0x728
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0xa09
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x29
	.string	"new_thread"
	.byte	0x1
	.value	0xa0b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"opposite_needed"
	.byte	0x1
	.value	0xa0c
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0xa0c
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.long	.LASF27
	.byte	0x1
	.value	0xa0c
	.long	0x2a09
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0xa0d
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"lose"
	.byte	0x1
	.value	0xa0e
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.value	0xa0f
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0xa10
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.string	"winner"
	.byte	0x1
	.value	0xa9d
	.long	.L811
	.uleb128 0x2c
	.long	0x41b4
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0xa21
	.long	0x2c0c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2c
	.long	0x41d2
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0xa31
	.long	0x2c0c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x2c
	.long	0x41f0
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0xa32
	.long	0x2c0c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2c
	.long	0x4294
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xa3d
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"old_trial"
	.byte	0x1
	.value	0xa3d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	0x427a
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x29
	.string	"prior_insn"
	.byte	0x1
	.value	0xa55
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x29
	.string	"temp"
	.byte	0x1
	.value	0xa9a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0xaaa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0xb04
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x4311
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xb39
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"dest"
	.byte	0x1
	.value	0xb3a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0xb3b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x29
	.string	"other"
	.byte	0x1
	.value	0xb4c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"new_arith"
	.byte	0x1
	.value	0xb4d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"ninsn"
	.byte	0x1
	.value	0xb4e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x432e
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2b
	.long	.LASF21
	.byte	0x1
	.value	0xb83
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x25
	.long	.LASF11
	.long	0x4a5d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13381
	.byte	0x0
	.uleb128 0x2d
	.long	0x4463
	.string	"fill_eager_delay_slots"
	.byte	0x1
	.value	0xba9
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0xbaa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xbab
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF36
	.byte	0x1
	.value	0xbac
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.long	.LASF24
	.byte	0x1
	.value	0xbb0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF20
	.byte	0x1
	.value	0xbb1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"insn_at_target"
	.byte	0x1
	.value	0xbb1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"fallthrough_insn"
	.byte	0x1
	.value	0xbb1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF16
	.byte	0x1
	.value	0xbb2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"own_target"
	.byte	0x1
	.value	0xbb3
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"own_fallthrough"
	.byte	0x1
	.value	0xbb4
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF22
	.byte	0x1
	.value	0xbb5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF29
	.byte	0x1
	.value	0xbb5
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LASF18
	.byte	0x1
	.value	0xbb5
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4674
	.string	"relax_delay_slots"
	.byte	0x1
	.value	0xc2a
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0xc29
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0xc2b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0xc2b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xc2b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF17
	.byte	0x1
	.value	0xc2c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.long	.LASF15
	.byte	0x1
	.value	0xc2c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF20
	.byte	0x1
	.value	0xc2c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	0x4663
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x29
	.string	"other"
	.byte	0x1
	.value	0xc31
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	0x4536
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.long	.LASF21
	.byte	0x1
	.value	0xc54
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2c
	.long	0x455c
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x29
	.string	"other_target"
	.byte	0x1
	.value	0xc82
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x2c
	.long	0x45a1
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x29
	.string	"after"
	.byte	0x1
	.value	0xca8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xca9
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.long	.LASF37
	.byte	0x1
	.value	0xcbe
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x45be
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0xcea
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2c
	.long	0x4603
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x29
	.string	"after"
	.byte	0x1
	.value	0xd21
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xd22
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2b
	.long	.LASF37
	.byte	0x1
	.value	0xd39
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2b
	.long	.LASF21
	.byte	0x1
	.value	0xd59
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"old_label"
	.byte	0x1
	.value	0xd5a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xd6b
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x29
	.string	"slot"
	.byte	0x1
	.value	0xd72
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	.LASF11
	.long	0x4a48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13914
	.byte	0x0
	.uleb128 0x2d
	.long	0x478d
	.string	"make_return_insns"
	.byte	0x1
	.value	0xd98
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0xd97
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0xd99
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF23
	.byte	0x1
	.value	0xd99
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xd99
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"real_return_label"
	.byte	0x1
	.value	0xd9a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"slots"
	.byte	0x1
	.value	0xd9b
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xd9b
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x4740
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xdb7
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"__obj"
	.byte	0x1
	.value	0xdb7
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x28
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0xdbb
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x29
	.string	"prev"
	.byte	0x1
	.value	0xdfb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xe05
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4a22
	.byte	0x1
	.string	"dbr_schedule"
	.byte	0x1
	.value	0xe1d
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2a
	.long	.LASF3
	.byte	0x1
	.value	0xe1b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"file"
	.byte	0x1
	.value	0xe1c
	.long	0x4a22
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF10
	.byte	0x1
	.value	0xe1e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0xe1e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"epilogue_insn"
	.byte	0x1
	.value	0xe1e
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xe1f
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	0x4892
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x29
	.string	"__h"
	.byte	0x1
	.value	0xe44
	.long	0x179c
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	0x4864
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xe44
	.long	0x179c
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"__len"
	.byte	0x1
	.value	0xe44
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x28
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x29
	.string	"__o1"
	.byte	0x1
	.value	0xe44
	.long	0x179c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"value"
	.byte	0x1
	.value	0xe44
	.long	0x3f0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x48ca
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2b
	.long	.LASF25
	.byte	0x1
	.value	0xe49
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xe55
	.long	0x179c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x48f8
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xe8c
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"__obj"
	.byte	0x1
	.value	0xe8c
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2c
	.long	0x496e
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x29
	.string	"__h"
	.byte	0x1
	.value	0xe8f
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	0x4942
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.value	0xe8f
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"__len"
	.byte	0x1
	.value	0xe8f
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x28
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x29
	.string	"__o1"
	.byte	0x1
	.value	0xe8f
	.long	0x179c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"value"
	.byte	0x1
	.value	0xe8f
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x49e8
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xe93
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0xe93
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"need_comma"
	.byte	0x1
	.value	0xe93
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"total_delay_slots"
	.byte	0x1
	.value	0xe94
	.long	0x4a28
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.string	"total_annul_slots"
	.byte	0x1
	.value	0xe95
	.long	0x4a28
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x28
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x29
	.string	"pred_flags"
	.byte	0x1
	.value	0xeed
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x29
	.string	"pat"
	.byte	0x1
	.value	0xef1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f8
	.uleb128 0xd
	.long	0x4a38
	.long	0x214
	.uleb128 0xe
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	0x4a48
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x11
	.byte	0x0
	.uleb128 0x8
	.long	0x4a38
	.uleb128 0xd
	.long	0x4a5d
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x16
	.byte	0x0
	.uleb128 0x8
	.long	0x4a4d
	.uleb128 0xd
	.long	0x4a72
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x4a62
	.uleb128 0x8
	.long	0x718
	.uleb128 0xd
	.long	0x4a8c
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x4a7c
	.uleb128 0x31
	.string	"unfilled_slots_obstack"
	.byte	0x1
	.byte	0x9b
	.long	0x166f
	.byte	0x5
	.byte	0x3
	.long	unfilled_slots_obstack
	.uleb128 0x31
	.string	"unfilled_firstobj"
	.byte	0x1
	.byte	0x9c
	.long	0x15b2
	.byte	0x5
	.byte	0x3
	.long	unfilled_firstobj
	.uleb128 0x31
	.string	"end_of_function_label"
	.byte	0x1
	.byte	0xa9
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	end_of_function_label
	.uleb128 0x31
	.string	"uid_to_ruid"
	.byte	0x1
	.byte	0xad
	.long	0x728
	.byte	0x5
	.byte	0x3
	.long	uid_to_ruid
	.uleb128 0x31
	.string	"max_uid"
	.byte	0x1
	.byte	0xb0
	.long	0x214
	.byte	0x5
	.byte	0x3
	.long	max_uid
	.uleb128 0xd
	.long	0x4b3b
	.long	0x214
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.byte	0x0
	.uleb128 0x29
	.string	"num_insns_needing_delays"
	.byte	0x1
	.value	0x2ad
	.long	0x4b25
	.byte	0x5
	.byte	0x3
	.long	num_insns_needing_delays
	.uleb128 0xd
	.long	0x4b7e
	.long	0x214
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.uleb128 0xe
	.long	0x304
	.byte	0x3
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.byte	0x0
	.uleb128 0x29
	.string	"num_filled_delays"
	.byte	0x1
	.value	0x2af
	.long	0x4b62
	.byte	0x5
	.byte	0x3
	.long	num_filled_delays
	.uleb128 0x29
	.string	"reorg_pass_number"
	.byte	0x1
	.value	0x2b1
	.long	0x214
	.byte	0x5
	.byte	0x3
	.long	reorg_pass_number
	.uleb128 0xd
	.long	0x4bce
	.long	0x331
	.uleb128 0xe
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x32
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x4be2
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4bbe
	.uleb128 0xd
	.long	0x4bf7
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x32
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x4c0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4be7
	.uleb128 0xd
	.long	0x4c1f
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0x80
	.byte	0x0
	.uleb128 0x33
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x4c0f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6aa
	.long	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4c60
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0xa
	.byte	0x0
	.uleb128 0x33
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x4c50
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"cfun"
	.byte	0xf
	.value	0x202
	.long	0x2448
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"n_basic_blocks"
	.byte	0x6
	.byte	0xf2
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"optimize_size"
	.byte	0x11
	.byte	0x47
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"compiler_params"
	.byte	0x12
	.byte	0x3a
	.long	0x4ccc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2aae
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4cd3
	.long	0x478d
	.string	"dbr_schedule"
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
.LASF17:
	.string	"trial"
.LASF23:
	.string	"jump_insn"
.LASF5:
	.string	"next"
.LASF10:
	.string	"insn"
.LASF15:
	.string	"delay_insn"
.LASF37:
	.string	"this_insn"
.LASF16:
	.string	"delay_list"
.LASF32:
	.string	"must_annul"
.LASF9:
	.string	"param_info"
.LASF34:
	.string	"thread"
.LASF22:
	.string	"prediction"
.LASF31:
	.string	"pannul_p"
.LASF25:
	.string	"target"
.LASF13:
	.string	"scan_tp_"
.LASF33:
	.string	"used_annul"
.LASF26:
	.string	"newlabel"
.LASF2:
	.string	"mem_attrs"
.LASF3:
	.string	"first"
.LASF24:
	.string	"condition"
.LASF20:
	.string	"target_label"
.LASF27:
	.string	"needed"
.LASF35:
	.string	"redundant_insn"
.LASF12:
	.string	"include_delayed_effects"
.LASF6:
	.string	"sequence_stack"
.LASF28:
	.string	"other_needed"
.LASF21:
	.string	"label"
.LASF11:
	.string	"__FUNCTION__"
.LASF14:
	.string	"seq_insn"
.LASF19:
	.string	"next_trial"
.LASF18:
	.string	"slots_filled"
.LASF1:
	.string	"_IO_FILE"
.LASF36:
	.string	"num_unfilled_slots"
.LASF7:
	.string	"sequence_rtl_expr"
.LASF30:
	.string	"pslots_filled"
.LASF8:
	.string	"function_frequency"
.LASF29:
	.string	"slots_to_fill"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"flags"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
