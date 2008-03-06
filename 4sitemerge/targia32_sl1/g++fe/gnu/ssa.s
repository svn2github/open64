	.file	"ssa.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl in_ssa_form
	.bss
	.align 4
	.type	in_ssa_form, @object
	.size	in_ssa_form, 4
in_ssa_form:
	.zero	4
	.text
	.type	ssa_rename_to_lookup, @function
ssa_rename_to_lookup:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ssa.c"
	.loc 1 248 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 249 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2
	.loc 1 250 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ssa_rename_to_pseudo@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$704, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L4
.L2:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	imull	$54, %ecx, %eax
	addl	%edx, %eax
	movl	ssa_rename_to_hard@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	.loc 1 253 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	ssa_rename_to_lookup, .-ssa_rename_to_lookup
	.type	ssa_rename_to_insert, @function
ssa_rename_to_insert:
.LFB16:
	.loc 1 261 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 262 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L7
	.loc 1 263 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ssa_rename_to_pseudo@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	leal	-704(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L10
.L7:
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	imull	$54, %ecx, %eax
	leal	(%eax,%edx), %edx
	movl	12(%ebp), %eax
	movl	%eax, ssa_rename_to_hard@GOTOFF(%ebx,%edx,4)
.L10:
	.loc 1 266 0
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	ssa_rename_to_insert, .-ssa_rename_to_insert
	.type	ssa_rename_from_initialize, @function
ssa_rename_from_initialize:
.LFB17:
	.loc 1 272 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$20, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 274 0
	leal	ssa_rename_from_delete@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	ssa_rename_from_equal@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	ssa_rename_from_hash_function@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	htab_create@PLT
	movl	%eax, %edx
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 278 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	ssa_rename_from_initialize, .-ssa_rename_from_initialize
	.type	ssa_rename_from_lookup, @function
ssa_rename_from_lookup:
.LFB18:
	.loc 1 286 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 289 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 290 0
	movl	$0, -12(%ebp)
	.loc 1 291 0
	movl	8(%ebp), %edx
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	htab_find_with_hash@PLT
	movl	%eax, -8(%ebp)
	.loc 1 293 0
	cmpl	$0, -8(%ebp)
	je	.L14
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L16
.L14:
	movl	$0, -24(%ebp)
.L16:
	movl	-24(%ebp), %eax
	.loc 1 294 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	ssa_rename_from_lookup, .-ssa_rename_from_lookup
	.type	original_register, @function
original_register:
.LFB19:
	.loc 1 303 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	subl	$24, %esp
.LCFI17:
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_lookup
	movl	%eax, -4(%ebp)
	.loc 1 305 0
	cmpl	$0, -4(%ebp)
	je	.L19
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L21
.L19:
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L21:
	movl	-20(%ebp), %eax
	.loc 1 306 0
	leave
	ret
.LFE19:
	.size	original_register, .-original_register
	.type	ssa_rename_from_insert, @function
ssa_rename_from_insert:
.LFB20:
	.loc 1 314 0
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
	.loc 1 316 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 317 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 318 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 319 0
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -12(%ebp)
	.loc 1 321 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L24
	.loc 1 322 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L24:
	.loc 1 323 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 324 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	ssa_rename_from_insert, .-ssa_rename_from_insert
	.type	ssa_rename_from_traverse, @function
ssa_rename_from_traverse:
.LFB21:
	.loc 1 336 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 338 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 339 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 340 0
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_traverse@PLT
	.loc 1 341 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	ssa_rename_from_traverse, .-ssa_rename_from_traverse
	.type	ssa_rename_from_free, @function
ssa_rename_from_free:
.LFB22:
	.loc 1 347 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$4, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 348 0
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 349 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	ssa_rename_from_free, .-ssa_rename_from_free
	.section	.rodata
	.align 4
.LC0:
	.string	"ssa_rename_from's hash table contents:"
	.text
.globl ssa_rename_from_print
	.type	ssa_rename_from_print, @function
ssa_rename_from_print:
.LFB23:
	.loc 1 356 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$20, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 357 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 358 0
	movl	ssa_rename_from_ht@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	leal	ssa_rename_from_print_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_traverse@PLT
	.loc 1 359 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	ssa_rename_from_print, .-ssa_rename_from_print
	.section	.rodata
	.align 4
.LC1:
	.string	"ssa_rename_from maps pseudo %i to original %i.\n"
	.text
	.type	ssa_rename_from_print_1, @function
ssa_rename_from_print_1:
.LFB24:
	.loc 1 368 0
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
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 370 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 372 0
	movl	$1, %eax
	.loc 1 373 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	ssa_rename_from_print_1, .-ssa_rename_from_print_1
	.type	ssa_rename_from_hash_function, @function
ssa_rename_from_hash_function:
.LFB25:
	.loc 1 380 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 382 0
	popl	%ebp
	ret
.LFE25:
	.size	ssa_rename_from_hash_function, .-ssa_rename_from_hash_function
	.type	ssa_rename_from_equal, @function
ssa_rename_from_equal:
.LFB26:
	.loc 1 390 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%esi
.LCFI42:
	subl	$4, %esp
.LCFI43:
	.loc 1 391 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_hash_function
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_hash_function
	cmpl	%eax, %esi
	sete	%al
	movzbl	%al, %eax
	.loc 1 393 0
	addl	$4, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	ssa_rename_from_equal, .-ssa_rename_from_equal
	.type	ssa_rename_from_delete, @function
ssa_rename_from_delete:
.LFB27:
	.loc 1 400 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$4, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 401 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 402 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	ssa_rename_from_delete, .-ssa_rename_from_delete
.globl remove_phi_alternative
	.type	remove_phi_alternative, @function
remove_phi_alternative:
.LFB29:
	.loc 1 430 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%edi
.LCFI50:
	pushl	%esi
.LCFI51:
	subl	$20, %esp
.LCFI52:
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 432 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 435 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 436 0
	movl	-20(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -16(%ebp)
	jmp	.L42
.L43:
	.loc 1 437 0
	movl	-16(%ebp), %edx
	addl	$1, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L44
	.loc 1 439 0
	movl	-20(%ebp), %eax
	subl	$2, %eax
	cmpl	-16(%ebp), %eax
	jle	.L46
	.loc 1 441 0
	movl	-16(%ebp), %ecx
	movl	-20(%ebp), %edx
	subl	$2, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 442 0
	movl	-16(%ebp), %ecx
	addl	$1, %ecx
	movl	-20(%ebp), %edx
	subl	$1, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
.L46:
	.loc 1 444 0
	movl	-20(%ebp), %edx
	subl	$2, %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 445 0
	movl	$1, -28(%ebp)
	jmp	.L48
.L44:
	.loc 1 436 0
	subl	$2, -16(%ebp)
.L42:
	cmpl	$0, -16(%ebp)
	jns	.L43
	.loc 1 448 0
	movl	$0, -28(%ebp)
.L48:
	movl	-28(%ebp), %eax
	.loc 1 449 0
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	remove_phi_alternative, .-remove_phi_alternative
	.type	find_evaluations_1, @function
find_evaluations_1:
.LFB30:
	.loc 1 464 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$20, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 465 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L55
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L55
	.loc 1 467 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	fe_evals@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	fe_current_bb@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	fe_evals@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	movl	fe_current_bb@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L56
	movl	%esi, %edi
	xorl	%esi, %esi
.L56:
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L55:
	.loc 1 468 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	find_evaluations_1, .-find_evaluations_1
	.type	find_evaluations, @function
find_evaluations:
.LFB31:
	.loc 1 474 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$36, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 477 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	%eax, fe_evals@GOTOFF(%ebx)
	.loc 1 480 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L58
.L59:
.LBB2:
	.loc 1 484 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, fe_current_bb@GOTOFF(%ebx)
	.loc 1 485 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 486 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L60:
	.loc 1 489 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L61
	.loc 1 490 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	find_evaluations_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L61:
	.loc 1 492 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L63
	.loc 1 494 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 495 0
	jmp	.L60
.L63:
.LBE2:
	.loc 1 480 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
.L58:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L59
	.loc 1 497 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	find_evaluations, .-find_evaluations
	.type	compute_dominance_frontiers_1, @function
compute_dominance_frontiers_1:
.LFB32:
	.loc 1 522 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%edi
.LCFI65:
	pushl	%esi
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$124, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 523 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 527 0
	movl	16(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	16(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L100
	movl	%esi, %edi
	xorl	%esi, %esi
.L100:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	20(%ebp), %ecx
	movl	-108(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 528 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 533 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L68
.L69:
	.loc 1 534 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L70
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	20(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L99
	movl	%edi, %esi
	xorl	%edi, %edi
.L99:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L70
	.loc 1 536 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_dominance_frontiers_1
.L70:
	.loc 1 533 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L68:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L69
	.loc 1 539 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L74
.L75:
	.loc 1 541 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L76
	.loc 1 543 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L76
	.loc 1 544 0
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-44(%ebp), %eax
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
	je	.L98
	movl	%esi, %edi
	xorl	%esi, %esi
.L98:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L76:
	.loc 1 539 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L74:
	cmpl	$0, -44(%ebp)
	jne	.L75
	.loc 1 548 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L80
.L81:
	.loc 1 549 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L82
.LBB3:
.LBB4:
	.loc 1 552 0
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L84
.L85:
.LBB5:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L86
	jmp	.L88
.L89:
.LBB6:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L97
	movl	%eax, %edx
	xorl	%eax, %eax
.L97:
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
	je	.L90
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
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L92
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-36(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L96
	movl	%esi, %edi
	xorl	%esi, %esi
.L96:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L92:
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L86
.L90:
.LBE6:
	addl	$1, -28(%ebp)
.L88:
	cmpl	$63, -28(%ebp)
	jbe	.L89
.L86:
.LBE5:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L84:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L85
.L82:
.LBE4:
.LBE3:
	.loc 1 548 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L80:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L81
	.loc 1 558 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	compute_dominance_frontiers_1, .-compute_dominance_frontiers_1
.globl compute_dominance_frontiers
	.type	compute_dominance_frontiers, @function
compute_dominance_frontiers:
.LFB33:
	.loc 1 564 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$36, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 565 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 566 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 568 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_dominance_frontiers_1
	.loc 1 570 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 571 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	compute_dominance_frontiers, .-compute_dominance_frontiers
	.section	.rodata
	.align 4
.LC2:
	.string	"Iterated dominance frontier: %d passes on %d regs.\n"
	.text
	.type	compute_iterated_dominance_frontiers, @function
compute_iterated_dominance_frontiers:
.LFB34:
	.loc 1 587 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%edi
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$108, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 589 0
	movl	$0, -48(%ebp)
	.loc 1 591 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 593 0
	movl	$0, -52(%ebp)
	jmp	.L104
.L105:
.LBB7:
	.loc 1 595 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 601 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 605 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L106:
	.loc 1 610 0
	movl	$0, -36(%ebp)
	.loc 1 611 0
	addl	$1, -48(%ebp)
.LBB8:
	.loc 1 612 0
	movl	$0, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-56(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L107
.L108:
.LBB9:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L109
	jmp	.L111
.L112:
.LBB10:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L122
	movl	%eax, %edx
	xorl	%eax, %eax
.L122:
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-72(%ebp), %eax
	andl	%ecx, %eax
	movl	-68(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L113
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L121
	movl	%eax, %edx
	xorl	%eax, %eax
.L121:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	-92(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_union_of_diff@PLT
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_a_or_b@PLT
	movl	$1, -36(%ebp)
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L109
.L113:
.LBE10:
	addl	$1, -28(%ebp)
.L111:
	cmpl	$63, -28(%ebp)
	jbe	.L112
.L109:
.LBE9:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L107:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L108
.LBE8:
	.loc 1 624 0
	cmpl	$0, -36(%ebp)
	jne	.L106
.LBE7:
	.loc 1 593 0
	addl	$1, -52(%ebp)
.L104:
	movl	-52(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	.L105
	.loc 1 627 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 629 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L120
	.loc 1 631 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L120:
	.loc 1 635 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	compute_iterated_dominance_frontiers, .-compute_iterated_dominance_frontiers
	.type	insert_phi_node, @function
insert_phi_node:
.LFB35:
	.loc 1 642 0
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
	.loc 1 643 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 652 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L124
.L125:
	.loc 1 653 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L126
	.loc 1 654 0
	addl	$1, -36(%ebp)
.L126:
	.loc 1 652 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L124:
	cmpl	$0, -40(%ebp)
	jne	.L125
	.loc 1 658 0
	cmpl	$0, -36(%ebp)
	je	.L137
	.loc 1 662 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 666 0
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 667 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L131
.L132:
	.loc 1 668 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L133
	.loc 1 670 0
	movl	-32(%ebp), %ecx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 671 0
	movl	-32(%ebp), %esi
	addl	$1, %esi
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax,%esi,4)
.L133:
	.loc 1 667 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	addl	$2, -32(%ebp)
.L131:
	cmpl	$0, -40(%ebp)
	jne	.L132
	.loc 1 674 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$162, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, -24(%ebp)
	.loc 1 675 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 677 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 678 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 679 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 680 0
	cmpl	$0, -12(%ebp)
	je	.L137
	.loc 1 681 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
.L137:
	.loc 1 682 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	insert_phi_node, .-insert_phi_node
	.type	insert_phi_nodes, @function
insert_phi_nodes:
.LFB36:
	.loc 1 689 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%edi
.LCFI86:
	pushl	%esi
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$60, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 692 0
	movl	$0, -40(%ebp)
	jmp	.L139
.L140:
	.loc 1 693 0
	cmpl	$175, -40(%ebp)
	jle	.L141
.LBB11:
.LBB12:
	.loc 1 696 0
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L143
.L144:
.LBB13:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L145
	jmp	.L147
.L148:
.LBB14:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L155
	movl	%eax, %edx
	xorl	%eax, %eax
.L155:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L149
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L151
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_phi_node
.L151:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L145
.L149:
.LBE14:
	addl	$1, -28(%ebp)
.L147:
	cmpl	$63, -28(%ebp)
	jbe	.L148
.L145:
.LBE13:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L143:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L144
.L141:
.LBE12:
.LBE11:
	.loc 1 692 0
	addl	$1, -40(%ebp)
.L139:
	movl	-40(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L140
	.loc 1 702 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	insert_phi_nodes, .-insert_phi_nodes
	.section	.rodata
	.type	__FUNCTION__.11234, @object
	.size	__FUNCTION__.11234, 22
__FUNCTION__.11234:
	.string	"create_delayed_rename"
.LC3:
	.string	"../../../kg++fe/gnu/ssa.c"
	.text
	.type	create_delayed_rename, @function
create_delayed_rename:
.LFB37:
	.loc 1 743 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$36, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 745 0
	movl	$24, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 747 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L157
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L159
.L157:
	.loc 1 749 0
	leal	__FUNCTION__.11234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$749, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L159:
	.loc 1 751 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 752 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 753 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_lookup
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 754 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 755 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 756 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 757 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	create_delayed_rename, .-create_delayed_rename
	.section	.rodata
	.type	__FUNCTION__.11254, @object
	.size	__FUNCTION__.11254, 22
__FUNCTION__.11254:
	.string	"apply_delayed_renames"
	.text
	.type	apply_delayed_renames, @function
apply_delayed_renames:
.LFB38:
	.loc 1 774 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	pushl	%ebx
.LCFI96:
	subl	$36, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 776 0
	movl	$0, -16(%ebp)
	.loc 1 778 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L162
.L163:
.LBB15:
	.loc 1 784 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_lookup
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L164
	.loc 1 785 0
	leal	__FUNCTION__.11254@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$785, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L164:
	.loc 1 789 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L166
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L166
	.loc 1 791 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 793 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 789 0
	jmp	.L169
.L166:
	.loc 1 796 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L169:
	.loc 1 797 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 798 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ssa_rename_to_insert
	.loc 1 800 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L170
.LBB16:
	.loc 1 802 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%eax,%edx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -8(%ebp)
	.loc 1 803 0
	movl	-8(%ebp), %edx
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	ssa_definition@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L170:
.LBE16:
	.loc 1 806 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 807 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ssa_rename_from_insert
	.loc 1 808 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBE15:
	.loc 1 778 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L162:
	cmpl	$0, -20(%ebp)
	jne	.L163
	.loc 1 810 0
	cmpl	$0, -16(%ebp)
	je	.L175
	.loc 1 812 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 813 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 814 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
.L175:
	.loc 1 816 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	apply_delayed_renames, .-apply_delayed_renames
	.section	.rodata
	.type	__FUNCTION__.11316, @object
	.size	__FUNCTION__.11316, 14
__FUNCTION__.11316:
	.string	"rename_insn_1"
	.text
	.type	rename_insn_1, @function
rename_insn_1:
.LFB39:
	.loc 1 825 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$84, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 826 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 827 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 829 0
	cmpl	$0, -40(%ebp)
	jne	.L177
	.loc 1 830 0
	movl	$0, -60(%ebp)
	jmp	.L179
.L177:
	.loc 1 832 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	cmpl	$59, -56(%ebp)
	je	.L182
	cmpl	$59, -56(%ebp)
	ja	.L185
	cmpl	$57, -56(%ebp)
	je	.L181
	jmp	.L180
.L185:
	cmpl	$71, -56(%ebp)
	je	.L183
	cmpl	$162, -56(%ebp)
	je	.L184
	jmp	.L180
.L181:
.LBB17:
	.loc 1 836 0
	movl	-40(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 837 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 844 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L186
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L186
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L186
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L186
	.loc 1 850 0
	movl	-28(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 851 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L186:
	.loc 1 869 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L191
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L191
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L191
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L195
.L191:
.LBB18:
	.loc 1 875 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 877 0
	jmp	.L196
.L197:
	.loc 1 881 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L196:
	.loc 1 877 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L197
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L197
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L197
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L197
	.loc 1 883 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L205
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L205
.LBB19:
	.loc 1 891 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 892 0
	movl	-36(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 893 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 894 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	rename_insn_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 895 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	apply_delayed_renames
	.loc 1 896 0
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 869 0
	jmp	.L205
.L195:
.LBE19:
.LBE18:
	.loc 1 899 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L205
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L205
	.loc 1 906 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	create_delayed_rename
	.loc 1 911 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L208
	.loc 1 912 0
	movl	-40(%ebp), %eax
	addl	$12, %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	rename_insn_1@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
.L208:
	.loc 1 913 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L205:
	.loc 1 918 0
	movl	$0, -60(%ebp)
	jmp	.L179
.L183:
.LBE17:
	.loc 1 922 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L210
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	ssa_max_reg_num@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jae	.L210
.LBB20:
	.loc 1 925 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_lookup
	movl	%eax, -16(%ebp)
	.loc 1 927 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L213
	cmpl	$0, -16(%ebp)
	je	.L213
	.loc 1 929 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L216
	.loc 1 930 0
	leal	__FUNCTION__.11316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$930, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L216:
	.loc 1 931 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 927 0
	jmp	.L210
.L213:
	.loc 1 937 0
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L210:
.LBE20:
	.loc 1 940 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L182:
.LBB21:
	.loc 1 949 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 950 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L218
	.loc 1 952 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L220
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	ssa_max_reg_num@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jae	.L220
.LBB22:
	.loc 1 955 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_lookup
	movl	%eax, -8(%ebp)
	.loc 1 956 0
	cmpl	$0, -8(%ebp)
	je	.L220
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L220
	.loc 1 957 0
	movl	-40(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
.L220:
.LBE22:
	.loc 1 960 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L218:
	.loc 1 964 0
	movl	$0, -60(%ebp)
	jmp	.L179
.L184:
.LBE21:
	.loc 1 969 0
	movl	$-1, -60(%ebp)
	jmp	.L179
.L180:
	.loc 1 973 0
	movl	$0, -60(%ebp)
.L179:
	movl	-60(%ebp), %eax
	.loc 1 975 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	rename_insn_1, .-rename_insn_1
	.type	gen_sequence, @function
gen_sequence:
.LFB40:
	.loc 1 979 0
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
	.loc 1 980 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 987 0
	movl	$0, -8(%ebp)
	.loc 1 988 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L227
.L228:
	.loc 1 989 0
	addl	$1, -8(%ebp)
	.loc 1 988 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L227:
	cmpl	$0, -16(%ebp)
	jne	.L228
	.loc 1 991 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$24, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, -20(%ebp)
	.loc 1 993 0
	movl	$0, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L230
.L231:
	.loc 1 994 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%ecx,%edx,4)
	.loc 1 993 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -12(%ebp)
.L230:
	cmpl	$0, -16(%ebp)
	jne	.L231
	.loc 1 996 0
	movl	-20(%ebp), %eax
	.loc 1 997 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	gen_sequence, .-gen_sequence
	.section	.rodata
	.type	__FUNCTION__.11462, @object
	.size	__FUNCTION__.11462, 13
__FUNCTION__.11462:
	.string	"rename_block"
	.text
	.type	rename_block, @function
rename_block:
.LFB41:
	.loc 1 1003 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%esi
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$80, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1004 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1007 0
	movl	$0, -40(%ebp)
	.loc 1 1013 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1014 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L235:
	.loc 1 1017 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1018 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L236
.LBB23:
	.loc 1 1021 0
	movl	-40(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1022 0
	movl	$0, -72(%ebp)
	.loc 1 1023 0
	movl	-52(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1025 0
	call	start_sequence@PLT
	.loc 1 1026 0
	movl	-52(%ebp), %edx
	addl	$44, %edx
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	rename_insn_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 1027 0
	movl	-52(%ebp), %edx
	addl	$68, %edx
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	rename_insn_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 1033 0
	call	get_insns@PLT
	testl	%eax, %eax
	je	.L238
.LBB24:
	.loc 1 1038 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	emit@PLT
	.loc 1 1039 0
	call	gen_sequence
	movl	%eax, -32(%ebp)
	.loc 1 1042 0
	movl	$0, -28(%ebp)
	jmp	.L240
.L241:
	.loc 1 1043 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%ecx,%esi,4)
	.loc 1 1042 0
	addl	$1, -28(%ebp)
.L240:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L241
	.loc 1 1044 0
	movl	-52(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 44(%edx)
.L238:
.LBE24:
	.loc 1 1046 0
	call	end_sequence@PLT
	.loc 1 1048 0
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	apply_delayed_renames
	.loc 1 1049 0
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
.L236:
.LBE23:
	.loc 1 1052 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1054 0
	movl	-52(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L235
	.loc 1 1058 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L244
.L245:
	.loc 1 1060 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L246
	.loc 1 1063 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1065 0
	jmp	.L248
.L249:
.LBB25:
	.loc 1 1067 0
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1076 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1077 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	ssa_max_reg_num@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L250
	.loc 1 1078 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_lookup
	movl	%eax, -20(%ebp)
.L250:
	.loc 1 1079 0
	cmpl	$0, -20(%ebp)
	jne	.L252
	.loc 1 1080 0
	leal	__FUNCTION__.11462@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1080, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L252:
	.loc 1 1081 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_lookup
	movl	%eax, -20(%ebp)
	.loc 1 1086 0
	cmpl	$0, -20(%ebp)
	je	.L254
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L256
.L254:
	.loc 1 1088 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_phi_alternative@PLT
	testl	%eax, %eax
	jne	.L259
	.loc 1 1089 0
	leal	__FUNCTION__.11462@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1089, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L256:
	.loc 1 1096 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L260
	.loc 1 1097 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movb	%al, 2(%edx)
	jmp	.L262
.L260:
	.loc 1 1098 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L262
	.loc 1 1099 0
	leal	__FUNCTION__.11462@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1099, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L262:
	.loc 1 1101 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
.L259:
	.loc 1 1104 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
.L248:
.LBE25:
	.loc 1 1065 0
	cmpl	$0, -52(%ebp)
	je	.L246
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L246
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L246
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L249
.L246:
	.loc 1 1058 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
.L244:
	cmpl	$0, -56(%ebp)
	jne	.L245
	.loc 1 1111 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L268
.L269:
	.loc 1 1112 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L270
	.loc 1 1113 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rename_block
.L270:
	.loc 1 1111 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L268:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L269
	.loc 1 1118 0
	jmp	.L273
.L274:
.LBB26:
	.loc 1 1121 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1123 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L275
	.loc 1 1124 0
	leal	__FUNCTION__.11462@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1124, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L275:
	.loc 1 1125 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 1127 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_to_insert
	.loc 1 1129 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1130 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1131 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L273:
.LBE26:
	.loc 1 1118 0
	cmpl	$0, -40(%ebp)
	jne	.L274
	.loc 1 1133 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE41:
	.size	rename_block, .-rename_block
	.type	phi_alternative, @function
phi_alternative:
.LFB28:
	.loc 1 411 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%edi
.LCFI113:
	pushl	%esi
.LCFI114:
	subl	$20, %esp
.LCFI115:
	.loc 1 412 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 415 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	subl	$2, %eax
	movl	%eax, -12(%ebp)
	jmp	.L280
.L281:
	.loc 1 416 0
	movl	-12(%ebp), %edx
	addl	$1, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L282
	.loc 1 417 0
	movl	-16(%ebp), %edx
	addl	$4, %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	jmp	.L284
.L282:
	.loc 1 415 0
	subl	$2, -12(%ebp)
.L280:
	cmpl	$0, -12(%ebp)
	jns	.L281
	.loc 1 419 0
	movl	$0, -28(%ebp)
.L284:
	movl	-28(%ebp), %eax
	.loc 1 420 0
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	phi_alternative, .-phi_alternative
	.section	.rodata
.LC4:
	.string	"ssa_definition"
	.text
	.type	rename_registers, @function
rename_registers:
.LFB42:
	.loc 1 1139 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%edi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$48, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1139 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 1140 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$12, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	ssa_definition@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1141 0
	call	ssa_rename_from_initialize
	.loc 1 1143 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, ssa_rename_to_pseudo@GOTOFF(%ebx)
	.loc 1 1144 0
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	ssa_rename_to_pseudo@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1145 0
	leal	ssa_rename_to_hard@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	$38016, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1148 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	rename_block
	.loc 1 1153 0
	movl	$0, ssa_rename_to_pseudo@GOTOFF(%ebx)
	.loc 1 1154 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L289
	call	__stack_chk_fail_local
.L289:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	rename_registers, .-rename_registers
	.section	.rodata
	.type	__FUNCTION__.11589, @object
	.size	__FUNCTION__.11589, 15
__FUNCTION__.11589:
	.string	"convert_to_ssa"
.LC5:
	.string	";; Immediate Dominators:\n"
.LC6:
	.string	";\t%3d = %3d\n"
.LC7:
	.string	"; Basic Block"
.LC8:
	.string	";; Dominance Frontiers:"
.LC9:
	.string	"; Register"
	.align 4
.LC10:
	.string	";; Iterated Dominance Frontiers:"
	.text
.globl convert_to_ssa
	.type	convert_to_ssa, @function
convert_to_ssa:
.LFB43:
	.loc 1 1160 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$64, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1176 0
	movl	in_ssa_form@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 1177 0
	leal	__FUNCTION__.11589@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1177, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L291:
	.loc 1 1181 0
	call	get_insns@PLT
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	life_analysis@PLT
	.loc 1 1183 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1185 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L293
	.loc 1 1187 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1188 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L295
.L296:
	.loc 1 1189 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 1188 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L295:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L296
	.loc 1 1191 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L293:
	.loc 1 1196 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1197 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_dominance_frontiers@PLT
	.loc 1 1199 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L298
	.loc 1 1201 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	dump_sbitmap_vector@PLT
	.loc 1 1203 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L298:
	.loc 1 1208 0
	call	max_reg_num@PLT
	movl	%eax, ssa_max_reg_num@GOTOFF(%ebx)
	.loc 1 1209 0
	movl	ssa_max_reg_num@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1210 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1211 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_evaluations
	.loc 1 1215 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1216 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_iterated_dominance_frontiers
	.loc 1 1218 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L300
	.loc 1 1220 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_sbitmap_vector@PLT
	.loc 1 1222 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L300:
	.loc 1 1227 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_phi_nodes
	.loc 1 1231 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	rename_registers
	.loc 1 1235 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1236 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1237 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1238 0
	movl	in_ssa_form@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1240 0
	call	max_reg_num@PLT
	movl	%eax, %esi
	call	get_insns@PLT
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 1241 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 1242 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE43:
	.size	convert_to_ssa, .-convert_to_ssa
	.type	ephi_forward, @function
ephi_forward:
.LFB45:
	.loc 1 1273 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%edi
.LCFI128:
	pushl	%esi
.LCFI129:
	subl	$80, %esp
.LCFI130:
	.loc 1 1276 0
	movl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -68(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L318
	movl	%esi, %edi
	xorl	%esi, %esi
.L318:
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-68(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.LBB27:
	.loc 1 1278 0
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L304
.L305:
.LBB28:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	addl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	je	.L306
	jmp	.L308
.L309:
.LBB29:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L317
	movl	%eax, %edx
	xorl	%eax, %eax
.L317:
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L310
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-24(%ebp), %eax
	sall	$6, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L316
	movl	%edi, %esi
	xorl	%edi, %edi
.L316:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L312
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_forward
	movl	%eax, 20(%ebp)
.L312:
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	je	.L306
.L310:
.LBE29:
	addl	$1, -20(%ebp)
.L308:
	cmpl	$63, -20(%ebp)
	jbe	.L309
.L306:
.LBE28:
	addl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
.L304:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L305
.LBE27:
	.loc 1 1284 0
	movl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, 20(%ebp)
	.loc 1 1285 0
	movl	20(%ebp), %eax
	.loc 1 1286 0
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	ephi_forward, .-ephi_forward
	.type	ephi_backward, @function
ephi_backward:
.LFB46:
	.loc 1 1296 0
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
	subl	$92, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1299 0
	movl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L334
	movl	%esi, %edi
	xorl	%esi, %esi
.L334:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.LBB30:
	.loc 1 1301 0
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L320
.L321:
.LBB31:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L322
	jmp	.L324
.L325:
.LBB32:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L333
	movl	%eax, %edx
	xorl	%eax, %eax
.L333:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L326
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-36(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L332
	movl	%edi, %esi
	xorl	%edi, %edi
.L332:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L328
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_backward
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L328:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L322
.L326:
.LBE32:
	addl	$1, -28(%ebp)
.L324:
	cmpl	$63, -28(%ebp)
	jbe	.L325
.L322:
.LBE31:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L320:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L321
.LBE30:
	.loc 1 1309 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	ephi_backward, .-ephi_backward
	.type	ephi_create, @function
ephi_create:
.LFB47:
	.loc 1 1319 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%edi
.LCFI139:
	pushl	%esi
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$156, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1320 0
	movl	$0, -80(%ebp)
	.loc 1 1321 0
	movl	$0, -76(%ebp)
.LBB33:
	.loc 1 1329 0
	movl	$0, -64(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L336
.L337:
.LBB34:
	movl	-68(%ebp), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %eax
	orl	-124(%ebp), %eax
	testl	%eax, %eax
	je	.L338
	jmp	.L340
.L341:
.LBB35:
	movl	-64(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L379
	movl	%eax, %edx
	xorl	%eax, %eax
.L379:
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %esi
	movl	-128(%ebp), %eax
	andl	%ecx, %eax
	movl	-124(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L342
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-128(%ebp), %eax
	andl	%esi, %eax
	movl	-124(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-68(%ebp), %eax
	sall	$6, %eax
	addl	-64(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-72(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L378
	movl	%edi, %esi
	xorl	%edi, %edi
.L378:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L344
	movl	$1, -76(%ebp)
	jmp	.L346
.L344:
	cmpl	$0, -80(%ebp)
	jne	.L346
	movl	-72(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L346:
	movl	-128(%ebp), %eax
	orl	-124(%ebp), %eax
	testl	%eax, %eax
	je	.L338
.L342:
.LBE35:
	addl	$1, -64(%ebp)
.L340:
	cmpl	$63, -64(%ebp)
	jbe	.L341
.L338:
.LBE34:
	addl	$1, -68(%ebp)
	movl	$0, -64(%ebp)
.L336:
	movl	-68(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L337
.LBE33:
	.loc 1 1337 0
	cmpl	$0, -76(%ebp)
	je	.L349
	.loc 1 1342 0
	cmpl	$0, -80(%ebp)
	jne	.L351
	.loc 1 1344 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1345 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L351:
.LBB36:
	.loc 1 1348 0
	movl	$0, -48(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -40(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L353
.L354:
.LBB37:
	movl	-52(%ebp), %eax
	sall	$3, %eax
	addl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L355
	jmp	.L357
.L358:
.LBB38:
	movl	-48(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L377
	movl	%eax, %edx
	xorl	%eax, %eax
.L377:
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %ecx
	movl	-100(%ebp), %esi
	movl	-112(%ebp), %eax
	andl	%ecx, %eax
	movl	-108(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L359
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-52(%ebp), %eax
	sall	$6, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-72(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L376
	movl	%edi, %esi
	xorl	%edi, %edi
.L376:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L361
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_backward
	movl	-72(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
.L361:
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L355
.L359:
.LBE38:
	addl	$1, -48(%ebp)
.L357:
	cmpl	$63, -48(%ebp)
	jbe	.L358
.L355:
.LBE37:
	addl	$1, -52(%ebp)
	movl	$0, -48(%ebp)
.L353:
	movl	-52(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	.L354
	jmp	.L373
.L349:
.LBE36:
.LBB39:
.LBB40:
	.loc 1 1362 0
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L365
.L366:
.LBB41:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	je	.L367
	jmp	.L369
.L370:
.LBB42:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L375
	movl	%eax, %edx
	xorl	%eax, %eax
.L375:
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-88(%ebp), %ecx
	movl	-84(%ebp), %esi
	movl	-96(%ebp), %eax
	andl	%ecx, %eax
	movl	-92(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L371
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-96(%ebp), %eax
	andl	%esi, %eax
	movl	-92(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -140(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L374
	movl	%esi, %edi
	xorl	%esi, %esi
.L374:
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-140(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	jmp	.L373
.L371:
.LBE42:
	addl	$1, -28(%ebp)
.L369:
	cmpl	$63, -28(%ebp)
	jbe	.L370
.L367:
.LBE41:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L365:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L366
.L373:
.LBE40:
.LBE39:
	.loc 1 1369 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	ephi_create, .-ephi_create
	.section	.rodata
	.type	__FUNCTION__.11995, @object
	.size	__FUNCTION__.11995, 14
__FUNCTION__.11995:
	.string	"eliminate_phi"
	.align 4
.LC11:
	.string	"Emitting copy on edge (%d,%d)\n"
	.text
	.type	eliminate_phi, @function
eliminate_phi:
.LFB48:
	.loc 1 1377 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%edi
.LCFI145:
	pushl	%esi
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$156, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1377 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 1388 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1390 0
	movl	$0, -76(%ebp)
	.loc 1 1391 0
	jmp	.L381
.L382:
	.loc 1 1393 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1394 0
	movl	-76(%ebp), %eax
	addl	$2, %eax
	movl	%eax, -76(%ebp)
.L381:
	.loc 1 1391 0
	cmpl	$0, -48(%ebp)
	je	.L383
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L383
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L383
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L382
.L383:
	.loc 1 1397 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L414
	.loc 1 1406 0
	movl	-76(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %ecx
	movl	%ecx, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %esi
	movl	%esi, -60(%ebp)
	.loc 1 1407 0
	movl	-76(%ebp), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1408 0
	movl	-76(%ebp), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 1409 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 1410 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 1412 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1414 0
	movl	$0, -76(%ebp)
	.loc 1 1415 0
	jmp	.L389
.L390:
.LBB43:
	.loc 1 1417 0
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, -40(%ebp)
	.loc 1 1418 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1424 0
	cmpl	$0, -40(%ebp)
	je	.L391
	.loc 1 1426 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1428 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L393
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L395
.L393:
	.loc 1 1429 0
	leal	__FUNCTION__.11995@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1429, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L395:
	.loc 1 1431 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %esi
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1432 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %esi
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1435 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L391
.LBB44:
	.loc 1 1439 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_add_node
	movl	%eax, -28(%ebp)
	.loc 1 1440 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_add_node
	movl	%eax, -24(%ebp)
	.loc 1 1442 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -124(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L419
	movl	%esi, %edi
	xorl	%esi, %esi
.L419:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1443 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%ebp)
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L420
	movl	%esi, %edi
	xorl	%esi, %esi
.L420:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L391:
.LBE44:
.LBE43:
	.loc 1 1415 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -48(%ebp)
.L389:
	cmpl	$0, -48(%ebp)
	je	.L397
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L397
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L397
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L390
.L397:
	.loc 1 1447 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L401
	.loc 1 1452 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1453 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1455 0
	movl	-76(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %esi
	movl	%esi, -92(%ebp)
	movl	-92(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %edi
	movl	%edi, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1457 0
	movl	$0, -44(%ebp)
	jmp	.L403
.L404:
	.loc 1 1458 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-64(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-44(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L418
	movl	%edi, %esi
	xorl	%edi, %edi
.L418:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L405
	.loc 1 1459 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_forward
	movl	%eax, -52(%ebp)
.L405:
	.loc 1 1457 0
	addl	$1, -44(%ebp)
.L403:
	movl	-76(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jl	.L404
	.loc 1 1461 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1465 0
	call	start_sequence@PLT
	.loc 1 1467 0
	jmp	.L416
.L409:
	.loc 1 1469 0
	subl	$4, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1470 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-64(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-44(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L417
	movl	%edi, %esi
	xorl	%edi, %edi
.L417:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L408
	.loc 1 1471 0
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	ephi_create
.L408:
.L416:
	.loc 1 1467 0
	movl	-52(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L409
	.loc 1 1474 0
	call	get_insns@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1475 0
	call	end_sequence@PLT
	.loc 1 1476 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
	.loc 1 1477 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L412
	.loc 1 1478 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L412:
	.loc 1 1481 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L401:
	.loc 1 1483 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1484 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L414:
	.loc 1 1485 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L415
	call	__stack_chk_fail_local
.L415:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	eliminate_phi, .-eliminate_phi
	.type	ephi_add_node, @function
ephi_add_node:
.LFB44:
	.loc 1 1252 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	subl	$20, %esp
.LCFI151:
	.loc 1 1254 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L422
.L423:
	.loc 1 1255 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L424
	.loc 1 1256 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L426
.L424:
	.loc 1 1254 0
	subl	$1, -4(%ebp)
.L422:
	cmpl	$0, -4(%ebp)
	jns	.L423
	.loc 1 1258 0
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1259 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L426:
	movl	-20(%ebp), %eax
	.loc 1 1260 0
	leave
	ret
.LFE44:
	.size	ephi_add_node, .-ephi_add_node
	.section	.rodata
	.align 32
	.type	__FUNCTION__.12172, @object
	.size	__FUNCTION__.12172, 36
__FUNCTION__.12172:
	.string	"make_regs_equivalent_over_bad_edges"
	.text
	.type	make_regs_equivalent_over_bad_edges, @function
make_regs_equivalent_over_bad_edges:
.LFB49:
	.loc 1 1506 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%esi
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$64, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1507 0
	movl	$0, -44(%ebp)
	.loc 1 1508 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1512 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1516 0
	jmp	.L430
.L431:
.LBB45:
	.loc 1 1521 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1522 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1525 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L432
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L434
.L432:
	.loc 1 1527 0
	leal	__FUNCTION__.12172@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1527, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L434:
	.loc 1 1528 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1531 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L435
.L436:
	.loc 1 1532 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L437
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L437
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L437
.LBB46:
	.loc 1 1534 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, -16(%ebp)
	.loc 1 1539 0
	cmpl	$0, -16(%ebp)
	je	.L437
	.loc 1 1543 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L442
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L444
.L442:
	.loc 1 1545 0
	leal	__FUNCTION__.12172@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1545, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L444:
	.loc 1 1546 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1550 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	je	.L437
	.loc 1 1554 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	conflicting_hard_regs_p
	testl	%eax, %eax
	je	.L446
	.loc 1 1557 0
	leal	__FUNCTION__.12172@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1557, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L446:
	.loc 1 1559 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	partition_union@PLT
	.loc 1 1561 0
	addl	$1, -44(%ebp)
.L437:
.LBE46:
	.loc 1 1531 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L435:
	cmpl	$0, -32(%ebp)
	jne	.L436
.LBE45:
	.loc 1 1517 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -36(%ebp)
.L430:
	.loc 1 1516 0
	cmpl	$0, -36(%ebp)
	je	.L449
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L449
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L449
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L431
.L449:
	.loc 1 1566 0
	movl	-44(%ebp), %eax
	.loc 1 1567 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE49:
	.size	make_regs_equivalent_over_bad_edges, .-make_regs_equivalent_over_bad_edges
	.section	.rodata
	.align 32
	.type	__FUNCTION__.12256, @object
	.size	__FUNCTION__.12256, 44
__FUNCTION__.12256:
	.string	"make_equivalent_phi_alternatives_equivalent"
	.text
	.type	make_equivalent_phi_alternatives_equivalent, @function
make_equivalent_phi_alternatives_equivalent:
.LFB50:
	.loc 1 1579 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%esi
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$64, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1580 0
	movl	$0, -56(%ebp)
	.loc 1 1581 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1585 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1589 0
	jmp	.L455
.L456:
.LBB47:
	.loc 1 1592 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1594 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1596 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1600 0
	jmp	.L457
.L458:
.LBB48:
	.loc 1 1603 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1605 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1608 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	jne	.L459
.LBB49:
	.loc 1 1613 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L461
.L462:
.LBB50:
	.loc 1 1615 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1618 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, -16(%ebp)
	.loc 1 1619 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, -12(%ebp)
	.loc 1 1623 0
	cmpl	$0, -16(%ebp)
	je	.L463
	cmpl	$0, -12(%ebp)
	je	.L463
	.loc 1 1627 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L466
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L468
.L466:
	.loc 1 1629 0
	leal	__FUNCTION__.12256@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1629, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L468:
	.loc 1 1630 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L469
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L471
.L469:
	.loc 1 1632 0
	leal	__FUNCTION__.12256@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1632, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L471:
	.loc 1 1636 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %esi
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	je	.L463
	.loc 1 1640 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	conflicting_hard_regs_p
	testl	%eax, %eax
	je	.L473
	.loc 1 1643 0
	leal	__FUNCTION__.12256@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1643, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L473:
	.loc 1 1645 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	partition_union@PLT
	.loc 1 1647 0
	addl	$1, -56(%ebp)
.L463:
.LBE50:
	.loc 1 1613 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L461:
	cmpl	$0, -24(%ebp)
	jne	.L462
.L459:
.LBE49:
.LBE48:
	.loc 1 1601 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -36(%ebp)
.L457:
	.loc 1 1600 0
	cmpl	$0, -36(%ebp)
	je	.L475
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L475
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L475
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L458
.L475:
.LBE47:
	.loc 1 1590 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -48(%ebp)
.L455:
	.loc 1 1589 0
	cmpl	$0, -48(%ebp)
	je	.L479
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L479
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L479
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L456
.L479:
	.loc 1 1654 0
	movl	-56(%ebp), %eax
	.loc 1 1655 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	make_equivalent_phi_alternatives_equivalent, .-make_equivalent_phi_alternatives_equivalent
	.type	compute_conservative_reg_partition, @function
compute_conservative_reg_partition:
.LFB51:
	.loc 1 1662 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$36, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1664 0
	movl	$0, -12(%ebp)
	.loc 1 1670 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	partition_new@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1676 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L485
.L486:
	.loc 1 1677 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_regs_equivalent_over_bad_edges
	addl	%eax, -12(%ebp)
	.loc 1 1676 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
.L485:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L486
	.loc 1 1682 0
	jmp	.L488
.L489:
	.loc 1 1684 0
	movl	$0, -12(%ebp)
	.loc 1 1685 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L490
.L491:
	.loc 1 1686 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_equivalent_phi_alternatives_equivalent
	addl	%eax, -12(%ebp)
	.loc 1 1685 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
.L490:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L491
.L488:
	.loc 1 1682 0
	cmpl	$0, -12(%ebp)
	jg	.L489
	.loc 1 1689 0
	movl	-8(%ebp), %eax
	.loc 1 1690 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	compute_conservative_reg_partition, .-compute_conservative_reg_partition
	.type	coalesce_if_unconflicting, @function
coalesce_if_unconflicting:
.LFB52:
	.loc 1 1728 0
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
	.loc 1 1732 0
	cmpl	$175, 16(%ebp)
	jle	.L495
	cmpl	$175, 20(%ebp)
	jg	.L497
.L495:
	.loc 1 1733 0
	movl	$0, -24(%ebp)
	jmp	.L498
.L497:
	.loc 1 1737 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1738 0
	movl	20(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, 20(%ebp)
	.loc 1 1741 0
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L499
	.loc 1 1742 0
	movl	$0, -24(%ebp)
	jmp	.L498
.L499:
	.loc 1 1745 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	conflicting_hard_regs_p
	testl	%eax, %eax
	jne	.L501
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_conflict_p@PLT
	testl	%eax, %eax
	je	.L503
.L501:
	.loc 1 1747 0
	movl	$0, -24(%ebp)
	jmp	.L498
.L503:
	.loc 1 1750 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	partition_union@PLT
	.loc 1 1753 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1756 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_merge_regs@PLT
	.loc 1 1757 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_merge_regs@PLT
	.loc 1 1759 0
	movl	$1, -24(%ebp)
.L498:
	movl	-24(%ebp), %eax
	.loc 1 1760 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	coalesce_if_unconflicting, .-coalesce_if_unconflicting
	.type	coalesce_regs_in_copies, @function
coalesce_regs_in_copies:
.LFB53:
	.loc 1 1775 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	subl	$56, %esp
.LCFI172:
	.loc 1 1776 0
	movl	$0, -24(%ebp)
	.loc 1 1778 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1781 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L506
.L507:
.LBB51:
	.loc 1 1788 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L508
	.loc 1 1790 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1791 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L508
	.loc 1 1794 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1795 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1798 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L508
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L508
	.loc 1 1807 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L508
	.loc 1 1813 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	coalesce_if_unconflicting
	addl	%eax, -24(%ebp)
.L508:
.LBE51:
	.loc 1 1781 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L506:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L507
	.loc 1 1817 0
	movl	-24(%ebp), %eax
	.loc 1 1818 0
	leave
	ret
.LFE53:
	.size	coalesce_regs_in_copies, .-coalesce_regs_in_copies
	.type	coalesce_reg_in_phi, @function
coalesce_reg_in_phi:
.LFB54:
	.loc 1 1838 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	pushl	%esi
.LCFI175:
	subl	$36, %esp
.LCFI176:
	.loc 1 1840 0
	movl	20(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1843 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %esi
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	coalesce_if_unconflicting
	leal	(%esi,%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1846 0
	movl	$0, %eax
	.loc 1 1847 0
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE54:
	.size	coalesce_reg_in_phi, .-coalesce_reg_in_phi
	.type	coalesce_regs_in_successor_phi_nodes, @function
coalesce_regs_in_successor_phi_nodes:
.LFB55:
	.loc 1 1863 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%ebx
.LCFI179:
	subl	$36, %esp
.LCFI180:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1865 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1866 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1867 0
	movl	$0, -8(%ebp)
	.loc 1 1869 0
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	coalesce_reg_in_phi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_successor_phi@PLT
	.loc 1 1871 0
	movl	-8(%ebp), %eax
	.loc 1 1872 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	coalesce_regs_in_successor_phi_nodes, .-coalesce_regs_in_successor_phi_nodes
	.type	compute_coalesced_reg_partition, @function
compute_coalesced_reg_partition:
.LFB56:
	.loc 1 1881 0
	pushl	%ebp
.LCFI181:
	movl	%esp, %ebp
.LCFI182:
	pushl	%ebx
.LCFI183:
	subl	$68, %esp
.LCFI184:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1883 0
	movl	$0, -20(%ebp)
	.loc 1 1885 0
	leal	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1888 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	partition_new@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1894 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L521
.L522:
	.loc 1 1895 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_regs_equivalent_over_bad_edges
	.loc 1 1894 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
.L521:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L522
	.loc 1 1897 0
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
.L524:
.LBB52:
	.loc 1 1903 0
	movl	$0, -20(%ebp)
	.loc 1 1907 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1908 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_phi_and_copy_regs
	.loc 1 1911 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_compute@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1917 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L525
.L526:
	.loc 1 1919 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	coalesce_regs_in_copies
	addl	%eax, -20(%ebp)
	.loc 1 1920 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	coalesce_regs_in_successor_phi_nodes
	addl	%eax, -20(%ebp)
	.loc 1 1917 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
.L525:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L526
	.loc 1 1924 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_delete@PLT
.LBE52:
	.loc 1 1926 0
	cmpl	$0, -20(%ebp)
	jg	.L524
	.loc 1 1928 0
	cmpl	$0, -16(%ebp)
	je	.L529
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -16(%ebp)
.L529:
	.loc 1 1930 0
	movl	-12(%ebp), %eax
	.loc 1 1931 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	compute_coalesced_reg_partition, .-compute_coalesced_reg_partition
	.section	.rodata
	.type	__FUNCTION__.12492, @object
	.size	__FUNCTION__.12492, 16
__FUNCTION__.12492:
	.string	"mark_reg_in_phi"
	.text
	.type	mark_reg_in_phi, @function
mark_reg_in_phi:
.LFB57:
	.loc 1 1941 0
	pushl	%ebp
.LCFI185:
	movl	%esp, %ebp
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$36, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1942 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1943 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1945 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$71, -24(%ebp)
	je	.L535
	cmpl	$162, -24(%ebp)
	je	.L534
	cmpl	$64, -24(%ebp)
	je	.L534
	jmp	.L533
.L535:
	.loc 1 1948 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L534:
	.loc 1 1952 0
	movl	$0, %eax
	movl	%eax, -28(%ebp)
	jmp	.L532
.L533:
	.loc 1 1954 0
	leal	__FUNCTION__.12492@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1954, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L532:
	.loc 1 1956 0
	movl	-28(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	mark_reg_in_phi, .-mark_reg_in_phi
	.type	mark_phi_and_copy_regs, @function
mark_phi_and_copy_regs:
.LFB58:
	.loc 1 1966 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%ebx
.LCFI191:
	subl	$36, %esp
.LCFI192:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1970 0
	movl	$0, -16(%ebp)
	jmp	.L538
.L539:
	.loc 1 1971 0
	cmpl	$175, -16(%ebp)
	jbe	.L540
.LBB53:
	.loc 1 1973 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1977 0
	cmpl	$0, -12(%ebp)
	je	.L540
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L543
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L540
.L543:
	.loc 1 1981 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1984 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L540
	.loc 1 1986 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1988 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L546
	.loc 1 1991 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1992 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	jmp	.L540
.L546:
	.loc 1 1994 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	jne	.L540
	.loc 1 1997 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1999 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mark_reg_in_phi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
.L540:
.LBE53:
	.loc 1 1970 0
	addl	$1, -16(%ebp)
.L538:
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L539
	.loc 1 2003 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	mark_phi_and_copy_regs, .-mark_phi_and_copy_regs
	.section	.rodata
	.align 4
	.type	__FUNCTION__.12549, @object
	.size	__FUNCTION__.12549, 31
__FUNCTION__.12549:
	.string	"rename_equivalent_regs_in_insn"
	.text
	.type	rename_equivalent_regs_in_insn, @function
rename_equivalent_regs_in_insn:
.LFB59:
	.loc 1 2012 0
	pushl	%ebp
.LCFI193:
	movl	%esp, %ebp
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$52, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2013 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2014 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2016 0
	cmpl	$0, -28(%ebp)
	jne	.L552
	.loc 1 2017 0
	movl	$0, -44(%ebp)
	jmp	.L554
.L552:
	.loc 1 2019 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	cmpl	$71, -40(%ebp)
	je	.L556
	cmpl	$162, -40(%ebp)
	je	.L557
	jmp	.L555
.L556:
	.loc 1 2022 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L558
.LBB54:
	.loc 1 2024 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2025 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2026 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_lookup
	movl	%eax, -12(%ebp)
	.loc 1 2028 0
	cmpl	$0, -12(%ebp)
	je	.L560
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L560
	.loc 1 2031 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L558
	.loc 1 2032 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2028 0
	jmp	.L558
.L560:
	.loc 1 2034 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L558
.LBB55:
	.loc 1 2036 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2037 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L566
	.loc 1 2038 0
	leal	__FUNCTION__.12549@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2038, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L566:
	.loc 1 2039 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L558:
.LBE55:
.LBE54:
	.loc 1 2042 0
	movl	$-1, -44(%ebp)
	jmp	.L554
.L557:
	.loc 1 2047 0
	movl	$-1, -44(%ebp)
	jmp	.L554
.L555:
	.loc 1 2051 0
	movl	$0, -44(%ebp)
.L554:
	movl	-44(%ebp), %eax
	.loc 1 2053 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	rename_equivalent_regs_in_insn, .-rename_equivalent_regs_in_insn
	.type	record_canonical_element_1, @function
record_canonical_element_1:
.LFB60:
	.loc 1 2063 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%edi
.LCFI199:
	pushl	%esi
.LCFI200:
	subl	$32, %esp
.LCFI201:
	.loc 1 2064 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2066 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2068 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2070 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -36(%ebp)
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L571
	movl	%esi, %edi
	xorl	%esi, %esi
.L571:
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	-16(%ebp), %ecx
	movl	-36(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2071 0
	movl	$1, %eax
	.loc 1 2072 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE60:
	.size	record_canonical_element_1, .-record_canonical_element_1
	.type	check_hard_regs_in_partition, @function
check_hard_regs_in_partition:
.LFB61:
	.loc 1 2082 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%edi
.LCFI204:
	pushl	%esi
.LCFI205:
	pushl	%ebx
.LCFI206:
	subl	$38108, %esp
.LCFI207:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2093 0
	call	max_reg_num@PLT
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2094 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 2095 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	record_canonical_element_1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_traverse
	.loc 1 2099 0
	movl	$0, -44(%ebp)
	jmp	.L573
.L574:
	.loc 1 2100 0
	movl	$0, -40(%ebp)
	jmp	.L575
.L576:
	.loc 1 2101 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	imull	$54, %eax, %eax
	addl	%edx, %eax
	movl	$0, -38088(%ebp,%eax,4)
	.loc 1 2100 0
	addl	$1, -40(%ebp)
.L575:
	cmpl	$53, -40(%ebp)
	jle	.L576
	.loc 1 2099 0
	addl	$1, -44(%ebp)
.L573:
	cmpl	$175, -44(%ebp)
	jle	.L574
.LBB56:
	.loc 1 2104 0
	movl	$0, -32(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-52(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L579
.L580:
.LBB57:
	movl	-36(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L581
	jmp	.L583
.L584:
.LBB58:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L594
	movl	%eax, %edx
	xorl	%eax, %eax
.L594:
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-72(%ebp), %eax
	andl	%ecx, %eax
	movl	-68(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L585
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-36(%ebp), %eax
	sall	$6, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
.LBB59:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	ssa_rename_from_lookup
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L587
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L587
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	imull	$54, %ecx, %eax
	addl	%edx, %eax
	movl	-38088(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L587
	movl	$0, -38100(%ebp)
	jmp	.L591
.L587:
.LBE59:
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L581
.L585:
.LBE58:
	addl	$1, -32(%ebp)
.L583:
	cmpl	$63, -32(%ebp)
	jbe	.L584
.L581:
.LBE57:
	addl	$1, -36(%ebp)
	movl	$0, -32(%ebp)
.L579:
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L580
.LBE56:
	.loc 1 2115 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2117 0
	movl	$1, -38100(%ebp)
.L591:
	movl	-38100(%ebp), %eax
	.loc 1 2118 0
	addl	$38108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE61:
	.size	check_hard_regs_in_partition, .-check_hard_regs_in_partition
	.section	.rodata
	.type	__FUNCTION__.12679, @object
	.size	__FUNCTION__.12679, 23
__FUNCTION__.12679:
	.string	"rename_equivalent_regs"
	.text
	.type	rename_equivalent_regs, @function
rename_equivalent_regs:
.LFB62:
	.loc 1 2126 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$52, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2129 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L596
.L597:
.LBB60:
	.loc 1 2131 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2132 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L598:
	.loc 1 2137 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2138 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L599
	.loc 1 2140 0
	movl	-20(%ebp), %edx
	addl	$44, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	rename_equivalent_regs_in_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 2143 0
	movl	-20(%ebp), %edx
	addl	$68, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	rename_equivalent_regs_in_insn@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 2147 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L599
.LBB61:
	.loc 1 2149 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2150 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2153 0
	cmpl	$1, -12(%ebp)
	jg	.L602
	.loc 1 2154 0
	leal	__FUNCTION__.12679@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2154, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L602:
	.loc 1 2156 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2157 0
	movl	$0, -8(%ebp)
	jmp	.L604
.L605:
	.loc 1 2158 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	.loc 1 2157 0
	addl	$1, -8(%ebp)
.L604:
	movl	-12(%ebp), %eax
	subl	$1, %eax
	cmpl	-8(%ebp), %eax
	jg	.L605
.L599:
.LBE61:
	.loc 1 2162 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2164 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L598
.LBE60:
	.loc 1 2129 0
	movl	-32(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
.L596:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L597
	.loc 1 2166 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	rename_equivalent_regs, .-rename_equivalent_regs
	.section	.rodata
	.type	__FUNCTION__.12716, @object
	.size	__FUNCTION__.12716, 17
__FUNCTION__.12716:
	.string	"convert_from_ssa"
	.text
.globl convert_from_ssa
	.type	convert_from_ssa, @function
convert_from_ssa:
.LFB63:
	.loc 1 2172 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$52, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2175 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2182 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	life_analysis@PLT
	.loc 1 2186 0
	movl	conservative_reg_partition@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L610
	.loc 1 2187 0
	call	compute_conservative_reg_partition
	movl	%eax, -20(%ebp)
	jmp	.L612
.L610:
	.loc 1 2189 0
	call	compute_coalesced_reg_partition
	movl	%eax, -20(%ebp)
.L612:
	.loc 1 2191 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	check_hard_regs_in_partition
	testl	%eax, %eax
	jne	.L613
	.loc 1 2194 0
	leal	__FUNCTION__.12716@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2194, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L613:
	.loc 1 2196 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rename_equivalent_regs
	.loc 1 2199 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L615
.L616:
.LBB62:
	.loc 1 2203 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L617
.L618:
	.loc 1 2204 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L619
	.loc 1 2205 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	eliminate_phi
.L619:
	.loc 1 2203 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L617:
	cmpl	$0, -12(%ebp)
	jne	.L618
.LBE62:
	.loc 1 2199 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
.L615:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L616
	.loc 1 2208 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	partition_delete@PLT
	.loc 1 2211 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L623
.L624:
.LBB63:
	.loc 1 2213 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L639
.L625:
.L639:
	.loc 1 2218 0
	cmpl	$0, -8(%ebp)
	je	.L626
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L626
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L626
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	jne	.L626
	.loc 1 2220 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L631
	.loc 1 2221 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
.L631:
	.loc 1 2222 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2218 0
	jmp	.L625
.L626:
	.loc 1 2227 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L634
	.loc 1 2230 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L634
	.loc 1 2233 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2234 0
	jmp	.L625
.L634:
.LBE63:
	.loc 1 2211 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
.L623:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L624
	.loc 1 2238 0
	call	commit_edge_insertions@PLT
	.loc 1 2240 0
	movl	in_ssa_form@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2242 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	count_or_remove_death_notes@PLT
	.loc 1 2245 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2246 0
	call	ssa_rename_from_free
	.loc 1 2247 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	convert_from_ssa, .-convert_from_ssa
.globl for_each_successor_phi
	.type	for_each_successor_phi, @function
for_each_successor_phi:
.LFB64:
	.loc 1 2263 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$52, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2266 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L641
	.loc 1 2267 0
	movl	$0, -40(%ebp)
	jmp	.L643
.L641:
	.loc 1 2270 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L644
.L645:
.LBB64:
	.loc 1 2274 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2275 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	je	.L646
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L646
	.loc 1 2280 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2282 0
	cmpl	$0, -28(%ebp)
	je	.L646
	.loc 1 2286 0
	jmp	.L650
.L651:
.LBB65:
	.loc 1 2289 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2290 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	phi_alternative
	movl	%eax, -12(%ebp)
	.loc 1 2296 0
	cmpl	$0, -12(%ebp)
	je	.L652
	.loc 1 2298 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2301 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -20(%ebp)
	.loc 1 2305 0
	cmpl	$0, -20(%ebp)
	je	.L652
	.loc 1 2306 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L643
.L652:
.LBE65:
	.loc 1 2286 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L650:
	cmpl	$0, -28(%ebp)
	je	.L646
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L646
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L646
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L651
.L646:
.LBE64:
	.loc 1 2270 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L644:
	cmpl	$0, -32(%ebp)
	jne	.L645
	.loc 1 2310 0
	movl	$0, -40(%ebp)
.L643:
	movl	-40(%ebp), %eax
	.loc 1 2311 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	for_each_successor_phi, .-for_each_successor_phi
	.type	conflicting_hard_regs_p, @function
conflicting_hard_regs_p:
.LFB65:
	.loc 1 2322 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	subl	$24, %esp
.LCFI222:
	.loc 1 2323 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	original_register
	movl	%eax, -8(%ebp)
	.loc 1 2324 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	original_register
	movl	%eax, -4(%ebp)
	.loc 1 2325 0
	cmpl	$175, -8(%ebp)
	jg	.L661
	cmpl	$175, -4(%ebp)
	jg	.L661
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	je	.L661
	.loc 1 2327 0
	movl	$1, -20(%ebp)
	jmp	.L665
.L661:
	.loc 1 2328 0
	cmpl	$175, -8(%ebp)
	jg	.L666
	cmpl	$175, -4(%ebp)
	jle	.L666
	.loc 1 2329 0
	movl	$1, -20(%ebp)
	jmp	.L665
.L666:
	.loc 1 2330 0
	cmpl	$175, -8(%ebp)
	jle	.L669
	cmpl	$175, -4(%ebp)
	jg	.L669
	.loc 1 2331 0
	movl	$1, -20(%ebp)
	jmp	.L665
.L669:
	.loc 1 2333 0
	movl	$0, -20(%ebp)
.L665:
	movl	-20(%ebp), %eax
	.loc 1 2334 0
	leave
	ret
.LFE65:
	.size	conflicting_hard_regs_p, .-conflicting_hard_regs_p
	.local	conservative_reg_partition
	.comm	conservative_reg_partition,4,4
	.local	ssa_rename_to_pseudo
	.comm	ssa_rename_to_pseudo,4,4
	.local	ssa_rename_to_hard
	.comm	ssa_rename_to_hard,38016,32
	.local	ssa_max_reg_num
	.comm	ssa_max_reg_num,4,4
	.local	fe_evals
	.comm	fe_evals,4,4
	.local	fe_current_bb
	.comm	fe_current_bb,4,4
	.comm	ssa_definition,4,4
	.comm	ssa_rename_from,4,4
	.comm	ssa_rename_from_ht,4,4
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
	.long	.LCFI6-.LCFI5
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
	.byte	0x4
	.long	.LCFI14-.LCFI12
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
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI18-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI22-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI26-.LFB22
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
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI40-.LFB26
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
	.byte	0x86
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
	.long	.LCFI44-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI45
	.byte	0x83
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
	.long	.LCFI48-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI49
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI53-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI54
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI59-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI60
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI63-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI64
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
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI69-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI73-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI74
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
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
	.long	.LCFI89-.LCFI85
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI90-.LFB37
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI94-.LFB38
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI98-.LFB39
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI102-.LFB40
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
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
	.long	.LCFI110-.LCFI107
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
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI111-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI112
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI116-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI117
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI121-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI122
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI126-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI127
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
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
	.long	.LCFI136-.LCFI132
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI137-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI138
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI143-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI144
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI149-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI152-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI153
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI157-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI158
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI162-.LFB51
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI166-.LFB52
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
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI170-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI173-.LFB54
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
	.long	.LCFI177-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI181-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI185-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI186-.LCFI185
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI188-.LCFI186
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
	.long	.LCFI189-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI192-.LCFI190
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
	.long	.LCFI193-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI194
	.byte	0x83
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
	.long	.LCFI197-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI198
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI202-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI207-.LCFI203
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
	.long	.LCFI208-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI209
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
	.long	.LCFI212-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI213
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
	.long	.LCFI216-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI219-.LCFI217
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
	.long	.LCFI220-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE100:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/basic-block.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../include/gnu/hashtab.h"
	.file 9 "../../../include/gnu/partition.h"
	.file 10 "../../../kg++fe/gnu/ssa.h"
	.file 11 "../../../kg++fe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/gnu/regs.h"
	.file 14 "../../../kg++fe/gnu/function.h"
	.file 15 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 16 "../../../kg++fe/gnu/output.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/libio.h"
	.file 19 "/usr/include/bits/types.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
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
.LLST20:
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
.LLST21:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
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
.LLST26:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB45-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
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
.LLST31:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB44-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI185-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI186-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI193-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI194-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI208-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI209-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI212-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI213-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI220-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI221-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5716
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ssa.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa3
	.uleb128 0x3
	.byte	0x4
	.long	0xa9
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x99a
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
	.long	0x751
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x15b9
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
	.long	0x1dc
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0xf2
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1e8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x200
	.uleb128 0x9
	.long	0x205
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2e6
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x2fd
	.long	0x98
	.uleb128 0xf
	.long	0x2fd
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
	.long	0x214
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2e6
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
	.byte	0x13
	.byte	0x3b
	.long	0x382
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x13
	.byte	0x90
	.long	0x3cc
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x13
	.byte	0x91
	.long	0x3ad
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x205
	.uleb128 0x2
	.string	"FILE"
	.byte	0x11
	.byte	0x2e
	.long	0x3fd
	.uleb128 0x12
	.long	0x678
	.long	.LASF2
	.byte	0x94
	.byte	0x11
	.byte	0x2e
	.uleb128 0xc
	.string	"_flags"
	.byte	0x12
	.value	0x10c
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_IO_read_ptr"
	.byte	0x12
	.value	0x111
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_IO_read_end"
	.byte	0x12
	.value	0x112
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"_IO_read_base"
	.byte	0x12
	.value	0x113
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"_IO_write_base"
	.byte	0x12
	.value	0x114
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"_IO_write_ptr"
	.byte	0x12
	.value	0x115
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"_IO_write_end"
	.byte	0x12
	.value	0x116
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"_IO_buf_base"
	.byte	0x12
	.value	0x117
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"_IO_buf_end"
	.byte	0x12
	.value	0x118
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"_IO_save_base"
	.byte	0x12
	.value	0x11a
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"_IO_backup_base"
	.byte	0x12
	.value	0x11b
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"_IO_save_end"
	.byte	0x12
	.value	0x11c
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"_markers"
	.byte	0x12
	.value	0x11e
	.long	0x6e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"_chain"
	.byte	0x12
	.value	0x120
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"_fileno"
	.byte	0x12
	.value	0x122
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"_flags2"
	.byte	0x12
	.value	0x126
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"_old_offset"
	.byte	0x12
	.value	0x128
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"_cur_column"
	.byte	0x12
	.value	0x12c
	.long	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"_vtable_offset"
	.byte	0x12
	.value	0x12d
	.long	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.string	"_shortbuf"
	.byte	0x12
	.value	0x12e
	.long	0x6f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.string	"_lock"
	.byte	0x12
	.value	0x132
	.long	0x703
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"_offset"
	.byte	0x12
	.value	0x13b
	.long	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"__pad1"
	.byte	0x12
	.value	0x144
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"__pad2"
	.byte	0x12
	.value	0x145
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"__pad3"
	.byte	0x12
	.value	0x146
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"__pad4"
	.byte	0x12
	.value	0x147
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"__pad5"
	.byte	0x12
	.value	0x148
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"_mode"
	.byte	0x12
	.value	0x14a
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"_unused2"
	.byte	0x12
	.value	0x14c
	.long	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32a
	.uleb128 0x3
	.byte	0x4
	.long	0x3e9
	.uleb128 0x3
	.byte	0x4
	.long	0x68a
	.uleb128 0x13
	.long	0x696
	.byte	0x1
	.uleb128 0x14
	.long	0x3e9
	.byte	0x0
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x12
	.byte	0xb0
	.uleb128 0x4
	.long	0x6e7
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x12
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x12
	.byte	0xb7
	.long	0x6e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x12
	.byte	0xb8
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x12
	.byte	0xbc
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a4
	.uleb128 0x3
	.byte	0x4
	.long	0x3fd
	.uleb128 0xe
	.long	0x703
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x696
	.uleb128 0xe
	.long	0x719
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.long	0x729
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x23
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20d
	.uleb128 0x3
	.byte	0x4
	.long	0x735
	.uleb128 0x16
	.long	0x74a
	.byte	0x1
	.long	0x20d
	.uleb128 0x14
	.long	0x74a
	.uleb128 0x14
	.long	0x74a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x750
	.uleb128 0x17
	.uleb128 0x18
	.long	0x99a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x19
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x19
	.string	"BImode"
	.sleb128 1
	.uleb128 0x19
	.string	"QImode"
	.sleb128 2
	.uleb128 0x19
	.string	"HImode"
	.sleb128 3
	.uleb128 0x19
	.string	"SImode"
	.sleb128 4
	.uleb128 0x19
	.string	"DImode"
	.sleb128 5
	.uleb128 0x19
	.string	"TImode"
	.sleb128 6
	.uleb128 0x19
	.string	"OImode"
	.sleb128 7
	.uleb128 0x19
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x19
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x19
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x19
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x19
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x19
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x19
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x19
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x19
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x19
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x19
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x19
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x19
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x19
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x19
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x19
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x19
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x19
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x19
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x19
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x19
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x19
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x19
	.string	"COImode"
	.sleb128 30
	.uleb128 0x19
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x19
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x19
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x19
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x19
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x19
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x19
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x19
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x19
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x19
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x19
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x19
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x19
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x19
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x19
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x19
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x19
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x19
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x19
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x19
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x19
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x19
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x19
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x19
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0x1169
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x19
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0x19
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x19
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x19
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x19
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x19
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x19
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x19
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x19
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x19
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x19
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x19
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x19
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x19
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x19
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x19
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x19
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x19
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x19
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x19
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x19
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x19
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x19
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x19
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x19
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x19
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x19
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x19
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x19
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x19
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x19
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x19
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x19
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x19
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x19
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x19
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x19
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x19
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x19
	.string	"INSN"
	.sleb128 42
	.uleb128 0x19
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x19
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x19
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x19
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x19
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x19
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x19
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x19
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x19
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x19
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x19
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x19
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x19
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x19
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x19
	.string	"SET"
	.sleb128 57
	.uleb128 0x19
	.string	"USE"
	.sleb128 58
	.uleb128 0x19
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x19
	.string	"CALL"
	.sleb128 60
	.uleb128 0x19
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x19
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x19
	.string	"RESX"
	.sleb128 63
	.uleb128 0x19
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x19
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x19
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x19
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x19
	.string	"CONST"
	.sleb128 68
	.uleb128 0x19
	.string	"PC"
	.sleb128 69
	.uleb128 0x19
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x19
	.string	"REG"
	.sleb128 71
	.uleb128 0x19
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x19
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x19
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x19
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x19
	.string	"MEM"
	.sleb128 76
	.uleb128 0x19
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x19
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x19
	.string	"CC0"
	.sleb128 79
	.uleb128 0x19
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x19
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x19
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x19
	.string	"COND"
	.sleb128 83
	.uleb128 0x19
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x19
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x19
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x19
	.string	"NEG"
	.sleb128 87
	.uleb128 0x19
	.string	"MULT"
	.sleb128 88
	.uleb128 0x19
	.string	"DIV"
	.sleb128 89
	.uleb128 0x19
	.string	"MOD"
	.sleb128 90
	.uleb128 0x19
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x19
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x19
	.string	"AND"
	.sleb128 93
	.uleb128 0x19
	.string	"IOR"
	.sleb128 94
	.uleb128 0x19
	.string	"XOR"
	.sleb128 95
	.uleb128 0x19
	.string	"NOT"
	.sleb128 96
	.uleb128 0x19
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x19
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x19
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x19
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x19
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x19
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x19
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x19
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x19
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x19
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x19
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x19
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x19
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x19
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x19
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x19
	.string	"NE"
	.sleb128 112
	.uleb128 0x19
	.string	"EQ"
	.sleb128 113
	.uleb128 0x19
	.string	"GE"
	.sleb128 114
	.uleb128 0x19
	.string	"GT"
	.sleb128 115
	.uleb128 0x19
	.string	"LE"
	.sleb128 116
	.uleb128 0x19
	.string	"LT"
	.sleb128 117
	.uleb128 0x19
	.string	"GEU"
	.sleb128 118
	.uleb128 0x19
	.string	"GTU"
	.sleb128 119
	.uleb128 0x19
	.string	"LEU"
	.sleb128 120
	.uleb128 0x19
	.string	"LTU"
	.sleb128 121
	.uleb128 0x19
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x19
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x19
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x19
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x19
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x19
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x19
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x19
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x19
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x19
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x19
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x19
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x19
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x19
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x19
	.string	"FIX"
	.sleb128 136
	.uleb128 0x19
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x19
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x19
	.string	"ABS"
	.sleb128 139
	.uleb128 0x19
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x19
	.string	"FFS"
	.sleb128 141
	.uleb128 0x19
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x19
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x19
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x19
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x19
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x19
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x19
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x19
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x19
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x19
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x19
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x19
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x19
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x19
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x19
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x19
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x19
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x19
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x19
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x19
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x19
	.string	"PHI"
	.sleb128 162
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1a
	.long	0x1243
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x2e6
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
	.long	0x1169
	.uleb128 0x12
	.long	0x12ba
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x382
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0x125e
	.uleb128 0x1c
	.long	0x1397
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x382
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x20d
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x2e6
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x1fa
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x98
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x199
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x751
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1243
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x13ab
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1413
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1dc
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x159e
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x15a4
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1397
	.uleb128 0x4
	.long	0x1413
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x1edc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1edc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13b1
	.uleb128 0x4
	.long	0x159e
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1fe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1fe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x159e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x159e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x225f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1f24
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1419
	.uleb128 0x3
	.byte	0x4
	.long	0x12ba
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x12c5
	.uleb128 0xe
	.long	0x15c9
	.long	0x15aa
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x15d9
	.long	0x98
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x98
	.uleb128 0x4
	.long	0x1615
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x17b0
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xb
	.byte	0x3c
	.uleb128 0x19
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x19
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x19
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x19
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x19
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x19
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x19
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x19
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x19
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x19
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x19
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x19
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x19
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x19
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x19
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x19
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x19
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x19
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x19
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x19
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x19
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1c
	.long	0x18ac
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x1d
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x6f3
	.uleb128 0x1d
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x18ac
	.uleb128 0x1d
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x18bc
	.uleb128 0x1d
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x18cc
	.uleb128 0x1d
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x18dc
	.uleb128 0x1d
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x18ec
	.uleb128 0x1d
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x18fc
	.uleb128 0x1d
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x190c
	.uleb128 0x1d
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x191c
	.uleb128 0x1d
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x192c
	.uleb128 0x1d
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x193c
	.uleb128 0x1d
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x194c
	.uleb128 0x1d
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x195c
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x196c
	.uleb128 0x1d
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x197c
	.uleb128 0x1d
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x198c
	.uleb128 0x1d
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x199c
	.uleb128 0x1d
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x1a98
	.uleb128 0x1d
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x1aa8
	.uleb128 0x1d
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x1ab8
	.byte	0x0
	.uleb128 0xe
	.long	0x18bc
	.long	0x32a
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x18cc
	.long	0x375
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x18dc
	.long	0x33b
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x18ec
	.long	0x20d
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x18fc
	.long	0x2e6
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x190c
	.long	0x3cc
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x191c
	.long	0x351
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x192c
	.long	0x382
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x193c
	.long	0x393
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x194c
	.long	0x3e9
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x195c
	.long	0x3eb
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x196c
	.long	0xa3
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x197c
	.long	0x1a6
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x198c
	.long	0x1e8
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x199c
	.long	0x1413
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19ac
	.long	0x1a92
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1a92
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xb
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0xd
	.byte	0x31
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0xd
	.byte	0x32
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0xd
	.byte	0x33
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0xd
	.byte	0x36
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0xd
	.byte	0x39
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0xd
	.byte	0x3a
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0xd
	.byte	0x3b
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0xd
	.byte	0x3c
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0xd
	.byte	0x3d
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.long	.LASF4
	.byte	0xd
	.byte	0x3e
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0xd
	.byte	0x3f
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19ac
	.uleb128 0xe
	.long	0x1aa8
	.long	0x15df
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1ab8
	.long	0x159e
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1ac8
	.long	0x1ad3
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac8
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x17b0
	.uleb128 0x4
	.long	0x1b57
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x7
	.long	.LASF5
	.byte	0xb
	.byte	0x82
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xb
	.byte	0x85
	.long	0x1615
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xb
	.byte	0x86
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.long	.LASF6
	.byte	0xb
	.byte	0x87
	.long	0x1ad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x1b6a
	.uleb128 0x3
	.byte	0x4
	.long	0x1aec
	.uleb128 0x4
	.long	0x1bc4
	.string	"partition_elem"
	.byte	0xc
	.byte	0x9
	.byte	0x33
	.uleb128 0x6
	.string	"class_element"
	.byte	0x9
	.byte	0x36
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF7
	.byte	0x9
	.byte	0x39
	.long	0x1bc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"class_count"
	.byte	0x9
	.byte	0x3c
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b70
	.uleb128 0x4
	.long	0x1c02
	.string	"partition_def"
	.byte	0x10
	.byte	0x9
	.byte	0x40
	.uleb128 0x7
	.long	.LASF5
	.byte	0x9
	.byte	0x42
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements"
	.byte	0x9
	.byte	0x44
	.long	0x1c02
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x1c12
	.long	0x1b70
	.uleb128 0xf
	.long	0x2fd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"partition"
	.byte	0x9
	.byte	0x45
	.long	0x1c23
	.uleb128 0x3
	.byte	0x4
	.long	0x1bca
	.uleb128 0x4
	.long	0x1c83
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x192c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1c92
	.uleb128 0x3
	.byte	0x4
	.long	0x1c29
	.uleb128 0x3
	.byte	0x4
	.long	0x393
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x8
	.byte	0x32
	.long	0x2e6
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x8
	.byte	0x37
	.long	0x1cc0
	.uleb128 0x3
	.byte	0x4
	.long	0x1cc6
	.uleb128 0x16
	.long	0x1cd6
	.byte	0x1
	.long	0x1c9e
	.uleb128 0x14
	.long	0x74a
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x8
	.byte	0x3e
	.long	0x72f
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x8
	.byte	0x42
	.long	0x684
	.uleb128 0x2
	.string	"htab_trav"
	.byte	0x8
	.byte	0x48
	.long	0x1d06
	.uleb128 0x3
	.byte	0x4
	.long	0x1d0c
	.uleb128 0x16
	.long	0x1d21
	.byte	0x1
	.long	0x20d
	.uleb128 0x14
	.long	0x67e
	.uleb128 0x14
	.long	0x3e9
	.byte	0x0
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x8
	.byte	0x4e
	.long	0x1d33
	.uleb128 0x3
	.byte	0x4
	.long	0x1d39
	.uleb128 0x16
	.long	0x1d4e
	.byte	0x1
	.long	0x3e9
	.uleb128 0x14
	.long	0x31c
	.uleb128 0x14
	.long	0x31c
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x8
	.byte	0x51
	.long	0x684
	.uleb128 0x4
	.long	0x1e32
	.string	"htab"
	.byte	0x2c
	.byte	0x8
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0x8
	.byte	0x5b
	.long	0x1caf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0x8
	.byte	0x5e
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0x8
	.byte	0x61
	.long	0x1ce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"entries"
	.byte	0x8
	.byte	0x64
	.long	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x67
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_elements"
	.byte	0x8
	.byte	0x6a
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_deleted"
	.byte	0x8
	.byte	0x6d
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"searches"
	.byte	0x8
	.byte	0x71
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"collisions"
	.byte	0x8
	.byte	0x75
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"alloc_f"
	.byte	0x8
	.byte	0x78
	.long	0x1d21
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0x8
	.byte	0x79
	.long	0x1d4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x8
	.byte	0x7c
	.long	0x1e40
	.uleb128 0x3
	.byte	0x4
	.long	0x1d5f
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x351
	.uleb128 0x4
	.long	0x1eb0
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.long	.LASF7
	.byte	0x5
	.byte	0x35
	.long	0x1eb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x1eb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1eb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e59
	.uleb128 0xe
	.long	0x1ec6
	.long	0x1e46
	.uleb128 0xf
	.long	0x2fd
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1e59
	.uleb128 0x3
	.byte	0x4
	.long	0x1ec6
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x5
	.byte	0x42
	.long	0x13b1
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1413
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x6
	.byte	0x20
	.long	0x1ee2
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1ef5
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x382
	.uleb128 0x4
	.long	0x1fe0
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1fe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1fe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x159e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x159e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1f24
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f35
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1fe0
	.uleb128 0x4
	.long	0x225f
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x2265
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x2265
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x2265
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x2288
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x2265
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x2265
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x6
	.value	0x192
	.long	0x1c83
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x2288
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x2288
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x1c83
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x228e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x225f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x225f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x6
	.value	0x1b7
	.long	0x225f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ff2
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x6
	.byte	0xe6
	.long	0x159e
	.uleb128 0x20
	.long	.LASF9
	.byte	0x6
	.value	0x170
	.long	0x227c
	.uleb128 0x3
	.byte	0x4
	.long	0x2282
	.uleb128 0x21
	.long	.LASF9
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1fe6
	.uleb128 0x3
	.byte	0x4
	.long	0x225f
	.uleb128 0x10
	.string	"conflict_graph"
	.byte	0x6
	.value	0x306
	.long	0x22ab
	.uleb128 0x3
	.byte	0x4
	.long	0x22b1
	.uleb128 0x1e
	.string	"conflict_graph_def"
	.byte	0x1
	.uleb128 0x4
	.long	0x232b
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xe
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xe
	.byte	0x18
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xe
	.byte	0x19
	.long	0x751
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF7
	.byte	0xe
	.byte	0x1b
	.long	0x232b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x22c6
	.uleb128 0x12
	.long	0x2379
	.long	.LASF10
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xe
	.byte	0x26
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xe
	.byte	0x27
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF11
	.byte	0xe
	.byte	0x28
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF7
	.byte	0xe
	.byte	0x29
	.long	0x2379
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2331
	.uleb128 0x4
	.long	0x24ce
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xe
	.byte	0x44
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xe
	.byte	0x45
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.long	.LASF11
	.byte	0xe
	.byte	0x4a
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.long	.LASF10
	.byte	0xe
	.byte	0x50
	.long	0x2379
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x678
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x24ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x15d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc
	.uleb128 0x4
	.long	0x25b4
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xe
	.byte	0x9c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xe
	.byte	0x9f
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xe
	.byte	0xa2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xe
	.byte	0xa5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x22
	.long	0x261e
	.long	.LASF12
	.byte	0x4
	.byte	0xe
	.value	0x1f1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x23
	.long	0x2fdd
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x2fe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x2ffd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x3003
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x3009
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x301f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xe
	.byte	0xbe
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xe
	.byte	0xc1
	.long	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xe
	.byte	0xc4
	.long	0x3025
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xe
	.byte	0xce
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xe
	.byte	0xdb
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xe
	.byte	0xdf
	.long	0x304
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xe
	.byte	0xe5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xe
	.byte	0xe8
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xe
	.byte	0xec
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x3042
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xe
	.byte	0xf8
	.long	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xe
	.byte	0xfe
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x382
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x15d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x3054
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x232b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x306d
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x3087
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x24
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x2e6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF12
	.byte	0xe
	.value	0x1fa
	.long	0x25b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x20d
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fdd
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2fef
	.uleb128 0x3
	.byte	0x4
	.long	0x24d4
	.uleb128 0x3
	.byte	0x4
	.long	0x237f
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x300f
	.uleb128 0x3
	.byte	0x4
	.long	0x261e
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x302b
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3048
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x305a
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3073
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x2
	.string	"successor_phi_fn"
	.byte	0xa
	.byte	0x1a
	.long	0x30ae
	.uleb128 0x3
	.byte	0x4
	.long	0x30b4
	.uleb128 0x16
	.long	0x30d3
	.byte	0x1
	.long	0x20d
	.uleb128 0x14
	.long	0x98
	.uleb128 0x14
	.long	0x20d
	.uleb128 0x14
	.long	0x20d
	.uleb128 0x14
	.long	0x3e9
	.byte	0x0
	.uleb128 0x1a
	.long	0x30fd
	.byte	0x8
	.byte	0x1
	.byte	0x75
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0x76
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"original"
	.byte	0x1
	.byte	0x77
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ssa_rename_from_pair"
	.byte	0x1
	.byte	0x78
	.long	0x30d3
	.uleb128 0x4
	.long	0x315e
	.string	"ssa_rename_from_hash_table_data"
	.byte	0x8
	.byte	0x1
	.byte	0x7a
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x7b
	.long	0x1c83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x7c
	.long	0x1c12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x25
	.long	0x319a
	.string	"ssa_rename_to_lookup"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.long	0x98
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.byte	0xf7
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x31e1
	.string	"ssa_rename_to_insert"
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x103
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x104
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.string	"ssa_rename_from_initialize"
	.byte	0x1
	.value	0x110
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.long	0x326f
	.string	"ssa_rename_from_lookup"
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.long	0x98
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x11d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"srfp"
	.byte	0x1
	.value	0x11f
	.long	0x30fd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"answer"
	.byte	0x1
	.value	0x120
	.long	0x326f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x30fd
	.uleb128 0x2a
	.long	0x32ca
	.string	"original_register"
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.long	0x2e6
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x28
	.string	"regno"
	.byte	0x1
	.value	0x12e
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"original_rtx"
	.byte	0x1
	.value	0x130
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x27
	.long	0x3333
	.string	"ssa_rename_from_insert"
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x138
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x139
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"slot"
	.byte	0x1
	.value	0x13b
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"srfp"
	.byte	0x1
	.value	0x13c
	.long	0x326f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x33ae
	.string	"ssa_rename_from_traverse"
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.string	"callback_function"
	.byte	0x1
	.value	0x14d
	.long	0x1cf5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF13
	.byte	0x1
	.value	0x14e
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x14f
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"srfhd"
	.byte	0x1
	.value	0x151
	.long	0x3119
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x29
	.string	"ssa_rename_from_free"
	.byte	0x1
	.value	0x15b
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2d
	.byte	0x1
	.string	"ssa_rename_from_print"
	.byte	0x1
	.value	0x164
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2a
	.long	0x345a
	.string	"ssa_rename_from_print_1"
	.byte	0x1
	.value	0x170
	.byte	0x1
	.long	0x20d
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x28
	.string	"slot"
	.byte	0x1
	.value	0x16e
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x16f
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x171
	.long	0x326f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x34a2
	.string	"ssa_rename_from_hash_function"
	.byte	0x1
	.value	0x17c
	.byte	0x1
	.long	0x1c9e
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x28
	.string	"srfp"
	.byte	0x1
	.value	0x17b
	.long	0x74a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x34f4
	.string	"ssa_rename_from_equal"
	.byte	0x1
	.value	0x186
	.byte	0x1
	.long	0x20d
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x28
	.string	"srfp1"
	.byte	0x1
	.value	0x184
	.long	0x74a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"srfp2"
	.byte	0x1
	.value	0x185
	.long	0x74a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x27
	.long	0x3531
	.string	"ssa_rename_from_delete"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x28
	.string	"srfp"
	.byte	0x1
	.value	0x18f
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x35bf
	.byte	0x1
	.string	"remove_phi_alternative"
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.long	0x20d
	.long	.LFB29
	.long	.LFE29
	.long	.LLST13
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1ac
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"block"
	.byte	0x1
	.value	0x1ad
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"phi_vec"
	.byte	0x1
	.value	0x1af
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1b0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x1b1
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x1b1
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x3616
	.string	"find_evaluations_1"
	.byte	0x1
	.value	0x1d0
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST14
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x1cd
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x1ce
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x1cf
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x27
	.long	0x3690
	.string	"find_evaluations"
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST15
	.uleb128 0x2c
	.long	.LASF15
	.byte	0x1
	.value	0x1d8
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x1d9
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1db
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c83
	.uleb128 0x27
	.long	0x37be
	.string	"compute_dominance_frontiers_1"
	.byte	0x1
	.value	0x20a
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST16
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x206
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"idom"
	.byte	0x1
	.value	0x207
	.long	0x2270
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x208
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"done"
	.byte	0x1
	.value	0x209
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x20b
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x20c
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x20d
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x227
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x228
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x228
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x228
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x228
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x228
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x228
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x3820
	.byte	0x1
	.string	"compute_dominance_frontiers"
	.byte	0x1
	.value	0x234
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST17
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x232
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"idom"
	.byte	0x1
	.value	0x233
	.long	0x2270
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"done"
	.byte	0x1
	.value	0x235
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x397c
	.string	"compute_iterated_dominance_frontiers"
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST18
	.uleb128 0x28
	.string	"idfs"
	.byte	0x1
	.value	0x247
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x248
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF15
	.byte	0x1
	.value	0x249
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x24a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"worklist"
	.byte	0x1
	.value	0x24c
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x24d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"passes"
	.byte	0x1
	.value	0x24d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"idf"
	.byte	0x1
	.value	0x253
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x254
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x254
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x264
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x264
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x264
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x264
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x264
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x264
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3a46
	.string	"insert_phi_node"
	.byte	0x1
	.value	0x282
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST19
	.uleb128 0x28
	.string	"regno"
	.byte	0x1
	.value	0x281
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x281
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x283
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x284
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"npred"
	.byte	0x1
	.value	0x285
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x285
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"vec"
	.byte	0x1
	.value	0x286
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"phi"
	.byte	0x1
	.value	0x287
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x287
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x288
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"end_p"
	.byte	0x1
	.value	0x289
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x3b39
	.string	"insert_phi_nodes"
	.byte	0x1
	.value	0x2b1
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST20
	.uleb128 0x28
	.string	"idfs"
	.byte	0x1
	.value	0x2ae
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF15
	.byte	0x1
	.value	0x2af
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x2b0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x2b2
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x2b7
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x2b8
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x2b8
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x2b8
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x2b8
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x2b8
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x2b8
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x3bbf
	.string	"rename_set_data"
	.byte	0x18
	.byte	0x1
	.value	0x2c9
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x1
	.value	0x2ca
	.long	0x3bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"reg_loc"
	.byte	0x1
	.value	0x2cc
	.long	0x15d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"old_reg"
	.byte	0x1
	.value	0x2ce
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF26
	.byte	0x1
	.value	0x2d1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"prev_reg"
	.byte	0x1
	.value	0x2d4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"set_insn"
	.byte	0x1
	.value	0x2d6
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3b39
	.uleb128 0x4
	.long	0x3c24
	.string	"rename_context"
	.byte	0xc
	.byte	0x1
	.byte	0xa3
	.uleb128 0xc
	.string	"new_renames"
	.byte	0x1
	.value	0x2dd
	.long	0x3bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"done_renames"
	.byte	0x1
	.value	0x2de
	.long	0x3bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"current_insn"
	.byte	0x1
	.value	0x2df
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x27
	.long	0x3c8d
	.string	"create_delayed_rename"
	.byte	0x1
	.value	0x2e7
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST21
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x2e5
	.long	0x3c8d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"reg_loc"
	.byte	0x1
	.value	0x2e6
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x2e8
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF27
	.long	0x54cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11234
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3bc5
	.uleb128 0x27
	.long	0x3d37
	.string	"apply_delayed_renames"
	.byte	0x1
	.value	0x306
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST22
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x305
	.long	0x3c8d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x307
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"last_r"
	.byte	0x1
	.value	0x308
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x3d26
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2f
	.long	.LASF28
	.byte	0x1
	.value	0x30c
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"new_limit"
	.byte	0x1
	.value	0x322
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x54c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11254
	.byte	0x0
	.uleb128 0x2a
	.long	0x3e79
	.string	"rename_insn_1"
	.byte	0x1
	.value	0x339
	.byte	0x1
	.long	0x20d
	.long	.LFB39
	.long	.LFE39
	.long	.LLST23
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x337
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x338
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x33a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x33b
	.long	0x3c8d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x3e14
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"destp"
	.byte	0x1
	.value	0x344
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x345
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x36a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x36a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.string	"saved_new_renames"
	.byte	0x1
	.value	0x37a
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3e31
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x39d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x3e68
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x3b5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x3bb
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x54b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11316
	.byte	0x0
	.uleb128 0x2a
	.long	0x3ef3
	.string	"gen_sequence"
	.byte	0x1
	.value	0x3d3
	.byte	0x1
	.long	0x98
	.long	.LFB40
	.long	.LFE40
	.long	.LLST24
	.uleb128 0x2b
	.string	"first_insn"
	.byte	0x1
	.value	0x3d4
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"result"
	.byte	0x1
	.value	0x3d5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x3d6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x3d7
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x3d8
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x404e
	.string	"rename_block"
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST25
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x3e9
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"idom"
	.byte	0x1
	.value	0x3ea
	.long	0x2270
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x3ec
	.long	0x2265
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x3ed
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x3ee
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x3ee
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x3ee
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"set_data"
	.byte	0x1
	.value	0x3ef
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x3f0
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x3fe1
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x3fc
	.long	0x3bc5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x40b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x40c
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x400d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"phi"
	.byte	0x1
	.value	0x42b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x42c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x403d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x460
	.long	0x3bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"old_reg"
	.byte	0x1
	.value	0x461
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x54ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11462
	.byte	0x0
	.uleb128 0x2a
	.long	0x40b4
	.string	"phi_alternative"
	.byte	0x1
	.value	0x19b
	.byte	0x1
	.long	0x15d9
	.long	.LFB28
	.long	.LFE28
	.long	.LLST26
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x199
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x19a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"phi_vec"
	.byte	0x1
	.value	0x19c
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"v"
	.byte	0x1
	.value	0x19d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x40fa
	.string	"rename_registers"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x471
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"idom"
	.byte	0x1
	.value	0x472
	.long	0x2270
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x31
	.long	0x418b
	.byte	0x1
	.string	"convert_to_ssa"
	.byte	0x1
	.value	0x488
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x1
	.value	0x48a
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"dfs"
	.byte	0x1
	.value	0x48d
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"idfs"
	.byte	0x1
	.value	0x48e
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"idom"
	.byte	0x1
	.value	0x491
	.long	0x2270
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x493
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x495
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF27
	.long	0x5498
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11589
	.byte	0x0
	.uleb128 0x2a
	.long	0x4275
	.string	"ephi_forward"
	.byte	0x1
	.value	0x4f9
	.byte	0x1
	.long	0x729
	.long	.LFB45
	.long	.LFE45
	.long	.LLST29
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x4f5
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x4f6
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"succ"
	.byte	0x1
	.value	0x4f7
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"tstack"
	.byte	0x1
	.value	0x4f8
	.long	0x729
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x4fa
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x4fe
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x4fe
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x4fe
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x4fe
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x4fe
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x4fe
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x4359
	.string	"ephi_backward"
	.byte	0x1
	.value	0x510
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST30
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x50d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x50e
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"pred"
	.byte	0x1
	.value	0x50e
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x50f
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x511
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x515
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x515
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x515
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x515
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x515
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x515
	.long	0x393
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x4599
	.string	"ephi_create"
	.byte	0x1
	.value	0x527
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST31
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x524
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x525
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"pred"
	.byte	0x1
	.value	0x525
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"succ"
	.byte	0x1
	.value	0x525
	.long	0x3690
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x526
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"reg_u"
	.byte	0x1
	.value	0x528
	.long	0x98
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"unvisited_predecessors"
	.byte	0x1
	.value	0x529
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x52a
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	0x4489
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x531
	.long	0x2e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x531
	.long	0x2e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x531
	.long	0x2e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x531
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x531
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x531
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x4507
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x544
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x544
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x544
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x544
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x544
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x544
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x551
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x552
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x552
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x552
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x552
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x552
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x552
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x46f2
	.string	"eliminate_phi"
	.byte	0x1
	.value	0x561
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST32
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x55f
	.long	0x1fe6
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x560
	.long	0x1c12
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"n_nodes"
	.byte	0x1
	.value	0x562
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"pred"
	.byte	0x1
	.value	0x563
	.long	0x3690
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"succ"
	.byte	0x1
	.value	0x563
	.long	0x3690
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF30
	.byte	0x1
	.value	0x564
	.long	0x1c83
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x565
	.long	0x15d9
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"stack"
	.byte	0x1
	.value	0x566
	.long	0x729
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"tstack"
	.byte	0x1
	.value	0x566
	.long	0x729
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x567
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x568
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"out"
	.byte	0x1
	.value	0x5ca
	.long	.L401
	.uleb128 0x33
	.long	0x46e1
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2b
	.string	"preg"
	.byte	0x1
	.value	0x589
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"tgt"
	.byte	0x1
	.value	0x58a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x58b
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"ireg"
	.byte	0x1
	.value	0x59d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"itgt"
	.byte	0x1
	.value	0x59d
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x5483
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11995
	.byte	0x0
	.uleb128 0x2a
	.long	0x4758
	.string	"ephi_add_node"
	.byte	0x1
	.value	0x4e4
	.byte	0x1
	.long	0x20d
	.long	.LFB44
	.long	.LFE44
	.long	.LLST33
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x4e2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x4e2
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"n_nodes"
	.byte	0x1
	.value	0x4e3
	.long	0x729
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4e5
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2a
	.long	0x4864
	.string	"make_regs_equivalent_over_bad_edges"
	.byte	0x1
	.value	0x5e2
	.byte	0x1
	.long	0x20d
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x5e0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x5e1
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x5e3
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x5e4
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"phi"
	.byte	0x1
	.value	0x5e5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x4853
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x5ef
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x5f0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x5f1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"tgt"
	.byte	0x1
	.value	0x5f2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"alt"
	.byte	0x1
	.value	0x5fe
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"alt_regno"
	.byte	0x1
	.value	0x5ff
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x546e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12172
	.byte	0x0
	.uleb128 0x2a
	.long	0x49c4
	.string	"make_equivalent_phi_alternatives_equivalent"
	.byte	0x1
	.value	0x62b
	.byte	0x1
	.long	0x20d
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x629
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x62a
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x62c
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x62d
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"phi"
	.byte	0x1
	.value	0x62e
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	0x49b3
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x638
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF31
	.byte	0x1
	.value	0x63a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"phi2"
	.byte	0x1
	.value	0x63c
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x643
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tgt2_regno"
	.byte	0x1
	.value	0x645
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x64b
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"pred_block"
	.byte	0x1
	.value	0x64f
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"alt"
	.byte	0x1
	.value	0x652
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"alt2"
	.byte	0x1
	.value	0x653
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x5469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12256
	.byte	0x0
	.uleb128 0x2a
	.long	0x4a2b
	.string	"compute_conservative_reg_partition"
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	0x1c12
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x67f
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x680
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x685
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x4aaa
	.string	"coalesce_if_unconflicting"
	.byte	0x1
	.value	0x6c0
	.byte	0x1
	.long	0x20d
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x6bc
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x6bd
	.long	0x2294
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"reg1"
	.byte	0x1
	.value	0x6be
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"reg2"
	.byte	0x1
	.value	0x6bf
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x6c1
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x4b6f
	.string	"coalesce_regs_in_copies"
	.byte	0x1
	.value	0x6ef
	.byte	0x1
	.long	0x20d
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x6ec
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x6ed
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x6ee
	.long	0x2294
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x6f0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x6f1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x6f2
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2b
	.string	"pattern"
	.byte	0x1
	.value	0x6f7
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x6f8
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"dest"
	.byte	0x1
	.value	0x6f9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x4bb9
	.string	"phi_coalesce_context"
	.byte	0xc
	.byte	0x1
	.value	0x71d
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.value	0x71e
	.long	0x1c12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x1
	.value	0x71f
	.long	0x2294
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x1
	.value	0x720
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2a
	.long	0x4c3f
	.string	"coalesce_reg_in_phi"
	.byte	0x1
	.value	0x72e
	.byte	0x1
	.long	0x20d
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x72a
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"dest_regno"
	.byte	0x1
	.value	0x72b
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"src_regno"
	.byte	0x1
	.value	0x72c
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x72d
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x72f
	.long	0x4c3f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b6f
	.uleb128 0x2a
	.long	0x4cbd
	.string	"coalesce_regs_in_successor_phi_nodes"
	.byte	0x1
	.value	0x747
	.byte	0x1
	.long	0x20d
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x744
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x745
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x746
	.long	0x2294
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x748
	.long	0x4b6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x4d61
	.string	"compute_coalesced_reg_partition"
	.byte	0x1
	.value	0x759
	.byte	0x1
	.long	0x1c12
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x75a
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x75b
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"phi_set_head"
	.byte	0x1
	.value	0x75c
	.long	0x1f03
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x75d
	.long	0x1f16
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x75f
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2f
	.long	.LASF32
	.byte	0x1
	.value	0x76d
	.long	0x2294
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x4dd8
	.string	"mark_reg_in_phi"
	.byte	0x1
	.value	0x795
	.byte	0x1
	.long	0x20d
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x793
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x794
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"expr"
	.byte	0x1
	.value	0x796
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x797
	.long	0x1f16
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF27
	.long	0x5454
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12492
	.byte	0x0
	.uleb128 0x27
	.long	0x4e5e
	.string	"mark_phi_and_copy_regs"
	.byte	0x1
	.value	0x7ae
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x7ad
	.long	0x1f16
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x7af
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x7b5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"pattern"
	.byte	0x1
	.value	0x7b6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x7b7
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x4f49
	.string	"rename_equivalent_regs_in_insn"
	.byte	0x1
	.value	0x7dc
	.byte	0x1
	.long	0x20d
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.value	0x7da
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x7db
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x7dd
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x7de
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x4f38
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"regno"
	.byte	0x1
	.value	0x7e8
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF28
	.byte	0x1
	.value	0x7e9
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"canonical_element_rtx"
	.byte	0x1
	.value	0x7ea
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x7f4
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x543f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12549
	.byte	0x0
	.uleb128 0x2a
	.long	0x4fca
	.string	"record_canonical_element_1"
	.byte	0x1
	.value	0x80f
	.byte	0x1
	.long	0x20d
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x28
	.string	"srfp"
	.byte	0x1
	.value	0x80d
	.long	0x67e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x80e
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x810
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x811
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x813
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	0x5112
	.string	"check_hard_regs_in_partition"
	.byte	0x1
	.value	0x822
	.byte	0x1
	.long	0x20d
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x821
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF13
	.byte	0x1
	.value	0x826
	.long	0x1c83
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"element_index"
	.byte	0x1
	.value	0x827
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"already_seen"
	.byte	0x1
	.value	0x828
	.long	0x5112
	.byte	0x4
	.byte	0x91
	.sleb128 -38096
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x829
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"mach_mode"
	.byte	0x1
	.value	0x82a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x838
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF19
	.byte	0x1
	.value	0x838
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x838
	.long	0x2e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF21
	.byte	0x1
	.value	0x838
	.long	0x1c98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x838
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x838
	.long	0x393
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2b
	.string	"hard_reg_rtx"
	.byte	0x1
	.value	0x838
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x5128
	.long	0x20d
	.uleb128 0xf
	.long	0x2fd
	.byte	0xaf
	.uleb128 0xf
	.long	0x2fd
	.byte	0x35
	.byte	0x0
	.uleb128 0x27
	.long	0x51f1
	.string	"rename_equivalent_regs"
	.byte	0x1
	.value	0x84e
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x84d
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x84f
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x51e0
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2f
	.long	.LASF7
	.byte	0x1
	.value	0x853
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x854
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x855
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x865
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"slen"
	.byte	0x1
	.value	0x866
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x867
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x542a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12679
	.byte	0x0
	.uleb128 0x31
	.long	0x529c
	.byte	0x1
	.string	"convert_from_ssa"
	.byte	0x1
	.value	0x87c
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x87d
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x87d
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x87e
	.long	0x1c12
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"insns"
	.byte	0x1
	.value	0x87f
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x526e
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x899
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x528b
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x8a5
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	.LASF27
	.long	0x5415
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12716
	.byte	0x0
	.uleb128 0x2e
	.long	0x5389
	.byte	0x1
	.string	"for_each_successor_phi"
	.byte	0x1
	.value	0x8d7
	.byte	0x1
	.long	0x20d
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x8d4
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"fn"
	.byte	0x1
	.value	0x8d5
	.long	0x3096
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF6
	.byte	0x1
	.value	0x8d6
	.long	0x3e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x8d8
	.long	0x1fe6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x8e0
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"successor"
	.byte	0x1
	.value	0x8e2
	.long	0x2265
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2b
	.string	"result"
	.byte	0x1
	.value	0x8f0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x8f1
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"alternative"
	.byte	0x1
	.value	0x8f2
	.long	0x15d9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"phi_src"
	.byte	0x1
	.value	0x8f3
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x5405
	.string	"conflicting_hard_regs_p"
	.byte	0x1
	.value	0x912
	.byte	0x1
	.long	0x20d
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x28
	.string	"reg1"
	.byte	0x1
	.value	0x910
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"reg2"
	.byte	0x1
	.value	0x911
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"orig_reg1"
	.byte	0x1
	.value	0x913
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"orig_reg2"
	.byte	0x1
	.value	0x914
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xe
	.long	0x5415
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x5405
	.uleb128 0xe
	.long	0x542a
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x16
	.byte	0x0
	.uleb128 0x9
	.long	0x541a
	.uleb128 0xe
	.long	0x543f
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x1e
	.byte	0x0
	.uleb128 0x9
	.long	0x542f
	.uleb128 0xe
	.long	0x5454
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x5444
	.uleb128 0xe
	.long	0x5469
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x2b
	.byte	0x0
	.uleb128 0x9
	.long	0x5459
	.uleb128 0x9
	.long	0x719
	.uleb128 0xe
	.long	0x5483
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x5473
	.uleb128 0xe
	.long	0x5498
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x5488
	.uleb128 0xe
	.long	0x54ad
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x549d
	.uleb128 0x9
	.long	0x5473
	.uleb128 0xe
	.long	0x54c7
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x54b7
	.uleb128 0x9
	.long	0x54b7
	.uleb128 0x35
	.string	"conservative_reg_partition"
	.byte	0x1
	.byte	0x57
	.long	0x20d
	.byte	0x5
	.byte	0x3
	.long	conservative_reg_partition
	.uleb128 0x35
	.string	"ssa_rename_to_pseudo"
	.byte	0x1
	.byte	0x6c
	.long	0x15d9
	.byte	0x5
	.byte	0x3
	.long	ssa_rename_to_pseudo
	.uleb128 0xe
	.long	0x5531
	.long	0x98
	.uleb128 0xf
	.long	0x2fd
	.byte	0xaf
	.uleb128 0xf
	.long	0x2fd
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"ssa_rename_to_hard"
	.byte	0x1
	.byte	0x70
	.long	0x551b
	.byte	0x5
	.byte	0x3
	.long	ssa_rename_to_hard
	.uleb128 0x35
	.string	"ssa_max_reg_num"
	.byte	0x1
	.byte	0x9f
	.long	0x2e6
	.byte	0x5
	.byte	0x3
	.long	ssa_max_reg_num
	.uleb128 0x2b
	.string	"fe_evals"
	.byte	0x1
	.value	0x1c8
	.long	0x3690
	.byte	0x5
	.byte	0x3
	.long	fe_evals
	.uleb128 0x2b
	.string	"fe_current_bb"
	.byte	0x1
	.value	0x1c9
	.long	0x20d
	.byte	0x5
	.byte	0x3
	.long	fe_current_bb
	.uleb128 0xe
	.long	0x55b1
	.long	0x32a
	.uleb128 0xf
	.long	0x2fd
	.byte	0x35
	.byte	0x0
	.uleb128 0x36
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x55c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x55a1
	.uleb128 0xe
	.long	0x55d9
	.long	0x205
	.uleb128 0xf
	.long	0x2fd
	.byte	0xa2
	.byte	0x0
	.uleb128 0x36
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x55ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x55c9
	.uleb128 0xe
	.long	0x5601
	.long	0x98
	.uleb128 0xf
	.long	0x2fd
	.byte	0xa
	.byte	0x0
	.uleb128 0x37
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x55f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x20d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x1b57
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x565a
	.long	0x1419
	.uleb128 0xf
	.long	0x2fd
	.byte	0x1
	.byte	0x0
	.uleb128 0x37
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x564a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x3025
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"rtl_dump_file"
	.byte	0x10
	.value	0x1b8
	.long	0x569d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3f1
	.uleb128 0x38
	.string	"in_ssa_form"
	.byte	0x1
	.byte	0x5a
	.long	0x20d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	in_ssa_form
	.uleb128 0x38
	.string	"ssa_definition"
	.byte	0x1
	.byte	0x5d
	.long	0x1b57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ssa_definition
	.uleb128 0x38
	.string	"ssa_rename_from"
	.byte	0x1
	.byte	0x61
	.long	0x1b57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ssa_rename_from
	.uleb128 0x38
	.string	"ssa_rename_from_ht"
	.byte	0x1
	.byte	0x68
	.long	0x1e32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ssa_rename_from_ht
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xf4
	.value	0x2
	.long	.Ldebug_info0
	.long	0x571a
	.long	0x33d4
	.string	"ssa_rename_from_print"
	.long	0x3531
	.string	"remove_phi_alternative"
	.long	0x37be
	.string	"compute_dominance_frontiers"
	.long	0x40fa
	.string	"convert_to_ssa"
	.long	0x51f1
	.string	"convert_from_ssa"
	.long	0x529c
	.string	"for_each_successor_phi"
	.long	0x56a3
	.string	"in_ssa_form"
	.long	0x56bd
	.string	"ssa_definition"
	.long	0x56da
	.string	"ssa_rename_from"
	.long	0x56f8
	.string	"ssa_rename_from_ht"
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
.LASF9:
	.string	"dominance_info"
.LASF7:
	.string	"next"
.LASF25:
	.string	"insn"
.LASF4:
	.string	"basic_block"
.LASF8:
	.string	"nodes"
.LASF15:
	.string	"evals"
.LASF24:
	.string	"changed"
.LASF13:
	.string	"canonical_elements"
.LASF18:
	.string	"word_num_"
.LASF3:
	.string	"mem_attrs"
.LASF16:
	.string	"nregs"
.LASF21:
	.string	"ptr_"
.LASF20:
	.string	"size_"
.LASF32:
	.string	"conflicts"
.LASF23:
	.string	"_mask"
.LASF5:
	.string	"num_elements"
.LASF10:
	.string	"sequence_stack"
.LASF26:
	.string	"new_reg"
.LASF14:
	.string	"reg_partition"
.LASF29:
	.string	"context"
.LASF27:
	.string	"__FUNCTION__"
.LASF33:
	.string	"phi_set"
.LASF17:
	.string	"frontiers"
.LASF2:
	.string	"_IO_FILE"
.LASF28:
	.string	"new_regno"
.LASF30:
	.string	"visited"
.LASF31:
	.string	"tgt_regno"
.LASF6:
	.string	"data"
.LASF22:
	.string	"word_"
.LASF0:
	.string	"num_elem"
.LASF19:
	.string	"bit_num_"
.LASF12:
	.string	"function_frequency"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"sequence_rtl_expr"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
