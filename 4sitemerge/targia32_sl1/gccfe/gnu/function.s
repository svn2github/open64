	.file	"function.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl cfun
	.bss
	.align 4
	.type	cfun, @object
	.size	cfun, 4
cfun:
	.zero	4
	.section	.rodata
	.type	__FUNCTION__.14105, @object
	.size	__FUNCTION__.14105, 19
__FUNCTION__.14105:
	.string	"find_function_data"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/function.c"
	.text
.globl find_function_data
	.type	find_function_data, @function
find_function_data:
.LFB15:
	.file 1 "../../../kgccfe/gnu/function.c"
	.loc 1 317 0
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
	.loc 1 320 0
	movl	outer_function_chain@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2
.L3:
	.loc 1 321 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L4
	.loc 1 322 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1
.L4:
	.loc 1 320 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
.L2:
	cmpl	$0, -8(%ebp)
	jne	.L3
	.loc 1 324 0
	leal	__FUNCTION__.14105@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$324, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1:
	.loc 1 325 0
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	find_function_data, .-find_function_data
.globl push_function_context_to
	.type	push_function_context_to, @function
push_function_context_to:
.LFB16:
	.loc 1 336 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 339 0
	cmpl	$0, 8(%ebp)
	je	.L9
	.loc 1 341 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L11
	.loc 1 342 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	orl	$4, %eax
	movb	%al, 297(%edx)
	jmp	.L9
.L11:
.LBB2:
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_function_data@PLT
	movl	%eax, -8(%ebp)
	.loc 1 346 0
	movl	-8(%ebp), %edx
	movzbl	297(%edx), %eax
	orl	$4, %eax
	movb	%al, 297(%edx)
.L9:
.LBE2:
	.loc 1 350 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L13
	.loc 1 351 0
	call	init_dummy_function_start@PLT
.L13:
	.loc 1 352 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 354 0
	movl	outer_function_chain@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 355 0
	movl	-12(%ebp), %eax
	movl	%eax, outer_function_chain@GOTOFF(%ebx)
	.loc 1 356 0
	movl	-12(%ebp), %eax
	movl	$0, 244(%eax)
	.loc 1 358 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 360 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 361 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	push_function_context_to, .-push_function_context_to
.globl push_function_context
	.type	push_function_context, @function
push_function_context:
.LFB17:
	.loc 1 365 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$4, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 366 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	push_function_context_to@PLT
	.loc 1 367 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	push_function_context, .-push_function_context
.globl pop_function_context_from
	.type	pop_function_context_from, @function
pop_function_context_from:
.LFB18:
	.loc 1 375 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$48, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 376 0
	movl	outer_function_chain@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 379 0
	movl	cfun@GOT(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 380 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, outer_function_chain@GOTOFF(%ebx)
	.loc 1 382 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 383 0
	movl	reg_renumber@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 385 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	restore_emit_status@PLT
	.loc 1 387 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	156(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 393 0
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 395 0
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L21
	.loc 1 396 0
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	(%eax), %esi
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	fixup_var_refs
	jmp	.L19
.L21:
.LBB3:
	.loc 1 402 0
	movl	$0, -12(%ebp)
	.loc 1 404 0
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L23
.L24:
	.loc 1 405 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
	.loc 1 404 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L23:
	cmpl	$0, -16(%ebp)
	jne	.L24
	.loc 1 407 0
	movl	-20(%ebp), %eax
	movl	244(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L26
.L27:
	.loc 1 408 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	$0, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	fixup_var_refs
	.loc 1 407 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L26:
	cmpl	$0, -16(%ebp)
	jne	.L27
.L19:
.LBE3:
	.loc 1 413 0
	movl	-20(%ebp), %eax
	movl	$0, 244(%eax)
	.loc 1 416 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 417 0
	movl	virtuals_instantiated@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 418 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 419 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	pop_function_context_from, .-pop_function_context_from
.globl pop_function_context
	.type	pop_function_context, @function
pop_function_context:
.LFB19:
	.loc 1 423 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$4, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 424 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	pop_function_context_from@PLT
	.loc 1 425 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	pop_function_context, .-pop_function_context
.globl free_after_parsing
	.type	free_after_parsing, @function
free_after_parsing:
.LFB20:
	.loc 1 434 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$4, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 440 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	148(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 442 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	free_after_parsing, .-free_after_parsing
.globl free_after_compilation
	.type	free_after_compilation, @function
free_after_compilation:
.LFB21:
	.loc 1 451 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 454 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	$0, 276(%eax)
	.loc 1 458 0
	movl	8(%ebp), %eax
	movl	$0, 228(%eax)
	.loc 1 459 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 460 0
	movl	8(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 461 0
	movl	8(%ebp), %eax
	movl	$0, 120(%eax)
	.loc 1 462 0
	movl	8(%ebp), %eax
	movl	$0, 136(%eax)
	.loc 1 463 0
	movl	8(%ebp), %eax
	movl	$0, 140(%eax)
	.loc 1 464 0
	movl	8(%ebp), %eax
	movl	$0, 144(%eax)
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	$0, 148(%eax)
	.loc 1 466 0
	movl	8(%ebp), %eax
	movl	$0, 152(%eax)
	.loc 1 467 0
	movl	8(%ebp), %eax
	movl	$0, 156(%eax)
	.loc 1 468 0
	movl	8(%ebp), %eax
	movl	$0, 160(%eax)
	.loc 1 469 0
	movl	8(%ebp), %eax
	movl	$0, 164(%eax)
	.loc 1 470 0
	movl	8(%ebp), %eax
	movl	$0, 168(%eax)
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	$0, 172(%eax)
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	$0, 176(%eax)
	.loc 1 473 0
	movl	8(%ebp), %eax
	movl	$0, 180(%eax)
	.loc 1 474 0
	movl	8(%ebp), %eax
	movl	$0, 184(%eax)
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	$0, 188(%eax)
	.loc 1 476 0
	movl	8(%ebp), %eax
	movl	$0, 192(%eax)
	.loc 1 477 0
	movl	8(%ebp), %eax
	movl	$0, 204(%eax)
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	$0, 208(%eax)
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	$0, 212(%eax)
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	$0, 216(%eax)
	.loc 1 481 0
	movl	8(%ebp), %eax
	movl	$0, 224(%eax)
	.loc 1 482 0
	movl	8(%ebp), %eax
	movl	$0, 244(%eax)
	.loc 1 483 0
	movl	8(%ebp), %eax
	movl	$0, 256(%eax)
	.loc 1 484 0
	movl	8(%ebp), %eax
	movl	$0, 260(%eax)
	.loc 1 485 0
	movl	8(%ebp), %eax
	movl	$0, 264(%eax)
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	$0, 292(%eax)
	.loc 1 487 0
	popl	%ebp
	ret
.LFE21:
	.size	free_after_compilation, .-free_after_compilation
.globl get_func_frame_size
	.type	get_func_frame_size, @function
get_func_frame_size:
.LFB22:
	.loc 1 499 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	.loc 1 503 0
	movl	8(%ebp), %eax
	movl	200(%eax), %edx
	movl	196(%eax), %eax
	.loc 1 505 0
	popl	%ebp
	ret
.LFE22:
	.size	get_func_frame_size, .-get_func_frame_size
.globl get_frame_size
	.type	get_frame_size, @function
get_frame_size:
.LFB23:
	.loc 1 512 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$4, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 513 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_func_frame_size@PLT
	.loc 1 514 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	get_frame_size, .-get_frame_size
	.type	assign_stack_local_1, @function
assign_stack_local_1:
.LFB24:
	.loc 1 534 0
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
	subl	$140, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 536 0
	movl	$0, -40(%ebp)
	.loc 1 540 0
	cmpl	$0, 20(%ebp)
	jne	.L40
.LBB4:
	.loc 1 544 0
	cmpl	$52, 8(%ebp)
	jne	.L42
	.loc 1 545 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L44
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L46
.L44:
	movl	$128, -128(%ebp)
	jmp	.L47
.L46:
	movl	$64, -128(%ebp)
.L47:
	movl	-128(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L48
.L42:
	.loc 1 547 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -36(%ebp)
.L48:
	.loc 1 551 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 555 0
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -36(%ebp)
	jmp	.L51
.L40:
.LBE4:
	.loc 1 557 0
	cmpl	$-1, 20(%ebp)
	jne	.L52
	.loc 1 559 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L54
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L56
.L54:
	movl	$16, -124(%ebp)
	jmp	.L57
.L56:
	movl	$8, -124(%ebp)
.L57:
	movl	-124(%ebp), %edx
	movl	%edx, -36(%ebp)
	.loc 1 560 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-36(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -52(%ebp)
	jmp	.L51
.L52:
	.loc 1 563 0
	movl	20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -36(%ebp)
.L51:
	.loc 1 570 0
	movl	-36(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -120(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L58
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L58
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L61
.L58:
	movl	$64, -116(%ebp)
	jmp	.L62
.L61:
	movl	$128, -116(%ebp)
.L62:
	movl	-116(%ebp), %ecx
	cmpl	%ecx, -120(%ebp)
	jle	.L63
	.loc 1 571 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L65
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L65
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L68
.L65:
	movl	$8, -112(%ebp)
	jmp	.L69
.L68:
	movl	$16, -112(%ebp)
.L69:
	movl	-112(%ebp), %esi
	movl	%esi, -36(%ebp)
.L63:
	.loc 1 573 0
	movl	24(%ebp), %eax
	movl	280(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$3, %eax
	cmpl	%eax, %edx
	jge	.L70
	.loc 1 574 0
	movl	-36(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	24(%ebp), %eax
	movl	%edx, 280(%eax)
.L70:
	.loc 1 578 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L72
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L72
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L75
.L72:
	movl	$8, -108(%ebp)
	jmp	.L76
.L75:
	movl	$16, -108(%ebp)
.L76:
	movl	-108(%ebp), %edi
	movl	%edi, -28(%ebp)
	.loc 1 579 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L77
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L79
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L79
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L82
.L79:
	movl	$8, -96(%ebp)
	jmp	.L83
.L82:
	movl	$16, -96(%ebp)
.L83:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L84
.L77:
	movl	$0, -100(%ebp)
.L84:
	movl	-104(%ebp), %edx
	addl	-100(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-28(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 580 0
	cmpl	$0, -32(%ebp)
	je	.L85
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, -92(%ebp)
	jmp	.L87
.L85:
	movl	$0, -92(%ebp)
.L87:
	movl	-92(%ebp), %esi
	movl	%esi, -24(%ebp)
	.loc 1 590 0
	movl	24(%ebp), %eax
	movl	196(%eax), %esi
	movl	200(%eax), %edi
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-36(%ebp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%ecx, %esi
	movl	%ecx, %edi
	sarl	$31, %edi
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	24(%ebp), %ecx
	movl	%eax, 196(%ecx)
	movl	%edx, 200(%ecx)
	.loc 1 595 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L88
	cmpl	$52, 8(%ebp)
	je	.L88
	.loc 1 596 0
	movl	-56(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -40(%ebp)
.L88:
	.loc 1 600 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 24(%ebp)
	jne	.L91
	movl	virtuals_instantiated@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L91
	.loc 1 601 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	196(%eax), %edx
	movl	200(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L94
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L96
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L96
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L99
.L96:
	movl	$8, -60(%ebp)
	jmp	.L100
.L99:
	movl	$16, -60(%ebp)
.L100:
	movl	-60(%ebp), %edi
	movl	%edi, -64(%ebp)
	jmp	.L101
.L94:
	movl	$0, -64(%ebp)
.L101:
	movl	-68(%ebp), %eax
	addl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	-80(%ebp), %edx
	adcl	-76(%ebp), %ecx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -44(%ebp)
	.loc 1 600 0
	jmp	.L102
.L91:
	.loc 1 605 0
	movl	24(%ebp), %eax
	movl	196(%eax), %esi
	movl	200(%eax), %edi
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	addl	%esi, %edx
	adcl	%edi, %ecx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -44(%ebp)
.L102:
	.loc 1 609 0
	movl	24(%ebp), %eax
	movl	200(%eax), %edx
	movl	196(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	movl	24(%ebp), %ecx
	movl	%eax, 196(%ecx)
	movl	%edx, 200(%ecx)
	.loc 1 612 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -48(%ebp)
	.loc 1 614 0
	movl	24(%ebp), %eax
	movl	172(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 172(%eax)
	.loc 1 617 0
	movl	-48(%ebp), %eax
	.loc 1 618 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	assign_stack_local_1, .-assign_stack_local_1
.globl assign_stack_local
	.type	assign_stack_local, @function
assign_stack_local:
.LFB25:
	.loc 1 628 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$36, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 629 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_stack_local_1
	.loc 1 630 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	assign_stack_local, .-assign_stack_local
	.section	.rodata
	.type	__FUNCTION__.14378, @object
	.size	__FUNCTION__.14378, 27
__FUNCTION__.14378:
	.string	"assign_stack_temp_for_type"
	.text
.globl assign_stack_temp_for_type
	.type	assign_stack_temp_for_type, @function
assign_stack_temp_for_type:
.LFB26:
	.loc 1 655 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%edi
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$156, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 657 0
	movl	$0, -28(%ebp)
	.loc 1 662 0
	movl	-68(%ebp), %edx
	xorl	$-1, %edx
	movl	-72(%ebp), %eax
	xorl	$-1, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L107
	.loc 1 663 0
	leal	__FUNCTION__.14378@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$663, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L107:
	.loc 1 665 0
	cmpl	$52, 8(%ebp)
	jne	.L109
	.loc 1 666 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L111
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L113
.L111:
	movl	$128, -148(%ebp)
	jmp	.L114
.L113:
	movl	$64, -148(%ebp)
.L114:
	movl	-148(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L115
.L109:
	.loc 1 668 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -36(%ebp)
.L115:
	.loc 1 670 0
	cmpl	$0, 24(%ebp)
	jne	.L116
	.loc 1 671 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 24(%ebp)
.L116:
	.loc 1 679 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L120
.L121:
	.loc 1 680 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L122
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-140(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	jl	.L122
	movl	-140(%ebp), %esi
	cmpl	-68(%ebp), %esi
	jg	.L125
	movl	-144(%ebp), %edi
	cmpl	-72(%ebp), %edi
	jb	.L122
.L125:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L122
	movl	-32(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	jne	.L122
	movl	-32(%ebp), %eax
	movl	24(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	objects_must_conflict_p@PLT
	testl	%eax, %eax
	je	.L122
	cmpl	$0, -28(%ebp)
	je	.L129
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-32(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-124(%ebp), %edi
	cmpl	%edi, -132(%ebp)
	jg	.L129
	movl	-124(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	jl	.L132
	movl	-128(%ebp), %edx
	cmpl	%edx, -136(%ebp)
	ja	.L129
.L132:
	movl	-28(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L122
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L122
.L129:
	.loc 1 686 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L134
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edx, %ecx
	xorl	-68(%ebp), %ecx
	xorl	-72(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L134
	.loc 1 688 0
	movl	$0, -28(%ebp)
	.loc 1 689 0
	jmp	.L137
.L134:
	.loc 1 691 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L122:
	.loc 1 679 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L120:
	cmpl	$0, -32(%ebp)
	jne	.L121
.L137:
	.loc 1 695 0
	cmpl	$0, -28(%ebp)
	je	.L138
	.loc 1 700 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L140
.LBB5:
	.loc 1 702 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 703 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-20(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -52(%ebp)
	.loc 1 705 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-56(%ebp), %esi
	sbbl	-52(%ebp), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edi, -108(%ebp)
	movl	-108(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jl	.L140
	movl	-108(%ebp), %edx
	cmpl	%edx, -116(%ebp)
	jg	.L143
	movl	-112(%ebp), %ecx
	cmpl	%ecx, -120(%ebp)
	jb	.L140
.L143:
	.loc 1 707 0
	movl	$60, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 708 0
	movl	-32(%ebp), %eax
	movb	$0, 33(%eax)
	movl	-32(%ebp), %eax
	movzbl	33(%eax), %edx
	movl	-32(%ebp), %eax
	movb	%dl, 32(%eax)
	.loc 1 709 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	subl	-56(%ebp), %eax
	sbbl	-52(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 710 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %edx
	movl	44(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 44(%ecx)
	movl	%edx, 48(%ecx)
	.loc 1 711 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	subl	-56(%ebp), %eax
	sbbl	-52(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	.loc 1 712 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 715 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 716 0
	movl	-32(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 717 0
	movl	-32(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 718 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 719 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 720 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 228(%edx)
	.loc 1 722 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	172(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 172(%esi)
	.loc 1 725 0
	movl	-28(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 726 0
	movl	-28(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
.L140:
.LBE5:
	.loc 1 730 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L138:
	.loc 1 734 0
	cmpl	$0, -32(%ebp)
	jne	.L144
.LBB6:
	.loc 1 736 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	200(%eax), %edx
	movl	196(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 738 0
	movl	$60, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 747 0
	cmpl	$52, 8(%ebp)
	jne	.L146
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L148
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L150
.L148:
	movl	$128, -104(%ebp)
	jmp	.L151
.L150:
	movl	$64, -104(%ebp)
.L151:
	movl	-104(%ebp), %esi
	cmpl	-36(%ebp), %esi
	jbe	.L146
	.loc 1 748 0
	leal	__FUNCTION__.14378@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$748, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L146:
	.loc 1 749 0
	movl	-36(%ebp), %edi
	movl	%edi, -100(%ebp)
	cmpl	$52, 8(%ebp)
	jne	.L153
	movl	-36(%ebp), %eax
	shrl	$3, %eax
	movl	$0, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-36(%ebp), %eax
	shrl	$3, %eax
	negl	%eax
	movl	$0, %edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -96(%ebp)
	movl	%edi, %ecx
	andl	%edx, %ecx
	movl	%ecx, -92(%ebp)
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	jmp	.L155
.L153:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
.L155:
	movl	-100(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 755 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 767 0
	movl	-32(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 775 0
	movl	-32(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 44(%ecx)
	movl	%edx, 48(%ecx)
	.loc 1 776 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	200(%eax), %edx
	movl	196(%eax), %eax
	subl	-48(%ebp), %eax
	sbbl	-44(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	.loc 1 778 0
	movl	-32(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 779 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 780 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 228(%edx)
.L144:
.LBE6:
	.loc 1 783 0
	movl	-32(%ebp), %eax
	movb	$1, 32(%eax)
	.loc 1 784 0
	movl	-32(%ebp), %eax
	movb	$0, 33(%eax)
	.loc 1 785 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 786 0
	movl	-32(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 788 0
	cmpl	$2, 20(%ebp)
	jne	.L156
	.loc 1 790 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	240(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 791 0
	movl	-32(%ebp), %eax
	movl	$0, 40(%eax)
	jmp	.L158
.L156:
	.loc 1 793 0
	cmpl	$3, 20(%ebp)
	jne	.L159
	.loc 1 795 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	236(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 796 0
	movl	-32(%ebp), %eax
	movl	$0, 40(%eax)
	jmp	.L158
.L159:
	.loc 1 800 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 801 0
	movl	-32(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 40(%edx)
.L158:
	.loc 1 806 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -24(%ebp)
	.loc 1 807 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	172(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 172(%esi)
	.loc 1 812 0
	cmpl	$0, 24(%ebp)
	je	.L161
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L163
.L161:
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
.L163:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 813 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 816 0
	cmpl	$0, 24(%ebp)
	je	.L164
	.loc 1 818 0
	movl	lang_hooks@GOT(%ebx), %eax
	movzbl	96(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L166
	movl	24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L166
	movl	$1, -76(%ebp)
	jmp	.L169
.L166:
	movl	$0, -76(%ebp)
.L169:
	movzbl	-76(%ebp), %eax
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 820 0
	movl	24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 821 0
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L170
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L170
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L170
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L170
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L175
.L170:
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	jmp	.L164
.L175:
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$-128, %eax
	movb	%al, 3(%edx)
.L164:
	.loc 1 824 0
	movl	-24(%ebp), %eax
	.loc 1 825 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	assign_stack_temp_for_type, .-assign_stack_temp_for_type
.globl assign_stack_temp
	.type	assign_stack_temp, @function
assign_stack_temp:
.LFB27:
	.loc 1 835 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$36, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 836 0
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_stack_temp_for_type@PLT
	.loc 1 837 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	assign_stack_temp, .-assign_stack_temp
	.section	.rodata
	.align 4
.LC1:
	.string	"size of variable `%s' is too large"
	.text
.globl assign_temp
	.type	assign_temp, @function
assign_temp:
.LFB28:
	.loc 1 855 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$68, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 862 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L180
	.loc 1 863 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L182
.L180:
	.loc 1 865 0
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L182:
	.loc 1 867 0
	movl	-24(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 869 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 872 0
	cmpl	$52, -16(%ebp)
	je	.L183
	cmpl	$0, 16(%ebp)
	je	.L185
.L183:
.LBB7:
	.loc 1 874 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 879 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L186
	.loc 1 880 0
	movl	$1, -40(%ebp)
	movl	$0, -36(%ebp)
.L186:
	.loc 1 886 0
	movl	-36(%ebp), %eax
	xorl	$-1, %eax
	movl	-40(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L188
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L188
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L188
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L188
	.loc 1 889 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L188:
	.loc 1 895 0
	cmpl	$0, -20(%ebp)
	je	.L193
	movl	-36(%ebp), %eax
	xorl	$-1, %eax
	movl	-40(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L193
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L193
	.loc 1 898 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 899 0
	movl	$1, -40(%ebp)
	movl	$0, -36(%ebp)
.L193:
	.loc 1 902 0
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_stack_temp_for_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 903 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L197
.L185:
.LBE7:
	.loc 1 907 0
	cmpl	$0, 20(%ebp)
	jne	.L198
	.loc 1 908 0
	movl	$0, 12(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	promote_mode@PLT
	movl	%eax, -16(%ebp)
.L198:
	.loc 1 911 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L197:
	movl	-44(%ebp), %eax
	.loc 1 912 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	assign_temp, .-assign_temp
.globl combine_temp_slots
	.type	combine_temp_slots, @function
combine_temp_slots:
.LFB29:
	.loc 1 922 0
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
	subl	$36, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 929 0
	movl	flag_strict_aliasing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L237
	.loc 1 934 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L204
	.loc 1 935 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L206
.L207:
	.loc 1 936 0
	cmpl	$100, -24(%ebp)
	jg	.L237
	cmpl	$10, -24(%ebp)
	jle	.L210
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L210
	.loc 1 937 0
	jmp	.L237
.L210:
	.loc 1 935 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	addl	$1, -24(%ebp)
.L206:
	cmpl	$0, -40(%ebp)
	jne	.L207
.L204:
	.loc 1 939 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L212
.L213:
.LBB8:
	.loc 1 941 0
	movl	$0, -20(%ebp)
	.loc 1 943 0
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	jne	.L214
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L214
	.loc 1 944 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L217
.L218:
.LBB9:
	.loc 1 946 0
	movl	$0, -16(%ebp)
	.loc 1 947 0
	movl	-36(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	jne	.L219
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L219
	.loc 1 949 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %esi
	movl	48(%eax), %edi
	movl	-40(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-36(%ebp), %eax
	movl	48(%eax), %edx
	movl	44(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L222
	.loc 1 952 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 953 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-36(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	.loc 1 954 0
	movl	$1, -16(%ebp)
	jmp	.L219
.L222:
	.loc 1 956 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %esi
	movl	48(%eax), %edi
	movl	-36(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-40(%ebp), %eax
	movl	48(%eax), %edx
	movl	44(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L219
	.loc 1 959 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 960 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-40(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	.loc 1 961 0
	movl	$1, -20(%ebp)
	.loc 1 962 0
	jmp	.L214
.L219:
	.loc 1 966 0
	cmpl	$0, -16(%ebp)
	je	.L225
	.loc 1 967 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L227
.L225:
	.loc 1 969 0
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
.L227:
.LBE9:
	.loc 1 944 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L217:
	cmpl	$0, -36(%ebp)
	jne	.L218
.L214:
	.loc 1 972 0
	cmpl	$0, -20(%ebp)
	je	.L228
	.loc 1 974 0
	cmpl	$0, -32(%ebp)
	je	.L230
	.loc 1 975 0
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L233
.L230:
	.loc 1 977 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 228(%edx)
	jmp	.L233
.L228:
	.loc 1 980 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.L233:
.LBE8:
	.loc 1 939 0
	cmpl	$0, -32(%ebp)
	je	.L234
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L236
.L234:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -48(%ebp)
.L236:
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
.L212:
	cmpl	$0, -40(%ebp)
	jne	.L213
.L237:
	.loc 1 982 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	combine_temp_slots, .-combine_temp_slots
	.type	find_temp_slot_from_address, @function
find_temp_slot_from_address:
.LFB30:
	.loc 1 989 0
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
	subl	$72, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 993 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L239
.L240:
	.loc 1 995 0
	movl	-24(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L241
	.loc 1 998 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L243
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L243
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L246
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	jne	.L246
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L246
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	44(%eax), %esi
	movl	48(%eax), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-60(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jl	.L246
	movl	-60(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jg	.L251
	movl	-64(%ebp), %edx
	cmpl	%edx, -72(%ebp)
	jb	.L246
.L251:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	48(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-24(%ebp), %eax
	movl	56(%eax), %edx
	movl	52(%eax), %eax
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-44(%ebp), %edi
	cmpl	%edi, -52(%ebp)
	jg	.L246
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L243
	movl	-48(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jae	.L246
.L243:
	.loc 1 1005 0
	movl	-24(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	jmp	.L253
.L246:
	.loc 1 1007 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L241
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L241
	.loc 1 1008 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L256
.L257:
	.loc 1 1009 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L258
	.loc 1 1010 0
	movl	-24(%ebp), %esi
	movl	%esi, -36(%ebp)
	jmp	.L253
.L258:
	.loc 1 1008 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L256:
	cmpl	$0, -20(%ebp)
	jne	.L257
.L241:
	.loc 1 993 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L239:
	cmpl	$0, -24(%ebp)
	jne	.L240
	.loc 1 1015 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L261
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L261
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L261
	.loc 1 1017 0
	movl	-24(%ebp), %edi
	movl	%edi, -36(%ebp)
	jmp	.L253
.L261:
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L265
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L265
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L265
	.loc 1 1020 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L253
.L265:
	.loc 1 1022 0
	movl	$0, -36(%ebp)
.L253:
	movl	-36(%ebp), %eax
	.loc 1 1023 0
	addl	$72, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	find_temp_slot_from_address, .-find_temp_slot_from_address
.globl update_temp_slot_address
	.type	update_temp_slot_address, @function
update_temp_slot_address:
.LFB31:
	.loc 1 1031 0
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
	.loc 1 1034 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L291
	.loc 1 1037 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -8(%ebp)
	.loc 1 1044 0
	cmpl	$0, -8(%ebp)
	jne	.L273
	.loc 1 1046 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L291
	.loc 1 1049 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L276
	.loc 1 1051 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_temp_slot_address@PLT
	.loc 1 1052 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	update_temp_slot_address@PLT
	.loc 1 1053 0
	jmp	.L291
.L276:
	.loc 1 1055 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L291
	.loc 1 1058 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L279
	.loc 1 1059 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	update_temp_slot_address@PLT
	jmp	.L291
.L279:
	.loc 1 1060 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L282
	.loc 1 1061 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	update_temp_slot_address@PLT
	jmp	.L291
.L282:
	.loc 1 1062 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L284
	.loc 1 1063 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	update_temp_slot_address@PLT
	jmp	.L291
.L284:
	.loc 1 1064 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L291
	.loc 1 1065 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	update_temp_slot_address@PLT
	.loc 1 1067 0
	jmp	.L291
.L273:
	.loc 1 1071 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L287
	.loc 1 1072 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L291
.L287:
	.loc 1 1075 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	je	.L289
	.loc 1 1076 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
.L289:
	.loc 1 1078 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
.L291:
	.loc 1 1080 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	update_temp_slot_address, .-update_temp_slot_address
.globl mark_temp_addr_taken
	.type	mark_temp_addr_taken, @function
mark_temp_addr_taken:
.LFB32:
	.loc 1 1088 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$24, %esp
.LCFI75:
	.loc 1 1091 0
	cmpl	$0, 8(%ebp)
	je	.L306
	.loc 1 1096 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L306
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L304
	.loc 1 1097 0
	jmp	.L306
.L304:
	.loc 1 1099 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -4(%ebp)
	.loc 1 1100 0
	cmpl	$0, -4(%ebp)
	je	.L306
	.loc 1 1101 0
	movl	-4(%ebp), %eax
	movb	$1, 33(%eax)
.L306:
	.loc 1 1102 0
	leave
	ret
.LFE32:
	.size	mark_temp_addr_taken, .-mark_temp_addr_taken
.globl preserve_temp_slots
	.type	preserve_temp_slots, @function
preserve_temp_slots:
.LFB33:
	.loc 1 1116 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$20, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1117 0
	movl	$0, -12(%ebp)
	.loc 1 1121 0
	cmpl	$0, 8(%ebp)
	jne	.L308
	.loc 1 1123 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L310
.L311:
	.loc 1 1124 0
	movl	-12(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L312
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L312
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	testb	%al, %al
	je	.L312
	.loc 1 1125 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L312:
	.loc 1 1123 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L310:
	cmpl	$0, -12(%ebp)
	jne	.L311
	.loc 1 1127 0
	jmp	.L358
.L308:
	.loc 1 1134 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L318
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L318
	.loc 1 1135 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -12(%ebp)
.L318:
	.loc 1 1140 0
	cmpl	$0, -12(%ebp)
	jne	.L321
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L323
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L321
.L323:
	.loc 1 1142 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L332
.L333:
	.loc 1 1143 0
	movl	-12(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L334
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L334
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	testb	%al, %al
	je	.L334
	.loc 1 1144 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L334:
	.loc 1 1142 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L332:
	cmpl	$0, -12(%ebp)
	jne	.L333
	.loc 1 1146 0
	jmp	.L358
.L321:
	.loc 1 1150 0
	cmpl	$0, -12(%ebp)
	jne	.L339
	.loc 1 1151 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -12(%ebp)
.L339:
	.loc 1 1153 0
	cmpl	$0, -12(%ebp)
	je	.L341
.LBB10:
	.loc 1 1159 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L358
	.loc 1 1161 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L345
.L346:
	.loc 1 1162 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L347
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	testb	%al, %al
	je	.L347
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jne	.L347
	.loc 1 1163 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 36(%eax)
.L347:
	.loc 1 1161 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L345:
	cmpl	$0, -8(%ebp)
	jne	.L346
	.loc 1 1165 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1166 0
	movl	-12(%ebp), %eax
	movb	$0, 33(%eax)
	.loc 1 1168 0
	jmp	.L358
.L341:
.LBE10:
	.loc 1 1172 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L352
.L353:
	.loc 1 1173 0
	movl	-12(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L354
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L354
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L354
	.loc 1 1174 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L354:
	.loc 1 1172 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L352:
	cmpl	$0, -12(%ebp)
	jne	.L353
.L358:
	.loc 1 1175 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	preserve_temp_slots, .-preserve_temp_slots
.globl preserve_rtl_expr_result
	.type	preserve_rtl_expr_result, @function
preserve_rtl_expr_result:
.LFB34:
	.loc 1 1185 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$28, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1190 0
	cmpl	$0, 8(%ebp)
	je	.L375
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L375
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L370
	.loc 1 1191 0
	jmp	.L375
.L370:
	.loc 1 1195 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_temp_slot_from_address
	movl	%eax, -8(%ebp)
	.loc 1 1196 0
	cmpl	$0, -8(%ebp)
	je	.L375
	.loc 1 1198 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %edx
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jle	.L374
	movl	-28(%ebp), %edx
	movl	%edx, -24(%ebp)
.L374:
	movl	-8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 36(%eax)
	.loc 1 1199 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L375:
	.loc 1 1203 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	preserve_rtl_expr_result, .-preserve_rtl_expr_result
.globl free_temp_slots
	.type	free_temp_slots, @function
free_temp_slots:
.LFB35:
	.loc 1 1214 0
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
	.loc 1 1217 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L377
.L378:
	.loc 1 1218 0
	movl	-8(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L379
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L379
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L379
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L379
	.loc 1 1220 0
	movl	-8(%ebp), %eax
	movb	$0, 32(%eax)
.L379:
	.loc 1 1217 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L377:
	cmpl	$0, -8(%ebp)
	jne	.L378
	.loc 1 1222 0
	call	combine_temp_slots@PLT
	.loc 1 1223 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	free_temp_slots, .-free_temp_slots
.globl free_temps_for_rtl_expr
	.type	free_temps_for_rtl_expr, @function
free_temps_for_rtl_expr:
.LFB36:
	.loc 1 1230 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$20, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1233 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L387
.L388:
	.loc 1 1234 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L389
	.loc 1 1240 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %edx
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jg	.L391
	.loc 1 1241 0
	movl	-8(%ebp), %eax
	movb	$0, 32(%eax)
	jmp	.L389
.L391:
	.loc 1 1243 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L389:
	.loc 1 1233 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L387:
	cmpl	$0, -8(%ebp)
	jne	.L388
	.loc 1 1246 0
	call	combine_temp_slots@PLT
	.loc 1 1247 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	free_temps_for_rtl_expr, .-free_temps_for_rtl_expr
.globl mark_all_temps_used
	.type	mark_all_temps_used, @function
mark_all_temps_used:
.LFB37:
	.loc 1 1254 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	subl	$24, %esp
.LCFI94:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1257 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L396
.L397:
	.loc 1 1259 0
	movl	-4(%ebp), %eax
	movl	$1, 40(%eax)
	movl	-4(%ebp), %eax
	movb	$1, 32(%eax)
	.loc 1 1260 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %edx
	movl	-4(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jle	.L398
	movl	-24(%ebp), %edx
	movl	%edx, -20(%ebp)
.L398:
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 36(%eax)
	.loc 1 1257 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L396:
	cmpl	$0, -4(%ebp)
	jne	.L397
	.loc 1 1262 0
	leave
	ret
.LFE37:
	.size	mark_all_temps_used, .-mark_all_temps_used
.globl push_temp_slots
	.type	push_temp_slots, @function
push_temp_slots:
.LFB38:
	.loc 1 1268 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1269 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	232(%edx), %eax
	addl	$1, %eax
	movl	%eax, 232(%edx)
	.loc 1 1270 0
	popl	%ebp
	ret
.LFE38:
	.size	push_temp_slots, .-push_temp_slots
.globl pop_temp_slots
	.type	pop_temp_slots, @function
pop_temp_slots:
.LFB39:
	.loc 1 1317 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$20, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1320 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	228(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L404
.L405:
	.loc 1 1321 0
	movl	-8(%ebp), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	je	.L406
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L406
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L406
	.loc 1 1322 0
	movl	-8(%ebp), %eax
	movb	$0, 32(%eax)
.L406:
	.loc 1 1320 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L404:
	cmpl	$0, -8(%ebp)
	jne	.L405
	.loc 1 1324 0
	call	combine_temp_slots@PLT
	.loc 1 1326 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	232(%edx), %eax
	subl	$1, %eax
	movl	%eax, 232(%edx)
	.loc 1 1327 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	pop_temp_slots, .-pop_temp_slots
.globl init_temp_slots
	.type	init_temp_slots, @function
init_temp_slots:
.LFB40:
	.loc 1 1333 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1335 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 228(%eax)
	.loc 1 1336 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 232(%eax)
	.loc 1 1337 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 236(%eax)
	.loc 1 1338 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 240(%eax)
	.loc 1 1339 0
	popl	%ebp
	ret
.LFE40:
	.size	init_temp_slots, .-init_temp_slots
.globl put_var_into_stack
	.type	put_var_into_stack, @function
put_var_into_stack:
.LFB41:
	.loc 1 1351 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$116, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1354 0
	movl	$0, -40(%ebp)
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L415
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L415
	movl	$1, -80(%ebp)
	jmp	.L418
.L415:
	movl	$0, -80(%ebp)
.L418:
	movl	-80(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1359 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L419
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L421
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L421
.L419:
	movl	$1, -76(%ebp)
	jmp	.L423
.L421:
	movl	$0, -76(%ebp)
.L423:
	movl	-76(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1361 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1364 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L424
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L426
.L424:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L427
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L429
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L431
.L429:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
.L431:
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L432
.L427:
	movl	$0, -68(%ebp)
.L432:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
.L426:
	movl	-72(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1371 0
	cmpl	$0, -52(%ebp)
	je	.L473
	.loc 1 1375 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L435
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L437
.L435:
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
.L437:
	movl	-60(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1378 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1385 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -36(%ebp)
	je	.L438
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -36(%ebp)
	je	.L438
	.loc 1 1386 0
	movl	outer_function_chain@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L441
.L442:
	.loc 1 1387 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L438
	.loc 1 1386 0
	movl	-40(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
.L441:
	cmpl	$0, -40(%ebp)
	jne	.L442
.L438:
	.loc 1 1392 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L444
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L444
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L444
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L444
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L444
	.loc 1 1397 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1398 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
.L444:
	.loc 1 1401 0
	cmpl	$0, -40(%ebp)
	jne	.L450
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L450
	movl	-44(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L450
	movl	$1, -56(%ebp)
	jmp	.L454
.L450:
	movl	$0, -56(%ebp)
.L454:
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1413 0
	cmpl	$0, -32(%ebp)
	jne	.L455
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L455
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L455
	.loc 1 1415 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L455:
	.loc 1 1419 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L459
	.loc 1 1424 0
	cmpl	$0, -32(%ebp)
	je	.L461
	.loc 1 1425 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_mem_addressof@PLT
	jmp	.L473
.L461:
	.loc 1 1427 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 32(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	$0, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	put_reg_into_stack
	jmp	.L473
.L459:
	.loc 1 1430 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L473
.LBB11:
	.loc 1 1437 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1438 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -16(%ebp)
	.loc 1 1439 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1440 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1448 0
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	put_reg_into_stack
	.loc 1 1450 0
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	put_reg_into_stack
	.loc 1 1455 0
	movl	-52(%ebp), %eax
	movw	$76, (%eax)
	.loc 1 1456 0
	movl	-52(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1460 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L465
	.loc 1 1461 0
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
.L465:
	.loc 1 1462 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 1463 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L467
	.loc 1 1464 0
	movl	8(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 88(%edx)
.L467:
	.loc 1 1468 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1470 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L469
	.loc 1 1471 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%eax)
.L469:
	.loc 1 1472 0
	cmpl	$0, -24(%ebp)
	je	.L473
	cmpl	$0, 12(%ebp)
	je	.L473
	.loc 1 1474 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 16(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_fixup_var_refs
	.loc 1 1476 0
	movl	$0, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_fixup_var_refs
	.loc 1 1477 0
	movl	$0, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_fixup_var_refs
.L473:
.LBE11:
	.loc 1 1482 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	put_var_into_stack, .-put_var_into_stack
	.type	put_reg_into_stack, @function
put_reg_into_stack:
.LFB42:
	.loc 1 1502 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$52, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1503 0
	cmpl	$0, 8(%ebp)
	je	.L475
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L477
.L475:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L477:
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1504 0
	movl	$0, -12(%ebp)
	.loc 1 1505 0
	movl	32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1507 0
	cmpl	$0, -8(%ebp)
	jne	.L478
	.loc 1 1508 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L478:
	.loc 1 1510 0
	movl	-16(%ebp), %eax
	movl	220(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L480
	.loc 1 1511 0
	movl	-16(%ebp), %eax
	movl	224(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L480:
	.loc 1 1513 0
	cmpl	$0, -12(%ebp)
	jne	.L482
	.loc 1 1514 0
	movl	24(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_stack_local_1
	movl	%eax, -12(%ebp)
.L482:
	.loc 1 1516 0
	movl	12(%ebp), %eax
	movw	$76, (%eax)
	.loc 1 1517 0
	movl	24(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 1518 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1519 0
	movl	12(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1521 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 1528 0
	cmpl	$0, 16(%ebp)
	je	.L484
	.loc 1 1530 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L486
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L486
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L486
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L486
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	je	.L486
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L492
.L486:
	movl	12(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	movl	12(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	jmp	.L493
.L492:
	movl	12(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	movl	12(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$-128, %eax
	movb	%al, 3(%edx)
.L493:
	.loc 1 1532 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L484:
	.loc 1 1535 0
	cmpl	$0, 36(%ebp)
	je	.L496
	.loc 1 1536 0
	movl	40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_fixup_var_refs
.L496:
	.loc 1 1537 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	put_reg_into_stack, .-put_reg_into_stack
	.type	schedule_fixup_var_refs, @function
schedule_fixup_var_refs:
.LFB43:
	.loc 1 1550 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$52, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1551 0
	cmpl	$0, 16(%ebp)
	je	.L498
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L500
.L498:
	movl	$0, -24(%ebp)
.L500:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1553 0
	cmpl	$0, 8(%ebp)
	je	.L501
.LBB12:
	.loc 1 1557 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1559 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1560 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1561 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1562 0
	movl	8(%ebp), %eax
	movl	244(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1563 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 244(%edx)
	jmp	.L504
.L501:
.LBE12:
	.loc 1 1567 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs
.L504:
	.loc 1 1568 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	schedule_fixup_var_refs, .-schedule_fixup_var_refs
	.section	.rodata
	.type	__FUNCTION__.15373, @object
	.size	__FUNCTION__.15373, 15
__FUNCTION__.15373:
	.string	"fixup_var_refs"
	.text
	.type	fixup_var_refs, @function
fixup_var_refs:
.LFB44:
	.loc 1 1577 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$68, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1579 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1580 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1581 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	176(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1584 0
	cmpl	$0, 24(%ebp)
	je	.L506
	.loc 1 1586 0
	cmpl	$0, -16(%ebp)
	je	.L508
	.loc 1 1587 0
	leal	__FUNCTION__.15373@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1587, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L508:
	.loc 1 1588 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_insns_with_hash
	.loc 1 1590 0
	jmp	.L519
.L506:
	.loc 1 1593 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_insns
	.loc 1 1597 0
	jmp	.L511
.L512:
	.loc 1 1599 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_to_full_sequence@PLT
	.loc 1 1600 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fixup_var_refs_insns
	.loc 1 1604 0
	call	get_last_insn@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1605 0
	call	end_sequence@PLT
	.loc 1 1597 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L511:
	cmpl	$0, -16(%ebp)
	jne	.L512
	.loc 1 1609 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L514
.L515:
.LBB13:
	.loc 1 1611 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1612 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L516
	cmpl	$0, -8(%ebp)
	je	.L516
	.loc 1 1614 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 1615 0
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_insns
	.loc 1 1617 0
	call	end_sequence@PLT
.L516:
.LBE13:
	.loc 1 1609 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L514:
	cmpl	$0, -24(%ebp)
	jne	.L515
.L519:
	.loc 1 1620 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	fixup_var_refs, .-fixup_var_refs
	.type	find_fixup_replacement, @function
find_fixup_replacement:
.LFB45:
	.loc 1 1630 0
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
	.loc 1 1634 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L521
.L522:
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L521:
	cmpl	$0, -8(%ebp)
	je	.L523
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L522
.L523:
	.loc 1 1637 0
	cmpl	$0, -8(%ebp)
	jne	.L525
	.loc 1 1639 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1640 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1641 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1642 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1643 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L525:
	.loc 1 1646 0
	movl	-8(%ebp), %eax
	.loc 1 1647 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	find_fixup_replacement, .-find_fixup_replacement
	.type	fixup_var_refs_insns, @function
fixup_var_refs_insns:
.LFB46:
	.loc 1 1662 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%edi
.LCFI125:
	pushl	%esi
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$44, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB14:
	.loc 1 1663 0
	jmp	.L529
.L530:
	.loc 1 1667 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1673 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L531
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L531
.LBB15:
	.loc 1 1680 0
	movl	$0, -20(%ebp)
	jmp	.L534
.L535:
.LBB16:
	.loc 1 1682 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1683 0
	cmpl	$0, -16(%ebp)
	je	.L536
	.loc 1 1685 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 1686 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_insns
	.loc 1 1688 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edi
	movl	-20(%ebp), %esi
	call	get_insns@PLT
	movl	%eax, 4(%edi,%esi,8)
	.loc 1 1689 0
	call	end_sequence@PLT
.L536:
.LBE16:
	.loc 1 1680 0
	addl	$1, -20(%ebp)
.L534:
	cmpl	$2, -20(%ebp)
	jle	.L535
	.loc 1 1673 0
	jmp	.L539
.L531:
.LBE15:
	.loc 1 1694 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L539
	.loc 1 1695 0
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
	call	fixup_var_refs_insn
.L539:
	.loc 1 1698 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
.L529:
.LBE14:
	.loc 1 1663 0
	cmpl	$0, 8(%ebp)
	jne	.L530
	.loc 1 1700 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	fixup_var_refs_insns, .-fixup_var_refs_insns
	.type	fixup_var_refs_insns_with_hash, @function
fixup_var_refs_insns_with_hash:
.LFB47:
	.loc 1 1716 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$52, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1721 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1722 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1723 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L544
.L545:
	.loc 1 1724 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L546
	.loc 1 1725 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_var_refs_insn
.L546:
	.loc 1 1723 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L544:
	cmpl	$0, -8(%ebp)
	jne	.L545
	.loc 1 1727 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	fixup_var_refs_insns_with_hash, .-fixup_var_refs_insns_with_hash
	.type	fixup_var_refs_insn, @function
fixup_var_refs_insn:
.LFB48:
	.loc 1 1744 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%esi
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$96, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1745 0
	movl	$0, -48(%ebp)
	.loc 1 1750 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1756 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L551
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L553
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L551
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L553
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L551
.L553:
	.loc 1 1762 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L557
	.loc 1 1766 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_note@PLT
.L557:
	.loc 1 1770 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1756 0
	jmp	.L609
.L551:
	.loc 1 1778 0
	cmpl	$0, 24(%ebp)
	je	.L560
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L562
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L564
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L566
.L564:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L566:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L567
.L562:
	movl	$0, -72(%ebp)
.L567:
	movl	-72(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L560
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L560
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L560
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L571
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L560
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L560
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L575
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L577
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L579
.L577:
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -60(%ebp)
.L579:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L580
.L575:
	movl	$0, -64(%ebp)
.L580:
	movl	-64(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L560
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L560
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L560
.L571:
	.loc 1 1791 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1778 0
	jmp	.L609
.L560:
.LBB17:
	.loc 1 1795 0
	movl	$0, -52(%ebp)
	.loc 1 1796 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1798 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L583
	.loc 1 1813 0
	cmpl	$0, -48(%ebp)
	je	.L585
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L585
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L585
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L585
.LBB18:
	.loc 1 1817 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1819 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1821 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
.L585:
.LBE18:
	.loc 1 1825 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L590
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L590
	.loc 1 1827 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1825 0
	jmp	.L583
.L590:
	.loc 1 1828 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L593
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L593
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L593
	.loc 1 1831 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1828 0
	jmp	.L583
.L593:
	.loc 1 1833 0
	movl	$0, -48(%ebp)
.L583:
	.loc 1 1847 0
	movl	8(%ebp), %edx
	addl	$44, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	.loc 1 1853 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L599
	.loc 1 1854 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 216(%edx)
	.loc 1 1856 0
	jmp	.L599
.L600:
.LBB19:
	.loc 1 1860 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L601
.LBB20:
	.loc 1 1866 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L603
	.loc 1 1867 0
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_memory_subreg
	movl	%eax, (%esi)
	jmp	.L605
.L603:
	.loc 1 1871 0
	movl	-52(%ebp), %esi
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_stack_1
	movl	%eax, (%esi)
.L605:
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1880 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L606
	.loc 1 1883 0
	call	start_sequence@PLT
	.loc 1 1884 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	convert_move@PLT
	.loc 1 1886 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1887 0
	call	end_sequence@PLT
	jmp	.L608
.L606:
	.loc 1 1890 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -12(%ebp)
.L608:
	.loc 1 1893 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
.L601:
.LBE20:
	.loc 1 1896 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1897 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1898 0
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
.L599:
.LBE19:
	.loc 1 1856 0
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L600
	.loc 1 1905 0
	jmp	.L609
.L610:
.LBE17:
	.loc 1 1907 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$4, %ax
	je	.L611
	.loc 1 1908 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_fixup_memory_subreg
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
.L611:
	.loc 1 1911 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L609:
	.loc 1 1905 0
	cmpl	$0, -32(%ebp)
	jne	.L610
	.loc 1 1913 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	fixup_var_refs_insn, .-fixup_var_refs_insn
	.section	.rodata
	.type	__FUNCTION__.15702, @object
	.size	__FUNCTION__.15702, 17
__FUNCTION__.15702:
	.string	"fixup_var_refs_1"
.globl __moddi3
	.text
	.type	fixup_var_refs_1, @function
fixup_var_refs_1:
.LFB49:
	.loc 1 1934 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%edi
.LCFI140:
	pushl	%esi
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$252, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1936 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1937 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1942 0
	movl	-136(%ebp), %eax
	subl	$57, %eax
	movl	%eax, -212(%ebp)
	cmpl	$86, -212(%ebp)
	ja	.L616
	movl	-212(%ebp), %eax
	sall	$2, %eax
	movl	.L623@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L623:
	.long	.L617@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L829@GOTOFF
	.long	.L829@GOTOFF
	.long	.L829@GOTOFF
	.long	.L616@GOTOFF
	.long	.L829@GOTOFF
	.long	.L829@GOTOFF
	.long	.L616@GOTOFF
	.long	.L829@GOTOFF
	.long	.L616@GOTOFF
	.long	.L619@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L620@GOTOFF
	.long	.L829@GOTOFF
	.long	.L829@GOTOFF
	.long	.L829@GOTOFF
	.long	.L621@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L616@GOTOFF
	.long	.L622@GOTOFF
	.long	.L622@GOTOFF
	.text
.L621:
	.loc 1 1945 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L829
.LBB21:
	.loc 1 1948 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1950 0
	movl	$0, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L829
.LBB22:
	.loc 1 1952 0
	movl	-116(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1958 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L627
	.loc 1 1959 0
	leal	__FUNCTION__.15702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1959, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L627:
	.loc 1 1966 0
	call	start_sequence@PLT
	.loc 1 1967 0
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1968 0
	call	get_insns@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1969 0
	call	end_sequence@PLT
	.loc 1 1971 0
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L629
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -205(%ebp)
	jmp	.L631
.L629:
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -205(%ebp)
.L631:
	cmpb	$0, -205(%ebp)
	je	.L632
	.loc 1 1975 0
	call	start_sequence@PLT
	.loc 1 1976 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -116(%ebp)
	.loc 1 1977 0
	movl	-116(%ebp), %eax
	cmpl	-112(%ebp), %eax
	je	.L634
	.loc 1 1978 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L634:
	.loc 1 1979 0
	call	get_insns@PLT
	movl	%eax, -108(%ebp)
	.loc 1 1980 0
	call	end_sequence@PLT
.L632:
	.loc 1 1989 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1992 0
	jmp	.L829
.L620:
.LBE22:
.LBE21:
	.loc 1 1995 0
	movl	8(%ebp), %eax
	cmpl	-140(%ebp), %eax
	jne	.L637
	.loc 1 2000 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2001 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L639
	.loc 1 2003 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2004 0
	jmp	.L829
.L639:
	.loc 1 2007 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_stack_1
	movl	%eax, -140(%ebp)
	movl	-120(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2012 0
	movl	20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2013 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L641
	movl	-140(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L641
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L644
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -204(%ebp)
	jmp	.L646
.L644:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -204(%ebp)
.L646:
	cmpb	$0, -204(%ebp)
	jne	.L829
.L641:
	.loc 1 2017 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2018 0
	jmp	.L829
.L637:
	.loc 1 2026 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L616
	.loc 1 2028 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2029 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L649
	.loc 1 2030 0
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_most_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
.L649:
	.loc 1 2032 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	16(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2033 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -136(%ebp)
	.loc 1 2035 0
	jmp	.L616
.L622:
	.loc 1 2052 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L651
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L616
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L616
.L651:
	.loc 1 2061 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 2062 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L655
	.loc 1 2064 0
	movl	-128(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	cmpw	%ax, %cx
	jbe	.L657
	.loc 1 2067 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2068 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L659
	.loc 1 2069 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
.L659:
	.loc 1 2070 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2077 0
	movl	-140(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2078 0
	jmp	.L829
.L657:
	.loc 1 2081 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_memory_subreg
	movl	%eax, -128(%ebp)
	jmp	.L661
.L655:
	.loc 1 2084 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_stack_1
	movl	%eax, -128(%ebp)
.L661:
	.loc 1 2090 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L662
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L662
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L662
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mode_dependent_address_p@PLT
	testl	%eax, %eax
	jne	.L662
	movl	-128(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L662
.LBB23:
	.loc 1 2095 0
	movl	$0, -100(%ebp)
	.loc 1 2096 0
	movl	-128(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	.loc 1 2097 0
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 2099 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L668
.LBB24:
	.loc 1 2102 0
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -92(%ebp)
	.loc 1 2103 0
	cmpl	$54, -92(%ebp)
	je	.L672
	.loc 1 2104 0
	movl	-92(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L672
.L668:
.LBE24:
	.loc 1 2106 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L672
.LBB25:
	.loc 1 2109 0
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -88(%ebp)
	.loc 1 2110 0
	cmpl	$54, -88(%ebp)
	je	.L672
	.loc 1 2111 0
	movl	-88(%ebp), %eax
	movl	%eax, -100(%ebp)
.L672:
.LBE25:
	.loc 1 2115 0
	cmpl	$0, -100(%ebp)
	je	.L662
	movl	-100(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-96(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L662
.LBB26:
	.loc 1 2118 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-220(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-224(%ebp), %eax
	adcl	-220(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 2119 0
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 2124 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L677
	.loc 1 2125 0
	movl	-96(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-100(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	-168(%ebp), %eax
	sbbl	-164(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
.L677:
	.loc 1 2128 0
	movl	-100(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-176(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 2130 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2133 0
	movl	20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2134 0
	movl	-140(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2135 0
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2137 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L679
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -203(%ebp)
	jmp	.L681
.L679:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -203(%ebp)
.L681:
	cmpb	$0, -203(%ebp)
	jne	.L829
	.loc 1 2142 0
	movl	-140(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 20(%edx)
.L662:
.LBE26:
.LBE23:
	.loc 1 2149 0
	movl	-128(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2150 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	.loc 1 2151 0
	movl	-140(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2152 0
	jmp	.L829
.L619:
	.loc 1 2157 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L616
	.loc 1 2164 0
	movl	-140(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L685
	.loc 1 2166 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2167 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
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
	call	fixup_var_refs_1
	.loc 1 2169 0
	jmp	.L829
.L685:
	.loc 1 2176 0
	movl	-140(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L687
	.loc 1 2178 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2179 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L689
	.loc 1 2180 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
.L689:
	.loc 1 2181 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2182 0
	jmp	.L829
.L687:
	.loc 1 2189 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2190 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L691
	.loc 1 2192 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2193 0
	jmp	.L829
.L691:
	.loc 1 2196 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_memory_subreg
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2199 0
	movl	20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2200 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L693
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L695
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -202(%ebp)
	jmp	.L697
.L695:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -202(%ebp)
.L697:
	cmpb	$0, -202(%ebp)
	jne	.L829
.L693:
	.loc 1 2203 0
	movl	-140(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2204 0
	jmp	.L829
.L617:
	.loc 1 2210 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L698
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L700
.L698:
	.loc 1 2212 0
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_bit_field
.L700:
	.loc 1 2213 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L701
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L703
.L701:
	.loc 1 2215 0
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_bit_field
.L703:
	.loc 1 2219 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L704
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L704
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L704
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L704
	.loc 1 2225 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2226 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L709
	.loc 1 2227 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
.L709:
	.loc 1 2229 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2230 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
.L704:
	.loc 1 2235 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L711
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L711
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L711
	.loc 1 2240 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -128(%ebp)
	movl	-140(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2241 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2244 0
	jmp	.L616
.L711:
.LBB27:
	.loc 1 2248 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2249 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2250 0
	movl	-76(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2252 0
	jmp	.L715
.L716:
	.loc 1 2255 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
.L715:
	.loc 1 2252 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L716
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L716
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L716
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L716
	.loc 1 2257 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L721
	.loc 1 2258 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
.L721:
	.loc 1 2263 0
	movl	-72(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L723
	movl	-76(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L616
.L723:
	.loc 1 2267 0
	movl	20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2269 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L725
	movl	-76(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L725
	movl	$-1, 4(%esp)
	movl	$0, (%esp)
	call	mode_for_extraction@PLT
	cmpl	$54, %eax
	je	.L725
	.loc 1 2274 0
	movl	-68(%ebp), %edx
	addl	$12, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	.loc 1 2276 0
	movl	-68(%ebp), %edx
	addl	$20, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	.loc 1 2278 0
	movl	-140(%ebp), %edx
	addl	$12, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	.loc 1 2281 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 2286 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L729
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L729
	.loc 1 2288 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_memory_subreg
	movl	%eax, -128(%ebp)
	.loc 1 2286 0
	jmp	.L732
.L729:
	.loc 1 2290 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_stack_1
	movl	%eax, -128(%ebp)
.L732:
	.loc 1 2292 0
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L733
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L733
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mode_dependent_address_p@PLT
	testl	%eax, %eax
	jne	.L733
	movl	-128(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L733
.LBB28:
	.loc 1 2298 0
	movl	-128(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 2299 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 2301 0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2304 0
	movl	-64(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-60(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L733
.LBB29:
	.loc 1 2306 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-232(%ebp), %eax
	adcl	-228(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 2307 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2310 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L739
	.loc 1 2311 0
	movl	-60(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-64(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	subl	-152(%ebp), %eax
	sbbl	-148(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
.L739:
	.loc 1 2314 0
	movl	-64(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-160(%ebp), %esi
	movl	-156(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 2316 0
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2319 0
	movl	20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 2320 0
	movl	-68(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2321 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2323 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L741
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -201(%ebp)
	jmp	.L743
.L741:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -201(%ebp)
.L743:
	cmpb	$0, -201(%ebp)
	jne	.L829
	.loc 1 2328 0
	movl	-68(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 20(%edx)
.L733:
.LBE29:
.LBE28:
	.loc 1 2336 0
	movl	-128(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -124(%ebp)
	.loc 1 2337 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	.loc 1 2338 0
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2339 0
	movl	-68(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2340 0
	jmp	.L829
.L725:
	.loc 1 2347 0
	movl	-76(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L745
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L745
	.loc 1 2348 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 4(%eax)
.L745:
	.loc 1 2361 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L748
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L750
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L750
.L748:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L752
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L750
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L750
.L752:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L750
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L756
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L758
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L760
.L758:
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -196(%ebp)
.L760:
	movl	-196(%ebp), %eax
	movl	%eax, -200(%ebp)
	jmp	.L761
.L756:
	movl	$0, -200(%ebp)
.L761:
	movl	-200(%ebp), %edx
	cmpl	-140(%ebp), %edx
	jne	.L750
.LBB30:
	.loc 1 2372 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L763
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L763
	.loc 1 2378 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2379 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L766
	.loc 1 2380 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
.L766:
	.loc 1 2381 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %edx
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2372 0
	jmp	.L768
.L763:
	.loc 1 2385 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	find_fixup_replacement
	movl	%eax, -120(%ebp)
	.loc 1 2386 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L769
	.loc 1 2387 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L768
.L769:
	.loc 1 2388 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L771
	.loc 1 2389 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_memory_subreg
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L768
.L771:
	.loc 1 2393 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_stack_1
	movl	%eax, %edx
	movl	-120(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 12(%eax)
.L768:
	.loc 1 2397 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L773
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -189(%ebp)
	jmp	.L775
.L773:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -189(%ebp)
.L775:
	cmpb	$0, -189(%ebp)
	jne	.L829
	.loc 1 2408 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %edx
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2409 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L777
	.loc 1 2411 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2418 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L779
	movl	20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L779
	.loc 1 2419 0
	leal	__FUNCTION__.15702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2419, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L779:
	.loc 1 2420 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L782
	.loc 1 2421 0
	movl	-44(%ebp), %eax
	movl	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 68(%eax)
.L782:
	.loc 1 2422 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2424 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L829
.L777:
	.loc 1 2427 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2429 0
	jmp	.L829
.L750:
.LBE30:
	.loc 1 2432 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L785
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L787
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L787
.L785:
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L789
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L787
	movl	-140(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L787
.L789:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L787
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L793
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L795
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -184(%ebp)
	jmp	.L797
.L795:
	movl	20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -184(%ebp)
.L797:
	movl	-184(%ebp), %eax
	movl	%eax, -188(%ebp)
	jmp	.L798
.L793:
	movl	$0, -188(%ebp)
.L798:
	movl	-188(%ebp), %edx
	cmpl	-140(%ebp), %edx
	jne	.L787
.LBB31:
	.loc 1 2443 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L800
	.loc 1 2444 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_memory_subreg
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L802
.L800:
	.loc 1 2447 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_stack_1
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%edx, 4(%eax)
.L802:
	.loc 1 2449 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L803
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -177(%ebp)
	jmp	.L805
.L803:
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -177(%ebp)
.L805:
	cmpb	$0, -177(%ebp)
	jne	.L829
	.loc 1 2452 0
	movl	-140(%ebp), %eax
	movl	12(%eax), %edx
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2453 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L807
	.loc 1 2455 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2462 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L809
	movl	20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L809
	.loc 1 2463 0
	leal	__FUNCTION__.15702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2463, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L809:
	.loc 1 2464 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L812
	.loc 1 2465 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 68(%eax)
.L812:
	.loc 1 2466 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2468 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L829
.L807:
	.loc 1 2471 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 2473 0
	jmp	.L829
.L787:
.LBE31:
	.loc 1 2486 0
	movl	-76(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L616
.LBB32:
	.loc 1 2489 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2493 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L816
	.loc 1 2494 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L816:
	.loc 1 2496 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L818
	.loc 1 2498 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_memory_subreg
	movl	%eax, -28(%ebp)
	.loc 1 2500 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L820
.L818:
	.loc 1 2504 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_stack_1
	movl	%eax, -28(%ebp)
	.loc 1 2505 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L820:
	.loc 1 2508 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2510 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_after@PLT
	.loc 1 2515 0
	movl	-140(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
.L616:
.LBE32:
.LBE27:
	.loc 1 2525 0
	movl	-136(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -132(%ebp)
	.loc 1 2526 0
	movl	-136(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -144(%ebp)
	jmp	.L821
.L822:
	.loc 1 2528 0
	movl	-144(%ebp), %eax
	addl	-132(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L823
	.loc 1 2529 0
	movl	-144(%ebp), %eax
	sall	$3, %eax
	addl	-140(%ebp), %eax
	leal	4(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	jmp	.L825
.L823:
	.loc 1 2531 0
	movl	-144(%ebp), %eax
	addl	-132(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L825
.LBB33:
	.loc 1 2534 0
	movl	$0, -20(%ebp)
	jmp	.L827
.L828:
	.loc 1 2535 0
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs_1
	.loc 1 2534 0
	addl	$1, -20(%ebp)
.L827:
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L828
.L825:
.LBE33:
	.loc 1 2526 0
	subl	$1, -144(%ebp)
.L821:
	cmpl	$0, -144(%ebp)
	jns	.L822
.L829:
	.loc 1 2539 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	fixup_var_refs_1, .-fixup_var_refs_1
	.section	.rodata
	.type	__FUNCTION__.16382, @object
	.size	__FUNCTION__.16382, 20
__FUNCTION__.16382:
	.string	"fixup_memory_subreg"
	.text
	.type	fixup_memory_subreg, @function
fixup_memory_subreg:
.LFB50:
	.loc 1 2557 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$68, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2559 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2560 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2561 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2565 0
	movl	-16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L831
	cmpl	$0, 20(%ebp)
	jne	.L831
	.loc 1 2566 0
	leal	__FUNCTION__.16382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2566, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L831:
	.loc 1 2568 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2569 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L834
	.loc 1 2573 0
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	%eax, -28(%ebp)
.L834:
	.loc 1 2575 0
	movl	flag_force_addr@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L836
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L836
	.loc 1 2578 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -40(%ebp)
	jmp	.L839
.L836:
	.loc 1 2580 0
	call	start_sequence@PLT
	.loc 1 2581 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2582 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2583 0
	call	end_sequence@PLT
	.loc 1 2585 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 2586 0
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L839:
	movl	-40(%ebp), %eax
	.loc 1 2587 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	fixup_memory_subreg, .-fixup_memory_subreg
	.type	walk_fixup_memory_subreg, @function
walk_fixup_memory_subreg:
.LFB51:
	.loc 1 2603 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%edi
.LCFI150:
	pushl	%esi
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$44, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2608 0
	cmpl	$0, 8(%ebp)
	jne	.L842
	.loc 1 2609 0
	movl	$0, -32(%ebp)
	jmp	.L844
.L842:
	.loc 1 2611 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2613 0
	cmpl	$73, -28(%ebp)
	jne	.L845
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L845
	.loc 1 2614 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_memory_subreg
	movl	%eax, -32(%ebp)
	jmp	.L844
.L845:
	.loc 1 2618 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2619 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L848
.L849:
	.loc 1 2621 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L850
	.loc 1 2622 0
	movl	-20(%ebp), %esi
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_fixup_memory_subreg
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	jmp	.L852
.L850:
	.loc 1 2624 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L852
.LBB34:
	.loc 1 2627 0
	movl	$0, -16(%ebp)
	jmp	.L854
.L855:
	.loc 1 2628 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-16(%ebp), %edi
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_fixup_memory_subreg
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2627 0
	addl	$1, -16(%ebp)
.L854:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L855
.L852:
.LBE34:
	.loc 1 2619 0
	subl	$1, -20(%ebp)
.L848:
	cmpl	$0, -20(%ebp)
	jns	.L849
	.loc 1 2633 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L844:
	movl	-32(%ebp), %eax
	.loc 1 2634 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	walk_fixup_memory_subreg, .-walk_fixup_memory_subreg
	.type	fixup_stack_1, @function
fixup_stack_1:
.LFB52:
	.loc 1 2646 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%edi
.LCFI156:
	pushl	%esi
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$60, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2648 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2651 0
	cmpl	$76, -36(%ebp)
	jne	.L859
.LBB35:
	.loc 1 2653 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2656 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L861
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L861
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L864
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L866
.L864:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L866
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L868
	movl	$17, -52(%ebp)
	jmp	.L870
.L868:
	movl	$30, -52(%ebp)
.L870:
	movl	-52(%ebp), %eax
	cmpl	%eax, -56(%ebp)
	je	.L866
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	je	.L866
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L866
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	120(%eax), %eax
	cmpl	%eax, %edx
	jne	.L861
.L866:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L861
.LBB36:
	.loc 1 2670 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L875
	.loc 1 2671 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L877
.L875:
	.loc 1 2673 0
	call	start_sequence@PLT
	.loc 1 2674 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2675 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2676 0
	call	end_sequence@PLT
	.loc 1 2677 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 2678 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_equiv_address@PLT
	movl	%eax, -48(%ebp)
	jmp	.L877
.L861:
.LBE36:
	.loc 1 2680 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L877
.L859:
.LBE35:
	.loc 1 2683 0
	movl	-36(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2684 0
	movl	-36(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	.L878
.L879:
	.loc 1 2686 0
	movl	-40(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L880
	.loc 1 2687 0
	movl	-40(%ebp), %esi
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_stack_1
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	jmp	.L882
.L880:
	.loc 1 2688 0
	movl	-40(%ebp), %eax
	addl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L882
.LBB37:
	.loc 1 2691 0
	movl	$0, -16(%ebp)
	jmp	.L884
.L885:
	.loc 1 2692 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	-16(%ebp), %edi
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixup_stack_1
	movl	%eax, 4(%esi,%edi,4)
	.loc 1 2691 0
	addl	$1, -16(%ebp)
.L884:
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L885
.L882:
.LBE37:
	.loc 1 2684 0
	subl	$1, -40(%ebp)
.L878:
	cmpl	$0, -40(%ebp)
	jns	.L879
	.loc 1 2695 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L877:
	movl	-48(%ebp), %eax
	.loc 1 2696 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	fixup_stack_1, .-fixup_stack_1
	.type	optimize_bit_field, @function
optimize_bit_field:
.LFB53:
	.loc 1 2714 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	.loc 1 2859 0
	popl	%ebp
	ret
.LFE53:
	.size	optimize_bit_field, .-optimize_bit_field
.globl gen_mem_addressof
	.type	gen_mem_addressof, @function
gen_mem_addressof:
.LFB54:
	.loc 1 2927 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$100, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2928 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L891
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L891
	movl	$5, -68(%ebp)
	jmp	.L894
.L891:
	movl	$4, -68(%ebp)
.L894:
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$80, (%esp)
	call	gen_rtx_fmt_eit@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2932 0
	cmpl	$0, 12(%ebp)
	je	.L895
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_alias_set@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L897
.L895:
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
.L897:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2936 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	3(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2937 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 2939 0
	movl	8(%ebp), %eax
	movw	$76, (%eax)
	.loc 1 2940 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 2941 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2943 0
	cmpl	$0, 12(%ebp)
	je	.L898
.LBB38:
	.loc 1 2945 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2947 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L900
	movl	12(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	jmp	.L902
.L900:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
.L902:
	movl	-56(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 2949 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L903
	movl	12(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L905
.L903:
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L906
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L908
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L910
.L908:
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L910:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L911
.L906:
	movl	$0, -48(%ebp)
.L911:
	movl	-48(%ebp), %edx
	movl	%edx, -52(%ebp)
.L905:
	movl	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2951 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 2955 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L912
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L912
	.loc 1 2956 0
	movl	12(%ebp), %eax
	movl	$0, 88(%eax)
.L912:
	.loc 1 2958 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 2959 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 2961 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L915
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L915
	.loc 1 2962 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 88(%edx)
.L915:
	.loc 1 2964 0
	cmpl	$0, 16(%ebp)
	je	.L923
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L920
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L923
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L923
.L920:
	.loc 1 2966 0
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs
	jmp	.L923
.L898:
.LBE38:
	.loc 1 2968 0
	cmpl	$0, 16(%ebp)
	je	.L923
	.loc 1 2969 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_var_refs
.L923:
	.loc 1 2971 0
	movl	8(%ebp), %eax
	.loc 1 2972 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	gen_mem_addressof, .-gen_mem_addressof
.globl flush_addressof
	.type	flush_addressof, @function
flush_addressof:
.LFB55:
	.loc 1 2979 0
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
	.loc 1 2980 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L927
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L949
.L927:
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L930
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-21(%ebp)
	jmp	.L932
.L930:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-21(%ebp)
.L932:
	cmpb	$0, -21(%ebp)
	je	.L949
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L934
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L936
.L934:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
.L936:
	movl	-20(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L949
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L938
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L940
.L938:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -16(%ebp)
.L940:
	movl	-16(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L949
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L942
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L944
.L942:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
.L944:
	movl	-12(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L949
	.loc 1 2985 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L946
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L948
.L946:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
.L948:
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	put_addressof_into_stack
.L949:
	.loc 1 2986 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	flush_addressof, .-flush_addressof
	.section	.rodata
	.type	__FUNCTION__.16754, @object
	.size	__FUNCTION__.16754, 25
__FUNCTION__.16754:
	.string	"put_addressof_into_stack"
	.text
	.type	put_addressof_into_stack, @function
put_addressof_into_stack:
.LFB56:
	.loc 1 2994 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%esi
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$80, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2998 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3000 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L951
	.loc 1 3001 0
	leal	__FUNCTION__.16754@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3001, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L951:
	.loc 1 3003 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3004 0
	cmpl	$0, -28(%ebp)
	je	.L953
	.loc 1 3006 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3007 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L955
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L955
	movl	$1, -48(%ebp)
	jmp	.L958
.L955:
	movl	$0, -48(%ebp)
.L958:
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3009 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L959
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L961
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L961
.L959:
	movl	$1, -44(%ebp)
	jmp	.L963
.L961:
	movl	$0, -44(%ebp)
.L963:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L964
.L953:
	.loc 1 3014 0
	movl	$0, -24(%ebp)
	.loc 1 3015 0
	movl	$0, -20(%ebp)
	.loc 1 3016 0
	movl	$1, -16(%ebp)
.L964:
	.loc 1 3019 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	put_reg_into_stack
	.loc 1 3021 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE56:
	.size	put_addressof_into_stack, .-put_addressof_into_stack
	.section	.rodata
	.type	__FUNCTION__.16804, @object
	.size	__FUNCTION__.16804, 18
__FUNCTION__.16804:
	.string	"purge_addressof_1"
	.text
	.type	purge_addressof_1, @function
purge_addressof_1:
.LFB57:
	.loc 1 3046 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%edi
.LCFI177:
	pushl	%esi
.LCFI178:
	pushl	%ebx
.LCFI179:
	subl	$188, %esp
.LCFI180:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3051 0
	movb	$1, -17(%ebp)
.L967:
	.loc 1 3056 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 3057 0
	cmpl	$0, -88(%ebp)
	jne	.L968
	.loc 1 3058 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L968:
	.loc 1 3060 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	.loc 1 3065 0
	cmpl	$57, -84(%ebp)
	jne	.L971
	.loc 1 3067 0
	movl	-88(%ebp), %edx
	addl	$4, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purge_addressof_1
	movb	%al, -17(%ebp)
	.loc 1 3068 0
	movzbl	-17(%ebp), %esi
	movl	-88(%ebp), %edx
	addl	$12, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purge_addressof_1
	movzbl	%al, %eax
	andl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%ebp)
	.loc 1 3069 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L970
.L971:
	.loc 1 3071 0
	cmpl	$80, -84(%ebp)
	jne	.L973
.LBB39:
	.loc 1 3075 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L975
	.loc 1 3076 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	put_addressof_into_stack
.L975:
	.loc 1 3080 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3081 0
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L977
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	je	.L979
.L977:
	.loc 1 3083 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L979:
	.loc 1 3085 0
	call	start_sequence@PLT
	.loc 1 3086 0
	movl	$0, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3087 0
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L980
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L980
	.loc 1 3089 0
	leal	__FUNCTION__.16804@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3089, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L980:
	.loc 1 3091 0
	call	get_insns@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3092 0
	call	end_sequence@PLT
	.loc 1 3093 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 3094 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L973:
.LBE39:
	.loc 1 3097 0
	cmpl	$76, -84(%ebp)
	jne	.L983
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L983
	cmpl	$0, 16(%ebp)
	jne	.L983
.LBB40:
	.loc 1 3099 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3101 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L987
	.loc 1 3102 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -60(%ebp)
	jmp	.L983
.L987:
	.loc 1 3103 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L989
	movl	-88(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L983
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L989
	jmp	.L983
.L989:
	.loc 1 3106 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L993
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L993
.LBB41:
	.loc 1 3110 0
	cmpl	$0, 12(%ebp)
	jne	.L996
.LBB42:
	.loc 1 3117 0
	movl	purge_bitfield_addressof_replacements@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3118 0
	jmp	.L998
.L999:
	.loc 1 3120 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1000
	.loc 1 3122 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3123 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L1000:
	.loc 1 3119 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L998:
	.loc 1 3118 0
	cmpl	$0, -48(%ebp)
	jne	.L999
	.loc 1 3127 0
	movl	purge_addressof_replacements@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3128 0
	jmp	.L1003
.L1004:
	.loc 1 3130 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1005
.LBB43:
	.loc 1 3132 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3134 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L1007
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1009
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L1009
.L1007:
	.loc 1 3137 0
	leal	__FUNCTION__.16804@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3137, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1009:
	.loc 1 3144 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1011
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1011
	.loc 1 3145 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L1011:
	.loc 1 3147 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1014
	movl	$8, -128(%ebp)
	jmp	.L1016
.L1014:
	movl	$4, -128(%ebp)
.L1016:
	movl	-128(%ebp), %edx
	cmpl	%edx, -132(%ebp)
	jle	.L1017
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1017
	.loc 1 3157 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_SUBREG@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3147 0
	jmp	.L1020
.L1017:
	.loc 1 3160 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_lowpart@PLT
	movl	%eax, -44(%ebp)
.L1020:
	.loc 1 3162 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3163 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L1005:
.LBE43:
	.loc 1 3129 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L1003:
	.loc 1 3128 0
	cmpl	$0, -48(%ebp)
	jne	.L1004
	.loc 1 3173 0
	movl	$0, -136(%ebp)
	jmp	.L970
.L996:
.LBE42:
	.loc 1 3176 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	.loc 1 3177 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	.loc 1 3182 0
	movl	-88(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1022
	movl	-56(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L1022
	jmp	.L983
.L1022:
	.loc 1 3187 0
	movl	-56(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jg	.L983
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	int_mode_for_mode@PLT
	cmpl	$52, %eax
	je	.L983
.LBB44:
	.loc 1 3195 0
	cmpl	$0, 20(%ebp)
	je	.L1028
.LBB45:
	.loc 1 3197 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3199 0
	call	start_sequence@PLT
	.loc 1 3200 0
	movl	-88(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3201 0
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1030
	.loc 1 3205 0
	call	end_sequence@PLT
	.loc 1 3206 0
	jmp	.L983
.L1030:
	.loc 1 3208 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3209 0
	call	end_sequence@PLT
	.loc 1 3210 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 3211 0
	cmpl	$0, -32(%ebp)
	je	.L1032
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1034
.L1032:
	call	get_insns@PLT
	movl	%eax, -124(%ebp)
.L1034:
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %ecx
	movl	%ecx, (%esp)
	call	compute_insns_for_mem
	.loc 1 3214 0
	call	start_sequence@PLT
	.loc 1 3215 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-88(%ebp), %ecx
	movzbl	2(%ecx), %ecx
	movzbl	%cl, %ecx
	movl	%ecx, -120(%ebp)
	movl	-56(%ebp), %ecx
	movl	%ecx, %esi
	movl	%ecx, %edi
	sarl	$31, %edi
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
	.loc 1 3220 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	unshare_all_rtl_again@PLT
	.loc 1 3222 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3223 0
	call	end_sequence@PLT
	.loc 1 3224 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3225 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1040
	.loc 1 3226 0
	cmpl	$0, -32(%ebp)
	je	.L1037
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1039
.L1037:
	movl	$0, -116(%ebp)
.L1039:
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-116(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	compute_insns_for_mem
	jmp	.L1040
.L1028:
.LBE45:
.LBB46:
	.loc 1 3232 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3234 0
	call	start_sequence@PLT
	.loc 1 3235 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %ecx
	movl	%ecx, -152(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	$0, -148(%ebp)
	movl	-88(%ebp), %ecx
	movzbl	2(%ecx), %ecx
	movzbl	%cl, %edi
	movl	-88(%ebp), %ecx
	movzbl	2(%ecx), %ecx
	movzbl	%cl, %esi
	movl	-56(%ebp), %edx
	movl	%edx, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-152(%ebp), %edx
	movl	-148(%ebp), %ecx
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%edi, 32(%esp)
	movl	%esi, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_bit_field@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3239 0
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1041
	.loc 1 3243 0
	call	end_sequence@PLT
	.loc 1 3244 0
	jmp	.L983
.L1041:
	.loc 1 3247 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3248 0
	call	end_sequence@PLT
	.loc 1 3249 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 3250 0
	cmpl	$0, -28(%ebp)
	je	.L1043
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1045
.L1043:
	call	get_insns@PLT
	movl	%eax, -100(%ebp)
.L1045:
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %edx
	movl	%edx, (%esp)
	call	compute_insns_for_mem
.L1040:
.LBE46:
	.loc 1 3256 0
	movl	purge_bitfield_addressof_replacements@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, purge_bitfield_addressof_replacements@GOTOFF(%ebx)
	.loc 1 3263 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L993:
.LBE44:
.LBE41:
	.loc 1 3267 0
	movl	$0, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L983
	.loc 1 3271 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1047
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L967
.L1047:
.LBB47:
	.loc 1 3275 0
	movl	purge_addressof_replacements@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3276 0
	jmp	.L1050
.L1051:
	.loc 1 3278 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L1052
	.loc 1 3280 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3281 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L1052:
	.loc 1 3277 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L1050:
	.loc 1 3276 0
	cmpl	$0, -24(%ebp)
	jne	.L1051
	.loc 1 3283 0
	movl	purge_addressof_replacements@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx@PLT
	movl	%eax, purge_addressof_replacements@GOTOFF(%ebx)
	.loc 1 3287 0
	movl	$1, -136(%ebp)
	jmp	.L970
.L983:
.LBE47:
.LBE40:
	.loc 1 3295 0
	movl	-84(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3296 0
	movl	$0, -80(%ebp)
	jmp	.L1055
.L1056:
	.loc 1 3298 0
	movl	-72(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1057
	.loc 1 3299 0
	movzbl	-17(%ebp), %esi
	movl	-80(%ebp), %eax
	sall	$3, %eax
	addl	-88(%ebp), %eax
	leal	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purge_addressof_1
	movzbl	%al, %eax
	andl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%ebp)
	jmp	.L1059
.L1057:
	.loc 1 3300 0
	movl	-72(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1059
	.loc 1 3301 0
	movl	$0, -76(%ebp)
	jmp	.L1061
.L1062:
	.loc 1 3302 0
	movzbl	-17(%ebp), %esi
	movl	-80(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-76(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purge_addressof_1
	movzbl	%al, %eax
	andl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%ebp)
	.loc 1 3301 0
	addl	$1, -76(%ebp)
.L1061:
	movl	-80(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-76(%ebp), %eax
	jg	.L1062
.L1059:
	.loc 1 3296 0
	addl	$1, -80(%ebp)
	addl	$1, -72(%ebp)
.L1055:
	movl	-84(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-80(%ebp), %eax
	jg	.L1056
	.loc 1 3305 0
	movzbl	-17(%ebp), %ecx
	movl	%ecx, -136(%ebp)
.L970:
	movl	-136(%ebp), %eax
	.loc 1 3306 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE57:
	.size	purge_addressof_1, .-purge_addressof_1
	.type	insns_for_mem_hash, @function
insns_for_mem_hash:
.LFB58:
	.loc 1 3313 0
	pushl	%ebp
.LCFI181:
	movl	%esp, %ebp
.LCFI182:
	pushl	%ebx
.LCFI183:
	subl	$20, %esp
.LCFI184:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3315 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3316 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 3317 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	insns_for_mem_hash, .-insns_for_mem_hash
	.type	insns_for_mem_comp, @function
insns_for_mem_comp:
.LFB59:
	.loc 1 3325 0
	pushl	%ebp
.LCFI185:
	movl	%esp, %ebp
.LCFI186:
	subl	$16, %esp
.LCFI187:
	.loc 1 3326 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3327 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3328 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 3329 0
	leave
	ret
.LFE59:
	.size	insns_for_mem_comp, .-insns_for_mem_comp
	.type	insns_for_mem_walk, @function
insns_for_mem_walk:
.LFB60:
	.loc 1 3354 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	pushl	%ebx
.LCFI190:
	subl	$52, %esp
.LCFI191:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3356 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3358 0
	movl	$0, -20(%ebp)
	.loc 1 3360 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1070
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1070
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1070
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1070
.LBB48:
	.loc 1 3364 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3365 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3366 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1077
	.loc 1 3368 0
	movl	$8, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3369 0
	movl	-12(%ebp), %eax
	movl	(%eax), %ecx
	leal	-24(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 3360 0
	jmp	.L1077
.L1070:
.LBE48:
	.loc 1 3372 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L1077
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1077
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1077
.LBB49:
	.loc 1 3375 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3376 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3381 0
	cmpl	$0, -8(%ebp)
	je	.L1077
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1082
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1077
.L1082:
	.loc 1 3382 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1077:
.LBE49:
	.loc 1 3386 0
	movl	$0, %eax
	.loc 1 3387 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	insns_for_mem_walk, .-insns_for_mem_walk
	.type	compute_insns_for_mem, @function
compute_insns_for_mem:
.LFB61:
	.loc 1 3397 0
	pushl	%ebp
.LCFI192:
	movl	%esp, %ebp
.LCFI193:
	pushl	%ebx
.LCFI194:
	subl	$36, %esp
.LCFI195:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3400 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3402 0
	movl	$0, -12(%ebp)
	jmp	.L1086
.L1087:
	.loc 1 3403 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1088
.L1089:
	.loc 1 3404 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1090
	.loc 1 3406 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3407 0
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	insns_for_mem_walk@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
.L1090:
	.loc 1 3403 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1088:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1089
	.loc 1 3402 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
.L1086:
	movl	-12(%ebp), %eax
	cmpl	$1, %eax
	jle	.L1087
	.loc 1 3409 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	compute_insns_for_mem, .-compute_insns_for_mem
	.type	is_addressof, @function
is_addressof:
.LFB62:
	.loc 1 3418 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	.loc 1 3419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	sete	%al
	movzbl	%al, %eax
	.loc 1 3420 0
	popl	%ebp
	ret
.LFE62:
	.size	is_addressof, .-is_addressof
	.section	.rodata
	.type	__FUNCTION__.17202, @object
	.size	__FUNCTION__.17202, 16
__FUNCTION__.17202:
	.string	"purge_addressof"
	.text
.globl purge_addressof
	.type	purge_addressof, @function
purge_addressof:
.LFB63:
	.loc 1 3429 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$52, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3440 0
	movl	$0, 20(%esp)
	movl	ggc_calloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	insns_for_mem_comp@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	insns_for_mem_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1000, (%esp)
	call	htab_create_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3441 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_insns_for_mem
	.loc 1 3443 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1098
.L1099:
	.loc 1 3444 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L1100
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1100
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1103
.L1100:
	.loc 1 3447 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movl	-12(%ebp), %ecx
	addl	$44, %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	purge_addressof_1
	xorl	$1, %eax
	testb	%al, %al
	je	.L1104
	.loc 1 3451 0
	leal	__FUNCTION__.17202@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3451, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1104:
	.loc 1 3453 0
	movl	-12(%ebp), %edx
	addl	$68, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	purge_addressof_1
	xorl	$1, %eax
	testb	%al, %al
	je	.L1103
.LBB50:
	.loc 1 3459 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1107
.L1108:
	.loc 1 3465 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$6, %al
	jne	.L1109
	.loc 1 3466 0
	leal	__FUNCTION__.17202@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3466, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1109:
	.loc 1 3467 0
	movl	$0, 8(%esp)
	leal	is_addressof@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L1111
	.loc 1 3468 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L1111:
	.loc 1 3459 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L1107:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	.L1108
.L1103:
.LBE50:
	.loc 1 3443 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1098:
	cmpl	$0, -12(%ebp)
	jne	.L1099
	.loc 1 3474 0
	movl	$0, purge_bitfield_addressof_replacements@GOTOFF(%ebx)
	.loc 1 3475 0
	movl	$0, purge_addressof_replacements@GOTOFF(%ebx)
	.loc 1 3489 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	unshare_all_rtl_again@PLT
	.loc 1 3490 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	purge_addressof, .-purge_addressof
	.type	purge_single_hard_subreg_set, @function
purge_single_hard_subreg_set:
.LFB64:
	.loc 1 3498 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%esi
.LCFI204:
	pushl	%ebx
.LCFI205:
	subl	$32, %esp
.LCFI206:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3499 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3500 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3501 0
	movl	$0, -12(%ebp)
	.loc 1 3503 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1116
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1116
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1116
	.loc 1 3506 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3510 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L1116:
	.loc 1 3514 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1123
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1123
	.loc 1 3516 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3517 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
.L1123:
	.loc 1 3519 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE64:
	.size	purge_single_hard_subreg_set, .-purge_single_hard_subreg_set
.globl purge_hard_subreg_sets
	.type	purge_hard_subreg_sets, @function
purge_hard_subreg_sets:
.LFB65:
	.loc 1 3531 0
	pushl	%ebp
.LCFI207:
	movl	%esp, %ebp
.LCFI208:
	pushl	%ebx
.LCFI209:
	subl	$36, %esp
.LCFI210:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3532 0
	jmp	.L1125
.L1126:
	.loc 1 3534 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1127
.LBB51:
	.loc 1 3536 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3537 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$49, -24(%ebp)
	je	.L1129
	cmpl	$57, -24(%ebp)
	je	.L1130
	jmp	.L1127
.L1130:
	.loc 1 3540 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1127
	.loc 1 3541 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_single_hard_subreg_set
	.loc 1 3542 0
	jmp	.L1127
.L1129:
.LBB52:
	.loc 1 3546 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L1133
.L1134:
.LBB53:
	.loc 1 3548 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3549 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1135
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1135
	.loc 1 3551 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_single_hard_subreg_set
.L1135:
.LBE53:
	.loc 1 3546 0
	subl	$1, -12(%ebp)
.L1133:
	cmpl	$0, -12(%ebp)
	jns	.L1134
.L1127:
.LBE52:
.LBE51:
	.loc 1 3532 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1125:
	cmpl	$0, 8(%ebp)
	jne	.L1126
	.loc 1 3560 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	purge_hard_subreg_sets, .-purge_hard_subreg_sets
.globl instantiate_virtual_regs
	.type	instantiate_virtual_regs, @function
instantiate_virtual_regs:
.LFB66:
	.loc 1 3569 0
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	pushl	%ebx
.LCFI213:
	subl	$52, %esp
.LCFI214:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3574 0
	movl	$0, in_arg_offset@GOTOFF(%ebx)
	.loc 1 3575 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L1141
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1143
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1143
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1146
.L1143:
	movl	$8, -24(%ebp)
	jmp	.L1147
.L1146:
	movl	$16, -24(%ebp)
.L1147:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1148
.L1141:
	movl	$0, -28(%ebp)
.L1148:
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, var_offset@GOTOFF(%ebx)
	.loc 1 3576 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, dynamic_offset@GOTOFF(%ebx)
	.loc 1 3577 0
	movl	$0, out_arg_offset@GOTOFF(%ebx)
	.loc 1 3578 0
	movl	$0, cfa_offset@GOTOFF(%ebx)
	.loc 1 3584 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decls
	.loc 1 3587 0
	call	init_recog@PLT
	.loc 1 3591 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1149
.L1150:
	.loc 1 3592 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L1151
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1151
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1154
.L1151:
	.loc 1 3595 0
	movl	-12(%ebp), %edx
	addl	$44, %edx
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3596 0
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1154
	.loc 1 3598 0
	movl	-12(%ebp), %eax
	addl	$68, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3600 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1156
	.loc 1 3601 0
	movl	-12(%ebp), %eax
	addl	$76, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
.L1156:
	.loc 1 3606 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L1154
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	check_asm_operands@PLT
	testl	%eax, %eax
	jne	.L1154
	.loc 1 3608 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_lossage
.L1154:
	.loc 1 3591 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1149:
	cmpl	$0, -12(%ebp)
	jne	.L1150
	.loc 1 3613 0
	movl	$0, -8(%ebp)
	jmp	.L1161
.L1162:
	.loc 1 3614 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1163
	.loc 1 3615 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
.L1163:
	.loc 1 3613 0
	addl	$1, -8(%ebp)
.L1161:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L1162
	.loc 1 3619 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decls
	.loc 1 3623 0
	movl	virtuals_instantiated@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3624 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	instantiate_virtual_regs, .-instantiate_virtual_regs
	.type	instantiate_decls, @function
instantiate_decls:
.LFB67:
	.loc 1 3636 0
	pushl	%ebp
.LCFI215:
	movl	%esp, %ebp
.LCFI216:
	pushl	%ebx
.LCFI217:
	subl	$84, %esp
.LCFI218:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3640 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1168
.L1169:
.LBB54:
	.loc 1 3642 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3645 0
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1170
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1172
.L1170:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L1172:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decl
	.loc 1 3650 0
	movl	-12(%ebp), %eax
	movl	96(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 3651 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-60(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	jg	.L1173
	movl	-60(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L1174
	movl	-64(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jae	.L1173
.L1174:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L1173:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3652 0
	movl	-12(%ebp), %eax
	movl	96(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	instantiate_decl
.LBE54:
	.loc 1 3640 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1168:
	cmpl	$0, -12(%ebp)
	jne	.L1169
	.loc 1 3656 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_decls_1
	.loc 1 3657 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	instantiate_decls, .-instantiate_decls
	.type	instantiate_decls_1, @function
instantiate_decls_1:
.LFB68:
	.loc 1 3666 0
	pushl	%ebp
.LCFI219:
	movl	%esp, %ebp
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$52, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3669 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1178
.L1179:
	.loc 1 3670 0
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1180
	.loc 1 3671 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1182
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1184
.L1182:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L1184:
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	instantiate_decl
.L1180:
	.loc 1 3669 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1178:
	cmpl	$0, -12(%ebp)
	jne	.L1179
	.loc 1 3676 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1186
.L1187:
	.loc 1 3677 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_decls_1
	.loc 1 3676 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1186:
	cmpl	$0, -12(%ebp)
	jne	.L1187
	.loc 1 3678 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	instantiate_decls_1, .-instantiate_decls_1
	.type	instantiate_decl, @function
instantiate_decl:
.LFB69:
	.loc 1 3691 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%ebx
.LCFI225:
	subl	$68, %esp
.LCFI226:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3698 0
	cmpl	$0, 8(%ebp)
	je	.L1225
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1193
	.loc 1 3699 0
	jmp	.L1225
.L1193:
	.loc 1 3701 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3702 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1225
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L1204
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1225
.L1204:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1206
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1225
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$180, %eax
	jbe	.L1206
	.loc 1 3707 0
	jmp	.L1225
.L1206:
	.loc 1 3714 0
	cmpl	$0, 20(%ebp)
	je	.L1209
	.loc 1 3715 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -16(%ebp)
.L1209:
	.loc 1 3717 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3719 0
	cmpl	$0, 20(%ebp)
	je	.L1211
	cmpl	$0, -28(%ebp)
	js	.L1211
.LBB55:
	.loc 1 3721 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 3728 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3729 0
	jmp	.L1214
.L1215:
	.loc 1 3731 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L1225
	.loc 1 3730 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L1214:
	.loc 1 3729 0
	cmpl	$0, -12(%ebp)
	je	.L1217
	movl	-12(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L1215
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L1217
	movl	-48(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L1215
.L1217:
	.loc 1 3734 0
	movl	class_narrowest_mode@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3735 0
	jmp	.L1220
.L1221:
	.loc 1 3737 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L1225
	.loc 1 3736 0
	movl	-12(%ebp), %edx
	movl	mode_wider_mode@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L1220:
	.loc 1 3735 0
	cmpl	$0, -12(%ebp)
	je	.L1211
	movl	-12(%ebp), %eax
	movl	mode_size@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L1221
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L1211
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L1221
.L1211:
.LBE55:
	.loc 1 3744 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L1225:
	.loc 1 3745 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	instantiate_decl, .-instantiate_decl
	.type	instantiate_new_reg, @function
instantiate_new_reg:
.LFB70:
	.loc 1 3755 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$28, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3759 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1227
	.loc 1 3760 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	in_arg_offset@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L1229
.L1227:
	.loc 1 3761 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1230
	.loc 1 3762 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	var_offset@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L1229
.L1230:
	.loc 1 3763 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	32(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1232
	.loc 1 3764 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	dynamic_offset@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L1229
.L1232:
	.loc 1 3765 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	36(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1234
	.loc 1 3766 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	out_arg_offset@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L1229
.L1234:
	.loc 1 3767 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	40(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1236
	.loc 1 3768 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	cfa_offset@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L1229
.L1236:
	.loc 1 3770 0
	movl	$0, -28(%ebp)
	jmp	.L1238
.L1229:
	.loc 1 3772 0
	movl	12(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 3773 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1238:
	movl	-28(%ebp), %eax
	.loc 1 3774 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	instantiate_new_reg, .-instantiate_new_reg
	.section	.rodata
	.align 32
	.type	__FUNCTION__.17560, @object
	.size	__FUNCTION__.17560, 33
__FUNCTION__.17560:
	.string	"instantiate_virtual_regs_lossage"
	.align 4
.LC2:
	.string	"impossible constraint in `asm'"
	.text
	.type	instantiate_virtual_regs_lossage, @function
instantiate_virtual_regs_lossage:
.LFB71:
	.loc 1 3783 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$20, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3784 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L1241
	.loc 1 3786 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_for_asm@PLT
	.loc 1 3787 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 3791 0
	jmp	.L1243
.L1241:
	.loc 1 3790 0
	leal	__FUNCTION__.17560@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3790, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1243:
	.loc 1 3791 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	instantiate_virtual_regs_lossage, .-instantiate_virtual_regs_lossage
	.type	instantiate_virtual_regs_1, @function
instantiate_virtual_regs_1:
.LFB72:
	.loc 1 3811 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%ebx
.LCFI237:
	subl	$116, %esp
.LCFI238:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3814 0
	movl	$0, -40(%ebp)
	.loc 1 3815 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L1402
.L1245:
.L1402:
	.loc 1 3824 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3825 0
	cmpl	$0, -48(%ebp)
	jne	.L1246
	.loc 1 3826 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1246:
	.loc 1 3829 0
	cmpl	$0, 12(%ebp)
	je	.L1249
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1249
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1249
	.loc 1 3830 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1249:
	.loc 1 3832 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 3835 0
	movl	-44(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -104(%ebp)
	cmpl	$138, -104(%ebp)
	ja	.L1253
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	.L1263@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1263:
	.long	.L1254@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1257@GOTOFF
	.long	.L1258@GOTOFF
	.long	.L1258@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1259@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1260@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1255@GOTOFF
	.long	.L1261@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1262@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1254@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1253@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.long	.L1256@GOTOFF
	.text
.L1255:
	.loc 1 3849 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1257:
	.loc 1 3856 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_new_reg
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1264
.LBB56:
	.loc 1 3858 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 3863 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 3864 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3868 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1266
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L1266
	.loc 1 3870 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_lossage
	.loc 1 3871 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1266:
	.loc 1 3874 0
	call	start_sequence@PLT
	.loc 1 3875 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1269
	.loc 1 3876 0
	movl	-52(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -36(%ebp)
	jmp	.L1271
.L1269:
	.loc 1 3878 0
	movl	-52(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1271:
	.loc 1 3879 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3880 0
	call	get_insns@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3881 0
	call	end_sequence@PLT
	.loc 1 3883 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 3884 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3886 0
	movl	-48(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L1272
	cmpl	$0, 16(%ebp)
	jne	.L1274
.L1272:
	.loc 1 3888 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_lossage
.L1274:
	.loc 1 3890 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1264:
.LBE56:
	.loc 1 3893 0
	movl	-48(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3894 0
	movl	-48(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 8(%ebp)
	.loc 1 3895 0
	jmp	.L1245
.L1262:
	.loc 1 3899 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1275
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1254
.L1275:
.LBB57:
	.loc 1 3904 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1283
	.loc 1 3906 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_new_reg
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1285
	.loc 1 3908 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 3910 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1287
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1287
	movl	$5, -92(%ebp)
	jmp	.L1290
.L1287:
	movl	$4, -92(%ebp)
.L1290:
	movl	-96(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1285:
	.loc 1 3914 0
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	.loc 1 3915 0
	jmp	.L1245
.L1283:
	.loc 1 3936 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_new_reg
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L1291
	.loc 1 3941 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1293
	.loc 1 3943 0
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	.loc 1 3944 0
	jmp	.L1245
.L1293:
	.loc 1 3946 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1291:
	.loc 1 3949 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3953 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1295
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L1295
	.loc 1 3955 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1295:
	.loc 1 3964 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3965 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1298
	movl	-48(%ebp), %edx
	addl	$4, %edx
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	sete	-85(%ebp)
	jmp	.L1300
.L1298:
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	sete	-85(%ebp)
.L1300:
	cmpb	$0, -85(%ebp)
	je	.L1301
	.loc 1 3970 0
	cmpl	$0, 16(%ebp)
	jne	.L1303
	.loc 1 3972 0
	movl	-48(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3973 0
	movl	$0, -100(%ebp)
	jmp	.L1248
.L1303:
	.loc 1 3978 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1305
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1305
	movl	$5, -84(%ebp)
	jmp	.L1308
.L1305:
	movl	$4, -84(%ebp)
.L1308:
	movl	-84(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3979 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3980 0
	movl	-48(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L1309
	.loc 1 3981 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_insn_before@PLT
	jmp	.L1301
.L1309:
	.loc 1 3987 0
	movl	-48(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3988 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1311
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1311
	movl	$5, -80(%ebp)
	jmp	.L1314
.L1311:
	movl	$4, -80(%ebp)
.L1314:
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3990 0
	call	start_sequence@PLT
	.loc 1 3991 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3992 0
	call	get_insns@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3993 0
	call	end_sequence@PLT
	.loc 1 3995 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 3996 0
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1301
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L1301
	.loc 1 3999 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_lossage
	.loc 1 4000 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1301:
	.loc 1 4005 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1254:
.LBE57:
	.loc 1 4022 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1317
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1317
	.loc 1 4023 0
	movl	-48(%ebp), %eax
	addl	$12, %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
.L1317:
	.loc 1 4024 0
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	.loc 1 4025 0
	jmp	.L1245
.L1260:
	.loc 1 4042 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4043 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1327
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1327
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1327
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1327
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1332
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1334
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1332
.L1334:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1327
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1327
.L1332:
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1327
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1327
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1339
.L1327:
	.loc 1 4051 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1339:
	.loc 1 4053 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1340
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1342
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1342
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1342
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1342
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1340
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1348
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1340
.L1348:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1342
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1340
.L1342:
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L1351
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L1351
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1340
.L1351:
	.loc 1 4063 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1340:
	.loc 1 4065 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1354
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L1354
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L1256
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1358
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1358
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1358
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1358
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1256
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1364
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L1256
.L1364:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1358
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1256
.L1358:
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L1354
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1256
.L1354:
	.loc 1 4091 0
	cmpl	$0, 12(%ebp)
	je	.L1368
	movl	12(%ebp), %edx
	movl	%edx, -76(%ebp)
	jmp	.L1370
.L1368:
	movl	-48(%ebp), %eax
	movl	%eax, -76(%ebp)
.L1370:
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	$0, 8(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	testl	%eax, %eax
	je	.L1371
	.loc 1 4093 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1371:
	.loc 1 4098 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
.L1256:
	.loc 1 4116 0
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	.loc 1 4117 0
	jmp	.L1245
.L1258:
	.loc 1 4125 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1373
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	testl	%eax, %eax
	jne	.L1375
.L1373:
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1376
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	$0, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	testl	%eax, %eax
	je	.L1376
.L1375:
	.loc 1 4130 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1376:
	.loc 1 4132 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4133 0
	movl	-48(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%ebp)
	.loc 1 4134 0
	jmp	.L1245
.L1259:
	.loc 1 4139 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_new_reg
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1378
	.loc 1 4141 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4142 0
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1378
	.loc 1 4144 0
	cmpl	$0, 16(%ebp)
	jne	.L1381
	.loc 1 4145 0
	movl	$0, -100(%ebp)
	jmp	.L1248
.L1381:
	.loc 1 4147 0
	call	start_sequence@PLT
	.loc 1 4148 0
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	force_operand@PLT
	movl	%eax, -36(%ebp)
	.loc 1 4149 0
	call	get_insns@PLT
	movl	%eax, -32(%ebp)
	.loc 1 4150 0
	call	end_sequence@PLT
	.loc 1 4152 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 4153 0
	movl	$0, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	jne	.L1378
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L1378
	.loc 1 4155 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_lossage
.L1378:
	.loc 1 4159 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1261:
	.loc 1 4162 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1385
	.loc 1 4163 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1385:
	.loc 1 4165 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1253
	.loc 1 4170 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	addl	$4, %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	instantiate_virtual_regs_1
	.loc 1 4171 0
	movl	$1, -100(%ebp)
	jmp	.L1248
.L1253:
	.loc 1 4180 0
	movl	-44(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4181 0
	movl	$0, -28(%ebp)
	jmp	.L1388
.L1389:
	.loc 1 4182 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L1390
	.loc 1 4184 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	-48(%ebp), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs_1
	testl	%eax, %eax
	jne	.L1394
	.loc 1 4185 0
	movl	$0, -100(%ebp)
	jmp	.L1248
.L1390:
	.loc 1 4187 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1394
	.loc 1 4188 0
	movl	$0, -24(%ebp)
	jmp	.L1396
.L1397:
	.loc 1 4189 0
	movl	-28(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs_1
	testl	%eax, %eax
	jne	.L1398
	.loc 1 4191 0
	movl	$0, -100(%ebp)
	jmp	.L1248
.L1398:
	.loc 1 4188 0
	addl	$1, -24(%ebp)
.L1396:
	movl	-28(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L1397
.L1394:
	.loc 1 4181 0
	addl	$1, -28(%ebp)
	addl	$1, -20(%ebp)
.L1388:
	movl	-44(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jg	.L1389
	.loc 1 4193 0
	movl	$1, -100(%ebp)
.L1248:
	movl	-100(%ebp), %eax
	.loc 1 4194 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	instantiate_virtual_regs_1, .-instantiate_virtual_regs_1
	.type	delete_handlers, @function
delete_handlers:
.LFB73:
	.loc 1 4202 0
	pushl	%ebp
.LCFI239:
	movl	%esp, %ebp
.LCFI240:
	pushl	%ebx
.LCFI241:
	subl	$52, %esp
.LCFI242:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4204 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	jmp	.L1404
.L1405:
	.loc 1 4210 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1406
.LBB58:
	.loc 1 4214 0
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 4218 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L1408
.L1409:
	.loc 1 4220 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1410
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1412
.L1410:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
.L1412:
	movl	-40(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L1413
	.loc 1 4219 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1408:
	.loc 1 4218 0
	cmpl	$0, -20(%ebp)
	jne	.L1409
.L1413:
	.loc 1 4222 0
	cmpl	$0, -20(%ebp)
	je	.L1406
	.loc 1 4224 0
	cmpl	$0, -16(%ebp)
	jne	.L1416
	.loc 1 4225 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 136(%edx)
	jmp	.L1406
.L1416:
	.loc 1 4227 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L1406:
.LBE58:
	.loc 1 4230 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L1418
.LBB59:
	.loc 1 4232 0
	movl	$0, -12(%ebp)
	.loc 1 4234 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	140(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1420
.L1421:
	.loc 1 4235 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1422
	.loc 1 4237 0
	movl	$1, -12(%ebp)
	.loc 1 4238 0
	jmp	.L1424
.L1422:
	.loc 1 4234 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L1420:
	cmpl	$0, -8(%ebp)
	jne	.L1421
.L1424:
	.loc 1 4240 0
	cmpl	$0, -12(%ebp)
	jne	.L1425
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	148(%eax), %eax
	testl	%eax, %eax
	je	.L1418
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	148(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1418
.L1425:
	.loc 1 4244 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_related_insns@PLT
.L1418:
.LBE59:
	.loc 1 4204 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L1404:
	cmpl	$0, -24(%ebp)
	jne	.L1405
	.loc 1 4247 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	delete_handlers, .-delete_handlers
.globl max_parm_reg_num
	.type	max_parm_reg_num, @function
max_parm_reg_num:
.LFB74:
	.loc 1 4251 0
	pushl	%ebp
.LCFI243:
	movl	%esp, %ebp
.LCFI244:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4252 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	.loc 1 4253 0
	popl	%ebp
	ret
.LFE74:
	.size	max_parm_reg_num, .-max_parm_reg_num
.globl get_first_nonparm_insn
	.type	get_first_nonparm_insn, @function
get_first_nonparm_insn:
.LFB75:
	.loc 1 4259 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$4, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4260 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	je	.L1433
	.loc 1 4261 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1435
.L1433:
	.loc 1 4262 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
.L1435:
	movl	-8(%ebp), %eax
	.loc 1 4263 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	get_first_nonparm_insn, .-get_first_nonparm_insn
	.section	.rodata
	.type	__FUNCTION__.18125, @object
	.size	__FUNCTION__.18125, 20
__FUNCTION__.18125:
	.string	"get_first_block_beg"
	.text
.globl get_first_block_beg
	.type	get_first_block_beg, @function
get_first_block_beg:
.LFB76:
	.loc 1 4270 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$36, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4272 0
	call	get_first_nonparm_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4274 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1438
.L1439:
	.loc 1 4275 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1440
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	jne	.L1440
	.loc 1 4277 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1437
.L1440:
	.loc 1 4274 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1438:
	cmpl	$0, -12(%ebp)
	jne	.L1439
	.loc 1 4279 0
	leal	__FUNCTION__.18125@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4279, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1437:
	.loc 1 4281 0
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	get_first_block_beg, .-get_first_block_beg
.globl aggregate_value_p
	.type	aggregate_value_p, @function
aggregate_value_p:
.LFB77:
	.loc 1 4291 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%ebx
.LCFI255:
	subl	$52, %esp
.LCFI256:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4295 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L1446
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1448
.L1446:
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1448:
	movl	-44(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4297 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1449
	.loc 1 4298 0
	movl	$0, -40(%ebp)
	jmp	.L1451
.L1449:
	.loc 1 4299 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_return_in_memory@PLT
	testl	%eax, %eax
	je	.L1452
	.loc 1 4300 0
	movl	$1, -40(%ebp)
	jmp	.L1451
.L1452:
	.loc 1 4303 0
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1454
	.loc 1 4304 0
	movl	$1, -40(%ebp)
	jmp	.L1451
.L1454:
	.loc 1 4305 0
	movl	flag_pcc_struct_return@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1456
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1458
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1458
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1458
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L1458
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L1456
.L1458:
	.loc 1 4306 0
	movl	$1, -40(%ebp)
	jmp	.L1451
.L1456:
	.loc 1 4309 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	hard_function_value@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4313 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1463
	.loc 1 4314 0
	movl	$0, -40(%ebp)
	jmp	.L1451
.L1463:
	.loc 1 4316 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4317 0
	movl	-8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4318 0
	movl	$0, -24(%ebp)
	jmp	.L1465
.L1466:
	.loc 1 4319 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	addl	%eax, %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L1467
	.loc 1 4320 0
	movl	$1, -40(%ebp)
	jmp	.L1451
.L1467:
	.loc 1 4318 0
	addl	$1, -24(%ebp)
.L1465:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L1466
	.loc 1 4321 0
	movl	$0, -40(%ebp)
.L1451:
	movl	-40(%ebp), %eax
	.loc 1 4322 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	aggregate_value_p, .-aggregate_value_p
	.section	.rodata
	.type	__FUNCTION__.18237, @object
	.size	__FUNCTION__.18237, 13
__FUNCTION__.18237:
	.string	"assign_parms"
	.text
.globl assign_parms
	.type	assign_parms, @function
assign_parms:
.LFB78:
	.loc 1 4331 0
	pushl	%ebp
.LCFI257:
	movl	%esp, %ebp
.LCFI258:
	pushl	%edi
.LCFI259:
	pushl	%esi
.LCFI260:
	pushl	%ebx
.LCFI261:
	subl	$780, %esp
.LCFI262:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4333 0
	movl	$0, -232(%ebp)
	.loc 1 4334 0
	movl	$0, -228(%ebp)
	.loc 1 4342 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -208(%ebp)
	.loc 1 4343 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -204(%ebp)
	.loc 1 4348 0
	movl	$0, -196(%ebp)
	.loc 1 4350 0
	movl	$0, -192(%ebp)
	.loc 1 4352 0
	movl	$0, -188(%ebp)
	.loc 1 4361 0
	movl	-208(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1472
	movl	-208(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	tree_last@PLT
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L1472
	movl	$1, -748(%ebp)
	jmp	.L1475
.L1472:
	movl	$0, -748(%ebp)
.L1475:
	movl	-748(%ebp), %eax
	movl	%eax, -184(%ebp)
	.loc 1 4363 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-184(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	298(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 298(%ecx)
	.loc 1 4372 0
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1476
	.loc 1 4375 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -200(%ebp)
	jmp	.L1478
.L1476:
	.loc 1 4377 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -200(%ebp)
.L1478:
	.loc 1 4378 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-200(%ebp), %eax
	movl	%eax, 120(%edx)
	.loc 1 4380 0
	movl	$0, -252(%ebp)
	movl	$0, -248(%ebp)
	.loc 1 4381 0
	movl	$0, -244(%ebp)
	.loc 1 4384 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	je	.L1479
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1479
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1479
.LBB60:
	.loc 1 4388 0
	movl	-208(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -180(%ebp)
	.loc 1 4390 0
	movl	-180(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$36, (%esp)
	call	build_decl@PLT
	movl	%eax, -196(%ebp)
	.loc 1 4392 0
	movl	-196(%ebp), %edx
	movl	-180(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 4393 0
	movl	-196(%ebp), %edx
	movl	-204(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4394 0
	movl	-196(%ebp), %eax
	movl	%eax, -204(%ebp)
.L1479:
.LBE60:
	.loc 1 4397 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$181, 220(%eax)
	.loc 1 4398 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, 224(%esi)
	.loc 1 4403 0
	movl	$0, 8(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	init_cumulative_args@PLT
	.loc 1 4408 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 40(%eax)
	.loc 1 4410 0
	movl	-204(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L1483
.L1484:
.LBB61:
	.loc 1 4414 0
	movl	$0, -176(%ebp)
	.loc 1 4415 0
	movl	$0, -172(%ebp)
	.loc 1 4416 0
	movl	-236(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -168(%ebp)
	.loc 1 4417 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -164(%ebp)
	.loc 1 4419 0
	movl	$0, -156(%ebp)
	.loc 1 4423 0
	cmpl	$0, -184(%ebp)
	je	.L1485
.LBB62:
	.loc 1 4427 0
	movl	-236(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L1487
.L1488:
	.loc 1 4428 0
	movl	-148(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1489
	.loc 1 4427 0
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
.L1487:
	cmpl	$0, -148(%ebp)
	jne	.L1488
.L1489:
	.loc 1 4431 0
	cmpl	$0, -148(%ebp)
	jne	.L1485
	.loc 1 4432 0
	movl	$1, -156(%ebp)
.L1485:
.LBE62:
	.loc 1 4437 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1492
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1494
.L1492:
	cmpl	$0, -156(%ebp)
	jne	.L1495
.L1494:
	movl	$1, -744(%ebp)
	jmp	.L1496
.L1495:
	movl	$0, -744(%ebp)
.L1496:
	movl	-744(%ebp), %edx
	movl	%edx, -152(%ebp)
	.loc 1 4439 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1497
	movl	-236(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L1497
	cmpl	$0, -168(%ebp)
	jne	.L1500
.L1497:
	.loc 1 4445 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 4446 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1501
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -740(%ebp)
	jmp	.L1503
.L1501:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -740(%ebp)
.L1503:
	movl	-236(%ebp), %eax
	movl	-740(%ebp), %ecx
	movl	%ecx, 96(%eax)
	.loc 1 4447 0
	movl	-236(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 4448 0
	jmp	.L1504
.L1500:
	.loc 1 4453 0
	movl	-168(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -220(%ebp)
	.loc 1 4454 0
	movl	-164(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -216(%ebp)
	.loc 1 4458 0
	cmpl	$0, -216(%ebp)
	jne	.L1505
	.loc 1 4460 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-236(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 4461 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1507
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -736(%ebp)
	jmp	.L1509
.L1507:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -736(%ebp)
.L1509:
	movl	-236(%ebp), %eax
	movl	-736(%ebp), %edx
	movl	%edx, 96(%eax)
	.loc 1 4462 0
	jmp	.L1504
.L1505:
	.loc 1 4468 0
	movl	-236(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1510
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1512
	movl	-168(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1512
.L1510:
	.loc 1 4471 0
	movl	-168(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -168(%ebp)
.L1512:
	.loc 1 4478 0
	movl	-168(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1514
	movl	-168(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L1516
.L1514:
	movl	-168(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1516
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	je	.L1518
.L1516:
	.loc 1 4487 0
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -164(%ebp)
	movl	-164(%ebp), %eax
	movl	%eax, -168(%ebp)
	.loc 1 4488 0
	movl	$1, -176(%ebp)
	.loc 1 4489 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1519
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1519
	movl	$5, -732(%ebp)
	jmp	.L1522
.L1519:
	movl	$4, -732(%ebp)
.L1522:
	movl	-732(%ebp), %ecx
	movl	%ecx, -216(%ebp)
	movl	-216(%ebp), %eax
	movl	%eax, -220(%ebp)
	.loc 1 4478 0
	jmp	.L1523
.L1518:
	.loc 1 4492 0
	movl	-168(%ebp), %eax
	cmpl	-164(%ebp), %eax
	je	.L1523
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1525
	movl	-168(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1523
.L1525:
	movl	-168(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-164(%ebp), %eax
	jne	.L1523
	.loc 1 4496 0
	movl	-168(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 4497 0
	movl	$1, -176(%ebp)
	.loc 1 4498 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1528
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1528
	movl	$5, -728(%ebp)
	jmp	.L1531
.L1528:
	movl	$4, -728(%ebp)
.L1531:
	movl	-728(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	-216(%ebp), %eax
	movl	%eax, -220(%ebp)
.L1523:
	.loc 1 4501 0
	movl	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
	.loc 1 4505 0
	movl	-168(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -240(%ebp)
	.loc 1 4506 0
	movl	$1, 12(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	promote_mode@PLT
	movl	%eax, -224(%ebp)
	.loc 1 4515 0
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4519 0
	cmpl	$0, -232(%ebp)
	jne	.L1532
	.loc 1 4520 0
	movl	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
.L1532:
	.loc 1 4533 0
	cmpl	$0, -156(%ebp)
	je	.L1534
	cmpl	$0, -192(%ebp)
	jne	.L1534
	.loc 1 4535 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$0, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_setup_incoming_varargs@PLT
	movl	%eax, 40(%esi)
	.loc 1 4537 0
	movl	$1, -192(%ebp)
.L1534:
	.loc 1 4554 0
	movl	$1, -160(%ebp)
	.loc 1 4555 0
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leal	-264(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-252(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	locate_and_pad_parm@PLT
.LBB63:
	.loc 1 4573 0
	movl	-268(%ebp), %eax
	testl	%eax, %eax
	jne	.L1537
	movl	-276(%ebp), %eax
	movl	-272(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -724(%ebp)
	jmp	.L1539
.L1537:
	movl	-268(%ebp), %eax
	testl	%eax, %eax
	jne	.L1540
	movl	-276(%ebp), %eax
	movl	-272(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -720(%ebp)
	jmp	.L1542
.L1540:
	movl	-276(%ebp), %eax
	movl	-272(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-268(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -720(%ebp)
.L1542:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-720(%ebp), %edx
	movl	%edx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -724(%ebp)
.L1539:
	movl	-724(%ebp), %ecx
	movl	%ecx, -144(%ebp)
	.loc 1 4575 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	-144(%ebp), %eax
	jne	.L1543
	.loc 1 4576 0
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -228(%ebp)
	jmp	.L1545
.L1543:
	.loc 1 4578 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1546
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1546
	movl	$5, -716(%ebp)
	jmp	.L1549
.L1546:
	movl	$4, -716(%ebp)
.L1549:
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-716(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 4(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -228(%ebp)
.L1545:
	.loc 1 4583 0
	movl	$1, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.LBE63:
	.loc 1 4588 0
	cmpl	$0, -168(%ebp)
	je	.L1550
	movl	-168(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1552
	movl	-168(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1552
	cmpl	$52, -224(%ebp)
	jne	.L1550
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1550
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1550
	cmpl	$0, -168(%ebp)
	je	.L1558
	movl	-168(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1558
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -712(%ebp)
	movl	%edx, -708(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1561
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1561
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1561
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1565
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1565
.L1561:
	movl	$8, -704(%ebp)
	movl	$0, -700(%ebp)
	jmp	.L1567
.L1565:
	movl	$4, -704(%ebp)
	movl	$0, -700(%ebp)
.L1567:
	movl	-704(%ebp), %edx
	movl	-700(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-712(%ebp), %eax
	movl	-708(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1550
.L1558:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1568
	cmpl	$52, -224(%ebp)
	jne	.L1570
	cmpl	$0, -168(%ebp)
	je	.L1572
	movl	-168(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1572
	movl	-168(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -680(%ebp)
	movl	%edx, -676(%ebp)
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
	movl	$8, -672(%ebp)
	movl	$0, -668(%ebp)
	jmp	.L1581
.L1579:
	movl	$4, -672(%ebp)
	movl	$0, -668(%ebp)
.L1581:
	movl	-668(%ebp), %edx
	cmpl	%edx, -676(%ebp)
	jg	.L1572
	movl	-668(%ebp), %ecx
	cmpl	%ecx, -676(%ebp)
	jl	.L1583
	movl	-672(%ebp), %eax
	cmpl	%eax, -680(%ebp)
	jae	.L1572
.L1583:
	movl	$1, -684(%ebp)
	jmp	.L1584
.L1572:
	movl	$0, -684(%ebp)
.L1584:
	movzbl	-684(%ebp), %edx
	movb	%dl, -685(%ebp)
	jmp	.L1585
.L1570:
	movl	-224(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -660(%ebp)
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
	movl	$64, -656(%ebp)
	jmp	.L1592
.L1590:
	movl	$32, -656(%ebp)
.L1592:
	movl	-656(%ebp), %ecx
	cmpl	%ecx, -660(%ebp)
	jge	.L1593
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1595
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1595
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1595
	movl	-224(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L1593
.L1595:
	movl	$1, -664(%ebp)
	jmp	.L1599
.L1593:
	movl	$0, -664(%ebp)
.L1599:
	movzbl	-664(%ebp), %eax
	movb	%al, -685(%ebp)
.L1585:
	cmpb	$0, -685(%ebp)
	je	.L1600
	movl	$2, -692(%ebp)
	jmp	.L1602
.L1600:
	movl	$1, -692(%ebp)
.L1602:
	movl	-692(%ebp), %edx
	movl	%edx, -696(%ebp)
	jmp	.L1603
.L1568:
	movl	$1, -696(%ebp)
.L1603:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1604
	movl	$1, -652(%ebp)
	jmp	.L1606
.L1604:
	movl	$2, -652(%ebp)
.L1606:
	movl	-652(%ebp), %ecx
	cmpl	%ecx, -696(%ebp)
	jne	.L1550
.L1552:
	.loc 1 4589 0
	movl	$0, -232(%ebp)
.L1550:
	.loc 1 4600 0
	cmpl	$0, -232(%ebp)
	je	.L1607
.LBB64:
	.loc 1 4602 0
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_partial_nregs@PLT
	movl	%eax, -140(%ebp)
	.loc 1 4605 0
	cmpl	$0, -140(%ebp)
	jle	.L1607
	.loc 1 4611 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1610
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1610
	.loc 1 4613 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -648(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1613
	movl	$8, -644(%ebp)
	jmp	.L1615
.L1613:
	movl	$4, -644(%ebp)
.L1615:
	movl	-644(%ebp), %eax
	imull	-140(%ebp), %eax
	movl	%eax, -640(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1616
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1616
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1616
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1620
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1620
.L1616:
	movl	$8, -636(%ebp)
	jmp	.L1622
.L1620:
	movl	$4, -636(%ebp)
.L1622:
	movl	-640(%ebp), %eax
	addl	-636(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -632(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1623
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1623
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1623
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1627
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1627
.L1623:
	movl	$8, -628(%ebp)
	jmp	.L1629
.L1627:
	movl	$4, -628(%ebp)
.L1629:
	movl	-632(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-628(%ebp)
	movl	%eax, -624(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1630
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1630
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1630
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1634
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1634
.L1630:
	movl	$8, -620(%ebp)
	jmp	.L1636
.L1634:
	movl	$4, -620(%ebp)
.L1636:
	movl	-624(%ebp), %eax
	imull	-620(%ebp), %eax
	movl	-648(%ebp), %edx
	movl	%eax, 40(%edx)
.L1610:
	.loc 1 4620 0
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1637
	.loc 1 4621 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_group_store@PLT
	jmp	.L1639
.L1637:
	.loc 1 4625 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %ecx
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	move_block_from_reg@PLT
.L1639:
	.loc 1 4629 0
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
.L1607:
.LBE64:
	.loc 1 4636 0
	cmpl	$0, -232(%ebp)
	jne	.L1640
	.loc 1 4637 0
	movl	-228(%ebp), %eax
	movl	%eax, -232(%ebp)
.L1640:
	.loc 1 4640 0
	movl	-236(%ebp), %eax
	movl	-232(%ebp), %edx
	movl	%edx, 96(%eax)
	.loc 1 4646 0
	movl	-232(%ebp), %eax
	cmpl	-228(%ebp), %eax
	je	.L1642
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1644
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1642
.L1644:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1646
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1648
.L1646:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1649
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1651
.L1649:
	movl	$4, -616(%ebp)
	jmp	.L1652
.L1651:
	movl	$8, -616(%ebp)
.L1652:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1653
	movl	$8, -612(%ebp)
	jmp	.L1655
.L1653:
	movl	$4, -612(%ebp)
.L1655:
	movl	-616(%ebp), %eax
	imull	-612(%ebp), %eax
	testl	%eax, %eax
	jle	.L1648
.L1642:
	.loc 1 4663 0
	movl	-252(%ebp), %esi
	movl	-248(%ebp), %edi
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -252(%ebp)
	movl	%edx, -248(%ebp)
	.loc 1 4664 0
	movl	-280(%ebp), %eax
	testl	%eax, %eax
	je	.L1662
.LBB65:
	.loc 1 4665 0
	movl	-280(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	$0, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1658
	movl	-252(%ebp), %esi
	movl	-248(%ebp), %edi
	movl	$0, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -252(%ebp)
	movl	%edx, -248(%ebp)
	jmp	.L1662
.L1658:
	movl	-244(%ebp), %eax
	testl	%eax, %eax
	jne	.L1660
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -244(%ebp)
	jmp	.L1662
.L1660:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	-244(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -244(%ebp)
	.loc 1 4646 0
	jmp	.L1662
.L1648:
.LBE65:
	.loc 1 4669 0
	movl	$0, -228(%ebp)
.L1662:
	.loc 1 4673 0
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_advance@PLT
.LBB66:
	.loc 1 4681 0
	cmpl	$0, -168(%ebp)
	je	.L1663
	movl	-168(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -600(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1665
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1665
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1665
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1669
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1669
.L1665:
	movl	$64, -596(%ebp)
	jmp	.L1671
.L1669:
	movl	$32, -596(%ebp)
.L1671:
	movl	-596(%ebp), %ecx
	cmpl	%ecx, -600(%ebp)
	ja	.L1672
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1674
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1674
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1674
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1678
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1678
.L1674:
	movl	$64, -592(%ebp)
	jmp	.L1680
.L1678:
	movl	$32, -592(%ebp)
.L1680:
	movl	-592(%ebp), %eax
	movl	%eax, -604(%ebp)
	jmp	.L1681
.L1672:
	movl	-168(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -604(%ebp)
.L1681:
	movl	-604(%ebp), %edx
	movl	%edx, -608(%ebp)
	jmp	.L1682
.L1663:
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -584(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1683
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1683
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1683
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1687
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1687
.L1683:
	movl	$64, -580(%ebp)
	jmp	.L1689
.L1687:
	movl	$32, -580(%ebp)
.L1689:
	movl	-580(%ebp), %ecx
	cmpl	%ecx, -584(%ebp)
	ja	.L1690
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
	movl	$64, -576(%ebp)
	jmp	.L1698
.L1696:
	movl	$32, -576(%ebp)
.L1698:
	movl	-576(%ebp), %eax
	movl	%eax, -588(%ebp)
	jmp	.L1699
.L1690:
	movl	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -588(%ebp)
.L1699:
	movl	-588(%ebp), %edx
	movl	%edx, -608(%ebp)
.L1682:
	movl	-608(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	.loc 1 4683 0
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	-132(%ebp), %eax
	jbe	.L1700
	.loc 1 4684 0
	movl	$0, -228(%ebp)
.L1700:
.LBE66:
	.loc 1 4689 0
	cmpl	$0, -232(%ebp)
	je	.L1702
	cmpl	$52, -216(%ebp)
	je	.L1702
	movl	-216(%ebp), %eax
	cmpl	-220(%ebp), %eax
	je	.L1702
	.loc 1 4691 0
	movl	$0, -228(%ebp)
.L1702:
	.loc 1 4696 0
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1706
	cmpl	$52, -216(%ebp)
	je	.L1706
	cmpl	$52, -220(%ebp)
	je	.L1706
.LBB67:
	.loc 1 4699 0
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 4701 0
	movl	$0, -128(%ebp)
	jmp	.L1710
.L1711:
	.loc 1 4702 0
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1712
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1712
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-220(%ebp), %eax
	jne	.L1712
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1712
	.loc 1 4708 0
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-128(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 4709 0
	movl	-236(%ebp), %edx
	movl	-232(%ebp), %eax
	movl	%eax, 96(%edx)
	.loc 1 4710 0
	jmp	.L1706
.L1712:
	.loc 1 4701 0
	addl	$1, -128(%ebp)
.L1710:
	movl	-128(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jl	.L1711
.L1706:
.LBE67:
	.loc 1 4728 0
	cmpl	$52, -216(%ebp)
	je	.L1717
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1719
.L1717:
	.loc 1 4733 0
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L1720
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1722
.L1720:
.LBB68:
	.loc 1 4737 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -572(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1723
	movl	$8, -568(%ebp)
	jmp	.L1725
.L1723:
	movl	$4, -568(%ebp)
.L1725:
	movl	-572(%ebp), %eax
	addl	-568(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -564(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1726
	movl	$-8, -560(%ebp)
	jmp	.L1728
.L1726:
	movl	$-4, -560(%ebp)
.L1728:
	movl	-564(%ebp), %eax
	andl	-560(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 4748 0
	cmpl	$0, -228(%ebp)
	jne	.L1729
	.loc 1 4750 0
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -228(%ebp)
	.loc 1 4753 0
	movl	$1, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	jmp	.L1731
.L1729:
	.loc 1 4756 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1732
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1732
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1732
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1736
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1736
.L1732:
	movl	$64, -556(%ebp)
	jmp	.L1738
.L1736:
	movl	$32, -556(%ebp)
.L1738:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1739
	movl	$64, -552(%ebp)
	jmp	.L1741
.L1739:
	movl	$32, -552(%ebp)
.L1741:
	movl	-556(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-552(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L1731
	.loc 1 4757 0
	leal	__FUNCTION__.18237@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4757, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1731:
	.loc 1 4761 0
	movl	-232(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L1743
	.loc 1 4762 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	%esi, 8(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_group_store@PLT
	jmp	.L1722
.L1743:
	.loc 1 4765 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -548(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1745
	movl	$8, -544(%ebp)
	jmp	.L1747
.L1745:
	movl	$4, -544(%ebp)
.L1747:
	movl	-120(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-544(%ebp)
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %edx
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	-548(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	move_block_from_reg@PLT
.L1722:
.LBE68:
	.loc 1 4770 0
	movl	-236(%ebp), %edx
	movl	-228(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 4728 0
	jmp	.L1748
.L1719:
	.loc 1 4772 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1749
	movl	-236(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1751
.L1749:
	movl	-236(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1751
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1753
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1753
.L1751:
	cmpl	$0, -176(%ebp)
	jne	.L1753
	movl	-236(%ebp), %eax
	cmpl	-196(%ebp), %eax
	jne	.L1756
.L1753:
.LBB69:
	.loc 1 4787 0
	movl	$0, -108(%ebp)
	movl	$0, -104(%ebp)
	.loc 1 4789 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -240(%ebp)
	.loc 1 4791 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	promote_mode@PLT
	movl	%eax, -212(%ebp)
	.loc 1 4794 0
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -116(%ebp)
	.loc 1 4795 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_user_reg@PLT
	.loc 1 4799 0
	cmpl	$0, -176(%ebp)
	je	.L1757
.LBB70:
	.loc 1 4802 0
	movl	-168(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -100(%ebp)
	.loc 1 4803 0
	movl	$1, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 4804 0
	movl	-236(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 88(%edx)
	jmp	.L1759
.L1757:
.LBE70:
	.loc 1 4808 0
	movl	-236(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 4809 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1760
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -540(%ebp)
	jmp	.L1762
.L1760:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -540(%ebp)
.L1762:
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-540(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_set_unchanging@PLT
.L1759:
	.loc 1 4813 0
	movl	-216(%ebp), %eax
	cmpl	-220(%ebp), %eax
	jne	.L1763
	movl	-212(%ebp), %eax
	cmpl	-224(%ebp), %eax
	je	.L1765
.L1763:
.LBB71:
	.loc 1 4836 0
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -92(%ebp)
	.loc 1 4838 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4840 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 4841 0
	movl	-240(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -92(%ebp)
	.loc 1 4843 0
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1766
	movl	-92(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-216(%ebp), %eax
	jne	.L1766
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1766
	movl	-216(%ebp), %eax
	cmpl	-220(%ebp), %eax
	jne	.L1766
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1766
	movl	-92(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L1766
	.loc 1 4853 0
	movl	-92(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
.LBB72:
	.loc 1 4854 0
	movl	-92(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-240(%ebp), %eax
	testl	%eax, %eax
	jns	.L1773
	movl	-88(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$8, %edx
	movb	%dl, 3(%eax)
	jmp	.L1766
.L1773:
	movl	-88(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-9, %eax
	movb	%al, 3(%edx)
	movl	-240(%ebp), %eax
	andl	$1, %eax
	movl	-88(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
.L1766:
.LBE72:
	.loc 1 4858 0
	movl	-236(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	.loc 1 4859 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_assignment@PLT
	.loc 1 4861 0
	movl	-96(%ebp), %eax
	andl	$1, %eax
	movl	-236(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 10(%edx)
	.loc 1 4862 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 4863 0
	movl	$1, -172(%ebp)
	.loc 1 4864 0
	call	end_sequence@PLT
	.loc 1 4813 0
	jmp	.L1775
.L1765:
.LBE71:
	.loc 1 4867 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1775:
	.loc 1 4871 0
	cmpl	$0, -176(%ebp)
	je	.L1776
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	je	.L1776
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -536(%ebp)
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1779
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -532(%ebp)
	jmp	.L1781
.L1779:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -532(%ebp)
.L1781:
	movl	-532(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	cmpl	%eax, -536(%ebp)
	jne	.L1782
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1784
	movl	-236(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1776
.L1784:
	movl	-236(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1776
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1782
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1776
.L1782:
	.loc 1 4884 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -116(%ebp)
	.loc 1 4885 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_user_reg@PLT
	.loc 1 4886 0
	movl	-116(%ebp), %eax
	movzbl	2(%eax), %eax
	movb	%al, -525(%ebp)
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1788
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -524(%ebp)
	jmp	.L1790
.L1788:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -524(%ebp)
.L1790:
	movl	-524(%ebp), %ecx
	movzbl	2(%ecx), %eax
	cmpb	%al, -525(%ebp)
	je	.L1791
.LBB73:
	.loc 1 4888 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1793
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -520(%ebp)
	jmp	.L1795
.L1793:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -520(%ebp)
.L1795:
	movl	-520(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -84(%ebp)
	.loc 1 4889 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 4890 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 4891 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1796
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -516(%ebp)
	jmp	.L1798
.L1796:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -516(%ebp)
.L1798:
	movl	-516(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4892 0
	movl	-116(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 4896 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1799
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -512(%ebp)
	jmp	.L1801
.L1799:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -512(%ebp)
.L1801:
	movl	-512(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4897 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 4898 0
	movl	$1, -172(%ebp)
	.loc 1 4899 0
	call	end_sequence@PLT
	jmp	.L1802
.L1791:
.LBE73:
	.loc 1 4902 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1803
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -508(%ebp)
	jmp	.L1805
.L1803:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -508(%ebp)
.L1805:
	movl	-508(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1802:
	.loc 1 4903 0
	movl	-236(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 4906 0
	movl	$0, -228(%ebp)
	.loc 1 4871 0
	jmp	.L1806
.L1776:
	.loc 1 4917 0
	cmpl	$0, -176(%ebp)
	je	.L1806
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1806
	cmpl	$0, -152(%ebp)
	je	.L1806
	movl	-236(%ebp), %eax
	movl	68(%eax), %ecx
	movl	-236(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	function_arg_pass_by_reference@PLT
	testl	%eax, %eax
	je	.L1806
	movl	-236(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1806
.LBB74:
	.loc 1 4925 0
	movl	-236(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4930 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 4932 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1812
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1814
.L1812:
	.loc 1 4935 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %esi
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	expr_size@PLT
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_dynamic_stack_space@PLT
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4932 0
	jmp	.L1815
.L1814:
	.loc 1 4940 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	$1, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	assign_stack_temp@PLT
	movl	%eax, -76(%ebp)
.L1815:
	.loc 1 4942 0
	movl	$1, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 4944 0
	movl	$0, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	store_expr@PLT
	.loc 1 4945 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 4946 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 4947 0
	movl	$1, -172(%ebp)
	.loc 1 4948 0
	call	end_sequence@PLT
.L1806:
.LBE74:
	.loc 1 4958 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L1816
	.loc 1 4959 0
	movl	-116(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -504(%ebp)
	movl	%edx, -752(%ebp)
	movl	-504(%ebp), %ecx
	cmpl	%ecx, -752(%ebp)
	jae	.L1818
	movl	-504(%ebp), %eax
	movl	%eax, -752(%ebp)
.L1818:
	movl	-752(%ebp), %edx
	movl	%edx, -112(%ebp)
	jmp	.L1819
.L1816:
	.loc 1 4961 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
.L1819:
	.loc 1 4963 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	cmpl	-112(%ebp), %eax
	ja	.L1820
.LBB75:
	.loc 1 4966 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4971 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 220(%edx)
	.loc 1 4972 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ggc_realloc@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4974 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	0(,%eax,4), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 4976 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 224(%edx)
.L1820:
.LBE75:
	.loc 1 4979 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L1822
.LBB76:
	.loc 1 4981 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 4983 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 4984 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 4986 0
	cmpl	$0, -228(%ebp)
	je	.L1824
	.loc 1 4988 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-104(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_realpart@PLT
	movl	%eax, (%esi)
	.loc 1 4990 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-108(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_imagpart@PLT
	movl	%eax, (%esi)
	jmp	.L1827
.L1824:
	.loc 1 4995 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-104(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 4996 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-108(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	jmp	.L1827
.L1822:
.LBE76:
	.loc 1 5000 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-228(%ebp), %eax
	movl	%eax, (%edx)
.L1827:
	.loc 1 5008 0
	movl	-216(%ebp), %eax
	cmpl	-220(%ebp), %eax
	jne	.L1828
	cmpl	$0, -172(%ebp)
	jne	.L1828
	cmpl	$0, -228(%ebp)
	je	.L1828
	movl	-228(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1828
	movl	-268(%ebp), %eax
	testl	%eax, %eax
	jne	.L1828
	movl	-228(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1828
.LBB77:
	.loc 1 5016 0
	call	get_last_insn@PLT
	movl	%eax, -56(%ebp)
	.loc 1 5020 0
	movl	-116(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L1835
	.loc 1 5023 0
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1837
.L1838:
	.loc 1 5026 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1839
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1841
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -496(%ebp)
	jmp	.L1843
.L1841:
	movl	-52(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -496(%ebp)
.L1843:
	movl	-496(%ebp), %eax
	movl	%eax, -500(%ebp)
	jmp	.L1844
.L1839:
	movl	$0, -500(%ebp)
.L1844:
	movl	-500(%ebp), %edx
	movl	%edx, -48(%ebp)
	.loc 1 5027 0
	cmpl	$0, -48(%ebp)
	je	.L1845
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-108(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L1845
	.loc 1 5029 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-108(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 5027 0
	jmp	.L1848
.L1845:
	.loc 1 5033 0
	cmpl	$0, -48(%ebp)
	je	.L1848
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-104(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L1848
	.loc 1 5035 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	224(%eax), %edx
	movl	-104(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 68(%eax)
.L1848:
	.loc 1 5024 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -52(%ebp)
.L1837:
	.loc 1 5023 0
	cmpl	$0, -52(%ebp)
	jne	.L1838
	jmp	.L1828
.L1835:
	.loc 1 5040 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1852
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1854
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -488(%ebp)
	jmp	.L1856
.L1854:
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -488(%ebp)
.L1856:
	movl	-488(%ebp), %ecx
	movl	%ecx, -492(%ebp)
	jmp	.L1857
.L1852:
	movl	$0, -492(%ebp)
.L1857:
	movl	-492(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L1828
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-116(%ebp), %eax
	jne	.L1828
	.loc 1 5042 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 68(%eax)
.L1828:
.LBE77:
	.loc 1 5048 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1860
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1862
.L1860:
	.loc 1 5049 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_reg_pointer@PLT
.L1862:
	.loc 1 5053 0
	movl	-236(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1748
	.loc 1 5062 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 5063 0
	movl	$1, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	put_var_into_stack@PLT
	.loc 1 5064 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 5065 0
	call	end_sequence@PLT
	.loc 1 4772 0
	jmp	.L1748
.L1756:
.LBE69:
	.loc 1 5073 0
	movl	-224(%ebp), %eax
	cmpl	-216(%ebp), %eax
	je	.L1865
.LBB78:
	.loc 1 5076 0
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 5078 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 5080 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 5081 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_mode@PLT
	movl	%eax, -232(%ebp)
	.loc 1 5083 0
	cmpl	$0, -228(%ebp)
	je	.L1867
	.loc 1 5085 0
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -228(%ebp)
.L1867:
	.loc 1 5087 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 5088 0
	movl	$1, -172(%ebp)
	.loc 1 5089 0
	call	end_sequence@PLT
.L1865:
.LBE78:
	.loc 1 5092 0
	movl	-232(%ebp), %eax
	cmpl	-228(%ebp), %eax
	je	.L1869
	.loc 1 5094 0
	cmpl	$0, -228(%ebp)
	jne	.L1871
	.loc 1 5096 0
	movl	-232(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-232(%ebp), %ecx
	movzbl	2(%ecx), %ecx
	movzbl	%cl, %ecx
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -228(%ebp)
	.loc 1 5099 0
	movl	$1, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.L1871:
	.loc 1 5102 0
	movl	-224(%ebp), %eax
	cmpl	-216(%ebp), %eax
	je	.L1873
	.loc 1 5104 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
	.loc 1 5105 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 5107 0
	call	get_insns@PLT
	movl	%eax, -188(%ebp)
	.loc 1 5108 0
	call	end_sequence@PLT
	jmp	.L1869
.L1873:
	.loc 1 5111 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, %esi
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L1869:
	.loc 1 5115 0
	movl	-236(%ebp), %edx
	movl	-228(%ebp), %eax
	movl	%eax, 88(%edx)
.L1748:
	.loc 1 5120 0
	movl	-236(%ebp), %eax
	cmpl	-196(%ebp), %eax
	jne	.L1875
.LBB79:
	.loc 1 5122 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5123 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1877
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -484(%ebp)
	jmp	.L1879
.L1877:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -484(%ebp)
.L1879:
	movl	-484(%ebp), %edx
	movl	%edx, -36(%ebp)
	.loc 1 5131 0
	movl	-40(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 5132 0
	movl	$1, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 5133 0
	movl	-40(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 88(%edx)
.L1875:
.LBE79:
	.loc 1 5136 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1880
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -480(%ebp)
	jmp	.L1882
.L1880:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -480(%ebp)
.L1882:
	movl	-480(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$71, %ax
	jne	.L1883
	.loc 1 5137 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -476(%ebp)
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1885
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -472(%ebp)
	jmp	.L1887
.L1885:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -472(%ebp)
.L1887:
	movl	-472(%ebp), %edx
	movl	4(%edx), %eax
	sall	$2, %eax
	movl	-476(%ebp), %edx
	addl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1504
.L1883:
	.loc 1 5138 0
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1888
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -468(%ebp)
	jmp	.L1890
.L1888:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -468(%ebp)
.L1890:
	movl	-468(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$75, %ax
	jne	.L1504
	.loc 1 5140 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -464(%ebp)
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1892
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -460(%ebp)
	jmp	.L1894
.L1892:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -460(%ebp)
.L1894:
	movl	-460(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	-464(%ebp), %edx
	addl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5141 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -456(%ebp)
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1895
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -452(%ebp)
	jmp	.L1897
.L1895:
	movl	$0, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-236(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -452(%ebp)
.L1897:
	movl	-452(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	-456(%ebp), %edx
	addl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%eax, (%edx)
.L1504:
.LBE61:
	.loc 1 4410 0
	movl	-236(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -236(%ebp)
.L1483:
	cmpl	$0, -236(%ebp)
	jne	.L1484
	.loc 1 5148 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 5150 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	get_last_insn@PLT
	movl	%eax, 216(%esi)
	.loc 1 5152 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-252(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	%eax, 36(%ecx)
	.loc 1 5159 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -448(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -440(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1899
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1901
.L1899:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1902
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1904
.L1902:
	movl	$4, -432(%ebp)
	jmp	.L1905
.L1904:
	movl	$8, -432(%ebp)
.L1905:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1906
	movl	$8, -428(%ebp)
	jmp	.L1908
.L1906:
	movl	$4, -428(%ebp)
.L1908:
	movl	-432(%ebp), %eax
	imull	-428(%ebp), %eax
	movl	%eax, -436(%ebp)
	jmp	.L1909
.L1901:
	movl	$0, -436(%ebp)
.L1909:
	movl	-436(%ebp), %edx
	cmpl	%edx, -440(%ebp)
	jle	.L1910
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -444(%ebp)
	jmp	.L1912
.L1910:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1913
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1915
.L1913:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1916
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1918
.L1916:
	movl	$4, -420(%ebp)
	jmp	.L1919
.L1918:
	movl	$8, -420(%ebp)
.L1919:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1920
	movl	$8, -416(%ebp)
	jmp	.L1922
.L1920:
	movl	$4, -416(%ebp)
.L1922:
	movl	-420(%ebp), %ecx
	imull	-416(%ebp), %ecx
	movl	%ecx, -424(%ebp)
	jmp	.L1923
.L1915:
	movl	$0, -424(%ebp)
.L1923:
	movl	-424(%ebp), %eax
	movl	%eax, -444(%ebp)
.L1912:
	movl	-444(%ebp), %ecx
	movl	-448(%ebp), %edx
	movl	%ecx, 36(%edx)
	.loc 1 5166 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -412(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -408(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1924
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1924
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1927
.L1924:
	movl	$8, -404(%ebp)
	jmp	.L1928
.L1927:
	movl	$16, -404(%ebp)
.L1928:
	movl	-408(%ebp), %eax
	addl	-404(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -400(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1929
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1932
.L1929:
	movl	$8, -396(%ebp)
	jmp	.L1933
.L1932:
	movl	$16, -396(%ebp)
.L1933:
	movl	-400(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-396(%ebp)
	movl	%eax, -392(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1934
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1934
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1937
.L1934:
	movl	$8, -388(%ebp)
	jmp	.L1938
.L1937:
	movl	$16, -388(%ebp)
.L1938:
	movl	-392(%ebp), %eax
	imull	-388(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%eax, 36(%edx)
	.loc 1 5177 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -384(%ebp)
	movl	-244(%ebp), %eax
	testl	%eax, %eax
	jne	.L1939
	movl	-252(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -380(%ebp)
	jmp	.L1941
.L1939:
	movl	-244(%ebp), %eax
	testl	%eax, %eax
	jne	.L1942
	movl	-252(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -376(%ebp)
	jmp	.L1944
.L1942:
	movl	-252(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-244(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -376(%ebp)
.L1944:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-376(%ebp), %ecx
	movl	%ecx, (%esp)
	call	expand_expr@PLT
	movl	%eax, -380(%ebp)
.L1941:
	movl	-380(%ebp), %edx
	movl	-384(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 5183 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 32(%eax)
	.loc 1 5189 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-352(%ebp), %edx
	movl	%edx, 52(%eax)
	movl	-348(%ebp), %edx
	movl	%edx, 56(%eax)
	movl	-344(%ebp), %edx
	movl	%edx, 60(%eax)
	movl	-340(%ebp), %edx
	movl	%edx, 64(%eax)
	movl	-336(%ebp), %edx
	movl	%edx, 68(%eax)
	movl	-332(%ebp), %edx
	movl	%edx, 72(%eax)
	movl	-328(%ebp), %edx
	movl	%edx, 76(%eax)
	movl	-324(%ebp), %edx
	movl	%edx, 80(%eax)
	movl	-320(%ebp), %edx
	movl	%edx, 84(%eax)
	movl	-316(%ebp), %edx
	movl	%edx, 88(%eax)
	movl	-312(%ebp), %edx
	movl	%edx, 92(%eax)
	movl	-308(%ebp), %edx
	movl	%edx, 96(%eax)
	movl	-304(%ebp), %edx
	movl	%edx, 100(%eax)
	movl	-300(%ebp), %edx
	movl	%edx, 104(%eax)
	movl	-296(%ebp), %edx
	movl	%edx, 108(%eax)
	movl	-292(%ebp), %edx
	movl	%edx, 112(%eax)
	.loc 1 5196 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -372(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1945
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1947
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -364(%ebp)
	jmp	.L1949
.L1947:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -364(%ebp)
.L1949:
	movl	-364(%ebp), %ecx
	movl	%ecx, -368(%ebp)
	jmp	.L1950
.L1945:
	movl	$0, -368(%ebp)
.L1950:
	movl	-368(%ebp), %edx
	movl	-372(%ebp), %eax
	movl	%edx, 116(%eax)
	.loc 1 5203 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1960
.LBB80:
	.loc 1 5205 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5206 0
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1953
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -360(%ebp)
	jmp	.L1955
.L1953:
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -360(%ebp)
.L1955:
	movl	-360(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 5208 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1956
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	seta	-353(%ebp)
	jmp	.L1958
.L1956:
	movl	-28(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	setne	-353(%ebp)
.L1958:
	cmpb	$0, -353(%ebp)
	je	.L1960
.LBB81:
	.loc 1 5218 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_function_value@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5221 0
	movl	-20(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$64, %eax
	movb	%al, 3(%edx)
	.loc 1 5225 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 116(%edx)
.L1960:
.LBE81:
.LBE80:
	.loc 1 5228 0
	addl	$780, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE78:
	.size	assign_parms, .-assign_parms
.globl promoted_input_arg
	.type	promoted_input_arg, @function
promoted_input_arg:
.LFB79:
	.loc 1 5243 0
	pushl	%ebp
.LCFI263:
	movl	%esp, %ebp
.LCFI264:
	pushl	%ebx
.LCFI265:
	subl	$36, %esp
.LCFI266:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5246 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1962
.L1963:
	.loc 1 5248 0
	movl	-12(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1964
	movl	-12(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1964
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L1964
.LBB82:
	.loc 1 5252 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 5253 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 5255 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	promote_mode@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5256 0
	movl	-12(%ebp), %eax
	movl	96(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	jne	.L1964
	movl	-12(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	je	.L1964
	.loc 1 5259 0
	movl	-12(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5260 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5261 0
	movl	-12(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1970
.L1964:
.LBE82:
	.loc 1 5247 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1962:
	.loc 1 5246 0
	cmpl	$0, -12(%ebp)
	jne	.L1963
	.loc 1 5265 0
	movl	$0, -24(%ebp)
.L1970:
	movl	-24(%ebp), %eax
	.loc 1 5266 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	promoted_input_arg, .-promoted_input_arg
.globl locate_and_pad_parm
	.type	locate_and_pad_parm, @function
locate_and_pad_parm:
.LFB80:
	.loc 1 5312 0
	pushl	%ebp
.LCFI267:
	movl	%esp, %ebp
.LCFI268:
	pushl	%edi
.LCFI269:
	pushl	%esi
.LCFI270:
	pushl	%ebx
.LCFI271:
	subl	$220, %esp
.LCFI272:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5314 0
	cmpl	$0, 12(%ebp)
	je	.L1974
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	size_in_bytes@PLT
	movl	%eax, -204(%ebp)
	jmp	.L1976
.L1974:
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -204(%ebp)
.L1976:
	movl	-204(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5315 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1977
	cmpl	$52, 8(%ebp)
	jne	.L1979
	cmpl	$0, 12(%ebp)
	je	.L1981
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1981
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1984
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1984
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1984
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1988
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1988
.L1984:
	movl	$8, -176(%ebp)
	movl	$0, -172(%ebp)
	jmp	.L1990
.L1988:
	movl	$4, -176(%ebp)
	movl	$0, -172(%ebp)
.L1990:
	movl	-172(%ebp), %edx
	cmpl	%edx, -180(%ebp)
	jg	.L1981
	movl	-172(%ebp), %ecx
	cmpl	%ecx, -180(%ebp)
	jl	.L1992
	movl	-176(%ebp), %esi
	cmpl	%esi, -184(%ebp)
	jae	.L1981
.L1992:
	movl	$1, -188(%ebp)
	jmp	.L1993
.L1981:
	movl	$0, -188(%ebp)
.L1993:
	movzbl	-188(%ebp), %eax
	movb	%al, -189(%ebp)
	jmp	.L1994
.L1979:
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -160(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1995
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L1995
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1995
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1999
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1999
.L1995:
	movl	$64, -156(%ebp)
	jmp	.L2001
.L1999:
	movl	$32, -156(%ebp)
.L2001:
	movl	-156(%ebp), %edx
	cmpl	%edx, -160(%ebp)
	jge	.L2002
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2004
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2004
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L2004
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L2002
.L2004:
	movl	$1, -164(%ebp)
	jmp	.L2008
.L2002:
	movl	$0, -164(%ebp)
.L2008:
	movzbl	-164(%ebp), %ecx
	movb	%cl, -189(%ebp)
.L1994:
	cmpb	$0, -189(%ebp)
	je	.L2009
	movl	$2, -196(%ebp)
	jmp	.L2011
.L2009:
	movl	$1, -196(%ebp)
.L2011:
	movl	-196(%ebp), %esi
	movl	%esi, -200(%ebp)
	jmp	.L2012
.L1977:
	movl	$1, -200(%ebp)
.L2012:
	movl	-200(%ebp), %edi
	movl	%edi, -32(%ebp)
	.loc 1 5316 0
	cmpl	$0, 12(%ebp)
	je	.L2013
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2015
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2015
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2015
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2019
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2019
.L2015:
	movl	$64, -140(%ebp)
	jmp	.L2021
.L2019:
	movl	$32, -140(%ebp)
.L2021:
	movl	-140(%ebp), %eax
	cmpl	%eax, -144(%ebp)
	ja	.L2022
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2024
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2024
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2024
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2028
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2028
.L2024:
	movl	$64, -136(%ebp)
	jmp	.L2030
.L2028:
	movl	$32, -136(%ebp)
.L2030:
	movl	-136(%ebp), %edx
	movl	%edx, -148(%ebp)
	jmp	.L2031
.L2022:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -148(%ebp)
.L2031:
	movl	-148(%ebp), %ecx
	movl	%ecx, -152(%ebp)
	jmp	.L2032
.L2013:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -128(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2033
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2033
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2033
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2037
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2037
.L2033:
	movl	$64, -124(%ebp)
	jmp	.L2039
.L2037:
	movl	$32, -124(%ebp)
.L2039:
	movl	-124(%ebp), %esi
	cmpl	%esi, -128(%ebp)
	ja	.L2040
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2042
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2042
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2042
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2046
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2046
.L2042:
	movl	$64, -120(%ebp)
	jmp	.L2048
.L2046:
	movl	$32, -120(%ebp)
.L2048:
	movl	-120(%ebp), %edi
	movl	%edi, -132(%ebp)
	jmp	.L2049
.L2040:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -132(%ebp)
.L2049:
	movl	-132(%ebp), %eax
	movl	%eax, -152(%ebp)
.L2032:
	movl	-152(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 5324 0
	cmpl	$0, 16(%ebp)
	jne	.L2050
.LBB83:
	.loc 1 5326 0
	movl	$0, -24(%ebp)
	.loc 1 5331 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2052
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2054
.L2052:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2055
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2057
.L2055:
	movl	$4, -112(%ebp)
	jmp	.L2058
.L2057:
	movl	$8, -112(%ebp)
.L2058:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2059
	movl	$8, -108(%ebp)
	jmp	.L2061
.L2059:
	movl	$4, -108(%ebp)
.L2061:
	movl	-112(%ebp), %ecx
	imull	-108(%ebp), %ecx
	movl	%ecx, -116(%ebp)
	jmp	.L2062
.L2054:
	movl	$0, -116(%ebp)
.L2062:
	movl	-116(%ebp), %esi
	movl	%esi, -24(%ebp)
	.loc 1 5333 0
	cmpl	$0, -24(%ebp)
	jle	.L2050
	.loc 1 5335 0
	movl	24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2064
	.loc 1 5337 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -104(%ebp)
	movl	24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2066
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -100(%ebp)
	jmp	.L2068
.L2066:
	movl	24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	24(%ebp), %eax
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
	movl	%eax, -100(%ebp)
.L2068:
	movl	-104(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	size_binop@PLT
	movl	24(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 5340 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L2050
.L2064:
	.loc 1 5342 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %esi
	cmpl	%esi, -92(%ebp)
	jg	.L2050
	movl	-84(%ebp), %edi
	cmpl	%edi, -92(%ebp)
	jl	.L2070
	movl	-88(%ebp), %eax
	cmpl	%eax, -96(%ebp)
	jae	.L2050
.L2070:
	.loc 1 5343 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L2050:
.LBE83:
	.loc 1 5348 0
	movl	32(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 5349 0
	movl	32(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 5350 0
	movl	36(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 5351 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 5398 0
	cmpl	$0, 16(%ebp)
	je	.L2071
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2073
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2075
.L2073:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2076
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L2078
.L2076:
	movl	$4, -80(%ebp)
	jmp	.L2079
.L2078:
	movl	$8, -80(%ebp)
.L2079:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2080
	movl	$8, -76(%ebp)
	jmp	.L2082
.L2080:
	movl	$4, -76(%ebp)
.L2082:
	movl	-80(%ebp), %eax
	imull	-76(%ebp), %eax
	testl	%eax, %eax
	jle	.L2075
.L2071:
	.loc 1 5403 0
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	pad_to_arg_alignment
.L2075:
	.loc 1 5404 0
	movl	28(%ebp), %ecx
	movl	24(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	.loc 1 5413 0
	cmpl	$2, -32(%ebp)
	jne	.L2083
	cmpl	$0, 16(%ebp)
	je	.L2085
	cmpl	$52, 8(%ebp)
	je	.L2083
.L2085:
	.loc 1 5417 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	pad_below
.L2083:
	.loc 1 5419 0
	cmpl	$0, -32(%ebp)
	je	.L2087
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L2089
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$3, %esi, %edi
	sall	$3, %esi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2091
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2091
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2091
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2095
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2095
.L2091:
	movl	$64, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L2097
.L2095:
	movl	$32, -64(%ebp)
	movl	$0, -60(%ebp)
.L2097:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2087
.L2089:
	.loc 1 5422 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2098
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2098
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2098
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2102
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2102
.L2098:
	movl	$8, -52(%ebp)
	jmp	.L2104
.L2102:
	movl	$4, -52(%ebp)
.L2104:
	movl	-52(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, -36(%ebp)
.L2087:
.LBB84:
	.loc 1 5424 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L2105
	movl	32(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L2110
.L2105:
	movl	32(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2108
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L2110
.L2108:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%edx, 8(%eax)
.L2110:
.LBE84:
	.loc 1 5426 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	locate_and_pad_parm, .-locate_and_pad_parm
	.type	pad_to_arg_alignment, @function
pad_to_arg_alignment:
.LFB81:
	.loc 1 5436 0
	pushl	%ebp
.LCFI273:
	movl	%esp, %ebp
.LCFI274:
	pushl	%edi
.LCFI275:
	pushl	%esi
.LCFI276:
	pushl	%ebx
.LCFI277:
	subl	$76, %esp
.LCFI278:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5437 0
	movl	$0, -24(%ebp)
	.loc 1 5438 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 5440 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 5442 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2112
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2112
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2112
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2116
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2116
.L2112:
	movl	$64, -72(%ebp)
	jmp	.L2118
.L2116:
	movl	$32, -72(%ebp)
.L2118:
	movl	-72(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L2119
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2121
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2121
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2124
.L2121:
	movl	$64, -68(%ebp)
	jmp	.L2125
.L2124:
	movl	$128, -68(%ebp)
.L2125:
	movl	-68(%ebp), %esi
	cmpl	12(%ebp), %esi
	jge	.L2119
	.loc 1 5444 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5445 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L2119:
	.loc 1 5448 0
	movl	16(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 5449 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 5451 0
	cmpl	$8, 12(%ebp)
	jle	.L2163
	.loc 1 5453 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2129
	.loc 1 5455 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2131
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -60(%ebp)
	jmp	.L2133
.L2131:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
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
	movl	%eax, -60(%ebp)
.L2133:
	movl	-64(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 5463 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 5464 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2134
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2134
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2134
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2138
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2138
.L2134:
	movl	$64, -56(%ebp)
	jmp	.L2140
.L2138:
	movl	$32, -56(%ebp)
.L2140:
	movl	-56(%ebp), %esi
	cmpl	12(%ebp), %esi
	jge	.L2163
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2143
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2143
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2146
.L2143:
	movl	$64, -52(%ebp)
	jmp	.L2147
.L2146:
	movl	$128, -52(%ebp)
.L2147:
	movl	-52(%ebp), %edi
	cmpl	12(%ebp), %edi
	jge	.L2163
	.loc 1 5465 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L2163
.L2129:
	.loc 1 5470 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-20(%ebp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 5476 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2149
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2149
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2149
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2153
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2153
.L2149:
	movl	$64, -40(%ebp)
	jmp	.L2155
.L2153:
	movl	$32, -40(%ebp)
.L2155:
	movl	-40(%ebp), %edi
	cmpl	12(%ebp), %edi
	jge	.L2163
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2157
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2157
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2160
.L2157:
	movl	$64, -36(%ebp)
	jmp	.L2161
.L2160:
	movl	$128, -36(%ebp)
.L2161:
	movl	-36(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L2163
	.loc 1 5477 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	-32(%ebp), %eax
	sbbl	-28(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L2163:
	.loc 1 5480 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE81:
	.size	pad_to_arg_alignment, .-pad_to_arg_alignment
.globl __umoddi3
	.type	pad_below, @function
pad_below:
.LFB82:
	.loc 1 5487 0
	pushl	%ebp
.LCFI279:
	movl	%esp, %ebp
.LCFI280:
	pushl	%edi
.LCFI281:
	pushl	%esi
.LCFI282:
	pushl	%ebx
.LCFI283:
	subl	$108, %esp
.LCFI284:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5488 0
	cmpl	$52, 12(%ebp)
	je	.L2165
	.loc 1 5490 0
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -96(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2167
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2167
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2167
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2171
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2171
.L2167:
	movl	$64, -92(%ebp)
	jmp	.L2173
.L2171:
	movl	$32, -92(%ebp)
.L2173:
	movl	-96(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-92(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L2223
	.loc 1 5491 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	12(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -80(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2176
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2176
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2176
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2180
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2180
.L2176:
	movl	$64, -76(%ebp)
	jmp	.L2182
.L2180:
	movl	$32, -76(%ebp)
.L2182:
	movl	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2183
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2183
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2183
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2187
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2187
.L2183:
	movl	$64, -68(%ebp)
	jmp	.L2189
.L2187:
	movl	$32, -68(%ebp)
.L2189:
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-68(%ebp)
	movl	%eax, -64(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2190
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2190
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2190
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2194
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2194
.L2190:
	movl	$64, -60(%ebp)
	jmp	.L2196
.L2194:
	movl	$32, -60(%ebp)
.L2196:
	movl	-64(%ebp), %edx
	imull	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	-88(%ebp), %eax
	adcl	-84(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L2223
.L2165:
	.loc 1 5498 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2198
	movl	16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$3, %esi, %edi
	sall	$3, %esi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2200
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2200
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2200
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2204
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2204
.L2200:
	movl	$64, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L2206
.L2204:
	movl	$32, -48(%ebp)
	movl	$0, -44(%ebp)
.L2206:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__umoddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2223
.L2198:
.LBB85:
	.loc 1 5502 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2207
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2207
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L2207
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2211
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2211
.L2207:
	movl	$8, -36(%ebp)
	jmp	.L2213
.L2211:
	movl	$4, -36(%ebp)
.L2213:
	movl	-36(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, -28(%ebp)
.LBB86:
	.loc 1 5504 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L2214
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L2216
.L2214:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2217
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L2216
.L2217:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L2216:
.LBE86:
.LBB87:
	.loc 1 5505 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L2219
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L2223
.L2219:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L2221
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	$1, 8(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L2223
.L2221:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L2223:
.LBE87:
.LBE85:
	.loc 1 5508 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE82:
	.size	pad_below, .-pad_below
	.section	.rodata
	.align 4
.LC3:
	.string	"`%s' might be used uninitialized in this function"
	.align 4
.LC4:
	.string	"variable `%s' might be clobbered by `longjmp' or `vfork'"
	.text
.globl uninitialized_vars_warning
	.type	uninitialized_vars_warning, @function
uninitialized_vars_warning:
.LFB83:
	.loc 1 5518 0
	pushl	%ebp
.LCFI285:
	movl	%esp, %ebp
.LCFI286:
	pushl	%ebx
.LCFI287:
	subl	$52, %esp
.LCFI288:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5520 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2225
.L2226:
	.loc 1 5522 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2227
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2227
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2227
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2227
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2227
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L2227
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	je	.L2227
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2235
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-41(%ebp)
	jmp	.L2237
.L2235:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-41(%ebp)
.L2237:
	cmpb	$0, -41(%ebp)
	je	.L2227
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2239
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2241
.L2239:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
.L2241:
	movl	-40(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L2227
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L2227
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2244
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2246
.L2244:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
.L2246:
	movl	-36(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	regno_uninitialized@PLT
	testl	%eax, %eax
	je	.L2227
	.loc 1 5540 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L2227:
	.loc 1 5542 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2248
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2248
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2251
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-29(%ebp)
	jmp	.L2253
.L2251:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-29(%ebp)
.L2253:
	cmpb	$0, -29(%ebp)
	je	.L2248
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2255
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2257
.L2255:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L2257:
	movl	-28(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L2248
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2259
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2261
.L2259:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L2261:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	regno_clobbered_at_setjmp@PLT
	testl	%eax, %eax
	je	.L2248
	.loc 1 5547 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L2248:
	.loc 1 5520 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2225:
	cmpl	$0, -12(%ebp)
	jne	.L2226
	.loc 1 5550 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2264
.L2265:
	.loc 1 5551 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	uninitialized_vars_warning@PLT
	.loc 1 5550 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2264:
	cmpl	$0, -8(%ebp)
	jne	.L2265
	.loc 1 5552 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	uninitialized_vars_warning, .-uninitialized_vars_warning
	.section	.rodata
	.align 4
.LC5:
	.string	"argument `%s' might be clobbered by `longjmp' or `vfork'"
	.text
.globl setjmp_args_warning
	.type	setjmp_args_warning, @function
setjmp_args_warning:
.LFB84:
	.loc 1 5559 0
	pushl	%ebp
.LCFI289:
	movl	%esp, %ebp
.LCFI290:
	pushl	%ebx
.LCFI291:
	subl	$36, %esp
.LCFI292:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5561 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5562 0
	jmp	.L2269
.L2270:
	.loc 1 5563 0
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2271
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-29(%ebp)
	jmp	.L2273
.L2271:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-29(%ebp)
.L2273:
	cmpb	$0, -29(%ebp)
	je	.L2274
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2276
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2278
.L2276:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L2278:
	movl	-28(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L2274
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2280
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2282
.L2280:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L2282:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	regno_clobbered_at_setjmp@PLT
	testl	%eax, %eax
	je	.L2274
	.loc 1 5566 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L2274:
	.loc 1 5562 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2269:
	cmpl	$0, -8(%ebp)
	jne	.L2270
	.loc 1 5568 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	setjmp_args_warning, .-setjmp_args_warning
.globl setjmp_protect
	.type	setjmp_protect, @function
setjmp_protect:
.LFB85:
	.loc 1 5576 0
	pushl	%ebp
.LCFI293:
	movl	%esp, %ebp
.LCFI294:
	pushl	%ebx
.LCFI295:
	subl	$52, %esp
.LCFI296:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5578 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2287
.L2288:
	.loc 1 5579 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L2289
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L2291
.L2289:
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2292
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-33(%ebp)
	jmp	.L2294
.L2292:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-33(%ebp)
.L2294:
	cmpb	$0, -33(%ebp)
	je	.L2291
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2296
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2298
.L2296:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
.L2298:
	movl	-32(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	je	.L2299
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2301
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2303
.L2301:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L2303:
	movl	-28(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L2291
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2305
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2307
.L2305:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L2307:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L2291
.L2299:
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L2308
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2291
.L2308:
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2291
	.loc 1 5599 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_var_into_stack@PLT
.L2291:
	.loc 1 5578 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2287:
	cmpl	$0, -12(%ebp)
	jne	.L2288
	.loc 1 5600 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2312
.L2313:
	.loc 1 5601 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	setjmp_protect@PLT
	.loc 1 5600 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2312:
	cmpl	$0, -8(%ebp)
	jne	.L2313
	.loc 1 5602 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	setjmp_protect, .-setjmp_protect
.globl setjmp_protect_args
	.type	setjmp_protect_args, @function
setjmp_protect_args:
.LFB86:
	.loc 1 5608 0
	pushl	%ebp
.LCFI297:
	movl	%esp, %ebp
.LCFI298:
	pushl	%ebx
.LCFI299:
	subl	$52, %esp
.LCFI300:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5610 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5611 0
	jmp	.L2317
.L2318:
	.loc 1 5612 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L2319
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L2321
.L2319:
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2322
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-33(%ebp)
	jmp	.L2324
.L2322:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	setne	-33(%ebp)
.L2324:
	cmpb	$0, -33(%ebp)
	je	.L2321
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2326
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2328
.L2326:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
.L2328:
	movl	-32(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	je	.L2329
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2331
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2333
.L2331:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L2333:
	movl	-28(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L2321
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2335
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2337
.L2335:
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L2337:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L2321
.L2329:
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2321
	.loc 1 5626 0
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_var_into_stack@PLT
.L2321:
	.loc 1 5611 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2317:
	cmpl	$0, -8(%ebp)
	jne	.L2318
	.loc 1 5627 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	setjmp_protect_args, .-setjmp_protect_args
	.section	.rodata
	.type	__FUNCTION__.20388, @object
	.size	__FUNCTION__.20388, 20
__FUNCTION__.20388:
	.string	"lookup_static_chain"
	.text
.globl lookup_static_chain
	.type	lookup_static_chain, @function
lookup_static_chain:
.LFB87:
	.loc 1 5635 0
	pushl	%ebp
.LCFI301:
	movl	%esp, %ebp
.LCFI302:
	pushl	%ebx
.LCFI303:
	subl	$36, %esp
.LCFI304:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5636 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5639 0
	cmpl	$0, -12(%ebp)
	je	.L2342
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2344
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2344
.L2342:
	.loc 1 5641 0
	movl	$0, -24(%ebp)
	jmp	.L2346
.L2344:
	.loc 1 5647 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L2347
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L2349
.L2347:
	.loc 1 5648 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2346
.L2349:
	.loc 1 5650 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	204(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2350
.L2351:
	.loc 1 5651 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2352
	.loc 1 5652 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2346
.L2352:
	.loc 1 5650 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2350:
	cmpl	$0, -8(%ebp)
	jne	.L2351
	.loc 1 5654 0
	leal	__FUNCTION__.20388@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5654, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2346:
	movl	-24(%ebp), %eax
	.loc 1 5655 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	lookup_static_chain, .-lookup_static_chain
	.section	.rodata
	.type	__FUNCTION__.20421, @object
	.size	__FUNCTION__.20421, 17
__FUNCTION__.20421:
	.string	"fix_lexical_addr"
	.text
.globl fix_lexical_addr
	.type	fix_lexical_addr, @function
fix_lexical_addr:
.LFB88:
	.loc 1 5665 0
	pushl	%ebp
.LCFI305:
	movl	%esp, %ebp
.LCFI306:
	pushl	%ebx
.LCFI307:
	subl	$68, %esp
.LCFI308:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5668 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5670 0
	movl	$0, -20(%ebp)
	.loc 1 5673 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	je	.L2357
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L2359
.L2357:
	.loc 1 5674 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L2360
.L2359:
	.loc 1 5676 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_function_data@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5678 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L2361
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2361
	.loc 1 5679 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L2361:
	.loc 1 5682 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2364
	.loc 1 5683 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L2366
.L2364:
	.loc 1 5684 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2367
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2367
	.loc 1 5685 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 5684 0
	jmp	.L2366
.L2367:
	.loc 1 5687 0
	leal	__FUNCTION__.20421@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5687, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2366:
	.loc 1 5691 0
	movl	-24(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2370
.LBB88:
	.loc 1 5705 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_arg_pointer_save_area@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5706 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fix_lexical_addr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5707 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2372
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2372
	movl	$5, -48(%ebp)
	jmp	.L2375
.L2372:
	movl	$4, -48(%ebp)
.L2375:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5709 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2376
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2376
	movl	$5, -44(%ebp)
	jmp	.L2379
.L2376:
	movl	$4, -44(%ebp)
.L2379:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5710 0
	call	get_frame_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 5711 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -20(%ebp)
	jmp	.L2380
.L2370:
.LBE88:
	.loc 1 5718 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	28(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2380
.LBB89:
	.loc 1 5724 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	204(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2382
.L2383:
	.loc 1 5725 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2384
	.loc 1 5727 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5728 0
	jmp	.L2380
.L2384:
	.loc 1 5724 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2382:
	cmpl	$0, -12(%ebp)
	jne	.L2383
.L2380:
.LBE89:
	.loc 1 5732 0
	cmpl	$0, -20(%ebp)
	jne	.L2386
	.loc 1 5733 0
	leal	__FUNCTION__.20421@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5733, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2386:
	.loc 1 5737 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -52(%ebp)
.L2360:
	movl	-52(%ebp), %eax
	.loc 1 5738 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	fix_lexical_addr, .-fix_lexical_addr
.globl trampoline_address
	.type	trampoline_address, @function
trampoline_address:
.LFB89:
	.loc 1 5747 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	pushl	%esi
.LCFI311:
	pushl	%ebx
.LCFI312:
	subl	$80, %esp
.LCFI313:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5755 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	208(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2390
.L2391:
	.loc 1 5756 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2392
	.loc 1 5757 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	adjust_trampoline_addr
	movl	%eax, -56(%ebp)
	jmp	.L2394
.L2392:
	.loc 1 5755 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2390:
	cmpl	$0, -28(%ebp)
	jne	.L2391
	.loc 1 5760 0
	movl	outer_function_chain@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2396
.L2397:
	.loc 1 5761 0
	movl	-16(%ebp), %eax
	movl	208(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2398
.L2399:
	.loc 1 5762 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2400
	.loc 1 5764 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fix_lexical_addr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5766 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_trampoline_addr
	movl	%eax, -56(%ebp)
	jmp	.L2394
.L2400:
	.loc 1 5761 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2398:
	cmpl	$0, -28(%ebp)
	jne	.L2399
	.loc 1 5760 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
.L2396:
	cmpl	$0, -16(%ebp)
	jne	.L2397
	.loc 1 5772 0
	movl	$0, -16(%ebp)
	.loc 1 5773 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5774 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L2404
	movl	inline_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L2404
	.loc 1 5776 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_function_data@PLT
	movl	%eax, -16(%ebp)
.L2404:
	.loc 1 5787 0
	cmpl	$0, -16(%ebp)
	je	.L2407
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L2409
.L2407:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L2409:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2410
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2410
	movl	$48, -48(%ebp)
	jmp	.L2413
.L2410:
	movl	$40, -48(%ebp)
.L2413:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2414
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2414
	movl	$8, -44(%ebp)
	jmp	.L2417
.L2414:
	movl	$4, -44(%ebp)
.L2417:
	movl	-48(%ebp), %eax
	addl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-52(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$52, (%esp)
	call	assign_stack_local_1
	movl	%eax, -20(%ebp)
	.loc 1 5793 0
	cmpl	$0, -16(%ebp)
	je	.L2418
	.loc 1 5795 0
	movl	$122, (%esp)
	call	make_node@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5796 0
	movl	-24(%ebp), %eax
	addl	$20, %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5797 0
	movl	-16(%ebp), %eax
	movl	208(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 208(%eax)
	jmp	.L2420
.L2418:
	.loc 1 5804 0
	movl	$122, (%esp)
	call	make_node@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5806 0
	movl	-24(%ebp), %eax
	addl	$20, %eax
	leal	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5807 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	208(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 208(%esi)
.L2420:
	.loc 1 5810 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fix_lexical_addr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5811 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_trampoline_addr
	movl	%eax, -56(%ebp)
.L2394:
	movl	-56(%ebp), %eax
	.loc 1 5812 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE89:
	.size	trampoline_address, .-trampoline_address
	.type	round_trampoline_addr, @function
round_trampoline_addr:
.LFB90:
	.loc 1 5820 0
	pushl	%ebp
.LCFI314:
	movl	%esp, %ebp
.LCFI315:
	pushl	%ebx
.LCFI316:
	subl	$84, %esp
.LCFI317:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5822 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2423
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2423
	movl	$5, -52(%ebp)
	jmp	.L2426
.L2423:
	movl	$4, -52(%ebp)
.L2426:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5823 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2427
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2427
	movl	$7, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L2430
.L2427:
	movl	$3, -48(%ebp)
	movl	$0, -44(%ebp)
.L2430:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5824 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2431
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2431
	movl	$-8, -40(%ebp)
	movl	$-1, -36(%ebp)
	jmp	.L2434
.L2431:
	movl	$-4, -40(%ebp)
	movl	$-1, -36(%ebp)
.L2434:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5826 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2435
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2435
	movl	$5, -32(%ebp)
	jmp	.L2438
.L2435:
	movl	$4, -32(%ebp)
.L2438:
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$85, 4(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5828 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2439
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2439
	movl	$5, -28(%ebp)
	jmp	.L2442
.L2439:
	movl	$4, -28(%ebp)
.L2442:
	movl	$3, 24(%esp)
	movl	$0, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$93, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5831 0
	movl	8(%ebp), %eax
	.loc 1 5832 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	round_trampoline_addr, .-round_trampoline_addr
	.type	adjust_trampoline_addr, @function
adjust_trampoline_addr:
.LFB91:
	.loc 1 5841 0
	pushl	%ebp
.LCFI318:
	movl	%esp, %ebp
.LCFI319:
	subl	$8, %esp
.LCFI320:
	.loc 1 5842 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	round_trampoline_addr
	movl	%eax, 8(%ebp)
	.loc 1 5846 0
	movl	8(%ebp), %eax
	.loc 1 5847 0
	leave
	ret
.LFE91:
	.size	adjust_trampoline_addr, .-adjust_trampoline_addr
	.section	.rodata
	.type	__FUNCTION__.20665, @object
	.size	__FUNCTION__.20665, 16
__FUNCTION__.20665:
	.string	"identify_blocks"
	.text
.globl identify_blocks
	.type	identify_blocks, @function
identify_blocks:
.LFB92:
	.loc 1 5858 0
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
	subl	$60, %esp
.LCFI326:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5862 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5864 0
	cmpl	$0, -16(%ebp)
	je	.L2449
	.loc 1 5869 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_block_vector
	movl	%eax, -28(%ebp)
	.loc 1 5870 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5872 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-28(%ebp), %esi
	movl	-28(%ebp), %edi
	addl	$4, %edi
	call	get_insns@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	identify_blocks_1
	movl	%eax, -24(%ebp)
	.loc 1 5882 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 5883 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L2449:
	.loc 1 5884 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE92:
	.size	identify_blocks, .-identify_blocks
	.section	.rodata
	.type	__FUNCTION__.20691, @object
	.size	__FUNCTION__.20691, 18
__FUNCTION__.20691:
	.string	"identify_blocks_1"
	.text
	.type	identify_blocks_1, @function
identify_blocks_1:
.LFB93:
	.loc 1 5898 0
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
	.loc 1 5900 0
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5902 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2451
.L2452:
	.loc 1 5904 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2453
	.loc 1 5906 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	jne	.L2455
.LBB90:
	.loc 1 5912 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L2457
	.loc 1 5913 0
	leal	__FUNCTION__.20691@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5913, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2457:
	.loc 1 5915 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	addl	$4, 12(%ebp)
	.loc 1 5916 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 5917 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -16(%ebp)
	jmp	.L2463
.L2455:
.LBE90:
	.loc 1 5919 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	jne	.L2463
	.loc 1 5923 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L2461
	.loc 1 5924 0
	leal	__FUNCTION__.20691@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5924, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2461:
	.loc 1 5926 0
	subl	$4, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
	jmp	.L2463
.L2453:
	.loc 1 5929 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2463
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L2463
.LBB91:
	.loc 1 5932 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5934 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	identify_blocks_1
	movl	%eax, 12(%ebp)
	.loc 1 5936 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2466
	.loc 1 5937 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	identify_blocks_1
	movl	%eax, 12(%ebp)
.L2466:
	.loc 1 5939 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2463
	.loc 1 5940 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	identify_blocks_1
	movl	%eax, 12(%ebp)
.L2463:
.LBE91:
	.loc 1 5902 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L2451:
	cmpl	$0, -20(%ebp)
	jne	.L2452
	.loc 1 5947 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L2470
	.loc 1 5948 0
	leal	__FUNCTION__.20691@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5948, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2470:
	.loc 1 5950 0
	movl	12(%ebp), %eax
	.loc 1 5951 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	identify_blocks_1, .-identify_blocks_1
	.section	.rodata
.LC6:
	.string	"block_stack"
	.text
.globl reorder_blocks
	.type	reorder_blocks, @function
reorder_blocks:
.LFB94:
	.loc 1 5961 0
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
	.loc 1 5962 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5965 0
	cmpl	$0, -8(%ebp)
	je	.L2476
	.loc 1 5968 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$10, (%esp)
	call	varray_init@PLT
	movl	%eax, -12(%ebp)
	.loc 1 5971 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_blocks_0
	.loc 1 5974 0
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 5975 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 5978 0
	call	get_insns@PLT
	movl	%eax, %edx
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reorder_blocks_1
	.loc 1 5979 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	blocks_nreverse
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5982 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_fix_fragments
.L2476:
	.loc 1 5983 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE94:
	.size	reorder_blocks, .-reorder_blocks
	.type	reorder_blocks_0, @function
reorder_blocks_0:
.LFB95:
	.loc 1 5990 0
	pushl	%ebp
.LCFI335:
	movl	%esp, %ebp
.LCFI336:
	subl	$4, %esp
.LCFI337:
	.loc 1 5991 0
	jmp	.L2478
.L2479:
	.loc 1 5993 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-65, %eax
	movb	%al, 9(%edx)
	.loc 1 5994 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	reorder_blocks_0
	.loc 1 5995 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L2478:
	.loc 1 5991 0
	cmpl	$0, 8(%ebp)
	jne	.L2479
	.loc 1 5997 0
	leave
	ret
.LFE95:
	.size	reorder_blocks_0, .-reorder_blocks_0
	.type	reorder_blocks_1, @function
reorder_blocks_1:
.LFB96:
	.loc 1 6004 0
	pushl	%ebp
.LCFI338:
	movl	%esp, %ebp
.LCFI339:
	pushl	%esi
.LCFI340:
	pushl	%ebx
.LCFI341:
	subl	$48, %esp
.LCFI342:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6007 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2483
.L2484:
	.loc 1 6009 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2485
	.loc 1 6011 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	jne	.L2487
.LBB92:
	.loc 1 6013 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6017 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2489
.LBB93:
	.loc 1 6019 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6022 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2491
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2493
.L2491:
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2493:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6025 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 6026 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 6028 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 6030 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 6031 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2489:
.LBE93:
	.loc 1 6034 0
	movl	-24(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 6035 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 6036 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 6037 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6038 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 6039 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6040 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L2494
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L2494:
	movl	16(%ebp), %eax
	movl	(%eax), %esi
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	jmp	.L2498
.L2487:
.LBE92:
	.loc 1 6042 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	jne	.L2498
	.loc 1 6044 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 6045 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 6046 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	blocks_nreverse
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 6048 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L2498
.L2485:
	.loc 1 6051 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L2498
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L2498
.LBB94:
	.loc 1 6054 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6055 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reorder_blocks_1
	.loc 1 6056 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2501
	.loc 1 6057 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reorder_blocks_1
.L2501:
	.loc 1 6058 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2498
	.loc 1 6059 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reorder_blocks_1
.L2498:
.LBE94:
	.loc 1 6007 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L2483:
	cmpl	$0, -28(%ebp)
	jne	.L2484
	.loc 1 6062 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE96:
	.size	reorder_blocks_1, .-reorder_blocks_1
	.type	reorder_fix_fragments, @function
reorder_fix_fragments:
.LFB97:
	.loc 1 6071 0
	pushl	%ebp
.LCFI343:
	movl	%esp, %ebp
.LCFI344:
	subl	$20, %esp
.LCFI345:
.LBB95:
	.loc 1 6072 0
	jmp	.L2507
.L2508:
	.loc 1 6074 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6075 0
	movl	$0, -12(%ebp)
	.loc 1 6077 0
	cmpl	$0, -16(%ebp)
	je	.L2509
	.loc 1 6079 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2516
	.loc 1 6081 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6085 0
	jmp	.L2513
.L2514:
	.loc 1 6086 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
.L2513:
	.loc 1 6085 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2514
	.loc 1 6087 0
	movl	-12(%ebp), %eax
	movl	$0, 36(%eax)
	jmp	.L2516
.L2509:
	.loc 1 6090 0
	cmpl	$0, -16(%ebp)
	jne	.L2516
	.loc 1 6091 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2516:
	.loc 1 6097 0
	cmpl	$0, -12(%ebp)
	je	.L2518
.LBB96:
	.loc 1 6099 0
	movl	-12(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -8(%ebp)
	.loc 1 6100 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 6102 0
	jmp	.L2520
.L2521:
	.loc 1 6104 0
	movl	-4(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2522
	.loc 1 6106 0
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 6107 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6108 0
	movl	-4(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -8(%ebp)
.L2522:
	.loc 1 6110 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -4(%ebp)
.L2520:
	.loc 1 6102 0
	cmpl	$0, -4(%ebp)
	jne	.L2521
	.loc 1 6112 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
.L2518:
.LBE96:
	.loc 1 6115 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	reorder_fix_fragments
	.loc 1 6116 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L2507:
.LBE95:
	.loc 1 6072 0
	cmpl	$0, 8(%ebp)
	jne	.L2508
	.loc 1 6118 0
	leave
	ret
.LFE97:
	.size	reorder_fix_fragments, .-reorder_fix_fragments
	.type	blocks_nreverse, @function
blocks_nreverse:
.LFB98:
	.loc 1 6126 0
	pushl	%ebp
.LCFI346:
	movl	%esp, %ebp
.LCFI347:
	subl	$16, %esp
.LCFI348:
	.loc 1 6127 0
	movl	$0, -12(%ebp)
	.loc 1 6128 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2528
.L2529:
	.loc 1 6130 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 6131 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6132 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6128 0
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2528:
	cmpl	$0, -8(%ebp)
	jne	.L2529
	.loc 1 6134 0
	movl	-12(%ebp), %eax
	.loc 1 6135 0
	leave
	ret
.LFE98:
	.size	blocks_nreverse, .-blocks_nreverse
	.type	all_blocks, @function
all_blocks:
.LFB99:
	.loc 1 6146 0
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	subl	$28, %esp
.LCFI351:
	.loc 1 6147 0
	movl	$0, -4(%ebp)
	.loc 1 6149 0
	jmp	.L2533
.L2534:
	.loc 1 6151 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	andl	$-65, %edx
	movb	%dl, 9(%eax)
	.loc 1 6154 0
	cmpl	$0, 12(%ebp)
	je	.L2535
	.loc 1 6155 0
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L2535:
	.loc 1 6157 0
	addl	$1, -4(%ebp)
	.loc 1 6160 0
	cmpl	$0, 12(%ebp)
	je	.L2537
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	12(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -20(%ebp)
	jmp	.L2539
.L2537:
	movl	$0, -20(%ebp)
.L2539:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	all_blocks
	addl	%eax, -4(%ebp)
	.loc 1 6162 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L2533:
	.loc 1 6149 0
	cmpl	$0, 8(%ebp)
	jne	.L2534
	.loc 1 6165 0
	movl	-4(%ebp), %eax
	.loc 1 6166 0
	leave
	ret
.LFE99:
	.size	all_blocks, .-all_blocks
	.type	get_block_vector, @function
get_block_vector:
.LFB100:
	.loc 1 6177 0
	pushl	%ebp
.LCFI352:
	movl	%esp, %ebp
.LCFI353:
	pushl	%ebx
.LCFI354:
	subl	$36, %esp
.LCFI355:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6180 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	all_blocks
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 6181 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6182 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	all_blocks
	.loc 1 6184 0
	movl	-8(%ebp), %eax
	.loc 1 6185 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	get_block_vector, .-get_block_vector
	.data
	.align 4
	.type	next_block_index, @object
	.size	next_block_index, 4
next_block_index:
	.long	2
	.text
.globl number_blocks
	.type	number_blocks, @function
number_blocks:
.LFB101:
	.loc 1 6194 0
	pushl	%ebp
.LCFI356:
	movl	%esp, %ebp
.LCFI357:
	pushl	%esi
.LCFI358:
	pushl	%ebx
.LCFI359:
	subl	$32, %esp
.LCFI360:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6207 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_block_vector
	movl	%eax, -12(%ebp)
	.loc 1 6210 0
	movl	$1, -16(%ebp)
	jmp	.L2545
.L2546:
	.loc 1 6212 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %ecx
	movl	next_block_index@GOTOFF(%ebx), %esi
	movl	%esi, %eax
	andl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	16(%ecx), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movl	%eax, 16(%ecx)
	leal	1(%esi), %eax
	movl	%eax, next_block_index@GOTOFF(%ebx)
	.loc 1 6210 0
	addl	$1, -16(%ebp)
.L2545:
	movl	-20(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L2546
	.loc 1 6214 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 6217 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE101:
	.size	number_blocks, .-number_blocks
.globl debug_find_var_in_block_tree
	.type	debug_find_var_in_block_tree, @function
debug_find_var_in_block_tree:
.LFB102:
	.loc 1 6225 0
	pushl	%ebp
.LCFI361:
	movl	%esp, %ebp
.LCFI362:
	pushl	%ebx
.LCFI363:
	subl	$28, %esp
.LCFI364:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6228 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2550
.L2551:
	.loc 1 6229 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L2552
	.loc 1 6230 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2554
.L2552:
	.loc 1 6228 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2550:
	cmpl	$0, -12(%ebp)
	jne	.L2551
	.loc 1 6232 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2556
.L2557:
.LBB97:
	.loc 1 6234 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_find_var_in_block_tree@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6235 0
	cmpl	$0, -8(%ebp)
	je	.L2558
	.loc 1 6236 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2554
.L2558:
.LBE97:
	.loc 1 6232 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2556:
	cmpl	$0, -12(%ebp)
	jne	.L2557
	.loc 1 6239 0
	movl	$0, -24(%ebp)
.L2554:
	movl	-24(%ebp), %eax
	.loc 1 6240 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	debug_find_var_in_block_tree, .-debug_find_var_in_block_tree
	.type	prepare_function_start, @function
prepare_function_start:
.LFB103:
	.loc 1 6246 0
	pushl	%ebp
.LCFI365:
	movl	%esp, %ebp
.LCFI366:
	pushl	%esi
.LCFI367:
	pushl	%ebx
.LCFI368:
	subl	$48, %esp
.LCFI369:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6247 0
	movl	$308, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	cfun@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6249 0
	call	init_stmt_for_function@PLT
	.loc 1 6250 0
	call	init_eh_for_function@PLT
	.loc 1 6252 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6255 0
	movl	caller_save_needed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6258 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 172(%eax)
	.loc 1 6260 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-2, %eax
	movb	%al, 297(%edx)
	.loc 1 6261 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-3, %eax
	movb	%al, 297(%edx)
	.loc 1 6264 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 140(%eax)
	.loc 1 6265 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 148(%eax)
	.loc 1 6268 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 136(%eax)
	.loc 1 6269 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 144(%eax)
	.loc 1 6272 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 132(%eax)
	.loc 1 6276 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$181, 220(%eax)
	.loc 1 6279 0
	call	init_emit@PLT
	.loc 1 6283 0
	call	init_expr@PLT
	.loc 1 6286 0
	movl	reg_renumber@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6288 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	init_varasm_status@PLT
	.loc 1 6291 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 248(%eax)
	.loc 1 6292 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 260(%eax)
	.loc 1 6293 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 256(%eax)
	.loc 1 6295 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2563
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2563
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2566
.L2563:
	movl	$64, -36(%ebp)
	jmp	.L2567
.L2566:
	movl	$128, -36(%ebp)
.L2567:
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 280(%eax)
	.loc 1 6296 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2568
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L2568
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L2571
.L2568:
	movl	$64, -28(%ebp)
	jmp	.L2572
.L2571:
	movl	$128, -28(%ebp)
.L2572:
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, 284(%ecx)
	.loc 1 6299 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	andl	$-17, %eax
	movb	%al, 296(%edx)
	.loc 1 6302 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	andl	$-33, %eax
	movb	%al, 296(%edx)
	.loc 1 6304 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	andl	$-65, %eax
	movb	%al, 296(%edx)
	.loc 1 6305 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-5, %eax
	movb	%al, 297(%edx)
	.loc 1 6306 0
	movl	current_function_is_leaf@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6307 0
	movl	current_function_nothrow@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6308 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6309 0
	movl	current_function_uses_only_leaf_regs@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6310 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-9, %eax
	movb	%al, 297(%edx)
	.loc 1 6311 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$-17, %eax
	movb	%al, 297(%edx)
	.loc 1 6313 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	andl	$-3, %eax
	movb	%al, 296(%edx)
	.loc 1 6314 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	andl	$-2, %eax
	movb	%al, 296(%edx)
	.loc 1 6315 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 292(%eax)
	.loc 1 6316 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	andl	$-33, %eax
	movb	%al, 298(%edx)
	.loc 1 6317 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	andl	$-65, %eax
	movb	%al, 298(%edx)
	.loc 1 6318 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 124(%eax)
	.loc 1 6321 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 180(%eax)
	.loc 1 6324 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 188(%eax)
	.loc 1 6327 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 196(%eax)
	movl	$0, 200(%eax)
	.loc 1 6330 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 168(%eax)
	.loc 1 6333 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 176(%eax)
	.loc 1 6336 0
	call	init_temp_slots@PLT
	.loc 1 6340 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 6343 0
	movl	virtuals_instantiated@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6346 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 6349 0
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6352 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	andl	$-5, %eax
	movb	%al, 298(%edx)
	.loc 1 6355 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 208(%eax)
	.loc 1 6357 0
	call	init_pending_stack_adjust@PLT
	.loc 1 6358 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 6360 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 44(%eax)
	.loc 1 6362 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	funcdef_no@GOTOFF(%ebx), %eax
	movl	%eax, 272(%edx)
	addl	$1, %eax
	movl	%eax, funcdef_no@GOTOFF(%ebx)
	.loc 1 6364 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2573
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2575
.L2573:
	movl	$1, -20(%ebp)
	jmp	.L2576
.L2575:
	movl	$0, -20(%ebp)
.L2576:
	movzbl	-20(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movl	-24(%ebp), %ecx
	movzbl	297(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movl	-24(%ebp), %edx
	movb	%al, 297(%edx)
	.loc 1 6366 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2577
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2579
.L2577:
	movl	$1, -12(%ebp)
	jmp	.L2580
.L2579:
	movl	$0, -12(%ebp)
.L2580:
	movzbl	-12(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movl	-16(%ebp), %ecx
	movzbl	297(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movl	-16(%ebp), %edx
	movb	%al, 297(%edx)
	.loc 1 6368 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 300(%eax)
	.loc 1 6370 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 304(%eax)
	.loc 1 6372 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 6373 0
	movl	init_machine_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2583
	.loc 1 6374 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	init_machine_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	call	*%eax
	movl	%eax, 276(%esi)
.L2583:
	.loc 1 6375 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE103:
	.size	prepare_function_start, .-prepare_function_start
.globl init_dummy_function_start
	.type	init_dummy_function_start, @function
init_dummy_function_start:
.LFB104:
	.loc 1 6382 0
	pushl	%ebp
.LCFI370:
	movl	%esp, %ebp
.LCFI371:
	subl	$8, %esp
.LCFI372:
	.loc 1 6383 0
	call	prepare_function_start
	.loc 1 6384 0
	leave
	ret
.LFE104:
	.size	init_dummy_function_start, .-init_dummy_function_start
	.section	.rodata
.LC7:
	.string	"function returns an aggregate"
	.text
.globl init_function_start
	.type	init_function_start, @function
init_function_start:
.LFB105:
	.loc 1 6395 0
	pushl	%ebp
.LCFI373:
	movl	%esp, %ebp
.LCFI374:
	pushl	%esi
.LCFI375:
	pushl	%ebx
.LCFI376:
	subl	$32, %esp
.LCFI377:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6396 0
	call	prepare_function_start
	.loc 1 6398 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	lang_hooks@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 20(%esi)
	.loc 1 6399 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 6403 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L2587
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2587
	movl	$1, -20(%ebp)
	jmp	.L2590
.L2587:
	movl	$0, -20(%ebp)
.L2590:
	movzbl	-20(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movl	-24(%ebp), %ecx
	movzbl	296(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movl	-24(%ebp), %edx
	movb	%al, 296(%edx)
	.loc 1 6408 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6413 0
	cmpl	$0, 16(%ebp)
	jle	.L2591
	.loc 1 6414 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_line_note@PLT
.L2591:
	.loc 1 6419 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	.loc 1 6422 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	je	.L2593
	.loc 1 6427 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	296(%edx), %eax
	orl	$1, %eax
	movb	%al, 296(%edx)
.L2593:
	.loc 1 6432 0
	movl	warn_aggregate_return@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2595
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2597
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2597
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L2597
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	je	.L2597
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L2595
.L2597:
	.loc 1 6434 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2595:
	.loc 1 6436 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2602
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2604
.L2602:
	movl	$1, -12(%ebp)
	jmp	.L2605
.L2604:
	movl	$0, -12(%ebp)
.L2605:
	movzbl	-12(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	-16(%ebp), %ecx
	movzbl	296(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movl	-16(%ebp), %edx
	movb	%al, 296(%edx)
	.loc 1 6438 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE105:
	.size	init_function_start, .-init_function_start
.globl init_function_for_compilation
	.type	init_function_for_compilation, @function
init_function_for_compilation:
.LFB106:
	.loc 1 6444 0
	pushl	%ebp
.LCFI378:
	movl	%esp, %ebp
.LCFI379:
	pushl	%ebx
.LCFI380:
	subl	$20, %esp
.LCFI381:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6445 0
	movl	reg_renumber@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6448 0
	movl	prologue@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, prologue@GOTOFF(%ebx)
	.loc 1 6449 0
	movl	epilogue@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, epilogue@GOTOFF(%ebx)
	.loc 1 6450 0
	movl	sibcall_epilogue@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, sibcall_epilogue@GOTOFF(%ebx)
	.loc 1 6451 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	init_function_for_compilation, .-init_function_for_compilation
.globl expand_main_function
	.type	expand_main_function, @function
expand_main_function:
.LFB107:
	.loc 1 6462 0
	pushl	%ebp
.LCFI382:
	movl	%esp, %ebp
.LCFI383:
	.loc 1 6503 0
	popl	%ebp
	ret
.LFE107:
	.size	expand_main_function, .-expand_main_function
.globl expand_pending_sizes
	.type	expand_pending_sizes, @function
expand_pending_sizes:
.LFB108:
	.loc 1 6514 0
	pushl	%ebp
.LCFI384:
	movl	%esp, %ebp
.LCFI385:
	pushl	%ebx
.LCFI386:
	subl	$36, %esp
.LCFI387:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6520 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L2612
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L2612
	.loc 1 6521 0
	movl	WFE_Emit_Side_Effects_Pending@GOT(%ebx), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_tree_without_duplicates@PLT
.L2612:
	.loc 1 6525 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2615
.L2616:
	.loc 1 6527 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_expr@PLT
	.loc 1 6530 0
	call	emit_queue@PLT
	.loc 1 6525 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2615:
	cmpl	$0, -8(%ebp)
	jne	.L2616
	.loc 1 6532 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE108:
	.size	expand_pending_sizes, .-expand_pending_sizes
	.section	.rodata
	.type	__FUNCTION__.21156, @object
	.size	__FUNCTION__.21156, 22
__FUNCTION__.21156:
	.string	"expand_function_start"
	.text
.globl expand_function_start
	.type	expand_function_start, @function
expand_function_start:
.LFB109:
	.loc 1 6544 0
	pushl	%ebp
.LCFI388:
	movl	%esp, %ebp
.LCFI389:
	pushl	%esi
.LCFI390:
	pushl	%ebx
.LCFI391:
	subl	$144, %esp
.LCFI392:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6546 0
	movl	$0, -32(%ebp)
	.loc 1 6550 0
	call	init_recog_no_volatile@PLT
	.loc 1 6552 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	flag_instrument_function_entry_exit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2620
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2620
	movl	$1, -112(%ebp)
	jmp	.L2623
.L2620:
	movl	$0, -112(%ebp)
.L2623:
	movzbl	-112(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	-116(%ebp), %ecx
	movzbl	297(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movl	-116(%ebp), %edx
	movb	%al, 297(%edx)
	.loc 1 6556 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	movl	profile_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2624
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2624
	movl	$1, -104(%ebp)
	jmp	.L2627
.L2624:
	movl	$0, -104(%ebp)
.L2627:
	movzbl	-104(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	-108(%ebp), %ecx
	movzbl	298(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movl	-108(%ebp), %edx
	movb	%al, 298(%edx)
	.loc 1 6560 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2628
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2628
	movl	$1, -96(%ebp)
	jmp	.L2631
.L2628:
	movl	$0, -96(%ebp)
.L2631:
	movzbl	-96(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-100(%ebp), %ecx
	movzbl	298(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-100(%ebp), %edx
	movb	%al, 298(%edx)
	.loc 1 6565 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2632
	.loc 1 6567 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2634
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2634
	movl	$5, -92(%ebp)
	jmp	.L2637
.L2634:
	movl	$4, -92(%ebp)
.L2637:
	movl	-92(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %ecx
	movl	%ecx, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2638
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2638
	movl	$5, -76(%ebp)
	jmp	.L2641
.L2638:
	movl	$4, -76(%ebp)
.L2641:
	movl	$0, 12(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6571 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2642
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2632
.L2642:
	.loc 1 6573 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2632:
	.loc 1 6579 0
	cmpl	$0, 12(%ebp)
	je	.L2644
	.loc 1 6580 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, 152(%esi)
	jmp	.L2646
.L2644:
	.loc 1 6582 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 152(%eax)
.L2646:
	.loc 1 6587 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	gen_label_rtx@PLT
	movl	%eax, 156(%esi)
	.loc 1 6594 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	aggregate_value_p@PLT
	testl	%eax, %eax
	je	.L2647
.LBB98:
	.loc 1 6597 0
	movl	$0, -28(%ebp)
	.loc 1 6611 0
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2649
	.loc 1 6613 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2651
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2651
	movl	$5, -72(%ebp)
	jmp	.L2654
.L2651:
	movl	$4, -72(%ebp)
.L2654:
	movl	-72(%ebp), %ecx
	movl	%ecx, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -28(%ebp)
	.loc 1 6614 0
	movl	struct_value_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2649:
	.loc 1 6617 0
	cmpl	$0, -28(%ebp)
	je	.L2657
.LBB99:
	.loc 1 6619 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6620 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 6621 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 88(%edx)
	jmp	.L2657
.L2647:
.LBE99:
.LBE98:
	.loc 1 6624 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	32(%eax), %eax
	testb	%al, %al
	jne	.L2658
	.loc 1 6626 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 88(%eax)
	jmp	.L2657
.L2658:
.LBB100:
	.loc 1 6637 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_function_value@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6641 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2660
	.loc 1 6642 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, 88(%esi)
	jmp	.L2662
.L2660:
	.loc 1 6643 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2663
	.loc 1 6644 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_group_rtx@PLT
	movl	%eax, 88(%esi)
	jmp	.L2662
.L2663:
	.loc 1 6646 0
	leal	__FUNCTION__.21156@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6646, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2662:
	.loc 1 6650 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movzbl	33(%edx), %eax
	orl	$4, %eax
	movb	%al, 33(%edx)
.L2657:
.LBE100:
	.loc 1 6656 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assign_parms@PLT
	.loc 1 6661 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2665
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2665
	.loc 1 6662 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2665
	.loc 1 6663 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2665:
	.loc 1 6669 0
	movl	$-87, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	.loc 1 6671 0
	call	get_last_insn@PLT
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L2669
	.loc 1 6672 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
.L2669:
	.loc 1 6673 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	get_last_insn@PLT
	movl	%eax, 212(%esi)
	.loc 1 6675 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 204(%eax)
	.loc 1 6676 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2671
	.loc 1 6679 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -36(%ebp)
	.loc 1 6683 0
	cmpl	$0, -36(%ebp)
	je	.L2706
	.loc 1 6688 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L2675
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2675
	.loc 1 6690 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
.L2675:
	.loc 1 6691 0
	movl	static_chain_incoming_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6694 0
	jmp	.L2706
.L2679:
.LBB101:
	.loc 1 6696 0
	movl	$122, (%esp)
	call	make_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6698 0
	movl	-16(%ebp), %eax
	addl	$20, %eax
	leal	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6699 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	204(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 204(%esi)
	.loc 1 6700 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -36(%ebp)
	.loc 1 6701 0
	cmpl	$0, -36(%ebp)
	je	.L2671
	.loc 1 6709 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2681
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2681
	movl	$5, -68(%ebp)
	jmp	.L2684
.L2681:
	movl	$4, -68(%ebp)
.L2684:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address@PLT
	movl	%eax, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2685
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2685
	movl	$5, -60(%ebp)
	jmp	.L2688
.L2685:
	movl	$4, -60(%ebp)
.L2688:
	movl	-64(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %ecx
	movl	%ecx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6710 0
	call	get_frame_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 6711 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_to_reg@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6715 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2678
	.loc 1 6716 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	168(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 168(%esi)
.L2678:
.L2706:
.LBE101:
	.loc 1 6694 0
	cmpl	$0, -36(%ebp)
	jne	.L2679
.L2671:
	.loc 1 6721 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2690
.LBB102:
	.loc 1 6723 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2692
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2694
.L2692:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -56(%ebp)
.L2694:
	movl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6724 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2695
	.loc 1 6725 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6728 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2697
	jmp	.L2698
.L2695:
	.loc 1 6727 0
	leal	__FUNCTION__.21156@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6727, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2698:
	.loc 1 6728 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2697
	movl	$5, -52(%ebp)
	jmp	.L2700
.L2697:
	movl	$4, -52(%ebp)
.L2700:
	movl	global_rtl@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$238, (%esp)
	call	expand_builtin_return_addr@PLT
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2701
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2701
	movl	$5, -44(%ebp)
	jmp	.L2704
.L2701:
	movl	$4, -44(%ebp)
.L2704:
	movl	libfunc_table@GOT(%ebx), %eax
	movl	380(%eax), %edx
	movl	-52(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$2, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	emit_library_call@PLT
.L2690:
.LBE102:
	.loc 1 6746 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, 184(%esi)
	.loc 1 6749 0
	call	get_pending_sizes@PLT
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, (%esp)
	call	expand_pending_sizes@PLT
	.loc 1 6752 0
	call	force_next_line_note@PLT
	.loc 1 6753 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE109:
	.size	expand_function_start, .-expand_function_start
.globl expand_dummy_function_end
	.type	expand_dummy_function_end, @function
expand_dummy_function_end:
.LFB110:
	.loc 1 6758 0
	pushl	%ebp
.LCFI393:
	movl	%esp, %ebp
.LCFI394:
	pushl	%ebx
.LCFI395:
	subl	$4, %esp
.LCFI396:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6760 0
	jmp	.L2708
.L2709:
	.loc 1 6761 0
	call	end_sequence@PLT
.L2708:
	.loc 1 6760 0
	call	in_sequence_p@PLT
	testl	%eax, %eax
	jne	.L2709
	.loc 1 6766 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_parsing@PLT
	.loc 1 6767 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_compilation@PLT
	.loc 1 6768 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6769 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	expand_dummy_function_end, .-expand_dummy_function_end
.globl diddle_return_value
	.type	diddle_return_value, @function
diddle_return_value:
.LFB111:
	.loc 1 6778 0
	pushl	%ebp
.LCFI397:
	movl	%esp, %ebp
.LCFI398:
	pushl	%ebx
.LCFI399:
	subl	$36, %esp
.LCFI400:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6779 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6781 0
	cmpl	$0, -16(%ebp)
	je	.L2723
	.loc 1 6784 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2715
	.loc 1 6785 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	call	*%eax
	jmp	.L2723
.L2715:
	.loc 1 6786 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2723
.LBB103:
	.loc 1 6790 0
	movl	$0, -12(%ebp)
	jmp	.L2718
.L2719:
.LBB104:
	.loc 1 6792 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6794 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2720
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L2720
	.loc 1 6795 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	call	*%eax
.L2720:
.LBE104:
	.loc 1 6790 0
	addl	$1, -12(%ebp)
.L2718:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L2719
.L2723:
.LBE103:
	.loc 1 6798 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE111:
	.size	diddle_return_value, .-diddle_return_value
	.type	do_clobber_return_reg, @function
do_clobber_return_reg:
.LFB112:
	.loc 1 6804 0
	pushl	%ebp
.LCFI401:
	movl	%esp, %ebp
.LCFI402:
	pushl	%ebx
.LCFI403:
	subl	$20, %esp
.LCFI404:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6805 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 6806 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE112:
	.size	do_clobber_return_reg, .-do_clobber_return_reg
.globl clobber_return_register
	.type	clobber_return_register, @function
clobber_return_register:
.LFB113:
	.loc 1 6810 0
	pushl	%ebp
.LCFI405:
	movl	%esp, %ebp
.LCFI406:
	pushl	%ebx
.LCFI407:
	subl	$36, %esp
.LCFI408:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6811 0
	movl	$0, 4(%esp)
	leal	do_clobber_return_reg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	diddle_return_value@PLT
	.loc 1 6814 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2734
.LBB105:
	.loc 1 6816 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6817 0
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2729
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2731
.L2729:
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L2731:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6818 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2734
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L2734
	.loc 1 6820 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_clobber_return_reg
.L2734:
.LBE105:
	.loc 1 6823 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE113:
	.size	clobber_return_register, .-clobber_return_register
	.type	do_use_return_reg, @function
do_use_return_reg:
.LFB114:
	.loc 1 6829 0
	pushl	%ebp
.LCFI409:
	movl	%esp, %ebp
.LCFI410:
	pushl	%ebx
.LCFI411:
	subl	$20, %esp
.LCFI412:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6830 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 6831 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	do_use_return_reg, .-do_use_return_reg
.globl use_return_register
	.type	use_return_register, @function
use_return_register:
.LFB115:
	.loc 1 6835 0
	pushl	%ebp
.LCFI413:
	movl	%esp, %ebp
.LCFI414:
	pushl	%ebx
.LCFI415:
	subl	$20, %esp
.LCFI416:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6836 0
	movl	$0, 4(%esp)
	leal	do_use_return_reg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	diddle_return_value@PLT
	.loc 1 6837 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE115:
	.size	use_return_register, .-use_return_register
	.section	.rodata
	.type	__FUNCTION__.21519, @object
	.size	__FUNCTION__.21519, 20
__FUNCTION__.21519:
	.string	"expand_function_end"
	.text
.globl expand_function_end
	.type	expand_function_end, @function
expand_function_end:
.LFB116:
	.loc 1 6852 0
	pushl	%ebp
.LCFI417:
	movl	%esp, %ebp
.LCFI418:
	subl	$96, %esp
.LCFI419:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 6861 0
	movl	immediate_size_expand@GOT(%ecx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	immediate_size_expand@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 7177 0
	leave
	ret
.LFE116:
	.size	expand_function_end, .-expand_function_end
.globl get_arg_pointer_save_area
	.type	get_arg_pointer_save_area, @function
get_arg_pointer_save_area:
.LFB117:
	.loc 1 7182 0
	pushl	%ebp
.LCFI420:
	movl	%esp, %ebp
.LCFI421:
	pushl	%esi
.LCFI422:
	pushl	%ebx
.LCFI423:
	subl	$64, %esp
.LCFI424:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7183 0
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7185 0
	cmpl	$0, -16(%ebp)
	jne	.L2742
	.loc 1 7187 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2744
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2744
	movl	$5, -44(%ebp)
	jmp	.L2747
.L2744:
	movl	$4, -44(%ebp)
.L2747:
	movl	-44(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2748
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2748
	movl	$5, -28(%ebp)
	jmp	.L2751
.L2748:
	movl	$4, -28(%ebp)
.L2751:
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	assign_stack_local_1
	movl	%eax, -16(%ebp)
	.loc 1 7188 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 188(%edx)
.L2742:
	.loc 1 7191 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L2752
	movl	8(%ebp), %eax
	movzbl	299(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2752
.LBB106:
	.loc 1 7198 0
	call	start_sequence@PLT
	.loc 1 7199 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	24(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 7200 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7201 0
	call	end_sequence@PLT
	.loc 1 7203 0
	call	push_topmost_sequence@PLT
	.loc 1 7204 0
	call	get_insns@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 7205 0
	call	pop_topmost_sequence@PLT
.L2752:
.LBE106:
	.loc 1 7208 0
	movl	-16(%ebp), %eax
	.loc 1 7209 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE117:
	.size	get_arg_pointer_save_area, .-get_arg_pointer_save_area
	.type	record_insns, @function
record_insns:
.LFB118:
	.loc 1 7218 0
	pushl	%ebp
.LCFI425:
	movl	%esp, %ebp
.LCFI426:
	pushl	%ebx
.LCFI427:
	subl	$36, %esp
.LCFI428:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7222 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7223 0
	movl	$0, -12(%ebp)
	.loc 1 7224 0
	jmp	.L2757
.L2758:
	.loc 1 7226 0
	addl	$1, -12(%ebp)
	.loc 1 7227 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2757:
	.loc 1 7224 0
	cmpl	$0, -8(%ebp)
	jne	.L2758
	.loc 1 7230 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7231 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7232 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7233 0
	jmp	.L2760
.L2761:
	.loc 1 7235 0
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 7236 0
	addl	$1, -16(%ebp)
	.loc 1 7237 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2760:
	.loc 1 7233 0
	cmpl	$0, -8(%ebp)
	jne	.L2761
	.loc 1 7239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE118:
	.size	record_insns, .-record_insns
	.type	contains, @function
contains:
.LFB119:
	.loc 1 7248 0
	pushl	%ebp
.LCFI429:
	movl	%esp, %ebp
.LCFI430:
	subl	$20, %esp
.LCFI431:
	.loc 1 7251 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L2765
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L2765
.LBB107:
	.loc 1 7254 0
	movl	$0, -4(%ebp)
	.loc 1 7255 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L2768
.L2769:
	.loc 1 7256 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L2770
.L2771:
	.loc 1 7257 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	16(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L2772
	.loc 1 7258 0
	addl	$1, -4(%ebp)
.L2772:
	.loc 1 7256 0
	subl	$1, -8(%ebp)
.L2770:
	cmpl	$0, -8(%ebp)
	jns	.L2771
	.loc 1 7255 0
	subl	$1, -12(%ebp)
.L2768:
	cmpl	$0, -12(%ebp)
	jns	.L2769
	.loc 1 7259 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2776
.L2765:
.LBE107:
	.loc 1 7263 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L2777
.L2778:
	.loc 1 7264 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	16(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L2779
	.loc 1 7265 0
	movl	$1, -20(%ebp)
	jmp	.L2776
.L2779:
	.loc 1 7263 0
	subl	$1, -8(%ebp)
.L2777:
	cmpl	$0, -8(%ebp)
	jns	.L2778
	.loc 1 7267 0
	movl	$0, -20(%ebp)
.L2776:
	movl	-20(%ebp), %eax
	.loc 1 7268 0
	leave
	ret
.LFE119:
	.size	contains, .-contains
.globl prologue_epilogue_contains
	.type	prologue_epilogue_contains, @function
prologue_epilogue_contains:
.LFB120:
	.loc 1 7273 0
	pushl	%ebp
.LCFI432:
	movl	%esp, %ebp
.LCFI433:
	pushl	%ebx
.LCFI434:
	subl	$12, %esp
.LCFI435:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7274 0
	movl	prologue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	contains
	testl	%eax, %eax
	je	.L2784
	.loc 1 7275 0
	movl	$1, -8(%ebp)
	jmp	.L2786
.L2784:
	.loc 1 7276 0
	movl	epilogue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	contains
	testl	%eax, %eax
	je	.L2787
	.loc 1 7277 0
	movl	$1, -8(%ebp)
	jmp	.L2786
.L2787:
	.loc 1 7278 0
	movl	$0, -8(%ebp)
.L2786:
	movl	-8(%ebp), %eax
	.loc 1 7279 0
	addl	$12, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE120:
	.size	prologue_epilogue_contains, .-prologue_epilogue_contains
.globl sibcall_epilogue_contains
	.type	sibcall_epilogue_contains, @function
sibcall_epilogue_contains:
.LFB121:
	.loc 1 7284 0
	pushl	%ebp
.LCFI436:
	movl	%esp, %ebp
.LCFI437:
	pushl	%ebx
.LCFI438:
	subl	$12, %esp
.LCFI439:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7285 0
	movl	sibcall_epilogue@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2791
	.loc 1 7286 0
	movl	sibcall_epilogue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	contains
	movl	%eax, -8(%ebp)
	jmp	.L2793
.L2791:
	.loc 1 7287 0
	movl	$0, -8(%ebp)
.L2793:
	movl	-8(%ebp), %eax
	.loc 1 7288 0
	addl	$12, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE121:
	.size	sibcall_epilogue_contains, .-sibcall_epilogue_contains
	.type	emit_return_into_block, @function
emit_return_into_block:
.LFB122:
	.loc 1 7298 0
	pushl	%ebp
.LCFI440:
	movl	%esp, %ebp
.LCFI441:
	pushl	%esi
.LCFI442:
	pushl	%ebx
.LCFI443:
	subl	$32, %esp
.LCFI444:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7301 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7302 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	call	gen_return@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7303 0
	cmpl	$0, 12(%ebp)
	je	.L2798
	.loc 1 7304 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_line_note_after@PLT
.L2798:
	.loc 1 7306 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE122:
	.size	emit_return_into_block, .-emit_return_into_block
	.section	.rodata
	.type	__FUNCTION__.22028, @object
	.size	__FUNCTION__.22028, 21
__FUNCTION__.22028:
	.string	"keep_stack_depressed"
	.text
	.type	keep_stack_depressed, @function
keep_stack_depressed:
.LFB123:
	.loc 1 7360 0
	pushl	%ebp
.LCFI445:
	movl	%esp, %ebp
.LCFI446:
	pushl	%edi
.LCFI447:
	pushl	%esi
.LCFI448:
	pushl	%ebx
.LCFI449:
	subl	$156, %esp
.LCFI450:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7367 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2800
	.loc 1 7368 0
	movl	8(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L2802
.L2800:
	.loc 1 7372 0
	call	start_sequence@PLT
	.loc 1 7374 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 7375 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 7376 0
	movl	$0, -68(%ebp)
	.loc 1 7378 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7379 0
	movl	$0, -44(%ebp)
	.loc 1 7380 0
	jmp	.L2894
.L2804:
	.loc 1 7382 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7384 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L2805
	.loc 1 7386 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 7387 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7388 0
	jmp	.L2803
.L2805:
	.loc 1 7394 0
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L2807
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_referenced_p@PLT
	testl	%eax, %eax
	je	.L2807
	.loc 1 7397 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_equiv_load
	.loc 1 7398 0
	movl	$0, -92(%ebp)
.L2807:
	.loc 1 7401 0
	movl	-92(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 7402 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -76(%ebp)
	movl	%edx, -72(%ebp)
	.loc 1 7406 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	je	.L2810
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2812
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L2812
.L2810:
.LBB108:
	.loc 1 7410 0
	movl	$31, 4(%esp)
	movl	$0, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7411 0
	movl	$0, -36(%ebp)
	.loc 1 7412 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 7419 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2814
	.loc 1 7421 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_equiv_load
	.loc 1 7422 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 7423 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7424 0
	jmp	.L2803
.L2814:
	.loc 1 7426 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2816
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2816
	.loc 1 7428 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2819
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2819
	movl	$5, -136(%ebp)
	jmp	.L2822
.L2819:
	movl	$4, -136(%ebp)
.L2822:
	movl	-140(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 7426 0
	jmp	.L2823
.L2816:
	.loc 1 7429 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L2824
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2824
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L2824
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2824
	.loc 1 7434 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2829
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2829
	movl	$5, -128(%ebp)
	jmp	.L2832
.L2829:
	movl	$4, -128(%ebp)
.L2832:
	movl	-132(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7435 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 7429 0
	jmp	.L2823
.L2824:
	.loc 1 7438 0
	leal	__FUNCTION__.22028@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7438, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2823:
	.loc 1 7443 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7444 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L2833
	.loc 1 7445 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, -40(%ebp)
.L2833:
	.loc 1 7449 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2835
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2835
	movl	$5, -124(%ebp)
	jmp	.L2838
.L2835:
	movl	$4, -124(%ebp)
.L2838:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7454 0
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L2839
	movl	-68(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L2839
.LBB109:
	.loc 1 7460 0
	movl	$0, -24(%ebp)
	jmp	.L2842
.L2843:
	.loc 1 7461 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2844
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2844
	movl	$5, -120(%ebp)
	jmp	.L2847
.L2844:
	movl	$4, -120(%ebp)
.L2847:
	movl	-120(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L2848
	movl	-24(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L2848
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L2895
	movl	%edx, %eax
	xorl	%edx, %edx
.L2895:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2848
	movl	-24(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L2848
	movl	-68(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2853
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2853
	movl	$5, -112(%ebp)
	jmp	.L2856
.L2853:
	movl	$4, -112(%ebp)
.L2856:
	movl	-24(%ebp), %eax
	movl	-112(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-24(%ebp), %eax
	movl	$0, 12(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	refers_to_regno_p@PLT
	testl	%eax, %eax
	je	.L2857
.L2848:
	.loc 1 7460 0
	addl	$1, -24(%ebp)
.L2842:
	cmpl	$175, -24(%ebp)
	jbe	.L2843
.L2857:
	.loc 1 7472 0
	cmpl	$176, -24(%ebp)
	jne	.L2858
	.loc 1 7473 0
	leal	__FUNCTION__.22028@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7473, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2858:
	.loc 1 7475 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L2860
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2860
	movl	$5, -108(%ebp)
	jmp	.L2863
.L2860:
	movl	$4, -108(%ebp)
.L2863:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7476 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 7477 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L2839:
.LBE109:
	.loc 1 7480 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_equiv_load
	.loc 1 7481 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_indirect_jump@PLT
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 7484 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L2864
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2866
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L2868
.L2866:
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -100(%ebp)
.L2868:
	movl	-100(%ebp), %edx
	movl	%edx, -104(%ebp)
	jmp	.L2869
.L2864:
	movl	$0, -104(%ebp)
.L2869:
	movl	-104(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7485 0
	cmpl	$0, -28(%ebp)
	jne	.L2870
	.loc 1 7486 0
	leal	__FUNCTION__.22028@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7486, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2870:
	.loc 1 7488 0
	movl	-28(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$1, %edx
	movb	%dl, 3(%eax)
	.loc 1 7406 0
	jmp	.L2872
.L2812:
.LBE108:
	.loc 1 7495 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L2873
	movl	-92(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	8(%edx), %edx
	cmpl	%edx, %eax
	je	.L2875
	movl	-92(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L2873
.L2875:
	.loc 1 7498 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 7495 0
	jmp	.L2872
.L2873:
	.loc 1 7499 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L2877
	movl	-92(%ebp), %eax
	movl	global_rtl@GOT(%ebx), %edx
	movl	8(%edx), %edx
	cmpl	%edx, %eax
	je	.L2879
	movl	-92(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	jne	.L2877
.L2879:
	.loc 1 7503 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	validate_replace_rtx@PLT
	testl	%eax, %eax
	jne	.L2881
	.loc 1 7507 0
	leal	__FUNCTION__.22028@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7507, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2881:
	.loc 1 7509 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
	.loc 1 7499 0
	jmp	.L2872
.L2877:
	.loc 1 7511 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2883
	.loc 1 7512 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	leal	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	handle_epilogue_set
	jmp	.L2872
.L2883:
	.loc 1 7513 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L2885
	.loc 1 7515 0
	movl	$0, -52(%ebp)
	jmp	.L2887
.L2888:
	.loc 1 7516 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L2889
	.loc 1 7517 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	leal	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	handle_epilogue_set
.L2889:
	.loc 1 7515 0
	addl	$1, -52(%ebp)
.L2887:
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jg	.L2888
	jmp	.L2872
.L2885:
	.loc 1 7520 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	add_insn@PLT
.L2872:
	.loc 1 7522 0
	movl	-80(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 7523 0
	movl	-76(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 7525 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L2803:
.L2894:
	.loc 1 7380 0
	cmpl	$0, -48(%ebp)
	jne	.L2804
	.loc 1 7528 0
	call	get_insns@PLT
	movl	%eax, 8(%ebp)
	.loc 1 7529 0
	call	end_sequence@PLT
	.loc 1 7530 0
	movl	8(%ebp), %edx
	movl	%edx, -144(%ebp)
.L2802:
	movl	-144(%ebp), %eax
	.loc 1 7531 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE123:
	.size	keep_stack_depressed, .-keep_stack_depressed
	.section	.rodata
	.type	__FUNCTION__.22293, @object
	.size	__FUNCTION__.22293, 20
__FUNCTION__.22293:
	.string	"handle_epilogue_set"
	.text
	.type	handle_epilogue_set, @function
handle_epilogue_set:
.LFB124:
	.loc 1 7542 0
	pushl	%ebp
.LCFI451:
	movl	%esp, %ebp
.LCFI452:
	pushl	%edi
.LCFI453:
	pushl	%esi
.LCFI454:
	pushl	%ebx
.LCFI455:
	subl	$12, %esp
.LCFI456:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7545 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L2897
	.loc 1 7547 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L2899
	.loc 1 7548 0
	leal	__FUNCTION__.22293@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7548, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2899:
	.loc 1 7550 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L2901
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L2901
	.loc 1 7553 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 7554 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 7550 0
	jmp	.L2904
.L2901:
	.loc 1 7557 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
.L2904:
	.loc 1 7560 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2905
	.loc 1 7562 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 7563 0
	movl	12(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
.L2905:
	.loc 1 7566 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2907
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2917
.L2907:
	.loc 1 7567 0
	leal	__FUNCTION__.22293@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7567, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2897:
	.loc 1 7578 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2911
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reg_set_p@PLT
	testl	%eax, %eax
	je	.L2911
	.loc 1 7580 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L2914
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2916
.L2914:
	.loc 1 7582 0
	leal	__FUNCTION__.22293@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7582, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2916:
	.loc 1 7584 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 7578 0
	jmp	.L2917
.L2911:
	.loc 1 7594 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 7597 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_replace_rtx@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 7600 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
.L2917:
	.loc 1 7602 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE124:
	.size	handle_epilogue_set, .-handle_epilogue_set
	.type	emit_equiv_load, @function
emit_equiv_load:
.LFB125:
	.loc 1 7609 0
	pushl	%ebp
.LCFI457:
	movl	%esp, %ebp
.LCFI458:
	pushl	%ebx
.LCFI459:
	subl	$20, %esp
.LCFI460:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7610 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2919
	.loc 1 7611 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
.L2919:
	.loc 1 7613 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 7614 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	emit_equiv_load, .-emit_equiv_load
	.section	.rodata
	.align 32
	.type	__FUNCTION__.22380, @object
	.size	__FUNCTION__.22380, 35
__FUNCTION__.22380:
	.string	"thread_prologue_and_epilogue_insns"
	.text
.globl thread_prologue_and_epilogue_insns
	.type	thread_prologue_and_epilogue_insns, @function
thread_prologue_and_epilogue_insns:
.LFB126:
	.loc 1 7624 0
	pushl	%ebp
.LCFI461:
	movl	%esp, %ebp
.LCFI462:
	pushl	%ebx
.LCFI463:
	subl	$84, %esp
.LCFI464:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7625 0
	movl	$0, -64(%ebp)
	.loc 1 7631 0
	movl	$0, -52(%ebp)
	.loc 1 7634 0
	movl	$0, -48(%ebp)
	.loc 1 7640 0
	call	start_sequence@PLT
	.loc 1 7641 0
	call	gen_prologue@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7642 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 7645 0
	leal	prologue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	record_insns
	.loc 1 7646 0
	movl	$-90, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -52(%ebp)
	.loc 1 7648 0
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7649 0
	call	end_sequence@PLT
	.loc 1 7654 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2923
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2925
.L2923:
	.loc 1 7655 0
	leal	__FUNCTION__.22380@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7655, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2925:
	.loc 1 7657 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
	.loc 1 7658 0
	movl	$1, -64(%ebp)
	.loc 1 7664 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2926
.L2927:
	.loc 1 7665 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L2928
	.loc 1 7664 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L2926:
	cmpl	$0, -60(%ebp)
	jne	.L2927
.L2928:
	.loc 1 7667 0
	cmpl	$0, -60(%ebp)
	je	.L2930
	.loc 1 7671 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2932
	call	mips_can_use_return_insn@PLT
	testl	%eax, %eax
	je	.L2932
.LBB110:
	.loc 1 7683 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2935
.L2936:
	.loc 1 7684 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2937
	.loc 1 7683 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L2935:
	cmpl	$0, -60(%ebp)
	jne	.L2936
.L2937:
	.loc 1 7686 0
	cmpl	$0, -60(%ebp)
	je	.L2930
	.loc 1 7688 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7691 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7692 0
	jmp	.L2940
.L2941:
	.loc 1 7694 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	jne	.L2942
	.loc 1 7696 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L2940:
	.loc 1 7692 0
	cmpl	$0, -36(%ebp)
	je	.L2942
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L2941
.L2942:
	.loc 1 7699 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L2932
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L2932
.LBB111:
	.loc 1 7701 0
	movl	$0, -32(%ebp)
	.loc 1 7705 0
	call	get_last_insn@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7706 0
	jmp	.L2947
.L2948:
	.loc 1 7708 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2949
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L2949
	.loc 1 7710 0
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7711 0
	jmp	.L2952
.L2949:
	.loc 1 7707 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
.L2947:
	.loc 1 7706 0
	cmpl	$0, -56(%ebp)
	je	.L2952
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	je	.L2948
.L2952:
	.loc 1 7714 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2954
.L2955:
.LBB112:
	.loc 1 7716 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7719 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 7720 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	je	.L2956
	.loc 1 7723 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7724 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L2956
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L2956
	.loc 1 7729 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L2960
	.loc 1 7731 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_return_into_block
	.loc 1 7732 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L2962
.L2960:
	.loc 1 7737 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	je	.L2956
	.loc 1 7739 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	je	.L2956
	.loc 1 7745 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2956
.L2962:
	.loc 1 7752 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L2956:
.LBE112:
	.loc 1 7714 0
	movl	-40(%ebp), %eax
	movl	%eax, -60(%ebp)
.L2954:
	cmpl	$0, -60(%ebp)
	jne	.L2955
	.loc 1 7758 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 7759 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_return_into_block
	.loc 1 7760 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7761 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$-2, %eax
	movl	%eax, 24(%edx)
	.loc 1 7762 0
	jmp	.L2930
.L2932:
.LBE111:
.LBE110:
	.loc 1 7774 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2966
.L2967:
	.loc 1 7775 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2968
	.loc 1 7774 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L2966:
	cmpl	$0, -60(%ebp)
	jne	.L2967
.L2968:
	.loc 1 7777 0
	cmpl	$0, -60(%ebp)
	je	.L2930
	.loc 1 7780 0
	call	start_sequence@PLT
	.loc 1 7781 0
	movl	$-89, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -48(%ebp)
	.loc 1 7783 0
	call	gen_epilogue@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7788 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2971
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2971
	.loc 1 7790 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	keep_stack_depressed
	movl	%eax, -56(%ebp)
.L2971:
	.loc 1 7793 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_jump_insn@PLT
	.loc 1 7796 0
	leal	epilogue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	record_insns
	.loc 1 7798 0
	call	get_insns@PLT
	movl	%eax, -56(%ebp)
	.loc 1 7799 0
	call	end_sequence@PLT
	.loc 1 7801 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_insn_on_edge@PLT
	.loc 1 7802 0
	movl	$1, -64(%ebp)
.L2930:
	.loc 1 7807 0
	cmpl	$0, -64(%ebp)
	je	.L2974
	.loc 1 7808 0
	call	commit_edge_insertions@PLT
.L2974:
	.loc 1 7839 0
	cmpl	$0, -52(%ebp)
	je	.L2976
.LBB113:
	.loc 1 7856 0
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2978
.L2979:
	.loc 1 7858 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7859 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2980
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L2980
	.loc 1 7864 0
	cmpl	$0, -16(%ebp)
	je	.L2983
	.loc 1 7866 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L2980:
	.loc 1 7856 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2978:
	cmpl	$0, -20(%ebp)
	jne	.L2979
.L2983:
	.loc 1 7871 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7872 0
	jmp	.L2985
.L2986:
	.loc 1 7874 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2987
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jg	.L2989
.L2987:
	.loc 1 7873 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L2985:
	.loc 1 7872 0
	movl	-20(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L2989
	cmpl	$0, -20(%ebp)
	jne	.L2986
.L2989:
	.loc 1 7879 0
	cmpl	$0, -20(%ebp)
	jne	.L2976
	.loc 1 7881 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7882 0
	jmp	.L2992
.L2993:
	.loc 1 7884 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L2994
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L2994
	.loc 1 7886 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	-20(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	emit_line_note_after@PLT
	.loc 1 7889 0
	jmp	.L2976
.L2994:
	.loc 1 7883 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L2992:
	.loc 1 7882 0
	cmpl	$0, -20(%ebp)
	jne	.L2993
.L2976:
.LBE113:
	.loc 1 7895 0
	cmpl	$0, -48(%ebp)
	je	.L3004
.LBB114:
	.loc 1 7902 0
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2999
.L3000:
	.loc 1 7904 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7905 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3001
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L3001
	.loc 1 7906 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L3001:
	.loc 1 7902 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2999:
	cmpl	$0, -12(%ebp)
	jne	.L3000
.L3004:
.LBE114:
	.loc 1 7910 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE126:
	.size	thread_prologue_and_epilogue_insns, .-thread_prologue_and_epilogue_insns
.globl reposition_prologue_and_epilogue_notes
	.type	reposition_prologue_and_epilogue_notes, @function
reposition_prologue_and_epilogue_notes:
.LFB127:
	.loc 1 7918 0
	pushl	%ebp
.LCFI465:
	movl	%esp, %ebp
.LCFI466:
	pushl	%ebx
.LCFI467:
	subl	$52, %esp
.LCFI468:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7923 0
	movl	prologue@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jle	.L3006
	.loc 1 7925 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 7930 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3008
.L3009:
	.loc 1 7932 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3010
	.loc 1 7934 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-90, %eax
	jne	.L3014
	.loc 1 7935 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3014
.L3010:
	.loc 1 7937 0
	movl	prologue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	contains
	testl	%eax, %eax
	je	.L3014
	.loc 1 7939 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7940 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3016
.L3014:
	.loc 1 7930 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L3008:
	cmpl	$0, -24(%ebp)
	jne	.L3009
.L3016:
	.loc 1 7945 0
	cmpl	$0, -20(%ebp)
	je	.L3006
.LBB115:
	.loc 1 7951 0
	cmpl	$0, -16(%ebp)
	jne	.L3018
	.loc 1 7953 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3044
.L3021:
	.loc 1 7954 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3020
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-90, %eax
	je	.L3018
.L3020:
.L3044:
	.loc 1 7953 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L3021
.L3018:
	.loc 1 7959 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7962 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L3023
	.loc 1 7963 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L3023:
	.loc 1 7964 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L3006:
.LBE115:
	.loc 1 7968 0
	movl	epilogue@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jle	.L3043
	.loc 1 7970 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 7975 0
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3027
.L3028:
	.loc 1 7977 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3029
	.loc 1 7979 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-89, %eax
	jne	.L3033
	.loc 1 7980 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3033
.L3029:
	.loc 1 7982 0
	movl	epilogue@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	contains
	testl	%eax, %eax
	je	.L3033
	.loc 1 7984 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7985 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3035
.L3033:
	.loc 1 7975 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L3027:
	cmpl	$0, -24(%ebp)
	jne	.L3028
.L3035:
	.loc 1 7990 0
	cmpl	$0, -20(%ebp)
	je	.L3043
	.loc 1 7994 0
	cmpl	$0, -16(%ebp)
	jne	.L3037
	.loc 1 7996 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L3045
.L3040:
	.loc 1 7997 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L3039
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-89, %eax
	je	.L3037
.L3039:
.L3045:
	.loc 1 7996 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L3040
.L3037:
	.loc 1 8002 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L3043
	.loc 1 8003 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L3043:
	.loc 1 8007 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE127:
	.size	reposition_prologue_and_epilogue_notes, .-reposition_prologue_and_epilogue_notes
	.section	.rodata
.LC8:
	.string	"prologue"
.LC9:
	.string	"epilogue"
.LC10:
	.string	"sibcall_epilogue"
	.text
.globl init_function_once
	.type	init_function_once, @function
init_function_once:
.LFB128:
	.loc 1 8013 0
	pushl	%ebp
.LCFI469:
	movl	%esp, %ebp
.LCFI470:
	pushl	%ebx
.LCFI471:
	subl	$20, %esp
.LCFI472:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8014 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	$0, (%esp)
	call	varray_init@PLT
	movl	%eax, prologue@GOTOFF(%ebx)
	.loc 1 8015 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	$0, (%esp)
	call	varray_init@PLT
	movl	%eax, epilogue@GOTOFF(%ebx)
	.loc 1 8016 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	$0, (%esp)
	call	varray_init@PLT
	movl	%eax, sibcall_epilogue@GOTOFF(%ebx)
	.loc 1 8017 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE128:
	.size	init_function_once, .-init_function_once
.globl gt_ggc_mx_temp_slot
	.type	gt_ggc_mx_temp_slot, @function
gt_ggc_mx_temp_slot:
.LFB129:
	.file 2 "../../../kgccfe/gnu/MIPS/gt-function.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI473:
	movl	%esp, %ebp
.LCFI474:
	pushl	%ebx
.LCFI475:
	subl	$20, %esp
.LCFI476:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L3062
	cmpl	$1, -8(%ebp)
	je	.L3062
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L3062
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3053
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_temp_slot@PLT
.L3053:
	.loc 2 31 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L3055
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L3055:
	.loc 2 32 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L3057
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L3057:
	.loc 2 33 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L3059
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L3059:
	.loc 2 34 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L3062
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L3062:
	.loc 2 36 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	gt_ggc_mx_temp_slot, .-gt_ggc_mx_temp_slot
.globl gt_ggc_r_gt_function_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_function_h, @object
	.size	gt_ggc_r_gt_function_h, 96
gt_ggc_r_gt_function_h:
	.long	initial_trampoline
	.long	1
	.long	4
	.long	gt_ggc_mx_rtx_def
	.long	outer_function_chain
	.long	1
	.long	4
	.long	gt_ggc_mx_function
	.long	sibcall_epilogue
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	epilogue
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	prologue
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	0
	.long	0
	.long	0
	.long	0
	.local	funcdef_no
	.comm	funcdef_no,4,4
	.local	prologue
	.comm	prologue,4,4
	.local	epilogue
	.comm	epilogue,4,4
	.local	sibcall_epilogue
	.comm	sibcall_epilogue,4,4
	.local	outer_function_chain
	.comm	outer_function_chain,4,4
	.local	in_arg_offset
	.comm	in_arg_offset,4,4
	.local	var_offset
	.comm	var_offset,4,4
	.local	dynamic_offset
	.comm	dynamic_offset,4,4
	.local	out_arg_offset
	.comm	out_arg_offset,4,4
	.local	cfa_offset
	.comm	cfa_offset,4,4
	.local	purge_bitfield_addressof_replacements
	.comm	purge_bitfield_addressof_replacements,4,4
	.local	purge_addressof_replacements
	.comm	purge_addressof_replacements,4,4
	.local	initial_trampoline
	.comm	initial_trampoline,4,4
	.comm	virtuals_instantiated,4,4
	.comm	trampolines_created,4,4
	.comm	inline_function_decl,4,4
	.comm	init_machine_status,4,4
	.comm	current_function_is_leaf,4,4
	.comm	current_function_nothrow,4,4
	.comm	current_function_sp_is_unchanging,4,4
	.comm	current_function_uses_only_leaf_regs,4,4
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
	.long	.LCFI29-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI33-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI39-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI43-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI44
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
	.long	.LCFI49-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
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
	.long	.LCFI53-.LFB28
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
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI57-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI63-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI69-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI73-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
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
	.long	.LCFI76-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
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
	.long	.LCFI80-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI84-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI88-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
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
	.long	.LCFI92-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
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
	.long	.LCFI95-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI103-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI107-.LFB42
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
	.long	.LCFI128-.LCFI124
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI129-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI132-.LCFI130
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
	.long	.LCFI133-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI137-.LCFI134
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI138-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI139
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
	.long	.LCFI144-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI148-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI149
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
	.long	.LCFI154-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI159-.LCFI155
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI160-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
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
	.long	.LCFI162-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI166-.LFB55
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
	.long	.LCFI174-.LCFI171
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI175-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI176-.LCFI175
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI180-.LCFI176
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI181-.LFB58
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
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI185-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI186-.LCFI185
	.byte	0xd
	.uleb128 0x5
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
	.byte	0x4
	.long	.LCFI191-.LCFI189
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
	.long	.LCFI192-.LFB61
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI196-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI198-.LFB63
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI202-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI206-.LCFI203
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI207-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI210-.LCFI208
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
	.long	.LCFI211-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI214-.LCFI212
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
	.long	.LCFI215-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI218-.LCFI216
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
	.long	.LCFI219-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI220-.LCFI219
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI220
	.byte	0x83
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
	.long	.LCFI223-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI226-.LCFI224
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
	.long	.LCFI227-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI230-.LCFI228
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
	.long	.LCFI231-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI232
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
	.long	.LCFI235-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI238-.LCFI236
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
	.long	.LCFI239-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI240
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
	.long	.LCFI243-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI245-.LFB75
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
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI249-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI253-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI256-.LCFI254
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
	.long	.LCFI257-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI258
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI263-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI266-.LCFI264
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
	.long	.LCFI267-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI272-.LCFI268
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
	.long	.LCFI273-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI278-.LCFI274
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI279-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI280-.LCFI279
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI284-.LCFI280
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
	.long	.LCFI285-.LFB83
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
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI289-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI290-.LCFI289
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI292-.LCFI290
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI293-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI294-.LCFI293
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI296-.LCFI294
	.byte	0x83
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
	.long	.LCFI297-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI298-.LCFI297
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI300-.LCFI298
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
	.long	.LCFI301-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI302-.LCFI301
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI304-.LCFI302
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
	.long	.LCFI305-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI306-.LCFI305
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI308-.LCFI306
	.byte	0x83
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
	.long	.LCFI309-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI310-.LCFI309
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI313-.LCFI310
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI314-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI315-.LCFI314
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI317-.LCFI315
	.byte	0x83
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
	.long	.LCFI318-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI319-.LCFI318
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI321-.LFB92
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
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI327-.LFB93
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
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI331-.LFB94
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
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI335-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI336-.LCFI335
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
	.long	.LCFI338-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI339-.LCFI338
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI342-.LCFI339
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI343-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI344-.LCFI343
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
	.long	.LCFI346-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI347-.LCFI346
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
	.long	.LCFI349-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
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
	.long	.LCFI352-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI353-.LCFI352
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI355-.LCFI353
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
	.long	.LCFI356-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI357-.LCFI356
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI360-.LCFI357
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI361-.LFB102
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
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.long	.LFB103
	.long	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI365-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI365
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI369-.LCFI366
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI370-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.long	.LFB105
	.long	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI373-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI374-.LCFI373
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI377-.LCFI374
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
	.long	.LCFI378-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI379-.LCFI378
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI381-.LCFI379
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
	.long	.LCFI382-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI383-.LCFI382
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
	.long	.LCFI384-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI385-.LCFI384
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI387-.LCFI385
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
	.long	.LCFI388-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI389-.LCFI388
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI392-.LCFI389
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI393-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI394-.LCFI393
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI396-.LCFI394
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
	.long	.LCFI397-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI398-.LCFI397
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI400-.LCFI398
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
	.long	.LCFI401-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI402-.LCFI401
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI404-.LCFI402
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
	.long	.LCFI405-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI406-.LCFI405
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI408-.LCFI406
	.byte	0x83
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
	.long	.LCFI409-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI410-.LCFI409
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI412-.LCFI410
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
	.long	.LCFI413-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI414-.LCFI413
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI416-.LCFI414
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
	.long	.LCFI417-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.long	.LFB117
	.long	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI420-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI421-.LCFI420
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI424-.LCFI421
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI425-.LFB118
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
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.long	.LFB119
	.long	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI429-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI430-.LCFI429
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
	.long	.LCFI432-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI433-.LCFI432
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI435-.LCFI433
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
	.long	.LCFI436-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI437-.LCFI436
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI439-.LCFI437
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
	.long	.LCFI440-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI441-.LCFI440
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI444-.LCFI441
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI445-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI450-.LCFI446
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI451-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI452-.LCFI451
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI456-.LCFI452
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE218:
.LSFDE220:
	.long	.LEFDE220-.LASFDE220
.LASFDE220:
	.long	.Lframe0
	.long	.LFB125
	.long	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI457-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI458-.LCFI457
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI460-.LCFI458
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
	.long	.LCFI461-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI462-.LCFI461
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI464-.LCFI462
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
	.long	.LCFI465-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI466-.LCFI465
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI468-.LCFI466
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
	.long	.LCFI469-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI470-.LCFI469
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI472-.LCFI470
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
	.long	.LCFI473-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI474-.LCFI473
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI476-.LCFI474
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE228:
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/function.h"
	.file 5 "../../../kgccfe/gnu/MIPS/config.h"
	.file 6 "../../../kgccfe/gnu/machmode.h"
	.file 7 "../../../kgccfe/gnu/bitmap.h"
	.file 8 "../../../kgccfe/gnu/tree.h"
	.file 9 "../../../kgccfe/gnu/hashtable.h"
	.file 10 "../../../kgccfe/gnu/location.h"
	.file 11 "../../../kgccfe/omp_types.h"
	.file 12 "../../../kgccfe/gnu/basic-block.h"
	.file 13 "../../../kgccfe/gnu/sbitmap.h"
	.file 14 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 15 "../../../include/gnu/hashtab.h"
	.file 16 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 17 "../../../kgccfe/gnu/expr.h"
	.file 18 "../../../kgccfe/gnu/varray.h"
	.file 19 "../../../kgccfe/gnu/except.h"
	.file 20 "../../../kgccfe/gnu/regs.h"
	.file 21 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 22 "../../../kgccfe/gnu/flags.h"
	.file 23 "../../../kgccfe/gnu/libfuncs.h"
	.file 24 "../../../kgccfe/gnu/langhooks.h"
	.file 25 "/usr/include/stdio.h"
	.file 26 "/usr/include/libio.h"
	.file 27 "/usr/include/bits/types.h"
	.file 28 "../../../kgccfe/gnu/ggc.h"
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI139-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI155-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI207-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI208-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI215-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI216-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI219-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI220-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI223-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI224-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI227-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI228-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI231-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI232-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI235-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI236-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI239-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI240-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI243-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI244-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI257-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI258-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI263-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI264-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI267-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI268-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI273-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI274-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI279-.Ltext0
	.long	.LCFI280-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI280-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
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
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
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
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI293-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI294-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI297-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI298-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI301-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI302-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI305-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI306-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI309-.Ltext0
	.long	.LCFI310-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI310-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
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
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI318-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI318-.Ltext0
	.long	.LCFI319-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI319-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
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
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
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
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
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
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
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
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI338-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI338-.Ltext0
	.long	.LCFI339-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI339-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
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
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI346-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI346-.Ltext0
	.long	.LCFI347-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI347-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
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
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI352-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI352-.Ltext0
	.long	.LCFI353-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI353-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI356-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI356-.Ltext0
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI357-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
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
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
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
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
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
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
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
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI378-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI378-.Ltext0
	.long	.LCFI379-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI379-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI382-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI382-.Ltext0
	.long	.LCFI383-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI383-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI384-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI384-.Ltext0
	.long	.LCFI385-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI385-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI388-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI388-.Ltext0
	.long	.LCFI389-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI389-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
	.long	.LCFI393-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI393-.Ltext0
	.long	.LCFI394-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI394-.Ltext0
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
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
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI401-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI401-.Ltext0
	.long	.LCFI402-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI402-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
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
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI409-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI409-.Ltext0
	.long	.LCFI410-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI410-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
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
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI417-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI417-.Ltext0
	.long	.LCFI418-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI418-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI420-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI420-.Ltext0
	.long	.LCFI421-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI421-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
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
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
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
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
	.long	.LCFI432-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI432-.Ltext0
	.long	.LCFI433-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI433-.Ltext0
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
	.long	.LCFI436-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI436-.Ltext0
	.long	.LCFI437-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI437-.Ltext0
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI440-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI440-.Ltext0
	.long	.LCFI441-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI441-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
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
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI451-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI451-.Ltext0
	.long	.LCFI452-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI452-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
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
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI461-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI461-.Ltext0
	.long	.LCFI462-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI462-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI465-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI465-.Ltext0
	.long	.LCFI466-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI466-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI469-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI469-.Ltext0
	.long	.LCFI470-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI470-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI473-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI473-.Ltext0
	.long	.LCFI474-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI474-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xc65d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/function.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xb45
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
	.long	0x84d
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x175e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x176e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x8
	.long	0x2cc
	.string	"tree_node"
	.byte	0x94
	.byte	0x5
	.byte	0xf
	.uleb128 0x9
	.long	.LASF2
	.byte	0x8
	.value	0x855
	.long	0x39f2
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x8
	.value	0x856
	.long	0x3d0a
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x8
	.value	0x857
	.long	0x3d52
	.uleb128 0xa
	.string	"vector"
	.byte	0x8
	.value	0x858
	.long	0x3e75
	.uleb128 0xa
	.string	"string"
	.byte	0x8
	.value	0x859
	.long	0x3db3
	.uleb128 0xa
	.string	"complex"
	.byte	0x8
	.value	0x85a
	.long	0x3e20
	.uleb128 0xa
	.string	"identifier"
	.byte	0x8
	.value	0x85b
	.long	0x3efb
	.uleb128 0x9
	.long	.LASF3
	.byte	0x8
	.value	0x85c
	.long	0x4f61
	.uleb128 0x9
	.long	.LASF4
	.byte	0x8
	.value	0x85d
	.long	0x4160
	.uleb128 0xa
	.string	"list"
	.byte	0x8
	.value	0x85e
	.long	0x3f32
	.uleb128 0xa
	.string	"vec"
	.byte	0x8
	.value	0x85f
	.long	0x3f79
	.uleb128 0xa
	.string	"exp"
	.byte	0x8
	.value	0x860
	.long	0x3fca
	.uleb128 0x9
	.long	.LASF5
	.byte	0x8
	.value	0x861
	.long	0x4016
	.uleb128 0xa
	.string	"omp"
	.byte	0x8
	.value	0x863
	.long	0x58f7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b8
	.string	"mips_args"
	.byte	0x40
	.byte	0xe
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xe
	.value	0xaad
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xe
	.value	0xab0
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xe
	.value	0xab5
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xe
	.value	0xab8
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xe
	.value	0xabb
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xe
	.value	0xac8
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xe
	.value	0xacb
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xe
	.value	0xad3
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xe
	.value	0xad4
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF6
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3cf
	.long	0x9d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF6
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xe
	.value	0xad5
	.long	0x2e6
	.uleb128 0x2
	.string	"size_t"
	.byte	0x10
	.byte	0xd6
	.long	0x3b8
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
	.byte	0x1b
	.byte	0x3b
	.long	0x454
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x1b
	.byte	0x90
	.long	0x49e
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x1b
	.byte	0x91
	.long	0x47f
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"FILE"
	.byte	0x19
	.byte	0x2e
	.long	0x4cf
	.uleb128 0x14
	.long	0x74a
	.long	.LASF7
	.byte	0x94
	.byte	0x19
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x1a
	.value	0x10c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x1a
	.value	0x111
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x1a
	.value	0x112
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x1a
	.value	0x113
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x1a
	.value	0x114
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x1a
	.value	0x115
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x1a
	.value	0x116
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x1a
	.value	0x117
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x1a
	.value	0x118
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x1a
	.value	0x11a
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x1a
	.value	0x11b
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x1a
	.value	0x11c
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x1a
	.value	0x11e
	.long	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x1a
	.value	0x120
	.long	0x7ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x1a
	.value	0x122
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x1a
	.value	0x126
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x1a
	.value	0x128
	.long	0x48f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x1a
	.value	0x12c
	.long	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x1a
	.value	0x12d
	.long	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x1a
	.value	0x12e
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x1a
	.value	0x132
	.long	0x7e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x1a
	.value	0x13b
	.long	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x1a
	.value	0x144
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x1a
	.value	0x145
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x1a
	.value	0x146
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x1a
	.value	0x147
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x1a
	.value	0x148
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x1a
	.value	0x14a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x1a
	.value	0x14c
	.long	0x7e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x750
	.uleb128 0xb
	.long	0x3fc
	.uleb128 0x3
	.byte	0x4
	.long	0x3fc
	.uleb128 0x3
	.byte	0x4
	.long	0x4bb
	.uleb128 0x3
	.byte	0x4
	.long	0x767
	.uleb128 0x15
	.long	0x773
	.byte	0x1
	.uleb128 0x16
	.long	0x4bb
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0x1a
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c4
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x1a
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x1a
	.byte	0xb7
	.long	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x1a
	.byte	0xb8
	.long	0x7ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x1a
	.byte	0xbc
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x781
	.uleb128 0x3
	.byte	0x4
	.long	0x4cf
	.uleb128 0x10
	.long	0x7e0
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x773
	.uleb128 0x10
	.long	0x7f6
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x806
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x817
	.uleb128 0x18
	.long	0x82c
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x82c
	.uleb128 0x16
	.long	0x82c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x832
	.uleb128 0x19
	.uleb128 0x3
	.byte	0x4
	.long	0x839
	.uleb128 0x15
	.long	0x845
	.byte	0x1
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x845
	.uleb128 0x1b
	.long	0xa96
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x1c
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1c
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1c
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1c
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1c
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1c
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1c
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1c
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1c
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1c
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1c
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1c
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1c
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1c
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1c
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1c
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1c
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1c
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1c
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1c
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1c
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1c
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1c
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1c
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1c
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1c
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1c
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1c
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1c
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1c
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1c
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1c
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1c
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1c
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1c
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1c
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1c
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1c
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1c
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1c
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1c
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1c
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1c
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1c
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1c
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1c
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1c
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1c
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1c
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1c
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1c
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1c
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1c
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1c
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1c
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1d
	.long	0xb45
	.long	.LASF8
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.uleb128 0x1c
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x1c
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x1c
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x1c
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x1c
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x1c
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x1c
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x1c
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x1c
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x1c
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x1b
	.long	0x1314
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x1c
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1c
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1c
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1c
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1c
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1c
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1c
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1c
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1c
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1c
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1c
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1c
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1c
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1c
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1c
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1c
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1c
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1c
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1c
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1c
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1c
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1c
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1c
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1c
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1c
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1c
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1c
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1c
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1c
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1c
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1c
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1c
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1c
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1c
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1c
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1c
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1c
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1c
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1c
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1c
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1c
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1c
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1c
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1c
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1c
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1c
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1c
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1c
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1c
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1c
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1c
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1c
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1c
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1c
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1c
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1c
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1c
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1c
	.string	"SET"
	.sleb128 57
	.uleb128 0x1c
	.string	"USE"
	.sleb128 58
	.uleb128 0x1c
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1c
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1c
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1c
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1c
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1c
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1c
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1c
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1c
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1c
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1c
	.string	"PC"
	.sleb128 69
	.uleb128 0x1c
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1c
	.string	"REG"
	.sleb128 71
	.uleb128 0x1c
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1c
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1c
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1c
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1c
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1c
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1c
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1c
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1c
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1c
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1c
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1c
	.string	"COND"
	.sleb128 83
	.uleb128 0x1c
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1c
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1c
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1c
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1c
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1c
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1c
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1c
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1c
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1c
	.string	"AND"
	.sleb128 93
	.uleb128 0x1c
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1c
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1c
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1c
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1c
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1c
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1c
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1c
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1c
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1c
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1c
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1c
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1c
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1c
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1c
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1c
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1c
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1c
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1c
	.string	"NE"
	.sleb128 112
	.uleb128 0x1c
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1c
	.string	"GE"
	.sleb128 114
	.uleb128 0x1c
	.string	"GT"
	.sleb128 115
	.uleb128 0x1c
	.string	"LE"
	.sleb128 116
	.uleb128 0x1c
	.string	"LT"
	.sleb128 117
	.uleb128 0x1c
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1c
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1c
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1c
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1c
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1c
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1c
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1c
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1c
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1c
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1c
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1c
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1c
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1c
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1c
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1c
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1c
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1c
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1c
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1c
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1c
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1c
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1c
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1c
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1c
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1c
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1c
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1c
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1c
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1c
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1c
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1c
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1c
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1c
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1c
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1c
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1c
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1c
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1c
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1c
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1c
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1c
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1c
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1c
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1c
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1c
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1e
	.long	0x13ee
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x3b8
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
	.long	0x1314
	.uleb128 0x14
	.long	0x145f
	.long	.LASF9
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.byte	0x6d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.byte	0x6e
	.long	0x1409
	.uleb128 0x8
	.long	0x153c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x21
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x454
	.uleb128 0x21
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x2df
	.uleb128 0x21
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x3b8
	.uleb128 0x21
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x2cc
	.uleb128 0x21
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9d
	.uleb128 0x21
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19c
	.uleb128 0x21
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x84d
	.uleb128 0x21
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x13ee
	.uleb128 0x21
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1550
	.uleb128 0x21
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x15b8
	.uleb128 0x21
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e4
	.uleb128 0x21
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1743
	.uleb128 0x21
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1749
	.byte	0x0
	.uleb128 0x22
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x153c
	.uleb128 0x4
	.long	0x15b8
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x65e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x65e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1556
	.uleb128 0x4
	.long	0x1743
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x6735
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x6735
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x6667
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x6667
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x6667
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x6667
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x1743
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x1743
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x69af
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x6675
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0xc
	.byte	0xe5
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15be
	.uleb128 0x3
	.byte	0x4
	.long	0x145f
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x146a
	.uleb128 0x10
	.long	0x176e
	.long	0x174f
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x177e
	.long	0x9d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x17b6
	.string	"location_s"
	.byte	0x8
	.byte	0xa
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xa
	.byte	0x1e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xa
	.byte	0x21
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xa
	.byte	0x23
	.long	0x1784
	.uleb128 0x1b
	.long	0x20ea
	.string	"tree_code"
	.byte	0x4
	.byte	0x8
	.byte	0x27
	.uleb128 0x1c
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1c
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1c
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1c
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1c
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1c
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1c
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1c
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1c
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1c
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1c
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1c
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1c
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1c
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1c
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1c
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1c
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1c
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1c
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1c
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1c
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1c
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1c
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1c
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1c
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1c
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1c
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1c
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1c
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1c
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1c
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1c
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1c
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1c
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1c
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1c
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1c
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1c
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1c
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1c
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1c
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1c
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1c
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1c
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1c
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1c
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1c
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1c
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1c
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1c
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1c
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1c
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1c
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1c
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1c
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1c
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1c
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1c
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1c
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1c
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1c
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1c
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1c
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1c
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1c
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1c
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1c
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1c
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1c
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1c
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1c
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1c
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1c
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1c
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1c
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1c
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1c
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1c
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1c
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1c
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1c
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1c
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1c
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1c
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1c
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1c
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1c
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1c
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1c
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1c
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1c
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1c
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1c
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1c
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1c
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1c
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1c
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1c
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1c
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1c
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1c
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1c
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1c
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1c
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1c
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1c
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1c
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1c
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1c
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1c
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1c
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1c
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1c
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1c
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1c
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1c
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1c
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1c
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1c
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1c
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1c
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1c
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1c
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1c
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1c
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1c
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1c
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1c
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1c
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1c
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1c
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1c
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1c
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1c
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1c
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1c
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1c
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1c
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1c
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1c
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1c
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1c
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1c
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1c
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1c
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1c
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1c
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1c
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1c
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1c
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1c
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1c
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x8
	.byte	0x31
	.long	0x3b8
	.uleb128 0x4
	.long	0x2135
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x8
	.byte	0x32
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x8
	.byte	0x32
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x8
	.byte	0x32
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x8
	.byte	0x36
	.long	0x213f
	.uleb128 0x22
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x2194
	.long	.LASF13
	.byte	0x4
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1c
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1c
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1c
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1c
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x1b
	.long	0x39f2
	.string	"built_in_function"
	.byte	0x4
	.byte	0x8
	.byte	0x69
	.uleb128 0x1c
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1c
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1c
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1c
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1c
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1c
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1c
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1c
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1c
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1c
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1c
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1c
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1c
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1c
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1c
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1c
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1c
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1c
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1c
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1c
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1c
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1c
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1c
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1c
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1c
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1c
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1c
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1c
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1c
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1c
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1c
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1c
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1c
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1c
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1c
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1c
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1c
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1c
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1c
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1c
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1c
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1c
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1c
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1c
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1c
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1c
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1c
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1c
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1c
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1c
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1c
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1c
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1c
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1c
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1c
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1c
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1c
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1c
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1c
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1c
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1c
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1c
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1c
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1c
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1c
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1c
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1c
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1c
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1c
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1c
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1c
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1c
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1c
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1c
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1c
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1c
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1c
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1c
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1c
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1c
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1c
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1c
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1c
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1c
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1c
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1c
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1c
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1c
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1c
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1c
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1c
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1c
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1c
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1c
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1c
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1c
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1c
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1c
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1c
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1c
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1c
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1c
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1c
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1c
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1c
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1c
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1c
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1c
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1c
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1c
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1c
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1c
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1c
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1c
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1c
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1c
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1c
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1c
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1c
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1c
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1c
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1c
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1c
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1c
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1c
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3cce
	.string	"tree_common"
	.byte	0x10
	.byte	0x8
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x8
	.byte	0x8f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x8
	.byte	0x90
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x8
	.byte	0x92
	.long	0x17c8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x8
	.byte	0x94
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x8
	.byte	0x95
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x8
	.byte	0x96
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x8
	.byte	0x97
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x8
	.byte	0x98
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x8
	.byte	0x99
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x8
	.byte	0x9a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_0"
	.byte	0x8
	.byte	0x9b
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x8
	.byte	0x9d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x8
	.byte	0x9e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x8
	.byte	0x9f
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x8
	.byte	0xa0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x8
	.byte	0xa1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x8
	.byte	0xa2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x8
	.byte	0xa3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x8
	.byte	0xa4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x8
	.byte	0xa6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x8
	.byte	0xa7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x8
	.byte	0xa8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x8
	.byte	0xa9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF18
	.byte	0x8
	.byte	0xaa
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF19
	.byte	0x8
	.byte	0xab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF20
	.byte	0x8
	.byte	0xac
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unused_1"
	.byte	0x8
	.byte	0xad
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x8
	.byte	0xaf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x8
	.byte	0xb0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x8
	.byte	0xb1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x8
	.byte	0xb2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x8
	.byte	0xb3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3d0a
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x8
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x8
	.value	0x2f7
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x8
	.value	0x2f8
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3d52
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x8
	.value	0x2ef
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x2f0
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x2f1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x8
	.value	0x2f9
	.long	0x3cce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3da0
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x8
	.value	0x30b
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x30c
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x8
	.value	0x30e
	.long	0x3dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x22
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3da0
	.uleb128 0xd
	.long	0x3e1a
	.string	"tree_string"
	.byte	0x20
	.byte	0x8
	.value	0x31f
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x320
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x8
	.value	0x322
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x8
	.value	0x323
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x8
	.value	0x325
	.long	0x3e1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2135
	.uleb128 0xd
	.long	0x3e75
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x8
	.value	0x32e
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x32f
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x330
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x8
	.value	0x331
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x8
	.value	0x332
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3ebd
	.string	"tree_vector"
	.byte	0x18
	.byte	0x8
	.value	0x340
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x341
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x342
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x8
	.value	0x343
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x3efb
	.long	.LASF21
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x9
	.byte	0x1c
	.long	0x74a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x9
	.byte	0x1d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x9
	.byte	0x1e
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3f32
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x8
	.value	0x35f
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x360
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x8
	.value	0x361
	.long	0x3ebd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3f79
	.string	"tree_list"
	.byte	0x18
	.byte	0x8
	.value	0x369
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x36a
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x8
	.value	0x36b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"value"
	.byte	0x8
	.value	0x36c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3fba
	.string	"tree_vec"
	.byte	0x18
	.byte	0x8
	.value	0x377
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x378
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x8
	.value	0x379
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x8
	.value	0x37a
	.long	0x3fba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x3fca
	.long	0x1e4
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x4016
	.string	"tree_exp"
	.byte	0x18
	.byte	0x8
	.value	0x3bd
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x3be
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x8
	.value	0x3bf
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x8
	.value	0x3c2
	.long	0x3fba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4106
	.string	"tree_block"
	.byte	0x2c
	.byte	0x8
	.value	0x3f3
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x3f4
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"handler_block_flag"
	.byte	0x8
	.value	0x3f6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x25
	.long	.LASF22
	.byte	0x8
	.value	0x3f7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.string	"block_num"
	.byte	0x8
	.value	0x3f8
	.long	0x3b8
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x8
	.value	0x3fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x8
	.value	0x3fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x8
	.value	0x3fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.long	.LASF23
	.byte	0x8
	.value	0x3fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x8
	.value	0x3fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x8
	.value	0x3ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x26
	.long	0x414d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x8
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x8
	.value	0x563
	.long	0x2df
	.uleb128 0xa
	.string	"pointer"
	.byte	0x8
	.value	0x564
	.long	0x4bd
	.uleb128 0xa
	.string	"die"
	.byte	0x8
	.value	0x565
	.long	0x415a
	.byte	0x0
	.uleb128 0x22
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x414d
	.uleb128 0xd
	.long	0x44aa
	.string	"tree_type"
	.byte	0x74
	.byte	0x8
	.value	0x53f
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x540
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x8
	.value	0x541
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF11
	.byte	0x8
	.value	0x542
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF24
	.byte	0x8
	.value	0x543
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF25
	.byte	0x8
	.value	0x544
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x8
	.value	0x545
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"precision"
	.byte	0x8
	.value	0x547
	.long	0x3b8
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF1
	.byte	0x8
	.value	0x548
	.long	0x84d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"string_flag"
	.byte	0x8
	.value	0x54a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_force_blk_flag"
	.byte	0x8
	.value	0x54b
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"needs_constructing_flag"
	.byte	0x8
	.value	0x54c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"transparent_union_flag"
	.byte	0x8
	.value	0x54d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"packed_flag"
	.byte	0x8
	.value	0x54e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"restrict_flag"
	.byte	0x8
	.value	0x54f
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF26
	.byte	0x8
	.value	0x550
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF14
	.byte	0x8
	.value	0x552
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF15
	.byte	0x8
	.value	0x553
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x8
	.value	0x554
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x8
	.value	0x555
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x8
	.value	0x556
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x8
	.value	0x557
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x8
	.value	0x558
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF27
	.byte	0x8
	.value	0x559
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"defer_expansion"
	.byte	0x8
	.value	0x55c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF12
	.byte	0x8
	.value	0x55f
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x8
	.value	0x560
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x8
	.value	0x561
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x8
	.value	0x566
	.long	0x4106
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x23
	.long	.LASF28
	.byte	0x8
	.value	0x568
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x8
	.value	0x569
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x8
	.value	0x56a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x8
	.value	0x56b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x8
	.value	0x56c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x8
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x23
	.long	.LASF29
	.byte	0x8
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x8
	.value	0x56f
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x23
	.long	.LASF30
	.byte	0x8
	.value	0x571
	.long	0x44b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x8
	.value	0x573
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x8
	.value	0x574
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x8
	.value	0x575
	.long	0x20fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x22
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x44aa
	.uleb128 0xd
	.long	0x44ff
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x8
	.value	0x7f0
	.uleb128 0x25
	.long	.LASF12
	.byte	0x8
	.value	0x7f1
	.long	0x3b8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"off_align"
	.byte	0x8
	.value	0x7f2
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4534
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x8
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x8
	.value	0x7ea
	.long	0x2194
	.uleb128 0xa
	.string	"i"
	.byte	0x8
	.value	0x7ed
	.long	0x454
	.uleb128 0xa
	.string	"a"
	.byte	0x8
	.value	0x7f3
	.long	0x44bc
	.byte	0x0
	.uleb128 0x26
	.long	0x4573
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x8
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x8
	.value	0x809
	.long	0x4f0d
	.uleb128 0xa
	.string	"r"
	.byte	0x8
	.value	0x80a
	.long	0x9d
	.uleb128 0xa
	.string	"t"
	.byte	0x8
	.value	0x80b
	.long	0x1e4
	.uleb128 0xa
	.string	"i"
	.byte	0x8
	.value	0x80c
	.long	0x2df
	.byte	0x0
	.uleb128 0x27
	.long	0x4f0d
	.long	.LASF31
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x4
	.byte	0xb5
	.long	0x5d9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x4
	.byte	0xb6
	.long	0x5db0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0xb7
	.long	0x5db6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x4
	.byte	0xb8
	.long	0x5dbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x4
	.byte	0xb9
	.long	0x5dd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x4
	.byte	0xbe
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x4
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x4
	.byte	0xc4
	.long	0x4f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x4
	.byte	0xc9
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x4
	.byte	0xce
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x4
	.byte	0xd3
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x4
	.byte	0xd7
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x4
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x4
	.byte	0xdf
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x4
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x1f
	.long	.LASF33
	.byte	0x4
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x4
	.byte	0xec
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x4
	.byte	0xf0
	.long	0x5def
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x4
	.byte	0xf3
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x4
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x4
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x4
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x4
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x4
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x4
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x4
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x4
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x4
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x4
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x4
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x4
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x4
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x4
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x4
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x4
	.value	0x138
	.long	0x454
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x4
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x4
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x4
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x4
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x4
	.value	0x151
	.long	0x3b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x4
	.value	0x157
	.long	0x177e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x4
	.value	0x15a
	.long	0x5ee4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x4
	.value	0x15d
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x4
	.value	0x160
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x4
	.value	0x166
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x4
	.value	0x16a
	.long	0x5aa4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x4
	.value	0x16d
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x4
	.value	0x16e
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x4
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x4
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x4
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x4
	.value	0x175
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x23
	.long	.LASF34
	.byte	0x4
	.value	0x178
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x4
	.value	0x17d
	.long	0x5efd
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x4
	.value	0x17f
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x4
	.value	0x181
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x4
	.value	0x184
	.long	0x5f17
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x4
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x24
	.string	"returns_struct"
	.byte	0x4
	.value	0x190
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pcc_struct"
	.byte	0x4
	.value	0x194
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pointer"
	.byte	0x4
	.value	0x197
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"needs_context"
	.byte	0x4
	.value	0x19a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_setjmp"
	.byte	0x4
	.value	0x19d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_longjmp"
	.byte	0x4
	.value	0x1a0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_alloca"
	.byte	0x4
	.value	0x1a4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_eh_return"
	.byte	0x4
	.value	0x1a7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_label"
	.byte	0x4
	.value	0x1ab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_goto"
	.byte	0x4
	.value	0x1af
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"contains_functions"
	.byte	0x4
	.value	0x1b2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_computed_jump"
	.byte	0x4
	.value	0x1b5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"is_thunk"
	.byte	0x4
	.value	0x1ba
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"all_throwers_are_sibcalls"
	.byte	0x4
	.value	0x1c1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"instrument_entry_exit"
	.byte	0x4
	.value	0x1c5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arc_profile"
	.byte	0x4
	.value	0x1c8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"profile"
	.byte	0x4
	.value	0x1cb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"limit_stack"
	.byte	0x4
	.value	0x1cf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"stdarg"
	.byte	0x4
	.value	0x1d2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_whole_function_mode_p"
	.byte	0x4
	.value	0x1d8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x4
	.value	0x1e1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_const_pool"
	.byte	0x4
	.value	0x1e4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_pic_offset_table"
	.byte	0x4
	.value	0x1e7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_eh_lsda"
	.byte	0x4
	.value	0x1ea
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arg_pointer_save_area_init"
	.byte	0x4
	.value	0x1ed
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.long	.LASF35
	.byte	0x4
	.value	0x1fa
	.long	0x5d26
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x4
	.value	0x1fe
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4573
	.uleb128 0x28
	.long	0x4f4b
	.byte	0x4
	.byte	0x8
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x8
	.value	0x81f
	.long	0x3e1a
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x8
	.value	0x820
	.long	0x20ea
	.uleb128 0xa
	.string	"field_id"
	.byte	0x8
	.value	0x821
	.long	0x3b8
	.byte	0x0
	.uleb128 0x28
	.long	0x4f61
	.byte	0x4
	.byte	0x8
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x8
	.value	0x824
	.long	0x3e1a
	.byte	0x0
	.uleb128 0xd
	.long	0x5694
	.string	"tree_decl"
	.byte	0x94
	.byte	0x8
	.value	0x7a0
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x7a1
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x8
	.value	0x7a2
	.long	0x17b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x8
	.value	0x7a3
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF11
	.byte	0x8
	.value	0x7a4
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x25
	.long	.LASF1
	.byte	0x8
	.value	0x7a5
	.long	0x84d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"external_flag"
	.byte	0x8
	.value	0x7a7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"nonlocal_flag"
	.byte	0x8
	.value	0x7a8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"regdecl_flag"
	.byte	0x8
	.value	0x7a9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"inline_flag"
	.byte	0x8
	.value	0x7aa
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"bit_field_flag"
	.byte	0x8
	.value	0x7ab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"virtual_flag"
	.byte	0x8
	.value	0x7ac
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"ignored_flag"
	.byte	0x8
	.value	0x7ad
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x25
	.long	.LASF22
	.byte	0x8
	.value	0x7ae
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sbuf_flag"
	.byte	0x8
	.value	0x7b2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sdram_flag"
	.byte	0x8
	.value	0x7b3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v1buf_flag"
	.byte	0x8
	.value	0x7b4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v2buf_flag"
	.byte	0x8
	.value	0x7b5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v4buf_flag"
	.byte	0x8
	.value	0x7b6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"in_system_header_flag"
	.byte	0x8
	.value	0x7ba
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"common_flag"
	.byte	0x8
	.value	0x7bb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"defer_output"
	.byte	0x8
	.value	0x7bc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"transparent_union"
	.byte	0x8
	.value	0x7bd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_ctor_flag"
	.byte	0x8
	.value	0x7be
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_dtor_flag"
	.byte	0x8
	.value	0x7bf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"artificial_flag"
	.byte	0x8
	.value	0x7c0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"weak_flag"
	.byte	0x8
	.value	0x7c1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"non_addr_const_p"
	.byte	0x8
	.value	0x7c3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"no_instrument_function_entry_exit"
	.byte	0x8
	.value	0x7c4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"comdat_flag"
	.byte	0x8
	.value	0x7c5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"malloc_flag"
	.byte	0x8
	.value	0x7c6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_limit_stack"
	.byte	0x8
	.value	0x7c7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF13
	.byte	0x8
	.value	0x7c8
	.long	0x2144
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"pure_flag"
	.byte	0x8
	.value	0x7c9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF26
	.byte	0x8
	.value	0x7cb
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"non_addressable"
	.byte	0x8
	.value	0x7cc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF27
	.byte	0x8
	.value	0x7cd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"uninlinable"
	.byte	0x8
	.value	0x7ce
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"thread_local_flag"
	.byte	0x8
	.value	0x7cf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"inlined_function_flag"
	.byte	0x8
	.value	0x7d0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"noinline_attrib"
	.byte	0x8
	.value	0x7d2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF14
	.byte	0x8
	.value	0x7d5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF15
	.byte	0x8
	.value	0x7d6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x8
	.value	0x7d7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x8
	.value	0x7d8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x8
	.value	0x7d9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x8
	.value	0x7da
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x8
	.value	0x7db
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"lang_flag_7"
	.byte	0x8
	.value	0x7dc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"syscall_linkage_flag"
	.byte	0x8
	.value	0x7df
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"widen_retval_flag"
	.byte	0x8
	.value	0x7e0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"promote_static"
	.byte	0x8
	.value	0x7e3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"always_inline_attrib"
	.byte	0x8
	.value	0x7e4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x8
	.value	0x7f4
	.long	0x44ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF24
	.byte	0x8
	.value	0x7f6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF28
	.byte	0x8
	.value	0x7f7
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x23
	.long	.LASF29
	.byte	0x8
	.value	0x7f8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x8
	.value	0x7f9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x23
	.long	.LASF36
	.byte	0x8
	.value	0x7fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x8
	.value	0x7fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x23
	.long	.LASF23
	.byte	0x8
	.value	0x7fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x8
	.value	0x7fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x8
	.value	0x7fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x23
	.long	.LASF25
	.byte	0x8
	.value	0x7ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x800
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x8
	.value	0x801
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x8
	.value	0x80d
	.long	0x4534
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x8
	.value	0x810
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x8
	.value	0x814
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x8
	.value	0x816
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x8
	.value	0x817
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x23
	.long	.LASF30
	.byte	0x8
	.value	0x819
	.long	0x56a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x24
	.string	"symtab_idx"
	.byte	0x8
	.value	0x81b
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x24
	.string	"label_defined"
	.byte	0x8
	.value	0x81c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x8
	.value	0x822
	.long	0x4f13
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x8
	.value	0x825
	.long	0x4f4b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x8
	.value	0x826
	.long	0x20fb
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x8
	.value	0x82a
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x22
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5694
	.uleb128 0x1b
	.long	0x58f7
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1e
	.uleb128 0x1c
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1c
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1c
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1c
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1c
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1c
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1c
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1c
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1c
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1c
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1c
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1c
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1c
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1c
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1c
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1c
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1c
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1c
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1c
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1c
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1c
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1c
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1c
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1c
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1c
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1c
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1c
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1c
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1c
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1c
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x5946
	.string	"tree_omp"
	.byte	0x18
	.byte	0x8
	.value	0x832
	.uleb128 0x23
	.long	.LASF2
	.byte	0x8
	.value	0x833
	.long	0x39f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x8
	.value	0x834
	.long	0x56a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x8
	.value	0x835
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x5a01
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x8
	.value	0x9db
	.uleb128 0x23
	.long	.LASF28
	.byte	0x8
	.value	0x9de
	.long	0x5a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x8
	.value	0x9e0
	.long	0x806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x8
	.value	0x9e3
	.long	0x806
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x8
	.value	0x9eb
	.long	0x5a06
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x8
	.value	0x9ee
	.long	0x5a06
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x8
	.value	0x9f3
	.long	0x5a06
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x8
	.value	0xa02
	.long	0x5a44
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2cc
	.uleb128 0xb
	.long	0x5a0b
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x18
	.long	0x5a38
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x5a38
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x5a3e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x5a0b
	.uleb128 0xb
	.long	0x5a49
	.uleb128 0x3
	.byte	0x4
	.long	0x5a14
	.uleb128 0x4
	.long	0x5aa4
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x4
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x4
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF37
	.byte	0x4
	.byte	0x19
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF38
	.byte	0x4
	.byte	0x1a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x4
	.byte	0x1b
	.long	0x5aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a4f
	.uleb128 0x14
	.long	0x5af1
	.long	.LASF40
	.byte	0x10
	.byte	0x4
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x4
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x4
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x4
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x4
	.byte	0x29
	.long	0x5af1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5aaa
	.uleb128 0x4
	.long	0x5c46
	.string	"emit_status"
	.byte	0x34
	.byte	0x4
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x4
	.byte	0x3a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x4
	.byte	0x3d
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x4
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x4
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x4
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF40
	.byte	0x4
	.byte	0x50
	.long	0x5af1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x4
	.byte	0x54
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x4
	.byte	0x58
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x4
	.byte	0x59
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x4
	.byte	0x5f
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x4
	.byte	0x65
	.long	0x755
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x4
	.byte	0x69
	.long	0x5a38
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x4
	.byte	0x70
	.long	0x177e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5d26
	.string	"expr_status"
	.byte	0x1c
	.byte	0x4
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x4
	.byte	0x80
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x4
	.byte	0x91
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x4
	.byte	0x97
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x4
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x4
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x4
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x4
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x29
	.long	0x5d90
	.long	.LASF35
	.byte	0x4
	.byte	0x4
	.value	0x1f1
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x22
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5d90
	.uleb128 0x22
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5da2
	.uleb128 0x3
	.byte	0x4
	.long	0x5c46
	.uleb128 0x3
	.byte	0x4
	.long	0x5af7
	.uleb128 0x22
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dc2
	.uleb128 0x22
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dd8
	.uleb128 0xd
	.long	0x5ee4
	.string	"temp_slot"
	.byte	0x3c
	.byte	0x4
	.value	0x15a
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.byte	0xb5
	.long	0x5ee4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"slot"
	.byte	0x1
	.byte	0xb7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"address"
	.byte	0x1
	.byte	0xba
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x1
	.byte	0xbc
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x1
	.byte	0xbe
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xc3
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"rtl_expr"
	.byte	0x1
	.byte	0xc5
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"in_use"
	.byte	0x1
	.byte	0xc7
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"addr_taken"
	.byte	0x1
	.byte	0xc9
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x7
	.string	"level"
	.byte	0x1
	.byte	0xcb
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"keep"
	.byte	0x1
	.byte	0xcd
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"base_offset"
	.byte	0x1
	.byte	0xd0
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"full_size"
	.byte	0x1
	.byte	0xd3
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5df5
	.uleb128 0x22
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5eea
	.uleb128 0x22
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f03
	.uleb128 0x14
	.long	0x5f4b
	.long	.LASF32
	.byte	0xc
	.byte	0x11
	.byte	0x4c
	.uleb128 0x7
	.string	"constant"
	.byte	0x11
	.byte	0x4d
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"var"
	.byte	0x11
	.byte	0x4e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.long	0x5f79
	.string	"direction"
	.byte	0x4
	.byte	0x11
	.byte	0x7d
	.uleb128 0x1c
	.string	"none"
	.sleb128 0
	.uleb128 0x1c
	.string	"upward"
	.sleb128 1
	.uleb128 0x1c
	.string	"downward"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x5faf
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x12
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x12
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x12
	.byte	0x36
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x614a
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x12
	.byte	0x3c
	.uleb128 0x1c
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x1c
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x1c
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x1c
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x1c
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x1c
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x1c
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x1c
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x1c
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x1c
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x1c
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x1c
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x1c
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x1c
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x1c
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x1c
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x1c
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x1c
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x1c
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x1c
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x1c
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x8
	.long	0x6246
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x12
	.byte	0x55
	.uleb128 0x21
	.string	"c"
	.byte	0x12
	.byte	0x56
	.long	0x7d0
	.uleb128 0x21
	.string	"uc"
	.byte	0x12
	.byte	0x58
	.long	0x6246
	.uleb128 0x21
	.string	"s"
	.byte	0x12
	.byte	0x5a
	.long	0x6256
	.uleb128 0x21
	.string	"us"
	.byte	0x12
	.byte	0x5c
	.long	0x6266
	.uleb128 0x21
	.string	"i"
	.byte	0x12
	.byte	0x5e
	.long	0x6276
	.uleb128 0x21
	.string	"u"
	.byte	0x12
	.byte	0x60
	.long	0x6286
	.uleb128 0x21
	.string	"l"
	.byte	0x12
	.byte	0x62
	.long	0x6296
	.uleb128 0x21
	.string	"ul"
	.byte	0x12
	.byte	0x64
	.long	0x62a6
	.uleb128 0x21
	.string	"hint"
	.byte	0x12
	.byte	0x66
	.long	0x62b6
	.uleb128 0x21
	.string	"uhint"
	.byte	0x12
	.byte	0x68
	.long	0x62c6
	.uleb128 0x21
	.string	"generic"
	.byte	0x12
	.byte	0x6a
	.long	0x62d6
	.uleb128 0x21
	.string	"cptr"
	.byte	0x12
	.byte	0x6c
	.long	0x62e6
	.uleb128 0x21
	.string	"rtx"
	.byte	0x12
	.byte	0x6e
	.long	0x62f6
	.uleb128 0x21
	.string	"rtvec"
	.byte	0x12
	.byte	0x70
	.long	0x6306
	.uleb128 0x21
	.string	"tree"
	.byte	0x12
	.byte	0x72
	.long	0x6316
	.uleb128 0x21
	.string	"bitmap"
	.byte	0x12
	.byte	0x74
	.long	0x6326
	.uleb128 0x21
	.string	"reg"
	.byte	0x12
	.byte	0x76
	.long	0x6336
	.uleb128 0x21
	.string	"const_equiv"
	.byte	0x12
	.byte	0x78
	.long	0x6432
	.uleb128 0x21
	.string	"bb"
	.byte	0x12
	.byte	0x7a
	.long	0x6442
	.uleb128 0x21
	.string	"te"
	.byte	0x12
	.byte	0x7c
	.long	0x6452
	.byte	0x0
	.uleb128 0x10
	.long	0x6256
	.long	0x3fc
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6266
	.long	0x447
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6276
	.long	0x40d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6286
	.long	0x2df
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6296
	.long	0x3b8
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62a6
	.long	0x49e
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62b6
	.long	0x423
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62c6
	.long	0x454
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62d6
	.long	0x465
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62e6
	.long	0x4bb
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x62f6
	.long	0x4bd
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6306
	.long	0xa8
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6316
	.long	0x1a9
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6326
	.long	0x1f0
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6336
	.long	0x15b8
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6346
	.long	0x642c
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x642c
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x12
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0x14
	.byte	0x31
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0x14
	.byte	0x32
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0x14
	.byte	0x33
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0x14
	.byte	0x36
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0x14
	.byte	0x39
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0x14
	.byte	0x3a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0x14
	.byte	0x3b
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0x14
	.byte	0x3c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0x14
	.byte	0x3d
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x14
	.byte	0x3e
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0x14
	.byte	0x3f
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6346
	.uleb128 0x10
	.long	0x6442
	.long	0x5f79
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6452
	.long	0x1743
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x6462
	.long	0x646d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6462
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x12
	.byte	0x7e
	.long	0x614a
	.uleb128 0x4
	.long	0x64f9
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x13
	.byte	0x23
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x12
	.byte	0x82
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x12
	.byte	0x83
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x12
	.byte	0x85
	.long	0x5faf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x12
	.byte	0x86
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x12
	.byte	0x87
	.long	0x6473
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x12
	.byte	0x8a
	.long	0x650c
	.uleb128 0x3
	.byte	0x4
	.long	0x6486
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x15
	.byte	0x29
	.long	0x465
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x15
	.byte	0x34
	.long	0x653f
	.uleb128 0x10
	.long	0x654f
	.long	0x6512
	.uleb128 0x11
	.long	0x3cf
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x423
	.uleb128 0x4
	.long	0x65b9
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x7
	.byte	0x35
	.long	0x65b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x65b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x65bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6562
	.uleb128 0x10
	.long	0x65cf
	.long	0x654f
	.uleb128 0x11
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x6562
	.uleb128 0x3
	.byte	0x4
	.long	0x65cf
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x15b8
	.uleb128 0x4
	.long	0x6652
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF11
	.byte	0xd
	.byte	0x22
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x62c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x6661
	.uleb128 0x3
	.byte	0x4
	.long	0x65f9
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x65eb
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x454
	.uleb128 0x4
	.long	0x672f
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x672f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x672f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x1743
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x1743
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF44
	.byte	0xc
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0xc
	.byte	0x85
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xc
	.byte	0x86
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x6675
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6686
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x672f
	.uleb128 0x4
	.long	0x69af
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x69b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x69b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x69b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x69c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0xc
	.value	0x18b
	.long	0x69b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF41
	.byte	0xc
	.value	0x18f
	.long	0x69b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x6652
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x69c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x69c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x6652
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x69c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x69af
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x69af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x23
	.long	.LASF39
	.byte	0xc
	.value	0x1b7
	.long	0x69af
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6741
	.uleb128 0x20
	.long	.LASF43
	.byte	0xc
	.byte	0xe6
	.long	0x1743
	.uleb128 0x3
	.byte	0x4
	.long	0x6735
	.uleb128 0x3
	.byte	0x4
	.long	0x69af
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0xf
	.byte	0x32
	.long	0x3b8
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0xf
	.byte	0x37
	.long	0x69ee
	.uleb128 0x3
	.byte	0x4
	.long	0x69f4
	.uleb128 0x18
	.long	0x6a04
	.byte	0x1
	.long	0x69cc
	.uleb128 0x16
	.long	0x82c
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0xf
	.byte	0x3e
	.long	0x811
	.uleb128 0x2
	.string	"htab_del"
	.byte	0xf
	.byte	0x42
	.long	0x761
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0xf
	.byte	0x4e
	.long	0x6a35
	.uleb128 0x3
	.byte	0x4
	.long	0x6a3b
	.uleb128 0x18
	.long	0x6a50
	.byte	0x1
	.long	0x4bb
	.uleb128 0x16
	.long	0x3ee
	.uleb128 0x16
	.long	0x3ee
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0xf
	.byte	0x51
	.long	0x761
	.uleb128 0x4
	.long	0x6b33
	.string	"htab"
	.byte	0x2c
	.byte	0xf
	.byte	0x59
	.uleb128 0x7
	.string	"hash_f"
	.byte	0xf
	.byte	0x5b
	.long	0x69dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"eq_f"
	.byte	0xf
	.byte	0x5e
	.long	0x6a04
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"del_f"
	.byte	0xf
	.byte	0x61
	.long	0x6a13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"entries"
	.byte	0xf
	.byte	0x64
	.long	0x75b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF11
	.byte	0xf
	.byte	0x67
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_elements"
	.byte	0xf
	.byte	0x6a
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"n_deleted"
	.byte	0xf
	.byte	0x6d
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"searches"
	.byte	0xf
	.byte	0x71
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"collisions"
	.byte	0xf
	.byte	0x75
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"alloc_f"
	.byte	0xf
	.byte	0x78
	.long	0x6a23
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"free_f"
	.byte	0xf
	.byte	0x79
	.long	0x6a50
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0xf
	.byte	0x7c
	.long	0x6b41
	.uleb128 0x3
	.byte	0x4
	.long	0x6a61
	.uleb128 0x4
	.long	0x6b99
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x1c
	.byte	0x34
	.uleb128 0x7
	.string	"base"
	.byte	0x1c
	.byte	0x35
	.long	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x1c
	.byte	0x36
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x1c
	.byte	0x37
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x1c
	.byte	0x38
	.long	0x761
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x18
	.byte	0x1d
	.long	0x6bb5
	.uleb128 0x3
	.byte	0x4
	.long	0x6bbb
	.uleb128 0x15
	.long	0x6bd1
	.byte	0x1
	.uleb128 0x16
	.long	0x6bd1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c3
	.uleb128 0x4
	.long	0x6d5d
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x18
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x18
	.byte	0x24
	.long	0x6da7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x18
	.byte	0x29
	.long	0x6dbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x18
	.byte	0x2a
	.long	0x6dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x18
	.byte	0x2b
	.long	0x6dee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x18
	.byte	0x2d
	.long	0x6dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x18
	.byte	0x2e
	.long	0x6e09
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x18
	.byte	0x2f
	.long	0x6e38
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x18
	.byte	0x34
	.long	0x6dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x18
	.byte	0x35
	.long	0x6e4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x18
	.byte	0x36
	.long	0x6dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x18
	.byte	0x37
	.long	0x6e60
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x18
	.byte	0x38
	.long	0x6e80
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x18
	.long	0x6d81
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x6d81
	.uleb128 0x16
	.long	0x80b
	.uleb128 0x16
	.long	0x6d87
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x4bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x6d8d
	.uleb128 0x18
	.long	0x6da7
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x6d81
	.uleb128 0x16
	.long	0x80b
	.uleb128 0x16
	.long	0x4bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6d5d
	.uleb128 0x18
	.long	0x6dbd
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x6d81
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6dad
	.uleb128 0x18
	.long	0x6dd3
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6dc3
	.uleb128 0x18
	.long	0x6dee
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6dd9
	.uleb128 0x18
	.long	0x6e09
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6df4
	.uleb128 0x18
	.long	0x6e38
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x80b
	.uleb128 0x16
	.long	0x4bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e0f
	.uleb128 0x18
	.long	0x6e4e
	.byte	0x1
	.long	0x5a0b
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e3e
	.uleb128 0x15
	.long	0x6e60
	.byte	0x1
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e54
	.uleb128 0x18
	.long	0x6e80
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e66
	.uleb128 0x4
	.long	0x6ef5
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x18
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x18
	.byte	0x42
	.long	0x6f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x18
	.byte	0x45
	.long	0x6f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x18
	.byte	0x48
	.long	0x6f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x18
	.byte	0x4b
	.long	0x6f01
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x6f01
	.byte	0x1
	.uleb128 0x16
	.long	0x4f0d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ef5
	.uleb128 0x4
	.long	0x6f52
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x18
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x18
	.byte	0x54
	.long	0x6f67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x18
	.byte	0x57
	.long	0x6f7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x6f67
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x4bb
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f52
	.uleb128 0x18
	.long	0x6f7d
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f6d
	.uleb128 0x4
	.long	0x7070
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x18
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x18
	.byte	0x60
	.long	0x7080
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x18
	.byte	0x64
	.long	0x709b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x18
	.byte	0x68
	.long	0x70b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x18
	.byte	0x6c
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x18
	.byte	0x70
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x18
	.byte	0x74
	.long	0x70e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x18
	.byte	0x7a
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x18
	.byte	0x80
	.long	0x70fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x7080
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x17c8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7070
	.uleb128 0x18
	.long	0x709b
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x84d
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7086
	.uleb128 0x18
	.long	0x70b6
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70a1
	.uleb128 0x18
	.long	0x70cc
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70bc
	.uleb128 0x18
	.long	0x70e7
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70d2
	.uleb128 0x15
	.long	0x70fe
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70ed
	.uleb128 0x4
	.long	0x720a
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x18
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x18
	.byte	0x89
	.long	0x833
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x18
	.byte	0x90
	.long	0x7224
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x18
	.byte	0x94
	.long	0x7230
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x18
	.byte	0x99
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x18
	.byte	0x9c
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x18
	.byte	0xa2
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x18
	.byte	0xa5
	.long	0x724e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x18
	.byte	0xa9
	.long	0x7264
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x18
	.byte	0xad
	.long	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x18
	.byte	0xb0
	.long	0x7264
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x18
	.long	0x7224
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x720a
	.uleb128 0x2a
	.byte	0x1
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x722a
	.uleb128 0x15
	.long	0x7242
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7236
	.uleb128 0x2a
	.byte	0x1
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x7248
	.uleb128 0x18
	.long	0x7264
	.byte	0x1
	.long	0x5a0b
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7254
	.uleb128 0x27
	.long	0x769b
	.long	.LASF45
	.value	0x120
	.byte	0x18
	.byte	0xb6
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x18
	.byte	0xb8
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x18
	.byte	0xbc
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x18
	.byte	0xc0
	.long	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x18
	.byte	0xca
	.long	0x76b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x18
	.byte	0xd6
	.long	0x76c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x18
	.byte	0xde
	.long	0x76d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x18
	.byte	0xe1
	.long	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x18
	.byte	0xe5
	.long	0x833
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x18
	.byte	0xe8
	.long	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x18
	.byte	0xec
	.long	0x76ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x18
	.byte	0xf1
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x18
	.byte	0xf5
	.long	0x7713
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x18
	.value	0x102
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x18
	.value	0x106
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x18
	.value	0x10f
	.long	0x772e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x18
	.value	0x113
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x18
	.value	0x118
	.long	0x6f7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x18
	.value	0x11d
	.long	0x7264
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x18
	.value	0x120
	.long	0x6f7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x18
	.value	0x124
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x18
	.value	0x129
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x18
	.value	0x12d
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x18
	.value	0x134
	.long	0x7242
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x18
	.value	0x138
	.long	0x76c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x18
	.value	0x13b
	.long	0x5a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x18
	.value	0x13f
	.long	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x18
	.value	0x143
	.long	0x6b99
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x18
	.value	0x147
	.long	0x6b99
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x18
	.value	0x148
	.long	0x6b99
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x18
	.value	0x149
	.long	0x6b99
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x18
	.value	0x151
	.long	0x7749
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x18
	.value	0x154
	.long	0x777b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x18
	.value	0x15b
	.long	0x70cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"attribute_table"
	.byte	0x18
	.value	0x162
	.long	0x7781
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x18
	.value	0x163
	.long	0x7781
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x18
	.value	0x164
	.long	0x7781
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.long	.LASF31
	.byte	0x18
	.value	0x167
	.long	0x6e86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x18
	.value	0x169
	.long	0x6bd7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x18
	.value	0x16b
	.long	0x6f07
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x18
	.value	0x16d
	.long	0x7104
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x18
	.value	0x16f
	.long	0x6f83
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x18
	.long	0x76b0
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x76b0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4bd
	.uleb128 0x3
	.byte	0x4
	.long	0x769b
	.uleb128 0x2a
	.byte	0x1
	.long	0x5a0b
	.uleb128 0x3
	.byte	0x4
	.long	0x76bc
	.uleb128 0x18
	.long	0x76d8
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76c8
	.uleb128 0x18
	.long	0x76ee
	.byte	0x1
	.long	0x454
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76de
	.uleb128 0x18
	.long	0x7713
	.byte	0x1
	.long	0x9d
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x9d
	.uleb128 0x16
	.long	0x84d
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76f4
	.uleb128 0x18
	.long	0x772e
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9d
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7719
	.uleb128 0x18
	.long	0x7749
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7734
	.uleb128 0x15
	.long	0x7760
	.byte	0x1
	.uleb128 0x16
	.long	0x7760
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7766
	.uleb128 0x22
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x774f
	.uleb128 0x3
	.byte	0x4
	.long	0x7787
	.uleb128 0xb
	.long	0x5946
	.uleb128 0x4
	.long	0x77d1
	.string	"fixup_replacement"
	.byte	0xc
	.byte	0x1
	.byte	0xdc
	.uleb128 0x7
	.string	"old"
	.byte	0x1
	.byte	0xdd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"new"
	.byte	0x1
	.byte	0xde
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.byte	0xdf
	.long	0x77d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x778c
	.uleb128 0x4
	.long	0x7810
	.string	"insns_for_mem_entry"
	.byte	0x8
	.byte	0x1
	.byte	0xe3
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x1
	.byte	0xe7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2b
	.long	0x786a
	.byte	0x1
	.string	"find_function_data"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0x4f0d
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0x13c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x13e
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbc41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14105
	.byte	0x0
	.uleb128 0x2f
	.long	0x78d6
	.byte	0x1
	.string	"push_function_context_to"
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x14f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x151
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"containing"
	.byte	0x1
	.value	0x159
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"push_function_context"
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2f
	.long	0x7976
	.byte	0x1
	.string	"pop_function_context_from"
	.byte	0x1
	.value	0x177
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x176
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x178
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"queue"
	.byte	0x1
	.value	0x179
	.long	0x5aa4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.string	"list"
	.byte	0x1
	.value	0x192
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"pop_function_context"
	.byte	0x1
	.value	0x1a7
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2f
	.long	0x79d4
	.byte	0x1
	.string	"free_after_parsing"
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1b1
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7a0f
	.byte	0x1
	.string	"free_after_compilation"
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1c2
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7a4b
	.byte	0x1
	.string	"get_func_frame_size"
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x454
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1f2
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.string	"get_frame_size"
	.byte	0x1
	.value	0x200
	.byte	0x1
	.long	0x454
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x34
	.long	0x7b83
	.string	"assign_stack_local_1"
	.byte	0x1
	.value	0x216
	.byte	0x1
	.long	0x9d
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x212
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x213
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x214
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x215
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x217
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x217
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"bigend_correction"
	.byte	0x1
	.value	0x218
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x219
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"frame_off"
	.byte	0x1
	.value	0x21a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"frame_alignment"
	.byte	0x1
	.value	0x21a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"frame_phase"
	.byte	0x1
	.value	0x21a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x21e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x7bde
	.byte	0x1
	.string	"assign_stack_local"
	.byte	0x1
	.value	0x274
	.byte	0x1
	.long	0x9d
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x271
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x272
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.value	0x273
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2b
	.long	0x7cff
	.byte	0x1
	.string	"assign_stack_temp_for_type"
	.byte	0x1
	.value	0x28f
	.byte	0x1
	.long	0x9d
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x28b
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x28c
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"keep"
	.byte	0x1
	.value	0x28d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x28e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x290
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x291
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"best_p"
	.byte	0x1
	.value	0x291
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0x292
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x7cc4
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.value	0x2be
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"rounded_size"
	.byte	0x1
	.value	0x2bf
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x36
	.long	0x7cee
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2d
	.string	"frame_offset_old"
	.byte	0x1
	.value	0x2e0
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbc2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14378
	.byte	0x0
	.uleb128 0x2b
	.long	0x7d5a
	.byte	0x1
	.string	"assign_stack_temp"
	.byte	0x1
	.value	0x343
	.byte	0x1
	.long	0x9d
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.value	0x340
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x341
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"keep"
	.byte	0x1
	.value	0x342
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2b
	.long	0x7e40
	.byte	0x1
	.string	"assign_temp"
	.byte	0x1
	.value	0x357
	.byte	0x1
	.long	0x9d
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.string	"type_or_decl"
	.byte	0x1
	.value	0x353
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"keep"
	.byte	0x1
	.value	0x354
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"memory_required"
	.byte	0x1
	.value	0x355
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"dont_promote"
	.byte	0x1
	.value	0x356
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x359
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF38
	.byte	0x1
	.value	0x35b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x36a
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x36b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ef9
	.byte	0x1
	.string	"combine_temp_slots"
	.byte	0x1
	.value	0x39a
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x39b
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x39b
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"prev_p"
	.byte	0x1
	.value	0x39c
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"prev_q"
	.byte	0x1
	.value	0x39c
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"num_slots"
	.byte	0x1
	.value	0x39d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2d
	.string	"delete_p"
	.byte	0x1
	.value	0x3ad
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2d
	.string	"delete_q"
	.byte	0x1
	.value	0x3b2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x7f58
	.string	"find_temp_slot_from_address"
	.byte	0x1
	.value	0x3dd
	.byte	0x1
	.long	0x5ee4
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x3dc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x3de
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x3df
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	0x7fb3
	.byte	0x1
	.string	"update_temp_slot_address"
	.byte	0x1
	.value	0x407
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.string	"old"
	.byte	0x1
	.value	0x406
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"new"
	.byte	0x1
	.value	0x406
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x408
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x7ff9
	.byte	0x1
	.string	"mark_temp_addr_taken"
	.byte	0x1
	.value	0x440
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x43f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x441
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x8055
	.byte	0x1
	.string	"preserve_temp_slots"
	.byte	0x1
	.value	0x45c
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x45b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x45d
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x485
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x809f
	.byte	0x1
	.string	"preserve_rtl_expr_result"
	.byte	0x1
	.value	0x4a1
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x4a0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x4a2
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x80d3
	.byte	0x1
	.string	"free_temp_slots"
	.byte	0x1
	.value	0x4be
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x4bf
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x811c
	.byte	0x1
	.string	"free_temps_for_rtl_expr"
	.byte	0x1
	.value	0x4ce
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x4cd
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x4cf
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x8154
	.byte	0x1
	.string	"mark_all_temps_used"
	.byte	0x1
	.value	0x4e6
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x4e7
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"push_temp_slots"
	.byte	0x1
	.value	0x4f4
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.long	0x81a9
	.byte	0x1
	.string	"pop_temp_slots"
	.byte	0x1
	.value	0x525
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x526
	.long	0x5ee4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"init_temp_slots"
	.byte	0x1
	.value	0x535
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2f
	.long	0x82fc
	.byte	0x1
	.string	"put_var_into_stack"
	.byte	0x1
	.value	0x547
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0x545
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"rescan"
	.byte	0x1
	.value	0x546
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x548
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF37
	.byte	0x1
	.value	0x549
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x549
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x54a
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x54b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"can_use_addressof"
	.byte	0x1
	.value	0x54c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"volatilep"
	.byte	0x1
	.value	0x54d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"usedp"
	.byte	0x1
	.value	0x54e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2d
	.string	"part_mode"
	.byte	0x1
	.value	0x59d
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"part_type"
	.byte	0x1
	.value	0x59e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"lopart"
	.byte	0x1
	.value	0x59f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"hipart"
	.byte	0x1
	.value	0x5a0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x83e7
	.string	"put_reg_into_stack"
	.byte	0x1
	.value	0x5de
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x5d6
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0x5d7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x5d8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x5d9
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x5d9
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x5da
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.string	"original_regno"
	.byte	0x1
	.value	0x5db
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"used_p"
	.byte	0x1
	.value	0x5dc
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0x5dd
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"func"
	.byte	0x1
	.value	0x5df
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"new"
	.byte	0x1
	.value	0x5e0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x5e1
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x8487
	.string	"schedule_fixup_var_refs"
	.byte	0x1
	.value	0x60e
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x609
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0x60a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x60b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x60c
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0x60d
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF52
	.byte	0x1
	.value	0x60f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x613
	.long	0x5aa4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8571
	.string	"fixup_var_refs"
	.byte	0x1
	.value	0x629
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x624
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x625
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x626
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0x628
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0x627
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"pending"
	.byte	0x1
	.value	0x62a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"first_insn"
	.byte	0x1
	.value	0x62b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"stack"
	.byte	0x1
	.value	0x62c
	.long	0x5af1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"rtl_exps"
	.byte	0x1
	.value	0x62d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0x8560
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x64b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbc17
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15373
	.byte	0x0
	.uleb128 0x34
	.long	0x85cb
	.string	"find_fixup_replacement"
	.byte	0x1
	.value	0x65e
	.byte	0x1
	.long	0x77d1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0x65c
	.long	0x85cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x65d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x65f
	.long	0x77d1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77d1
	.uleb128 0x37
	.long	0x869f
	.string	"fixup_var_refs_insns"
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x678
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x679
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x67a
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x67b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x67c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0x67d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x30
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x683
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x68c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x692
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8751
	.string	"fixup_var_refs_insns_with_hash"
	.byte	0x1
	.value	0x6b4
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0x6af
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x6b0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x6b1
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x6b2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF54
	.byte	0x1
	.value	0x6b3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x6b5
	.long	0x77d7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"ime"
	.byte	0x1
	.value	0x6b6
	.long	0x8751
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"insn_list"
	.byte	0x1
	.value	0x6b7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77d7
	.uleb128 0x37
	.long	0x88c9
	.string	"fixup_var_refs_insn"
	.byte	0x1
	.value	0x6d0
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x6ca
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x6cb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x6cc
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF38
	.byte	0x1
	.value	0x6cd
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x6ce
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF58
	.byte	0x1
	.value	0x6cf
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.string	"call_dest"
	.byte	0x1
	.value	0x6d1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x6d2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"prev"
	.byte	0x1
	.value	0x6d2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"prev_set"
	.byte	0x1
	.value	0x6d2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0x6d3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x703
	.long	0x77d1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"next_insn"
	.byte	0x1
	.value	0x704
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	0x887c
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x719
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x742
	.long	0x77d1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2d
	.string	"insert_before"
	.byte	0x1
	.value	0x746
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x747
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8c65
	.string	"fixup_var_refs_1"
	.byte	0x1
	.value	0x78e
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x788
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x789
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0x78a
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x78b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF55
	.byte	0x1
	.value	0x78c
	.long	0x85cb
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF58
	.byte	0x1
	.value	0x78d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x78f
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x790
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x791
	.long	0xb45
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0x792
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x793
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"tem1"
	.byte	0x1
	.value	0x793
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.string	"replacement"
	.byte	0x1
	.value	0x794
	.long	0x77d1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	0x8a19
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2d
	.string	"sub"
	.byte	0x1
	.value	0x79c
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.value	0x7a0
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x7a1
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"new_insn"
	.byte	0x1
	.value	0x7a1
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8ad8
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0x82f
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2d
	.string	"is_mode"
	.byte	0x1
	.value	0x830
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"pos"
	.byte	0x1
	.value	0x831
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.long	0x8a78
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x35
	.long	.LASF60
	.byte	0x1
	.value	0x835
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x36
	.long	0x8a96
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x35
	.long	.LASF60
	.byte	0x1
	.value	0x83c
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x30
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0x846
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"old_pos"
	.byte	0x1
	.value	0x847
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"newmem"
	.byte	0x1
	.value	0x848
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8c39
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2d
	.string	"dest"
	.byte	0x1
	.value	0x8c8
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x8c9
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"outerdest"
	.byte	0x1
	.value	0x8ca
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	0x8b9d
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0x8f9
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"is_mode"
	.byte	0x1
	.value	0x8fa
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"pos"
	.byte	0x1
	.value	0x8fb
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0x902
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.string	"old_pos"
	.byte	0x1
	.value	0x903
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"newmem"
	.byte	0x1
	.value	0x904
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8bc9
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.value	0x942
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF41
	.byte	0x1
	.value	0x942
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x36
	.long	0x8bf5
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.value	0x989
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF41
	.byte	0x1
	.value	0x989
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x30
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x9b8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"fixeddest"
	.byte	0x1
	.value	0x9b9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"temp_mode"
	.byte	0x1
	.value	0x9ba
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8c54
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x9e5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbc02
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15702
	.byte	0x0
	.uleb128 0x34
	.long	0x8d37
	.string	"fixup_memory_subreg"
	.byte	0x1
	.value	0x9fd
	.byte	0x1
	.long	0x9d
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x9f9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x9fa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0x9fb
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF61
	.byte	0x1
	.value	0x9fc
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0x9fe
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"mem"
	.byte	0x1
	.value	0x9ff
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0xa00
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xa01
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF36
	.byte	0x1
	.value	0xa02
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0xa02
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16382
	.byte	0x0
	.uleb128 0x34
	.long	0x8de6
	.string	"walk_fixup_memory_subreg"
	.byte	0x1
	.value	0xa2b
	.byte	0x1
	.long	0x9d
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xa27
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xa28
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF37
	.byte	0x1
	.value	0xa29
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF61
	.byte	0x1
	.value	0xa2a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xa2c
	.long	0xb45
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0xa2d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xa2e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0xa42
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x8eb0
	.string	"fixup_stack_1"
	.byte	0x1
	.value	0xa56
	.byte	0x1
	.long	0x9d
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xa54
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xa55
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xa57
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xa58
	.long	0xb45
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0xa59
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	0x8e98
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2d
	.string	"ad"
	.byte	0x1
	.value	0xa5d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0xa6d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0xa6d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0xa82
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8f0d
	.string	"optimize_bit_field"
	.byte	0x1
	.value	0xa9a
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.string	"body"
	.byte	0x1
	.value	0xa97
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xa98
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"equiv_mem"
	.byte	0x1
	.value	0xa99
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2b
	.long	0x8fbd
	.byte	0x1
	.string	"gen_mem_addressof"
	.byte	0x1
	.value	0xb6f
	.byte	0x1
	.long	0x9d
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0xb6c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0xb6d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"rescan"
	.byte	0x1
	.value	0xb6e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0xb70
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0xb74
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0xb81
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0xb82
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0xb84
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8ff3
	.byte	0x1
	.string	"flush_addressof"
	.byte	0x1
	.value	0xba3
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0xba2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x909b
	.string	"put_addressof_into_stack"
	.byte	0x1
	.value	0xbb2
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xbb0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0xbb1
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0xbb3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0xbb3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF50
	.byte	0x1
	.value	0xbb4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"used_p"
	.byte	0x1
	.value	0xbb4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0xbb6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbf8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16754
	.byte	0x0
	.uleb128 0x34
	.long	0x92c5
	.string	"purge_addressof_1"
	.byte	0x1
	.value	0xbe6
	.byte	0x1
	.long	0x5a0b
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0xbe2
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xbe3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"force"
	.byte	0x1
	.value	0xbe4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"store"
	.byte	0x1
	.value	0xbe4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0xbe5
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0xbe7
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xbe8
	.long	0xb45
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xbe9
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0xbe9
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0xbea
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF36
	.byte	0x1
	.value	0xbeb
	.long	0x5a0b
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x38
	.string	"restart"
	.byte	0x1
	.value	0xcd9
	.long	.L967
	.uleb128 0x38
	.string	"give_up"
	.byte	0x1
	.value	0xcdd
	.long	.L983
	.uleb128 0x36
	.long	0x91bb
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2d
	.string	"sub"
	.byte	0x1
	.value	0xc01
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	.LASF44
	.byte	0x1
	.value	0xc01
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x36
	.long	0x92b4
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2d
	.string	"sub"
	.byte	0x1
	.value	0xc1b
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	0x929a
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2d
	.string	"size_x"
	.byte	0x1
	.value	0xc24
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"size_sub"
	.byte	0x1
	.value	0xc24
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	0x923f
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xc2b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2d
	.string	"z"
	.byte	0x1
	.value	0xc3c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xc79
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0xc79
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	0x9281
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0xc7d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x30
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0xca0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xcc9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbe3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16804
	.byte	0x0
	.uleb128 0x34
	.long	0x930c
	.string	"insns_for_mem_hash"
	.byte	0x1
	.value	0xcf1
	.byte	0x1
	.long	0x69cc
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.string	"k"
	.byte	0x1
	.value	0xcf0
	.long	0x82c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.value	0xcf3
	.long	0x8751
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x9371
	.string	"insns_for_mem_comp"
	.byte	0x1
	.value	0xcfd
	.byte	0x1
	.long	0x2df
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x32
	.string	"k1"
	.byte	0x1
	.value	0xcfb
	.long	0x82c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"k2"
	.byte	0x1
	.value	0xcfc
	.long	0x82c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"m1"
	.byte	0x1
	.value	0xcfe
	.long	0x8751
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.string	"m2"
	.byte	0x1
	.value	0xcff
	.long	0x8751
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x93c0
	.string	"insns_for_mem_walk_info"
	.byte	0xc
	.byte	0x1
	.value	0xd04
	.uleb128 0xe
	.string	"ht"
	.byte	0x1
	.value	0xd07
	.long	0x6b33
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF56
	.byte	0x1
	.value	0xd0a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"pass"
	.byte	0x1
	.value	0xd0e
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x34
	.long	0x945f
	.string	"insns_for_mem_walk"
	.byte	0x1
	.value	0xd1a
	.byte	0x1
	.long	0x2df
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xd18
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0xd19
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"ifmwi"
	.byte	0x1
	.value	0xd1b
	.long	0x945f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0xd1d
	.long	0x77d7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x9444
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0xd23
	.long	0x75b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2d
	.string	"ifme"
	.byte	0x1
	.value	0xd2e
	.long	0x8751
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9371
	.uleb128 0x37
	.long	0x94e3
	.string	"compute_insns_for_mem"
	.byte	0x1
	.value	0xd45
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0xd42
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"last_insn"
	.byte	0x1
	.value	0xd43
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"ht"
	.byte	0x1
	.value	0xd44
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0xd46
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.string	"ifmwi"
	.byte	0x1
	.value	0xd47
	.long	0x9371
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	0x9529
	.string	"is_addressof"
	.byte	0x1
	.value	0xd5a
	.byte	0x1
	.long	0x2df
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x32
	.string	"rtl"
	.byte	0x1
	.value	0xd58
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0xd59
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x95aa
	.byte	0x1
	.string	"purge_addressof"
	.byte	0x1
	.value	0xd65
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0xd64
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0xd66
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"ht"
	.byte	0x1
	.value	0xd67
	.long	0x6b33
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.long	0x9599
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0xd81
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbde
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17202
	.byte	0x0
	.uleb128 0x37
	.long	0x961d
	.string	"purge_single_hard_subreg_set"
	.byte	0x1
	.value	0xdaa
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x32
	.string	"pattern"
	.byte	0x1
	.value	0xda9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0xdab
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xdac
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0xdad
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x96b1
	.byte	0x1
	.string	"purge_hard_subreg_sets"
	.byte	0x1
	.value	0xdcb
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xdca
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2d
	.string	"pattern"
	.byte	0x1
	.value	0xdd0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0xdd9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2d
	.string	"inner_pattern"
	.byte	0x1
	.value	0xddc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x971b
	.byte	0x1
	.string	"instantiate_virtual_regs"
	.byte	0x1
	.value	0xdf1
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x2c
	.long	.LASF63
	.byte	0x1
	.value	0xdef
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0xdf0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0xdf2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xdf3
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x979d
	.string	"instantiate_decls"
	.byte	0x1
	.value	0xe34
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x2c
	.long	.LASF63
	.byte	0x1
	.value	0xe32
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF64
	.byte	0x1
	.value	0xe33
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0xe35
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0xe3a
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"size_rtl"
	.byte	0x1
	.value	0xe3b
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x97f2
	.string	"instantiate_decls_1"
	.byte	0x1
	.value	0xe52
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x32
	.string	"let"
	.byte	0x1
	.value	0xe50
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF64
	.byte	0x1
	.value	0xe51
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0xe53
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x9881
	.string	"instantiate_decl"
	.byte	0x1
	.value	0xe6b
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe68
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0xe69
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF64
	.byte	0x1
	.value	0xe6a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xe6c
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0xe6d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2d
	.string	"decl_size"
	.byte	0x1
	.value	0xe89
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x98ed
	.string	"instantiate_new_reg"
	.byte	0x1
	.value	0xeab
	.byte	0x1
	.long	0x9d
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xea9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"poffset"
	.byte	0x1
	.value	0xeaa
	.long	0x98ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"new"
	.byte	0x1
	.value	0xeac
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0xead
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x454
	.uleb128 0x37
	.long	0x9949
	.string	"instantiate_virtual_regs_lossage"
	.byte	0x1
	.value	0xec7
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0xec6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17560
	.byte	0x0
	.uleb128 0x34
	.long	0x9a94
	.string	"instantiate_virtual_regs_1"
	.byte	0x1
	.value	0xee3
	.byte	0x1
	.long	0x2df
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x32
	.string	"loc"
	.byte	0x1
	.value	0xee0
	.long	0x177e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"object"
	.byte	0x1
	.value	0xee1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"extra_insns"
	.byte	0x1
	.value	0xee2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0xee4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xee5
	.long	0xb45
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"new"
	.byte	0x1
	.value	0xee6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0xee7
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0xee8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0xee9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xeea
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0xeea
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0xeeb
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"restart"
	.byte	0x1
	.value	0xf37
	.long	.L1245
	.uleb128 0x36
	.long	0x9a64
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0xf12
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x30
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2d
	.string	"old"
	.byte	0x1
	.value	0xf3d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"new_offset"
	.byte	0x1
	.value	0xf3d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9b23
	.string	"delete_handlers"
	.byte	0x1
	.value	0x106a
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x106b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x9af5
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x1074
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"last_t"
	.byte	0x1
	.value	0x1074
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2d
	.string	"can_delete"
	.byte	0x1
	.value	0x1088
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x1089
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.string	"max_parm_reg_num"
	.byte	0x1
	.value	0x109b
	.byte	0x1
	.long	0x2df
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x33
	.byte	0x1
	.string	"get_first_nonparm_insn"
	.byte	0x1
	.value	0x10a3
	.byte	0x1
	.long	0x9d
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x2b
	.long	0x9bd9
	.byte	0x1
	.string	"get_first_block_beg"
	.byte	0x1
	.value	0x10ae
	.byte	0x1
	.long	0x9d
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x2d
	.string	"searcher"
	.byte	0x1
	.value	0x10af
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x10b0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18125
	.byte	0x0
	.uleb128 0x2b
	.long	0x9c60
	.byte	0x1
	.string	"aggregate_value_p"
	.byte	0x1
	.value	0x10c3
	.byte	0x1
	.long	0x2df
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x10c2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x10c4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x10c4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"nregs"
	.byte	0x1
	.value	0x10c4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x10c5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x10c7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xa297
	.byte	0x1
	.string	"assign_parms"
	.byte	0x1
	.value	0x10eb
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x2c
	.long	.LASF63
	.byte	0x1
	.value	0x10ea
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"parm"
	.byte	0x1
	.value	0x10ec
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.string	"entry_parm"
	.byte	0x1
	.value	0x10ed
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.string	"stack_parm"
	.byte	0x1
	.value	0x10ee
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.string	"args_so_far"
	.byte	0x1
	.value	0x10ef
	.long	0x3d6
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x35
	.long	.LASF37
	.byte	0x1
	.value	0x10f0
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x35
	.long	.LASF65
	.byte	0x1
	.value	0x10f0
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2d
	.string	"nominal_mode"
	.byte	0x1
	.value	0x10f1
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.string	"promoted_nominal_mode"
	.byte	0x1
	.value	0x10f1
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x35
	.long	.LASF38
	.byte	0x1
	.value	0x10f2
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.string	"stack_args_size"
	.byte	0x1
	.value	0x10f5
	.long	0x5f1d
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2d
	.string	"fntype"
	.byte	0x1
	.value	0x10f6
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.string	"fnargs"
	.byte	0x1
	.value	0x10f7
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x10f9
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2d
	.string	"function_result_decl"
	.byte	0x1
	.value	0x10fc
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2d
	.string	"varargs_setup"
	.byte	0x1
	.value	0x10fe
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.string	"conversion_insns"
	.byte	0x1
	.value	0x1100
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x35
	.long	.LASF66
	.byte	0x1
	.value	0x1101
	.long	0x5f1d
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2d
	.string	"stdarg"
	.byte	0x1
	.value	0x1106
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x36
	.long	0x9e3f
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x1124
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.byte	0x0
	.uleb128 0x36
	.long	0xa237
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2d
	.string	"stack_offset"
	.byte	0x1
	.value	0x113c
	.long	0x5f1d
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2d
	.string	"arg_size"
	.byte	0x1
	.value	0x113d
	.long	0x5f1d
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2d
	.string	"passed_pointer"
	.byte	0x1
	.value	0x113e
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.string	"did_conversion"
	.byte	0x1
	.value	0x113f
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2d
	.string	"passed_type"
	.byte	0x1
	.value	0x1140
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"nominal_type"
	.byte	0x1
	.value	0x1141
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2d
	.string	"pretend_named"
	.byte	0x1
	.value	0x1142
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"last_named"
	.byte	0x1
	.value	0x1143
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"named_arg"
	.byte	0x1
	.value	0x1143
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	0x9f46
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x1149
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.uleb128 0x36
	.long	0x9f6b
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2d
	.string	"offset_rtx"
	.byte	0x1
	.value	0x11dd
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x36
	.long	0x9f8b
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2d
	.string	"nregs"
	.byte	0x1
	.value	0x11fa
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x36
	.long	0x9fa9
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x1239
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x36
	.long	0x9fd5
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2d
	.string	"thisparm_boundary"
	.byte	0x1
	.value	0x1248
	.long	0x3b8
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x36
	.long	0xa001
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x125b
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x125b
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x36
	.long	0xa027
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2d
	.string	"size_stored"
	.byte	0x1
	.value	0x1280
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x36
	.long	0xa1e4
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2d
	.string	"parmreg"
	.byte	0x1
	.value	0x12b2
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x12b3
	.long	0x3b8
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"regnoi"
	.byte	0x1
	.value	0x12b3
	.long	0x3b8
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"regnor"
	.byte	0x1
	.value	0x12b3
	.long	0x3b8
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	0xa09a
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x12c1
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x36
	.long	0xa0ee
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2d
	.string	"save_tree_used"
	.byte	0x1
	.value	0x12d0
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF67
	.byte	0x1
	.value	0x12e4
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2d
	.string	"_rtx"
	.byte	0x1
	.value	0x12f6
	.long	0xa297
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa11c
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x35
	.long	.LASF67
	.byte	0x1
	.value	0x1318
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.long	.LASF52
	.byte	0x1
	.value	0x1319
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x36
	.long	0xa14b
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2d
	.string	"copy"
	.byte	0x1
	.value	0x133c
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x133d
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x36
	.long	0xa186
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2d
	.string	"new"
	.byte	0x1
	.value	0x1365
	.long	0x177e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"old_max_parm_reg"
	.byte	0x1
	.value	0x1366
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x36
	.long	0xa1a8
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2d
	.string	"submode"
	.byte	0x1
	.value	0x1375
	.long	0x84d
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x30
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2d
	.string	"linsn"
	.byte	0x1
	.value	0x1398
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"sinsn"
	.byte	0x1
	.value	0x1399
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x1399
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa201
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x35
	.long	.LASF67
	.byte	0x1
	.value	0x13d4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x30
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x35
	.long	.LASF36
	.byte	0x1
	.value	0x1402
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x1403
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x1404
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa286
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x35
	.long	.LASF68
	.byte	0x1
	.value	0x1455
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x1456
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2d
	.string	"real_decl_rtl"
	.byte	0x1
	.value	0x145c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18237
	.byte	0x0
	.uleb128 0xb
	.long	0x9d
	.uleb128 0x2b
	.long	0xa337
	.byte	0x1
	.string	"promoted_input_arg"
	.byte	0x1
	.value	0x147b
	.byte	0x1
	.long	0x9d
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x2c
	.long	.LASF51
	.byte	0x1
	.value	0x1478
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"pmode"
	.byte	0x1
	.value	0x1479
	.long	0xa337
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"punsignedp"
	.byte	0x1
	.value	0x147a
	.long	0x80b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"arg"
	.byte	0x1
	.value	0x147c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x1484
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF38
	.byte	0x1
	.value	0x1485
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x84d
	.uleb128 0x2f
	.long	0xa476
	.byte	0x1
	.string	"locate_and_pad_parm"
	.byte	0x1
	.value	0x14c0
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.value	0x14b7
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF4
	.byte	0x1
	.value	0x14b8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"in_regs"
	.byte	0x1
	.value	0x14b9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF63
	.byte	0x1
	.value	0x14ba
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"initial_offset_ptr"
	.byte	0x1
	.value	0x14bb
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x1
	.value	0x14bc
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.string	"arg_size_ptr"
	.byte	0x1
	.value	0x14bd
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF66
	.byte	0x1
	.value	0x14be
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x35
	.long	.LASF70
	.byte	0x1
	.value	0x14c1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"where_pad"
	.byte	0x1
	.value	0x14c3
	.long	0x5f4b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF71
	.byte	0x1
	.value	0x14c4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	0xa45c
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2d
	.string	"reg_parm_stack_space"
	.byte	0x1
	.value	0x14ce
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x1530
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f1d
	.uleb128 0x37
	.long	0xa51e
	.string	"pad_to_arg_alignment"
	.byte	0x1
	.value	0x153c
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x1
	.value	0x1539
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF71
	.byte	0x1
	.value	0x153a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF66
	.byte	0x1
	.value	0x153b
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"save_var"
	.byte	0x1
	.value	0x153d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"save_constant"
	.byte	0x1
	.value	0x153e
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"boundary_in_bytes"
	.byte	0x1
	.value	0x1540
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xa5b9
	.string	"pad_below"
	.byte	0x1
	.value	0x156f
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x1
	.value	0x156c
	.long	0xa476
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.value	0x156d
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF70
	.byte	0x1
	.value	0x156e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2d
	.string	"s2"
	.byte	0x1
	.value	0x157e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	0xa59e
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0x1580
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2d
	.string	"dec"
	.byte	0x1
	.value	0x1581
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0xa618
	.byte	0x1
	.string	"uninitialized_vars_warning"
	.byte	0x1
	.value	0x158e
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x158d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x158f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"sub"
	.byte	0x1
	.value	0x158f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xa652
	.byte	0x1
	.string	"setjmp_args_warning"
	.byte	0x1
	.value	0x15b7
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x15b8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xa6a5
	.byte	0x1
	.string	"setjmp_protect"
	.byte	0x1
	.value	0x15c8
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x15c7
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x15c9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"sub"
	.byte	0x1
	.value	0x15c9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xa6df
	.byte	0x1
	.string	"setjmp_protect_args"
	.byte	0x1
	.value	0x15e8
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x15e9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0xa74c
	.byte	0x1
	.string	"lookup_static_chain"
	.byte	0x1
	.value	0x1603
	.byte	0x1
	.long	0x9d
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0x1602
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x1604
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x1605
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbbaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20388
	.byte	0x0
	.uleb128 0x2b
	.long	0xa839
	.byte	0x1
	.string	"fix_lexical_addr"
	.byte	0x1
	.value	0x1621
	.byte	0x1
	.long	0x9d
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.value	0x161f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x1620
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"basereg"
	.byte	0x1
	.value	0x1622
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"displacement"
	.byte	0x1
	.value	0x1623
	.long	0x454
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x1624
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"fp"
	.byte	0x1
	.value	0x1625
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"base"
	.byte	0x1
	.value	0x1626
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	0xa80a
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0x1647
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xa828
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x165a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbba5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20421
	.byte	0x0
	.uleb128 0x2b
	.long	0xa8cd
	.byte	0x1
	.string	"trampoline_address"
	.byte	0x1
	.value	0x1673
	.byte	0x1
	.long	0x9d
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x1672
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x1674
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"rtlexp"
	.byte	0x1
	.value	0x1675
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"tramp"
	.byte	0x1
	.value	0x1676
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"fp"
	.byte	0x1
	.value	0x1677
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"fn_context"
	.byte	0x1
	.value	0x1678
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0xa93f
	.string	"round_trampoline_addr"
	.byte	0x1
	.value	0x16bc
	.byte	0x1
	.long	0x9d
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x32
	.string	"tramp"
	.byte	0x1
	.value	0x16bb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x16be
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"addend"
	.byte	0x1
	.value	0x16bf
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"mask"
	.byte	0x1
	.value	0x16c0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0xa981
	.string	"adjust_trampoline_addr"
	.byte	0x1
	.value	0x16d1
	.byte	0x1
	.long	0x9d
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x32
	.string	"tramp"
	.byte	0x1
	.value	0x16d0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0xaa11
	.byte	0x1
	.string	"identify_blocks"
	.byte	0x1
	.value	0x16e2
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x35
	.long	.LASF72
	.byte	0x1
	.value	0x16e3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF73
	.byte	0x1
	.value	0x16e4
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"last_block_vector"
	.byte	0x1
	.value	0x16e4
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF74
	.byte	0x1
	.value	0x16e5
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x16e6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20665
	.byte	0x0
	.uleb128 0x34
	.long	0xaaf8
	.string	"identify_blocks_1"
	.byte	0x1
	.value	0x170a
	.byte	0x1
	.long	0x5a38
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x1706
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF73
	.byte	0x1
	.value	0x1707
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"end_block_vector"
	.byte	0x1
	.value	0x1708
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"orig_block_stack"
	.byte	0x1
	.value	0x1709
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x170b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF74
	.byte	0x1
	.value	0x170c
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	0xaacb
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0x1714
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0xaae7
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2d
	.string	"cp"
	.byte	0x1
	.value	0x172c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20691
	.byte	0x0
	.uleb128 0x2f
	.long	0xab3c
	.byte	0x1
	.string	"reorder_blocks"
	.byte	0x1
	.value	0x1749
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x174a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF74
	.byte	0x1
	.value	0x174b
	.long	0x64f9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0xab72
	.string	"reorder_blocks_0"
	.byte	0x1
	.value	0x1766
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x1765
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0xac4f
	.string	"reorder_blocks_1"
	.byte	0x1
	.value	0x1774
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x1771
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"current_block"
	.byte	0x1
	.value	0x1772
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"p_block_stack"
	.byte	0x1
	.value	0x1773
	.long	0xac4f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x1775
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	0xac36
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x177d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2d
	.string	"new_block"
	.byte	0x1
	.value	0x1783
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"origin"
	.byte	0x1
	.value	0x1784
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2d
	.string	"cp"
	.byte	0x1
	.value	0x17a6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64f9
	.uleb128 0x37
	.long	0xacef
	.string	"reorder_fix_fragments"
	.byte	0x1
	.value	0x17b7
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x17b6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2d
	.string	"dup_origin"
	.byte	0x1
	.value	0x17ba
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"new_origin"
	.byte	0x1
	.value	0x17bb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2d
	.string	"pp"
	.byte	0x1
	.value	0x17d3
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.string	"chain"
	.byte	0x1
	.value	0x17d4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0xad54
	.string	"blocks_nreverse"
	.byte	0x1
	.value	0x17ee
	.byte	0x1
	.long	0x1e4
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x17ed
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"prev"
	.byte	0x1
	.value	0x17ef
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x17ef
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x17ef
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0xada9
	.string	"all_blocks"
	.byte	0x1
	.value	0x1802
	.byte	0x1
	.long	0x2df
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x1800
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"vector"
	.byte	0x1
	.value	0x1801
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF72
	.byte	0x1
	.value	0x1803
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0xae08
	.string	"get_block_vector"
	.byte	0x1
	.value	0x1821
	.byte	0x1
	.long	0x5a38
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x181f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"n_blocks_p"
	.byte	0x1
	.value	0x1820
	.long	0x80b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF73
	.byte	0x1
	.value	0x1822
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xae66
	.byte	0x1
	.string	"number_blocks"
	.byte	0x1
	.value	0x1832
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0x1831
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1833
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF72
	.byte	0x1
	.value	0x1834
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF73
	.byte	0x1
	.value	0x1835
	.long	0x5a38
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	0xaee2
	.byte	0x1
	.string	"debug_find_var_in_block_tree"
	.byte	0x1
	.value	0x1851
	.byte	0x1
	.long	0x1e4
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x184f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.value	0x1850
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x1852
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x185a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.string	"prepare_function_start"
	.byte	0x1
	.value	0x1866
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x31
	.byte	0x1
	.string	"init_dummy_function_start"
	.byte	0x1
	.value	0x18ee
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x2f
	.long	0xaf90
	.byte	0x1
	.string	"init_function_start"
	.byte	0x1
	.value	0x18fb
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x32
	.string	"subr"
	.byte	0x1
	.value	0x18f8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF75
	.byte	0x1
	.value	0x18f9
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"line"
	.byte	0x1
	.value	0x18fa
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"init_function_for_compilation"
	.byte	0x1
	.value	0x192c
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x31
	.byte	0x1
	.string	"expand_main_function"
	.byte	0x1
	.value	0x193e
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x2f
	.long	0xb03b
	.byte	0x1
	.string	"expand_pending_sizes"
	.byte	0x1
	.value	0x1972
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x32
	.string	"pending_sizes"
	.byte	0x1
	.value	0x1971
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x1973
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0xb167
	.byte	0x1
	.string	"expand_function_start"
	.byte	0x1
	.value	0x1990
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x32
	.string	"subr"
	.byte	0x1
	.value	0x198e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"parms_have_cleanups"
	.byte	0x1
	.value	0x198f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x1991
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"last_ptr"
	.byte	0x1
	.value	0x1992
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	0xb0f7
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2d
	.string	"value_address"
	.byte	0x1
	.value	0x19c5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x19db
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb119
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2d
	.string	"hard_reg"
	.byte	0x1
	.value	0x19eb
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xb139
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2d
	.string	"rtlexp"
	.byte	0x1
	.value	0x1a28
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xb156
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2d
	.string	"fun"
	.byte	0x1
	.value	0x1a43
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21156
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"expand_dummy_function_end"
	.byte	0x1
	.value	0x1a66
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x2f
	.long	0xb21f
	.byte	0x1
	.string	"diddle_return_value"
	.byte	0x1
	.value	0x1a7a
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x32
	.string	"doit"
	.byte	0x1
	.value	0x1a78
	.long	0xb230
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x1a79
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"outgoing"
	.byte	0x1
	.value	0x1a7b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1a84
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x1a88
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0xb230
	.byte	0x1
	.uleb128 0x16
	.long	0x9d
	.uleb128 0x16
	.long	0x4bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xb21f
	.uleb128 0x37
	.long	0xb280
	.string	"do_clobber_return_reg"
	.byte	0x1
	.value	0x1a94
	.byte	0x1
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0x1a92
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x1a93
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0xb2d7
	.byte	0x1
	.string	"clobber_return_register"
	.byte	0x1
	.value	0x1a9a
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x30
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x35
	.long	.LASF68
	.byte	0x1
	.value	0x1aa0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x1aa1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb31d
	.string	"do_use_return_reg"
	.byte	0x1
	.value	0x1aad
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0x1aab
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x1aac
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"use_return_register"
	.byte	0x1
	.value	0x1ab3
	.byte	0x1
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x2f
	.long	0xb3e0
	.byte	0x1
	.string	"expand_function_end"
	.byte	0x1
	.value	0x1ac4
	.byte	0x1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x2c
	.long	.LASF75
	.byte	0x1
	.value	0x1ac1
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"line"
	.byte	0x1
	.value	0x1ac2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"end_bindings"
	.byte	0x1
	.value	0x1ac3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x1ac5
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"clobber_after"
	.byte	0x1
	.value	0x1ac6
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21519
	.byte	0x0
	.uleb128 0x2b
	.long	0xb44a
	.byte	0x1
	.string	"get_arg_pointer_save_area"
	.byte	0x1
	.value	0x1c0e
	.byte	0x1
	.long	0x9d
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1c0d
	.long	0x4f0d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1c0f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x1c19
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb4b7
	.string	"record_insns"
	.byte	0x1
	.value	0x1c32
	.byte	0x1
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x1c30
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"vecp"
	.byte	0x1
	.value	0x1c31
	.long	0xac4f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1c33
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x1c33
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x1c34
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0xb52d
	.string	"contains"
	.byte	0x1
	.value	0x1c50
	.byte	0x1
	.long	0x2df
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x1c4e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"vec"
	.byte	0x1
	.value	0x1c4f
	.long	0x64f9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1c51
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x1c51
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2d
	.string	"count"
	.byte	0x1
	.value	0x1c56
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xb572
	.byte	0x1
	.string	"prologue_epilogue_contains"
	.byte	0x1
	.value	0x1c69
	.byte	0x1
	.long	0x2df
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x1c68
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0xb5b6
	.byte	0x1
	.string	"sibcall_epilogue_contains"
	.byte	0x1
	.value	0x1c74
	.byte	0x1
	.long	0x2df
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x1c73
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0xb622
	.string	"emit_return_into_block"
	.byte	0x1
	.value	0x1c82
	.byte	0x1
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x32
	.string	"bb"
	.byte	0x1
	.value	0x1c80
	.long	0x69b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"line_note"
	.byte	0x1
	.value	0x1c81
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x1c83
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"end"
	.byte	0x1
	.value	0x1c83
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xd
	.long	0xb6b0
	.string	"epi_info"
	.byte	0x1c
	.byte	0x1
	.value	0x1cad
	.uleb128 0xe
	.string	"sp_equiv_reg"
	.byte	0x1
	.value	0x1cae
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"sp_offset"
	.byte	0x1
	.value	0x1caf
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"new_sp_equiv_reg"
	.byte	0x1
	.value	0x1cb0
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"new_sp_offset"
	.byte	0x1
	.value	0x1cb1
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"equiv_reg_src"
	.byte	0x1
	.value	0x1cb2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x34
	.long	0xb7cc
	.string	"keep_stack_depressed"
	.byte	0x1
	.value	0x1cc0
	.byte	0x1
	.long	0x9d
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x2c
	.long	.LASF44
	.byte	0x1
	.value	0x1cbf
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x1cc1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"info"
	.byte	0x1
	.value	0x1cc2
	.long	0xb622
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x1cc3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x1cc3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	0xb7bb
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x2d
	.string	"retaddr"
	.byte	0x1
	.value	0x1cf2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"base"
	.byte	0x1
	.value	0x1cf3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0x1cf4
	.long	0x454
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"jump_insn"
	.byte	0x1
	.value	0x1cf5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"jump_set"
	.byte	0x1
	.value	0x1cf5
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1d21
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x1d22
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22028
	.byte	0x0
	.uleb128 0x37
	.long	0xb822
	.string	"handle_epilogue_set"
	.byte	0x1
	.value	0x1d76
	.byte	0x1
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x32
	.string	"set"
	.byte	0x1
	.value	0x1d74
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1d75
	.long	0xb822
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22293
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xb622
	.uleb128 0x37
	.long	0xb85b
	.string	"emit_equiv_load"
	.byte	0x1
	.value	0x1db9
	.byte	0x1
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1db8
	.long	0xb822
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0xba13
	.byte	0x1
	.string	"thread_prologue_and_epilogue_insns"
	.byte	0x1
	.value	0x1dc8
	.byte	0x1
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1dc7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"inserted"
	.byte	0x1
	.value	0x1dc9
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0x1dca
	.long	0x6735
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0x1dcc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"prologue_end"
	.byte	0x1
	.value	0x1dcf
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"epilogue_end"
	.byte	0x1
	.value	0x1dd2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"epilogue_done"
	.byte	0x1
	.value	0x1e7d
	.long	.L2930
	.uleb128 0x36
	.long	0xb9a9
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x35
	.long	.LASF41
	.byte	0x1
	.value	0x1dff
	.long	0x69b5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"e_next"
	.byte	0x1
	.value	0x1e00
	.long	0x6735
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"label"
	.byte	0x1
	.value	0x1e01
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x2d
	.string	"epilogue_line_note"
	.byte	0x1
	.value	0x1e15
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x1e24
	.long	0x69b5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"jump"
	.byte	0x1
	.value	0x1e25
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb9d6
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x1ea1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"prev"
	.byte	0x1
	.value	0x1ea1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xba02
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x1ed9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x1ed9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF46
	.long	0xbb32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22380
	.byte	0x0
	.uleb128 0x2f
	.long	0xbab4
	.byte	0x1
	.string	"reposition_prologue_and_epilogue_notes"
	.byte	0x1
	.value	0x1eee
	.byte	0x1
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x1eed
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x1ef0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF41
	.byte	0x1
	.value	0x1ef0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0x1ef0
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x1ef1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x35
	.long	.LASF39
	.byte	0x1
	.value	0x1f0b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"init_function_once"
	.byte	0x1
	.value	0x1f4d
	.byte	0x1
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x3a
	.long	0xbb1d
	.byte	0x1
	.string	"gt_ggc_mx_temp_slot"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x3b
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4bb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xbb1d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x5ee4
	.uleb128 0x10
	.long	0xbb32
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x22
	.byte	0x0
	.uleb128 0xb
	.long	0xbb22
	.uleb128 0xb
	.long	0x7f6
	.uleb128 0x10
	.long	0xbb4c
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xbb3c
	.uleb128 0xb
	.long	0x7f6
	.uleb128 0x10
	.long	0xbb66
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x15
	.byte	0x0
	.uleb128 0xb
	.long	0xbb56
	.uleb128 0x10
	.long	0xbb7b
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xbb6b
	.uleb128 0x10
	.long	0xbb90
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xbb80
	.uleb128 0x10
	.long	0xbba5
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0xbb95
	.uleb128 0xb
	.long	0x7f6
	.uleb128 0x10
	.long	0xbbbf
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0xbbaf
	.uleb128 0xb
	.long	0x7f6
	.uleb128 0x10
	.long	0xbbd9
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x20
	.byte	0x0
	.uleb128 0xb
	.long	0xbbc9
	.uleb128 0xb
	.long	0xbb80
	.uleb128 0xb
	.long	0xbb6b
	.uleb128 0x10
	.long	0xbbf8
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xbbe8
	.uleb128 0xb
	.long	0x7f6
	.uleb128 0xb
	.long	0xbb95
	.uleb128 0x10
	.long	0xbc17
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xbc07
	.uleb128 0x10
	.long	0xbc2c
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x1a
	.byte	0x0
	.uleb128 0xb
	.long	0xbc1c
	.uleb128 0x10
	.long	0xbc41
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0xbc31
	.uleb128 0x3d
	.long	.LASF34
	.byte	0x1
	.byte	0x8c
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	funcdef_no
	.uleb128 0x3c
	.string	"prologue"
	.byte	0x1
	.byte	0x99
	.long	0x64f9
	.byte	0x5
	.byte	0x3
	.long	prologue
	.uleb128 0x3c
	.string	"epilogue"
	.byte	0x1
	.byte	0x9a
	.long	0x64f9
	.byte	0x5
	.byte	0x3
	.long	epilogue
	.uleb128 0x3c
	.string	"sibcall_epilogue"
	.byte	0x1
	.byte	0x9e
	.long	0x64f9
	.byte	0x5
	.byte	0x3
	.long	sibcall_epilogue
	.uleb128 0x2d
	.string	"outer_function_chain"
	.byte	0x1
	.value	0x135
	.long	0x4f0d
	.byte	0x5
	.byte	0x3
	.long	outer_function_chain
	.uleb128 0x2d
	.string	"in_arg_offset"
	.byte	0x1
	.value	0xb34
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	in_arg_offset
	.uleb128 0x2d
	.string	"var_offset"
	.byte	0x1
	.value	0xb35
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	var_offset
	.uleb128 0x2d
	.string	"dynamic_offset"
	.byte	0x1
	.value	0xb36
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	dynamic_offset
	.uleb128 0x2d
	.string	"out_arg_offset"
	.byte	0x1
	.value	0xb37
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	out_arg_offset
	.uleb128 0x2d
	.string	"cfa_offset"
	.byte	0x1
	.value	0xb38
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	cfa_offset
	.uleb128 0x2d
	.string	"purge_bitfield_addressof_replacements"
	.byte	0x1
	.value	0xbd1
	.long	0x9d
	.byte	0x5
	.byte	0x3
	.long	purge_bitfield_addressof_replacements
	.uleb128 0x2d
	.string	"purge_addressof_replacements"
	.byte	0x1
	.value	0xbd9
	.long	0x9d
	.byte	0x5
	.byte	0x3
	.long	purge_addressof_replacements
	.uleb128 0x2d
	.string	"next_block_index"
	.byte	0x1
	.value	0x182b
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	next_block_index
	.uleb128 0x2d
	.string	"initial_trampoline"
	.byte	0x1
	.value	0x1ab7
	.long	0x9d
	.byte	0x5
	.byte	0x3
	.long	initial_trampoline
	.uleb128 0x10
	.long	0xbdfb
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3e
	.string	"call_used_regs"
	.byte	0x15
	.value	0x196
	.long	0xbdeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"target_flags"
	.byte	0xe
	.byte	0x21
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"mips_cache_flush_func"
	.byte	0xe
	.byte	0xb0
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"mips_abi"
	.byte	0xe
	.value	0x3ca
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xbe6d
	.long	0x2d7
	.uleb128 0x40
	.uleb128 0x11
	.long	0x3cf
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3e
	.string	"mips_hard_regno_mode_ok"
	.byte	0xe
	.value	0x778
	.long	0xbe5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xbe9f
	.long	0xa96
	.uleb128 0x11
	.long	0x3cf
	.byte	0x35
	.byte	0x0
	.uleb128 0x41
	.long	.LASF8
	.byte	0x6
	.byte	0x34
	.long	0xbeac
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbe8f
	.uleb128 0x10
	.long	0xbec1
	.long	0x3fc
	.uleb128 0x11
	.long	0x3cf
	.byte	0x35
	.byte	0x0
	.uleb128 0x3f
	.string	"mode_size"
	.byte	0x6
	.byte	0x59
	.long	0xbed4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbeb1
	.uleb128 0x10
	.long	0xbee9
	.long	0x40d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x35
	.byte	0x0
	.uleb128 0x3f
	.string	"mode_bitsize"
	.byte	0x6
	.byte	0x69
	.long	0xbeff
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbed9
	.uleb128 0x3f
	.string	"mode_wider_mode"
	.byte	0x6
	.byte	0x84
	.long	0xbf1d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbeb1
	.uleb128 0x10
	.long	0xbf32
	.long	0x84d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x8
	.byte	0x0
	.uleb128 0x3f
	.string	"class_narrowest_mode"
	.byte	0x6
	.byte	0xa6
	.long	0xbf50
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbf22
	.uleb128 0x10
	.long	0xbf65
	.long	0x3fc
	.uleb128 0x11
	.long	0x3cf
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3f
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0xbf79
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbf55
	.uleb128 0x10
	.long	0xbf8e
	.long	0x2cc
	.uleb128 0x11
	.long	0x3cf
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3f
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0xbfa2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbf7e
	.uleb128 0x10
	.long	0xbfb7
	.long	0x2d7
	.uleb128 0x11
	.long	0x3cf
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3f
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0xbfca
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbfa7
	.uleb128 0x3e
	.string	"rtx_equal_function_value_matters"
	.byte	0x3
	.value	0x541
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"generating_concat_p"
	.byte	0x3
	.value	0x544
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc028
	.long	0x9d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x80
	.byte	0x0
	.uleb128 0x3e
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0xc018
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc050
	.long	0x9d
	.uleb128 0x11
	.long	0x3cf
	.byte	0xa
	.byte	0x0
	.uleb128 0x3e
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0xc040
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"struct_value_incoming_rtx"
	.byte	0x3
	.value	0x6f5
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"static_chain_incoming_rtx"
	.byte	0x3
	.value	0x6f7
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"cse_not_expected"
	.byte	0x3
	.value	0x770
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"stack_limit_rtx"
	.byte	0x3
	.value	0x8e8
	.long	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc0ed
	.long	0x2d7
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x3f
	.string	"tree_code_type"
	.byte	0x8
	.byte	0x45
	.long	0xc105
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc0e2
	.uleb128 0x10
	.long	0xc11a
	.long	0x1e4
	.uleb128 0x11
	.long	0x3cf
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3e
	.string	"global_trees"
	.byte	0x8
	.value	0x8b5
	.long	0xc10a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc141
	.long	0x1e4
	.uleb128 0x11
	.long	0x3cf
	.byte	0xa
	.byte	0x0
	.uleb128 0x3e
	.string	"integer_types"
	.byte	0x8
	.value	0x91d
	.long	0xc131
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc169
	.long	0x1e4
	.uleb128 0x11
	.long	0x3cf
	.byte	0x5
	.byte	0x0
	.uleb128 0x3e
	.string	"sizetype_tab"
	.byte	0x8
	.value	0xad1
	.long	0xc159
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"immediate_size_expand"
	.byte	0x8
	.value	0xbc4
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"current_function_decl"
	.byte	0x8
	.value	0xbc8
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"optimize"
	.byte	0x16
	.byte	0x43
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"extra_warnings"
	.byte	0x16
	.byte	0x61
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_unused_parameter"
	.byte	0x16
	.byte	0x6b
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_uninitialized"
	.byte	0x16
	.byte	0x79
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"warn_aggregate_return"
	.byte	0x16
	.byte	0xae
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"profile_flag"
	.byte	0x16
	.byte	0xc8
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"profile_arc_flag"
	.byte	0x16
	.byte	0xcc
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_test_coverage"
	.byte	0x16
	.byte	0xd0
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_pcc_struct_return"
	.byte	0x16
	.value	0x103
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_force_mem"
	.byte	0x16
	.value	0x108
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_force_addr"
	.byte	0x16
	.value	0x10d
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_float_store"
	.byte	0x16
	.value	0x117
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_expensive_optimizations"
	.byte	0x16
	.value	0x143
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_pic"
	.byte	0x16
	.value	0x1df
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_exceptions"
	.byte	0x16
	.value	0x1ee
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_strict_aliasing"
	.byte	0x16
	.value	0x23e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_stack_check"
	.byte	0x16
	.value	0x242
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_instrument_function_entry_exit"
	.byte	0x16
	.value	0x248
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"frame_pointer_needed"
	.byte	0x16
	.value	0x266
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cfun"
	.byte	0x1
	.byte	0x96
	.long	0x4f0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cfun
	.uleb128 0x42
	.string	"virtuals_instantiated"
	.byte	0x1
	.byte	0x86
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	virtuals_instantiated
	.uleb128 0x42
	.string	"trampolines_created"
	.byte	0x1
	.byte	0x89
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	trampolines_created
	.uleb128 0x42
	.string	"inline_function_decl"
	.byte	0x1
	.byte	0x93
	.long	0x1e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	inline_function_decl
	.uleb128 0x2a
	.byte	0x1
	.long	0x5efd
	.uleb128 0x42
	.string	"init_machine_status"
	.byte	0x1
	.byte	0x90
	.long	0xc47e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	init_machine_status
	.uleb128 0x3
	.byte	0x4
	.long	0xc456
	.uleb128 0x10
	.long	0xc494
	.long	0x9d
	.uleb128 0x11
	.long	0x3cf
	.byte	0x60
	.byte	0x0
	.uleb128 0x3f
	.string	"libfunc_table"
	.byte	0x17
	.byte	0x97
	.long	0xc484
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"fixed_regs"
	.byte	0x15
	.value	0x18b
	.long	0xbdeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"regs_invalidated_by_call"
	.byte	0x15
	.value	0x1bd
	.long	0x652b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc4f3
	.long	0x15be
	.uleb128 0x11
	.long	0x3cf
	.byte	0x1
	.byte	0x0
	.uleb128 0x3e
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0xc4e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"reg_renumber"
	.byte	0x14
	.byte	0x9a
	.long	0xc525
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x447
	.uleb128 0x3f
	.string	"caller_save_needed"
	.byte	0x14
	.byte	0xc6
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_is_leaf"
	.byte	0x1
	.byte	0x71
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_is_leaf
	.uleb128 0x42
	.string	"current_function_nothrow"
	.byte	0x1
	.byte	0x76
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_nothrow
	.uleb128 0x42
	.string	"current_function_sp_is_unchanging"
	.byte	0x1
	.byte	0x7b
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_sp_is_unchanging
	.uleb128 0x42
	.string	"current_function_uses_only_leaf_regs"
	.byte	0x1
	.byte	0x80
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_uses_only_leaf_regs
	.uleb128 0x3f
	.string	"htab_hash_pointer"
	.byte	0xf
	.byte	0xa0
	.long	0x69dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF45
	.byte	0x18
	.value	0x176
	.long	0xc621
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x726a
	.uleb128 0x10
	.long	0xc636
	.long	0x6b47
	.uleb128 0x11
	.long	0x3cf
	.byte	0x5
	.byte	0x0
	.uleb128 0x42
	.string	"gt_ggc_r_gt_function_h"
	.byte	0x2
	.byte	0x28
	.long	0xc65b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_function_h
	.uleb128 0xb
	.long	0xc626
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x78e
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc661
	.long	0x7810
	.string	"find_function_data"
	.long	0x786a
	.string	"push_function_context_to"
	.long	0x78d6
	.string	"push_function_context"
	.long	0x78fe
	.string	"pop_function_context_from"
	.long	0x7976
	.string	"pop_function_context"
	.long	0x799d
	.string	"free_after_parsing"
	.long	0x79d4
	.string	"free_after_compilation"
	.long	0x7a0f
	.string	"get_func_frame_size"
	.long	0x7a4b
	.string	"get_frame_size"
	.long	0x7b83
	.string	"assign_stack_local"
	.long	0x7bde
	.string	"assign_stack_temp_for_type"
	.long	0x7cff
	.string	"assign_stack_temp"
	.long	0x7d5a
	.string	"assign_temp"
	.long	0x7e40
	.string	"combine_temp_slots"
	.long	0x7f58
	.string	"update_temp_slot_address"
	.long	0x7fb3
	.string	"mark_temp_addr_taken"
	.long	0x7ff9
	.string	"preserve_temp_slots"
	.long	0x8055
	.string	"preserve_rtl_expr_result"
	.long	0x809f
	.string	"free_temp_slots"
	.long	0x80d3
	.string	"free_temps_for_rtl_expr"
	.long	0x811c
	.string	"mark_all_temps_used"
	.long	0x8154
	.string	"push_temp_slots"
	.long	0x8176
	.string	"pop_temp_slots"
	.long	0x81a9
	.string	"init_temp_slots"
	.long	0x81cb
	.string	"put_var_into_stack"
	.long	0x8f0d
	.string	"gen_mem_addressof"
	.long	0x8fbd
	.string	"flush_addressof"
	.long	0x9529
	.string	"purge_addressof"
	.long	0x961d
	.string	"purge_hard_subreg_sets"
	.long	0x96b1
	.string	"instantiate_virtual_regs"
	.long	0x9b23
	.string	"max_parm_reg_num"
	.long	0x9b4a
	.string	"get_first_nonparm_insn"
	.long	0x9b77
	.string	"get_first_block_beg"
	.long	0x9bd9
	.string	"aggregate_value_p"
	.long	0x9c60
	.string	"assign_parms"
	.long	0xa29c
	.string	"promoted_input_arg"
	.long	0xa33d
	.string	"locate_and_pad_parm"
	.long	0xa5b9
	.string	"uninitialized_vars_warning"
	.long	0xa618
	.string	"setjmp_args_warning"
	.long	0xa652
	.string	"setjmp_protect"
	.long	0xa6a5
	.string	"setjmp_protect_args"
	.long	0xa6df
	.string	"lookup_static_chain"
	.long	0xa74c
	.string	"fix_lexical_addr"
	.long	0xa839
	.string	"trampoline_address"
	.long	0xa981
	.string	"identify_blocks"
	.long	0xaaf8
	.string	"reorder_blocks"
	.long	0xae08
	.string	"number_blocks"
	.long	0xae66
	.string	"debug_find_var_in_block_tree"
	.long	0xaf0a
	.string	"init_dummy_function_start"
	.long	0xaf36
	.string	"init_function_start"
	.long	0xaf90
	.string	"init_function_for_compilation"
	.long	0xafc0
	.string	"expand_main_function"
	.long	0xafe7
	.string	"expand_pending_sizes"
	.long	0xb03b
	.string	"expand_function_start"
	.long	0xb167
	.string	"expand_dummy_function_end"
	.long	0xb193
	.string	"diddle_return_value"
	.long	0xb280
	.string	"clobber_return_register"
	.long	0xb31d
	.string	"use_return_register"
	.long	0xb343
	.string	"expand_function_end"
	.long	0xb3e0
	.string	"get_arg_pointer_save_area"
	.long	0xb52d
	.string	"prologue_epilogue_contains"
	.long	0xb572
	.string	"sibcall_epilogue_contains"
	.long	0xb85b
	.string	"thread_prologue_and_epilogue_insns"
	.long	0xba13
	.string	"reposition_prologue_and_epilogue_notes"
	.long	0xbab4
	.string	"init_function_once"
	.long	0xbad9
	.string	"gt_ggc_mx_temp_slot"
	.long	0xc3da
	.string	"cfun"
	.long	0xc3ed
	.string	"virtuals_instantiated"
	.long	0xc411
	.string	"trampolines_created"
	.long	0xc433
	.string	"inline_function_decl"
	.long	0xc45c
	.string	"init_machine_status"
	.long	0xc547
	.string	"current_function_is_leaf"
	.long	0xc56e
	.string	"current_function_nothrow"
	.long	0xc595
	.string	"current_function_sp_is_unchanging"
	.long	0xc5c5
	.string	"current_function_uses_only_leaf_regs"
	.long	0xc636
	.string	"gt_ggc_r_gt_function_h"
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
.LASF66:
	.string	"alignment_pad"
.LASF74:
	.string	"block_stack"
.LASF28:
	.string	"name"
.LASF36:
	.string	"result"
.LASF68:
	.string	"decl_result"
.LASF63:
	.string	"fndecl"
.LASF15:
	.string	"lang_flag_1"
.LASF16:
	.string	"lang_flag_2"
.LASF20:
	.string	"lang_flag_6"
.LASF72:
	.string	"n_blocks"
.LASF67:
	.string	"tempreg"
.LASF11:
	.string	"size"
.LASF34:
	.string	"funcdef_no"
.LASF9:
	.string	"mem_attrs"
.LASF50:
	.string	"volatile_p"
.LASF59:
	.string	"wanted_mode"
.LASF60:
	.string	"new_mode"
.LASF2:
	.string	"common"
.LASF73:
	.string	"block_vector"
.LASF30:
	.string	"lang_specific"
.LASF42:
	.string	"sequence_rtl_expr"
.LASF47:
	.string	"addr"
.LASF64:
	.string	"valid_only"
.LASF40:
	.string	"sequence_stack"
.LASF35:
	.string	"function_frequency"
.LASF75:
	.string	"filename"
.LASF17:
	.string	"lang_flag_3"
.LASF31:
	.string	"function"
.LASF39:
	.string	"next"
.LASF41:
	.string	"last"
.LASF6:
	.string	"unsigned int"
.LASF62:
	.string	"decl_rtl"
.LASF23:
	.string	"abstract_origin"
.LASF12:
	.string	"align"
.LASF26:
	.string	"pointer_depth"
.LASF61:
	.string	"uncritical"
.LASF27:
	.string	"user_align"
.LASF55:
	.string	"replacements"
.LASF45:
	.string	"lang_hooks"
.LASF24:
	.string	"size_unit"
.LASF4:
	.string	"type"
.LASF54:
	.string	"may_share"
.LASF53:
	.string	"temp"
.LASF33:
	.string	"internal_arg_pointer"
.LASF65:
	.string	"passed_mode"
.LASF51:
	.string	"regno"
.LASF32:
	.string	"args_size"
.LASF56:
	.string	"insn"
.LASF44:
	.string	"insns"
.LASF14:
	.string	"lang_flag_0"
.LASF18:
	.string	"lang_flag_4"
.LASF19:
	.string	"lang_flag_5"
.LASF22:
	.string	"abstract_flag"
.LASF52:
	.string	"unsigned_p"
.LASF71:
	.string	"boundary"
.LASF48:
	.string	"alignment"
.LASF0:
	.string	"code"
.LASF29:
	.string	"context"
.LASF8:
	.string	"mode_class"
.LASF38:
	.string	"unsignedp"
.LASF21:
	.string	"ht_identifier"
.LASF10:
	.string	"offset"
.LASF5:
	.string	"block"
.LASF58:
	.string	"no_share"
.LASF37:
	.string	"promoted_mode"
.LASF46:
	.string	"__FUNCTION__"
.LASF13:
	.string	"built_in_class"
.LASF43:
	.string	"basic_block"
.LASF49:
	.string	"decl_mode"
.LASF1:
	.string	"mode"
.LASF57:
	.string	"toplevel"
.LASF7:
	.string	"_IO_FILE"
.LASF25:
	.string	"attributes"
.LASF3:
	.string	"decl"
.LASF70:
	.string	"sizetree"
.LASF69:
	.string	"offset_ptr"
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
