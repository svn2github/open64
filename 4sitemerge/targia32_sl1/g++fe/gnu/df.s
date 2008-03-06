	.file	"df.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	df_insn_table_realloc, @function
df_insn_table_realloc:
.LFB15:
	.file 1 "../../../kg++fe/gnu/df.c"
	.loc 1 306 0
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
	subl	$12, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 307 0
	addl	$1, 12(%ebp)
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	12(%ebp), %eax
	jae	.L5
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	shrl	$2, %eax
	addl	%eax, 12(%ebp)
	.loc 1 315 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 318 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	%esi, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 321 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 325 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.L5:
	.loc 1 328 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	df_insn_table_realloc, .-df_insn_table_realloc
	.type	df_reg_table_realloc, @function
df_reg_table_realloc:
.LFB16:
	.loc 1 336 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$12, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 338 0
	cmpl	$0, 12(%ebp)
	jne	.L7
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	shrl	$2, %eax
	movl	%eax, 12(%ebp)
.L7:
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 342 0
	call	max_reg_num@PLT
	cmpl	12(%ebp), %eax
	jle	.L9
	.loc 1 343 0
	call	max_reg_num@PLT
	movl	%eax, 12(%ebp)
.L9:
	.loc 1 345 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 349 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	%esi, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 352 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 353 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	df_reg_table_realloc, .-df_reg_table_realloc
	.type	df_bitmaps_alloc, @function
df_bitmaps_alloc:
.LFB17:
	.loc 1 393 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$32, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 394 0
	movl	$0, -20(%ebp)
	.loc 1 398 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L13
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	call	max_reg_num@PLT
	cmpl	%eax, %esi
	jae	.L13
	.loc 1 399 0
	orl	$6, -20(%ebp)
.L13:
	.loc 1 400 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L16
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	jae	.L16
	.loc 1 401 0
	orl	$2, -20(%ebp)
.L16:
	.loc 1 402 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L19
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jae	.L19
	.loc 1 403 0
	orl	$1, -20(%ebp)
.L19:
	.loc 1 405 0
	cmpl	$0, -20(%ebp)
	je	.L22
	.loc 1 406 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bitmaps_free
.L22:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 411 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L24
.L25:
.LBB2:
	.loc 1 413 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 415 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L26
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L26
	.loc 1 418 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 419 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 420 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 421 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 422 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 423 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 424 0
	movl	-12(%ebp), %eax
	movl	$0, 48(%eax)
.L26:
	.loc 1 427 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L29
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L29
	.loc 1 430 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 431 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 433 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 434 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 435 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 436 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 437 0
	movl	-12(%ebp), %eax
	movl	$0, 52(%eax)
.L29:
	.loc 1 440 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L32
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L32
	.loc 1 443 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 444 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 445 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 446 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 447 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 448 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 449 0
	movl	-12(%ebp), %eax
	movl	$0, 56(%eax)
.L32:
.LBE2:
	.loc 1 411 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L24:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L25
	.loc 1 452 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	df_bitmaps_alloc, .-df_bitmaps_alloc
	.type	df_bitmaps_free, @function
df_bitmaps_free:
.LFB18:
	.loc 1 460 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$20, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 463 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L38
.L39:
.LBB3:
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 467 0
	cmpl	$0, -8(%ebp)
	je	.L40
	.loc 1 470 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L42
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 473 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L45
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
.L45:
	.loc 1 474 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 475 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L47
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
.L47:
	.loc 1 476 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 477 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L49
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
.L49:
	.loc 1 478 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 479 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L51
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
.L51:
	.loc 1 480 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
.L42:
	.loc 1 483 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L53
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 486 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L56
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
.L56:
	.loc 1 487 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 488 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L58
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 20(%eax)
.L58:
	.loc 1 489 0
	movl	-8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 490 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L60
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
.L60:
	.loc 1 491 0
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 492 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L62
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L62:
	.loc 1 493 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L53:
	.loc 1 496 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L40
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 499 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L66
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 32(%eax)
.L66:
	.loc 1 500 0
	movl	-8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 501 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L68
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
.L68:
	.loc 1 502 0
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 503 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L70
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
.L70:
	.loc 1 504 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 505 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L72
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 44(%eax)
.L72:
	.loc 1 506 0
	movl	-8(%ebp), %eax
	movl	$0, 44(%eax)
.L40:
.LBE3:
	.loc 1 463 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L38:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L39
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	andl	$7, %eax
	notl	%eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 510 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	df_bitmaps_free, .-df_bitmaps_free
	.type	df_alloc, @function
df_alloc:
.LFB19:
	.loc 1 518 0
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
	.loc 1 522 0
	leal	df_ref_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 526 0
	call	get_max_uid@PLT
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 531 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 532 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 535 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 537 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 538 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 540 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 541 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 544 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 546 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_table_realloc
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_table_realloc
	.loc 1 550 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 551 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 553 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 555 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$60, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 557 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	.loc 1 558 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L77
.L78:
	.loc 1 559 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 558 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L77:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L78
	.loc 1 560 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	df_alloc, .-df_alloc
	.type	df_free, @function
df_free:
.LFB20:
	.loc 1 567 0
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
	.loc 1 568 0
	movl	$255, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bitmaps_free
	.loc 1 570 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L82
	.loc 1 571 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L82:
	.loc 1 572 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 574 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 575 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L84:
	.loc 1 576 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 577 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	.loc 1 579 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L86
	.loc 1 580 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L86:
	.loc 1 581 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 582 0
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 583 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 585 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L88
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L88:
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 589 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 591 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L90
	.loc 1 592 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L90:
	.loc 1 593 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 594 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 596 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L92
	.loc 1 597 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L92
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	$0, 80(%eax)
.L92:
	.loc 1 598 0
	movl	8(%ebp), %eax
	movl	$0, 80(%eax)
	.loc 1 600 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L95
	.loc 1 601 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L95
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	$0, 76(%eax)
.L95:
	.loc 1 602 0
	movl	8(%ebp), %eax
	movl	$0, 76(%eax)
	.loc 1 604 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	.L98
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	$0, 84(%eax)
.L98:
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	$0, 84(%eax)
.LBB4:
	.loc 1 607 0
	leal	df_ref_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L100
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L100
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L104
.L100:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L104:
.LBE4:
	.loc 1 608 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	df_free, .-df_free
	.type	df_reg_use_gen, @function
df_reg_use_gen:
.LFB21:
	.loc 1 615 0
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
	.loc 1 619 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 621 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -8(%ebp)
	.loc 1 622 0
	movl	-8(%ebp), %eax
	.loc 1 623 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	df_reg_use_gen, .-df_reg_use_gen
	.type	df_reg_clobber_gen, @function
df_reg_clobber_gen:
.LFB22:
	.loc 1 629 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$36, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 633 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 635 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -8(%ebp)
	.loc 1 636 0
	movl	-8(%ebp), %eax
	.loc 1 637 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	df_reg_clobber_gen, .-df_reg_clobber_gen
	.section	.rodata
	.type	__FUNCTION__.10711, @object
	.size	__FUNCTION__.10711, 14
__FUNCTION__.10711:
	.string	"df_ref_unlink"
.LC0:
	.string	"../../../kg++fe/gnu/df.c"
	.text
	.type	df_ref_unlink, @function
df_ref_unlink:
.LFB24:
	.loc 1 662 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$36, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 663 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 665 0
	cmpl	$0, -8(%ebp)
	je	.L110
	.loc 1 667 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 672 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L114
	.loc 1 673 0
	leal	__FUNCTION__.10711@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$673, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L114:
	.loc 1 675 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L110
.L112:
	.loc 1 680 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L118
	.loc 1 681 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L110
.L119:
	.loc 1 687 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L120
	.loc 1 690 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 691 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L122
.L120:
	.loc 1 685 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L118:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L119
.L110:
	.loc 1 697 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L122:
	movl	-24(%ebp), %eax
	.loc 1 698 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	df_ref_unlink, .-df_ref_unlink
.globl df_ref_remove
	.type	df_ref_remove, @function
df_ref_remove:
.LFB25:
	.loc 1 706 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	subl	$8, %esp
.LCFI43:
	.loc 1 707 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 709 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_unlink
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
	jmp	.L127
.L125:
	.loc 1 714 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_use_unlink
	.loc 1 715 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
.L127:
	.loc 1 717 0
	movl	$1, %eax
	.loc 1 718 0
	leave
	ret
.LFE25:
	.size	df_ref_remove, .-df_ref_remove
	.type	df_def_unlink, @function
df_def_unlink:
.LFB26:
	.loc 1 726 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	subl	$40, %esp
.LCFI46:
	.loc 1 728 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L130
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L132
.L130:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L132:
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 731 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L133
.L134:
.LBB5:
	.loc 1 733 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 736 0
	movl	-4(%ebp), %edx
	addl	$12, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
.LBE5:
	.loc 1 731 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L133:
	cmpl	$0, -12(%ebp)
	jne	.L134
	.loc 1 738 0
	movl	12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 741 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
	.loc 1 743 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 744 0
	leave
	ret
.LFE26:
	.size	df_def_unlink, .-df_def_unlink
	.type	df_use_unlink, @function
df_use_unlink:
.LFB27:
	.loc 1 752 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	subl	$40, %esp
