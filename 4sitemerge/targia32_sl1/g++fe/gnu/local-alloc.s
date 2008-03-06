	.file	"local-alloc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	alloc_qty, @function
alloc_qty:
.LFB15:
	.file 1 "../../../kg++fe/gnu/local-alloc.c"
	.loc 1 309 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 310 0
	movl	next_qty@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	addl	$1, %eax
	movl	%eax, next_qty@GOTOFF(%ebx)
	.loc 1 312 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 313 0
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 314 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_next_in_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
	.loc 1 316 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 317 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 318 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 319 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 320 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%eax, 20(%ecx)
	.loc 1 321 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, 28(%esi)
	.loc 1 322 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	movl	%eax, 32(%esi)
	.loc 1 323 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 324 0
	movl	-12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%ecx)
	.loc 1 325 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	alloc_qty, .-alloc_qty
.globl local_alloc
	.type	local_alloc, @function
local_alloc:
.LFB16:
	.loc 1 331 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$48, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 338 0
	movl	$0, recorded_label_ref@GOTOFF(%ebx)
	.loc 1 344 0
	call	mips_order_regs_for_local_alloc@PLT
	.loc 1 349 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 350 0
	call	update_equiv_regs
.L4:
	.loc 1 354 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$176, %eax
	movl	%eax, -24(%ebp)
	.loc 1 360 0
	movl	-24(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty@GOTOFF(%ebx)
	.loc 1 361 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty_phys_copy_sugg@GOTOFF(%ebx)
	.loc 1 363 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty_phys_num_copy_sugg@GOTOFF(%ebx)
	.loc 1 364 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty_phys_sugg@GOTOFF(%ebx)
	.loc 1 365 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, qty_phys_num_sugg@GOTOFF(%ebx)
	.loc 1 367 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, reg_qty@GOTOFF(%ebx)
	.loc 1 368 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, reg_offset@GOTOFF(%ebx)
	.loc 1 369 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, reg_next_in_qty@GOTOFF(%ebx)
	.loc 1 378 0
	movl	$176, -28(%ebp)
	jmp	.L6
.L7:
	.loc 1 380 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	js	.L8
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	24(%eax), %eax
	cmpl	$1, %eax
	jne	.L8
	.loc 1 381 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-2, (%eax)
	.loc 1 380 0
	jmp	.L11
.L8:
	.loc 1 383 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, (%eax)
.L11:
	.loc 1 378 0
	addl	$1, -28(%ebp)
.L6:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L7
	.loc 1 387 0
	movl	-24(%ebp), %eax
	movl	%eax, next_qty@GOTOFF(%ebx)
	.loc 1 391 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L13
.L14:
	.loc 1 400 0
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	$5, %eax
	jg	.L15
	.loc 1 402 0
	movl	$0, -28(%ebp)
	jmp	.L17
.L18:
.LBB2:
	.loc 1 404 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
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
.LBE2:
	.loc 1 405 0
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movw	$0, (%eax)
.LBB3:
	.loc 1 406 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE3:
	.loc 1 407 0
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movw	$0, (%eax)
	.loc 1 402 0
	addl	$1, -28(%ebp)
.L17:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jl	.L18
	jmp	.L20
.L15:
	.loc 1 415 0
	movl	next_qty@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 416 0
	movl	next_qty@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 417 0
	movl	next_qty@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 418 0
	movl	next_qty@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
.L20:
	.loc 1 421 0
	movl	$0, next_qty@GOTOFF(%ebx)
	.loc 1 423 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	block_alloc
	.loc 1 391 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L13:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L14
	.loc 1 426 0
	movl	qty@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 427 0
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 428 0
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 429 0
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 430 0
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 432 0
	movl	reg_qty@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 433 0
	movl	reg_offset@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 434 0
	movl	reg_next_in_qty@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 436 0
	movl	recorded_label_ref@GOTOFF(%ebx), %eax
	.loc 1 437 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	local_alloc, .-local_alloc
	.type	validate_equiv_mem_from_store, @function
validate_equiv_mem_from_store:
.LFB17:
	.loc 1 454 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$20, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 455 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L24
	movl	equiv_mem@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L26
.L24:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L29
	movl	equiv_mem@GOTOFF(%ebx), %edx
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L29
.L26:
	.loc 1 459 0
	movl	$1, equiv_mem_modified@GOTOFF(%ebx)
.L29:
	.loc 1 460 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	validate_equiv_mem_from_store, .-validate_equiv_mem_from_store
	.type	validate_equiv_mem, @function
validate_equiv_mem:
.LFB18:
	.loc 1 474 0
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
	.loc 1 478 0
	movl	16(%ebp), %eax
	movl	%eax, equiv_mem@GOTOFF(%ebx)
	.loc 1 479 0
	movl	$0, equiv_mem_modified@GOTOFF(%ebx)
	.loc 1 483 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L31
	.loc 1 484 0
	movl	$0, -24(%ebp)
	jmp	.L33
.L31:
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L34
.L35:
	.loc 1 488 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L36
	.loc 1 491 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L38
	.loc 1 492 0
	movl	$1, -24(%ebp)
	jmp	.L33
.L38:
	.loc 1 494 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L40
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L40
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L40
	.loc 1 496 0
	movl	$0, -24(%ebp)
	jmp	.L33
.L40:
	.loc 1 498 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	validate_equiv_mem_from_store@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 505 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L44
.L45:
	.loc 1 506 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	je	.L46
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L48
.L46:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L48
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L48
	.loc 1 510 0
	movl	$0, -24(%ebp)
	jmp	.L33
.L48:
	.loc 1 505 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L44:
	cmpl	$0, -8(%ebp)
	jne	.L45
.L36:
	.loc 1 486 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L34:
	cmpl	$0, -12(%ebp)
	je	.L51
	movl	equiv_mem_modified@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L35
.L51:
	.loc 1 513 0
	movl	$0, -24(%ebp)
.L33:
	movl	-24(%ebp), %eax
	.loc 1 514 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	validate_equiv_mem, .-validate_equiv_mem
	.type	equiv_init_varies_p, @function
equiv_init_varies_p:
.LFB19:
	.loc 1 521 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$52, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 522 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 526 0
	movl	-20(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -36(%ebp)
	cmpl	$30, -36(%ebp)
	ja	.L55
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L61@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L61:
	.long	.L56@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L55@GOTOFF
	.long	.L57@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L58@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L59@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L55@GOTOFF
	.long	.L55@GOTOFF
	.long	.L60@GOTOFF
	.text
.L59:
	.loc 1 529 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L62
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	equiv_init_varies_p
	testl	%eax, %eax
	je	.L64
.L62:
	movl	$1, -28(%ebp)
	jmp	.L65
.L64:
	movl	$0, -28(%ebp)
.L65:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L66
.L60:
	.loc 1 532 0
	movl	$1, -32(%ebp)
	jmp	.L66
.L57:
	.loc 1 540 0
	movl	$0, -32(%ebp)
	jmp	.L66
.L58:
	.loc 1 543 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L67
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	je	.L67
	movl	$1, -24(%ebp)
	jmp	.L70
.L67:
	movl	$0, -24(%ebp)
.L70:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L66
.L56:
	.loc 1 546 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L55
	.loc 1 547 0
	movl	$1, -32(%ebp)
	jmp	.L66
.L55:
	.loc 1 555 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 556 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L72
.L73:
	.loc 1 557 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L74
	.loc 1 559 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	equiv_init_varies_p
	testl	%eax, %eax
	je	.L78
	.loc 1 560 0
	movl	$1, -32(%ebp)
	jmp	.L66
.L74:
	.loc 1 562 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L78
.LBB4:
	.loc 1 565 0
	movl	$0, -8(%ebp)
	jmp	.L80
.L81:
	.loc 1 566 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	equiv_init_varies_p
	testl	%eax, %eax
	je	.L82
	.loc 1 567 0
	movl	$1, -32(%ebp)
	jmp	.L66
.L82:
	.loc 1 565 0
	addl	$1, -8(%ebp)
.L80:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L81
.L78:
.LBE4:
	.loc 1 556 0
	subl	$1, -16(%ebp)
.L72:
	cmpl	$0, -16(%ebp)
	jns	.L73
	.loc 1 570 0
	movl	$0, -32(%ebp)
.L66:
	movl	-32(%ebp), %eax
	.loc 1 571 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	equiv_init_varies_p, .-equiv_init_varies_p
	.type	equiv_init_movable_p, @function
equiv_init_movable_p:
.LFB20:
	.loc 1 582 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$52, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 585 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 587 0
	movl	-8(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -36(%ebp)
	cmpl	$60, -36(%ebp)
	ja	.L87
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L94@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L94:
	.long	.L88@GOTOFF
	.long	.L87@GOTOFF
	.long	.L89@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L90@GOTOFF
	.long	.L87@GOTOFF
	.long	.L91@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L92@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L91@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L87@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.text
.L90:
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	equiv_init_movable_p
	movl	%eax, -32(%ebp)
	jmp	.L95
.L91:
	.loc 1 594 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L93:
	.loc 1 602 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L92:
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	jl	.L96
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L98
.L96:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jns	.L99
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L99
.L98:
	movl	$1, -28(%ebp)
	jmp	.L101
.L99:
	movl	$0, -28(%ebp)
.L101:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L95
.L89:
	.loc 1 610 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L88:
	.loc 1 613 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L87
	.loc 1 614 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L87:
	.loc 1 622 0
	movl	-8(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 623 0
	movl	-8(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L103
.L104:
	.loc 1 624 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$69, -24(%ebp)
	je	.L106
	cmpl	$101, -24(%ebp)
	je	.L107
	jmp	.L105
.L107:
	.loc 1 627 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	equiv_init_movable_p
	testl	%eax, %eax
	jne	.L105
	.loc 1 628 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L106:
	.loc 1 631 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L110
.L111:
	.loc 1 632 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	equiv_init_movable_p
	testl	%eax, %eax
	jne	.L112
	.loc 1 633 0
	movl	$0, -32(%ebp)
	jmp	.L95
.L112:
	.loc 1 631 0
	subl	$1, -16(%ebp)
.L110:
	cmpl	$0, -16(%ebp)
	jns	.L111
.L105:
	.loc 1 623 0
	subl	$1, -20(%ebp)
.L103:
	cmpl	$0, -20(%ebp)
	jns	.L104
	.loc 1 637 0
	movl	$1, -32(%ebp)
.L95:
	movl	-32(%ebp), %eax
	.loc 1 638 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	equiv_init_movable_p, .-equiv_init_movable_p
	.type	contains_replace_regs, @function
contains_replace_regs:
.LFB21:
	.loc 1 645 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$32, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 648 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 650 0
	movl	-8(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -32(%ebp)
	cmpl	$80, -32(%ebp)
	ja	.L117
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L120@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L120:
	.long	.L118@GOTOFF
	.long	.L118@GOTOFF
	.long	.L118@GOTOFF
	.long	.L117@GOTOFF
	.long	.L118@GOTOFF
	.long	.L118@GOTOFF
	.long	.L117@GOTOFF
	.long	.L119@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L118@GOTOFF
	.long	.L118@GOTOFF
	.long	.L118@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L117@GOTOFF
	.long	.L118@GOTOFF
	.text
.L118:
	.loc 1 661 0
	movl	$0, -28(%ebp)
	jmp	.L121
.L119:
	.loc 1 664 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L121
.L117:
	.loc 1 670 0
	movl	-8(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 671 0
	movl	-8(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L122
.L123:
	.loc 1 672 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$69, -24(%ebp)
	je	.L125
	cmpl	$101, -24(%ebp)
	je	.L126
	jmp	.L124
.L126:
	.loc 1 675 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	contains_replace_regs
	testl	%eax, %eax
	je	.L124
	.loc 1 676 0
	movl	$1, -28(%ebp)
	jmp	.L121
.L125:
	.loc 1 679 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L129
.L130:
	.loc 1 680 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	contains_replace_regs
	testl	%eax, %eax
	je	.L131
	.loc 1 681 0
	movl	$1, -28(%ebp)
	jmp	.L121
.L131:
	.loc 1 679 0
	subl	$1, -16(%ebp)
.L129:
	cmpl	$0, -16(%ebp)
	jns	.L130
.L124:
	.loc 1 671 0
	subl	$1, -20(%ebp)
.L122:
	cmpl	$0, -20(%ebp)
	jns	.L123
	.loc 1 685 0
	movl	$0, -28(%ebp)
.L121:
	movl	-28(%ebp), %eax
	.loc 1 686 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	contains_replace_regs, .-contains_replace_regs
	.type	memref_referenced_p, @function
memref_referenced_p:
.LFB22:
	.loc 1 695 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$52, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 698 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 700 0
	movl	-8(%ebp), %eax
	subl	$57, %eax
	movl	%eax, -36(%ebp)
	cmpl	$88, -36(%ebp)
	ja	.L136
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L141@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L141:
	.long	.L137@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.long	.L136@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.long	.L136@GOTOFF
	.long	.L139@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L140@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L138@GOTOFF
	.long	.L138@GOTOFF
	.text
.L138:
	.loc 1 712 0
	movl	$0, -32(%ebp)
	jmp	.L142
.L139:
	.loc 1 715 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L143
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L143
	movl	$1, -28(%ebp)
	jmp	.L146
.L143:
	movl	$0, -28(%ebp)
.L146:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L142
.L140:
	.loc 1 720 0
	movl	rtx_varies_p@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	true_dependence@PLT
	testl	%eax, %eax
	je	.L136
	.loc 1 721 0
	movl	$1, -32(%ebp)
	jmp	.L142
.L137:
	.loc 1 727 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L149
	.loc 1 729 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L153
	.loc 1 730 0
	movl	$1, -32(%ebp)
	jmp	.L142
.L149:
	.loc 1 732 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L153
	.loc 1 733 0
	movl	$1, -32(%ebp)
	jmp	.L142
.L153:
	.loc 1 735 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	movl	%eax, -32(%ebp)
	jmp	.L142
.L136:
	.loc 1 741 0
	movl	-8(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 742 0
	movl	-8(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L155
.L156:
	.loc 1 743 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$69, -24(%ebp)
	je	.L158
	cmpl	$101, -24(%ebp)
	je	.L159
	jmp	.L157
.L159:
	.loc 1 746 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L157
	.loc 1 747 0
	movl	$1, -32(%ebp)
	jmp	.L142
.L158:
	.loc 1 750 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L162
.L163:
	.loc 1 751 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L164
	.loc 1 752 0
	movl	$1, -32(%ebp)
	jmp	.L142
.L164:
	.loc 1 750 0
	subl	$1, -16(%ebp)
.L162:
	cmpl	$0, -16(%ebp)
	jns	.L163
.L157:
	.loc 1 742 0
	subl	$1, -20(%ebp)
.L155:
	cmpl	$0, -20(%ebp)
	jns	.L156
	.loc 1 756 0
	movl	$0, -32(%ebp)
.L142:
	movl	-32(%ebp), %eax
	.loc 1 757 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	memref_referenced_p, .-memref_referenced_p
	.type	memref_used_between_p, @function
memref_used_between_p:
.LFB23:
	.loc 1 767 0
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
	.loc 1 770 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L169
.L170:
	.loc 1 772 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L171
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_referenced_p
	testl	%eax, %eax
	je	.L171
	.loc 1 773 0
	movl	$1, -24(%ebp)
	jmp	.L174
.L171:
	.loc 1 771 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L169:
	.loc 1 770 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L170
	.loc 1 775 0
	movl	$0, -24(%ebp)
.L174:
	movl	-24(%ebp), %eax
	.loc 1 776 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	memref_used_between_p, .-memref_used_between_p
.globl function_invariant_p
	.type	function_invariant_p, @function
function_invariant_p:
.LFB24:
	.loc 1 788 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	subl	$4, %esp
.LCFI40:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 789 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L178
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L186
.L178:
	.loc 1 790 0
	movl	$1, -4(%ebp)
	jmp	.L187
.L186:
	.loc 1 791 0
	movl	global_rtl@GOT(%ecx), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L188
	movl	global_rtl@GOT(%ecx), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L190
.L188:
	.loc 1 792 0
	movl	$1, -4(%ebp)
	jmp	.L187
.L190:
	.loc 1 793 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L191
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L193
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L191
.L193:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L195
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L191
.L195:
	.loc 1 796 0
	movl	$1, -4(%ebp)
	jmp	.L187
.L191:
	.loc 1 797 0
	movl	$0, -4(%ebp)
.L187:
	movl	-4(%ebp), %eax
	.loc 1 798 0
	leave
	ret
.LFE24:
	.size	function_invariant_p, .-function_invariant_p
	.section	.rodata
	.type	__FUNCTION__.11397, @object
	.size	__FUNCTION__.11397, 18
__FUNCTION__.11397:
	.string	"update_equiv_regs"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/local-alloc.c"
	.text
	.type	update_equiv_regs, @function
update_equiv_regs:
.LFB25:
	.loc 1 810 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$160, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 815 0
	movl	$0, -104(%ebp)
	.loc 1 817 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$20, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, reg_equiv@GOTOFF(%ebx)
	.loc 1 818 0
	movl	$1, 4(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 820 0
	call	init_alias_analysis@PLT
	.loc 1 825 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L205
.L206:
	.loc 1 827 0
	movl	-112(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 829 0
	movl	-112(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L207
.L208:
.LBB5:
	.loc 1 836 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L209
	.loc 1 839 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L211
.L212:
	.loc 1 840 0
	movl	-100(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L213
	.loc 1 841 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	no_equiv
.L213:
	.loc 1 839 0
	movl	-100(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -100(%ebp)
.L211:
	cmpl	$0, -100(%ebp)
	jne	.L212
	.loc 1 843 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L216
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L218
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L220
.L218:
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -140(%ebp)
.L220:
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L221
.L216:
	movl	$0, -144(%ebp)
.L221:
	movl	-144(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 847 0
	cmpl	$0, -96(%ebp)
	jne	.L222
	.loc 1 849 0
	movl	-116(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	no_equiv@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 850 0
	jmp	.L209
.L222:
	.loc 1 852 0
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L224
.LBB6:
	.loc 1 856 0
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -80(%ebp)
	jmp	.L226
.L227:
.LBB7:
	.loc 1 858 0
	movl	-116(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 859 0
	movl	-76(%ebp), %eax
	cmpl	-96(%ebp), %eax
	je	.L228
	.loc 1 860 0
	movl	$0, 8(%esp)
	leal	no_equiv@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
.L228:
.LBE7:
	.loc 1 856 0
	subl	$1, -80(%ebp)
.L226:
	cmpl	$0, -80(%ebp)
	jns	.L227
.L224:
.LBE6:
	.loc 1 864 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 865 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 888 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L230
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L230
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	cmpl	$175, -84(%ebp)
	jle	.L230
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	js	.L230
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L230
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L230
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L230
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L230
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_replace_regs
	testl	%eax, %eax
	jne	.L230
.LBB8:
	.loc 1 898 0
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 899 0
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_equiv_mem
	testl	%eax, %eax
	je	.L230
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_used_between_p
	testl	%eax, %eax
	jne	.L230
	.loc 1 901 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, 68(%eax)
.L230:
.LBE8:
	.loc 1 917 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L242
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	cmpl	$175, -84(%ebp)
	jle	.L242
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	je	.L242
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, %edx
	movl	reg_class_size@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L246
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L246
.L242:
	.loc 1 925 0
	movl	$0, 8(%esp)
	leal	no_equiv@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
	.loc 1 926 0
	jmp	.L209
.L246:
	.loc 1 929 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -100(%ebp)
	.loc 1 934 0
	cmpl	$0, -100(%ebp)
	jne	.L248
	movl	$0, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L248
	.loc 1 935 0
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	set_unique_reg_note@PLT
	movl	%eax, -100(%ebp)
.L248:
	.loc 1 939 0
	cmpl	$0, -100(%ebp)
	je	.L251
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L251
	.loc 1 940 0
	movl	$0, -100(%ebp)
.L251:
	.loc 1 942 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L254
	cmpl	$0, -100(%ebp)
	je	.L256
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L256
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L254
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L254
.L256:
	.loc 1 949 0
	movl	$0, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	no_equiv
	.loc 1 950 0
	jmp	.L209
.L254:
	.loc 1 953 0
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4, (%esp)
	call	gen_rtx_fmt_ue@PLT
	movl	%eax, 16(%esi)
	.loc 1 958 0
	cmpl	$0, -100(%ebp)
	je	.L260
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_varies_p@PLT
	testl	%eax, %eax
	jne	.L260
	.loc 1 959 0
	movl	-100(%ebp), %eax
	movb	$3, 2(%eax)
.L260:
	.loc 1 976 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -100(%ebp)
	.loc 1 978 0
	cmpl	$0, -100(%ebp)
	jne	.L263
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	js	.L263
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L263
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_equiv_mem
	testl	%eax, %eax
	je	.L263
	.loc 1 981 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -100(%ebp)
	movl	-116(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 68(%edx)
.L263:
	.loc 1 984 0
	cmpl	$0, -100(%ebp)
	je	.L209
.LBB9:
	.loc 1 986 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 993 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L269
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L271
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L271
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L271
.L269:
	.loc 1 998 0
	movl	$1, recorded_label_ref@GOTOFF(%ebx)
.L271:
	.loc 1 1000 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 1001 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-96(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 8(%edx)
	.loc 1 1002 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-108(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1005 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L209
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L209
	.loc 1 1009 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %eax
	addl	%eax, %eax
	movl	%eax, 28(%ecx)
	.loc 1 1021 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	cmpl	$2, %eax
	jne	.L209
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L277
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	equiv_init_varies_p
	testl	%eax, %eax
	jne	.L209
.L277:
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L209
	movl	-116(%ebp), %eax
	movl	44(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	equiv_init_movable_p
	testl	%eax, %eax
	je	.L209
	.loc 1 1026 0
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
.L209:
.LBE9:
.LBE5:
	.loc 1 829 0
	movl	-116(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
.L207:
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L208
	.loc 1 825 0
	movl	-112(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
.L205:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L206
	.loc 1 1040 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L283
.L284:
	.loc 1 1042 0
	movl	-112(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 1043 0
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L285
.L286:
.LBB10:
	.loc 1 1047 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L287
	.loc 1 1050 0
	movl	-116(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L289
.L290:
	.loc 1 1052 0
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L291
	movl	-116(%ebp), %eax
	movl	44(%eax), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L291
.LBB11:
	.loc 1 1056 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1059 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L291
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	cmpl	-108(%ebp), %eax
	jl	.L291
	.loc 1 1068 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L296
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L298
.L296:
	.loc 1 1070 0
	leal	__FUNCTION__.11397@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1070, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L298:
	.loc 1 1071 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1076 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L291
	.loc 1 1079 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jns	.L300
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L300
.LBB12:
	.loc 1 1088 0
	movl	-64(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L303
.L304:
	.loc 1 1089 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L303:
	.loc 1 1088 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L304
	.loc 1 1093 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1094 0
	jmp	.L344
.L307:
	.loc 1 1096 0
	movl	-52(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1097 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1098 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L306
	.loc 1 1100 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1101 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1102 0
	movl	-44(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1103 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L306:
.L344:
	.loc 1 1094 0
	cmpl	$0, -52(%ebp)
	jne	.L307
	.loc 1 1107 0
	movl	-60(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_death@PLT
	.loc 1 1108 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 16(%eax)
	.loc 1 1109 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 20(%eax)
	.loc 1 1110 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1112 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 16(%ecx)
	.loc 1 1079 0
	jmp	.L291
.L300:
.LBE12:
	.loc 1 1117 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-56(%ebp), %eax
	je	.L291
.LBB13:
	.loc 1 1121 0
	movl	-56(%ebp), %eax
	movl	44(%eax), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1122 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 1123 0
	movl	-56(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 1127 0
	movl	-56(%ebp), %eax
	movl	52(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 1129 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1131 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1133 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-112(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 1134 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 32(%eax)
	.loc 1 1135 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$2, 28(%eax)
	.loc 1 1137 0
	movl	-112(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L311
	.loc 1 1138 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%edx, (%eax)
.L311:
	.loc 1 1142 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1143 0
	addl	$1, -104(%ebp)
.L291:
.LBE13:
.LBE11:
	.loc 1 1050 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
.L289:
	cmpl	$0, -64(%ebp)
	jne	.L290
.L287:
.LBE10:
	.loc 1 1043 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
.L285:
	movl	-112(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L286
	.loc 1 1040 0
	movl	-112(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -112(%ebp)
.L283:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L284
	.loc 1 1151 0
	cmpl	$0, -104(%ebp)
	je	.L315
.LBB14:
	.loc 1 1154 0
	cmpl	$8, -104(%ebp)
	jle	.L317
	.loc 1 1156 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L319
.L320:
	.loc 1 1158 0
	movl	-112(%ebp), %eax
	movl	32(%eax), %ecx
	movl	-112(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 12(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1159 0
	movl	-112(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-112(%ebp), %eax
	movl	36(%eax), %edx
	movl	$1, 12(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1156 0
	movl	-112(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
.L319:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L320
	jmp	.L315
.L317:
.LBB15:
	.loc 1 1163 0
	movl	-132(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L322
.L323:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L322:
	cmpl	$0, -32(%ebp)
	je	.L324
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L323
.L324:
	cmpl	$0, -32(%ebp)
	je	.L329
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L329
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L329
.L332:
.LBB16:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L333
	jmp	.L335
.L336:
.LBB17:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L337
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
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L339
.L340:
	movl	-112(%ebp), %eax
	movl	32(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	movl	-112(%ebp), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	movl	-112(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -112(%ebp)
.L339:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -112(%ebp)
	jne	.L340
	cmpl	$0, -16(%ebp)
	je	.L333
.L337:
.LBE17:
	addl	$1, -24(%ebp)
.L335:
	cmpl	$31, -24(%ebp)
	jbe	.L336
.L333:
	movl	$0, -24(%ebp)
.LBE16:
	addl	$1, -20(%ebp)
.L331:
	cmpl	$3, -20(%ebp)
	jbe	.L332
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L329:
	cmpl	$0, -32(%ebp)
	jne	.L331
.L315:
.LBE15:
.LBE14:
	.loc 1 1174 0
	call	end_alias_analysis@PLT
	.loc 1 1175 0
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1176 0
	movl	reg_equiv@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1177 0
	addl	$160, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	update_equiv_regs, .-update_equiv_regs
	.type	no_equiv, @function
no_equiv:
.LFB26:
	.loc 1 1190 0
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
	.loc 1 1194 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L352
	.loc 1 1196 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1197 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1198 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L352
	.loc 1 1200 0
	jmp	.L349
.L350:
.LBB18:
	.loc 1 1202 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1203 0
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.LBE18:
	.loc 1 1200 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L349:
	cmpl	$0, -12(%ebp)
	jne	.L350
	.loc 1 1205 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 16(%edx)
	.loc 1 1206 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_equiv@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 4(%eax)
.L352:
	.loc 1 1207 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	no_equiv, .-no_equiv
	.section	.rodata
	.type	__FUNCTION__.11936, @object
	.size	__FUNCTION__.11936, 12
__FUNCTION__.11936:
	.string	"block_alloc"
	.text
	.type	block_alloc, @function
block_alloc:
.LFB27:
	.loc 1 1215 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$284, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1219 0
	movl	$0, -112(%ebp)
	.loc 1 1220 0
	movl	$0, -108(%ebp)
	.loc 1 1221 0
	call	get_max_uid@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1223 0
	movl	$-1, -96(%ebp)
	.loc 1 1227 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
.L354:
	.loc 1 1230 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L355
	.loc 1 1231 0
	addl	$1, -108(%ebp)
	movl	-108(%ebp), %eax
	cmpl	-104(%ebp), %eax
	jle	.L355
	.loc 1 1232 0
	leal	__FUNCTION__.11936@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1232, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L355:
	.loc 1 1233 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	.L358
	.loc 1 1235 0
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1236 0
	jmp	.L354
.L358:
	.loc 1 1240 0
	movl	-108(%ebp), %eax
	addl	%eax, %eax
	addl	$2, %eax
	movl	$24, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, regs_live_at@GOTOFF(%ebx)
.LBB19:
	.loc 1 1245 0
	leal	regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-92(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-92(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE19:
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	leal	regs_live@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
	.loc 1 1251 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
.L360:
	.loc 1 1254 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L361
	.loc 1 1255 0
	addl	$1, -112(%ebp)
.L361:
	.loc 1 1257 0
	movl	-124(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L363
.LBB20:
	.loc 1 1260 0
	movl	$0, -80(%ebp)
	.loc 1 1261 0
	movl	$0, -72(%ebp)
	.loc 1 1262 0
	movl	$-1, -68(%ebp)
	.loc 1 1265 0
	movl	-112(%ebp), %eax
	movl	%eax, this_insn_number@GOTOFF(%ebx)
	.loc 1 1266 0
	movl	-124(%ebp), %eax
	movl	%eax, this_insn@GOTOFF(%ebx)
	.loc 1 1268 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 1269 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 1289 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L365
	movl	recog_data@GOT(%ebx), %eax
	movzbl	610(%eax), %eax
	cmpb	$1, %al
	jbe	.L365
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L365
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$38, %al
	je	.L365
.LBB21:
	.loc 1 1295 0
	movl	$-1, -60(%ebp)
	.loc 1 1298 0
	movl	$0, -56(%ebp)
	.loc 1 1300 0
	movl	$1, -64(%ebp)
	jmp	.L370
.L371:
.LBB22:
	.loc 1 1302 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1303 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	requires_inout
	movl	%eax, -48(%ebp)
	.loc 1 1305 0
	movl	-48(%ebp), %eax
	addl	%eax, -56(%ebp)
	.loc 1 1306 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	612(%eax), %eax
	movzbl	%al, %eax
	cmpl	-48(%ebp), %eax
	jne	.L372
	.loc 1 1307 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
.L372:
.LBE22:
	.loc 1 1300 0
	addl	$1, -64(%ebp)
.L370:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	610(%eax), %eax
	movzbl	%al, %eax
	cmpl	-64(%ebp), %eax
	jg	.L371
	.loc 1 1310 0
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1311 0
	movl	$1, -64(%ebp)
	jmp	.L375
.L376:
	.loc 1 1317 0
	cmpl	$0, -60(%ebp)
	js	.L377
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L377
	movl	-60(%ebp), %eax
	addl	$1, %eax
	cmpl	-64(%ebp), %eax
	jne	.L380
	movl	-64(%ebp), %edx
	subl	$1, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	.L377
.L380:
	movl	-60(%ebp), %eax
	subl	$1, %eax
	cmpl	-64(%ebp), %eax
	jne	.L382
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L382
.L377:
	.loc 1 1329 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	612(%eax), %eax
	movzbl	%al, %eax
	cmpl	-56(%ebp), %eax
	jne	.L384
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	requires_inout
	testl	%eax, %eax
	je	.L382
.L384:
	.loc 1 1333 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1338 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	jne	.L386
	.loc 1 1340 0
	jmp	.L388
.L389:
	.loc 1 1341 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
.L388:
	.loc 1 1340 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L389
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L389
.L386:
	.loc 1 1345 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_hard_reg_initial_reg@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1346 0
	cmpl	$0, -116(%ebp)
	je	.L391
	.loc 1 1348 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L391
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L391
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L382
.L391:
	.loc 1 1355 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L395
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L397
.L395:
.LBB23:
	.loc 1 1362 0
	movl	-64(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-72(%ebp), %eax
	jne	.L398
	cmpl	$0, -60(%ebp)
	js	.L398
	movl	$1, -248(%ebp)
	jmp	.L401
.L398:
	movl	$0, -248(%ebp)
.L401:
	movl	-248(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1364 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L402
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L397
.L402:
	.loc 1 1365 0
	movl	$0, 20(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_regs
	movl	%eax, -80(%ebp)
.L397:
.LBE23:
	.loc 1 1368 0
	cmpl	$0, -80(%ebp)
	jne	.L365
.L382:
	.loc 1 1311 0
	addl	$1, -64(%ebp)
.L375:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	610(%eax), %eax
	movzbl	%al, %eax
	cmpl	-64(%ebp), %eax
	jg	.L376
.L365:
.LBE21:
	.loc 1 1387 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L404
	movl	-124(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L404
	movl	-124(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L404
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L404
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L404
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L404
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L411
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L413
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -240(%ebp)
	jmp	.L415
.L413:
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -240(%ebp)
.L415:
	movl	-240(%ebp), %edx
	movl	%edx, -244(%ebp)
	jmp	.L416
.L411:
	movl	$0, -244(%ebp)
.L416:
	movl	-244(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	cmpl	$0, -84(%ebp)
	je	.L404
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L404
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L404
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L404
	.loc 1 1399 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L421
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	no_conflict_p
	testl	%eax, %eax
	je	.L421
	movl	$1, -236(%ebp)
	jmp	.L424
.L421:
	movl	$0, -236(%ebp)
.L424:
	cmpl	$0, -236(%ebp)
	je	.L425
	.loc 1 1402 0
	movl	$1, 20(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_regs
	movl	%eax, -80(%ebp)
	jmp	.L427
.L425:
	.loc 1 1403 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L428
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L430
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L432
.L430:
	movl	$1, -232(%ebp)
	jmp	.L433
.L432:
	movl	$0, -232(%ebp)
.L433:
	cmpl	$0, -232(%ebp)
	je	.L428
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	no_conflict_p
	testl	%eax, %eax
	je	.L428
	.loc 1 1407 0
	movl	$1, 20(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_regs
	movl	%eax, -80(%ebp)
	.loc 1 1403 0
	jmp	.L427
.L428:
	.loc 1 1411 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$113, %ax
	je	.L436
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$112, %ax
	je	.L436
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L427
.L436:
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L439
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L441
.L439:
	movl	$1, -228(%ebp)
	jmp	.L442
.L441:
	movl	$0, -228(%ebp)
.L442:
	cmpl	$0, -228(%ebp)
	je	.L427
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	no_conflict_p
	testl	%eax, %eax
	je	.L427
	.loc 1 1417 0
	movl	$1, 20(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_regs
	movl	%eax, -80(%ebp)
.L427:
	.loc 1 1421 0
	cmpl	$0, -80(%ebp)
	je	.L404
	.loc 1 1422 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
.L404:
	.loc 1 1430 0
	cmpl	$0, -80(%ebp)
	je	.L446
	.loc 1 1432 0
	jmp	.L448
.L449:
	.loc 1 1433 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
.L448:
	.loc 1 1432 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L449
	.loc 1 1434 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
.L446:
	.loc 1 1440 0
	movl	-124(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L451
.L452:
	.loc 1 1441 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L453
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L453
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-68(%ebp), %eax
	je	.L453
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-96(%ebp), %eax
	jne	.L457
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L453
.L457:
	.loc 1 1447 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	wipe_dead_reg
.L453:
	.loc 1 1440 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
.L451:
	cmpl	$0, -88(%ebp)
	jne	.L452
	.loc 1 1453 0
	movl	-124(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	reg_is_set@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1461 0
	movl	-124(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L460
.L461:
	.loc 1 1462 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L462
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L462
	.loc 1 1464 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	wipe_dead_reg
.L462:
	.loc 1 1461 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -88(%ebp)
.L460:
	cmpl	$0, -88(%ebp)
	jne	.L461
	.loc 1 1469 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L363
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L363
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L363
	.loc 1 1472 0
	movl	$-1, -96(%ebp)
.L363:
.LBE20:
.LBB24:
	.loc 1 1479 0
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	regs_live_at@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	leal	regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -224(%ebp)
	movl	%edi, -220(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-224(%ebp), %eax
	orl	%esi, %eax
	movl	-220(%ebp), %edx
	orl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-208(%ebp), %eax
	orl	%esi, %eax
	movl	-204(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE24:
.LBB25:
	.loc 1 1480 0
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	regs_live_at@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$24, %eax
	movl	%eax, -32(%ebp)
	leal	regs_live@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -200(%ebp)
	movl	%ecx, -196(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -192(%ebp)
	movl	%edi, -188(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-192(%ebp), %eax
	orl	%esi, %eax
	movl	-188(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE25:
	.loc 1 1482 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	cmpl	-124(%ebp), %eax
	je	.L469
	.loc 1 1485 0
	movl	-124(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1486 0
	jmp	.L360
.L469:
	.loc 1 1496 0
	movl	next_qty@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1497 0
	movl	$0, -132(%ebp)
	jmp	.L471
.L472:
	.loc 1 1498 0
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-100(%ebp), %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1497 0
	addl	$1, -132(%ebp)
.L471:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -132(%ebp)
	jl	.L472
	.loc 1 1503 0
	movl	next_qty@GOTOFF(%ebx), %edi
	movl	%edi, -172(%ebp)
	cmpl	$2, -172(%ebp)
	je	.L476
	cmpl	$2, -172(%ebp)
	jg	.L478
	cmpl	$0, -172(%ebp)
	js	.L474
	jmp	.L483
.L478:
	cmpl	$3, -172(%ebp)
	je	.L477
	jmp	.L474
.L477:
	.loc 1 1507 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	qty_sugg_compare
	testl	%eax, %eax
	jle	.L479
	.loc 1 1508 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
.L479:
	.loc 1 1509 0
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	qty_sugg_compare
	testl	%eax, %eax
	jle	.L476
	.loc 1 1510 0
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %edx
	addl	$8, %edx
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
.L476:
	.loc 1 1515 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	qty_sugg_compare
	testl	%eax, %eax
	jle	.L483
	.loc 1 1516 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1523 0
	jmp	.L483
.L474:
	.loc 1 1526 0
	movl	next_qty@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	qty_sugg_compare_1@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
.L483:
	.loc 1 1532 0
	movl	$0, -132(%ebp)
	jmp	.L484
.L485:
	.loc 1 1534 0
	movl	-132(%ebp), %eax
	sall	$2, %eax
	addl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1535 0
	movl	-128(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	jne	.L486
	movl	-128(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L488
.L486:
	.loc 1 1536 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -168(%ebp)
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %edx
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_free_reg
	movw	%ax, 40(%esi)
	.loc 1 1535 0
	jmp	.L489
.L488:
	.loc 1 1539 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movw	$-1, 40(%eax)
.L489:
	.loc 1 1532 0
	addl	$1, -132(%ebp)
.L484:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -132(%ebp)
	jl	.L485
	.loc 1 1546 0
	movl	$0, -132(%ebp)
	jmp	.L491
.L492:
	.loc 1 1547 0
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-100(%ebp), %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1546 0
	addl	$1, -132(%ebp)
.L491:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -132(%ebp)
	jl	.L492
	.loc 1 1552 0
	movl	next_qty@GOTOFF(%ebx), %edx
	movl	%edx, -164(%ebp)
	cmpl	$2, -164(%ebp)
	je	.L496
	cmpl	$2, -164(%ebp)
	jg	.L498
	cmpl	$0, -164(%ebp)
	js	.L494
	jmp	.L503
.L498:
	cmpl	$3, -164(%ebp)
	je	.L497
	jmp	.L494
.L497:
	.loc 1 1556 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	qty_compare
	testl	%eax, %eax
	jle	.L499
	.loc 1 1557 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
.L499:
	.loc 1 1558 0
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	qty_compare
	testl	%eax, %eax
	jle	.L496
	.loc 1 1559 0
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %edx
	addl	$8, %edx
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
.L496:
	.loc 1 1564 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	qty_compare
	testl	%eax, %eax
	jle	.L503
	.loc 1 1565 0
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-100(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%edx, (%eax)
	movl	-100(%ebp), %edx
	addl	$4, %edx
	movl	-132(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1572 0
	jmp	.L503
.L494:
	.loc 1 1575 0
	movl	next_qty@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	qty_compare_1@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
.L503:
	.loc 1 1583 0
	movl	$0, -132(%ebp)
	jmp	.L504
.L505:
	.loc 1 1585 0
	movl	-132(%ebp), %eax
	sall	$2, %eax
	addl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1586 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	40(%eax), %eax
	testw	%ax, %ax
	jns	.L506
.LBB26:
	.loc 1 1606 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%edx,%ecx), %eax
	andl	$1, %eax
	subl	%ecx, %eax
	leal	(%esi,%eax), %eax
	cmpl	$1, %eax
	jle	.L508
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%edx,%ecx), %eax
	andl	$1, %eax
	subl	%ecx, %eax
	leal	(%esi,%eax), %eax
	subl	$2, %eax
	movl	%eax, -160(%ebp)
	jmp	.L510
.L508:
	movl	$0, -160(%ebp)
.L510:
	movl	-160(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 1607 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%edx,%ecx), %eax
	andl	$1, %eax
	subl	%ecx, %eax
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	leal	2(%eax), %edx
	movl	-112(%ebp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -156(%ebp)
	movl	%edx, -252(%ebp)
	movl	-156(%ebp), %eax
	cmpl	%eax, -252(%ebp)
	jle	.L511
	movl	-156(%ebp), %edx
	movl	%edx, -252(%ebp)
.L511:
	movl	-252(%ebp), %ecx
	movl	%ecx, -20(%ebp)
	.loc 1 1621 0
	movl	flag_schedule_insns_after_reload@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L512
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L512
	.loc 1 1625 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	36(%eax), %ecx
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	find_free_reg
	movw	%ax, 40(%esi)
	.loc 1 1628 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	40(%eax), %eax
	testw	%ax, %ax
	jns	.L506
.L512:
	.loc 1 1632 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -152(%ebp)
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %edx
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	find_free_reg
	movw	%ax, 40(%esi)
	.loc 1 1635 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	40(%eax), %eax
	testw	%ax, %ax
	jns	.L506
	.loc 1 1641 0
	movl	flag_schedule_insns_after_reload@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L517
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L517
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L517
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L517
	.loc 1 1645 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	36(%eax), %ecx
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	32(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	find_free_reg
	movw	%ax, 40(%esi)
.L517:
	.loc 1 1649 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L506
	.loc 1 1650 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -148(%ebp)
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	32(%eax), %edx
	movl	%ecx, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_free_reg
	movw	%ax, 40(%esi)
.L506:
.LBE26:
	.loc 1 1583 0
	addl	$1, -132(%ebp)
.L504:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -132(%ebp)
	jl	.L505
	.loc 1 1659 0
	movl	$0, -128(%ebp)
	jmp	.L524
.L525:
	.loc 1 1660 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	40(%eax), %eax
	testw	%ax, %ax
	js	.L526
	.loc 1 1662 0
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L528
.L529:
	.loc 1 1663 0
	movl	-132(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	-128(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	40(%eax), %eax
	movl	%eax, %ecx
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	-132(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbw	%al, %ax
	leal	(%ecx,%eax), %eax
	movw	%ax, (%esi)
	.loc 1 1662 0
	movl	-132(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_next_in_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
.L528:
	cmpl	$0, -132(%ebp)
	jns	.L529
.L526:
	.loc 1 1659 0
	addl	$1, -128(%ebp)
.L524:
	movl	next_qty@GOTOFF(%ebx), %eax
	cmpl	%eax, -128(%ebp)
	jl	.L525
	.loc 1 1667 0
	movl	regs_live_at@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1668 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1669 0
	addl	$284, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	block_alloc, .-block_alloc
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1076101120
	.text
	.type	qty_compare, @function
qty_compare:
.LFB28:
	.loc 1 1695 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$16, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1696 0
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-10(%ebp)
	movzwl	-10(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -12(%ebp)
	fldcw	-12(%ebp)
	fistpl	-16(%ebp)
	fldcw	-10(%ebp)
	movl	-16(%ebp), %esi
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-10(%ebp)
	movzwl	-10(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -12(%ebp)
	fldcw	-12(%ebp)
	fistpl	-16(%ebp)
	fldcw	-10(%ebp)
	movl	-16(%ebp), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 1697 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	qty_compare, .-qty_compare
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1076101120
	.text
	.type	qty_compare_1, @function
qty_compare_1:
.LFB29:
	.loc 1 1703 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%esi
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$48, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1704 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1705 0
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC2@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %esi
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC2@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1707 0
	cmpl	$0, -12(%ebp)
	je	.L535
	.loc 1 1708 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L537
.L535:
	.loc 1 1712 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -36(%ebp)
.L537:
	movl	-36(%ebp), %eax
	.loc 1 1713 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	qty_compare_1, .-qty_compare_1
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1076101120
	.text
	.type	qty_sugg_compare, @function
qty_sugg_compare:
.LFB30:
	.loc 1 1730 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%esi
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$48, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1731 0
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L540
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -44(%ebp)
	jmp	.L542
.L540:
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	imull	$176, %eax, %eax
	movl	%eax, -44(%ebp)
.L542:
	movl	12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L543
	movl	12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -40(%ebp)
	jmp	.L545
.L543:
	movl	12(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	imull	$176, %eax, %eax
	movl	%eax, -40(%ebp)
.L545:
	movl	-44(%ebp), %eax
	subl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1733 0
	cmpl	$0, -12(%ebp)
	je	.L546
	.loc 1 1734 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L548
.L546:
	.loc 1 1736 0
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC3@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %esi
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC3@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, -36(%ebp)
.L548:
	movl	-36(%ebp), %eax
	.loc 1 1737 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	qty_sugg_compare, .-qty_sugg_compare
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.text
	.type	qty_sugg_compare_1, @function
qty_sugg_compare_1:
.LFB31:
	.loc 1 1743 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$48, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1744 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1745 0
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L551
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -44(%ebp)
	jmp	.L553
.L551:
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	imull	$176, %eax, %eax
	movl	%eax, -44(%ebp)
.L553:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L554
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -40(%ebp)
	jmp	.L556
.L554:
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	imull	$176, %eax, %eax
	movl	%eax, -40(%ebp)
.L556:
	movl	-44(%ebp), %eax
	subl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1747 0
	cmpl	$0, -12(%ebp)
	je	.L557
	.loc 1 1748 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L559
.L557:
	.loc 1 1750 0
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC4@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %esi
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	imull	%eax, %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	imull	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fldl	.LC4@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1751 0
	cmpl	$0, -12(%ebp)
	je	.L560
	.loc 1 1752 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L559
.L560:
	.loc 1 1756 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -36(%ebp)
.L559:
	movl	-36(%ebp), %eax
	.loc 1 1757 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	qty_sugg_compare_1, .-qty_sugg_compare_1
	.type	combine_regs, @function
combine_regs:
.LFB32:
	.loc 1 1791 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%esi
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$236, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1793 0
	movl	$0, -44(%ebp)
	.loc 1 1801 0
	jmp	.L564
.L565:
.LBB27:
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1805 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L566
	.loc 1 1807 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -212(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L568
	movl	$8, -208(%ebp)
	jmp	.L570
.L568:
	movl	$4, -208(%ebp)
.L570:
	movl	-208(%ebp), %eax
	cmpl	%eax, -212(%ebp)
	jle	.L571
	.loc 1 1808 0
	movl	$0, 16(%ebp)
.L571:
	.loc 1 1810 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L573
	.loc 1 1811 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L566
.L573:
	.loc 1 1816 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -204(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L575
	movl	$8, -200(%ebp)
	jmp	.L577
.L575:
	movl	$4, -200(%ebp)
.L577:
	movl	-204(%ebp), %eax
	movl	$0, %edx
	divl	-200(%ebp)
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
.L566:
	.loc 1 1820 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%ebp)
.L564:
.LBE27:
	.loc 1 1801 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L565
	.loc 1 1823 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L579
	.loc 1 1824 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L579:
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1827 0
	cmpl	$175, -52(%ebp)
	jg	.L582
	.loc 1 1828 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -40(%ebp)
	jmp	.L591
.L582:
	.loc 1 1830 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -192(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L585
	movl	$7, -188(%ebp)
	jmp	.L587
.L585:
	movl	$3, -188(%ebp)
.L587:
	movl	-192(%ebp), %edx
	addl	-188(%ebp), %edx
	movl	%edx, -184(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L588
	movl	$8, -180(%ebp)
	jmp	.L590
.L588:
	movl	$4, -180(%ebp)
.L590:
	movl	-184(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-180(%ebp)
	movl	%eax, -40(%ebp)
	.loc 1 1834 0
	jmp	.L591
.L592:
.LBB28:
	.loc 1 1836 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1838 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L593
	.loc 1 1840 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -176(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L595
	movl	$8, -172(%ebp)
	jmp	.L597
.L595:
	movl	$4, -172(%ebp)
.L597:
	movl	-172(%ebp), %ecx
	cmpl	%ecx, -176(%ebp)
	jle	.L598
	.loc 1 1841 0
	movl	$0, 16(%ebp)
.L598:
	.loc 1 1843 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L600
	.loc 1 1844 0
	movl	-44(%ebp), %edi
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	12(%eax), %esi
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%edi, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -44(%ebp)
	jmp	.L593
.L600:
	.loc 1 1849 0
	movl	-44(%ebp), %edi
	movl	%edi, -168(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -164(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L602
	movl	$8, -160(%ebp)
	jmp	.L604
.L602:
	movl	$4, -160(%ebp)
.L604:
	movl	-164(%ebp), %eax
	movl	$0, %edx
	divl	-160(%ebp)
	movl	-168(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%ebp)
.L593:
	.loc 1 1853 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%ebp)
.L591:
.LBE28:
	.loc 1 1834 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L592
	.loc 1 1856 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L606
	.loc 1 1857 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L606:
	.loc 1 1859 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1860 0
	cmpl	$175, -48(%ebp)
	jg	.L608
	.loc 1 1861 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	jmp	.L610
.L608:
	.loc 1 1863 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -156(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L611
	movl	$7, -152(%ebp)
	jmp	.L613
.L611:
	movl	$3, -152(%ebp)
.L613:
	movl	-156(%ebp), %ecx
	addl	-152(%ebp), %ecx
	movl	%ecx, -148(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L614
	movl	$8, -144(%ebp)
	jmp	.L616
.L614:
	movl	$4, -144(%ebp)
.L616:
	movl	-148(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-144(%ebp)
	movl	%eax, -36(%ebp)
.L610:
	.loc 1 1870 0
	cmpl	$175, -52(%ebp)
	jle	.L617
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L619
.L617:
	cmpl	$0, -44(%ebp)
	jle	.L620
	movl	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jg	.L619
.L620:
	cmpl	$0, -44(%ebp)
	jns	.L622
	movl	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L619
.L622:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jle	.L624
	cmpl	$175, -52(%ebp)
	jle	.L624
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L619
.L624:
	cmpl	$175, -48(%ebp)
	jle	.L627
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L619
.L627:
	cmpl	$175, -52(%ebp)
	jle	.L629
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L619
.L629:
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L619
	cmpl	$175, -52(%ebp)
	jg	.L632
	cmpl	$175, -48(%ebp)
	jle	.L619
.L632:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L634
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L636
.L634:
	movl	$1, -140(%ebp)
	jmp	.L637
.L636:
	movl	$0, -140(%ebp)
.L637:
	movzbl	-140(%ebp), %eax
	movb	%al, -133(%ebp)
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L638
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	jne	.L640
.L638:
	movl	$1, -132(%ebp)
	jmp	.L641
.L640:
	movl	$0, -132(%ebp)
.L641:
	movzbl	-132(%ebp), %eax
	xorb	-133(%ebp), %al
	testb	%al, %al
	je	.L642
.L619:
	.loc 1 1894 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L642:
	.loc 1 1903 0
	cmpl	$175, -52(%ebp)
	jg	.L643
	.loc 1 1907 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L645
	.loc 1 1908 0
	movl	20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_is_born
.L645:
	.loc 1 1910 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L647
	.loc 1 1912 0
	cmpl	$0, 16(%ebp)
	je	.L649
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	shrl	$6, %eax
	leal	(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-52(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L681
	movl	%edx, %eax
	xorl	%edx, %edx
.L681:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L649
	.loc 1 1915 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -128(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-52(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L680
	movl	%esi, %edi
	xorl	%esi, %esi
.L680:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	.loc 1 1916 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	(%edx), %eax
	addl	$1, %eax
	movw	%ax, (%edx)
	.loc 1 1912 0
	jmp	.L647
.L649:
	.loc 1 1918 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	shrl	$6, %eax
	leal	(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-52(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L679
	movl	%edx, %eax
	xorl	%edx, %edx
.L679:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L647
	.loc 1 1920 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -112(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-52(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L678
	movl	%esi, %edi
	xorl	%esi, %esi
.L678:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	.loc 1 1921 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	(%edx), %eax
	addl	$1, %eax
	movw	%ax, (%edx)
.L647:
	.loc 1 1924 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L643:
	.loc 1 1929 0
	cmpl	$175, -48(%ebp)
	jg	.L653
	.loc 1 1931 0
	cmpl	$0, 16(%ebp)
	je	.L655
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	leal	(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L677
	movl	%edx, %eax
	xorl	%edx, %edx
.L677:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L655
	.loc 1 1934 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -96(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L676
	movl	%esi, %edi
	xorl	%esi, %esi
.L676:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	.loc 1 1935 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	(%edx), %eax
	addl	$1, %eax
	movw	%ax, (%edx)
	.loc 1 1931 0
	jmp	.L658
.L655:
	.loc 1 1937 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	leal	(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L675
	movl	%edx, %eax
	xorl	%edx, %edx
.L675:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L658
	.loc 1 1939 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -80(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L674
	movl	%esi, %edi
	xorl	%esi, %esi
.L674:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	.loc 1 1940 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movzwl	(%edx), %eax
	addl	$1, %eax
	movw	%ax, (%edx)
.L658:
	.loc 1 1942 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L653:
	.loc 1 1948 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jge	.L660
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L662
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	setg	%cl
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	setg	%al
	xorl	%ecx, %eax
	testb	%al, %al
	je	.L662
.L660:
	.loc 1 1954 0
	movl	$0, -196(%ebp)
	jmp	.L581
.L662:
	.loc 1 1960 0
	cmpl	$0, 28(%ebp)
	jne	.L664
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L666
.L664:
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_meets_class_p
	testl	%eax, %eax
	je	.L666
	.loc 1 1964 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1965 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1966 0
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	-52(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	%al, (%ecx)
	.loc 1 1967 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_next_in_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1968 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1971 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	update_qty_class
	.loc 1 1974 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 20(%esi)
	.loc 1 1975 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, (%esi)
	.loc 1 1976 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	20(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 4(%esi)
	.loc 1 1977 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jge	.L668
.LBB29:
	.loc 1 1981 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L670
.L671:
	.loc 1 1982 0
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	reg_offset@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -217(%ebp)
	movl	-44(%ebp), %eax
	movzbl	-217(%ebp), %edx
	subb	%al, %dl
	movl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 1981 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_next_in_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L670:
	cmpl	$0, -20(%ebp)
	jns	.L671
	.loc 1 1984 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1985 0
	movl	-32(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 36(%edx)
.L668:
.LBE29:
	.loc 1 1991 0
	movl	$1, -196(%ebp)
	jmp	.L581
.L666:
	.loc 1 1989 0
	movl	$0, -196(%ebp)
.L581:
	movl	-196(%ebp), %eax
	.loc 1 1992 0
	addl	$236, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	combine_regs, .-combine_regs
	.type	reg_meets_class_p, @function
reg_meets_class_p:
.LFB33:
	.loc 1 2002 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$36, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2003 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2004 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	jne	.L683
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L685
.L683:
	movl	$1, -24(%ebp)
	jmp	.L686
.L685:
	movl	$0, -24(%ebp)
.L686:
	movl	-24(%ebp), %eax
	.loc 1 2006 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	reg_meets_class_p, .-reg_meets_class_p
	.type	update_qty_class, @function
update_qty_class:
.LFB34:
	.loc 1 2014 0
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
	.loc 1 2015 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2016 0
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L689
	.loc 1 2017 0
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 28(%edx)
.L689:
	.loc 1 2019 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2020 0
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_class_subset_p@PLT
	testl	%eax, %eax
	je	.L693
	.loc 1 2021 0
	movl	8(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 32(%edx)
.L693:
	.loc 1 2022 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	update_qty_class, .-update_qty_class
	.type	reg_is_set, @function
reg_is_set:
.LFB35:
	.loc 1 2038 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$20, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2042 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L695
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L698
.L695:
	.loc 1 2050 0
	movl	this_insn_number@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_is_born
.L698:
	.loc 1 2051 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	reg_is_set, .-reg_is_set
	.type	reg_is_born, @function
reg_is_born:
.LFB36:
	.loc 1 2060 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	pushl	%ebx
.LCFI96:
	subl	$52, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2063 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L700
	.loc 1 2065 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2066 0
	cmpl	$175, -8(%ebp)
	jg	.L704
	.loc 1 2067 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_hard_regno@PLT
	movl	%eax, -8(%ebp)
	jmp	.L704
.L700:
	.loc 1 2070 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L704:
	.loc 1 2072 0
	cmpl	$175, -8(%ebp)
	jg	.L705
	.loc 1 2074 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_life
	.loc 1 2078 0
	movl	this_insn_number@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	cmpl	12(%ebp), %eax
	jle	.L719
	.loc 1 2079 0
	movl	this_insn_number@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	post_mark_life
	jmp	.L719
.L705:
	.loc 1 2083 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L710
	.loc 1 2084 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L712
	movl	$8, -32(%ebp)
	jmp	.L714
.L712:
	movl	$4, -32(%ebp)
.L714:
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L715
	movl	$8, -24(%ebp)
	jmp	.L717
.L715:
	movl	$4, -24(%ebp)
.L717:
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-24(%ebp)
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_qty
.L710:
	.loc 1 2087 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L719
	.loc 1 2088 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$-1, 12(%eax)
.L719:
	.loc 1 2090 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	reg_is_born, .-reg_is_born
	.type	wipe_dead_reg, @function
wipe_dead_reg:
.LFB37:
	.loc 1 2101 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$36, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2115 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L721
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	multiple_sets@PLT
	testl	%eax, %eax
	je	.L721
.LBB30:
	.loc 1 2119 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L724
.L725:
.LBB31:
	.loc 1 2121 0
	movl	this_insn@GOTOFF(%ebx), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2122 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L726
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L726
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L726
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L726
	.loc 1 2126 0
	movl	$1, 12(%ebp)
.L726:
.LBE31:
	.loc 1 2119 0
	subl	$1, -12(%ebp)
.L724:
	cmpl	$0, -12(%ebp)
	jns	.L725
.L721:
.LBE30:
	.loc 1 2133 0
	cmpl	$0, 12(%ebp)
	jne	.L731
	movl	-16(%ebp), %eax
	movl	this_insn@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	%edx, (%esp)
	call	find_regno_note@PLT
	testl	%eax, %eax
	je	.L731
	.loc 1 2134 0
	movl	$1, 12(%ebp)
.L731:
	.loc 1 2136 0
	cmpl	$175, -16(%ebp)
	jg	.L734
	.loc 1 2138 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_life
	.loc 1 2143 0
	cmpl	$0, 12(%ebp)
	je	.L740
	.loc 1 2144 0
	movl	this_insn_number@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	leal	1(%eax), %ecx
	movl	this_insn_number@GOTOFF(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	post_mark_life
	jmp	.L740
.L734:
	.loc 1 2148 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	.L740
	.loc 1 2149 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	reg_qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	this_insn_number@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	addl	12(%ebp), %eax
	movl	%eax, 12(%edx)
.L740:
	.loc 1 2150 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	wipe_dead_reg, .-wipe_dead_reg
	.section	.rodata
	.type	__FUNCTION__.14091, @object
	.size	__FUNCTION__.14091, 14
__FUNCTION__.14091:
	.string	"find_free_reg"
	.align 32
	.type	eliminables.14090, @object
	.size	eliminables.14090, 72
eliminables.14090:
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
	.type	find_free_reg, @function
find_free_reg:
.LFB38:
	.loc 1 2173 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%edi
.LCFI104:
	pushl	%esi
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$380, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2181 0
	cmpl	$0, 28(%ebp)
	js	.L742
	movl	28(%ebp), %eax
	cmpl	32(%ebp), %eax
	jle	.L744
.L742:
	.loc 1 2182 0
	leal	__FUNCTION__.14091@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2182, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L744:
	.loc 1 2186 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L745
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jle	.L745
	.loc 1 2188 0
	movl	$-1, -356(%ebp)
	jmp	.L748
.L745:
	.loc 1 2190 0
	cmpl	$0, 20(%ebp)
	je	.L749
.LBB32:
	.loc 1 2191 0
	leal	-168(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	call_fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-108(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$8, %ecx
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$16, %ecx
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L751
.L749:
.LBE32:
	.loc 1 2192 0
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L752
.LBB33:
	.loc 1 2193 0
	leal	-168(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-100(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-100(%ebp), %ecx
	addl	$8, %ecx
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-100(%ebp), %ecx
	addl	$16, %ecx
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L751
.L752:
.LBE33:
.LBB34:
	.loc 1 2195 0
	leal	-168(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-92(%ebp), %ecx
	addl	$8, %ecx
	movl	-88(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-92(%ebp), %ecx
	addl	$16, %ecx
	movl	-88(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L751:
.LBE34:
	.loc 1 2197 0
	cmpl	$0, 20(%ebp)
	je	.L754
.LBB35:
	.loc 1 2198 0
	leal	-168(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	losing_caller_save_reg_set@GOT(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -352(%ebp)
	movl	%ecx, -348(%ebp)
	movl	-80(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-352(%ebp), %eax
	orl	%esi, %eax
	movl	-348(%ebp), %edx
	orl	%edi, %edx
	movl	-84(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-84(%ebp), %ecx
	addl	$8, %ecx
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-344(%ebp), %eax
	orl	%esi, %eax
	movl	-340(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-84(%ebp), %ecx
	addl	$16, %ecx
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -336(%ebp)
	movl	%edi, -332(%ebp)
	movl	-80(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-336(%ebp), %eax
	orl	%esi, %eax
	movl	-332(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L754:
.LBE35:
	.loc 1 2200 0
	movl	28(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L756
.L757:
.LBB36:
	.loc 1 2201 0
	leal	-168(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-112(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	regs_live_at@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-76(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -328(%ebp)
	movl	%ecx, -324(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-328(%ebp), %eax
	orl	%esi, %eax
	movl	-324(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-76(%ebp), %ecx
	addl	$8, %ecx
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -320(%ebp)
	movl	%edi, -316(%ebp)
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-320(%ebp), %eax
	orl	%esi, %eax
	movl	-316(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-76(%ebp), %ecx
	addl	$16, %ecx
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -312(%ebp)
	movl	%edi, -308(%ebp)
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-312(%ebp), %eax
	orl	%esi, %eax
	movl	-308(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE36:
	.loc 1 2200 0
	addl	$1, -112(%ebp)
.L756:
	movl	-112(%ebp), %eax
	cmpl	32(%ebp), %eax
	jl	.L757
.LBB37:
	.loc 1 2203 0
	leal	-168(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -304(%ebp)
	movl	%ecx, -300(%ebp)
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-304(%ebp), %eax
	orl	%esi, %eax
	movl	-300(%ebp), %edx
	orl	%edi, %edx
	movl	-68(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-68(%ebp), %ecx
	addl	$8, %ecx
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-296(%ebp), %eax
	orl	%esi, %eax
	movl	-292(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-68(%ebp), %ecx
	addl	$16, %ecx
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -288(%ebp)
	movl	%edi, -284(%ebp)
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-288(%ebp), %eax
	orl	%esi, %eax
	movl	-284(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE37:
	.loc 1 2212 0
	movl	$0, -116(%ebp)
	jmp	.L759
.L760:
	.loc 1 2213 0
	movl	-116(%ebp), %eax
	movl	eliminables.14090@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -276(%ebp)
	movl	-116(%ebp), %eax
	movl	eliminables.14090@GOTOFF(%ebx,%eax,8), %eax
	shrl	$6, %eax
	movl	-168(%ebp,%eax,8), %edx
	movl	-164(%ebp,%eax,8), %ecx
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	movl	-116(%ebp), %eax
	movl	eliminables.14090@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L798
	movl	%esi, %edi
	xorl	%esi, %esi
.L798:
	movl	-272(%ebp), %eax
	orl	%esi, %eax
	movl	-268(%ebp), %edx
	orl	%edi, %edx
	movl	-276(%ebp), %ecx
	movl	%eax, -168(%ebp,%ecx,8)
	movl	%edx, -164(%ebp,%ecx,8)
	.loc 1 2212 0
	addl	$1, -116(%ebp)
.L759:
	cmpl	$8, -116(%ebp)
	jle	.L760
	.loc 1 2217 0
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	movl	%esi, -264(%ebp)
	movl	%edi, -260(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L762
	movl	$131072, -256(%ebp)
	movl	$0, -252(%ebp)
	jmp	.L764
.L762:
	movl	$1073741824, -256(%ebp)
	movl	$0, -252(%ebp)
.L764:
	movl	-264(%ebp), %eax
	orl	-256(%ebp), %eax
	movl	-260(%ebp), %edx
	orl	-252(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 2224 0
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	cannot_change_mode_set_regs@PLT
.LBB38:
	.loc 1 2233 0
	leal	-144(%ebp), %eax
	movl	%eax, -60(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE38:
	.loc 1 2235 0
	cmpl	$0, 24(%ebp)
	je	.L765
	.loc 1 2237 0
	movl	16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L767
.LBB39:
	.loc 1 2238 0
	leal	-144(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -248(%ebp)
	movl	%ecx, -244(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-248(%ebp), %eax
	orl	%esi, %eax
	movl	-244(%ebp), %edx
	orl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$8, %ecx
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -240(%ebp)
	movl	%edi, -236(%ebp)
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-240(%ebp), %eax
	orl	%esi, %eax
	movl	-236(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$16, %ecx
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -232(%ebp)
	movl	%edi, -228(%ebp)
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-232(%ebp), %eax
	orl	%esi, %eax
	movl	-228(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L765
.L767:
.LBE39:
.LBB40:
	.loc 1 2240 0
	leal	-144(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	qty_phys_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -224(%ebp)
	movl	%ecx, -220(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-224(%ebp), %eax
	orl	%esi, %eax
	movl	-220(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-208(%ebp), %eax
	orl	%esi, %eax
	movl	-204(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L765:
.LBE40:
.LBB41:
	.loc 1 2244 0
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	576(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	-144(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -200(%ebp)
	movl	%ecx, -196(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-200(%ebp), %eax
	andl	%esi, %eax
	movl	-196(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L769
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -192(%ebp)
	movl	%edi, -188(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-192(%ebp), %eax
	andl	%esi, %eax
	movl	-188(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L769
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -184(%ebp)
	movl	%ecx, -180(%ebp)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-184(%ebp), %eax
	andl	%esi, %eax
	movl	-180(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L772
.L769:
.LBE41:
	.loc 1 2248 0
	movl	$0, -116(%ebp)
	jmp	.L773
.L774:
.LBB42:
	.loc 1 2251 0
	movl	-116(%ebp), %edx
	movl	reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2255 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	-140(%ebp,%eax,8), %edx
	movl	-144(%ebp,%eax,8), %eax
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L797
	movl	%edx, %eax
	xorl	%edx, %edx
.L797:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L775
	movl	12(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L775
.LBB43:
	.loc 1 2262 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2263 0
	movl	$1, -24(%ebp)
	jmp	.L778
.L779:
	addl	$1, -24(%ebp)
.L778:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L780
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	-168(%ebp,%eax,8), %esi
	movl	-164(%ebp,%eax,8), %edi
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L796
	movl	%edx, %eax
	xorl	%edx, %edx
.L796:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L779
.L780:
	.loc 1 2264 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L775
	.loc 1 2268 0
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	post_mark_life
	.loc 1 2269 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -356(%ebp)
	jmp	.L748
.L775:
.LBE43:
.LBE42:
	.loc 1 2248 0
	addl	$1, -116(%ebp)
.L773:
	cmpl	$175, -116(%ebp)
	jle	.L774
.L772:
	.loc 1 2285 0
	cmpl	$0, 24(%ebp)
	je	.L783
	movl	16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L783
	movl	16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	je	.L783
	.loc 1 2289 0
	movl	16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	qty_phys_num_copy_sugg@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movw	$0, (%eax)
	.loc 1 2290 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_free_reg
	movl	%eax, -356(%ebp)
	jmp	.L748
.L783:
	.loc 1 2298 0
	cmpl	$0, 20(%ebp)
	jne	.L787
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L787
	cmpl	$0, 24(%ebp)
	jne	.L787
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L787
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	16(%ebp), %eax
	imull	$44, %eax, %eax
	movl	%eax, %edx
	movl	qty@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L787
	.loc 1 2305 0
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_free_reg
	movl	%eax, -116(%ebp)
	.loc 1 2306 0
	cmpl	$0, -116(%ebp)
	js	.L793
	.loc 1 2307 0
	movl	caller_save_needed@GOT(%ebx), %eax
	movl	$1, (%eax)
.L793:
	.loc 1 2308 0
	movl	-116(%ebp), %esi
	movl	%esi, -356(%ebp)
	jmp	.L748
.L787:
	.loc 1 2310 0
	movl	$-1, -356(%ebp)
.L748:
	movl	-356(%ebp), %eax
	.loc 1 2311 0
	addl	$380, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	find_free_reg, .-find_free_reg
	.type	mark_life, @function
mark_life:
.LFB39:
	.loc 1 2322 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$60, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2323 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2324 0
	cmpl	$0, 16(%ebp)
	je	.L806
	.loc 1 2325 0
	jmp	.L802
.L803:
	.loc 1 2326 0
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	regs_live@GOTOFF(%ebx,%eax,8), %edx
	movl	4+regs_live@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L810
	movl	%esi, %edi
	xorl	%esi, %esi
.L810:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, regs_live@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+regs_live@GOTOFF(%ebx,%ecx,8)
.L802:
	.loc 1 2325 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L803
	jmp	.L808
.L807:
	.loc 1 2329 0
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	regs_live@GOTOFF(%ebx,%eax,8), %edx
	movl	4+regs_live@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L809
	movl	%eax, %edx
	xorl	%eax, %eax
.L809:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, regs_live@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+regs_live@GOTOFF(%ebx,%ecx,8)
.L806:
	.loc 1 2328 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L807
.L808:
	.loc 1 2330 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	mark_life, .-mark_life
	.type	post_mark_life, @function
post_mark_life:
.LFB40:
	.loc 1 2341 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%edi
.LCFI116:
	pushl	%esi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$124, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2342 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -40(%ebp)
.LBB44:
	.loc 1 2349 0
	leal	-64(%ebp), %eax
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
	.loc 1 2350 0
	jmp	.L812
.L813:
.LBE44:
	.loc 1 2351 0
	movl	-40(%ebp), %eax
	addl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -124(%ebp)
	movl	-64(%ebp,%eax,8), %edx
	movl	-60(%ebp,%eax,8), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-40(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L824
	movl	%esi, %edi
	xorl	%esi, %esi
.L824:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %ecx
	movl	%eax, -64(%ebp,%ecx,8)
	movl	%edx, -60(%ebp,%ecx,8)
.L812:
	.loc 1 2350 0
	subl	$1, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jns	.L813
	.loc 1 2353 0
	cmpl	$0, 16(%ebp)
	je	.L821
	.loc 1 2354 0
	jmp	.L817
.L818:
.LBB45:
	.loc 1 2356 0
	movl	20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	regs_live_at@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE45:
	.loc 1 2357 0
	addl	$1, 20(%ebp)
.L817:
	.loc 1 2354 0
	movl	20(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	.L818
	jmp	.L823
.L822:
.LBB46:
	.loc 1 2362 0
	movl	20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	regs_live_at@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-80(%ebp), %eax
	andl	%esi, %eax
	movl	-76(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE46:
	.loc 1 2363 0
	addl	$1, 20(%ebp)
.L821:
	.loc 1 2360 0
	movl	20(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	.L822
.L823:
	.loc 1 2365 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	post_mark_life, .-post_mark_life
	.type	no_conflict_p, @function
no_conflict_p:
.LFB41:
	.loc 1 2379 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$36, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2380 0
	movl	$0, -20(%ebp)
	.loc 1 2381 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2387 0
	cmpl	$0, -16(%ebp)
	je	.L826
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L828
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L826
.L828:
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L830
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L830
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L830
.L826:
	.loc 1 2391 0
	movl	$0, -24(%ebp)
	jmp	.L833
.L830:
	.loc 1 2393 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2395 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L834
.L835:
	.loc 1 2396 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L836
	.loc 1 2398 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L838
	.loc 1 2399 0
	movl	$1, -20(%ebp)
.L838:
	.loc 1 2406 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L836
	.loc 1 2407 0
	movl	$0, -24(%ebp)
	jmp	.L833
.L836:
	.loc 1 2395 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L834:
	cmpl	$0, -12(%ebp)
	je	.L841
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L835
.L841:
	.loc 1 2410 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L833:
	movl	-24(%ebp), %eax
	.loc 1 2411 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	no_conflict_p, .-no_conflict_p
	.type	requires_inout, @function
requires_inout:
.LFB42:
	.loc 1 2420 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	subl	$20, %esp
.LCFI126:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2422 0
	movl	$0, -16(%ebp)
	.loc 1 2423 0
	movl	$0, -12(%ebp)
	.loc 1 2424 0
	movl	$0, -8(%ebp)
	.loc 1 2426 0
	jmp	.L865
.L846:
	.loc 1 2427 0
	movzbl	-1(%ebp), %eax
	subl	$33, %eax
	movl	%eax, -20(%ebp)
	cmpl	$82, -20(%ebp)
	ja	.L847
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L853@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L853:
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L849@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L850@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L852@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L847@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L845@GOTOFF
	.long	.L852@GOTOFF
	.long	.L847@GOTOFF
	.long	.L852@GOTOFF
	.long	.L845@GOTOFF
	.text
.L849:
	.loc 1 2442 0
	cmpl	$0, -16(%ebp)
	je	.L854
	cmpl	$0, -12(%ebp)
	jne	.L854
	.loc 1 2443 0
	addl	$1, -8(%ebp)
.L854:
	.loc 1 2445 0
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2446 0
	jmp	.L845
.L850:
	.loc 1 2449 0
	movl	$1, -16(%ebp)
	.loc 1 2450 0
	jmp	.L845
.L858:
	.loc 1 2456 0
	addl	$1, 8(%ebp)
.L857:
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L858
	.loc 1 2457 0
	jmp	.L845
.L847:
	.loc 1 2460 0
	movzbl	-1(%ebp), %eax
	movl	mips_char_to_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L845
.L852:
	.loc 1 2466 0
	movl	$1, -12(%ebp)
.L845:
.L865:
	.loc 1 2426 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L846
	.loc 1 2470 0
	cmpl	$0, -16(%ebp)
	je	.L861
	cmpl	$0, -12(%ebp)
	jne	.L861
	.loc 1 2471 0
	addl	$1, -8(%ebp)
.L861:
	.loc 1 2473 0
	movl	-8(%ebp), %eax
	.loc 1 2474 0
	leave
	ret
.LFE42:
	.size	requires_inout, .-requires_inout
	.section	.rodata
.LC5:
	.string	";; Register %d in %d.\n"
	.text
.globl dump_local_alloc
	.type	dump_local_alloc, @function
dump_local_alloc:
.LFB43:
	.loc 1 2479 0
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
	.loc 1 2481 0
	movl	$176, -8(%ebp)
	jmp	.L867
.L868:
	.loc 1 2482 0
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$-1, %ax
	je	.L869
	.loc 1 2483 0
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L869:
	.loc 1 2481 0
	addl	$1, -8(%ebp)
.L867:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L868
	.loc 1 2484 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	dump_local_alloc, .-dump_local_alloc
	.local	next_qty
	.comm	next_qty,4,4
	.local	qty
	.comm	qty,4,4
	.local	qty_phys_copy_sugg
	.comm	qty_phys_copy_sugg,4,4
	.local	qty_phys_sugg
	.comm	qty_phys_sugg,4,4
	.local	qty_phys_num_copy_sugg
	.comm	qty_phys_num_copy_sugg,4,4
	.local	qty_phys_num_sugg
	.comm	qty_phys_num_sugg,4,4
	.local	reg_next_in_qty
	.comm	reg_next_in_qty,4,4
	.local	reg_qty
	.comm	reg_qty,4,4
	.local	reg_offset
	.comm	reg_offset,4,4
	.local	regs_live
	.comm	regs_live,24,8
	.local	regs_live_at
	.comm	regs_live_at,4,4
	.local	this_insn_number
	.comm	this_insn_number,4,4
	.local	this_insn
	.comm	this_insn,4,4
	.local	reg_equiv
	.comm	reg_equiv,4,4
	.local	recorded_label_ref
	.comm	recorded_label_ref,4,4
	.local	equiv_mem
	.comm	equiv_mem,4,4
	.local	equiv_mem_modified
	.comm	equiv_mem_modified,4,4
	.comm	reg_renumber,4,4
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
	.long	.LCFI13-.LCFI11
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
	.long	.LCFI14-.LFB18
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI18-.LFB19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI22-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI27
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
	.long	.LCFI30-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI34-.LFB23
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
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
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
	.byte	0x4
	.long	.LCFI45-.LCFI42
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
	.long	.LCFI55-.LCFI51
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
	.long	.LCFI56-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI57
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
	.long	.LCFI61-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI62
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI66-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI67
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
	.long	.LCFI71-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI72
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
	.long	.LCFI76-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI77
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
	.long	.LCFI82-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI83
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
	.long	.LCFI86-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI90-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI94-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI95
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
	.long	.LCFI98-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI99
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
	.long	.LCFI102-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI103
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI108-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI109
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
	.long	.LCFI114-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI115
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
	.long	.LCFI120-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI121
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
	.long	.LCFI124-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
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
	.long	.LCFI127-.LFB43
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
.LEFDE56:
	.file 2 "../../../kg++fe/gnu/machmode.h"
	.file 3 "../../../kg++fe/gnu/basic-block.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/MIPS/config.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "../../../include/gnu/safe-ctype.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/varray.h"
	.file 17 "../../../kg++fe/gnu/regs.h"
	.file 18 "../../../kg++fe/gnu/function.h"
	.file 19 "../../../kg++fe/gnu/recog.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI98-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI99-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4ec6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/local-alloc.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xab
	.uleb128 0x3
	.byte	0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0xbca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x4
	.byte	0x87
	.long	0x8d2
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x17e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1ad
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3
	.uleb128 0x4
	.long	0x1e8
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x17f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
	.byte	0x10
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1fa
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x9
	.long	0x211
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x396
	.string	"reg_class"
	.byte	0x4
	.byte	0x9
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
	.long	0x468
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x47f
	.long	0xa0
	.uleb128 0x11
	.long	0x47f
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x396
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
	.byte	0xd6
	.long	0x468
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
	.long	0x504
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xc
	.byte	0x90
	.long	0x54e
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xc
	.byte	0x91
	.long	0x52f
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x57f
	.uleb128 0x14
	.long	0x7fa
	.long	.LASF2
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x851
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x53f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x85d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x86d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x55a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x873
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ac
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0x4
	.long	0x851
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x851
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80e
	.uleb128 0x3
	.byte	0x4
	.long	0x57f
	.uleb128 0x10
	.long	0x86d
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x800
	.uleb128 0x10
	.long	0x883
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0x27
	.byte	0x0
	.uleb128 0x9
	.long	0x219
	.uleb128 0x3
	.byte	0x4
	.long	0x219
	.uleb128 0x3
	.byte	0x4
	.long	0x894
	.uleb128 0x16
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x8
	.byte	0x29
	.long	0x515
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x8
	.byte	0x34
	.long	0x8c2
	.uleb128 0x10
	.long	0x8d2
	.long	0x895
	.uleb128 0x11
	.long	0x47f
	.byte	0x2
	.byte	0x0
	.uleb128 0x17
	.long	0xb1b
	.string	"machine_mode"
	.byte	0x4
	.byte	0x2
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
	.long	0xbca
	.long	.LASF3
	.byte	0x4
	.byte	0x2
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
	.long	0x1399
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
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
	.long	0x1473
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x468
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
	.long	0x1399
	.uleb128 0x14
	.long	0x14ea
	.long	.LASF4
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x4
	.byte	0x68
	.long	0x148e
	.uleb128 0x1b
	.long	0x15c7
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1c
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x504
	.uleb128 0x1c
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x219
	.uleb128 0x1c
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x468
	.uleb128 0x1c
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x206
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0xa0
	.uleb128 0x1c
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x1a0
	.uleb128 0x1c
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x8d2
	.uleb128 0x1c
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x1473
	.uleb128 0x1c
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x15db
	.uleb128 0x1c
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x1643
	.uleb128 0x1c
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e8
	.uleb128 0x1c
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x17c7
	.uleb128 0x1c
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x17cd
	.byte	0x0
	.uleb128 0x1d
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15c7
	.uleb128 0x4
	.long	0x1643
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x189f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x189f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15e1
	.uleb128 0x4
	.long	0x17c7
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x3
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x3
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x3
	.byte	0xb8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x3
	.byte	0xb9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x3
	.byte	0xbc
	.long	0x1fb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x3
	.byte	0xbc
	.long	0x1fb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x3
	.byte	0xc1
	.long	0x1ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x3
	.byte	0xc5
	.long	0x1ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x3
	.byte	0xcb
	.long	0x1ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x3
	.byte	0xcd
	.long	0x1ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x3
	.byte	0xd0
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0xd3
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x17c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x17c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x3
	.byte	0xd9
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x3
	.byte	0xdc
	.long	0x222f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x3
	.byte	0xdf
	.long	0x1ef1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x3
	.byte	0xe2
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x3
	.byte	0xe5
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1649
	.uleb128 0x3
	.byte	0x4
	.long	0x14ea
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x14f5
	.uleb128 0x10
	.long	0x17f2
	.long	0x17d3
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1802
	.long	0xa0
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x4d3
	.uleb128 0x4
	.long	0x1873
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x1873
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x1873
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x1879
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x181b
	.uleb128 0x10
	.long	0x1889
	.long	0x1808
	.uleb128 0x11
	.long	0x47f
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x181b
	.uleb128 0x3
	.byte	0x4
	.long	0x1889
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x6
	.byte	0x42
	.long	0x15e1
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1643
	.uleb128 0x4
	.long	0x1920
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1920
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x1930
	.long	0x515
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x193f
	.uleb128 0x3
	.byte	0x4
	.long	0x18c6
	.uleb128 0x4
	.long	0x197b
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x10
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x1b16
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x10
	.byte	0x3c
	.uleb128 0xc
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xc
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xc
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xc
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xc
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xc
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xc
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xc
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xc
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xc
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xc
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xc
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xc
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xc
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xc
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xc
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xc
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xc
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xc
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xc
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xc
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c12
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x10
	.byte	0x55
	.uleb128 0x1c
	.string	"c"
	.byte	0x10
	.byte	0x56
	.long	0x85d
	.uleb128 0x1c
	.string	"uc"
	.byte	0x10
	.byte	0x58
	.long	0x1c12
	.uleb128 0x1c
	.string	"s"
	.byte	0x10
	.byte	0x5a
	.long	0x1c22
	.uleb128 0x1c
	.string	"us"
	.byte	0x10
	.byte	0x5c
	.long	0x1c32
	.uleb128 0x1c
	.string	"i"
	.byte	0x10
	.byte	0x5e
	.long	0x1c42
	.uleb128 0x1c
	.string	"u"
	.byte	0x10
	.byte	0x60
	.long	0x1c52
	.uleb128 0x1c
	.string	"l"
	.byte	0x10
	.byte	0x62
	.long	0x1c62
	.uleb128 0x1c
	.string	"ul"
	.byte	0x10
	.byte	0x64
	.long	0x1c72
	.uleb128 0x1c
	.string	"hint"
	.byte	0x10
	.byte	0x66
	.long	0x1c82
	.uleb128 0x1c
	.string	"uhint"
	.byte	0x10
	.byte	0x68
	.long	0x1920
	.uleb128 0x1c
	.string	"generic"
	.byte	0x10
	.byte	0x6a
	.long	0x1c92
	.uleb128 0x1c
	.string	"cptr"
	.byte	0x10
	.byte	0x6c
	.long	0x1ca2
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x10
	.byte	0x6e
	.long	0x1cb2
	.uleb128 0x1c
	.string	"rtvec"
	.byte	0x10
	.byte	0x70
	.long	0x1cc2
	.uleb128 0x1c
	.string	"tree"
	.byte	0x10
	.byte	0x72
	.long	0x1cd2
	.uleb128 0x1c
	.string	"bitmap"
	.byte	0x10
	.byte	0x74
	.long	0x1ce2
	.uleb128 0x1c
	.string	"reg"
	.byte	0x10
	.byte	0x76
	.long	0x1cf2
	.uleb128 0x1c
	.string	"const_equiv"
	.byte	0x10
	.byte	0x78
	.long	0x1dee
	.uleb128 0x1c
	.string	"bb"
	.byte	0x10
	.byte	0x7a
	.long	0x1dfe
	.uleb128 0x1c
	.string	"te"
	.byte	0x10
	.byte	0x7c
	.long	0x1e0e
	.byte	0x0
	.uleb128 0x10
	.long	0x1c22
	.long	0x4ac
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c32
	.long	0x4f7
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c42
	.long	0x4bd
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c52
	.long	0x219
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c62
	.long	0x468
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c72
	.long	0x54e
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c82
	.long	0x4d3
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1c92
	.long	0x504
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1ca2
	.long	0x56b
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1cb2
	.long	0x56d
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1cc2
	.long	0xab
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1cd2
	.long	0x1ad
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1ce2
	.long	0x1f4
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1cf2
	.long	0x1643
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1d02
	.long	0x1de8
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1de8
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x10
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x11
	.byte	0x31
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x11
	.byte	0x32
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x11
	.byte	0x33
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x11
	.byte	0x36
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x11
	.byte	0x39
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x11
	.byte	0x3a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x11
	.byte	0x3b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x11
	.byte	0x3c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x11
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x11
	.byte	0x3e
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x11
	.byte	0x3f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d02
	.uleb128 0x10
	.long	0x1dfe
	.long	0x1945
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1e0e
	.long	0x17c7
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1e1e
	.long	0x1e29
	.uleb128 0x11
	.long	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1e1e
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x10
	.byte	0x7e
	.long	0x1b16
	.uleb128 0x4
	.long	0x1eb7
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x10
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x10
	.byte	0x82
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x10
	.byte	0x83
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x10
	.byte	0x85
	.long	0x197b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x10
	.byte	0x86
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x10
	.byte	0x87
	.long	0x1e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x10
	.byte	0x8a
	.long	0x1eca
	.uleb128 0x3
	.byte	0x4
	.long	0x1e42
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x3
	.byte	0x20
	.long	0x18a5
	.uleb128 0x2
	.string	"regset"
	.byte	0x3
	.byte	0x22
	.long	0x18b8
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x3
	.byte	0x75
	.long	0x504
	.uleb128 0x4
	.long	0x1fad
	.string	"edge_def"
	.byte	0x28
	.byte	0x3
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1fad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1fad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x3
	.byte	0x7d
	.long	0x17c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x3
	.byte	0x7d
	.long	0x17c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x3
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x3
	.byte	0x83
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x3
	.byte	0x85
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x3
	.byte	0x86
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x3
	.byte	0x87
	.long	0x1ef1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f02
	.uleb128 0x2
	.string	"edge"
	.byte	0x3
	.byte	0x89
	.long	0x1fad
	.uleb128 0x4
	.long	0x222f
	.string	"loop"
	.byte	0x80
	.byte	0x3
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x3
	.value	0x176
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x3
	.value	0x179
	.long	0x2235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x3
	.value	0x17c
	.long	0x2235
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x3
	.value	0x17f
	.long	0x2235
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x3
	.value	0x184
	.long	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x3
	.value	0x187
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x3
	.value	0x18b
	.long	0x2235
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x3
	.value	0x18f
	.long	0x2235
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x3
	.value	0x192
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x3
	.value	0x195
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x3
	.value	0x198
	.long	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x3
	.value	0x19b
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x3
	.value	0x19e
	.long	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x3
	.value	0x1a1
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x3
	.value	0x1a4
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x3
	.value	0x1a7
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x3
	.value	0x1aa
	.long	0x2246
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x3
	.value	0x1ae
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x3
	.value	0x1b1
	.long	0x222f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x3
	.value	0x1b4
	.long	0x222f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"next"
	.byte	0x3
	.value	0x1b7
	.long	0x222f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x3
	.value	0x1ba
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x3
	.value	0x1bd
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x3
	.value	0x1c3
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x3
	.value	0x1c7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x3
	.value	0x1ca
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x3
	.value	0x1cd
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x3
	.value	0x1d1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x3
	.value	0x1d4
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x3
	.value	0x1d7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x3
	.value	0x1e2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x3
	.value	0x1e6
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1fbf
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0xe6
	.long	0x17c7
	.uleb128 0x3
	.byte	0x4
	.long	0x1fb3
	.uleb128 0x3
	.byte	0x4
	.long	0x222f
	.uleb128 0x4
	.long	0x22b2
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x12
	.byte	0x18
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0x8d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x12
	.byte	0x1b
	.long	0x22b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x224c
	.uleb128 0x14
	.long	0x2301
	.long	.LASF7
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x12
	.byte	0x26
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x12
	.byte	0x27
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x12
	.byte	0x28
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0x12
	.byte	0x29
	.long	0x2301
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x22b8
	.uleb128 0x4
	.long	0x2456
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x12
	.byte	0x4a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x12
	.byte	0x50
	.long	0x2301
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x7fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x2456
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x1802
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x4
	.long	0x253c
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1f
	.long	0x25a6
	.long	.LASF9
	.byte	0x4
	.byte	0x12
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
	.uleb128 0x20
	.long	0x2f65
	.string	"function"
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x2f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x2f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x2f8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x2f91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x2fa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x2fad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x2fca
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x504
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x468
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x1802
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x2fdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x22b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x2ff5
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x300f
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x21
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x468
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.long	.LASF9
	.byte	0x12
	.value	0x1fa
	.long	0x253c
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x219
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1d
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f65
	.uleb128 0x1d
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f77
	.uleb128 0x3
	.byte	0x4
	.long	0x245c
	.uleb128 0x3
	.byte	0x4
	.long	0x2307
	.uleb128 0x1d
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2f97
	.uleb128 0x3
	.byte	0x4
	.long	0x25a6
	.uleb128 0x1d
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fb3
	.uleb128 0x1d
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd0
	.uleb128 0x1d
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fe2
	.uleb128 0x1d
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ffb
	.uleb128 0x17
	.long	0x3042
	.string	"op_type"
	.byte	0x4
	.byte	0x13
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
	.uleb128 0x23
	.long	0x3136
	.long	.LASF10
	.value	0x26c
	.byte	0x13
	.byte	0x9b
	.uleb128 0x7
	.string	"operand"
	.byte	0x13
	.byte	0xa3
	.long	0x3136
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"operand_loc"
	.byte	0x13
	.byte	0xa6
	.long	0x3146
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"constraints"
	.byte	0x13
	.byte	0xa9
	.long	0x3156
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"operand_mode"
	.byte	0x13
	.byte	0xac
	.long	0x3166
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x7
	.string	"operand_type"
	.byte	0x13
	.byte	0xaf
	.long	0x3176
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x7
	.string	"dup_loc"
	.byte	0x13
	.byte	0xb3
	.long	0x3186
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x7
	.string	"dup_num"
	.byte	0x13
	.byte	0xb7
	.long	0x3196
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x7
	.string	"n_operands"
	.byte	0x13
	.byte	0xc4
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x262
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x13
	.byte	0xc7
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x263
	.uleb128 0x7
	.string	"n_alternatives"
	.byte	0x13
	.byte	0xca
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x264
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x13
	.byte	0xcd
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.byte	0x0
	.uleb128 0x10
	.long	0x3146
	.long	0xa0
	.uleb128 0x11
	.long	0x47f
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3156
	.long	0x1802
	.uleb128 0x11
	.long	0x47f
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3166
	.long	0x206
	.uleb128 0x11
	.long	0x47f
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3176
	.long	0x8d2
	.uleb128 0x11
	.long	0x47f
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3186
	.long	0x3015
	.uleb128 0x11
	.long	0x47f
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x3196
	.long	0x1802
	.uleb128 0x11
	.long	0x47f
	.byte	0x1
	.byte	0x0
	.uleb128 0x10
	.long	0x31a6
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	0x327d
	.string	"qty"
	.byte	0x2c
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.string	"n_refs"
	.byte	0x1
	.byte	0x58
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"freq"
	.byte	0x1
	.byte	0x5c
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.byte	0x61
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"death"
	.byte	0x1
	.byte	0x69
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x1
	.byte	0x73
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_calls_crossed"
	.byte	0x1
	.byte	0x77
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"first_reg"
	.byte	0x1
	.byte	0x7d
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"min_class"
	.byte	0x1
	.byte	0x83
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"alternate_class"
	.byte	0x1
	.byte	0x88
	.long	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x1
	.byte	0x8d
	.long	0x8d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"phys_reg"
	.byte	0x1
	.byte	0x92
	.long	0x4f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x4
	.long	0x32ef
	.string	"equivalence"
	.byte	0x14
	.byte	0x1
	.byte	0xf0
	.uleb128 0x7
	.string	"replace"
	.byte	0x1
	.byte	0xf4
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"replacement"
	.byte	0x1
	.byte	0xfa
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src_p"
	.byte	0x1
	.byte	0xfc
	.long	0x1802
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x22
	.long	.LASF5
	.byte	0x1
	.value	0x101
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"init_insns"
	.byte	0x1
	.value	0x105
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x24
	.long	0x335d
	.string	"alloc_qty"
	.byte	0x1
	.value	0x135
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.value	0x132
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x133
	.long	0x8d2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"size"
	.byte	0x1
	.value	0x134
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x134
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.string	"qtyno"
	.byte	0x1
	.value	0x136
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x28
	.long	0x33e7
	.byte	0x1
	.string	"local_alloc"
	.byte	0x1
	.value	0x14b
	.byte	0x1
	.long	0x219
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x14c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"max_qty"
	.byte	0x1
	.value	0x14d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x14e
	.long	0x2235
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	0x33cd
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x194
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x196
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x895
	.uleb128 0x24
	.long	0x3450
	.string	"validate_equiv_mem_from_store"
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x26
	.string	"dest"
	.byte	0x1
	.value	0x1c3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"set"
	.byte	0x1
	.value	0x1c4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"data"
	.byte	0x1
	.value	0x1c5
	.long	0x56b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2c
	.long	0x34cb
	.string	"validate_equiv_mem"
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	0x219
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x26
	.string	"start"
	.byte	0x1
	.value	0x1d7
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x1d8
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF15
	.byte	0x1
	.value	0x1d9
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x1db
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"note"
	.byte	0x1
	.value	0x1dc
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3549
	.string	"equiv_init_varies_p"
	.byte	0x1
	.value	0x209
	.byte	0x1
	.long	0x219
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x208
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"code"
	.byte	0x1
	.value	0x20a
	.long	0xbca
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x20b
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x20c
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x234
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x35cd
	.string	"equiv_init_movable_p"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	0x219
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x244
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.value	0x245
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x247
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x247
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x248
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"code"
	.byte	0x1
	.value	0x249
	.long	0xbca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3643
	.string	"contains_replace_regs"
	.byte	0x1
	.value	0x285
	.byte	0x1
	.long	0x219
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x284
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x286
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x286
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x287
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"code"
	.byte	0x1
	.value	0x288
	.long	0xbca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x36c6
	.string	"memref_referenced_p"
	.byte	0x1
	.value	0x2b7
	.byte	0x1
	.long	0x219
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x25
	.long	.LASF15
	.byte	0x1
	.value	0x2b6
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x2b5
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x2b8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x2b8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x2b9
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"code"
	.byte	0x1
	.value	0x2ba
	.long	0xbca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3734
	.string	"memref_used_between_p"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	0x219
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x25
	.long	.LASF15
	.byte	0x1
	.value	0x2fc
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"start"
	.byte	0x1
	.value	0x2fd
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.value	0x2fe
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x300
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x3771
	.byte	0x1
	.string	"function_invariant_p"
	.byte	0x1
	.value	0x314
	.byte	0x1
	.long	0x219
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x313
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x3a3a
	.string	"update_equiv_regs"
	.byte	0x1
	.value	0x32a
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x32b
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x32c
	.long	0x2235
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x32d
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.string	"cleared_regs"
	.byte	0x1
	.value	0x32e
	.long	0x1ed0
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.string	"clear_regnos"
	.byte	0x1
	.value	0x32f
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	0x38ce
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.string	"note"
	.byte	0x1
	.value	0x33f
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x340
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"dest"
	.byte	0x1
	.value	0x341
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x341
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x342
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	0x388f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x356
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x27
	.string	"part"
	.byte	0x1
	.value	0x35a
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x38b3
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x27
	.string	"init_insn"
	.byte	0x1
	.value	0x382
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x3da
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3984
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.string	"link"
	.byte	0x1
	.value	0x415
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x420
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"equiv_insn"
	.byte	0x1
	.value	0x421
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	0x3964
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.string	"equiv_link"
	.byte	0x1
	.value	0x43b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"last_link"
	.byte	0x1
	.value	0x43c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"note"
	.byte	0x1
	.value	0x43d
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x27
	.string	"new_insn"
	.byte	0x1
	.value	0x45f
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3a29
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x481
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x27
	.string	"ptr_"
	.byte	0x1
	.value	0x48b
	.long	0x189f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"indx_"
	.byte	0x1
	.value	0x48b
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"bit_num_"
	.byte	0x1
	.value	0x48b
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"word_num_"
	.byte	0x1
	.value	0x48b
	.long	0x468
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x27
	.string	"word_"
	.byte	0x1
	.value	0x48b
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x27
	.string	"mask_"
	.byte	0x1
	.value	0x48b
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF16
	.long	0x48c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11397
	.byte	0x0
	.uleb128 0x24
	.long	0x3ac1
	.string	"no_equiv"
	.byte	0x1
	.value	0x4a6
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x4a4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"store"
	.byte	0x1
	.value	0x4a4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"data"
	.byte	0x1
	.value	0x4a5
	.long	0x56b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x4a7
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"list"
	.byte	0x1
	.value	0x4a8
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x4b2
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x3d88
	.string	"block_alloc"
	.byte	0x1
	.value	0x4bf
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.value	0x4be
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4c0
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.string	"q"
	.byte	0x1
	.value	0x4c0
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x4c1
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.string	"note"
	.byte	0x1
	.value	0x4c2
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"hard_reg"
	.byte	0x1
	.value	0x4c2
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x4c3
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"insn_count"
	.byte	0x1
	.value	0x4c4
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.string	"max_uid"
	.byte	0x1
	.value	0x4c5
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"qty_order"
	.byte	0x1
	.value	0x4c6
	.long	0x888
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.string	"no_conflict_combined_regno"
	.byte	0x1
	.value	0x4c7
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	0x3bd7
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x4dd
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x29
	.long	0x3ce5
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x27
	.string	"link"
	.byte	0x1
	.value	0x4eb
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x4eb
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.string	"win"
	.byte	0x1
	.value	0x4ec
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"r0"
	.byte	0x1
	.value	0x4ed
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"r1"
	.byte	0x1
	.value	0x4ed
	.long	0xa0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"combined_regno"
	.byte	0x1
	.value	0x4ee
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4ef
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x27
	.string	"must_match_0"
	.byte	0x1
	.value	0x50f
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"n_matching_alts"
	.byte	0x1
	.value	0x512
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	0x3cca
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x516
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"this_match"
	.byte	0x1
	.value	0x517
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x551
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3d11
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x5c7
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x5c7
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x29
	.long	0x3d3d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x5c8
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x5c8
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x29
	.long	0x3d77
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x27
	.string	"fake_birth"
	.byte	0x1
	.value	0x646
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"fake_death"
	.byte	0x1
	.value	0x647
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF16
	.long	0x48af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11936
	.byte	0x0
	.uleb128 0x2c
	.long	0x3dca
	.string	"qty_compare"
	.byte	0x1
	.value	0x69f
	.byte	0x1
	.long	0x219
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x26
	.string	"q1"
	.byte	0x1
	.value	0x69e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"q2"
	.byte	0x1
	.value	0x69e
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2c
	.long	0x3e3b
	.string	"qty_compare_1"
	.byte	0x1
	.value	0x6a7
	.byte	0x1
	.long	0x219
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x26
	.string	"q1p"
	.byte	0x1
	.value	0x6a5
	.long	0x88e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"q2p"
	.byte	0x1
	.value	0x6a6
	.long	0x88e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"q1"
	.byte	0x1
	.value	0x6a8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"q2"
	.byte	0x1
	.value	0x6a8
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.value	0x6a9
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x3e91
	.string	"qty_sugg_compare"
	.byte	0x1
	.value	0x6c2
	.byte	0x1
	.long	0x219
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x26
	.string	"q1"
	.byte	0x1
	.value	0x6c1
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"q2"
	.byte	0x1
	.value	0x6c1
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.value	0x6c3
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x3f07
	.string	"qty_sugg_compare_1"
	.byte	0x1
	.value	0x6cf
	.byte	0x1
	.long	0x219
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x26
	.string	"q1p"
	.byte	0x1
	.value	0x6cd
	.long	0x88e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"q2p"
	.byte	0x1
	.value	0x6ce
	.long	0x88e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"q1"
	.byte	0x1
	.value	0x6d0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"q2"
	.byte	0x1
	.value	0x6d0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.value	0x6d1
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2c
	.long	0x4053
	.string	"combine_regs"
	.byte	0x1
	.value	0x6ff
	.byte	0x1
	.long	0x219
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x26
	.string	"usedreg"
	.byte	0x1
	.value	0x6fa
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"setreg"
	.byte	0x1
	.value	0x6fa
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF18
	.byte	0x1
	.value	0x6fb
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.value	0x6fc
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x6fd
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.string	"already_dead"
	.byte	0x1
	.value	0x6fe
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x27
	.string	"ureg"
	.byte	0x1
	.value	0x700
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"sreg"
	.byte	0x1
	.value	0x700
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"offset"
	.byte	0x1
	.value	0x701
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"usize"
	.byte	0x1
	.value	0x702
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ssize"
	.byte	0x1
	.value	0x702
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"sqty"
	.byte	0x1
	.value	0x703
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	0x401b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x27
	.string	"subreg"
	.byte	0x1
	.value	0x70b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x29
	.long	0x403b
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x27
	.string	"subreg"
	.byte	0x1
	.value	0x72c
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x7bb
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x40b1
	.string	"reg_meets_class_p"
	.byte	0x1
	.value	0x7d2
	.byte	0x1
	.long	0x219
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x7d0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"class"
	.byte	0x1
	.value	0x7d1
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"rclass"
	.byte	0x1
	.value	0x7d3
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x410a
	.string	"update_qty_class"
	.byte	0x1
	.value	0x7de
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x26
	.string	"qtyno"
	.byte	0x1
	.value	0x7dc
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x7dd
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"rclass"
	.byte	0x1
	.value	0x7df
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x415c
	.string	"reg_is_set"
	.byte	0x1
	.value	0x7f6
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x7f3
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"setter"
	.byte	0x1
	.value	0x7f4
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"data"
	.byte	0x1
	.value	0x7f5
	.long	0x56b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x24
	.long	0x41ab
	.string	"reg_is_born"
	.byte	0x1
	.value	0x80c
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x80a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x80b
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x80d
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x4231
	.string	"wipe_dead_reg"
	.byte	0x1
	.value	0x835
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.value	0x833
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"output_p"
	.byte	0x1
	.value	0x834
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x836
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x846
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x849
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x45ae
	.string	"find_free_reg"
	.byte	0x1
	.value	0x87d
	.byte	0x1
	.long	0x219
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x26
	.string	"class"
	.byte	0x1
	.value	0x877
	.long	0x220
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x878
	.long	0x8d2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"qtyno"
	.byte	0x1
	.value	0x879
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"accept_call_clobbered"
	.byte	0x1
	.value	0x87a
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"just_try_suggested"
	.byte	0x1
	.value	0x87b
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.string	"born_index"
	.byte	0x1
	.value	0x87c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x26
	.string	"dead_index"
	.byte	0x1
	.value	0x87c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x87e
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"ins"
	.byte	0x1
	.value	0x87e
	.long	0x219
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"first_used"
	.byte	0x1
	.value	0x87f
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.string	"used"
	.byte	0x1
	.value	0x87f
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.long	0x4362
	.byte	0x8
	.byte	0x1
	.value	0x881
	.uleb128 0xe
	.string	"from"
	.byte	0x1
	.value	0x881
	.long	0x883
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x881
	.long	0x883
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2f
	.string	"fail"
	.byte	0x1
	.value	0x8e6
	.long	.L772
	.uleb128 0x29
	.long	0x439d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x88f
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x88f
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x29
	.long	0x43cb
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x891
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x891
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x29
	.long	0x43f9
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x893
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x893
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x29
	.long	0x4427
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x896
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x896
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x29
	.long	0x4455
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x899
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x899
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x29
	.long	0x4483
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x89b
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x89b
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x29
	.long	0x44b0
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x8b9
	.long	0x33e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x8b9
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x29
	.long	0x44dc
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x8be
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x8be
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x29
	.long	0x4508
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x8c0
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x8c0
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x29
	.long	0x453e
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x27
	.string	"scan_xp_"
	.byte	0x1
	.value	0x8c4
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"scan_yp_"
	.byte	0x1
	.value	0x8c4
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x29
	.long	0x4583
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x8cb
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x8d5
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"size1"
	.byte	0x1
	.value	0x8d6
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.string	"eliminables"
	.byte	0x1
	.value	0x881
	.long	0x4885
	.byte	0x5
	.byte	0x3
	.long	eliminables.14090
	.uleb128 0x2d
	.long	.LASF16
	.long	0x489a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14091
	.byte	0x0
	.uleb128 0x24
	.long	0x4609
	.string	"mark_life"
	.byte	0x1
	.value	0x912
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.value	0x90f
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x910
	.long	0x8d2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"life"
	.byte	0x1
	.value	0x911
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x913
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x24
	.long	0x470f
	.string	"post_mark_life"
	.byte	0x1
	.value	0x925
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.value	0x922
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x923
	.long	0x8d2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"life"
	.byte	0x1
	.value	0x924
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF12
	.byte	0x1
	.value	0x924
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"death"
	.byte	0x1
	.value	0x924
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x926
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"this_reg"
	.byte	0x1
	.value	0x92b
	.long	0x8ae
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	0x46ba
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x92d
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x29
	.long	0x46e6
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x934
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x934
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x93a
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x93a
	.long	0x33e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x479d
	.string	"no_conflict_p"
	.byte	0x1
	.value	0x94b
	.byte	0x1
	.long	0x219
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.value	0x94a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"r0"
	.byte	0x1
	.value	0x94a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"r1"
	.byte	0x1
	.value	0x94a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"ok"
	.byte	0x1
	.value	0x94c
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"note"
	.byte	0x1
	.value	0x94d
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x94e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"last"
	.byte	0x1
	.value	0x94e
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x482a
	.string	"requires_inout"
	.byte	0x1
	.value	0x974
	.byte	0x1
	.long	0x219
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x973
	.long	0x206
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x975
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x27
	.string	"found_zero"
	.byte	0x1
	.value	0x976
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"reg_allowed"
	.byte	0x1
	.value	0x977
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"num_matching_alts"
	.byte	0x1
	.value	0x978
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x486f
	.byte	0x1
	.string	"dump_local_alloc"
	.byte	0x1
	.value	0x9af
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x26
	.string	"file"
	.byte	0x1
	.value	0x9ae
	.long	0x486f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x9b0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x573
	.uleb128 0x10
	.long	0x4885
	.long	0x433a
	.uleb128 0x11
	.long	0x47f
	.byte	0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x4875
	.uleb128 0x10
	.long	0x489a
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x488a
	.uleb128 0x10
	.long	0x48af
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x489f
	.uleb128 0x10
	.long	0x48c4
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x48b4
	.uleb128 0x31
	.string	"next_qty"
	.byte	0x1
	.byte	0x51
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	next_qty
	.uleb128 0x31
	.string	"qty"
	.byte	0x1
	.byte	0x95
	.long	0x48f0
	.byte	0x5
	.byte	0x3
	.long	qty
	.uleb128 0x3
	.byte	0x4
	.long	0x31a6
	.uleb128 0x31
	.string	"qty_phys_copy_sugg"
	.byte	0x1
	.byte	0xa4
	.long	0x4916
	.byte	0x5
	.byte	0x3
	.long	qty_phys_copy_sugg
	.uleb128 0x3
	.byte	0x4
	.long	0x8ae
	.uleb128 0x31
	.string	"qty_phys_sugg"
	.byte	0x1
	.byte	0xa9
	.long	0x4916
	.byte	0x5
	.byte	0x3
	.long	qty_phys_sugg
	.uleb128 0x31
	.string	"qty_phys_num_copy_sugg"
	.byte	0x1
	.byte	0xad
	.long	0x495b
	.byte	0x5
	.byte	0x3
	.long	qty_phys_num_copy_sugg
	.uleb128 0x3
	.byte	0x4
	.long	0x4f7
	.uleb128 0x31
	.string	"qty_phys_num_sugg"
	.byte	0x1
	.byte	0xb1
	.long	0x495b
	.byte	0x5
	.byte	0x3
	.long	qty_phys_num_sugg
	.uleb128 0x31
	.string	"reg_next_in_qty"
	.byte	0x1
	.byte	0xb7
	.long	0x888
	.byte	0x5
	.byte	0x3
	.long	reg_next_in_qty
	.uleb128 0x31
	.string	"reg_qty"
	.byte	0x1
	.byte	0xc8
	.long	0x888
	.byte	0x5
	.byte	0x3
	.long	reg_qty
	.uleb128 0x31
	.string	"reg_offset"
	.byte	0x1
	.byte	0xce
	.long	0x56d
	.byte	0x5
	.byte	0x3
	.long	reg_offset
	.uleb128 0x31
	.string	"regs_live"
	.byte	0x1
	.byte	0xdc
	.long	0x8ae
	.byte	0x5
	.byte	0x3
	.long	regs_live
	.uleb128 0x31
	.string	"regs_live_at"
	.byte	0x1
	.byte	0xe8
	.long	0x4916
	.byte	0x5
	.byte	0x3
	.long	regs_live_at
	.uleb128 0x31
	.string	"this_insn_number"
	.byte	0x1
	.byte	0xec
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	this_insn_number
	.uleb128 0x31
	.string	"this_insn"
	.byte	0x1
	.byte	0xed
	.long	0xa0
	.byte	0x5
	.byte	0x3
	.long	this_insn
	.uleb128 0x27
	.string	"reg_equiv"
	.byte	0x1
	.value	0x10b
	.long	0x4a48
	.byte	0x5
	.byte	0x3
	.long	reg_equiv
	.uleb128 0x3
	.byte	0x4
	.long	0x327d
	.uleb128 0x27
	.string	"recorded_label_ref"
	.byte	0x1
	.value	0x10e
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	recorded_label_ref
	.uleb128 0x27
	.string	"equiv_mem"
	.byte	0x1
	.value	0x1b9
	.long	0xa0
	.byte	0x5
	.byte	0x3
	.long	equiv_mem
	.uleb128 0x27
	.string	"equiv_mem_modified"
	.byte	0x1
	.value	0x1bc
	.long	0x219
	.byte	0x5
	.byte	0x3
	.long	equiv_mem_modified
	.uleb128 0x10
	.long	0x4ab8
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"call_used_regs"
	.byte	0x8
	.value	0x196
	.long	0x4aa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4af8
	.long	0x211
	.uleb128 0x34
	.uleb128 0x11
	.long	0x47f
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"mips_hard_regno_mode_ok"
	.byte	0x9
	.value	0x778
	.long	0x4ae7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4b2a
	.long	0x220
	.uleb128 0x11
	.long	0x47f
	.byte	0xff
	.byte	0x0
	.uleb128 0x32
	.string	"mips_char_to_class"
	.byte	0x9
	.value	0x8b0
	.long	0x4b1a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4b57
	.long	0x4bd
	.uleb128 0x11
	.long	0x47f
	.byte	0xff
	.byte	0x0
	.uleb128 0x33
	.string	"_sch_istable"
	.byte	0xe
	.byte	0x48
	.long	0x4b6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4b47
	.uleb128 0x32
	.string	"fixed_reg_set"
	.byte	0x8
	.value	0x18f
	.long	0x8ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"call_used_reg_set"
	.byte	0x8
	.value	0x19e
	.long	0x8ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"losing_caller_save_reg_set"
	.byte	0x8
	.value	0x1a1
	.long	0x8ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"call_fixed_reg_set"
	.byte	0x8
	.value	0x1ad
	.long	0x8ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4bf8
	.long	0x219
	.uleb128 0x11
	.long	0x47f
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"reg_alloc_order"
	.byte	0x8
	.value	0x1c2
	.long	0x4be8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4c28
	.long	0x895
	.uleb128 0x11
	.long	0x47f
	.byte	0x18
	.uleb128 0x11
	.long	0x47f
	.byte	0x2
	.byte	0x0
	.uleb128 0x32
	.string	"reg_class_contents"
	.byte	0x8
	.value	0x1cb
	.long	0x4c12
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4c55
	.long	0x468
	.uleb128 0x11
	.long	0x47f
	.byte	0x18
	.byte	0x0
	.uleb128 0x32
	.string	"reg_class_size"
	.byte	0x8
	.value	0x1cf
	.long	0x4c45
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4c7e
	.long	0xb1b
	.uleb128 0x11
	.long	0x47f
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.long	.LASF3
	.byte	0x2
	.byte	0x34
	.long	0x4c8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4c6e
	.uleb128 0x10
	.long	0x4ca0
	.long	0x4ac
	.uleb128 0x11
	.long	0x47f
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_size"
	.byte	0x2
	.byte	0x59
	.long	0x4cb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4c90
	.uleb128 0x10
	.long	0x4cc8
	.long	0x4ac
	.uleb128 0x11
	.long	0x47f
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_length"
	.byte	0x4
	.byte	0x36
	.long	0x4cdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4cb8
	.uleb128 0x10
	.long	0x4cf1
	.long	0x206
	.uleb128 0x11
	.long	0x47f
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_format"
	.byte	0x4
	.byte	0x3c
	.long	0x4d05
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4ce1
	.uleb128 0x10
	.long	0x4d1a
	.long	0x211
	.uleb128 0x11
	.long	0x47f
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x4
	.byte	0x3f
	.long	0x4d2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4d0a
	.uleb128 0x10
	.long	0x4d42
	.long	0xa0
	.uleb128 0x11
	.long	0x47f
	.byte	0x80
	.byte	0x0
	.uleb128 0x32
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0x4d32
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4d6a
	.long	0xa0
	.uleb128 0x11
	.long	0x47f
	.byte	0xa
	.byte	0x0
	.uleb128 0x32
	.string	"global_rtl"
	.byte	0x4
	.value	0x6df
	.long	0x4d5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"optimize"
	.byte	0xf
	.byte	0x41
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"optimize_size"
	.byte	0xf
	.byte	0x45
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"flag_caller_saves"
	.byte	0xf
	.byte	0xfd
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_schedule_insns_after_reload"
	.byte	0xf
	.value	0x1b1
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"basic_block_info"
	.byte	0x3
	.byte	0xfe
	.long	0x1eb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4e18
	.long	0x1649
	.uleb128 0x11
	.long	0x47f
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.string	"entry_exit_blocks"
	.byte	0x3
	.value	0x139
	.long	0x4e08
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"max_regno"
	.byte	0x11
	.byte	0x2c
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_n_info"
	.byte	0x11
	.byte	0x43
	.long	0x1eb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"reg_renumber"
	.byte	0x1
	.byte	0xd7
	.long	0x495b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_renumber
	.uleb128 0x33
	.string	"caller_save_needed"
	.byte	0x11
	.byte	0xc6
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x2fad
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"which_alternative"
	.byte	0x13
	.byte	0x96
	.long	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF10
	.byte	0x13
	.byte	0xd0
	.long	0x3042
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
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
	.long	0x5d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4eca
	.long	0x335d
	.string	"local_alloc"
	.long	0x3734
	.string	"function_invariant_p"
	.long	0x482a
	.string	"dump_local_alloc"
	.long	0x4e5b
	.string	"reg_renumber"
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
.LASF18:
	.string	"may_save_copy"
.LASF12:
	.string	"birth"
.LASF0:
	.string	"mode"
.LASF6:
	.string	"basic_block"
.LASF14:
	.string	"scan_tp_"
.LASF4:
	.string	"mem_attrs"
.LASF15:
	.string	"memref"
.LASF10:
	.string	"recog_data"
.LASF11:
	.string	"insn"
.LASF17:
	.string	"insn_number"
.LASF5:
	.string	"loop_depth"
.LASF7:
	.string	"sequence_stack"
.LASF16:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF3:
	.string	"mode_class"
.LASF9:
	.string	"function_frequency"
.LASF8:
	.string	"sequence_rtl_expr"
.LASF19:
	.string	"scan_fp_"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"regno"
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
