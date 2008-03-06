	.file	"dwarf_alloc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 32
	.type	index_into_allocated, @object
	.size	index_into_allocated, 504
index_into_allocated:
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	28
	.long	64
	.long	2
	.long	36
	.long	64
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	3
	.long	24
	.long	64
	.long	0
	.long	1
	.long	1
	.long	4
	.long	12
	.long	128
	.long	5
	.long	28
	.long	128
	.long	6
	.long	20
	.long	256
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	7
	.long	16
	.long	128
	.long	8
	.long	4
	.long	64
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	9
	.long	28
	.long	64
	.long	10
	.long	16
	.long	128
	.long	11
	.long	20
	.long	128
	.long	12
	.long	36
	.long	64
	.long	13
	.long	88
	.long	64
	.long	0
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.long	14
	.long	16
	.long	128
	.long	15
	.long	16
	.long	128
	.long	16
	.long	16
	.long	128
	.long	17
	.long	16
	.long	64
	.long	0
	.long	1
	.long	1
	.long	18
	.long	16
	.long	128
	.long	19
	.long	8
	.long	128
	.long	20
	.long	40
	.long	64
	.long	21
	.long	804
	.long	64
	.long	22
	.long	24
	.long	64
	.long	23
	.long	28
	.long	64
	.long	24
	.long	32
	.long	64
	.long	25
	.long	32
	.long	64
	.long	26
	.long	80
	.long	64
	.long	27
	.long	24
	.long	64
	.long	28
	.long	24
	.long	64
	.long	29
	.long	24
	.long	64
	.long	30
	.long	24
	.long	64
	.text
	.type	_dwarf_find_memory, @function
_dwarf_find_memory:
.LFB5:
	.file 1 "../../libdwarf/libdwarf/dwarf_alloc.c"
	.loc 1 277 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$48, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 279 0
	movl	$0, -28(%ebp)
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 295 0
	cmpl	$0, -24(%ebp)
	je	.L2
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L4
.L2:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 297 0
	jmp	.L5
.L6:
	.loc 1 299 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jg	.L4
	.loc 1 297 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L5:
	cmpl	$0, -24(%ebp)
	jne	.L6
.L4:
	.loc 1 305 0
	cmpl	$0, -24(%ebp)
	je	.L8
	.loc 1 306 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 308 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 309 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 316 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L8
.L10:
	.loc 1 318 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jae	.L8
	.loc 1 319 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 325 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 326 0
	addl	$8, -28(%ebp)
	.loc 1 328 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
.L8:
	.loc 1 342 0
	cmpl	$0, -28(%ebp)
	jne	.L13