.LCFI49:
	.loc 1 754 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L138
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L140
.L138:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L140:
	movl	-20(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 757 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L141
.L142:
.LBB6:
	.loc 1 759 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 762 0
	movl	-4(%ebp), %edx
	addl	$12, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
.LBE6:
	.loc 1 757 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L141:
	cmpl	$0, -12(%ebp)
	jne	.L142
	.loc 1 764 0
	movl	12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 767 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
	.loc 1 769 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 770 0
	leave
	ret
.LFE27:
	.size	df_use_unlink, .-df_use_unlink
	.type	df_ref_create, @function
df_ref_create:
.LFB28:
	.loc 1 785 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$48, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB7:
	.loc 1 789 0
	leal	df_ref_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB8:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$28, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L146
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L146:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE8:
.LBB9:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L148
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L148:
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
	jle	.L150
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L150:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE9:
.LBE7:
	movl	%eax, -36(%ebp)
	.loc 1 791 0
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 792 0
	movl	-36(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 793 0
	movl	-36(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 794 0
	movl	-36(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 795 0
	movl	-36(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 796 0
	movl	-36(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 797 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 799 0
	cmpl	$0, 24(%ebp)
	jne	.L152
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	%eax, %edx
	jb	.L154
	.loc 1 804 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 805 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L154:
	.loc 1 808 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 809 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	jmp	.L156
.L152:
	.loc 1 813 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jb	.L157
	.loc 1 816 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 817 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L157:
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 821 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
.L156:
	.loc 1 823 0
	movl	-36(%ebp), %eax
	.loc 1 824 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	df_ref_create, .-df_ref_create
	.type	df_ref_record_1, @function
df_ref_record_1:
.LFB29:
	.loc 1 837 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	subl	$24, %esp
.LCFI57:
	.loc 1 838 0
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
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_create
	.loc 1 839 0
	leave
	ret
.LFE29:
	.size	df_ref_record_1, .-df_ref_record_1
	.section	.rodata
	.type	__FUNCTION__.10936, @object
	.size	__FUNCTION__.10936, 14
__FUNCTION__.10936:
	.string	"df_ref_record"
	.text
	.type	df_ref_record, @function
df_ref_record:
.LFB30:
	.loc 1 852 0
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
	.loc 1 855 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L163
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L163
	.loc 1 856 0
	leal	__FUNCTION__.10936@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$856, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L163:
	.loc 1 863 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L166
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jb	.L168
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
	jb	.L166
.L168:
	.loc 1 868 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 16(%ebp)
	.loc 1 869 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L166:
	.loc 1 872 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L170
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L172
.L170:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L172:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 873 0
	cmpl	$175, -16(%ebp)
	ja	.L173
.LBB10:
	.loc 1 878 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L182
	.loc 1 886 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 887 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L177
	.loc 1 888 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	addl	%eax, -16(%ebp)
.L177:
	.loc 1 890 0
	movl	-8(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 892 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L179
.L180:
	.loc 1 893 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
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
	call	df_ref_record_1
	.loc 1 892 0
	addl	$1, -12(%ebp)
.L179:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jl	.L180
	jmp	.L182
.L173:
.LBE10:
	.loc 1 898 0
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
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_record_1
.L182:
	.loc 1 900 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	df_ref_record, .-df_ref_record
	.type	df_def_record_1, @function
df_def_record_1:
.LFB32:
	.loc 1 930 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	subl	$40, %esp
.LCFI64:
	.loc 1 931 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 932 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 933 0
	movl	$0, -8(%ebp)
	.loc 1 937 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L191
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L191
.LBB11:
	.loc 1 941 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L187
.L188:
	.loc 1 942 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_record_1
	.loc 1 941 0
	subl	$1, -4(%ebp)
.L187:
	cmpl	$0, -4(%ebp)
	jns	.L188
	.loc 1 943 0
	jmp	.L202
.L192:
.LBE11:
	.loc 1 962 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L193
	.loc 1 964 0
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 965 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L193:
	.loc 1 973 0
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 974 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 975 0
	orl	$1, -8(%ebp)
.L191:
	.loc 1 955 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L192
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L192
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L192
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_modify_subreg_p
	testb	%al, %al
	jne	.L192
	.loc 1 978 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L199
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L202
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L202
.L199:
	.loc 1 980 0
	movl	-8(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_record
.L202:
	.loc 1 981 0
	leave
	ret
.LFE32:
	.size	df_def_record_1, .-df_def_record_1
	.type	read_modify_subreg_p, @function
read_modify_subreg_p:
.LFB31:
	.loc 1 908 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	subl	$28, %esp
.LCFI67:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 910 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L204
	.loc 1 911 0
	movl	$0, -28(%ebp)
	jmp	.L206
.L204:
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 913 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
	.loc 1 914 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	ja	.L207
	.loc 1 915 0
	movl	$1, -28(%ebp)
	jmp	.L206
.L207:
	.loc 1 916 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L209
	movl	$8, -24(%ebp)
	jmp	.L211
.L209:
	movl	$4, -24(%ebp)
.L211:
	movl	-24(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L212
	.loc 1 917 0
	movl	$0, -28(%ebp)
	jmp	.L206
.L212:
	.loc 1 918 0
	movl	target_flags@GOT(%ecx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L214
	movl	$8, -20(%ebp)
	jmp	.L216
.L214:
	movl	$4, -20(%ebp)
.L216:
	movl	-20(%ebp), %eax
	cmpl	-4(%ebp), %eax
	ja	.L217
	.loc 1 919 0
	movl	$0, -28(%ebp)
	jmp	.L206
.L217:
	.loc 1 920 0
	movl	$1, -28(%ebp)
.L206:
	movl	-28(%ebp), %eax
	.loc 1 921 0
	leave
	ret
.LFE31:
	.size	read_modify_subreg_p, .-read_modify_subreg_p
	.type	df_defs_record, @function
df_defs_record:
.LFB33:
	.loc 1 991 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	subl	$40, %esp
.LCFI70:
	.loc 1 992 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 994 0
	cmpl	$57, -8(%ebp)
	je	.L221
	cmpl	$59, -8(%ebp)
	jne	.L223
.L221:
	.loc 1 997 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_record_1
	.loc 1 994 0
	jmp	.L231
.L223:
	.loc 1 999 0
	cmpl	$49, -8(%ebp)
	jne	.L231
.LBB12:
	.loc 1 1004 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L226
.L227:
	.loc 1 1006 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1007 0
	cmpl	$57, -8(%ebp)
	je	.L228
	cmpl	$59, -8(%ebp)
	jne	.L230
.L228:
	.loc 1 1008 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_record_1
.L230:
	.loc 1 1004 0
	subl	$1, -4(%ebp)
.L226:
	cmpl	$0, -4(%ebp)
	jns	.L227
.L231:
.LBE12:
	.loc 1 1011 0
	leave
	ret
.LFE33:
	.size	df_defs_record, .-df_defs_record
	.section	.rodata
	.type	__FUNCTION__.11150, @object
	.size	__FUNCTION__.11150, 15
__FUNCTION__.11150:
	.string	"df_uses_record"
	.text
	.type	df_uses_record, @function
df_uses_record:
.LFB34:
	.loc 1 1023 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$68, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L233:
	.loc 1 1027 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1028 0
	cmpl	$0, -32(%ebp)
	je	.L278
	.loc 1 1030 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1031 0
	movl	-36(%ebp), %eax
	subl	$50, %eax
	movl	%eax, -44(%ebp)
	cmpl	$61, -44(%ebp)
	ja	.L236
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L246@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L246:
	.long	.L237@GOTOFF
	.long	.L237@GOTOFF
	.long	.L236@GOTOFF
	.long	.L237@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L236@GOTOFF
	.long	.L239@GOTOFF
	.long	.L236@GOTOFF
	.long	.L240@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L237@GOTOFF
	.long	.L236@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L236@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L236@GOTOFF
	.long	.L242@GOTOFF
	.long	.L236@GOTOFF
	.long	.L243@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L244@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L278@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L236@GOTOFF
	.long	.L245@GOTOFF
	.long	.L245@GOTOFF
	.long	.L245@GOTOFF
	.long	.L245@GOTOFF
	.long	.L245@GOTOFF
	.long	.L245@GOTOFF
	.text
.L240:
	.loc 1 1048 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L278
	.loc 1 1049 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1053 0
	jmp	.L278
.L244:
	.loc 1 1056 0
	movl	-32(%ebp), %edx
	addl	$4, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1057 0
	jmp	.L278
.L243:
	.loc 1 1063 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L242
	.loc 1 1065 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	.loc 1 1066 0
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
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1067 0
	jmp	.L278
.L242:
	.loc 1 1079 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_record
	.loc 1 1080 0
	jmp	.L278
.L239:
.LBB13:
	.loc 1 1084 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1086 0
	movl	-32(%ebp), %edx
	addl	$12, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1088 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	cmpl	$74, -40(%ebp)
	je	.L253
	cmpl	$74, -40(%ebp)
	ja	.L256
	cmpl	$69, -40(%ebp)
	je	.L278
	cmpl	$69, -40(%ebp)
	ja	.L257
	cmpl	$49, -40(%ebp)
	je	.L278
	jmp	.L250
.L257:
	cmpl	$71, -40(%ebp)
	je	.L278
	cmpl	$73, -40(%ebp)
	je	.L252
	jmp	.L250
.L256:
	cmpl	$79, -40(%ebp)
	je	.L278
	cmpl	$79, -40(%ebp)
	ja	.L258
	cmpl	$76, -40(%ebp)
	je	.L254
	jmp	.L250
.L258:
	movl	-40(%ebp), %eax
	subl	$142, %eax
	cmpl	$1, %eax
	ja	.L250
	jmp	.L255
.L252:
.LBB14:
	.loc 1 1092 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_modify_subreg_p
	testb	%al, %al
	je	.L278
	.loc 1 1094 0
	movl	$1, -24(%ebp)
	.loc 1 1100 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1102 0
	jmp	.L278
.L254:
	.loc 1 1111 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1114 0
	jmp	.L278
.L253:
	.loc 1 1117 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1118 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L261
	.loc 1 1119 0
	leal	__FUNCTION__.11150@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1119, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L261:
	.loc 1 1120 0
	movl	$1, -24(%ebp)
	.loc 1 1126 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1128 0
	jmp	.L278
.L255:
	.loc 1 1131 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	movl	$1, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1133 0
	movl	-28(%ebp), %edx
	addl	$12, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1134 0
	movl	-28(%ebp), %edx
	addl	$20, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1135 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1136 0
	jmp	.L278
.L250:
	.loc 1 1138 0
	leal	__FUNCTION__.11150@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1138, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L237:
.LBE14:
.LBE13:
	.loc 1 1166 0
	cmpl	$51, -36(%ebp)
	jne	.L236
.LBB15:
	.loc 1 1170 0
	movl	$0, -20(%ebp)
	jmp	.L265
.L266:
	.loc 1 1171 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1170 0
	addl	$1, -20(%ebp)
.L265:
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L266
	.loc 1 1173 0
	jmp	.L278
.L245:
.LBE15:
	.loc 1 1185 0
	movl	-32(%ebp), %edx
	addl	$4, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_record
.L236:
.LBB16:
	.loc 1 1195 0
	movl	-36(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1198 0
	movl	-36(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L268
.L269:
	.loc 1 1200 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L270
	.loc 1 1203 0
	cmpl	$0, -12(%ebp)
	jne	.L272
	.loc 1 1205 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
	.loc 1 1206 0
	jmp	.L233
.L272:
	.loc 1 1208 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	addl	-32(%ebp), %eax
	leal	4(%eax), %edx
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
	call	df_uses_record
	jmp	.L274
.L270:
	.loc 1 1210 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L274
.LBB17:
	.loc 1 1213 0
	movl	$0, -8(%ebp)
	jmp	.L276
.L277:
	.loc 1 1214 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
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
	call	df_uses_record
	.loc 1 1213 0
	addl	$1, -8(%ebp)
.L276:
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L277
.L274:
.LBE17:
	.loc 1 1198 0
	subl	$1, -12(%ebp)
.L268:
	cmpl	$0, -12(%ebp)
	jns	.L269
.L278:
.LBE16:
	.loc 1 1219 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	df_uses_record, .-df_uses_record
	.type	df_insn_refs_record, @function
df_insn_refs_record:
.LFB35:
	.loc 1 1228 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$68, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1231 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L311
.LBB18:
	.loc 1 1236 0
	movl	16(%ebp), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_defs_record
	.loc 1 1238 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L282
	.loc 1 1239 0
	movl	16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L284
.L285:
	.loc 1 1242 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L286
	.loc 1 1246 0
	movl	-24(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
.L286:
	.loc 1 1240 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L284:
	.loc 1 1239 0
	cmpl	$0, -24(%ebp)
	jne	.L285
.L282:
	.loc 1 1253 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L288
.LBB19:
	.loc 1 1259 0
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L290
.L291:
	.loc 1 1262 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L292
	.loc 1 1263 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
.L292:
	.loc 1 1260 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L290:
	.loc 1 1259 0
	cmpl	$0, -20(%ebp)
	jne	.L291
	.loc 1 1268 0
	movl	$29, (%esp)
	call	df_reg_use_gen
	movl	%eax, -16(%ebp)
	.loc 1 1269 0
	movl	-16(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1271 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L288
	.loc 1 1275 0
	movl	$0, -28(%ebp)
	jmp	.L296
.L297:
	.loc 1 1276 0
	movl	-28(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L298
	.loc 1 1278 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_use_gen
	movl	%eax, -16(%ebp)
	.loc 1 1279 0
	movl	-16(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
.L298:
	.loc 1 1275 0
	addl	$1, -28(%ebp)
.L296:
	cmpl	$175, -28(%ebp)
	jle	.L297
.L288:
.LBE19:
	.loc 1 1286 0
	movl	16(%ebp), %edx
	addl	$44, %edx
	movl	$0, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_uses_record
	.loc 1 1290 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L311
.LBB20:
	.loc 1 1294 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L301
	.loc 1 1297 0
	movl	$0, -28(%ebp)
	jmp	.L303
.L304:
	.loc 1 1298 0
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
	je	.L312
	movl	%edx, %eax
	xorl	%edx, %edx
.L312:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L305
.LBB21:
	.loc 1 1300 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_clobber_gen
	movl	%eax, -8(%ebp)
	.loc 1 1301 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_defs_record
.L305:
.LBE21:
	.loc 1 1297 0
	addl	$1, -28(%ebp)
.L303:
	cmpl	$175, -28(%ebp)
	jle	.L304
.L301:
	.loc 1 1306 0
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1307 0
	jmp	.L307
.L308:
	.loc 1 1309 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L309
	.loc 1 1310 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_defs_record
.L309:
	.loc 1 1308 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L307:
	.loc 1 1307 0
	cmpl	$0, -12(%ebp)
	jne	.L308
.L311:
.LBE20:
.LBE18:
	.loc 1 1313 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	df_insn_refs_record, .-df_insn_refs_record
	.type	df_bb_refs_record, @function
df_bb_refs_record:
.LFB36:
	.loc 1 1321 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$36, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1325 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L314:
	.loc 1 1327 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L315
	.loc 1 1330 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_refs_record
.L315:
	.loc 1 1332 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L319
	.loc 1 1325 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1334 0
	jmp	.L314
.L319:
	.loc 1 1335 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	df_bb_refs_record, .-df_bb_refs_record
	.type	df_refs_record, @function
df_refs_record:
.LFB37:
	.loc 1 1343 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$52, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB22:
.LBB23:
	.loc 1 1346 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L321
.L322:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L321:
	cmpl	$0, -28(%ebp)
	je	.L323
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L322
.L323:
	cmpl	$0, -28(%ebp)
	je	.L328
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L328
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L328
.L331:
.LBB24:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L332
	jmp	.L334
.L335:
.LBB25:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L336
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_refs_record
	cmpl	$0, -12(%ebp)
	je	.L332
.L336:
.LBE25:
	addl	$1, -20(%ebp)
.L334:
	cmpl	$31, -20(%ebp)
	jbe	.L335
.L332:
	movl	$0, -20(%ebp)
.LBE24:
	addl	$1, -16(%ebp)
.L330:
	cmpl	$3, -16(%ebp)
	jbe	.L331
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L328:
	cmpl	$0, -28(%ebp)
	jne	.L330
.LBE23:
.LBE22:
	.loc 1 1350 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	df_refs_record, .-df_refs_record
	.type	df_bb_reg_def_chain_create, @function
df_bb_reg_def_chain_create:
.LFB38:
	.loc 1 1361 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$48, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1369 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L342
.L343:
.LBB26:
	.loc 1 1373 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1375 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L344
	.loc 1 1378 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L346
.L347:
.LBB27:
	.loc 1 1380 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1381 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L348
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L350
.L348:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L350:
	movl	-44(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1385 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	%eax, %edx
	jb	.L351
	.loc 1 1388 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, (%esi)
.L351:
.LBE27:
	.loc 1 1378 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L346:
	cmpl	$0, -24(%ebp)
	jne	.L347
.L344:
.LBE26:
	.loc 1 1370 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L342:
	.loc 1 1369 0
	cmpl	$0, -28(%ebp)
	je	.L355
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L343
.L355:
	.loc 1 1392 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	df_bb_reg_def_chain_create, .-df_bb_reg_def_chain_create
	.type	df_link_create, @function
df_link_create:
.LFB23:
	.loc 1 646 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$48, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB28:
	.loc 1 649 0
	leal	df_ref_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB29:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$8, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L357
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L357:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE29:
.LBB30:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L359
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L359:
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
	jle	.L361
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L361:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE30:
.LBE28:
	movl	%eax, -32(%ebp)
	.loc 1 651 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 652 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 653 0
	movl	-32(%ebp), %eax
	.loc 1 654 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE23:
	.size	df_link_create, .-df_link_create
	.type	df_reg_def_chain_create, @function
df_reg_def_chain_create:
.LFB39:
	.loc 1 1401 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$52, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB31:
.LBB32:
	.loc 1 1404 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L365
.L366:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L365:
	cmpl	$0, -28(%ebp)
	je	.L367
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L366
.L367:
	cmpl	$0, -28(%ebp)
	je	.L372
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L372
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L372
.L375:
.LBB33:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L376
	jmp	.L378
.L379:
.LBB34:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L380
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_reg_def_chain_create
	cmpl	$0, -12(%ebp)
	je	.L376
.L380:
.LBE34:
	addl	$1, -20(%ebp)
.L378:
	cmpl	$31, -20(%ebp)
	jbe	.L379
.L376:
	movl	$0, -20(%ebp)
.LBE33:
	addl	$1, -16(%ebp)
.L374:
	cmpl	$3, -16(%ebp)
	jbe	.L375
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L372:
	cmpl	$0, -28(%ebp)
	jne	.L374
.LBE32:
.LBE31:
	.loc 1 1408 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	df_reg_def_chain_create, .-df_reg_def_chain_create
	.type	df_bb_reg_use_chain_create, @function
df_bb_reg_use_chain_create:
.LFB40:
	.loc 1 1417 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$48, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1423 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L386
.L387:
.LBB35:
	.loc 1 1427 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1429 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L388
	.loc 1 1432 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L390
.L391:
.LBB36:
	.loc 1 1434 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1435 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L392
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L394
.L392:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L394:
	movl	-44(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1439 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jb	.L395
	.loc 1 1442 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, 4(%esi)
.L395:
.LBE36:
	.loc 1 1432 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L390:
	cmpl	$0, -24(%ebp)
	jne	.L391
.L388:
.LBE35:
	.loc 1 1424 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L386:
	.loc 1 1423 0
	cmpl	$0, -28(%ebp)
	je	.L399
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L387
.L399:
	.loc 1 1446 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	df_bb_reg_use_chain_create, .-df_bb_reg_use_chain_create
	.type	df_reg_use_chain_create, @function
df_reg_use_chain_create:
.LFB41:
	.loc 1 1455 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$52, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB37:
.LBB38:
	.loc 1 1458 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L401
.L402:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L401:
	cmpl	$0, -28(%ebp)
	je	.L403
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L402
.L403:
	cmpl	$0, -28(%ebp)
	je	.L408
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L408
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L408
.L411:
.LBB39:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L412
	jmp	.L414
.L415:
.LBB40:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L416
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_reg_use_chain_create
	cmpl	$0, -12(%ebp)
	je	.L412
.L416:
.LBE40:
	addl	$1, -20(%ebp)
.L414:
	cmpl	$31, -20(%ebp)
	jbe	.L415
.L412:
	movl	$0, -20(%ebp)
.LBE39:
	addl	$1, -16(%ebp)
.L410:
	cmpl	$3, -16(%ebp)
	jbe	.L411
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L408:
	cmpl	$0, -28(%ebp)
	jne	.L410
.LBE38:
.LBE37:
	.loc 1 1462 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	df_reg_use_chain_create, .-df_reg_use_chain_create
	.type	df_bb_du_chain_create, @function
df_bb_du_chain_create:
.LFB42:
	.loc 1 1471 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$68, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1472 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1475 0
	movl	-40(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1479 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L422
.L423:
.LBB41:
	.loc 1 1484 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1486 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L424
	.loc 1 1490 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L426
.L427:
.LBB42:
	.loc 1 1492 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1493 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L428
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L430
.L428:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L430:
	movl	-56(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1495 0
	movl	-20(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1500 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L431
.L432:
.LBB43:
	.loc 1 1503 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1505 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L433
	.loc 1 1507 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1510 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
.L433:
.LBE43:
	.loc 1 1501 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L431:
	.loc 1 1500 0
	cmpl	$0, -28(%ebp)
	jne	.L432
.LBE42:
	.loc 1 1490 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L426:
	cmpl	$0, -32(%ebp)
	jne	.L427
	.loc 1 1516 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L437
.L438:
.LBB44:
	.loc 1 1518 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1519 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE44:
	.loc 1 1516 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L437:
	cmpl	$0, -28(%ebp)
	jne	.L438
.L424:
.LBE41:
	.loc 1 1480 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L422:
	.loc 1 1479 0
	cmpl	$0, -36(%ebp)
	je	.L441
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L423
.L441:
	.loc 1 1522 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	df_bb_du_chain_create, .-df_bb_du_chain_create
	.type	df_du_chain_create, @function
df_du_chain_create:
.LFB43:
	.loc 1 1531 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$68, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1535 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -40(%ebp)
.LBB45:
.LBB46:
	.loc 1 1537 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L443
.L444:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L443:
	cmpl	$0, -28(%ebp)
	je	.L445
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L444
.L445:
	cmpl	$0, -28(%ebp)
	je	.L450
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L450
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L450
.L453:
.LBB47:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L454
	jmp	.L456
.L457:
.LBB48:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L458
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_du_chain_create
	cmpl	$0, -12(%ebp)
	je	.L454
.L458:
.LBE48:
	addl	$1, -20(%ebp)
.L456:
	cmpl	$31, -20(%ebp)
	jbe	.L457
.L454:
	movl	$0, -20(%ebp)
.LBE47:
	addl	$1, -16(%ebp)
.L452:
	cmpl	$3, -16(%ebp)
	jbe	.L453
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L450:
	cmpl	$0, -28(%ebp)
	jne	.L452
.LBE46:
.LBE45:
	.loc 1 1542 0
	cmpl	$0, -40(%ebp)
	je	.L464
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -40(%ebp)
.L464:
	.loc 1 1543 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	df_du_chain_create, .-df_du_chain_create
	.type	df_bb_ud_chain_create, @function
df_bb_ud_chain_create:
.LFB44:
	.loc 1 1551 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%edi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$64, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1552 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1553 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1556 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	-48(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1560 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L466
.L467:
.LBB49:
	.loc 1 1563 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1567 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L468
	.loc 1 1571 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L470
.L471:
.LBB50:
	.loc 1 1573 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1574 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L472
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L474
.L472:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L474:
	movl	-64(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1576 0
	movl	-28(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1583 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L475
	.loc 1 1585 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L477
.L475:
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L478
.L479:
.LBB51:
	.loc 1 1597 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1599 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L480
	.loc 1 1601 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.L480:
.LBE51:
	.loc 1 1595 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L478:
	.loc 1 1594 0
	cmpl	$0, -32(%ebp)
	jne	.L479
.L477:
.LBE50:
	.loc 1 1571 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L470:
	cmpl	$0, -36(%ebp)
	jne	.L471
	.loc 1 1610 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L483
.L484:
.LBB52:
	.loc 1 1612 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1613 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L485
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L487
.L485:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L487:
	movl	-60(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1615 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.LBE52:
	.loc 1 1610 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L483:
	cmpl	$0, -32(%ebp)
	jne	.L484
.L468:
.LBE49:
	.loc 1 1561 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L466:
	.loc 1 1560 0
	cmpl	$0, -44(%ebp)
	je	.L490
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L467
.L490:
	.loc 1 1618 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	df_bb_ud_chain_create, .-df_bb_ud_chain_create
	.type	df_ud_chain_create, @function
df_ud_chain_create:
.LFB45:
	.loc 1 1627 0
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
.LBB53:
.LBB54:
	.loc 1 1630 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L492
.L493:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L492:
	cmpl	$0, -28(%ebp)
	je	.L494
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L493
.L494:
	cmpl	$0, -28(%ebp)
	je	.L499
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L499
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L499
.L502:
.LBB55:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L503
	jmp	.L505
.L506:
.LBB56:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L507
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_ud_chain_create
	cmpl	$0, -12(%ebp)
	je	.L503
.L507:
.LBE56:
	addl	$1, -20(%ebp)
.L505:
	cmpl	$31, -20(%ebp)
	jbe	.L506
.L503:
	movl	$0, -20(%ebp)
.LBE55:
	addl	$1, -16(%ebp)
.L501:
	cmpl	$3, -16(%ebp)
	jbe	.L502
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L499:
	cmpl	$0, -28(%ebp)
	jne	.L501
.LBE54:
.LBE53:
	.loc 1 1634 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	df_ud_chain_create, .-df_ud_chain_create
	.type	df_rd_transfer_function, @function
df_rd_transfer_function:
.LFB46:
	.loc 1 1644 0
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
	.loc 1 1645 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_union_of_diff@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1646 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	df_rd_transfer_function, .-df_rd_transfer_function
	.type	df_ru_transfer_function, @function
df_ru_transfer_function:
.LFB47:
	.loc 1 1653 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$20, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1654 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_union_of_diff@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1655 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	df_ru_transfer_function, .-df_ru_transfer_function
	.type	df_lr_transfer_function, @function
df_lr_transfer_function:
.LFB48:
	.loc 1 1663 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$20, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1664 0
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_union_of_diff@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1665 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	df_lr_transfer_function, .-df_lr_transfer_function
	.type	df_bb_rd_local_compute, @function
df_bb_rd_local_compute:
.LFB49:
	.loc 1 1673 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$52, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1677 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L519
.L520:
.LBB57:
	.loc 1 1680 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1683 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L521
	.loc 1 1686 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L523
.L524:
.LBB58:
	.loc 1 1688 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1689 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L525
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L527
.L525:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L527:
	movl	-40(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1692 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L528
.L529:
.LBB59:
	.loc 1 1695 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1701 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1704 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
.LBE59:
	.loc 1 1693 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L528:
	.loc 1 1692 0
	cmpl	$0, -12(%ebp)
	jne	.L529
	.loc 1 1707 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE58:
	.loc 1 1686 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L523:
	cmpl	$0, -24(%ebp)
	jne	.L524
.L521:
.LBE57:
	.loc 1 1678 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L519:
	.loc 1 1677 0
	cmpl	$0, -32(%ebp)
	je	.L531
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L520
.L531:
	.loc 1 1711 0
	movl	-36(%ebp), %eax
	movl	$1, 48(%eax)
	.loc 1 1712 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	df_bb_rd_local_compute, .-df_bb_rd_local_compute
	.type	df_rd_local_compute, @function
df_rd_local_compute:
.LFB50:
	.loc 1 1720 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$52, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB60:
.LBB61:
	.loc 1 1723 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L535
.L536:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L535:
	cmpl	$0, -28(%ebp)
	je	.L537
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L536
.L537:
	cmpl	$0, -28(%ebp)
	je	.L542
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L542
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L542
.L545:
.LBB62:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L546
	jmp	.L548
.L549:
.LBB63:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L550
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_rd_local_compute
	cmpl	$0, -12(%ebp)
	je	.L546
.L550:
.LBE63:
	addl	$1, -20(%ebp)
.L548:
	cmpl	$31, -20(%ebp)
	jbe	.L549
.L546:
	movl	$0, -20(%ebp)
.LBE62:
	addl	$1, -16(%ebp)
.L544:
	cmpl	$3, -16(%ebp)
	jbe	.L545
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L542:
	cmpl	$0, -28(%ebp)
	jne	.L544
.LBE61:
.LBE60:
	.loc 1 1727 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	df_rd_local_compute, .-df_rd_local_compute
	.type	df_bb_ru_local_compute, @function
df_bb_ru_local_compute:
.LFB51:
	.loc 1 1736 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$68, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1741 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1745 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L556
.L557:
.LBB64:
	.loc 1 1748 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1752 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L558
	.loc 1 1755 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L560
.L561:
.LBB65:
	.loc 1 1757 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1758 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L562
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L564
.L562:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L564:
	movl	-56(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1760 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L565
.L566:
.LBB66:
	.loc 1 1763 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1769 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1772 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
.LBE66:
	.loc 1 1761 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L565:
	.loc 1 1760 0
	cmpl	$0, -24(%ebp)
	jne	.L566
.LBE65:
	.loc 1 1755 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L560:
	cmpl	$0, -28(%ebp)
	jne	.L561
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L569
.L570:
.LBB67:
	.loc 1 1778 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1780 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE67:
	.loc 1 1776 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L569:
	cmpl	$0, -24(%ebp)
	jne	.L570
.L558:
.LBE64:
	.loc 1 1746 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L556:
	.loc 1 1745 0
	cmpl	$0, -36(%ebp)
	je	.L571
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L557
.L571:
	.loc 1 1783 0
	movl	-40(%ebp), %eax
	movl	$1, 52(%eax)
	.loc 1 1784 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	df_bb_ru_local_compute, .-df_bb_ru_local_compute
	.type	df_ru_local_compute, @function
df_ru_local_compute:
.LFB52:
	.loc 1 1793 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$52, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB68:
.LBB69:
	.loc 1 1796 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L575
.L576:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L575:
	cmpl	$0, -28(%ebp)
	je	.L577
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L576
.L577:
	cmpl	$0, -28(%ebp)
	je	.L582
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L582
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L582
.L585:
.LBB70:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L586
	jmp	.L588
.L589:
.LBB71:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L590
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_ru_local_compute
	cmpl	$0, -12(%ebp)
	je	.L586
.L590:
.LBE71:
	addl	$1, -20(%ebp)
.L588:
	cmpl	$31, -20(%ebp)
	jbe	.L589
.L586:
	movl	$0, -20(%ebp)
.LBE70:
	addl	$1, -16(%ebp)
.L584:
	cmpl	$3, -16(%ebp)
	jbe	.L585
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L582:
	cmpl	$0, -28(%ebp)
	jne	.L584
.LBE69:
.LBE68:
	.loc 1 1800 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	df_ru_local_compute, .-df_ru_local_compute
	.type	df_bb_lr_local_compute, @function
df_bb_lr_local_compute:
.LFB53:
	.loc 1 1808 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$52, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1809 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1812 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L596
.L597:
.LBB72:
	.loc 1 1815 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1818 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L598
	.loc 1 1821 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L600
.L601:
.LBB73:
	.loc 1 1823 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1824 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L602
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L604
.L602:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L604:
	movl	-44(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1827 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1829 0
	movl	-12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
.LBE73:
	.loc 1 1821 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L600:
	cmpl	$0, -20(%ebp)
	jne	.L601
	.loc 1 1832 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L606
.L607:
.LBB74:
	.loc 1 1834 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1836 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L608
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L610
.L608:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L610:
	movl	-40(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.LBE74:
	.loc 1 1832 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L606:
	cmpl	$0, -20(%ebp)
	jne	.L607
.L598:
.LBE72:
	.loc 1 1813 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L596:
	.loc 1 1812 0
	cmpl	$0, -28(%ebp)
	je	.L611
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L597
.L611:
	.loc 1 1839 0
	movl	-32(%ebp), %eax
	movl	$1, 56(%eax)
	.loc 1 1840 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	df_bb_lr_local_compute, .-df_bb_lr_local_compute
	.type	df_lr_local_compute, @function
df_lr_local_compute:
.LFB54:
	.loc 1 1848 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$52, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB75:
.LBB76:
	.loc 1 1851 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L615
.L616:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L615:
	cmpl	$0, -28(%ebp)
	je	.L617
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L616
.L617:
	cmpl	$0, -28(%ebp)
	je	.L622
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L622
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L622
.L625:
.LBB77:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L626
	jmp	.L628
.L629:
.LBB78:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L630
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_lr_local_compute
	cmpl	$0, -12(%ebp)
	je	.L626
.L630:
.LBE78:
	addl	$1, -20(%ebp)
.L628:
	cmpl	$31, -20(%ebp)
	jbe	.L629
.L626:
	movl	$0, -20(%ebp)
.LBE77:
	addl	$1, -16(%ebp)
.L624:
	cmpl	$3, -16(%ebp)
	jbe	.L625
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L622:
	cmpl	$0, -28(%ebp)
	jne	.L624
.LBE76:
.LBE75:
	.loc 1 1855 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	df_lr_local_compute, .-df_lr_local_compute
	.type	df_bb_reg_info_compute, @function
df_bb_reg_info_compute:
.LFB55:
	.loc 1 1865 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$84, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1866 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1867 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1870 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1872 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L636
.L637:
.LBB79:
	.loc 1 1875 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1879 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L638
	.loc 1 1882 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L640
.L641:
.LBB80:
	.loc 1 1884 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1885 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L642
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L644
.L642:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L644:
	movl	-76(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1888 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 1889 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movl	12(%edx), %eax
	addl	$1, %eax
	movl	%eax, 12(%edx)
.LBE80:
	.loc 1 1882 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L640:
	cmpl	$0, -48(%ebp)
	jne	.L641
	.loc 1 1892 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-56(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L646
.L647:
.LBB81:
	.loc 1 1894 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1895 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L648
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L650
.L648:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L650:
	movl	-72(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1898 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1899 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movl	16(%edx), %eax
	addl	$1, %eax
	movl	%eax, 16(%edx)
.LBE81:
	.loc 1 1892 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L646:
	cmpl	$0, -48(%ebp)
	jne	.L647
.LBB82:
	.loc 1 1903 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L652
.L653:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L652:
	cmpl	$0, -28(%ebp)
	je	.L654
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L653
.L654:
	cmpl	$0, -28(%ebp)
	je	.L659
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L659
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L659
.L662:
.LBB83:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L663
	jmp	.L665
.L666:
.LBB84:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L667
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movl	8(%edx), %eax
	addl	$1, %eax
	movl	%eax, 8(%edx)
	cmpl	$0, -12(%ebp)
	je	.L663
.L667:
.LBE84:
	addl	$1, -20(%ebp)
.L665:
	cmpl	$31, -20(%ebp)
	jbe	.L666
.L663:
	movl	$0, -20(%ebp)
.LBE83:
	addl	$1, -16(%ebp)
.L661:
	cmpl	$3, -16(%ebp)
	jbe	.L662
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L659:
	cmpl	$0, -28(%ebp)
	jne	.L661
.L638:
.LBE82:
.LBE79:
	.loc 1 1873 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
.L636:
	.loc 1 1872 0
	cmpl	$0, -60(%ebp)
	je	.L672
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L637
.L672:
	.loc 1 1908 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	df_bb_reg_info_compute, .-df_bb_reg_info_compute
	.type	df_reg_info_compute, @function
df_reg_info_compute:
.LFB56:
	.loc 1 1916 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$68, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1920 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -36(%ebp)
.LBB85:
.LBB86:
	.loc 1 1922 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L674
.L675:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L674:
	cmpl	$0, -28(%ebp)
	je	.L676
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L675
.L676:
	cmpl	$0, -28(%ebp)
	je	.L681
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L681
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L681
.L684:
.LBB87:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L685
	jmp	.L687
.L688:
.LBB88:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L689
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_reg_info_compute
	cmpl	$0, -12(%ebp)
	je	.L685
.L689:
.LBE88:
	addl	$1, -20(%ebp)
.L687:
	cmpl	$31, -20(%ebp)
	jbe	.L688
.L685:
	movl	$0, -20(%ebp)
.LBE87:
	addl	$1, -16(%ebp)
.L683:
	cmpl	$3, -16(%ebp)
	jbe	.L684
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L681:
	cmpl	$0, -28(%ebp)
	jne	.L683
.LBE86:
.LBE85:
	.loc 1 1927 0
	cmpl	$0, -36(%ebp)
	je	.L695
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -36(%ebp)
.L695:
	.loc 1 1928 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	df_reg_info_compute, .-df_reg_info_compute
	.type	df_bb_luids_set, @function
df_bb_luids_set:
.LFB57:
	.loc 1 1936 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$16, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1938 0
	movl	$0, -8(%ebp)
	.loc 1 1942 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L697:
	.loc 1 1944 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L698
	.loc 1 1945 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	addl	$1, -8(%ebp)
.L698:
	.loc 1 1946 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1948 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L700
	.loc 1 1942 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1950 0
	jmp	.L697
.L700:
	.loc 1 1951 0
	movl	-8(%ebp), %eax
	.loc 1 1952 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	df_bb_luids_set, .-df_bb_luids_set
	.type	df_luids_set, @function
df_luids_set:
.LFB58:
	.loc 1 1960 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$56, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1962 0
	movl	$0, -36(%ebp)
.LBB89:
.LBB90:
	.loc 1 1964 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L704
.L705:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L704:
	cmpl	$0, -28(%ebp)
	je	.L706
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L705
.L706:
	cmpl	$0, -28(%ebp)
	je	.L711
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L711
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L711
.L714:
.LBB91:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L715
	jmp	.L717
.L718:
.LBB92:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L719
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_luids_set
	addl	%eax, -36(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L715
.L719:
.LBE92:
	addl	$1, -20(%ebp)
.L717:
	cmpl	$31, -20(%ebp)
	jbe	.L718
.L715:
	movl	$0, -20(%ebp)
.LBE91:
	addl	$1, -16(%ebp)
.L713:
	cmpl	$3, -16(%ebp)
	jbe	.L714
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L711:
	cmpl	$0, -28(%ebp)
	jne	.L713
.LBE90:
.LBE89:
	.loc 1 1968 0
	movl	-36(%ebp), %eax
	.loc 1 1969 0
	addl	$56, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	df_luids_set, .-df_luids_set
	.type	df_analyse_1, @function
df_analyse_1:
.LFB59:
	.loc 1 1979 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%esi
.LCFI181:
	pushl	%ebx
.LCFI182:
	addl	$-128, %esp
.LCFI183:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1985 0
	movl	$0, -68(%ebp)
	.loc 1 1986 0
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1987 0
	movl	16(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L725
	.loc 1 1988 0
	orl	$65, -72(%ebp)
.L725:
	.loc 1 1990 0
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L727
	.loc 1 1991 0
	orl	$2, -72(%ebp)
.L727:
	.loc 1 1993 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L729
	.loc 1 1994 0
	orl	$128, -72(%ebp)
.L729:
	.loc 1 1996 0
	movl	16(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L731
	.loc 1 1997 0
	orl	$4, -72(%ebp)
.L731:
	.loc 1 1999 0
	cmpl	$0, 12(%ebp)
	jne	.L733
	.loc 1 2000 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 12(%ebp)
.L733:
	.loc 1 2002 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2003 0
	cmpl	$0, 20(%ebp)
	je	.L735
	.loc 1 2005 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_update
	jmp	.L737
.L735:
	.loc 1 2019 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_queue
	.loc 1 2020 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_record
	.loc 1 2023 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_process
.L737:
	.loc 1 2029 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bitmaps_alloc
	.loc 1 2032 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_luids_set
	.loc 1 2038 0
	movl	-72(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L738
	.loc 1 2040 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_def_chain_create
.L738:
	.loc 1 2043 0
	movl	-72(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L740
	.loc 1 2045 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_use_chain_create
.L740:
	.loc 1 2048 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 92(%eax)
	.loc 1 2049 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 2050 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	.loc 1 2051 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	.loc 1 2052 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 2053 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 112(%eax)
	.loc 1 2055 0
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	flow_depth_first_order_compute@PLT
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	flow_reverse_top_sort_order_compute@PLT
	.loc 1 2057 0
	movl	$0, -64(%ebp)
	jmp	.L742
.L743:
	.loc 1 2059 0
	movl	8(%ebp), %eax
	movl	108(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2060 0
	movl	8(%ebp), %eax
	movl	104(%eax), %ecx
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2061 0
	movl	8(%ebp), %eax
	movl	112(%eax), %ecx
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2057 0
	addl	$1, -64(%ebp)
.L742:
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -64(%ebp)
	jl	.L743
	.loc 1 2063 0
	movl	-72(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L745
	.loc 1 2066 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L747
	movl	12(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L749
.L747:
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -84(%ebp)
.L749:
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_rd_local_compute
.LBB93:
	.loc 1 2068 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2069 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2070 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2071 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2072 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L750
.L751:
	.loc 1 2074 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-56(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2075 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-52(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2076 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-48(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2077 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-44(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2072 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
.L750:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -60(%ebp)
	jne	.L751
	.loc 1 2079 0
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %ecx
	movl	$0, 36(%esp)
	movl	%edx, 32(%esp)
	leal	df_rd_transfer_function@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	iterative_dataflow_bitmap@PLT
	.loc 1 2082 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2083 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2084 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2085 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L745:
.LBE93:
	.loc 1 2089 0
	movl	-72(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L753
	.loc 1 2092 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ud_chain_create
	.loc 1 2094 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L753
	.loc 1 2095 0
	orl	$1, -68(%ebp)
.L753:
	.loc 1 2098 0
	movl	-72(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L756
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L758
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L760
.L758:
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
.L760:
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ru_local_compute
.LBB94:
	.loc 1 2104 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2105 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2106 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2107 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2108 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L761
.L762:
	.loc 1 2110 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-40(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2111 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-36(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2112 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-32(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2113 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-28(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2108 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
.L761:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -60(%ebp)
	jne	.L762
	.loc 1 2115 0
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %ecx
	movl	$0, 36(%esp)
	movl	%edx, 32(%esp)
	leal	df_ru_transfer_function@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	iterative_dataflow_bitmap@PLT
	.loc 1 2118 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2119 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2120 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2121 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L756:
.LBE94:
	.loc 1 2125 0
	movl	-72(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L764
	.loc 1 2128 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_du_chain_create
	.loc 1 2130 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L764
	.loc 1 2131 0
	orl	$2, -68(%ebp)
.L764:
	.loc 1 2135 0
	cmpl	$0, -68(%ebp)
	je	.L767
	.loc 1 2136 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bitmaps_free
.L767:
	.loc 1 2138 0
	movl	-72(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L769
	.loc 1 2141 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L771
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L773
.L771:
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
.L773:
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_lr_local_compute
.LBB95:
	.loc 1 2143 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2144 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2145 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2146 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2147 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L774
.L775:
	.loc 1 2149 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-24(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2150 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-20(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2151 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-16(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2152 0
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-12(%ebp), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esi)
	.loc 1 2147 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
.L774:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -60(%ebp)
	jne	.L775
	.loc 1 2154 0
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %ecx
	movl	$0, 36(%esp)
	movl	%edx, 32(%esp)
	leal	df_lr_transfer_function@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	iterative_dataflow_bitmap@PLT
	.loc 1 2157 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2158 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2159 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2160 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L769:
.LBE95:
	.loc 1 2164 0
	movl	-72(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L777
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_info_compute
.L777:
	.loc 1 2168 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2169 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2170 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2171 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2172 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2173 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2174 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE59:
	.size	df_analyse_1, .-df_analyse_1
.globl df_init
	.type	df_init, @function
df_init:
.LFB60:
	.loc 1 2180 0
	pushl	%ebp
.LCFI184:
	movl	%esp, %ebp
.LCFI185:
	pushl	%ebx
.LCFI186:
	subl	$36, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2183 0
	movl	$116, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2186 0
	movl	-8(%ebp), %eax
	movl	%eax, ddf@GOTOFF(%ebx)
	.loc 1 2188 0
	movl	-8(%ebp), %eax
	.loc 1 2189 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	df_init, .-df_init
	.type	df_refs_queue, @function
df_refs_queue:
.LFB61:
	.loc 1 2196 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	.loc 1 2197 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2198 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 2201 0
	movl	$0, %eax
	.loc 1 2202 0
	popl	%ebp
	ret
.LFE61:
	.size	df_refs_queue, .-df_refs_queue
	.type	df_refs_process, @function
df_refs_process:
.LFB62:
	.loc 1 2209 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%esi
.LCFI192:
	subl	$52, %esp
.LCFI193:
	.loc 1 2213 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L785
.L786:
.LBB96:
	.loc 1 2215 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2216 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2219 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, (%esi)
.LBE96:
	.loc 1 2213 0
	addl	$1, -24(%ebp)
.L785:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L786
	.loc 1 2224 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L788
.L789:
.LBB97:
	.loc 1 2226 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2227 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2230 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	df_link_create
	movl	%eax, 4(%esi)
.LBE97:
	.loc 1 2224 0
	addl	$1, -24(%ebp)
.L788:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L789
	.loc 1 2233 0
	movl	$0, %eax
	.loc 1 2234 0
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE62:
	.size	df_refs_process, .-df_refs_process
	.type	df_bb_refs_update, @function
df_bb_refs_update:
.LFB63:
	.loc 1 2242 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$36, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2244 0
	movl	$0, -12(%ebp)
	.loc 1 2251 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L793:
.LBB98:
	.loc 1 2255 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2257 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L794
	.loc 1 2260 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_refs_unlink
	.loc 1 2263 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_refs_record
	.loc 1 2265 0
	addl	$1, -12(%ebp)
.L794:
	.loc 1 2267 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L796
.LBE98:
	.loc 1 2251 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2269 0
	jmp	.L793
.L796:
	.loc 1 2270 0
	movl	-12(%ebp), %eax
	.loc 1 2271 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	df_bb_refs_update, .-df_bb_refs_update
	.type	df_refs_update, @function
df_refs_update:
.LFB64:
	.loc 1 2278 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$68, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2280 0
	movl	$0, -36(%ebp)
	.loc 1 2282 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jb	.L800
	.loc 1 2283 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_reg_table_realloc
.L800:
	.loc 1 2285 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_queue
.LBB99:
.LBB100:
	.loc 1 2287 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L802
.L803:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L802:
	cmpl	$0, -28(%ebp)
	je	.L804
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L803
.L804:
	cmpl	$0, -28(%ebp)
	je	.L809
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L809
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L809
.L812:
.LBB101:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L813
	jmp	.L815
.L816:
.LBB102:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L817
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
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_refs_update
	addl	%eax, -36(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L813
.L817:
.LBE102:
	addl	$1, -20(%ebp)
.L815:
	cmpl	$31, -20(%ebp)
	jbe	.L816
.L813:
	movl	$0, -20(%ebp)
.LBE101:
	addl	$1, -16(%ebp)
.L811:
	cmpl	$3, -16(%ebp)
	jbe	.L812
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L809:
	cmpl	$0, -28(%ebp)
	jne	.L811
.LBE100:
.LBE99:
	.loc 1 2292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_process
	.loc 1 2293 0
	movl	-36(%ebp), %eax
	.loc 1 2294 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	df_refs_update, .-df_refs_update
	.type	df_modified_p, @function
df_modified_p:
.LFB65:
	.loc 1 2303 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$36, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2304 0
	movl	$0, -12(%ebp)
	.loc 1 2307 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L823
	.loc 1 2308 0
	movl	$0, -24(%ebp)
	jmp	.L825
.L823:
	.loc 1 2310 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L826
.L827:
	.loc 1 2311 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L828
	cmpl	$0, 12(%ebp)
	je	.L830
	cmpl	$-1, 12(%ebp)
	je	.L830
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L828
.L830:
	.loc 1 2314 0
	movl	$1, -12(%ebp)
	.loc 1 2315 0
	jmp	.L833
.L828:
	.loc 1 2310 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L826:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L827
.L833:
	.loc 1 2318 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L825:
	movl	-24(%ebp), %eax
	.loc 1 2319 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	df_modified_p, .-df_modified_p
	.section	.rodata
	.type	__FUNCTION__.13010, @object
	.size	__FUNCTION__.13010, 11
__FUNCTION__.13010:
	.string	"df_analyse"
	.text
.globl df_analyse
	.type	df_analyse, @function
df_analyse:
.LFB66:
	.loc 1 2330 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	pushl	%ebx
.LCFI208:
	subl	$36, %esp
.LCFI209:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2335 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L836
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L836
	.loc 1 2336 0
	leal	__FUNCTION__.13010@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2336, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L836:
	.loc 1 2338 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_modified_p
	movl	%eax, -8(%ebp)
	.loc 1 2339 0
	cmpl	$0, -8(%ebp)
	jne	.L839
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L841
.L839:
	.loc 1 2341 0
	cmpl	$0, 12(%ebp)
	jne	.L842
	.loc 1 2343 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L844
	.loc 1 2346 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_free
.L844:
	.loc 1 2349 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_alloc
	.loc 1 2350 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_analyse_1
	.loc 1 2351 0
	movl	$1, -8(%ebp)
	jmp	.L841
.L842:
	.loc 1 2355 0
	cmpl	$-1, 12(%ebp)
	jne	.L846
	.loc 1 2356 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, 12(%ebp)
.L846:
	.loc 1 2358 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L848
	.loc 1 2359 0
	leal	__FUNCTION__.13010@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2359, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L848:
	.loc 1 2361 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_analyse_1
	.loc 1 2362 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 2363 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.L841:
	.loc 1 2366 0
	movl	-8(%ebp), %eax
	.loc 1 2367 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	df_analyse, .-df_analyse
.globl df_finish
	.type	df_finish, @function
df_finish:
.LFB67:
	.loc 1 2374 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$4, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2375 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_free
	.loc 1 2376 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2377 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	df_finish, .-df_finish
	.type	df_insn_refs_unlink, @function
df_insn_refs_unlink:
.LFB68:
	.loc 1 2386 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	subl	$24, %esp
.LCFI216:
	.loc 1 2390 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2393 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L854
.L855:
	.loc 1 2394 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_unlink
	.loc 1 2393 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L854:
	cmpl	$0, -8(%ebp)
	jne	.L855
	.loc 1 2397 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L857
.L858:
	.loc 1 2398 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_use_unlink
	.loc 1 2397 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L857:
	cmpl	$0, -8(%ebp)
	jne	.L858
	.loc 1 2400 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2401 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 2402 0
	leave
	ret
.LFE68:
	.size	df_insn_refs_unlink, .-df_insn_refs_unlink
	.section	.rodata
	.type	__FUNCTION__.13080, @object
	.size	__FUNCTION__.13080, 15
__FUNCTION__.13080:
	.string	"df_insn_delete"
	.text
.globl df_insn_delete
	.type	df_insn_delete, @function
df_insn_delete:
.LFB69:
	.loc 1 2461 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%ebx
.LCFI219:
	subl	$20, %esp
.LCFI220:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2466 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L862
	.loc 1 2467 0
	leal	__FUNCTION__.13080@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2467, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L862:
	.loc 1 2470 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2472 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_modify@PLT
	.loc 1 2474 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	.loc 1 2475 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	df_insn_delete, .-df_insn_delete
.globl df_insn_modify
	.type	df_insn_modify, @function
df_insn_modify:
.LFB70:
	.loc 1 2487 0
	pushl	%ebp
.LCFI221:
	movl	%esp, %ebp
.LCFI222:
	pushl	%ebx
.LCFI223:
	subl	$36, %esp
.LCFI224:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2490 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2491 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L866
	.loc 1 2492 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_table_realloc
.L866:
	.loc 1 2494 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 2495 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 2502 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	df_insn_modify, .-df_insn_modify
	.type	df_rtx_mem_replace, @function
df_rtx_mem_replace:
.LFB71:
	.loc 1 2521 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$52, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2522 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2523 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2525 0
	cmpl	$0, -8(%ebp)
	jne	.L870
	.loc 1 2526 0
	movl	$0, -28(%ebp)
	jmp	.L872
.L870:
	.loc 1 2528 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$65, -24(%ebp)
	je	.L874
	cmpl	$76, -24(%ebp)
	je	.L875
	jmp	.L873
.L875:
	.loc 1 2543 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L876
	jmp	.L877
.L874:
	.loc 1 2536 0
	movl	$-1, -28(%ebp)
	jmp	.L872
.L873:
	.loc 1 2540 0
	movl	$0, -28(%ebp)
	jmp	.L872
.L876:
	.loc 1 2545 0
	movl	$0, -28(%ebp)
	jmp	.L872
.L877:
	.loc 1 2548 0
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
	.loc 1 2549 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2551 0
	movl	$0, -28(%ebp)
.L872:
	movl	-28(%ebp), %eax
	.loc 1 2552 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	df_rtx_mem_replace, .-df_rtx_mem_replace
.globl df_insn_mem_replace
	.type	df_insn_mem_replace, @function
df_insn_mem_replace:
.LFB72:
	.loc 1 2562 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%ebx
.LCFI231:
	subl	$36, %esp
.LCFI232:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2565 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2566 0
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2567 0
	movl	24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2568 0
	movl	$0, -8(%ebp)
	.loc 1 2571 0
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	df_rtx_mem_replace@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 2573 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L880
	.loc 1 2574 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_modify@PLT
.L880:
	.loc 1 2581 0
	movl	-8(%ebp), %eax
	.loc 1 2582 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	df_insn_mem_replace, .-df_insn_mem_replace
	.type	df_rtx_reg_replace, @function
df_rtx_reg_replace:
.LFB73:
	.loc 1 2592 0
	pushl	%ebp
.LCFI233:
	movl	%esp, %ebp
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$36, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2594 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2596 0
	cmpl	$0, -12(%ebp)
	jne	.L884
	.loc 1 2597 0
	movl	$0, -24(%ebp)
	jmp	.L886
.L884:
	.loc 1 2599 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L887
	.loc 1 2601 0
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
	.loc 1 2602 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L887:
	.loc 1 2605 0
	movl	$0, -24(%ebp)
.L886:
	movl	-24(%ebp), %eax
	.loc 1 2606 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	df_rtx_reg_replace, .-df_rtx_reg_replace
	.section	.rodata
	.type	__FUNCTION__.13174, @object
	.size	__FUNCTION__.13174, 20
__FUNCTION__.13174:
	.string	"df_refs_reg_replace"
	.text
.globl df_refs_reg_replace
	.type	df_refs_reg_replace, @function
df_refs_reg_replace:
.LFB74:
	.loc 1 2619 0
	pushl	%ebp
.LCFI237:
	movl	%esp, %ebp
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$52, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2623 0
	cmpl	$0, 12(%ebp)
	jne	.L891
	.loc 1 2624 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 12(%ebp)
.L891:
	.loc 1 2626 0
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2627 0
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2628 0
	movl	$0, -20(%ebp)
	.loc 1 2630 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L893
.L894:
.LBB103:
	.loc 1 2632 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2633 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2635 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L895
	.loc 1 2638 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L897
	.loc 1 2640 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_ref_reg_replace@PLT
	.loc 1 2643 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L899
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L895
.L899:
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L895
	.loc 1 2647 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2648 0
	movl	-8(%ebp), %edx
	addl	$68, %edx
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	df_rtx_reg_replace@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	jmp	.L895
.L897:
	.loc 1 2655 0
	leal	__FUNCTION__.13174@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2655, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L895:
.LBE103:
	.loc 1 2630 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L893:
	cmpl	$0, -16(%ebp)
	jne	.L894
	.loc 1 2658 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	df_refs_reg_replace, .-df_refs_reg_replace
.globl df_reg_replace
	.type	df_reg_replace, @function
df_reg_replace:
.LFB75:
	.loc 1 2671 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$36, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2672 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2674 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_reg_replace@PLT
	.loc 1 2675 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_refs_reg_replace@PLT
	.loc 1 2676 0
	movl	$1, %eax
	.loc 1 2677 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	df_reg_replace, .-df_reg_replace
	.section	.rodata
	.type	__FUNCTION__.13228, @object
	.size	__FUNCTION__.13228, 19
__FUNCTION__.13228:
	.string	"df_ref_reg_replace"
	.text
.globl df_ref_reg_replace
	.type	df_ref_reg_replace, @function
df_ref_reg_replace:
.LFB76:
	.loc 1 2688 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$20, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2691 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L908
	.loc 1 2692 0
	movl	$0, -8(%ebp)
	jmp	.L910
.L908:
	.loc 1 2694 0
	cmpl	$0, 16(%ebp)
	je	.L911
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L911
	.loc 1 2695 0
	leal	__FUNCTION__.13228@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2695, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L911:
	.loc 1 2697 0
	movl	12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L914
	.loc 1 2698 0
	movl	$0, -8(%ebp)
	jmp	.L910
.L914:
	.loc 1 2700 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_modify@PLT
	.loc 1 2701 0
	movl	$1, -8(%ebp)
.L910:
	movl	-8(%ebp), %eax
	.loc 1 2702 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	df_ref_reg_replace, .-df_ref_reg_replace
.globl df_bb_def_use_swap
	.type	df_bb_def_use_swap, @function
df_bb_def_use_swap:
.LFB77:
	.loc 1 2712 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	subl	$56, %esp
.LCFI251:
	.loc 1 2719 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_insn_regno_first_def_find
	movl	%eax, -20(%ebp)
	.loc 1 2720 0
	cmpl	$0, -20(%ebp)
	jne	.L918
	.loc 1 2721 0
	movl	$0, -36(%ebp)
	jmp	.L920
.L918:
	.loc 1 2723 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_insn_regno_last_use_find
	movl	%eax, -16(%ebp)
	.loc 1 2724 0
	cmpl	$0, -16(%ebp)
	jne	.L921
	.loc 1 2725 0
	movl	$0, -36(%ebp)
	jmp	.L920
.L921:
	.loc 1 2728 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2729 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_use_unlink
	.loc 1 2730 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	leal	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
	.loc 1 2734 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2735 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_unlink
	movl	%eax, -4(%ebp)
	.loc 1 2736 0
	movl	-4(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2737 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2738 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2747 0
	movl	-20(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2748 0
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L920:
	movl	-36(%ebp), %eax
	.loc 1 2749 0
	leave
	ret
.LFE77:
	.size	df_bb_def_use_swap, .-df_bb_def_use_swap
	.section	.rodata
	.type	__FUNCTION__.13302, @object
	.size	__FUNCTION__.13302, 16
__FUNCTION__.13302:
	.string	"df_insns_modify"
	.text
	.type	df_insns_modify, @function
df_insns_modify:
.LFB78:
	.loc 1 2760 0
	pushl	%ebp
.LCFI252:
	movl	%esp, %ebp
.LCFI253:
	pushl	%ebx
.LCFI254:
	subl	$36, %esp
.LCFI255:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2763 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L925:
.LBB104:
	.loc 1 2770 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L926
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L928
.L926:
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L929
.L928:
	.loc 1 2773 0
	leal	__FUNCTION__.13302@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2773, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L929:
	.loc 1 2775 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2777 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L930
	.loc 1 2778 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_table_realloc
.L930:
	.loc 1 2780 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_modify@PLT
	.loc 1 2782 0
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L934
.LBE104:
	.loc 1 2763 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2784 0
	jmp	.L925
.L934:
	.loc 1 2785 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	df_insns_modify, .-df_insns_modify
	.section	.rodata
	.type	__FUNCTION__.13326, @object
	.size	__FUNCTION__.13326, 23
__FUNCTION__.13326:
	.string	"df_pattern_emit_before"
	.text
.globl df_pattern_emit_before
	.type	df_pattern_emit_before, @function
df_pattern_emit_before:
.LFB79:
	.loc 1 2795 0
	pushl	%ebp
.LCFI256:
	movl	%esp, %ebp
.LCFI257:
	pushl	%ebx
.LCFI258:
	subl	$36, %esp
.LCFI259:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2797 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2800 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	.L936
	.loc 1 2801 0
	leal	__FUNCTION__.13326@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2801, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L936:
	.loc 1 2802 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2803 0
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L938
	.loc 1 2804 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L940
.L938:
	.loc 1 2806 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insns_modify
	.loc 1 2807 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L940:
	movl	-24(%ebp), %eax
	.loc 1 2808 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	df_pattern_emit_before, .-df_pattern_emit_before
.globl df_pattern_emit_after
	.type	df_pattern_emit_after, @function
df_pattern_emit_after:
.LFB80:
	.loc 1 2818 0
	pushl	%ebp
.LCFI260:
	movl	%esp, %ebp
.LCFI261:
	pushl	%ebx
.LCFI262:
	subl	$36, %esp
.LCFI263:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2821 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2822 0
	movl	-8(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L943
	.loc 1 2823 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L945
.L943:
	.loc 1 2825 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insns_modify
	.loc 1 2826 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L945:
	movl	-24(%ebp), %eax
	.loc 1 2827 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	df_pattern_emit_after, .-df_pattern_emit_after
.globl df_jump_pattern_emit_after
	.type	df_jump_pattern_emit_after, @function
df_jump_pattern_emit_after:
.LFB81:
	.loc 1 2837 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%ebx
.LCFI266:
	subl	$36, %esp
.LCFI267:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2840 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2841 0
	movl	-8(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L948
	.loc 1 2842 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L950
.L948:
	.loc 1 2844 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insns_modify
	.loc 1 2845 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L950:
	movl	-24(%ebp), %eax
	.loc 1 2846 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	df_jump_pattern_emit_after, .-df_jump_pattern_emit_after
.globl df_insn_move_before
	.type	df_insn_move_before, @function
df_insn_move_before:
.LFB82:
	.loc 1 2861 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	pushl	%ebx
.LCFI270:
	subl	$36, %esp
.LCFI271:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2865 0
	cmpl	$0, 12(%ebp)
	jne	.L953
	.loc 1 2866 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_pattern_emit_before@PLT
	movl	%eax, -24(%ebp)
	jmp	.L955
.L953:
	.loc 1 2868 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2871 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L956
.L957:
	.loc 1 2872 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 2871 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L956:
	cmpl	$0, -12(%ebp)
	jne	.L957
	.loc 1 2873 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L959
.L960:
	.loc 1 2874 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 2873 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L959:
	cmpl	$0, -12(%ebp)
	jne	.L960
	.loc 1 2883 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -24(%ebp)
.L955:
	movl	-24(%ebp), %eax
	.loc 1 2884 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	df_insn_move_before, .-df_insn_move_before
.globl df_insn_regno_def_p
	.type	df_insn_regno_def_p, @function
df_insn_regno_def_p:
.LFB83:
	.loc 1 2895 0
	pushl	%ebp
.LCFI272:
	movl	%esp, %ebp
.LCFI273:
	subl	$24, %esp
.LCFI274:
	.loc 1 2899 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2901 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L964
.L965:
.LBB105:
	.loc 1 2903 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2905 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L966
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L968
.L966:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L968:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	20(%ebp), %eax
	jne	.L969
	.loc 1 2906 0
	movl	$1, -20(%ebp)
	jmp	.L971
.L969:
.LBE105:
	.loc 1 2901 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L964:
	cmpl	$0, -8(%ebp)
	jne	.L965
	.loc 1 2909 0
	movl	$0, -20(%ebp)
.L971:
	movl	-20(%ebp), %eax
	.loc 1 2910 0
	leave
	ret
.LFE83:
	.size	df_insn_regno_def_p, .-df_insn_regno_def_p
	.type	df_def_dominates_all_uses_p, @function
df_def_dominates_all_uses_p:
.LFB84:
	.loc 1 2917 0
	pushl	%ebp
.LCFI275:
	movl	%esp, %ebp
.LCFI276:
	subl	$20, %esp
.LCFI277:
	.loc 1 2921 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L975
.L976:
.LBB106:
	.loc 1 2923 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2927 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L977
.L978:
	.loc 1 2928 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L979
	.loc 1 2929 0
	movl	$0, -20(%ebp)
	jmp	.L981
.L979:
	.loc 1 2927 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L977:
	cmpl	$0, -4(%ebp)
	jne	.L978
.LBE106:
	.loc 1 2921 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L975:
	cmpl	$0, -12(%ebp)
	jne	.L976
	.loc 1 2931 0
	movl	$1, -20(%ebp)
.L981:
	movl	-20(%ebp), %eax
	.loc 1 2932 0
	leave
	ret
.LFE84:
	.size	df_def_dominates_all_uses_p, .-df_def_dominates_all_uses_p
.globl df_insn_dominates_all_uses_p
	.type	df_insn_dominates_all_uses_p, @function
df_insn_dominates_all_uses_p:
.LFB85:
	.loc 1 2940 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	subl	$28, %esp
.LCFI280:
	.loc 1 2944 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2946 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L986
.L987:
.LBB107:
	.loc 1 2948 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2950 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_dominates_all_uses_p
	testl	%eax, %eax
	jne	.L988
	.loc 1 2951 0
	movl	$0, -20(%ebp)
	jmp	.L990
.L988:
.LBE107:
	.loc 1 2946 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L986:
	cmpl	$0, -8(%ebp)
	jne	.L987
	.loc 1 2954 0
	movl	$1, -20(%ebp)
.L990:
	movl	-20(%ebp), %eax
	.loc 1 2955 0
	leave
	ret
.LFE85:
	.size	df_insn_dominates_all_uses_p, .-df_insn_dominates_all_uses_p
	.type	df_def_dominates_uses_p, @function
df_def_dominates_uses_p:
.LFB86:
	.loc 1 2965 0
	pushl	%ebp
.LCFI281:
	movl	%esp, %ebp
.LCFI282:
	pushl	%ebx
.LCFI283:
	subl	$36, %esp
.LCFI284:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2969 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L994
.L995:
.LBB108:
	.loc 1 2971 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2977 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L996
	.loc 1 2980 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L998
.L999:
	.loc 1 2981 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1000
	.loc 1 2982 0
	movl	$0, -24(%ebp)
	jmp	.L1002
.L1000:
	.loc 1 2980 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L998:
	cmpl	$0, -8(%ebp)
	jne	.L999
.L996:
.LBE108:
	.loc 1 2969 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L994:
	cmpl	$0, -16(%ebp)
	jne	.L995
	.loc 1 2985 0
	movl	$1, -24(%ebp)
.L1002:
	movl	-24(%ebp), %eax
	.loc 1 2986 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	df_def_dominates_uses_p, .-df_def_dominates_uses_p
.globl df_insn_dominates_uses_p
	.type	df_insn_dominates_uses_p, @function
df_insn_dominates_uses_p:
.LFB87:
	.loc 1 2997 0
	pushl	%ebp
.LCFI285:
	movl	%esp, %ebp
.LCFI286:
	pushl	%ebx
.LCFI287:
	subl	$36, %esp
.LCFI288:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3001 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3003 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1006
.L1007:
.LBB109:
	.loc 1 3005 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3008 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L1008
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_def_dominates_uses_p
	testl	%eax, %eax
	jne	.L1008
	.loc 1 3010 0
	movl	$0, -24(%ebp)
	jmp	.L1011
.L1008:
.LBE109:
	.loc 1 3003 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1006:
	cmpl	$0, -12(%ebp)
	jne	.L1007
	.loc 1 3012 0
	movl	$1, -24(%ebp)
.L1011:
	movl	-24(%ebp), %eax
	.loc 1 3013 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	df_insn_dominates_uses_p, .-df_insn_dominates_uses_p
.globl df_regno_bb
	.type	df_regno_bb, @function
df_regno_bb:
.LFB88:
	.loc 1 3022 0
	pushl	%ebp
.LCFI289:
	movl	%esp, %ebp
.LCFI290:
	subl	$52, %esp
.LCFI291:
	.loc 1 3023 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3024 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3025 0
	cmpl	$0, -24(%ebp)
	je	.L1015
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1017
.L1015:
	movl	$0, -52(%ebp)
.L1017:
	movl	-52(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3026 0
	cmpl	$0, -20(%ebp)
	je	.L1018
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1020
.L1018:
	movl	$0, -48(%ebp)
.L1020:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3027 0
	cmpl	$0, -16(%ebp)
	je	.L1021
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1023
.L1021:
	movl	$0, -44(%ebp)
.L1023:
	movl	-44(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3028 0
	cmpl	$0, -12(%ebp)
	je	.L1024
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1026
.L1024:
	movl	$0, -40(%ebp)
.L1026:
	movl	-40(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3032 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L1027
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1029
.L1027:
	movl	$0, -36(%ebp)
.L1029:
	movl	-36(%ebp), %eax
	.loc 1 3033 0
	leave
	ret
.LFE88:
	.size	df_regno_bb, .-df_regno_bb
.globl df_reg_global_p
	.type	df_reg_global_p, @function
df_reg_global_p:
.LFB89:
	.loc 1 3041 0
	pushl	%ebp
.LCFI292:
	movl	%esp, %ebp
.LCFI293:
	pushl	%ebx
.LCFI294:
	subl	$20, %esp
.LCFI295:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3042 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_regno_bb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 3043 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE89:
	.size	df_reg_global_p, .-df_reg_global_p
.globl df_reg_lifetime
	.type	df_reg_lifetime, @function
df_reg_lifetime:
.LFB90:
	.loc 1 3051 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	.loc 1 3052 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	.loc 1 3053 0
	popl	%ebp
	ret
.LFE90:
	.size	df_reg_lifetime, .-df_reg_lifetime
.globl df_bb_reg_live_start_p
	.type	df_bb_reg_live_start_p, @function
df_bb_reg_live_start_p:
.LFB91:
	.loc 1 3062 0
	pushl	%ebp
.LCFI298:
	movl	%esp, %ebp
.LCFI299:
	pushl	%ebx
.LCFI300:
	subl	$36, %esp
.LCFI301:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3063 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3070 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	.loc 1 3071 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	df_bb_reg_live_start_p, .-df_bb_reg_live_start_p
.globl df_bb_reg_live_end_p
	.type	df_bb_reg_live_end_p, @function
df_bb_reg_live_end_p:
.LFB92:
	.loc 1 3080 0
	pushl	%ebp
.LCFI302:
	movl	%esp, %ebp
.LCFI303:
	pushl	%ebx
.LCFI304:
	subl	$36, %esp
.LCFI305:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3081 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3088 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	.loc 1 3089 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	df_bb_reg_live_end_p, .-df_bb_reg_live_end_p
	.section	.rodata
	.type	__FUNCTION__.13624, @object
	.size	__FUNCTION__.13624, 25
__FUNCTION__.13624:
	.string	"df_bb_regs_lives_compare"
	.text
.globl df_bb_regs_lives_compare
	.type	df_bb_regs_lives_compare, @function
df_bb_regs_lives_compare:
.LFB93:
	.loc 1 3100 0
	pushl	%ebp
.LCFI306:
	movl	%esp, %ebp
.LCFI307:
	pushl	%esi
.LCFI308:
	pushl	%ebx
.LCFI309:
	subl	$48, %esp
.LCFI310:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3101 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3102 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3110 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_regno_bb@PLT
	cmpl	12(%ebp), %eax
	jne	.L1040
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_regno_bb@PLT
	cmpl	12(%ebp), %eax
	je	.L1042
.L1040:
	.loc 1 3112 0
	leal	__FUNCTION__.13624@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3112, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1042:
	.loc 1 3114 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_regno_first_def_find
	movl	%eax, -16(%ebp)
	.loc 1 3115 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_regno_last_use_find
	movl	%eax, -20(%ebp)
	.loc 1 3117 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L1043
	.loc 1 3119 0
	movl	$-1, -44(%ebp)
	jmp	.L1045
.L1043:
	.loc 1 3121 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_regno_first_def_find
	movl	%eax, -24(%ebp)
	.loc 1 3122 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_regno_last_use_find
	movl	%eax, -12(%ebp)
	.loc 1 3124 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jle	.L1046
	.loc 1 3126 0
	movl	$1, -44(%ebp)
	jmp	.L1045
.L1046:
	.loc 1 3128 0
	movl	$0, -44(%ebp)
.L1045:
	movl	-44(%ebp), %eax
	.loc 1 3129 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE93:
	.size	df_bb_regs_lives_compare, .-df_bb_regs_lives_compare
	.type	df_bb_regno_last_use_find, @function
df_bb_regno_last_use_find:
.LFB94:
	.loc 1 3138 0
	pushl	%ebp
.LCFI311:
	movl	%esp, %ebp
.LCFI312:
	subl	$20, %esp
.LCFI313:
	.loc 1 3145 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1050
.L1051:
.LBB110:
	.loc 1 3147 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3149 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1052
	.loc 1 3150 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1054
.L1052:
.LBE110:
	.loc 1 3145 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1050:
	cmpl	$0, -8(%ebp)
	jne	.L1051
	.loc 1 3152 0
	movl	$0, -20(%ebp)
.L1054:
	movl	-20(%ebp), %eax
	.loc 1 3153 0
	leave
	ret
.LFE94:
	.size	df_bb_regno_last_use_find, .-df_bb_regno_last_use_find
	.type	df_bb_regno_first_def_find, @function
df_bb_regno_first_def_find:
.LFB95:
	.loc 1 3162 0
	pushl	%ebp
.LCFI314:
	movl	%esp, %ebp
.LCFI315:
	subl	$20, %esp
.LCFI316:
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1058
.L1059:
.LBB111:
	.loc 1 3171 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3173 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1060
	.loc 1 3174 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1062
.L1060:
.LBE111:
	.loc 1 3169 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1058:
	cmpl	$0, -8(%ebp)
	jne	.L1059
	.loc 1 3176 0
	movl	$0, -20(%ebp)
.L1062:
	movl	-20(%ebp), %eax
	.loc 1 3177 0
	leave
	ret
.LFE95:
	.size	df_bb_regno_first_def_find, .-df_bb_regno_first_def_find
	.type	df_bb_insn_regno_last_use_find, @function
df_bb_insn_regno_last_use_find:
.LFB96:
	.loc 1 3187 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	subl	$24, %esp
.LCFI319:
	.loc 1 3191 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3193 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1066
.L1067:
.LBB112:
	.loc 1 3195 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3197 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1068
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1070
.L1068:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1070:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	20(%ebp), %eax
	jne	.L1071
	.loc 1 3198 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1073
.L1071:
.LBE112:
	.loc 1 3193 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1066:
	cmpl	$0, -8(%ebp)
	jne	.L1067
	.loc 1 3201 0
	movl	$0, -20(%ebp)
.L1073:
	movl	-20(%ebp), %eax
	.loc 1 3202 0
	leave
	ret
.LFE96:
	.size	df_bb_insn_regno_last_use_find, .-df_bb_insn_regno_last_use_find
	.type	df_bb_insn_regno_first_def_find, @function
df_bb_insn_regno_first_def_find:
.LFB97:
	.loc 1 3212 0
	pushl	%ebp
.LCFI320:
	movl	%esp, %ebp
.LCFI321:
	subl	$24, %esp
.LCFI322:
	.loc 1 3216 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3218 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1077
.L1078:
.LBB113:
	.loc 1 3220 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3222 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1079
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1081
.L1079:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1081:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	20(%ebp), %eax
	jne	.L1082
	.loc 1 3223 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1084
.L1082:
.LBE113:
	.loc 1 3218 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1077:
	cmpl	$0, -8(%ebp)
	jne	.L1078
	.loc 1 3226 0
	movl	$0, -20(%ebp)
.L1084:
	movl	-20(%ebp), %eax
	.loc 1 3227 0
	leave
	ret
.LFE97:
	.size	df_bb_insn_regno_first_def_find, .-df_bb_insn_regno_first_def_find
	.section	.rodata
	.align 4
	.type	__FUNCTION__.13779, @object
	.size	__FUNCTION__.13779, 31
__FUNCTION__.13779:
	.string	"df_bb_single_def_use_insn_find"
	.text
.globl df_bb_single_def_use_insn_find
	.type	df_bb_single_def_use_insn_find, @function
df_bb_single_def_use_insn_find:
.LFB98:
	.loc 1 3238 0
	pushl	%ebp
.LCFI323:
	movl	%esp, %ebp
.LCFI324:
	pushl	%ebx
.LCFI325:
	subl	$36, %esp
.LCFI326:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3243 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_bb_insn_regno_first_def_find
	movl	%eax, -16(%ebp)
	.loc 1 3245 0
	cmpl	$0, -16(%ebp)
	jne	.L1088
	.loc 1 3246 0
	leal	__FUNCTION__.13779@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3246, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1088:
	.loc 1 3248 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3250 0
	cmpl	$0, -8(%ebp)
	jne	.L1090
	.loc 1 3251 0
	movl	$0, -24(%ebp)
	jmp	.L1092
.L1090:
	.loc 1 3253 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3256 0
	cmpl	$0, -12(%ebp)
	jne	.L1093
	.loc 1 3257 0
	movl	$0, -24(%ebp)
	jmp	.L1092
.L1093:
	.loc 1 3260 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1095
	.loc 1 3261 0
	movl	$0, -24(%ebp)
	jmp	.L1092
.L1095:
	.loc 1 3263 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1092:
	movl	-24(%ebp), %eax
	.loc 1 3264 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	df_bb_single_def_use_insn_find, .-df_bb_single_def_use_insn_find
	.section	.rodata
.LC1:
	.string	"{ "
.LC2:
	.string	"%c%d "
	.text
	.type	df_chain_dump, @function
df_chain_dump:
.LFB99:
	.loc 1 3274 0
	pushl	%ebp
.LCFI327:
	movl	%esp, %ebp
.LCFI328:
	pushl	%ebx
.LCFI329:
	subl	$36, %esp
.LCFI330:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3275 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3276 0
	jmp	.L1099
.L1100:
	.loc 1 3278 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1101
	movl	$100, -8(%ebp)
	jmp	.L1103
.L1101:
	movl	$117, -8(%ebp)
.L1103:
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3276 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L1099:
	cmpl	$0, 8(%ebp)
	jne	.L1100
	.loc 1 3282 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$125, (%esp)
	call	fputc@PLT
	.loc 1 3283 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	df_chain_dump, .-df_chain_dump
	.section	.rodata
.LC3:
	.string	"%c%d(%d) "
	.text
	.type	df_chain_dump_regno, @function
df_chain_dump_regno:
.LFB100:
	.loc 1 3289 0
	pushl	%ebp
.LCFI331:
	movl	%esp, %ebp
.LCFI332:
	pushl	%ebx
.LCFI333:
	subl	$36, %esp
.LCFI334:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3290 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3291 0
	jmp	.L1107
.L1108:
	.loc 1 3293 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1109
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1111
.L1109:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1111:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1112
	movl	$100, -8(%ebp)
	jmp	.L1114
.L1112:
	movl	$117, -8(%ebp)
.L1114:
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3291 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L1107:
	cmpl	$0, 8(%ebp)
	jne	.L1108
	.loc 1 3298 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$125, (%esp)
	call	fputc@PLT
	.loc 1 3299 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	df_chain_dump_regno, .-df_chain_dump_regno
	.section	.rodata
.LC4:
	.string	"\nDataflow summary:\n"
	.align 4
.LC5:
	.string	"n_regs = %d, n_defs = %d, n_uses = %d, n_bbs = %d\n"
.LC6:
	.string	"Reaching defs:\n"
.LC7:
	.string	"bb %d in  \t"
.LC8:
	.string	"\n"
.LC9:
	.string	""
.LC10:
	.string	"bb %d gen \t"
.LC11:
	.string	"bb %d kill\t"
.LC12:
	.string	"bb %d out \t"
.LC13:
	.string	"Use-def chains:\n"
	.align 4
.LC14:
	.string	"d%d bb %d luid %d insn %d reg %d "
.LC15:
	.string	"read/write "
.LC16:
	.string	"Reaching uses:\n"
.LC17:
	.string	"Def-use chains:\n"
	.align 4
.LC18:
	.string	"u%d bb %d luid %d insn %d reg %d "
.LC19:
	.string	"Live regs:\n"
.LC20:
	.string	"bb %d use \t"
.LC21:
	.string	"bb %d def \t"
.LC22:
	.string	"Register info:\n"
.LC23:
	.string	"reg %d"
.LC24:
	.string	" bb %d"
.LC25:
	.string	" bb ?"
.LC26:
	.string	" life %d"
.LC27:
	.string	" defs "
.LC28:
	.string	"%d "
.LC29:
	.string	" uses "
	.text
.globl df_dump
	.type	df_dump, @function
df_dump:
.LFB101:
	.loc 1 3307 0
	pushl	%ebp
.LCFI335:
	movl	%esp, %ebp
.LCFI336:
	pushl	%edi
.LCFI337:
	pushl	%esi
.LCFI338:
	pushl	%ebx
.LCFI339:
	subl	$76, %esp
.LCFI340:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3311 0
	cmpl	$0, 8(%ebp)
	je	.L1193
	cmpl	$0, 16(%ebp)
	jne	.L1120
	.loc 1 3312 0
	jmp	.L1193
.L1120:
	.loc 1 3314 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3315 0
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %esi
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3318 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1122
.LBB114:
	.loc 1 3322 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3323 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1124
.L1125:
.LBB115:
	.loc 1 3325 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3327 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1126
	.loc 1 3330 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3331 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3332 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3333 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3334 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3335 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3336 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3337 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
.L1126:
.LBE115:
	.loc 1 3323 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L1124:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L1125
.L1122:
.LBE114:
	.loc 1 3341 0
	movl	12(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1128
	.loc 1 3343 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3344 0
	movl	$0, -44(%ebp)
	jmp	.L1130
.L1131:
	.loc 1 3346 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1132
	.loc 1 3348 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1134
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1136
.L1134:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1136:
	movl	-52(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%edi,%eax), %eax
	movl	8(%eax), %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3353 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1137
	.loc 1 3354 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1137:
	.loc 1 3355 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3356 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1132:
	.loc 1 3344 0
	addl	$1, -44(%ebp)
.L1130:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-44(%ebp), %eax
	ja	.L1131
.L1128:
	.loc 1 3361 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1139
	.loc 1 3363 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3364 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1141
.L1142:
.LBB116:
	.loc 1 3366 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3368 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1143
	.loc 1 3371 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3372 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3373 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3374 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3375 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3376 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3377 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3378 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
.L1143:
.LBE116:
	.loc 1 3364 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L1141:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1142
.L1139:
	.loc 1 3382 0
	movl	12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1145
	.loc 1 3384 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3385 0
	movl	$0, -44(%ebp)
	jmp	.L1147
.L1148:
	.loc 1 3387 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1149
	.loc 1 3389 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1151
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1153
.L1151:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L1153:
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%edi,%eax), %eax
	movl	8(%eax), %edi
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3394 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1154
	.loc 1 3395 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1154:
	.loc 1 3396 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3397 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1149:
	.loc 1 3385 0
	addl	$1, -44(%ebp)
.L1147:
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	-44(%ebp), %eax
	ja	.L1148
.L1145:
	.loc 1 3402 0
	movl	12(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1156
	.loc 1 3404 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3405 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1158
.L1159:
.LBB117:
	.loc 1 3407 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3409 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L1160
	.loc 1 3412 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3413 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3414 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3415 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3416 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3417 0
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
	.loc 1 3418 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3419 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_print@PLT
.L1160:
.LBE117:
	.loc 1 3405 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L1158:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1159
.L1156:
	.loc 1 3423 0
	movl	12(%ebp), %eax
	andl	$224, %eax
	testl	%eax, %eax
	je	.L1162
.LBB118:
	.loc 1 3425 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3427 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3428 0
	movl	$0, -44(%ebp)
	jmp	.L1164
.L1165:
	.loc 1 3430 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1166
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1168
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1168
.L1166:
	movl	12(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1170
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1168
.L1170:
	movl	12(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1172
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1172
.L1168:
	.loc 1 3435 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3436 0
	movl	12(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1174
	movl	12(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1174
.LBB119:
	.loc 1 3438 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_regno_bb@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3440 0
	cmpl	$0, -16(%ebp)
	je	.L1177
	.loc 1 3441 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L1174
.L1177:
	.loc 1 3443 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1174:
.LBE119:
	.loc 1 3445 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1179
	.loc 1 3447 0
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1179:
	.loc 1 3450 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L1181
	movl	12(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1183
.L1181:
	.loc 1 3452 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3453 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1184
	.loc 1 3454 0
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1184:
	.loc 1 3455 0
	movl	12(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1183
	.loc 1 3456 0
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
.L1183:
	.loc 1 3459 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L1187
	movl	12(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1189
.L1187:
	.loc 1 3461 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3462 0
	movl	12(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1190
	.loc 1 3463 0
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1190:
	.loc 1 3464 0
	movl	12(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1189
	.loc 1 3465 0
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
.L1189:
	.loc 1 3468 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1172:
	.loc 1 3428 0
	addl	$1, -44(%ebp)
.L1164:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	-44(%ebp), %eax
	ja	.L1165
.L1162:
.LBE118:
	.loc 1 3472 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1193:
	.loc 1 3473 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE101:
	.size	df_dump, .-df_dump
	.section	.rodata
.LC30:
	.string	"insn %d bb %d luid %d defs "
	.text
.globl df_insn_debug
	.type	df_insn_debug, @function
df_insn_debug:
.LFB102:
	.loc 1 3481 0
	pushl	%ebp
.LCFI341:
	movl	%esp, %ebp
.LCFI342:
	pushl	%ebx
.LCFI343:
	subl	$36, %esp
.LCFI344:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3485 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3486 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L1202
	.loc 1 3489 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1197
	.loc 1 3490 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1199
.L1197:
	.loc 1 3491 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1200
	.loc 1 3492 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1199
.L1200:
	.loc 1 3494 0
	movl	$-1, -8(%ebp)
.L1199:
	.loc 1 3496 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3498 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3499 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3500 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3501 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1202:
	.loc 1 3502 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	df_insn_debug, .-df_insn_debug
.globl df_insn_debug_regno
	.type	df_insn_debug_regno, @function
df_insn_debug_regno:
.LFB103:
	.loc 1 3509 0
	pushl	%ebp
.LCFI345:
	movl	%esp, %ebp
.LCFI346:
	pushl	%ebx
.LCFI347:
	subl	$36, %esp
.LCFI348:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3513 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3514 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L1211
	.loc 1 3517 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1206
	.loc 1 3518 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1208
.L1206:
	.loc 1 3519 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1209
	.loc 1 3520 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1208
.L1209:
	.loc 1 3522 0
	movl	$-1, -8(%ebp)
.L1208:
	.loc 1 3524 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3526 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump_regno
	.loc 1 3527 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3528 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump_regno
	.loc 1 3529 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1211:
	.loc 1 3530 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE103:
	.size	df_insn_debug_regno, .-df_insn_debug_regno
	.section	.rodata
.LC31:
	.string	"reg %d life %d defs "
	.text
	.type	df_regno_debug, @function
df_regno_debug:
.LFB104:
	.loc 1 3537 0
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$20, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3538 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	12(%ebp), %eax
	jbe	.L1215
	.loc 1 3541 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3543 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3544 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3545 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3546 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L1215:
	.loc 1 3547 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	df_regno_debug, .-df_regno_debug
	.section	.rodata
	.align 4
.LC32:
	.string	"reg %d bb %d luid %d insn %d chain "
	.text
	.type	df_ref_debug, @function
df_ref_debug:
.LFB105:
	.loc 1 3555 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%ebx
.LCFI355:
	subl	$52, %esp
.LCFI356:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3556 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1217
	movl	$100, -24(%ebp)
	jmp	.L1219
.L1217:
	movl	$117, -24(%ebp)
.L1219:
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3559 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1220
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1222
.L1220:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1222:
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3564 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_chain_dump
	.loc 1 3565 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3566 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	df_ref_debug, .-df_ref_debug
.globl debug_df_insn
	.type	debug_df_insn, @function
debug_df_insn:
.LFB106:
	.loc 1 3572 0
	pushl	%ebp
.LCFI357:
	movl	%esp, %ebp
.LCFI358:
	pushl	%ebx
.LCFI359:
	subl	$20, %esp
.LCFI360:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3573 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_debug@PLT
	.loc 1 3574 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_rtx@PLT
	.loc 1 3575 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	debug_df_insn, .-debug_df_insn
.globl debug_df_reg
	.type	debug_df_reg, @function
debug_df_reg:
.LFB107:
	.loc 1 3581 0
	pushl	%ebp
.LCFI361:
	movl	%esp, %ebp
.LCFI362:
	pushl	%ebx
.LCFI363:
	subl	$20, %esp
.LCFI364:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3582 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_regno_debug
	.loc 1 3583 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	debug_df_reg, .-debug_df_reg
.globl debug_df_regno
	.type	debug_df_regno, @function
debug_df_regno:
.LFB108:
	.loc 1 3589 0
	pushl	%ebp
.LCFI365:
	movl	%esp, %ebp
.LCFI366:
	pushl	%ebx
.LCFI367:
	subl	$20, %esp
.LCFI368:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3590 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_regno_debug
	.loc 1 3591 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE108:
	.size	debug_df_regno, .-debug_df_regno
.globl debug_df_ref
	.type	debug_df_ref, @function
debug_df_ref:
.LFB109:
	.loc 1 3597 0
	pushl	%ebp
.LCFI369:
	movl	%esp, %ebp
.LCFI370:
	pushl	%ebx
.LCFI371:
	subl	$20, %esp
.LCFI372:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3598 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_debug
	.loc 1 3599 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	debug_df_ref, .-debug_df_ref
.globl debug_df_defno
	.type	debug_df_defno, @function
debug_df_defno:
.LFB110:
	.loc 1 3605 0
	pushl	%ebp
.LCFI373:
	movl	%esp, %ebp
.LCFI374:
	pushl	%ebx
.LCFI375:
	subl	$20, %esp
.LCFI376:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3606 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	ddf@GOTOFF(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_debug
	.loc 1 3607 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	debug_df_defno, .-debug_df_defno
.globl debug_df_useno
	.type	debug_df_useno, @function
debug_df_useno:
.LFB111:
	.loc 1 3613 0
	pushl	%ebp
.LCFI377:
	movl	%esp, %ebp
.LCFI378:
	pushl	%ebx
.LCFI379:
	subl	$20, %esp
.LCFI380:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3614 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	ddf@GOTOFF(%ebx), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	ddf@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_ref_debug
	.loc 1 3615 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE111:
	.size	debug_df_useno, .-debug_df_useno
.globl debug_df_chain
	.type	debug_df_chain, @function
debug_df_chain:
.LFB112:
	.loc 1 3621 0
	pushl	%ebp
.LCFI381:
	movl	%esp, %ebp
.LCFI382:
	pushl	%ebx
.LCFI383:
	subl	$20, %esp
.LCFI384:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3622 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_chain_dump
	.loc 1 3623 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 3624 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE112:
	.size	debug_df_chain, .-debug_df_chain
	.type	hybrid_search_bitmap, @function
hybrid_search_bitmap:
.LFB113:
	.loc 1 3640 0
	pushl	%ebp
.LCFI385:
	movl	%esp, %ebp
.LCFI386:
	pushl	%edi
.LCFI387:
	pushl	%esi
.LCFI388:
	pushl	%ebx
.LCFI389:
	subl	$140, %esp
.LCFI390:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3642 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3644 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3645 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	8(%ebp), %eax
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
	je	.L1293
	movl	%esi, %edi
	xorl	%esi, %esi
.L1293:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	-92(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3646 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1294
	movl	%edi, %esi
	xorl	%edi, %edi
.L1294:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1239
	.loc 1 3648 0
	cmpl	$0, 28(%ebp)
	jne	.L1241
	.loc 1 3651 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 3652 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1243
.L1244:
	.loc 1 3654 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1245
	.loc 1 3656 0
	movl	32(%ebp), %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	je	.L1247
	cmpl	$1, -96(%ebp)
	je	.L1248
	jmp	.L1245
.L1247:
	.loc 1 3659 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$2, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 3660 0
	jmp	.L1245
.L1248:
	.loc 1 3662 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L1245:
	.loc 1 3652 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1243:
	cmpl	$0, -24(%ebp)
	jne	.L1244
	jmp	.L1250
.L1241:
	.loc 1 3670 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 3671 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1251
.L1252:
	.loc 1 3673 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1253
	.loc 1 3675 0
	movl	32(%ebp), %esi
	movl	%esi, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	.L1255
	cmpl	$1, -100(%ebp)
	je	.L1256
	jmp	.L1253
.L1255:
	.loc 1 3678 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$2, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 3679 0
	jmp	.L1253
.L1256:
	.loc 1 3681 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L1253:
	.loc 1 3671 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1251:
	cmpl	$0, -24(%ebp)
	jne	.L1252
.L1250:
	.loc 1 3687 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	36(%ebp), %eax
	call	*%eax
	.loc 1 3688 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1292
	movl	%eax, %edx
	xorl	%eax, %eax
.L1292:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3689 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L1239
	.loc 1 3691 0
	cmpl	$0, 28(%ebp)
	jne	.L1258
	.loc 1 3693 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1260
.L1261:
	.loc 1 3695 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1262
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1262
	.loc 1 3697 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
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
	je	.L1291
	movl	%esi, %edi
	xorl	%esi, %esi
.L1291:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1262:
	.loc 1 3693 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1260:
	cmpl	$0, -24(%ebp)
	jne	.L1261
	jmp	.L1239
.L1258:
	.loc 1 3702 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1266
.L1267:
	.loc 1 3704 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1268
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1268
	.loc 1 3706 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
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
	je	.L1290
	movl	%esi, %edi
	xorl	%esi, %esi
.L1290:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1268:
	.loc 1 3702 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1266:
	cmpl	$0, -24(%ebp)
	jne	.L1267
.L1239:
	.loc 1 3711 0
	cmpl	$0, 28(%ebp)
	jne	.L1271
	.loc 1 3713 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1273
.L1274:
	.loc 1 3715 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1275
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1275
	.loc 1 3717 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1289
	movl	%edi, %esi
	xorl	%edi, %edi
.L1289:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1275
	.loc 1 3718 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
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
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hybrid_search_bitmap
.L1275:
	.loc 1 3713 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1273:
	cmpl	$0, -24(%ebp)
	jne	.L1274
	jmp	.L1287
.L1271:
	.loc 1 3725 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1281
.L1282:
	.loc 1 3727 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1283
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1283
	.loc 1 3729 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1288
	movl	%edi, %esi
	xorl	%edi, %edi
.L1288:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1283
	.loc 1 3730 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
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
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hybrid_search_bitmap
.L1283:
	.loc 1 3725 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1281:
	cmpl	$0, -24(%ebp)
	jne	.L1282
.L1287:
	.loc 1 3735 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE113:
	.size	hybrid_search_bitmap, .-hybrid_search_bitmap
	.type	hybrid_search_sbitmap, @function
hybrid_search_sbitmap:
.LFB114:
	.loc 1 3751 0
	pushl	%ebp
.LCFI391:
	movl	%esp, %ebp
.LCFI392:
	pushl	%edi
.LCFI393:
	pushl	%esi
.LCFI394:
	pushl	%ebx
.LCFI395:
	subl	$140, %esp
.LCFI396:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3753 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3755 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3756 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	8(%ebp), %eax
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
	je	.L1350
	movl	%esi, %edi
	xorl	%esi, %esi
.L1350:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	-92(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3757 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1351
	movl	%edi, %esi
	xorl	%edi, %edi
.L1351:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L1296
	.loc 1 3759 0
	cmpl	$0, 28(%ebp)
	jne	.L1298
	.loc 1 3762 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3763 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1300
.L1301:
	.loc 1 3765 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1302
	.loc 1 3767 0
	movl	32(%ebp), %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	je	.L1304
	cmpl	$1, -96(%ebp)
	je	.L1305
	jmp	.L1302
.L1304:
	.loc 1 3770 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	.loc 1 3771 0
	jmp	.L1302
.L1305:
	.loc 1 3773 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
.L1302:
	.loc 1 3763 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1300:
	cmpl	$0, -24(%ebp)
	jne	.L1301
	jmp	.L1307
.L1298:
	.loc 1 3781 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3782 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1308
.L1309:
	.loc 1 3784 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1310
	.loc 1 3786 0
	movl	32(%ebp), %esi
	movl	%esi, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	.L1312
	cmpl	$1, -100(%ebp)
	je	.L1313
	jmp	.L1310
.L1312:
	.loc 1 3789 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	.loc 1 3790 0
	jmp	.L1310
.L1313:
	.loc 1 3792 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
.L1310:
	.loc 1 3782 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1308:
	cmpl	$0, -24(%ebp)
	jne	.L1309
.L1307:
	.loc 1 3798 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	36(%ebp), %eax
	call	*%eax
	.loc 1 3799 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1349
	movl	%eax, %edx
	xorl	%eax, %eax
.L1349:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 3800 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L1296
	.loc 1 3802 0
	cmpl	$0, 28(%ebp)
	jne	.L1315
	.loc 1 3804 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1317
.L1318:
	.loc 1 3806 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1319
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1319
	.loc 1 3808 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
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
	je	.L1348
	movl	%esi, %edi
	xorl	%esi, %esi
.L1348:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1319:
	.loc 1 3804 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1317:
	cmpl	$0, -24(%ebp)
	jne	.L1318
	jmp	.L1296
.L1315:
	.loc 1 3813 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1323
.L1324:
	.loc 1 3815 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1325
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1325
	.loc 1 3817 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
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
	je	.L1347
	movl	%esi, %edi
	xorl	%esi, %esi
.L1347:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	44(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L1325:
	.loc 1 3813 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1323:
	cmpl	$0, -24(%ebp)
	jne	.L1324
.L1296:
	.loc 1 3822 0
	cmpl	$0, 28(%ebp)
	jne	.L1328
	.loc 1 3824 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1330
.L1331:
	.loc 1 3826 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L1332
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1332
	.loc 1 3828 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1346
	movl	%edi, %esi
	xorl	%edi, %edi
.L1346:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1332
	.loc 1 3829 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
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
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hybrid_search_sbitmap
.L1332:
	.loc 1 3824 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L1330:
	cmpl	$0, -24(%ebp)
	jne	.L1331
	jmp	.L1344
.L1328:
	.loc 1 3836 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1338
.L1339:
	.loc 1 3838 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1340
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1340
	.loc 1 3840 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1345
	movl	%edi, %esi
	xorl	%edi, %edi
.L1345:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1340
	.loc 1 3841 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
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
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hybrid_search_sbitmap
.L1340:
	.loc 1 3836 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1338:
	cmpl	$0, -24(%ebp)
	jne	.L1339
.L1344:
	.loc 1 3846 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE114:
	.size	hybrid_search_sbitmap, .-hybrid_search_sbitmap
.globl iterative_dataflow_sbitmap
	.type	iterative_dataflow_sbitmap, @function
iterative_dataflow_sbitmap:
.LFB115:
	.loc 1 3881 0
	pushl	%ebp
.LCFI397:
	movl	%esp, %ebp
.LCFI398:
	pushl	%edi
.LCFI399:
	pushl	%esi
.LCFI400:
	pushl	%ebx
.LCFI401:
	subl	$156, %esp
.LCFI402:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3886 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3887 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3888 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3889 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3890 0
	call	fibheap_new@PLT
	movl	%eax, -80(%ebp)
.LBB120:
	.loc 1 3891 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L1353
.L1354:
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L1353:
	cmpl	$0, -64(%ebp)
	je	.L1355
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jb	.L1354
.L1355:
	cmpl	$0, -64(%ebp)
	je	.L1360
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L1360
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L1360
.L1363:
.LBB121:
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L1364
	jmp	.L1366
.L1367:
.LBB122:
	movl	-56(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	andl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L1368
	movl	-44(%ebp), %eax
	notl	%eax
	andl	%eax, -48(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	sall	$5, %eax
	addl	-56(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	movl	-84(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-84(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1405
	movl	%esi, %edi
	xorl	%esi, %esi
.L1405:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-68(%ebp), %ecx
	movl	-108(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	cmpl	$0, 28(%ebp)
	jne	.L1370
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	jmp	.L1372
.L1370:
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
.L1372:
	cmpl	$0, -48(%ebp)
	je	.L1364
.L1368:
.LBE122:
	addl	$1, -56(%ebp)
.L1366:
	cmpl	$31, -56(%ebp)
	jbe	.L1367
.L1364:
	movl	$0, -56(%ebp)
.LBE121:
	addl	$1, -52(%ebp)
.L1362:
	cmpl	$3, -52(%ebp)
	jbe	.L1363
	movl	$0, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L1360:
	cmpl	$0, -64(%ebp)
	jne	.L1362
	.loc 1 3900 0
	jmp	.L1375
.L1378:
.LBE120:
	.loc 1 3904 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extract_min@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3905 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3906 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1404
	movl	%edi, %esi
	xorl	%edi, %edi
.L1404:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1377
	.loc 1 3907 0
	movl	44(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	hybrid_search_sbitmap
.L1377:
.L1403:
	.loc 1 3902 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_empty@PLT
	testl	%eax, %eax
	je	.L1378
	.loc 1 3910 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	cmpl	$-1, %eax
	je	.L1381
.LBB123:
	.loc 1 3912 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1383
.L1384:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1383:
	cmpl	$0, -40(%ebp)
	je	.L1385
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L1384
.L1385:
	cmpl	$0, -40(%ebp)
	je	.L1390
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1390
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1390
.L1393:
.LBB124:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1394
	jmp	.L1396
.L1397:
.LBB125:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L1398
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	cmpl	$0, -24(%ebp)
	je	.L1394
.L1398:
.LBE125:
	addl	$1, -32(%ebp)
.L1396:
	cmpl	$31, -32(%ebp)
	jbe	.L1397
.L1394:
	movl	$0, -32(%ebp)
.LBE124:
	addl	$1, -28(%ebp)
.L1392:
	cmpl	$3, -28(%ebp)
	jbe	.L1393
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1390:
	cmpl	$0, -40(%ebp)
	jne	.L1392
.LBE123:
	.loc 1 3916 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L1375:
	.loc 1 3900 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	cmpl	$-1, %eax
	jne	.L1403
.L1381:
	.loc 1 3923 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3924 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3925 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_delete@PLT
	.loc 1 3926 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE115:
	.size	iterative_dataflow_sbitmap, .-iterative_dataflow_sbitmap
.globl iterative_dataflow_bitmap
	.type	iterative_dataflow_bitmap, @function
iterative_dataflow_bitmap:
.LFB116:
	.loc 1 3940 0
	pushl	%ebp
.LCFI403:
	movl	%esp, %ebp
.LCFI404:
	pushl	%edi
.LCFI405:
	pushl	%esi
.LCFI406:
	pushl	%ebx
.LCFI407:
	subl	$156, %esp
.LCFI408:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3945 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3946 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3947 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3948 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 3949 0
	call	fibheap_new@PLT
	movl	%eax, -80(%ebp)
.LBB126:
	.loc 1 3950 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L1407
.L1408:
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L1407:
	cmpl	$0, -64(%ebp)
	je	.L1409
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jb	.L1408
.L1409:
	cmpl	$0, -64(%ebp)
	je	.L1414
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L1414
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L1414
.L1417:
.LBB127:
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L1418
	jmp	.L1420
.L1421:
.LBB128:
	movl	-56(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	andl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L1422
	movl	-44(%ebp), %eax
	notl	%eax
	andl	%eax, -48(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	sall	$5, %eax
	addl	-56(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	movl	-84(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-84(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1459
	movl	%esi, %edi
	xorl	%esi, %esi
.L1459:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-68(%ebp), %ecx
	movl	-108(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	cmpl	$0, 28(%ebp)
	jne	.L1424
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	jmp	.L1426
.L1424:
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L1426:
	cmpl	$0, -48(%ebp)
	je	.L1418
.L1422:
.LBE128:
	addl	$1, -56(%ebp)
.L1420:
	cmpl	$31, -56(%ebp)
	jbe	.L1421
.L1418:
	movl	$0, -56(%ebp)
.LBE127:
	addl	$1, -52(%ebp)
.L1416:
	cmpl	$3, -52(%ebp)
	jbe	.L1417
	movl	$0, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L1414:
	cmpl	$0, -64(%ebp)
	jne	.L1416
	.loc 1 3959 0
	jmp	.L1429
.L1432:
.LBE126:
	.loc 1 3963 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extract_min@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3964 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3965 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1458
	movl	%edi, %esi
	xorl	%edi, %edi
.L1458:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1431
	.loc 1 3966 0
	movl	44(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	hybrid_search_bitmap
.L1431:
.L1457:
	.loc 1 3961 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_empty@PLT
	testl	%eax, %eax
	je	.L1432
	.loc 1 3969 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	cmpl	$-1, %eax
	je	.L1435
.LBB129:
	.loc 1 3971 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1437
.L1438:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1437:
	cmpl	$0, -40(%ebp)
	je	.L1439
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L1438
.L1439:
	cmpl	$0, -40(%ebp)
	je	.L1444
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1444
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1444
.L1447:
.LBB130:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1448
	jmp	.L1450
.L1451:
.LBB131:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L1452
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	addl	40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_insert@PLT
	cmpl	$0, -24(%ebp)
	je	.L1448
.L1452:
.LBE131:
	addl	$1, -32(%ebp)
.L1450:
	cmpl	$31, -32(%ebp)
	jbe	.L1451
.L1448:
	movl	$0, -32(%ebp)
.LBE130:
	addl	$1, -28(%ebp)
.L1446:
	cmpl	$3, -28(%ebp)
	jbe	.L1447
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1444:
	cmpl	$0, -40(%ebp)
	jne	.L1446
.LBE129:
	.loc 1 3975 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L1429:
	.loc 1 3959 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	cmpl	$-1, %eax
	jne	.L1457
.L1435:
	.loc 1 3982 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3983 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3984 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_delete@PLT
	.loc 1 3985 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE116:
	.size	iterative_dataflow_bitmap, .-iterative_dataflow_bitmap
	.local	df_ref_obstack
	.comm	df_ref_obstack,44,32
	.local	ddf
	.comm	ddf,4,4
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
	.long	.LCFI11-.LCFI7
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
	.long	.LCFI12-.LFB17
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
	.long	.LCFI20-.LCFI18
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
	.long	.LCFI21-.LFB19
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
	.long	.LCFI36-.LCFI34
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
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
	.long	.LCFI40-.LCFI38
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI41-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI44-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI47-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI50-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI51
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
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI55-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI58-.LFB30
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
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI62-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
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
	.long	.LCFI65-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI68-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI71-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI75-.LFB35
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI79-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI83-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI87-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI88
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI92-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI93
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
	.long	.LCFI97-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI101-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI102
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
	.long	.LCFI106-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI110-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
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
	.long	.LCFI114-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI117-.LCFI115
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
	.long	.LCFI118-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI119
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI123-.LFB45
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
	.byte	0x4
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI135-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI139-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI143-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI147-.LFB51
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
	.long	.LCFI174-.LCFI172
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
	.long	.LCFI175-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI176-.LCFI175
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI178-.LCFI176
	.byte	0x83
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
	.long	.LCFI179-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI180-.LCFI179
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI183-.LCFI180
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI184-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI187-.LCFI185
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI188-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI190-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI191
	.byte	0x86
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
	.long	.LCFI194-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI195
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
	.long	.LCFI198-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI199
	.byte	0x83
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
	.long	.LCFI202-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI203
	.byte	0x83
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
	.long	.LCFI206-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI209-.LCFI207
	.byte	0x83
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
	.long	.LCFI210-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI213-.LCFI211
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
	.long	.LCFI214-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI217-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI220-.LCFI218
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
	.long	.LCFI221-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI224-.LCFI222
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
	.long	.LCFI225-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI226
	.byte	0x83
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
	.long	.LCFI229-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI232-.LCFI230
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
	.long	.LCFI233-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI236-.LCFI234
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
	.long	.LCFI237-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI238-.LCFI237
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI240-.LCFI238
	.byte	0x83
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
	.long	.LCFI241-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI242
	.byte	0x83
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
	.long	.LCFI245-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI249-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI252-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI255-.LCFI253
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
	.long	.LCFI256-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI257-.LCFI256
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI259-.LCFI257
	.byte	0x83
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
	.long	.LCFI260-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI261-.LCFI260
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI263-.LCFI261
	.byte	0x83
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
	.long	.LCFI264-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI265-.LCFI264
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI267-.LCFI265
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
	.long	.LCFI268-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI271-.LCFI269
	.byte	0x83
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
	.long	.LCFI272-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI275-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI276-.LCFI275
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
	.long	.LCFI278-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI281-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI284-.LCFI282
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
	.long	.LCFI285-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI286-.LCFI285
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI288-.LCFI286
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
	.long	.LCFI289-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI290-.LCFI289
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI292-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI293-.LCFI292
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI295-.LCFI293
	.byte	0x83
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
	.long	.LCFI296-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI297-.LCFI296
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI298-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI299-.LCFI298
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI301-.LCFI299
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
	.long	.LCFI302-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI305-.LCFI303
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
	.long	.LCFI306-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI307-.LCFI306
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI310-.LCFI307
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI311-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI312-.LCFI311
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI314-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI315-.LCFI314
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI317-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI320-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI321-.LCFI320
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI323-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI324-.LCFI323
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI326-.LCFI324
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI327-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI328-.LCFI327
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI330-.LCFI328
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI331-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI332-.LCFI331
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI334-.LCFI332
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
	.long	.LCFI335-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI336-.LCFI335
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI340-.LCFI336
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
	.long	.LCFI341-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI342-.LCFI341
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI344-.LCFI342
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
	.long	.LCFI345-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI346-.LCFI345
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI348-.LCFI346
	.byte	0x83
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
	.long	.LCFI349-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI350
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
	.long	.LCFI353-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI354-.LCFI353
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI356-.LCFI354
	.byte	0x83
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
	.long	.LCFI357-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI358-.LCFI357
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI360-.LCFI358
	.byte	0x83
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
	.long	.LCFI361-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI362-.LCFI361
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI364-.LCFI362
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE184:
.LSFDE186:
	.long	.LEFDE186-.LASFDE186
.LASFDE186:
	.long	.Lframe0
	.long	.LFB108
	.long	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI365-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI365
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI368-.LCFI366
	.byte	0x83
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
	.long	.LCFI369-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI370-.LCFI369
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI372-.LCFI370
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI373-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI376-.LCFI374
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
	.long	.LCFI377-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI378-.LCFI377
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI380-.LCFI378
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
	.long	.LCFI381-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI382-.LCFI381
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI384-.LCFI382
	.byte	0x83
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
	.long	.LCFI385-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI386-.LCFI385
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI390-.LCFI386
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE196:
.LSFDE198:
	.long	.LEFDE198-.LASFDE198
.LASFDE198:
	.long	.Lframe0
	.long	.LFB114
	.long	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI391-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI392-.LCFI391
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI396-.LCFI392
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI397-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI398-.LCFI397
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI402-.LCFI398
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI403-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI404-.LCFI403
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI408-.LCFI404
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE202:
	.file 2 "../../../kg++fe/gnu/df.h"
	.file 3 "../../../kg++fe/gnu/bitmap.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/MIPS/config.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/basic-block.h"
	.file 8 "../../../kg++fe/gnu/sbitmap.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "../../../include/gnu/obstack.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../include/gnu/fibheap.h"
	.file 15 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 16 "../../../kg++fe/gnu/function.h"
	.file 17 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 18 "../../../kg++fe/gnu/varray.h"
	.file 19 "../../../kg++fe/gnu/regs.h"
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
.LLST9:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB26-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB33-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB34-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI175-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI176-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI179-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI180-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI184-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI185-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI190-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI191-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI194-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI195-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI202-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI203-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI206-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI207-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI210-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI211-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI217-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI218-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI221-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI222-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI225-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI226-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI233-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI234-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI237-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI237-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI238-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI241-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI242-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI252-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI253-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI256-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI257-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI260-.Ltext0
	.long	.LCFI261-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI261-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
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
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI268-.Ltext0
	.long	.LCFI269-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI269-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI272-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI273-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI275-.Ltext0
	.long	.LCFI276-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI276-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
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
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI281-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI281-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI282-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI285-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI285-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI286-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI289-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI289-.Ltext0
	.long	.LCFI290-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI290-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI292-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI293-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI296-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI297-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI298-.Ltext0
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI299-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI302-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI303-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI306-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI307-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI311-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI311-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI312-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI314-.Ltext0
	.long	.LCFI315-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI315-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
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
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI320-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI320-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI321-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI323-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI323-.Ltext0
	.long	.LCFI324-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI324-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
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
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI331-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI331-.Ltext0
	.long	.LCFI332-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI332-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI335-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI335-.Ltext0
	.long	.LCFI336-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI336-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
	.long	.LCFI341-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI341-.Ltext0
	.long	.LCFI342-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI342-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI345-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI345-.Ltext0
	.long	.LCFI346-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI346-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI349-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI349-.Ltext0
	.long	.LCFI350-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI350-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
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
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI357-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI358-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI361-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI361-.Ltext0
	.long	.LCFI362-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI362-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI365-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI365-.Ltext0
	.long	.LCFI366-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI366-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI369-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI369-.Ltext0
	.long	.LCFI370-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI370-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
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
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
	.long	.LCFI377-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI377-.Ltext0
	.long	.LCFI378-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI378-.Ltext0
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI381-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI381-.Ltext0
	.long	.LCFI382-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI382-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI385-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI385-.Ltext0
	.long	.LCFI386-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI386-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI391-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI391-.Ltext0
	.long	.LCFI392-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI392-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI397-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI397-.Ltext0
	.long	.LCFI398-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI398-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI403-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI403-.Ltext0
	.long	.LCFI404-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI404-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7932
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/df.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xa2
	.uleb128 0x3
	.byte	0x4
	.long	0xa8
	.uleb128 0x4
	.long	0x198
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x974
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x72b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x158f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1a5
	.uleb128 0x3
	.byte	0x4
	.long	0x1ab
	.uleb128 0x4
	.long	0x1e0
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x159f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
	.byte	0x10
	.long	0x1ec
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x204
	.uleb128 0x8
	.long	0x209
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ea
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x301
	.long	0x97
	.uleb128 0xe
	.long	0x301
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x218
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x2ea
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
	.long	0x386
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xc
	.byte	0x90
	.long	0x3d0
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xc
	.byte	0x91
	.long	0x3b1
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x2
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x401
	.uleb128 0x11
	.long	0x67c
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x6e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x68c
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32e
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0x4
	.long	0x6e3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x6e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
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
	.long	0x6a0
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0xd
	.long	0x6ff
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x692
	.uleb128 0xd
	.long	0x715
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x27
	.byte	0x0
	.uleb128 0xd
	.long	0x725
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0x13
	.long	0x974
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
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
	.long	0x1143
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
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
	.long	0x121d
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x2ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
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
	.byte	0x4
	.byte	0x58
	.long	0x1143
	.uleb128 0x11
	.long	0x1294
	.long	.LASF2
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF2
	.byte	0x4
	.byte	0x68
	.long	0x1238
	.uleb128 0x17
	.long	0x1371
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x386
	.uleb128 0x18
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x211
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x2ea
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x1fe
	.uleb128 0x18
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x97
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x198
	.uleb128 0x18
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x72b
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x121d
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1385
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x13ed
	.uleb128 0x18
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e0
	.uleb128 0x18
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x1574
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x157a
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1371
	.uleb128 0x4
	.long	0x13ed
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x3
	.byte	0x3d
	.long	0x2b17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x3
	.byte	0x3e
	.long	0x2b17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x3
	.byte	0x3f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x3
	.byte	0x40
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x138b
	.uleb128 0x4
	.long	0x1574
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x2c66
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x2c66
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x2b9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x2b9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x2b9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x2b9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x2ee1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x7
	.byte	0xdf
	.long	0x2ba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x7
	.byte	0xe5
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1294
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x129f
	.uleb128 0xd
	.long	0x159f
	.long	0x1580
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15af
	.long	0x97
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x97
	.uleb128 0x4
	.long	0x1615
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x10
	.byte	0x17
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x10
	.byte	0x18
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x10
	.byte	0x19
	.long	0x72b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x10
	.byte	0x1a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x10
	.byte	0x1b
	.long	0x1615
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b5
	.uleb128 0x11
	.long	0x1663
	.long	.LASF7
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x10
	.byte	0x26
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x10
	.byte	0x27
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x10
	.byte	0x28
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x10
	.byte	0x29
	.long	0x1663
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x161b
	.uleb128 0xa
	.long	0x1796
	.string	"obstack"
	.byte	0x2c
	.byte	0x9
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0xa
	.byte	0xaa
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0xa
	.byte	0xab
	.long	0x2f48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0xa
	.byte	0xac
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0xa
	.byte	0xad
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0xa
	.byte	0xae
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0xa
	.byte	0xaf
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0xa
	.byte	0xb0
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0xa
	.byte	0xb5
	.long	0x2f63
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0xa
	.byte	0xb6
	.long	0x2f7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0xa
	.byte	0xb7
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0xa
	.byte	0xbd
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0xa
	.byte	0xbe
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0xa
	.byte	0xc2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1669
	.uleb128 0x4
	.long	0x18eb
	.string	"emit_status"
	.byte	0x34
	.byte	0x10
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x10
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x10
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x10
	.byte	0x44
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x10
	.byte	0x45
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x10
	.byte	0x4a
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x10
	.byte	0x50
	.long	0x1663
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x10
	.byte	0x54
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x10
	.byte	0x58
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x10
	.byte	0x59
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x10
	.byte	0x5f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x10
	.byte	0x65
	.long	0x68c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x10
	.byte	0x69
	.long	0x18eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x10
	.byte	0x70
	.long	0x15af
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e0
	.uleb128 0x4
	.long	0x19d1
	.string	"expr_status"
	.byte	0x1c
	.byte	0x10
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x10
	.byte	0x80
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x10
	.byte	0x91
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x10
	.byte	0x97
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x10
	.byte	0x9c
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x10
	.byte	0x9f
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x10
	.byte	0xa2
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x10
	.byte	0xa5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1b
	.long	0x1a3b
	.long	.LASF9
	.byte	0x4
	.byte	0x10
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
	.long	0x23fa
	.string	"function"
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x10
	.byte	0xb5
	.long	0x2406
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x10
	.byte	0xb6
	.long	0x241a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x10
	.byte	0xb7
	.long	0x2420
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x10
	.byte	0xb8
	.long	0x2426
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x10
	.byte	0xb9
	.long	0x243c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x10
	.byte	0xbe
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x10
	.byte	0xc1
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x10
	.byte	0xc4
	.long	0x2442
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x10
	.byte	0xc9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x10
	.byte	0xce
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x10
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x10
	.byte	0xd7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x10
	.byte	0xdb
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x10
	.byte	0xdf
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x10
	.byte	0xe5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x10
	.byte	0xe8
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x10
	.byte	0xec
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x10
	.byte	0xf0
	.long	0x245f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x10
	.byte	0xf3
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x10
	.byte	0xf8
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x10
	.byte	0xfe
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x10
	.value	0x102
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x10
	.value	0x107
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0x10
	.value	0x10d
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0x10
	.value	0x112
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0x10
	.value	0x115
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0x10
	.value	0x116
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0x10
	.value	0x11a
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0x10
	.value	0x11e
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0x10
	.value	0x121
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0x10
	.value	0x125
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0x10
	.value	0x128
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0x10
	.value	0x12e
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0x10
	.value	0x133
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0x10
	.value	0x138
	.long	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0x10
	.value	0x13d
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0x10
	.value	0x146
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0x10
	.value	0x149
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0x10
	.value	0x14d
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0x10
	.value	0x151
	.long	0x2ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0x10
	.value	0x157
	.long	0x15af
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0x10
	.value	0x15a
	.long	0x2471
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0x10
	.value	0x15d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0x10
	.value	0x160
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0x10
	.value	0x166
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0x10
	.value	0x16a
	.long	0x1615
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0x10
	.value	0x16d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0x10
	.value	0x16e
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0x10
	.value	0x16f
	.long	0x198
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0x10
	.value	0x170
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0x10
	.value	0x173
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0x10
	.value	0x175
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0x10
	.value	0x178
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0x10
	.value	0x17d
	.long	0x248a
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0x10
	.value	0x17f
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0x10
	.value	0x181
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xb
	.string	"language"
	.byte	0x10
	.value	0x184
	.long	0x24a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0x10
	.value	0x18a
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1d
	.string	"returns_struct"
	.byte	0x10
	.value	0x190
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pcc_struct"
	.byte	0x10
	.value	0x194
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pointer"
	.byte	0x10
	.value	0x197
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"needs_context"
	.byte	0x10
	.value	0x19a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_setjmp"
	.byte	0x10
	.value	0x19d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_longjmp"
	.byte	0x10
	.value	0x1a0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_alloca"
	.byte	0x10
	.value	0x1a4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_eh_return"
	.byte	0x10
	.value	0x1a7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_label"
	.byte	0x10
	.value	0x1ab
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_goto"
	.byte	0x10
	.value	0x1af
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"contains_functions"
	.byte	0x10
	.value	0x1b2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_computed_jump"
	.byte	0x10
	.value	0x1b5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"is_thunk"
	.byte	0x10
	.value	0x1ba
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"all_throwers_are_sibcalls"
	.byte	0x10
	.value	0x1c1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"instrument_entry_exit"
	.byte	0x10
	.value	0x1c5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arc_profile"
	.byte	0x10
	.value	0x1c8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"profile"
	.byte	0x10
	.value	0x1cb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"limit_stack"
	.byte	0x10
	.value	0x1cf
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"stdarg"
	.byte	0x10
	.value	0x1d2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_whole_function_mode_p"
	.byte	0x10
	.value	0x1d8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x10
	.value	0x1e1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_const_pool"
	.byte	0x10
	.value	0x1e4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_pic_offset_table"
	.byte	0x10
	.value	0x1e7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_eh_lsda"
	.byte	0x10
	.value	0x1ea
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arg_pointer_save_area_init"
	.byte	0x10
	.value	0x1ed
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x10
	.value	0x1fa
	.long	0x19d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0x10
	.value	0x1fe
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x23fa
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x240c
	.uleb128 0x3
	.byte	0x4
	.long	0x18f1
	.uleb128 0x3
	.byte	0x4
	.long	0x179c
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x242c
	.uleb128 0x3
	.byte	0x4
	.long	0x1a3b
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2448
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2465
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2477
	.uleb128 0x19
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2490
	.uleb128 0x4
	.long	0x24e0
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x12
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x12
	.byte	0x32
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x12
	.byte	0x36
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x267b
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x12
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
	.long	0x2777
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x12
	.byte	0x55
	.uleb128 0x18
	.string	"c"
	.byte	0x12
	.byte	0x56
	.long	0x6ef
	.uleb128 0x18
	.string	"uc"
	.byte	0x12
	.byte	0x58
	.long	0x2777
	.uleb128 0x18
	.string	"s"
	.byte	0x12
	.byte	0x5a
	.long	0x2787
	.uleb128 0x18
	.string	"us"
	.byte	0x12
	.byte	0x5c
	.long	0x2797
	.uleb128 0x18
	.string	"i"
	.byte	0x12
	.byte	0x5e
	.long	0x27a7
	.uleb128 0x18
	.string	"u"
	.byte	0x12
	.byte	0x60
	.long	0x27b7
	.uleb128 0x18
	.string	"l"
	.byte	0x12
	.byte	0x62
	.long	0x27c7
	.uleb128 0x18
	.string	"ul"
	.byte	0x12
	.byte	0x64
	.long	0x27d7
	.uleb128 0x18
	.string	"hint"
	.byte	0x12
	.byte	0x66
	.long	0x27e7
	.uleb128 0x18
	.string	"uhint"
	.byte	0x12
	.byte	0x68
	.long	0x27f7
	.uleb128 0x18
	.string	"generic"
	.byte	0x12
	.byte	0x6a
	.long	0x2807
	.uleb128 0x18
	.string	"cptr"
	.byte	0x12
	.byte	0x6c
	.long	0x2817
	.uleb128 0x18
	.string	"rtx"
	.byte	0x12
	.byte	0x6e
	.long	0x2827
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x12
	.byte	0x70
	.long	0x2837
	.uleb128 0x18
	.string	"tree"
	.byte	0x12
	.byte	0x72
	.long	0x2847
	.uleb128 0x18
	.string	"bitmap"
	.byte	0x12
	.byte	0x74
	.long	0x2857
	.uleb128 0x18
	.string	"reg"
	.byte	0x12
	.byte	0x76
	.long	0x2867
	.uleb128 0x18
	.string	"const_equiv"
	.byte	0x12
	.byte	0x78
	.long	0x2963
	.uleb128 0x18
	.string	"bb"
	.byte	0x12
	.byte	0x7a
	.long	0x2973
	.uleb128 0x18
	.string	"te"
	.byte	0x12
	.byte	0x7c
	.long	0x2983
	.byte	0x0
	.uleb128 0xd
	.long	0x2787
	.long	0x32e
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2797
	.long	0x379
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27a7
	.long	0x33f
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27b7
	.long	0x211
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27c7
	.long	0x2ea
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27d7
	.long	0x3d0
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27e7
	.long	0x355
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27f7
	.long	0x386
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2807
	.long	0x397
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2817
	.long	0x3ed
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2827
	.long	0x3ef
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2837
	.long	0xa2
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2847
	.long	0x1a5
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2857
	.long	0x1ec
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2867
	.long	0x13ed
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2877
	.long	0x295d
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x295d
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x12
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x13
	.byte	0x31
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x13
	.byte	0x32
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x13
	.byte	0x33
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x13
	.byte	0x36
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x13
	.byte	0x39
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x13
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x13
	.byte	0x3b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x13
	.byte	0x3c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x13
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x13
	.byte	0x3e
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x13
	.byte	0x3f
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2877
	.uleb128 0xd
	.long	0x2973
	.long	0x24aa
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2983
	.long	0x1574
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2993
	.long	0x299e
	.uleb128 0xe
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2993
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x12
	.byte	0x7e
	.long	0x267b
	.uleb128 0x4
	.long	0x2a2b
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x12
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x12
	.byte	0x82
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x12
	.byte	0x83
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x12
	.byte	0x85
	.long	0x24e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x12
	.byte	0x86
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x12
	.byte	0x87
	.long	0x29a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x12
	.byte	0x8a
	.long	0x2a3e
	.uleb128 0x3
	.byte	0x4
	.long	0x29b7
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x11
	.byte	0x29
	.long	0x397
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x11
	.byte	0x34
	.long	0x2a71
	.uleb128 0xd
	.long	0x2a81
	.long	0x2a44
	.uleb128 0xe
	.long	0x301
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x3
	.byte	0x1d
	.long	0x355
	.uleb128 0x4
	.long	0x2aeb
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x3
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0x35
	.long	0x2aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x3
	.byte	0x36
	.long	0x2aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x3
	.byte	0x37
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x3
	.byte	0x38
	.long	0x2af1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a94
	.uleb128 0xd
	.long	0x2b01
	.long	0x2a81
	.uleb128 0xe
	.long	0x301
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x3
	.byte	0x39
	.long	0x2a94
	.uleb128 0x3
	.byte	0x4
	.long	0x2b01
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x3
	.byte	0x43
	.long	0x13ed
	.uleb128 0x4
	.long	0x2b85
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x22
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x27f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x2b94
	.uleb128 0x3
	.byte	0x4
	.long	0x2b2b
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x2b1d
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x386
	.uleb128 0x4
	.long	0x2c60
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x2c60
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x2c60
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x7
	.byte	0x80
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0x83
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x7
	.byte	0x85
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x7
	.byte	0x87
	.long	0x2ba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bb9
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x2c60
	.uleb128 0x4
	.long	0x2ee1
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xb
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x2ef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"first"
	.byte	0x7
	.value	0x18b
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x2ee7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x2b85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"num_nodes"
	.byte	0x7
	.value	0x195
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x2ef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x2ef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x2b85
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x2ef8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x2ee1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x2ee1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x7
	.value	0x1b7
	.long	0x2ee1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"vtop"
	.byte	0x7
	.value	0x1c3
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"exit_count"
	.byte	0x7
	.value	0x1e6
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c72
	.uleb128 0x16
	.long	.LASF10
	.byte	0x7
	.byte	0xe6
	.long	0x1574
	.uleb128 0x3
	.byte	0x4
	.long	0x2c66
	.uleb128 0x3
	.byte	0x4
	.long	0x2ee1
	.uleb128 0x4
	.long	0x2f48
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xa
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0xa
	.byte	0xa3
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xa
	.byte	0xa4
	.long	0x2f48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0xa
	.byte	0xa5
	.long	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2efe
	.uleb128 0x1f
	.long	0x2f63
	.byte	0x1
	.long	0x2f48
	.uleb128 0x20
	.long	0x3ed
	.uleb128 0x20
	.long	0x3d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f4e
	.uleb128 0x21
	.long	0x2f7a
	.byte	0x1
	.uleb128 0x20
	.long	0x3ed
	.uleb128 0x20
	.long	0x2f48
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f69
	.uleb128 0x13
	.long	0x2fe4
	.string	"df_ref_type"
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0x14
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0x14
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0x14
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x3011
	.string	"df_link"
	.byte	0x8
	.byte	0x2
	.byte	0x2e
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x2
	.byte	0x2f
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ref"
	.byte	0x2
	.byte	0x30
	.long	0x3088
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fe4
	.uleb128 0x4
	.long	0x3088
	.string	"ref"
	.byte	0x1c
	.byte	0x2
	.byte	0x30
	.uleb128 0x6
	.string	"reg"
	.byte	0x2
	.byte	0x44
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x2
	.byte	0x45
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"loc"
	.byte	0x2
	.byte	0x46
	.long	0x15af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"chain"
	.byte	0x2
	.byte	0x47
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"type"
	.byte	0x2
	.byte	0x48
	.long	0x2f80
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"id"
	.byte	0x2
	.byte	0x49
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x2
	.byte	0x4a
	.long	0x308e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3017
	.uleb128 0x13
	.long	0x30cd
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0x2
	.byte	0x34
	.uleb128 0x14
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0x14
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x310d
	.string	"insn_info"
	.byte	0xc
	.byte	0x2
	.byte	0x50
	.uleb128 0x6
	.string	"defs"
	.byte	0x2
	.byte	0x51
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0x2
	.byte	0x52
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0x2
	.byte	0x55
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x11
	.long	0x316d
	.long	.LASF13
	.byte	0x14
	.byte	0x2
	.byte	0x5e
	.uleb128 0x6
	.string	"defs"
	.byte	0x2
	.byte	0x5f
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0x2
	.byte	0x60
	.long	0x3011
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"lifetime"
	.byte	0x2
	.byte	0x61
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_defs"
	.byte	0x2
	.byte	0x62
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"n_uses"
	.byte	0x2
	.byte	0x63
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.long	0x327e
	.long	.LASF14
	.byte	0x3c
	.byte	0x2
	.byte	0x69
	.uleb128 0x6
	.string	"rd_kill"
	.byte	0x2
	.byte	0x6b
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rd_gen"
	.byte	0x2
	.byte	0x6c
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"rd_in"
	.byte	0x2
	.byte	0x6d
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"rd_out"
	.byte	0x2
	.byte	0x6e
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ru_kill"
	.byte	0x2
	.byte	0x70
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"ru_gen"
	.byte	0x2
	.byte	0x71
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ru_in"
	.byte	0x2
	.byte	0x72
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"ru_out"
	.byte	0x2
	.byte	0x73
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"lr_def"
	.byte	0x2
	.byte	0x75
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"lr_use"
	.byte	0x2
	.byte	0x76
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"lr_in"
	.byte	0x2
	.byte	0x77
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"lr_out"
	.byte	0x2
	.byte	0x78
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"rd_valid"
	.byte	0x2
	.byte	0x79
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"ru_valid"
	.byte	0x2
	.byte	0x7a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"lr_valid"
	.byte	0x2
	.byte	0x7b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x34aa
	.string	"df"
	.byte	0x74
	.byte	0x2
	.byte	0x80
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x2
	.byte	0x81
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bbs"
	.byte	0x2
	.byte	0x82
	.long	0x34aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"defs"
	.byte	0x2
	.byte	0x83
	.long	0x34b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses"
	.byte	0x2
	.byte	0x84
	.long	0x34b0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x2
	.byte	0x85
	.long	0x34b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"regs"
	.byte	0x2
	.byte	0x86
	.long	0x34b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reg_size"
	.byte	0x2
	.byte	0x87
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x88
	.long	0x34bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"insn_size"
	.byte	0x2
	.byte	0x89
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"def_id"
	.byte	0x2
	.byte	0x8a
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"def_size"
	.byte	0x2
	.byte	0x8b
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"n_defs"
	.byte	0x2
	.byte	0x8c
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_id"
	.byte	0x2
	.byte	0x8d
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"use_size"
	.byte	0x2
	.byte	0x8e
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_uses"
	.byte	0x2
	.byte	0x8f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"n_bbs"
	.byte	0x2
	.byte	0x90
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"n_regs"
	.byte	0x2
	.byte	0x91
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"def_id_save"
	.byte	0x2
	.byte	0x92
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"use_id_save"
	.byte	0x2
	.byte	0x93
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"insns_modified"
	.byte	0x2
	.byte	0x94
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"bbs_modified"
	.byte	0x2
	.byte	0x95
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"all_blocks"
	.byte	0x2
	.byte	0x96
	.long	0x2b1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"dom"
	.byte	0x2
	.byte	0x99
	.long	0x34c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0x2
	.byte	0x9a
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"rc_order"
	.byte	0x2
	.byte	0x9b
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"rts_order"
	.byte	0x2
	.byte	0x9c
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"inverse_rc_map"
	.byte	0x2
	.byte	0x9d
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"inverse_dfs_map"
	.byte	0x2
	.byte	0x9e
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.string	"inverse_rts_map"
	.byte	0x2
	.byte	0x9f
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x316d
	.uleb128 0x3
	.byte	0x4
	.long	0x3088
	.uleb128 0x3
	.byte	0x4
	.long	0x310d
	.uleb128 0x3
	.byte	0x4
	.long	0x30cd
	.uleb128 0x3
	.byte	0x4
	.long	0x2b85
	.uleb128 0x22
	.long	0x34fa
	.string	"df_confluence_op"
	.byte	0x4
	.byte	0x2
	.value	0x13e
	.uleb128 0x14
	.string	"UNION"
	.sleb128 0
	.uleb128 0x14
	.string	"INTERSECTION"
	.sleb128 1
	.byte	0x0
	.uleb128 0x22
	.long	0x3525
	.string	"df_flow_dir"
	.byte	0x4
	.byte	0x2
	.value	0x144
	.uleb128 0x14
	.string	"FORWARD"
	.sleb128 0
	.uleb128 0x14
	.string	"BACKWARD"
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.string	"transfer_function_sbitmap"
	.byte	0x2
	.value	0x149
	.long	0x3547
	.uleb128 0x3
	.byte	0x4
	.long	0x354d
	.uleb128 0x21
	.long	0x3577
	.byte	0x1
	.uleb128 0x20
	.long	0x211
	.uleb128 0x20
	.long	0x725
	.uleb128 0x20
	.long	0x2b85
	.uleb128 0x20
	.long	0x2b85
	.uleb128 0x20
	.long	0x2b85
	.uleb128 0x20
	.long	0x2b85
	.uleb128 0x20
	.long	0x3ed
	.byte	0x0
	.uleb128 0xf
	.string	"transfer_function_bitmap"
	.byte	0x2
	.value	0x14b
	.long	0x3598
	.uleb128 0x3
	.byte	0x4
	.long	0x359e
	.uleb128 0x21
	.long	0x35c8
	.byte	0x1
	.uleb128 0x20
	.long	0x211
	.uleb128 0x20
	.long	0x725
	.uleb128 0x20
	.long	0x2b1d
	.uleb128 0x20
	.long	0x2b1d
	.uleb128 0x20
	.long	0x2b1d
	.uleb128 0x20
	.long	0x2b1d
	.uleb128 0x20
	.long	0x3ed
	.byte	0x0
	.uleb128 0x2
	.string	"fibheapkey_t"
	.byte	0xe
	.byte	0x31
	.long	0x3d0
	.uleb128 0x4
	.long	0x361a
	.string	"fibheap"
	.byte	0xc
	.byte	0xe
	.byte	0x34
	.uleb128 0x6
	.string	"nodes"
	.byte	0xe
	.byte	0x35
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min"
	.byte	0xe
	.byte	0x36
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"root"
	.byte	0xe
	.byte	0x37
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x36ad
	.string	"fibnode"
	.byte	0x1c
	.byte	0xe
	.byte	0x36
	.uleb128 0x6
	.string	"parent"
	.byte	0xe
	.byte	0x3c
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"child"
	.byte	0xe
	.byte	0x3d
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xe
	.byte	0x3e
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xe
	.byte	0x3f
	.long	0x36ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"key"
	.byte	0xe
	.byte	0x40
	.long	0x35c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF11
	.byte	0xe
	.byte	0x41
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"degree"
	.byte	0xe
	.byte	0x42
	.long	0x2ea
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"mark"
	.byte	0xe
	.byte	0x43
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x361a
	.uleb128 0x2
	.string	"fibheap_t"
	.byte	0xe
	.byte	0x38
	.long	0x36c4
	.uleb128 0x3
	.byte	0x4
	.long	0x35dc
	.uleb128 0x23
	.long	0x3714
	.string	"df_insn_table_realloc"
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x130
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"size"
	.byte	0x1
	.value	0x131
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x327e
	.uleb128 0x23
	.long	0x3763
	.string	"df_reg_table_realloc"
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x14e
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"size"
	.byte	0x1
	.value	0x14f
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x37e0
	.string	"df_bitmaps_alloc"
	.byte	0x1
	.value	0x189
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x187
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x188
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"dflags"
	.byte	0x1
	.value	0x18a
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x18b
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x19d
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x384a
	.string	"df_bitmaps_free"
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x1ca
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x1cb
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x1cd
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x1d1
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x38aa
	.string	"df_alloc"
	.byte	0x1
	.value	0x206
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x204
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"n_regs"
	.byte	0x1
	.value	0x205
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"n_insns"
	.byte	0x1
	.value	0x207
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x208
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x3900
	.string	"df_free"
	.byte	0x1
	.value	0x237
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x236
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x26
	.string	"__o"
	.byte	0x1
	.value	0x25f
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"__obj"
	.byte	0x1
	.value	0x25f
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3956
	.string	"df_reg_use_gen"
	.byte	0x1
	.value	0x267
	.byte	0x1
	.long	0x97
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0x266
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x268
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x269
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x39b0
	.string	"df_reg_clobber_gen"
	.byte	0x1
	.value	0x275
	.byte	0x1
	.long	0x97
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0x274
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x276
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x277
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x3a17
	.string	"df_ref_unlink"
	.byte	0x1
	.value	0x296
	.byte	0x1
	.long	0x3011
	.long	.LFB24
	.long	.LFE24
	.long	.LLST8
	.uleb128 0x24
	.string	"phead"
	.byte	0x1
	.value	0x294
	.long	0x3a17
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0x295
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x297
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF18
	.long	0x7758
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10711
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3011
	.uleb128 0x2b
	.long	0x3a63
	.byte	0x1
	.string	"df_ref_remove"
	.byte	0x1
	.value	0x2c2
	.byte	0x1
	.long	0x211
	.long	.LFB25
	.long	.LFE25
	.long	.LLST9
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x2c0
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0x2c1
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x3adb
	.string	"df_def_unlink"
	.byte	0x1
	.value	0x2d6
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST10
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x2d4
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"def"
	.byte	0x1
	.value	0x2d5
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0x2d7
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x2d8
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x2dd
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x3b53
	.string	"df_use_unlink"
	.byte	0x1
	.value	0x2f0
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST11
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x2ee
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"use"
	.byte	0x1
	.value	0x2ef
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF21
	.byte	0x1
	.value	0x2f1
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x2f2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x2f7
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3c69
	.string	"df_ref_create"
	.byte	0x1
	.value	0x311
	.byte	0x1
	.long	0x3088
	.long	.LFB28
	.long	.LFE28
	.long	.LLST12
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x30b
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0x30c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"loc"
	.byte	0x1
	.value	0x30d
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x30e
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF23
	.byte	0x1
	.value	0x30f
	.long	0x2f80
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF24
	.byte	0x1
	.value	0x310
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.string	"this_ref"
	.byte	0x1
	.value	0x312
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x313
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x26
	.string	"__h"
	.byte	0x1
	.value	0x315
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x3c3c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x26
	.string	"__o"
	.byte	0x1
	.value	0x315
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"__len"
	.byte	0x1
	.value	0x315
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x26
	.string	"__o1"
	.byte	0x1
	.value	0x315
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"value"
	.byte	0x1
	.value	0x315
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x3ce8
	.string	"df_ref_record_1"
	.byte	0x1
	.value	0x345
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST13
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x33f
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0x340
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"loc"
	.byte	0x1
	.value	0x341
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x342
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF23
	.byte	0x1
	.value	0x343
	.long	0x2f80
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF24
	.byte	0x1
	.value	0x344
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x23
	.long	0x3db3
	.string	"df_ref_record"
	.byte	0x1
	.value	0x354
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST14
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x34e
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0x34f
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"loc"
	.byte	0x1
	.value	0x350
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x351
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF23
	.byte	0x1
	.value	0x352
	.long	0x2f80
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF24
	.byte	0x1
	.value	0x353
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x355
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	0x3da2
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x36b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"endregno"
	.byte	0x1
	.value	0x36c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF18
	.long	0x7753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10936
	.byte	0x0
	.uleb128 0x23
	.long	0x3e55
	.string	"df_def_record_1"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST15
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x39e
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x39f
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x3a0
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x3a1
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"loc"
	.byte	0x1
	.value	0x3a3
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"dst"
	.byte	0x1
	.value	0x3a4
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF4
	.byte	0x1
	.value	0x3a5
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x3ab
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3eb3
	.string	"read_modify_subreg_p"
	.byte	0x1
	.value	0x38c
	.byte	0x1
	.long	0x3eb3
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x38b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"isize"
	.byte	0x1
	.value	0x38d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.string	"osize"
	.byte	0x1
	.value	0x38d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x23
	.long	0x3f40
	.string	"df_defs_record"
	.byte	0x1
	.value	0x3df
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST17
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x3db
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x3dc
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x3dd
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x3de
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"code"
	.byte	0x1
	.value	0x3e0
	.long	0x974
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x3e9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4090
	.string	"df_uses_record"
	.byte	0x1
	.value	0x3ff
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST18
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x3f9
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"loc"
	.byte	0x1
	.value	0x3fa
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF23
	.byte	0x1
	.value	0x3fb
	.long	0x2f80
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x3fc
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x3fd
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x3fe
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.string	"code"
	.byte	0x1
	.value	0x400
	.long	0x974
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x401
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"retry"
	.byte	0x1
	.value	0x4b6
	.long	.L233
	.uleb128 0x2c
	.long	0x4023
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x26
	.string	"dst"
	.byte	0x1
	.value	0x43c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x26
	.string	"use_flags"
	.byte	0x1
	.value	0x442
	.long	0x308e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x403e
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x490
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2c
	.long	0x407f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x26
	.string	"fmt"
	.byte	0x1
	.value	0x4ab
	.long	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x4ac
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0x4bc
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF18
	.long	0x773e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11150
	.byte	0x0
	.uleb128 0x23
	.long	0x416f
	.string	"df_insn_refs_record"
	.byte	0x1
	.value	0x4cc
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST19
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x4c9
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x4ca
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x4cb
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x4cd
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x26
	.string	"note"
	.byte	0x1
	.value	0x4d1
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x4135
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x26
	.string	"note"
	.byte	0x1
	.value	0x4e7
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x4e8
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x27
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x26
	.string	"note"
	.byte	0x1
	.value	0x50c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x26
	.string	"reg_clob"
	.byte	0x1
	.value	0x514
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x41c2
	.string	"df_bb_refs_record"
	.byte	0x1
	.value	0x529
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST20
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x527
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x528
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x52a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x42a3
	.string	"df_refs_record"
	.byte	0x1
	.value	0x53f
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST21
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x53d
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x53e
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x540
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x542
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x542
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x542
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x542
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x542
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x542
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x542
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x434f
	.string	"df_bb_reg_def_chain_create"
	.byte	0x1
	.value	0x551
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST22
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x54f
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x550
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x552
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x55c
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x55d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x564
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x565
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x4417
	.string	"df_link_create"
	.byte	0x1
	.value	0x286
	.byte	0x1
	.long	0x3011
	.long	.LFB23
	.long	.LFE23
	.long	.LLST23
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0x284
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x285
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x287
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x26
	.string	"__h"
	.byte	0x1
	.value	0x289
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	0x43ea
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x26
	.string	"__o"
	.byte	0x1
	.value	0x289
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"__len"
	.byte	0x1
	.value	0x289
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x26
	.string	"__o1"
	.byte	0x1
	.value	0x289
	.long	0x1796
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"value"
	.byte	0x1
	.value	0x289
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4501
	.string	"df_reg_def_chain_create"
	.byte	0x1
	.value	0x579
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x577
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x578
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x57a
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x57c
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x57c
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x57c
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x57c
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x57c
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x57c
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x57c
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x45ad
	.string	"df_bb_reg_use_chain_create"
	.byte	0x1
	.value	0x589
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x587
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x588
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x58a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x592
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x593
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x59a
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x59b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4697
	.string	"df_reg_use_chain_create"
	.byte	0x1
	.value	0x5af
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x5ad
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x5ae
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x5b0
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x5b2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x5b2
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x5b2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x5b2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x5b2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x5b2
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x5b2
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x47a0
	.string	"df_bb_du_chain_create"
	.byte	0x1
	.value	0x5bf
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x5bc
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x5bd
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"ru"
	.byte	0x1
	.value	0x5be
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x5c0
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x5c1
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x28
	.long	.LASF33
	.byte	0x1
	.value	0x5ca
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF34
	.byte	0x1
	.value	0x5cb
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x5cc
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x4785
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x5d4
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x5d5
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x5df
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x5ee
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4893
	.string	"df_du_chain_create"
	.byte	0x1
	.value	0x5fb
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x5f9
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x5fa
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"ru"
	.byte	0x1
	.value	0x5fc
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x5fd
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x601
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x601
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x601
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x601
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x601
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x601
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x601
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x49ac
	.string	"df_bb_ud_chain_create"
	.byte	0x1
	.value	0x60f
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x60d
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x60e
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x610
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF15
	.byte	0x1
	.value	0x611
	.long	0x34b0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x612
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x61b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF34
	.byte	0x1
	.value	0x61c
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF33
	.byte	0x1
	.value	0x61d
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	0x4982
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x625
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x626
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x63d
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x64c
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x64d
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4a91
	.string	"df_ud_chain_create"
	.byte	0x1
	.value	0x65b
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x659
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x65a
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x65c
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x65e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x65e
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x65e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x65e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x65e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x65e
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x65e
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4b26
	.string	"df_rd_transfer_function"
	.byte	0x1
	.value	0x66c
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x668
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF35
	.byte	0x1
	.value	0x669
	.long	0x725
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x66a
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0x66a
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0x66a
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0x66a
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x66b
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x23
	.long	0x4bbb
	.string	"df_ru_transfer_function"
	.byte	0x1
	.value	0x675
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x671
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF35
	.byte	0x1
	.value	0x672
	.long	0x725
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x673
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0x673
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0x673
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0x673
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x674
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x23
	.long	0x4c50
	.string	"df_lr_transfer_function"
	.byte	0x1
	.value	0x67f
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x67b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF35
	.byte	0x1
	.value	0x67c
	.long	0x725
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0x67d
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0x67d
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"use"
	.byte	0x1
	.value	0x67d
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"def"
	.byte	0x1
	.value	0x67d
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x67e
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x23
	.long	0x4d36
	.string	"df_bb_rd_local_compute"
	.byte	0x1
	.value	0x689
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x687
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x688
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x68a
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x68b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x690
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF33
	.byte	0x1
	.value	0x691
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x698
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x699
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"def2_link"
	.byte	0x1
	.value	0x69a
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x26
	.string	"def2"
	.byte	0x1
	.value	0x69f
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4e1c
	.string	"df_rd_local_compute"
	.byte	0x1
	.value	0x6b8
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x6b6
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x6b7
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x6b9
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x6bb
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x6bb
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x6bb
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x6bb
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x6bb
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x6bb
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x6bb
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4f18
	.string	"df_bb_ru_local_compute"
	.byte	0x1
	.value	0x6c8
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x6c6
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x6c7
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x6cd
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x6ce
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x6d4
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF33
	.byte	0x1
	.value	0x6d5
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF34
	.byte	0x1
	.value	0x6d6
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x4efd
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x6dd
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x6de
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x6e3
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x6f2
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x4ffe
	.string	"df_ru_local_compute"
	.byte	0x1
	.value	0x701
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x6ff
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x700
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x702
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x704
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x704
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x704
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x704
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x704
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x704
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x704
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x50d2
	.string	"df_bb_lr_local_compute"
	.byte	0x1
	.value	0x710
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x70e
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x70f
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x711
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x712
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x717
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x718
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	0x50b7
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x71f
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x720
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x72a
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x51b8
	.string	"df_lr_local_compute"
	.byte	0x1
	.value	0x738
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x736
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x737
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x739
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x73b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x73b
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x73b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x73b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x73b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x73b
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x73b
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x5348
	.string	"df_bb_reg_info_compute"
	.byte	0x1
	.value	0x749
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x746
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x747
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"live"
	.byte	0x1
	.value	0x748
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF13
	.byte	0x1
	.value	0x74a
	.long	0x34b6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0x74b
	.long	0x34aa
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x74c
	.long	0x97
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x753
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x754
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x755
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	0x52a2
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x75c
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF20
	.byte	0x1
	.value	0x75d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2c
	.long	0x52ce
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x766
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x767
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x27
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x76f
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x76f
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x76f
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x76f
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x76f
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x76f
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x543e
	.string	"df_reg_info_compute"
	.byte	0x1
	.value	0x77c
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x77a
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x77b
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x77d
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"live"
	.byte	0x1
	.value	0x77e
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x782
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x782
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x782
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x782
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x782
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x782
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x782
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x54a3
	.string	"df_bb_luids_set"
	.byte	0x1
	.value	0x790
	.byte	0x1
	.long	0x211
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x78e
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x78f
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x791
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"luid"
	.byte	0x1
	.value	0x792
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x5597
	.string	"df_luids_set"
	.byte	0x1
	.value	0x7a8
	.byte	0x1
	.long	0x211
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x7a6
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x7a7
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x7a9
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"total"
	.byte	0x1
	.value	0x7aa
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x7ac
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x7ac
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x7ac
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x7ac
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x7ac
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x7ac
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x7ac
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x570f
	.string	"df_analyse_1"
	.byte	0x1
	.value	0x7bb
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x7b7
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x7b8
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x7b9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF37
	.byte	0x1
	.value	0x7ba
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"aflags"
	.byte	0x1
	.value	0x7bc
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"dflags"
	.byte	0x1
	.value	0x7bd
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x7be
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x7bf
	.long	0x2ee7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	0x5680
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x814
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.value	0x815
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.string	"gen"
	.byte	0x1
	.value	0x816
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF36
	.byte	0x1
	.value	0x817
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2c
	.long	0x56c9
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x838
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.value	0x839
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"gen"
	.byte	0x1
	.value	0x83a
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF36
	.byte	0x1
	.value	0x83b
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x27
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x85f
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.value	0x860
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x861
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x862
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2b1d
	.uleb128 0x2b
	.long	0x5746
	.byte	0x1
	.string	"df_init"
	.byte	0x1
	.value	0x884
	.byte	0x1
	.long	0x3714
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x26
	.string	"df"
	.byte	0x1
	.value	0x885
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x577c
	.string	"df_refs_queue"
	.byte	0x1
	.value	0x894
	.byte	0x1
	.long	0x211
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x893
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x29
	.long	0x5815
	.string	"df_refs_process"
	.byte	0x1
	.value	0x8a1
	.byte	0x1
	.long	0x211
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x8a0
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x8a2
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	0x57ec
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0x8a7
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x8a8
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x27
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0x8b2
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x8b3
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x5894
	.string	"df_bb_refs_update"
	.byte	0x1
	.value	0x8c2
	.byte	0x1
	.long	0x211
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x8c0
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x8c1
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x8c3
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x8c4
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x8cd
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x5979
	.string	"df_refs_update"
	.byte	0x1
	.value	0x8e6
	.byte	0x1
	.long	0x211
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x8e5
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x8e7
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x8e8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x8ef
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x8ef
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x8ef
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0x8ef
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0x8ef
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0x8ef
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0x8ef
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x59db
	.string	"df_modified_p"
	.byte	0x1
	.value	0x8ff
	.byte	0x1
	.long	0x211
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x8fd
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x8fe
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF37
	.byte	0x1
	.value	0x900
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x901
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x5a4c
	.byte	0x1
	.string	"df_analyse"
	.byte	0x1
	.value	0x91a
	.byte	0x1
	.long	0x211
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x917
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0x918
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x919
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF37
	.byte	0x1
	.value	0x91b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF18
	.long	0x7739
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13010
	.byte	0x0
	.uleb128 0x2e
	.long	0x5a7b
	.byte	0x1
	.string	"df_finish"
	.byte	0x1
	.value	0x946
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x945
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x5aee
	.string	"df_insn_refs_unlink"
	.byte	0x1
	.value	0x952
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x94f
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x950
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x951
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0x953
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x954
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x5b53
	.byte	0x1
	.string	"df_insn_delete"
	.byte	0x1
	.value	0x99d
	.byte	0x1
	.long	0x97
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x99a
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x99b
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x99c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF18
	.long	0x7724
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13080
	.byte	0x0
	.uleb128 0x2e
	.long	0x5bb3
	.byte	0x1
	.string	"df_insn_modify"
	.byte	0x1
	.value	0x9b7
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x9b4
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x9b5
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x9b6
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0x9b8
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x5c07
	.long	.LASF38
	.byte	0x10
	.byte	0x1
	.value	0x9c9
	.uleb128 0xb
	.string	"match"
	.byte	0x1
	.value	0x9ca
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"replacement"
	.byte	0x1
	.value	0x9cb
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x9cc
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x9cd
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x30
	.long	.LASF38
	.byte	0x1
	.value	0x9ce
	.long	0x5bb3
	.uleb128 0x29
	.long	0x5c7c
	.string	"df_rtx_mem_replace"
	.byte	0x1
	.value	0x9d9
	.byte	0x1
	.long	0x211
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x24
	.string	"px"
	.byte	0x1
	.value	0x9d7
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x9d8
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"args"
	.byte	0x1
	.value	0x9da
	.long	0x5c7c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"mem"
	.byte	0x1
	.value	0x9db
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c07
	.uleb128 0x2b
	.long	0x5d0a
	.byte	0x1
	.string	"df_insn_mem_replace"
	.byte	0x1
	.value	0xa02
	.byte	0x1
	.long	0x211
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0x9fd
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x9fe
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x9ff
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"mem"
	.byte	0x1
	.value	0xa00
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xa01
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.string	"args"
	.byte	0x1
	.value	0xa03
	.long	0x5c07
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	0x5d71
	.string	"df_rtx_reg_replace"
	.byte	0x1
	.value	0xa20
	.byte	0x1
	.long	0x211
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x24
	.string	"px"
	.byte	0x1
	.value	0xa1e
	.long	0x15af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0xa1f
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0xa21
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"args"
	.byte	0x1
	.value	0xa22
	.long	0x5c7c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x5e43
	.byte	0x1
	.string	"df_refs_reg_replace"
	.byte	0x1
	.value	0xa3b
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xa36
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xa37
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"chain"
	.byte	0x1
	.value	0xa38
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF39
	.byte	0x1
	.value	0xa39
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF40
	.byte	0x1
	.value	0xa3a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xa3c
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"args"
	.byte	0x1
	.value	0xa3d
	.long	0x5c07
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	0x5e32
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x26
	.string	"ref"
	.byte	0x1
	.value	0xa48
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0xa49
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF18
	.long	0x770f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13174
	.byte	0x0
	.uleb128 0x2b
	.long	0x5ebc
	.byte	0x1
	.string	"df_reg_replace"
	.byte	0x1
	.value	0xa6f
	.byte	0x1
	.long	0x211
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xa6b
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xa6c
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF39
	.byte	0x1
	.value	0xa6d
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF40
	.byte	0x1
	.value	0xa6e
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"oldregno"
	.byte	0x1
	.value	0xa70
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x5f35
	.byte	0x1
	.string	"df_ref_reg_replace"
	.byte	0x1
	.value	0xa80
	.byte	0x1
	.long	0x211
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xa7c
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0xa7d
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF39
	.byte	0x1
	.value	0xa7e
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF40
	.byte	0x1
	.value	0xa7f
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF18
	.long	0x770a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13228
	.byte	0x0
	.uleb128 0x2b
	.long	0x6009
	.byte	0x1
	.string	"df_bb_def_use_swap"
	.byte	0x1
	.value	0xa98
	.byte	0x1
	.long	0x3088
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xa93
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xa94
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"def_insn"
	.byte	0x1
	.value	0xa95
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"use_insn"
	.byte	0x1
	.value	0xa96
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xa97
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xa99
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xa9a
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"def_uid"
	.byte	0x1
	.value	0xa9b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"use_uid"
	.byte	0x1
	.value	0xa9c
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xa9d
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x23
	.long	0x60b2
	.string	"df_insns_modify"
	.byte	0x1
	.value	0xac8
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xac4
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xac5
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"first_insn"
	.byte	0x1
	.value	0xac6
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"last_insn"
	.byte	0x1
	.value	0xac7
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0xac9
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	0x60a1
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xacd
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF18
	.long	0x76f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13302
	.byte	0x0
	.uleb128 0x2b
	.long	0x6152
	.byte	0x1
	.string	"df_pattern_emit_before"
	.byte	0x1
	.value	0xaeb
	.byte	0x1
	.long	0x97
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xae7
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF41
	.byte	0x1
	.value	0xae8
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xae9
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xaea
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0xaec
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"prev_insn"
	.byte	0x1
	.value	0xaed
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF18
	.long	0x76e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13326
	.byte	0x0
	.uleb128 0x2b
	.long	0x61cc
	.byte	0x1
	.string	"df_pattern_emit_after"
	.byte	0x1
	.value	0xb02
	.byte	0x1
	.long	0x97
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xafe
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF41
	.byte	0x1
	.value	0xaff
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb00
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xb01
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0xb03
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x624b
	.byte	0x1
	.string	"df_jump_pattern_emit_after"
	.byte	0x1
	.value	0xb15
	.byte	0x1
	.long	0x97
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb11
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF41
	.byte	0x1
	.value	0xb12
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb13
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xb14
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF42
	.byte	0x1
	.value	0xb16
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x62ef
	.byte	0x1
	.string	"df_insn_move_before"
	.byte	0x1
	.value	0xb2d
	.byte	0x1
	.long	0x97
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb28
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb29
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xb2a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"before_bb"
	.byte	0x1
	.value	0xb2b
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"before_insn"
	.byte	0x1
	.value	0xb2c
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xb2e
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xb2f
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x638f
	.byte	0x1
	.string	"df_insn_regno_def_p"
	.byte	0x1
	.value	0xb4f
	.byte	0x1
	.long	0x211
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb4b
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb4c
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xb4d
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xb4e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xb50
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xb51
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xb57
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6419
	.string	"df_def_dominates_all_uses_p"
	.byte	0x1
	.value	0xb65
	.byte	0x1
	.long	0x211
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb63
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"def"
	.byte	0x1
	.value	0xb64
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0xb66
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xb6b
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.long	.LASF21
	.byte	0x1
	.value	0xb6c
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x64b3
	.byte	0x1
	.string	"df_insn_dominates_all_uses_p"
	.byte	0x1
	.value	0xb7c
	.byte	0x1
	.long	0x211
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb79
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xb7a
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xb7b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xb7d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xb7e
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xb84
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6548
	.string	"df_def_dominates_uses_p"
	.byte	0x1
	.value	0xb95
	.byte	0x1
	.long	0x211
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xb92
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"def"
	.byte	0x1
	.value	0xb93
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xb94
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0xb96
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xb9b
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF21
	.byte	0x1
	.value	0xb9c
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x65ed
	.byte	0x1
	.string	"df_insn_dominates_uses_p"
	.byte	0x1
	.value	0xbb5
	.byte	0x1
	.long	0x211
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xbb1
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xbb2
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xbb3
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xbb4
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xbb6
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xbb7
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xbbd
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x6693
	.byte	0x1
	.string	"df_regno_bb"
	.byte	0x1
	.value	0xbce
	.byte	0x1
	.long	0x2ee7
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xbcc
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xbcd
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"defs"
	.byte	0x1
	.value	0xbcf
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"uses"
	.byte	0x1
	.value	0xbd0
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xbd1
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xbd2
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bb_def"
	.byte	0x1
	.value	0xbd3
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.string	"bb_use"
	.byte	0x1
	.value	0xbd4
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2b
	.long	0x66db
	.byte	0x1
	.string	"df_reg_global_p"
	.byte	0x1
	.value	0xbe1
	.byte	0x1
	.long	0x211
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xbdf
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xbe0
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x6723
	.byte	0x1
	.string	"df_reg_lifetime"
	.byte	0x1
	.value	0xbeb
	.byte	0x1
	.long	0x211
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xbe9
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xbea
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x678f
	.byte	0x1
	.string	"df_bb_reg_live_start_p"
	.byte	0x1
	.value	0xbf6
	.byte	0x1
	.long	0x211
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xbf3
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xbf4
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xbf5
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0xbf7
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x67f9
	.byte	0x1
	.string	"df_bb_reg_live_end_p"
	.byte	0x1
	.value	0xc08
	.byte	0x1
	.long	0x211
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc05
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc06
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xc07
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0xc09
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x68dd
	.byte	0x1
	.string	"df_bb_regs_lives_compare"
	.byte	0x1
	.value	0xc1c
	.byte	0x1
	.long	0x211
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc18
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc19
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"reg1"
	.byte	0x1
	.value	0xc1a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"reg2"
	.byte	0x1
	.value	0xc1b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"regno1"
	.byte	0x1
	.value	0xc1d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"regno2"
	.byte	0x1
	.value	0xc1e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"def1"
	.byte	0x1
	.value	0xc1f
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"use1"
	.byte	0x1
	.value	0xc20
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"def2"
	.byte	0x1
	.value	0xc21
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"use2"
	.byte	0x1
	.value	0xc22
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF18
	.long	0x76cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13624
	.byte	0x0
	.uleb128 0x29
	.long	0x6964
	.string	"df_bb_regno_last_use_find"
	.byte	0x1
	.value	0xc42
	.byte	0x1
	.long	0x3088
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc3f
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc40
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xc41
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xc43
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xc4b
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x69ec
	.string	"df_bb_regno_first_def_find"
	.byte	0x1
	.value	0xc5a
	.byte	0x1
	.long	0x3088
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc57
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc58
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xc59
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xc5b
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xc63
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6a96
	.string	"df_bb_insn_regno_last_use_find"
	.byte	0x1
	.value	0xc73
	.byte	0x1
	.long	0x3088
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc6f
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc70
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xc71
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xc72
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xc74
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xc75
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xc7b
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6b41
	.string	"df_bb_insn_regno_first_def_find"
	.byte	0x1
	.value	0xc8c
	.byte	0x1
	.long	0x3088
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xc88
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xc89
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xc8a
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xc8b
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xc8d
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.value	0xc8e
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xc94
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x6bf2
	.byte	0x1
	.string	"df_bb_single_def_use_insn_find"
	.byte	0x1
	.value	0xca6
	.byte	0x1
	.long	0x97
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xca2
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0xca3
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xca4
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xca5
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"def"
	.byte	0x1
	.value	0xca7
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"use"
	.byte	0x1
	.value	0xca8
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF19
	.byte	0x1
	.value	0xca9
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF18
	.long	0x76b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13779
	.byte	0x0
	.uleb128 0x23
	.long	0x6c34
	.string	"df_chain_dump"
	.byte	0x1
	.value	0xcca
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.value	0xcc8
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xcc9
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f5
	.uleb128 0x23
	.long	0x6c82
	.string	"df_chain_dump_regno"
	.byte	0x1
	.value	0xcd9
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.value	0xcd7
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xcd8
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2e
	.long	0x6d88
	.byte	0x1
	.string	"df_dump"
	.byte	0x1
	.value	0xceb
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xce8
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0xce9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xcea
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.value	0xcec
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xced
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	0x6d1c
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xcf8
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0xcfd
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6d39
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0xd26
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2c
	.long	0x6d56
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x28
	.long	.LASF14
	.byte	0x1
	.value	0xd4f
	.long	0x34aa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x27
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x28
	.long	.LASF13
	.byte	0x1
	.value	0xd61
	.long	0x34b6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xd6e
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6df7
	.byte	0x1
	.string	"df_insn_debug"
	.byte	0x1
	.value	0xd99
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xd96
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xd97
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xd98
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xd9a
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bbi"
	.byte	0x1
	.value	0xd9b
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x6e6c
	.byte	0x1
	.string	"df_insn_debug_regno"
	.byte	0x1
	.value	0xdb5
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xdb2
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xdb3
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xdb4
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"uid"
	.byte	0x1
	.value	0xdb6
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bbi"
	.byte	0x1
	.value	0xdb7
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x6ebd
	.string	"df_regno_debug"
	.byte	0x1
	.value	0xdd1
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xdce
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xdcf
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xdd0
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x23
	.long	0x6f0c
	.string	"df_ref_debug"
	.byte	0x1
	.value	0xde3
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x24
	.string	"df"
	.byte	0x1
	.value	0xde0
	.long	0x3714
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0xde1
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.value	0xde2
	.long	0x6c34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x6f40
	.byte	0x1
	.string	"debug_df_insn"
	.byte	0x1
	.value	0xdf4
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0xdf3
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6f73
	.byte	0x1
	.string	"debug_df_reg"
	.byte	0x1
	.value	0xdfd
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.value	0xdfc
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6fa8
	.byte	0x1
	.string	"debug_df_regno"
	.byte	0x1
	.value	0xe05
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.value	0xe04
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x6fdb
	.byte	0x1
	.string	"debug_df_ref"
	.byte	0x1
	.value	0xe0d
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x24
	.string	"ref"
	.byte	0x1
	.value	0xe0c
	.long	0x3088
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7012
	.byte	0x1
	.string	"debug_df_defno"
	.byte	0x1
	.value	0xe15
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x24
	.string	"defno"
	.byte	0x1
	.value	0xe14
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7049
	.byte	0x1
	.string	"debug_df_useno"
	.byte	0x1
	.value	0xe1d
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x24
	.string	"defno"
	.byte	0x1
	.value	0xe1c
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x707e
	.byte	0x1
	.string	"debug_df_chain"
	.byte	0x1
	.value	0xe25
	.byte	0x1
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.value	0xe24
	.long	0x3011
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x7186
	.string	"hybrid_search_bitmap"
	.byte	0x1
	.value	0xe38
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x24
	.string	"block"
	.byte	0x1
	.value	0xe30
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0xe31
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0xe31
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0xe31
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0xe31
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"dir"
	.byte	0x1
	.value	0xe32
	.long	0x34fa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF44
	.byte	0x1
	.value	0xe33
	.long	0x34c8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.value	0xe34
	.long	0x3577
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xe35
	.long	0x2b85
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF47
	.byte	0x1
	.value	0xe36
	.long	0x2b85
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0xe37
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x28
	.long	.LASF35
	.byte	0x1
	.value	0xe39
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0xe3a
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0xe3b
	.long	0x2c66
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xe3c
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	0x728f
	.string	"hybrid_search_sbitmap"
	.byte	0x1
	.value	0xea7
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x24
	.string	"block"
	.byte	0x1
	.value	0xe9f
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0xea0
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0xea0
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0xea0
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0xea0
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"dir"
	.byte	0x1
	.value	0xea1
	.long	0x34fa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF44
	.byte	0x1
	.value	0xea2
	.long	0x34c8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.value	0xea3
	.long	0x3525
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.value	0xea4
	.long	0x2b85
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF47
	.byte	0x1
	.value	0xea5
	.long	0x2b85
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0xea6
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x28
	.long	.LASF35
	.byte	0x1
	.value	0xea8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0xea9
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0xeaa
	.long	0x2c66
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xeab
	.long	0x2ee7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x749b
	.byte	0x1
	.string	"iterative_dataflow_sbitmap"
	.byte	0x1
	.value	0xf29
	.byte	0x1
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0xf22
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0xf22
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0xf22
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0xf22
	.long	0x34c2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xf23
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"dir"
	.byte	0x1
	.value	0xf24
	.long	0x34fa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF44
	.byte	0x1
	.value	0xf25
	.long	0x34c8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.value	0xf26
	.long	0x3525
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.string	"order"
	.byte	0x1
	.value	0xf27
	.long	0x725
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0xf28
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0xf2a
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.value	0xf2b
	.long	0x36b3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xf2c
	.long	0x2ee7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0xf2d
	.long	0x2b85
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0xf2d
	.long	0x2b85
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	0x7422
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xf33
	.long	0x2b17
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xf33
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0xf33
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0xf33
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0xf33
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0xf33
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xf48
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xf48
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0xf48
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0xf48
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0xf48
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0xf48
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x76a6
	.byte	0x1
	.string	"iterative_dataflow_bitmap"
	.byte	0x1
	.value	0xf64
	.byte	0x1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x24
	.string	"in"
	.byte	0x1
	.value	0xf5d
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.value	0xf5d
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"gen"
	.byte	0x1
	.value	0xf5d
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF36
	.byte	0x1
	.value	0xf5d
	.long	0x570f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF25
	.byte	0x1
	.value	0xf5e
	.long	0x2b1d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"dir"
	.byte	0x1
	.value	0xf5f
	.long	0x34fa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.long	.LASF44
	.byte	0x1
	.value	0xf60
	.long	0x34c8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.value	0xf61
	.long	0x3577
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x24
	.string	"order"
	.byte	0x1
	.value	0xf62
	.long	0x725
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0xf63
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0xf65
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.value	0xf66
	.long	0x36b3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0xf67
	.long	0x2ee7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0xf68
	.long	0x2b85
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF47
	.byte	0x1
	.value	0xf68
	.long	0x2b85
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	0x762d
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xf6e
	.long	0x2b17
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xf6e
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0xf6e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0xf6e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0xf6e
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0xf6e
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xf83
	.long	0x2b17
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xf83
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF29
	.byte	0x1
	.value	0xf83
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.value	0xf83
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x28
	.long	.LASF31
	.byte	0x1
	.value	0xf83
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0xf83
	.long	0x2a81
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x76b6
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x1e
	.byte	0x0
	.uleb128 0x8
	.long	0x76a6
	.uleb128 0xd
	.long	0x76cb
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x18
	.byte	0x0
	.uleb128 0x8
	.long	0x76bb
	.uleb128 0xd
	.long	0x76e0
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x16
	.byte	0x0
	.uleb128 0x8
	.long	0x76d0
	.uleb128 0xd
	.long	0x76f5
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x76e5
	.uleb128 0xd
	.long	0x770a
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x76fa
	.uleb128 0x8
	.long	0x715
	.uleb128 0xd
	.long	0x7724
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x7714
	.uleb128 0xd
	.long	0x7739
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xa
	.byte	0x0
	.uleb128 0x8
	.long	0x7729
	.uleb128 0x8
	.long	0x7714
	.uleb128 0xd
	.long	0x7753
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x7743
	.uleb128 0x8
	.long	0x7743
	.uleb128 0x31
	.string	"df_ref_obstack"
	.byte	0x1
	.byte	0xb5
	.long	0x1669
	.byte	0x5
	.byte	0x3
	.long	df_ref_obstack
	.uleb128 0x31
	.string	"ddf"
	.byte	0x1
	.byte	0xb6
	.long	0x3714
	.byte	0x5
	.byte	0x3
	.long	ddf
	.uleb128 0x32
	.string	"target_flags"
	.byte	0xf
	.byte	0x21
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"stderr"
	.byte	0x9
	.byte	0x90
	.long	0x6e9
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x77c0
	.long	0x32e
	.uleb128 0xe
	.long	0x301
	.byte	0x35
	.byte	0x0
	.uleb128 0x32
	.string	"mode_size"
	.byte	0x6
	.byte	0x59
	.long	0x77d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x77b0
	.uleb128 0x32
	.string	"word_mode"
	.byte	0x6
	.byte	0xad
	.long	0x72b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x77fb
	.long	0x32e
	.uleb128 0xe
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x32
	.string	"rtx_length"
	.byte	0x4
	.byte	0x36
	.long	0x780f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x77eb
	.uleb128 0xd
	.long	0x7824
	.long	0x1fe
	.uleb128 0xe
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x32
	.string	"rtx_format"
	.byte	0x4
	.byte	0x3c
	.long	0x7838
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x7814
	.uleb128 0xd
	.long	0x784d
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x32
	.string	"rtx_class"
	.byte	0x4
	.byte	0x3f
	.long	0x7860
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x783d
	.uleb128 0x33
	.string	"cfun"
	.byte	0x10
	.value	0x202
	.long	0x2442
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7884
	.long	0x209
	.uleb128 0xe
	.long	0x301
	.byte	0xaf
	.byte	0x0
	.uleb128 0x33
	.string	"global_regs"
	.byte	0x11
	.value	0x1b4
	.long	0x7874
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"regs_invalidated_by_call"
	.byte	0x11
	.value	0x1bd
	.long	0x2a5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"n_basic_blocks"
	.byte	0x7
	.byte	0xf2
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"last_basic_block"
	.byte	0x7
	.byte	0xf6
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"basic_block_info"
	.byte	0x7
	.byte	0xfe
	.long	0x2a2b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7919
	.long	0x13f3
	.uleb128 0xe
	.long	0x301
	.byte	0x1
	.byte	0x0
	.uleb128 0x33
	.string	"entry_exit_blocks"
	.byte	0x7
	.value	0x139
	.long	0x7909
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.long	0x341
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7936
	.long	0x3a1d
	.string	"df_ref_remove"
	.long	0x5715
	.string	"df_init"
	.long	0x59db
	.string	"df_analyse"
	.long	0x5a4c
	.string	"df_finish"
	.long	0x5aee
	.string	"df_insn_delete"
	.long	0x5b53
	.string	"df_insn_modify"
	.long	0x5c82
	.string	"df_insn_mem_replace"
	.long	0x5d71
	.string	"df_refs_reg_replace"
	.long	0x5e43
	.string	"df_reg_replace"
	.long	0x5ebc
	.string	"df_ref_reg_replace"
	.long	0x5f35
	.string	"df_bb_def_use_swap"
	.long	0x60b2
	.string	"df_pattern_emit_before"
	.long	0x6152
	.string	"df_pattern_emit_after"
	.long	0x61cc
	.string	"df_jump_pattern_emit_after"
	.long	0x624b
	.string	"df_insn_move_before"
	.long	0x62ef
	.string	"df_insn_regno_def_p"
	.long	0x6419
	.string	"df_insn_dominates_all_uses_p"
	.long	0x6548
	.string	"df_insn_dominates_uses_p"
	.long	0x65ed
	.string	"df_regno_bb"
	.long	0x6693
	.string	"df_reg_global_p"
	.long	0x66db
	.string	"df_reg_lifetime"
	.long	0x6723
	.string	"df_bb_reg_live_start_p"
	.long	0x678f
	.string	"df_bb_reg_live_end_p"
	.long	0x67f9
	.string	"df_bb_regs_lives_compare"
	.long	0x6b41
	.string	"df_bb_single_def_use_insn_find"
	.long	0x6c82
	.string	"df_dump"
	.long	0x6d88
	.string	"df_insn_debug"
	.long	0x6df7
	.string	"df_insn_debug_regno"
	.long	0x6f0c
	.string	"debug_df_insn"
	.long	0x6f40
	.string	"debug_df_reg"
	.long	0x6f73
	.string	"debug_df_regno"
	.long	0x6fa8
	.string	"debug_df_ref"
	.long	0x6fdb
	.string	"debug_df_defno"
	.long	0x7012
	.string	"debug_df_useno"
	.long	0x7049
	.string	"debug_df_chain"
	.long	0x728f
	.string	"iterative_dataflow_sbitmap"
	.long	0x749b
	.string	"iterative_dataflow_bitmap"
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
.LASF23:
	.string	"ref_type"
.LASF44:
	.string	"conf_op"
.LASF48:
	.string	"worklist"
.LASF25:
	.string	"blocks"
.LASF6:
	.string	"next"
.LASF21:
	.string	"ud_link"
.LASF19:
	.string	"du_link"
.LASF10:
	.string	"basic_block"
.LASF35:
	.string	"changed"
.LASF42:
	.string	"ret_insn"
.LASF39:
	.string	"oldreg"
.LASF13:
	.string	"reg_info"
.LASF17:
	.string	"link"
.LASF30:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF27:
	.string	"ptr_"
.LASF43:
	.string	"file"
.LASF36:
	.string	"kill"
.LASF22:
	.string	"uregno"
.LASF15:
	.string	"reg_def_last"
.LASF12:
	.string	"insn"
.LASF28:
	.string	"indx_"
.LASF34:
	.string	"use_link"
.LASF20:
	.string	"dregno"
.LASF47:
	.string	"pending"
.LASF24:
	.string	"ref_flags"
.LASF7:
	.string	"sequence_stack"
.LASF41:
	.string	"pattern"
.LASF40:
	.string	"newreg"
.LASF18:
	.string	"__FUNCTION__"
.LASF32:
	.string	"mask_"
.LASF3:
	.string	"count"
.LASF5:
	.string	"modified"
.LASF1:
	.string	"_IO_FILE"
.LASF26:
	.string	"node_"
.LASF46:
	.string	"visited"
.LASF37:
	.string	"update"
.LASF11:
	.string	"data"
.LASF31:
	.string	"word_"
.LASF38:
	.string	"replace_args"
.LASF33:
	.string	"def_link"
.LASF8:
	.string	"sequence_rtl_expr"
.LASF45:
	.string	"transfun"
.LASF29:
	.string	"bit_num_"
.LASF9:
	.string	"function_frequency"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"bb_info"
.LASF16:
	.string	"regno"
.LASF4:
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