.LBB2:
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.LBB3:
	.loc 1 349 0
	movl	$28, -12(%ebp)
	.loc 1 351 0
	movl	-12(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L15
	movl	-12(%ebp), %eax
	andl	$-8, %eax
	addl	$8, %eax
	movl	%eax, -48(%ebp)
	jmp	.L17
.L15:
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L17:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBE3:
	.loc 1 357 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	-16(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 360 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 361 0
	cmpl	$0, -20(%ebp)
	jne	.L18
	.loc 1 362 0
	movl	$0, -44(%ebp)
	jmp	.L20
.L18:
	.loc 1 370 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 371 0
	movl	-24(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L21
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
.L21:
	.loc 1 375 0
	movl	-24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 376 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 377 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 379 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 382 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jg	.L23
	.loc 1 390 0
	movl	$0, -44(%ebp)
	jmp	.L20
.L23:
	.loc 1 396 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 397 0
	movl	8(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 399 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 405 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 406 0
	addl	$8, -28(%ebp)
.L13:
.LBE2:
	.loc 1 409 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 410 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 411 0
	movl	8(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	leal	-8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 412 0
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
.L20:
	movl	-44(%ebp), %eax
	.loc 1 413 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	_dwarf_find_memory, .-_dwarf_find_memory
.globl _dwarf_get_alloc
	.type	_dwarf_get_alloc, @function
_dwarf_get_alloc:
.LFB6:
	.loc 1 437 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$64, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movb	%al, -44(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 442 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 444 0
	movzbl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 446 0
	cmpl	$0, 8(%ebp)
	jne	.L27
	.loc 1 447 0
	movl	$0, -60(%ebp)
	jmp	.L29
.L27:
	.loc 1 450 0
	cmpl	$41, -12(%ebp)
	jbe	.L30
	.loc 1 452 0
	movl	$0, -60(%ebp)
	jmp	.L29
.L30:
	.loc 1 454 0
	movl	-12(%ebp), %edx
	leal	index_into_allocated@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 462 0
	cmpl	$0, -16(%ebp)
	jne	.L32
	.loc 1 463 0
	cmpb	$1, -44(%ebp)
	jne	.L34
	.loc 1 464 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L46
.L34:
	.loc 1 465 0
	cmpb	$15, -44(%ebp)
	jne	.L37
	.loc 1 466 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L46
.L37:
	.loc 1 467 0
	cmpb	$23, -44(%ebp)
	jne	.L39
	.loc 1 468 0
	movl	-52(%ebp), %eax
	imull	$20, %eax, %ecx
	movl	-56(%ebp), %eax
	imull	$0, %eax, %eax
	addl	%eax, %ecx
	movl	$20, %eax
	mull	-56(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L46
.L39:
	.loc 1 469 0
	cmpb	$22, -44(%ebp)
	jne	.L41
	.loc 1 470 0
	movl	-52(%ebp), %eax
	imull	$28, %eax, %ecx
	movl	-56(%ebp), %eax
	imull	$0, %eax, %eax
	addl	%eax, %ecx
	movl	$28, %eax
	mull	-56(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L46
.L41:
	.loc 1 471 0
	cmpb	$28, -44(%ebp)
	jne	.L43
	.loc 1 472 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L46
.L43:
	.loc 1 475 0
	cmpb	$14, -44(%ebp)
	jne	.L46
	.loc 1 476 0
	call	_dwarf_special_no_dbg_error_malloc@PLT
	movl	%eax, -60(%ebp)
	jmp	.L29
.L32:
	.loc 1 487 0
	movl	8(%ebp), %ecx
	addl	$48, %ecx
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 488 0
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	je	.L47
	.loc 1 492 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_find_memory
	movl	%eax, -60(%ebp)
	jmp	.L29
.L47:
	.loc 1 497 0
	cmpl	$14, -12(%ebp)
	jne	.L46
	.loc 1 500 0
	call	_dwarf_special_no_dbg_error_malloc@PLT
	movl	%eax, -60(%ebp)
	jmp	.L29
.L46:
	.loc 1 516 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 521 0
	cmpl	$0, -20(%ebp)
	je	.L50
	.loc 1 522 0
	movl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
.L50:
	.loc 1 524 0
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
.L29:
	movl	-60(%ebp), %eax
	.loc 1 525 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE6:
	.size	_dwarf_get_alloc, .-_dwarf_get_alloc
.globl dwarf_dealloc
	.type	dwarf_dealloc, @function
dwarf_dealloc:
.LFB7:
	.loc 1 559 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 562 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 565 0
	cmpl	$0, 12(%ebp)
	je	.L106
	.loc 1 568 0
	movl	-32(%ebp), %eax
	xorl	$14, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L56
	.loc 1 571 0
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 573 0
	cmpl	$0, -20(%ebp)
	jne	.L56
	.loc 1 579 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_free_special_error
	.loc 1 580 0
	jmp	.L106
.L56:
	.loc 1 584 0
	cmpl	$0, 8(%ebp)
	je	.L106
	.loc 1 589 0
	cmpl	$41, -16(%ebp)
	ja	.L106
	.loc 1 594 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %edx
	leal	index_into_allocated@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 598 0
	cmpl	$0, -12(%ebp)
	jne	.L61
	.loc 1 599 0
	movl	-32(%ebp), %eax
	xorl	$1, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L63
	.loc 1 600 0
	movl	8(%ebp), %eax
	movl	940(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L65
	movl	8(%ebp), %eax
	movl	940(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1000(%eax), %edx
	movl	996(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L65:
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	948(%eax), %eax
	testl	%eax, %eax
	je	.L67
	movl	8(%ebp), %eax
	movl	948(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L67
	movl	8(%ebp), %eax
	movl	948(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1016(%eax), %edx
	movl	1012(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L67:
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	964(%eax), %eax
	testl	%eax, %eax
	je	.L70
	movl	8(%ebp), %eax
	movl	964(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L70
	movl	8(%ebp), %eax
	movl	964(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1048(%eax), %edx
	movl	1044(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L70:
	.loc 1 617 0
	movl	8(%ebp), %eax
	movl	972(%eax), %eax
	testl	%eax, %eax
	je	.L73
	movl	8(%ebp), %eax
	movl	972(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L73
	movl	8(%ebp), %eax
	movl	972(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1064(%eax), %edx
	movl	1060(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L73:
	.loc 1 623 0
	movl	8(%ebp), %eax
	movl	968(%eax), %eax
	testl	%eax, %eax
	je	.L76
	movl	8(%ebp), %eax
	movl	968(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L76
	movl	8(%ebp), %eax
	movl	968(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1056(%eax), %edx
	movl	1052(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L76:
	.loc 1 629 0
	movl	8(%ebp), %eax
	movl	980(%eax), %eax
	testl	%eax, %eax
	je	.L79
	movl	8(%ebp), %eax
	movl	980(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L79
	movl	8(%ebp), %eax
	movl	980(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1080(%eax), %edx
	movl	1076(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L79:
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	984(%eax), %eax
	testl	%eax, %eax
	je	.L82
	movl	8(%ebp), %eax
	movl	984(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L82
	movl	8(%ebp), %eax
	movl	984(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1088(%eax), %edx
	movl	1084(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L82:
	.loc 1 641 0
	movl	8(%ebp), %eax
	movl	988(%eax), %eax
	testl	%eax, %eax
	je	.L85
	movl	8(%ebp), %eax
	movl	988(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L85
	movl	8(%ebp), %eax
	movl	988(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1096(%eax), %edx
	movl	1092(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L85:
	.loc 1 647 0
	movl	8(%ebp), %eax
	movl	992(%eax), %eax
	testl	%eax, %eax
	je	.L88
	movl	8(%ebp), %eax
	movl	992(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L88
	movl	8(%ebp), %eax
	movl	992(%eax), %ecx
	movl	8(%ebp), %eax
	movl	1104(%eax), %edx
	movl	1100(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L106
.L88:
	.loc 1 653 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 654 0
	jmp	.L106
.L63:
	.loc 1 657 0
	movl	-32(%ebp), %eax
	xorl	$15, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L91
	movl	-32(%ebp), %eax
	xorl	$23, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L91
	movl	-32(%ebp), %eax
	xorl	$22, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L91
	movl	-32(%ebp), %eax
	xorl	$28, %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L106
.L91:
	.loc 1 662 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 663 0
	jmp	.L106
.L61:
	.loc 1 678 0
	movl	8(%ebp), %ecx
	addl	$48, %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 682 0
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 693 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L106
	.loc 1 707 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 708 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 712 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L97
	.loc 1 714 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L99
	.loc 1 715 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 20(%edx)
	jmp	.L101
.L99:
	.loc 1 717 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 20(%eax)
.L101:
	.loc 1 720 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L102
	.loc 1 721 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 24(%edx)
.L102:
	.loc 1 724 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 726 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L104
	.loc 1 727 0
	movl	-24(%ebp), %eax
	movl	$0, 24(%eax)
.L104:
	.loc 1 729 0
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 730 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L106
.L97:
	.loc 1 734 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 735 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L106:
	.loc 1 738 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	dwarf_dealloc, .-dwarf_dealloc
.globl _dwarf_get_debug
	.type	_dwarf_get_debug, @function
_dwarf_get_debug:
.LFB8:
	.loc 1 748 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 751 0
	movl	$1144, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 752 0
	cmpl	$0, -8(%ebp)
	jne	.L108
	.loc 1 753 0
	movl	$0, -24(%ebp)
	jmp	.L110
.L108:
	.loc 1 755 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	$1144, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 757 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L110:
	movl	-24(%ebp), %eax
	.loc 1 758 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	_dwarf_get_debug, .-_dwarf_get_debug
.globl _dwarf_setup_debug
	.type	_dwarf_setup_debug, @function
_dwarf_setup_debug:
.LFB9:
	.loc 1 799 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$36, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 802 0
	movl	$1, -32(%ebp)
	jmp	.L113
.L114:
.LBB4:
	.loc 1 803 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	index_into_allocated@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 804 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 805 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 806 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 807 0
	movl	-20(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L115
	movl	-20(%ebp), %eax
	andl	$-8, %eax
	addl	$16, %eax
	movl	%eax, -40(%ebp)
	jmp	.L117
.L115:
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -40(%ebp)
.L117:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 809 0
	movl	8(%ebp), %ecx
	addl	$48, %ecx
	movl	-24(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 811 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movw	%dx, 4(%eax)
	.loc 1 814 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 815 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	imull	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE4:
	.loc 1 802 0
	addl	$1, -32(%ebp)
.L113:
	cmpl	$41, -32(%ebp)
	jle	.L114
	.loc 1 817 0
	movl	8(%ebp), %eax
	.loc 1 818 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	_dwarf_setup_debug, .-_dwarf_setup_debug
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"DW_DLA_STRING"
.LC2:
	.string	"DW_DLA_LOC"
.LC3:
	.string	"DW_DLA_LOCDESC"
.LC4:
	.string	"DW_DLA_ELLIST"
.LC5:
	.string	"DW_DLA_BOUNDS"
.LC6:
	.string	"DW_DLA_BLOCK"
.LC7:
	.string	"DW_DLA_DEBUG"
.LC8:
	.string	"DW_DLA_DIE"
.LC9:
	.string	"DW_DLA_LINE"
.LC10:
	.string	"DW_DLA_ATTR"
.LC11:
	.string	"DW_DLA_TYPE"
.LC12:
	.string	"DW_DLA_SUBSCR"
.LC13:
	.string	"DW_DLA_GLOBAL"
.LC14:
	.string	"DW_DLA_ERROR"
.LC15:
	.string	"DW_DLA_LIST"
.LC16:
	.string	"DW_DLA_LINEBUF"
.LC17:
	.string	"DW_DLA_ARANGE"
.LC18:
	.string	"DW_DLA_ABBREV"
.LC19:
	.string	"DW_DLA_FRAME_OP"
.LC20:
	.string	"DW_DLA_CIE"
.LC21:
	.string	"DW_DLA_FDE"
.LC22:
	.string	"DW_DLA_LOC_BLOCK"
.LC23:
	.string	"DW_DLA_FRAME_BLOCK"
.LC24:
	.string	"DW_DLA_FUNC"
.LC25:
	.string	"DW_DLA_TYPENAME"
.LC26:
	.string	"DW_DLA_VAR"
.LC27:
	.string	"DW_DLA_WEAK"
.LC28:
	.string	"DW_DLA_ADDR"
.LC29:
	.string	"DW_DLA_ABBREV_LIST"
.LC30:
	.string	"DW_DLA_CHAIN"
.LC31:
	.string	"DW_DLA_CU_CONTEXT"
.LC32:
	.string	"DW_DLA_FRAME"
.LC33:
	.string	"DW_DLA_GLOBAL_CONTEXT"
.LC34:
	.string	"DW_DLA_FILE_ENTRY"
.LC35:
	.string	"DW_DLA_LINE_CONTEXT"
.LC36:
	.string	"DW_DLA_LOC_CHAIN"
.LC37:
	.string	"DW_DLA_HASH_TABLE"
.LC38:
	.string	"DW_DLA_FUNC_CONTEXT"
.LC39:
	.string	"DW_DLA_TYPENAME_CONTEXT"
.LC40:
	.string	"DW_DLA_VAR_CONTEXT"
.LC41:
	.string	"DW_DLA_WEAK_CONTEXT"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	C.30.4934, @object
	.size	C.30.4934, 168
C.30.4934:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
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
	.align 4
.LC42:
	.string	"Size of Dwarf_Debug        %4ld bytes\n"
	.align 4
.LC43:
	.string	"Size of Dwarf_Alloc_Hdr_s  %4ld bytes\n"
	.align 4
.LC44:
	.string	"size of Dwarf_Alloc_Area_s %4ld bytes\n"
	.align 4
.LC45:
	.string	"   Alloc Type                   Curr  Structs byt   str"
	.align 4
.LC46:
	.string	"   ----------                   ----  ------- per   per"
.LC47:
	.string	"%2d %-25s   %6d %8d %6d %6d\n"
	.text
.globl dwarf_print_memory_stats
	.type	dwarf_print_memory_stats, @function
dwarf_print_memory_stats:
.LFB10:
	.loc 1 826 0
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
	subl	$236, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 876 0
	leal	-192(%ebp), %ecx
	leal	C.30.4934@GOTOFF(%ebx), %edx
	movl	$168, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 878 0
	cmpl	$0, 8(%ebp)
	je	.L127
	.loc 1 881 0
	movl	$1144, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 883 0
	movl	$28, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 885 0
	movl	$28, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 888 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 889 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 890 0
	movw	$1, -14(%ebp)
	jmp	.L123
.L124:
.LBB5:
	.loc 1 891 0
	movswl	-14(%ebp),%edx
	leal	index_into_allocated@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 893 0
	movl	8(%ebp), %ecx
	addl	$48, %ecx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 894 0
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	cmpw	$1, %ax
	je	.L125
	.loc 1 895 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -208(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	16(%eax), %esi
	movswl	-14(%ebp),%eax
	movl	-192(%ebp,%eax,4), %eax
	movl	%eax, -212(%ebp)
	movswl	-14(%ebp),%edi
	movl	-208(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L125:
.LBE5:
	.loc 1 890 0
	addw	$1, -14(%ebp)
.L123:
	cmpw	$41, -14(%ebp)
	jle	.L124
.L127:
	.loc 1 904 0
	addl	$236, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE10:
	.size	dwarf_print_memory_stats, .-dwarf_print_memory_stats
	.type	_dwarf_recursive_free, @function
_dwarf_recursive_free:
.LFB11:
	.loc 1 916 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$4, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 917 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 918 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_dwarf_recursive_free
.L129:
	.loc 1 921 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 922 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 923 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 924 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	_dwarf_recursive_free, .-_dwarf_recursive_free
.globl _dwarf_free_all_of_one_debug
	.type	_dwarf_free_all_of_one_debug, @function
_dwarf_free_all_of_one_debug:
.LFB12:
	.loc 1 936 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$36, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 940 0
	cmpl	$0, 8(%ebp)
	jne	.L133
	.loc 1 941 0
	movl	$1, -24(%ebp)
	jmp	.L135
.L133:
	.loc 1 967 0
	movw	$1, -6(%ebp)
	jmp	.L136
.L137:
.LBB6:
	.loc 1 968 0
	movswl	-6(%ebp),%eax
	movl	%eax, -12(%ebp)
	.loc 1 970 0
	movl	8(%ebp), %ecx
	addl	$48, %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 971 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L138
	.loc 1 972 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_dwarf_recursive_free
.L138:
.LBE6:
	.loc 1 967 0
	addw	$1, -6(%ebp)
.L136:
	cmpw	$30, -6(%ebp)
	jle	.L137
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	$1144, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 979 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 980 0
	movl	$0, -24(%ebp)
.L135:
	movl	-24(%ebp), %eax
	.loc 1 981 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	_dwarf_free_all_of_one_debug, .-_dwarf_free_all_of_one_debug
.globl _dwarf_special_no_dbg_error_malloc
	.type	_dwarf_special_no_dbg_error_malloc, @function
_dwarf_special_no_dbg_error_malloc:
.LFB13:
	.loc 1 993 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1003 0
	movl	$20, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1005 0
	cmpl	$0, -8(%ebp)
	jne	.L143
	.loc 1 1006 0
	movl	$0, -24(%ebp)
	jmp	.L145
.L143:
	.loc 1 1009 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 1010 0
	addl	$8, -8(%ebp)
	.loc 1 1011 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L145:
	movl	-24(%ebp), %eax
	.loc 1 1012 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	_dwarf_special_no_dbg_error_malloc, .-_dwarf_special_no_dbg_error_malloc
	.type	_dwarf_free_special_error, @function
_dwarf_free_special_error:
.LFB14:
	.loc 1 1018 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$20, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1019 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1021 0
	subl	$8, -8(%ebp)
	.loc 1 1022 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1023 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE14:
	.size	_dwarf_free_special_error, .-_dwarf_free_special_error
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI6
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI10-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI14-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI18-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI22-.LFB10
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI28-.LFB11
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI32-.LFB12
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI36-.LFB13
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI40-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
	.file 2 "../../include/libdwarf.h"
	.file 3 "../../libdwarf/libdwarf/dwarf_base_types.h"
	.file 4 "../../libdwarf/libdwarf/dwarf_alloc.h"
	.file 5 "../../libdwarf/libdwarf/dwarf_opaque.h"
	.file 6 "../../libdwarf/libdwarf/dwarf_error.h"
	.file 7 "../../libdwarf/libdwarf/dwarf_util.h"
	.file 8 "../../libdwarf/libdwarf/dwarf_die_deliv.h"
	.file 9 "../../libdwarf/libdwarf/dwarf_frame.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x18d5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/libdwarf/dwarf_alloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
	.uleb128 0x2
	.string	"size_t"
	.byte	0xa
	.byte	0xd6
	.long	0xb1
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x15d
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"dwarf_elf_handle"
	.byte	0x2
	.byte	0x47
	.long	0x17d
	.uleb128 0x6
	.byte	0x4
	.long	0x183
	.uleb128 0x7
	.string	"Elf"
	.byte	0x1
	.uleb128 0x2
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x128
	.uleb128 0x2
	.string	"Dwarf_Half"
	.byte	0x2
	.byte	0x5d
	.long	0xc9
	.uleb128 0x2
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xb8
	.uleb128 0x2
	.string	"Dwarf_Signed"
	.byte	0x2
	.byte	0x5f
	.long	0x117
	.uleb128 0x2
	.string	"Dwarf_Addr"
	.byte	0x2
	.byte	0x60
	.long	0x128
	.uleb128 0x2
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x155
	.uleb128 0x2
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x20e
	.uleb128 0x6
	.byte	0x4
	.long	0x214
	.uleb128 0x8
	.long	0x992
	.string	"Dwarf_Debug_s"
	.value	0x478
	.byte	0x2
	.byte	0xc2
	.uleb128 0x9
	.string	"de_elf"
	.byte	0x5
	.byte	0x77
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"de_access"
	.byte	0x5
	.byte	0x79
	.long	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"de_errhand"
	.byte	0x5
	.byte	0x7a
	.long	0xd3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"de_errarg"
	.byte	0x5
	.byte	0x7b
	.long	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"de_cu_context"
	.byte	0x5
	.byte	0x81
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"de_cu_context_list"
	.byte	0x5
	.byte	0x86
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"de_cu_context_list_end"
	.byte	0x5
	.byte	0x8b
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"de_offdie_cu_context"
	.byte	0x5
	.byte	0x90
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"de_offdie_cu_context_end"
	.byte	0x5
	.byte	0x91
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"de_info_last_offset"
	.byte	0x5
	.byte	0x94
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"de_length_size"
	.byte	0x5
	.byte	0x9a
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"de_pointer_size"
	.byte	0x5
	.byte	0x9e
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"de_assume_string_in_bounds"
	.byte	0x5
	.byte	0xa3
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"de_alloc_hdr"
	.byte	0x5
	.byte	0xa8
	.long	0x1229
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"de_cie_data"
	.byte	0x5
	.byte	0xb4
	.long	0x1239
	.byte	0x3
	.byte	0x23
	.uleb128 0x394
	.uleb128 0x9
	.string	"de_cie_count"
	.byte	0x5
	.byte	0xb6
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0x9
	.string	"de_fde_data"
	.byte	0x5
	.byte	0xb9
	.long	0x123f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0x9
	.string	"de_fde_count"
	.byte	0x5
	.byte	0xbb
	.long	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a4
	.uleb128 0x9
	.string	"de_debug_info"
	.byte	0x5
	.byte	0xbd
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ac
	.uleb128 0x9
	.string	"de_debug_abbrev"
	.byte	0x5
	.byte	0xbe
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0x9
	.string	"de_debug_line"
	.byte	0x5
	.byte	0xbf
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b4
	.uleb128 0x9
	.string	"de_debug_loc"
	.byte	0x5
	.byte	0xc0
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0x9
	.string	"de_debug_aranges"
	.byte	0x5
	.byte	0xc1
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3bc
	.uleb128 0x9
	.string	"de_debug_macinfo"
	.byte	0x5
	.byte	0xc2
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0x9
	.string	"de_debug_pubnames"
	.byte	0x5
	.byte	0xc3
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0x9
	.string	"de_debug_str"
	.byte	0x5
	.byte	0xc4
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x9
	.string	"de_debug_frame"
	.byte	0x5
	.byte	0xc5
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3cc
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu"
	.byte	0x5
	.byte	0xc6
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0x9
	.string	"de_debug_funcnames"
	.byte	0x5
	.byte	0xc9
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d4
	.uleb128 0x9
	.string	"de_debug_typenames"
	.byte	0x5
	.byte	0xca
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0x9
	.string	"de_debug_varnames"
	.byte	0x5
	.byte	0xcb
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0x9
	.string	"de_debug_weaknames"
	.byte	0x5
	.byte	0xcc
	.long	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.uleb128 0x9
	.string	"de_debug_info_size"
	.byte	0x5
	.byte	0xce
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e4
	.uleb128 0x9
	.string	"de_debug_abbrev_size"
	.byte	0x5
	.byte	0xcf
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ec
	.uleb128 0x9
	.string	"de_debug_line_size"
	.byte	0x5
	.byte	0xd0
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x9
	.string	"de_debug_loc_size"
	.byte	0x5
	.byte	0xd1
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.uleb128 0x9
	.string	"de_debug_aranges_size"
	.byte	0x5
	.byte	0xd2
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x404
	.uleb128 0x9
	.string	"de_debug_macinfo_size"
	.byte	0x5
	.byte	0xd3
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x40c
	.uleb128 0x9
	.string	"de_debug_pubnames_size"
	.byte	0x5
	.byte	0xd4
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x414
	.uleb128 0x9
	.string	"de_debug_str_size"
	.byte	0x5
	.byte	0xd5
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x41c
	.uleb128 0x9
	.string	"de_debug_frame_size"
	.byte	0x5
	.byte	0xd8
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x9
	.string	"de_debug_frame_size_eh_gnu"
	.byte	0x5
	.byte	0xda
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0x9
	.string	"de_debug_funcnames_size"
	.byte	0x5
	.byte	0xdd
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x9
	.string	"de_debug_typenames_size"
	.byte	0x5
	.byte	0xde
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.uleb128 0x9
	.string	"de_debug_varnames_size"
	.byte	0x5
	.byte	0xdf
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x444
	.uleb128 0x9
	.string	"de_debug_weaknames_size"
	.byte	0x5
	.byte	0xe0
	.long	0x189
	.byte	0x3
	.byte	0x23
	.uleb128 0x44c
	.uleb128 0x9
	.string	"de_copy_word"
	.byte	0x5
	.byte	0xe2
	.long	0x1266
	.byte	0x3
	.byte	0x23
	.uleb128 0x454
	.uleb128 0x9
	.string	"de_same_endian"
	.byte	0x5
	.byte	0xe3
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x458
	.uleb128 0x9
	.string	"de_elf_must_close"
	.byte	0x5
	.byte	0xe4
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x459
	.uleb128 0x9
	.string	"de_debug_aranges_index"
	.byte	0x5
	.byte	0xf1
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x45a
	.uleb128 0x9
	.string	"de_debug_line_index"
	.byte	0x5
	.byte	0xf2
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x45c
	.uleb128 0x9
	.string	"de_debug_loc_index"
	.byte	0x5
	.byte	0xf3
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x45e
	.uleb128 0x9
	.string	"de_debug_macinfo_index"
	.byte	0x5
	.byte	0xf4
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x460
	.uleb128 0x9
	.string	"de_debug_pubnames_index"
	.byte	0x5
	.byte	0xf5
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x462
	.uleb128 0x9
	.string	"de_debug_funcnames_index"
	.byte	0x5
	.byte	0xf6
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x464
	.uleb128 0x9
	.string	"de_debug_typenames_index"
	.byte	0x5
	.byte	0xf7
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x466
	.uleb128 0x9
	.string	"de_debug_varnames_index"
	.byte	0x5
	.byte	0xf8
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0x9
	.string	"de_debug_weaknames_index"
	.byte	0x5
	.byte	0xf9
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46a
	.uleb128 0x9
	.string	"de_debug_frame_index"
	.byte	0x5
	.byte	0xfa
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0x9
	.string	"de_debug_frame_eh_gnu_index"
	.byte	0x5
	.byte	0xfb
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46e
	.uleb128 0x9
	.string	"de_debug_str_index"
	.byte	0x5
	.byte	0xfc
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0x9
	.string	"de_debug_info_index"
	.byte	0x5
	.byte	0xfd
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x472
	.uleb128 0x9
	.string	"de_debug_abbrev_index"
	.byte	0x5
	.byte	0xfe
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.uleb128 0x9
	.string	"de_big_endian_object"
	.byte	0x5
	.byte	0xff
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x476
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x9a5
	.uleb128 0x6
	.byte	0x4
	.long	0x9ab
	.uleb128 0xa
	.long	0x9d6
	.string	"Dwarf_Error_s"
	.byte	0x4
	.byte	0x2
	.byte	0xca
	.uleb128 0x9
	.string	"er_errval"
	.byte	0x6
	.byte	0x2e
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Fde"
	.byte	0x2
	.byte	0xcd
	.long	0x9e7
	.uleb128 0x6
	.byte	0x4
	.long	0x9ed
	.uleb128 0xa
	.long	0xbb2
	.string	"Dwarf_Fde_s"
	.byte	0x58
	.byte	0x2
	.byte	0xcd
	.uleb128 0x9
	.string	"fd_length"
	.byte	0x9
	.byte	0xc0
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"fd_cie_offset"
	.byte	0x9
	.byte	0xc1
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"fd_cie_index"
	.byte	0x9
	.byte	0xc2
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"fd_cie"
	.byte	0x9
	.byte	0xc3
	.long	0xbb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"fd_initial_location"
	.byte	0x9
	.byte	0xc4
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"fd_initial_loc_pos"
	.byte	0x9
	.byte	0xc5
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"fd_address_range"
	.byte	0x9
	.byte	0xc6
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"fd_fde_start"
	.byte	0x9
	.byte	0xc7
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"fd_fde_instr_start"
	.byte	0x9
	.byte	0xc8
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"fd_dbg"
	.byte	0x9
	.byte	0xc9
	.long	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"fd_offset_into_exception_tables"
	.byte	0x9
	.byte	0xca
	.long	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"fd_next"
	.byte	0x9
	.byte	0xcb
	.long	0x9d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"fd_length_size"
	.byte	0x9
	.byte	0xcc
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"fd_extension_size"
	.byte	0x9
	.byte	0xcd
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"fd_section_ptr"
	.byte	0x9
	.byte	0xd0
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"fd_section_length"
	.byte	0x9
	.byte	0xd1
	.long	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"fd_section_index"
	.byte	0x9
	.byte	0xd2
	.long	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Cie"
	.byte	0x2
	.byte	0xce
	.long	0xbc3
	.uleb128 0x6
	.byte	0x4
	.long	0xbc9
	.uleb128 0xa
	.long	0xd3e
	.string	"Dwarf_Cie_s"
	.byte	0x24
	.byte	0x2
	.byte	0xce
	.uleb128 0x9
	.string	"ci_length"
	.byte	0x9
	.byte	0xa6
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ci_augmentation"
	.byte	0x9
	.byte	0xa7
	.long	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ci_code_alignment_factor"
	.byte	0x9
	.byte	0xa8
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ci_data_alignment_factor"
	.byte	0x9
	.byte	0xa9
	.long	0xd8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.string	"ci_return_address_register"
	.byte	0x9
	.byte	0xaa
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"ci_cie_start"
	.byte	0x9
	.byte	0xab
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"ci_cie_instr_start"
	.byte	0x9
	.byte	0xac
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ci_dbg"
	.byte	0x9
	.byte	0xad
	.long	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"ci_initial_table"
	.byte	0x9
	.byte	0xae
	.long	0x12c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"ci_next"
	.byte	0x9
	.byte	0xaf
	.long	0xbb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"ci_length_size"
	.byte	0x9
	.byte	0xb0
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"ci_extension_size"
	.byte	0x9
	.byte	0xb1
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"ci_cie_version_number"
	.byte	0x9
	.byte	0xb2
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Handler"
	.byte	0x2
	.byte	0xdc
	.long	0xd53
	.uleb128 0x6
	.byte	0x4
	.long	0xd59
	.uleb128 0xb
	.long	0xd6a
	.byte	0x1
	.uleb128 0xc
	.long	0x992
	.uleb128 0xc
	.long	0x1ea
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Word"
	.byte	0x3
	.byte	0x52
	.long	0xdf
	.uleb128 0x2
	.string	"Dwarf_Sword"
	.byte	0x3
	.byte	0x53
	.long	0x142
	.uleb128 0x2
	.string	"Dwarf_Sbyte"
	.byte	0x3
	.byte	0x55
	.long	0xf4
	.uleb128 0x2
	.string	"Dwarf_Shalf"
	.byte	0x3
	.byte	0x57
	.long	0x103
	.uleb128 0x2
	.string	"Dwarf_Byte_Ptr"
	.byte	0x3
	.byte	0x58
	.long	0xdcb
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x2
	.string	"Dwarf_Abbrev_List"
	.byte	0x3
	.byte	0x6a
	.long	0xdea
	.uleb128 0x6
	.byte	0x4
	.long	0xdf0
	.uleb128 0xa
	.long	0xe71
	.string	"Dwarf_Abbrev_List_s"
	.byte	0x10
	.byte	0x3
	.byte	0x6a
	.uleb128 0x9
	.string	"ab_code"
	.byte	0x8
	.byte	0x32
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ab_tag"
	.byte	0x8
	.byte	0x33
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ab_has_child"
	.byte	0x8
	.byte	0x34
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"ab_abbrev_ptr"
	.byte	0x8
	.byte	0x39
	.long	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ab_next"
	.byte	0x8
	.byte	0x3b
	.long	0xdea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_CU_Context"
	.byte	0x3
	.byte	0x6c
	.long	0xe89
	.uleb128 0x6
	.byte	0x4
	.long	0xe8f
	.uleb128 0xa
	.long	0xfdd
	.string	"Dwarf_CU_Context_s"
	.byte	0x28
	.byte	0x3
	.byte	0x6c
	.uleb128 0x9
	.string	"cc_dbg"
	.byte	0x5
	.byte	0x67
	.long	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"cc_length"
	.byte	0x5
	.byte	0x68
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cc_length_size"
	.byte	0x5
	.byte	0x69
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cc_extension_size"
	.byte	0x5
	.byte	0x6a
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.string	"cc_version_stamp"
	.byte	0x5
	.byte	0x6b
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"cc_abbrev_offset"
	.byte	0x5
	.byte	0x6c
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"cc_address_size"
	.byte	0x5
	.byte	0x6d
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"cc_debug_info_offset"
	.byte	0x5
	.byte	0x6e
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"cc_last_abbrev_ptr"
	.byte	0x5
	.byte	0x6f
	.long	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"cc_abbrev_hash_table"
	.byte	0x5
	.byte	0x70
	.long	0xfdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"cc_next"
	.byte	0x5
	.byte	0x71
	.long	0xe71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"cc_offset_length"
	.byte	0x5
	.byte	0x72
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Hash_Table"
	.byte	0x3
	.byte	0x6d
	.long	0xff5
	.uleb128 0x6
	.byte	0x4
	.long	0xffb
	.uleb128 0xa
	.long	0x103c
	.string	"Dwarf_Hash_Table_s"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x9
	.string	"at_head"
	.byte	0x7
	.byte	0xff
	.long	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"at_tail"
	.byte	0x7
	.value	0x100
	.long	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Hdr"
	.byte	0x3
	.byte	0x70
	.long	0x1053
	.uleb128 0x6
	.byte	0x4
	.long	0x1059
	.uleb128 0xa
	.long	0x114c
	.string	"Dwarf_Alloc_Hdr_s"
	.byte	0x1c
	.byte	0x3
	.byte	0x70
	.uleb128 0x9
	.string	"ah_struct_user_holds"
	.byte	0x4
	.byte	0x49
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ah_bytes_one_struct"
	.byte	0x4
	.byte	0x4e
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ah_structs_per_chunk"
	.byte	0x4
	.byte	0x53
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"ah_bytes_malloc_per_chunk"
	.byte	0x4
	.byte	0x58
	.long	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"ah_chunks_allocated"
	.byte	0x4
	.byte	0x5b
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ah_alloc_area_head"
	.byte	0x4
	.byte	0x60
	.long	0x114c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"ah_last_alloc_area"
	.byte	0x4
	.byte	0x65
	.long	0x114c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Alloc_Area"
	.byte	0x4
	.byte	0x2f
	.long	0x1164
	.uleb128 0x6
	.byte	0x4
	.long	0x116a
	.uleb128 0xa
	.long	0x1229
	.string	"Dwarf_Alloc_Area_s"
	.byte	0x1c
	.byte	0x4
	.byte	0x2f
	.uleb128 0x9
	.string	"aa_free_list"
	.byte	0x4
	.byte	0x72
	.long	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"aa_free_structs_in_chunk"
	.byte	0x4
	.byte	0x77
	.long	0xd7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"aa_blob_start"
	.byte	0x4
	.byte	0x7d
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"aa_blob_end"
	.byte	0x4
	.byte	0x80
	.long	0xdcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"aa_alloc_hdr"
	.byte	0x4
	.byte	0x84
	.long	0x103c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"aa_next"
	.byte	0x4
	.byte	0x89
	.long	0x114c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"aa_prev"
	.byte	0x4
	.byte	0x8a
	.long	0x114c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.long	0x1239
	.long	0x1059
	.uleb128 0xf
	.long	0x14e
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xbb2
	.uleb128 0x6
	.byte	0x4
	.long	0x9d6
	.uleb128 0x10
	.long	0x125f
	.byte	0x1
	.long	0x155
	.uleb128 0xc
	.long	0x155
	.uleb128 0xc
	.long	0x125f
	.uleb128 0xc
	.long	0xa3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1265
	.uleb128 0x11
	.uleb128 0x6
	.byte	0x4
	.long	0x1245
	.uleb128 0xa
	.long	0x12c4
	.string	"Dwarf_Reg_Rule_s"
	.byte	0xc
	.byte	0x9
	.byte	0x69
	.uleb128 0x9
	.string	"ru_is_off"
	.byte	0x9
	.byte	0x79
	.long	0xd8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ru_register"
	.byte	0x9
	.byte	0x7c
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ru_offset"
	.byte	0x9
	.byte	0x7f
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"Dwarf_Frame"
	.byte	0x9
	.byte	0x82
	.long	0x12d7
	.uleb128 0x6
	.byte	0x4
	.long	0x12dd
	.uleb128 0x8
	.long	0x132a
	.string	"Dwarf_Frame_s"
	.value	0x324
	.byte	0x9
	.byte	0x82
	.uleb128 0x9
	.string	"fr_loc"
	.byte	0x9
	.byte	0x8c
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"fr_reg"
	.byte	0x9
	.byte	0x8f
	.long	0x132a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"fr_next"
	.byte	0x9
	.byte	0x91
	.long	0x12c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x320
	.byte	0x0
	.uleb128 0xe
	.long	0x133a
	.long	0x126c
	.uleb128 0xf
	.long	0x14e
	.byte	0x41
	.byte	0x0
	.uleb128 0xa
	.long	0x138e
	.string	"ial_s"
	.byte	0xc
	.byte	0x1
	.byte	0x84
	.uleb128 0x9
	.string	"ia_al_num"
	.byte	0x1
	.byte	0x85
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"ia_struct_size"
	.byte	0x1
	.byte	0x8b
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"ia_base_count"
	.byte	0x1
	.byte	0x8f
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x12
	.long	0x145d
	.string	"_dwarf_find_memory"
	.byte	0x1
	.value	0x115
	.byte	0x1
	.long	0x1ea
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x114
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ret_mem"
	.byte	0x1
	.value	0x117
	.long	0xdcb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF1
	.byte	0x1
	.value	0x11a
	.long	0x114c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"mem_block_size"
	.byte	0x1
	.value	0x11d
	.long	0x1c4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"mem_block"
	.byte	0x1
	.value	0x120
	.long	0xdcb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x14
	.string	"rounded_area_hdr_size"
	.byte	0x1
	.value	0x157
	.long	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x14
	.string	"v"
	.byte	0x1
	.value	0x15d
	.long	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x150b
	.byte	0x1
	.string	"_dwarf_get_alloc"
	.byte	0x1
	.value	0x1b5
	.byte	0x1
	.long	0x1ea
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x18
	.string	"dbg"
	.byte	0x1
	.value	0x1b3
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x1b4
	.long	0x1b1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"count"
	.byte	0x1
	.value	0x1b4
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x1b6
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"ret_mem"
	.byte	0x1
	.value	0x1b8
	.long	0x1ea
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"size"
	.byte	0x1
	.value	0x1ba
	.long	0x1c4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.value	0x1bb
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"type"
	.byte	0x1
	.value	0x1bc
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x19
	.long	0x159e
	.byte	0x1
	.string	"dwarf_dealloc"
	.byte	0x1
	.value	0x22f
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x18
	.string	"dbg"
	.byte	0x1
	.value	0x22d
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"space"
	.byte	0x1
	.value	0x22e
	.long	0x1ea
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x22e
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x230
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF1
	.byte	0x1
	.value	0x231
	.long	0x114c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"type"
	.byte	0x1
	.value	0x232
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.value	0x233
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x17
	.long	0x15d9
	.byte	0x1
	.string	"_dwarf_get_debug"
	.byte	0x1
	.value	0x2ec
	.byte	0x1
	.long	0x1fb
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x14
	.string	"dbg"
	.byte	0x1
	.value	0x2ed
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.long	0x16a0
	.byte	0x1
	.string	"_dwarf_setup_debug"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	0x1fb
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x18
	.string	"dbg"
	.byte	0x1
	.value	0x31e
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x320
	.long	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x14
	.string	"ialp"
	.byte	0x1
	.value	0x323
	.long	0x16a0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"hdr_index"
	.byte	0x1
	.value	0x324
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"str_size"
	.byte	0x1
	.value	0x325
	.long	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"str_count"
	.byte	0x1
	.value	0x326
	.long	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"rnded_size"
	.byte	0x1
	.value	0x327
	.long	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x329
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x16a6
	.uleb128 0x1a
	.long	0x133a
	.uleb128 0x19
	.long	0x173c
	.byte	0x1
	.string	"dwarf_print_memory_stats"
	.byte	0x1
	.value	0x33a
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x18
	.string	"dbg"
	.byte	0x1
	.value	0x339
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x33b
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x33c
	.long	0xda2
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x14
	.string	"alloc_type_name"
	.byte	0x1
	.value	0x341
	.long	0x173c
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x16
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x14
	.string	"indx"
	.byte	0x1
	.value	0x37b
	.long	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x174c
	.long	0x157
	.uleb128 0xf
	.long	0x14e
	.byte	0x29
	.byte	0x0
	.uleb128 0x1b
	.long	0x1787
	.string	"_dwarf_recursive_free"
	.byte	0x1
	.value	0x394
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x393
	.long	0x114c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x17
	.long	0x1804
	.byte	0x1
	.string	"_dwarf_free_all_of_one_debug"
	.byte	0x1
	.value	0x3a8
	.byte	0x1
	.long	0x110
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x18
	.string	"dbg"
	.byte	0x1
	.value	0x3a7
	.long	0x1fb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.value	0x3a9
	.long	0x103c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x3aa
	.long	0xda2
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x16
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x14
	.string	"indx"
	.byte	0x1
	.value	0x3c8
	.long	0x110
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x1851
	.byte	0x1
	.string	"_dwarf_special_no_dbg_error_malloc"
	.byte	0x1
	.value	0x3e1
	.byte	0x1
	.long	0x9a5
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x14
	.string	"mem"
	.byte	0x1
	.value	0x3e9
	.long	0x157
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x18a1
	.string	"_dwarf_free_special_error"
	.byte	0x1
	.value	0x3fa
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x18
	.string	"space"
	.byte	0x1
	.value	0x3f9
	.long	0x1ea
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"mem"
	.byte	0x1
	.value	0x3fb
	.long	0x157
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	0x18b1
	.long	0x133a
	.uleb128 0xf
	.long	0x14e
	.byte	0x29
	.byte	0x0
	.uleb128 0x1c
	.string	"index_into_allocated"
	.byte	0x1
	.byte	0x93
	.long	0x18d3
	.byte	0x5
	.byte	0x3
	.long	index_into_allocated
	.uleb128 0x1a
	.long	0x18a1
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xc6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x18d9
	.long	0x145d
	.string	"_dwarf_get_alloc"
	.long	0x150b
	.string	"dwarf_dealloc"
	.long	0x159e
	.string	"_dwarf_get_debug"
	.long	0x15d9
	.string	"_dwarf_setup_debug"
	.long	0x16ab
	.string	"dwarf_print_memory_stats"
	.long	0x1787
	.string	"_dwarf_free_all_of_one_debug"
	.long	0x1804
	.string	"_dwarf_special_no_dbg_error_malloc"
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
.LASF1:
	.string	"alloc_area"
.LASF3:
	.string	"alloc_type"
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"alloc_hdr"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
