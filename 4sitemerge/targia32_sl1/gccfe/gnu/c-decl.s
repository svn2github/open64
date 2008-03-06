	.file	"c-decl.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl ggc_p
	.data
	.align 4
	.type	ggc_p, @object
	.size	ggc_p, 4
ggc_p:
	.long	1
	.local	clear_binding_level
	.comm	clear_binding_level,40,32
	.local	deprecated_state
	.comm	deprecated_state,4,4
	.section	.rodata
.LC0:
	.string	"global"
.LC1:
	.string	"local"
.LC2:
	.string	"label"
.LC3:
	.string	"implicit"
.LC4:
	.string	"error locus"
.LC5:
	.string	"limbo value"
.LC6:
	.string	"rid "
.LC7:
	.string	"%p"
.LC8:
	.string	" \"%s\""
	.text
.globl c_print_identifier
	.type	c_print_identifier, @function
c_print_identifier:
.LFB15:
	.file 1 "../../../kgccfe/gnu/c-decl.c"
	.loc 1 329 0
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
	.loc 1 330 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 331 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 332 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 333 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 334 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 335 0
	movl	16(%ebp), %edx
	addl	$4, %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_node@PLT
	.loc 1 336 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L4
.LBB2:
	.loc 1 338 0
	movl	12(%ebp), %eax
	movzbl	31(%eax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 339 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	indent_to@PLT
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 341 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 342 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L4:
.LBE2:
	.loc 1 344 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	c_print_identifier, .-c_print_identifier
	.section	.rodata
	.align 4
.LC9:
	.string	"array `%s' assumed to have one element"
	.text
.globl c_finish_incomplete_decl
	.type	c_finish_incomplete_decl, @function
c_finish_incomplete_decl:
.LFB16:
	.loc 1 352 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 353 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L12
.LBB3:
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 356 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L12
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L12
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L12
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 361 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 363 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_array_type@PLT
	.loc 1 365 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L12:
.LBE3:
	.loc 1 368 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	c_finish_incomplete_decl, .-c_finish_incomplete_decl
	.type	make_binding_level, @function
make_binding_level:
.LFB17:
	.loc 1 374 0
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
	.loc 1 375 0
	movl	free_binding_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L14
.LBB4:
	.loc 1 377 0
	movl	free_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 378 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, free_binding_level@GOTOFF(%ebx)
	.loc 1 379 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L16
.L14:
.LBE4:
	.loc 1 382 0
	movl	$40, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -24(%ebp)
.L16:
	movl	-24(%ebp), %eax
	.loc 1 383 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	make_binding_level, .-make_binding_level
	.type	pop_binding_level, @function
pop_binding_level:
.LFB18:
	.loc 1 390 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$16, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 391 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 392 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 394 0
	movl	-12(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 395 0
	movl	free_binding_level@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 396 0
	movl	-12(%ebp), %eax
	movl	%eax, free_binding_level@GOTOFF(%ebx)
	.loc 1 397 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	pop_binding_level, .-pop_binding_level
.globl global_bindings_p
	.type	global_bindings_p, @function
global_bindings_p:
.LFB19:
	.loc 1 403 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 404 0
	movl	current_binding_level@GOTOFF(%ecx), %edx
	movl	global_binding_level@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 405 0
	popl	%ebp
	ret
.LFE19:
	.size	global_bindings_p, .-global_bindings_p
.globl keep_next_level
	.type	keep_next_level, @function
keep_next_level:
.LFB20:
	.loc 1 409 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 410 0
	movl	$1, keep_next_level_flag@GOTOFF(%ecx)
	.loc 1 411 0
	popl	%ebp
	ret
.LFE20:
	.size	keep_next_level, .-keep_next_level
.globl kept_level_p
	.type	kept_level_p, @function
kept_level_p:
.LFB21:
	.loc 1 417 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$4, %esp
.LCFI23:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 418 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L25
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L27
.L25:
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movzbl	27(%eax), %eax
	testb	%al, %al
	jne	.L27
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L27
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L30
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	.L30
.L27:
	movl	$1, -4(%ebp)
	jmp	.L32
.L30:
	movl	$0, -4(%ebp)
.L32:
	movl	-4(%ebp), %eax
	.loc 1 424 0
	leave
	ret
.LFE21:
	.size	kept_level_p, .-kept_level_p
.globl declare_parm_level
	.type	declare_parm_level, @function
declare_parm_level:
.LFB22:
	.loc 1 434 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 435 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movb	$1, 24(%eax)
	.loc 1 436 0
	popl	%ebp
	ret
.LFE22:
	.size	declare_parm_level, .-declare_parm_level
.globl in_parm_level_p
	.type	in_parm_level_p, @function
in_parm_level_p:
.LFB23:
	.loc 1 442 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 443 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movzbl	24(%eax), %eax
	movzbl	%al, %eax
	.loc 1 444 0
	popl	%ebp
	ret
.LFE23:
	.size	in_parm_level_p, .-in_parm_level_p
.globl pushlevel
	.type	pushlevel, @function
pushlevel:
.LFB24:
	.loc 1 453 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$20, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 454 0
	movl	$0, -8(%ebp)
	.loc 1 459 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L39
	.loc 1 461 0
	movl	$0, named_labels@GOTOFF(%ebx)
.L39:
	.loc 1 464 0
	call	make_binding_level
	movl	%eax, -8(%ebp)
	.loc 1 469 0
	movl	-8(%ebp), %edx
	movl	clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	movl	24+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 24(%edx)
	movl	28+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 28(%edx)
	movl	32+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 32(%edx)
	movl	36+clear_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, 36(%edx)
	.loc 1 470 0
	cmpl	$0, 8(%ebp)
	jne	.L41
	movl	current_binding_level@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L43
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movzbl	26(%eax), %eax
	testb	%al, %al
	je	.L43
.L41:
	movl	$1, -24(%ebp)
	jmp	.L45
.L43:
	movl	$0, -24(%ebp)
.L45:
	movzbl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movb	%dl, 25(%eax)
	.loc 1 475 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 476 0
	movl	-8(%ebp), %eax
	movl	%eax, current_binding_level@GOTOFF(%ebx)
	.loc 1 477 0
	movl	keep_next_level_flag@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 27(%eax)
	.loc 1 478 0
	movl	$0, keep_next_level_flag@GOTOFF(%ebx)
	.loc 1 479 0
	movl	keep_next_if_subblocks@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 28(%eax)
	.loc 1 480 0
	movl	$0, keep_next_if_subblocks@GOTOFF(%ebx)
	.loc 1 481 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	pushlevel, .-pushlevel
	.type	clear_limbo_values, @function
clear_limbo_values:
.LFB25:
	.loc 1 488 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	subl	$20, %esp
.LCFI34:
	.loc 1 491 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L48
.L49:
	.loc 1 492 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L50
	.loc 1 493 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 60(%eax)
.L50:
	.loc 1 491 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L48:
	cmpl	$0, -4(%ebp)
	jne	.L49
	.loc 1 495 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L53
.L54:
	.loc 1 496 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_limbo_values
	.loc 1 495 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L53:
	cmpl	$0, -4(%ebp)
	jne	.L54
	.loc 1 497 0
	leave
	ret
.LFE25:
	.size	clear_limbo_values, .-clear_limbo_values
	.section	.rodata
	.align 4
.LC10:
	.string	"label `%s' used but not defined"
	.align 4
.LC11:
	.string	"label `%s' defined but not used"
	.text
.globl poplevel
	.type	poplevel, @function
poplevel:
.LFB26:
	.loc 1 519 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%esi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$48, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 524 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 525 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 526 0
	movl	$0, -24(%ebp)
	.loc 1 530 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movzbl	27(%eax), %eax
	movzbl	%al, %eax
	orl	%eax, 8(%ebp)
	.loc 1 563 0
	cmpl	$0, 12(%ebp)
	je	.L58
	.loc 1 564 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esi)
	jmp	.L60
.L58:
	.loc 1 567 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L60:
	.loc 1 572 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L61
.L62:
	.loc 1 573 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L63
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L63
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L63
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L63
	.loc 1 584 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L63
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L63
	.loc 1 586 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
.L63:
	.loc 1 572 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L61:
	cmpl	$0, -20(%ebp)
	jne	.L62
	.loc 1 593 0
	call	getdecls@PLT
	movl	%eax, (%esp)
	call	warn_about_unused_variables@PLT
	.loc 1 599 0
	movl	$0, -24(%ebp)
	.loc 1 600 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 601 0
	cmpl	$0, -16(%ebp)
	je	.L71
	.loc 1 602 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L73
.L71:
	.loc 1 603 0
	cmpl	$0, 8(%ebp)
	jne	.L74
	cmpl	$0, 16(%ebp)
	jne	.L74
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L73
	cmpl	$0, -28(%ebp)
	je	.L73
.L74:
	.loc 1 605 0
	movl	$5, (%esp)
	call	make_node@PLT
	movl	%eax, -24(%ebp)
.L73:
	.loc 1 606 0
	cmpl	$0, -24(%ebp)
	je	.L78
	.loc 1 608 0
	movl	-24(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 609 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 24(%edx)
.L78:
	.loc 1 614 0
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L80
.L81:
	.loc 1 615 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 614 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L80:
	cmpl	$0, -40(%ebp)
	jne	.L81
	.loc 1 619 0
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L83
.L84:
	.loc 1 621 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 625 0
	movl	-40(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L87
	.loc 1 627 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L89
	.loc 1 628 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L89:
	.loc 1 629 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L87
	.loc 1 630 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
.L87:
	.loc 1 632 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 44(%eax)
.L85:
	.loc 1 619 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L83:
	cmpl	$0, -40(%ebp)
	jne	.L84
	.loc 1 639 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L93
.L94:
	.loc 1 640 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 44(%edx)
	.loc 1 639 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L93:
	cmpl	$0, -40(%ebp)
	jne	.L94
	.loc 1 646 0
	cmpl	$0, 16(%ebp)
	je	.L96
	.loc 1 648 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_limbo_values
	.loc 1 655 0
	movl	-24(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 661 0
	movl	named_labels@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L98
.L99:
.LBB5:
	.loc 1 663 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 665 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L100
	.loc 1 667 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 669 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	define_label@PLT
	jmp	.L102
.L100:
	.loc 1 672 0
	movl	warn_unused_label@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L102
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L102
	.loc 1 673 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L102:
	.loc 1 674 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 678 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 679 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
.LBE5:
	.loc 1 661 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L98:
	cmpl	$0, -40(%ebp)
	jne	.L99
.L96:
	.loc 1 685 0
	leal	current_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pop_binding_level
	.loc 1 688 0
	cmpl	$0, 16(%ebp)
	je	.L105
	.loc 1 689 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 68(%edx)
	jmp	.L107
.L105:
	.loc 1 690 0
	cmpl	$0, -24(%ebp)
	je	.L108
	.loc 1 692 0
	cmpl	$0, -16(%ebp)
	jne	.L107
	.loc 1 693 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, 12(%esi)
	jmp	.L107
.L108:
	.loc 1 701 0
	cmpl	$0, -28(%ebp)
	je	.L107
	.loc 1 702 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, 12(%esi)
.L107:
	.loc 1 719 0
	cmpl	$0, 16(%ebp)
	je	.L113
	.loc 1 720 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L115
.L116:
	.loc 1 721 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 84(%edx)
	.loc 1 720 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L115:
	cmpl	$0, -40(%ebp)
	jne	.L116
	jmp	.L118
.L113:
	.loc 1 722 0
	cmpl	$0, -24(%ebp)
	je	.L118
	.loc 1 723 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L120
.L121:
	.loc 1 724 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 84(%edx)
	.loc 1 723 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L120:
	cmpl	$0, -40(%ebp)
	jne	.L121
.L118:
	.loc 1 726 0
	cmpl	$0, -24(%ebp)
	je	.L122
	.loc 1 727 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L122:
	.loc 1 729 0
	movl	-24(%ebp), %eax
	.loc 1 730 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	poplevel, .-poplevel
.globl insert_block
	.type	insert_block, @function
insert_block:
.LFB27:
	.loc 1 739 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%esi
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$16, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 740 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 741 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, 12(%esi)
	.loc 1 743 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	insert_block, .-insert_block
.globl set_block
	.type	set_block, @function
set_block:
.LFB28:
	.loc 1 751 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$16, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 752 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 753 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, (%esi)
	.loc 1 755 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, 12(%esi)
	.loc 1 757 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	set_block, .-set_block
.globl push_label_level
	.type	push_label_level, @function
push_label_level:
.LFB29:
	.loc 1 761 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$20, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 764 0
	call	make_binding_level
	movl	%eax, -8(%ebp)
	.loc 1 768 0
	movl	label_level_chain@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 769 0
	movl	-8(%ebp), %eax
	movl	%eax, label_level_chain@GOTOFF(%ebx)
	.loc 1 771 0
	movl	named_labels@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 772 0
	movl	shadowed_labels@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 773 0
	movl	$0, named_labels@GOTOFF(%ebx)
	.loc 1 774 0
	movl	$0, shadowed_labels@GOTOFF(%ebx)
	.loc 1 775 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	push_label_level, .-push_label_level
.globl pop_label_level
	.type	pop_label_level, @function
pop_label_level:
.LFB30:
	.loc 1 779 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$36, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 780 0
	movl	label_level_chain@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 785 0
	movl	named_labels@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L151
.L133:
	.loc 1 787 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L134
	.loc 1 789 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L136
	.loc 1 791 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_with_decl@PLT
	.loc 1 794 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	define_label@PLT
	jmp	.L138
.L136:
	.loc 1 797 0
	movl	warn_unused_label@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L138
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L138
	.loc 1 798 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L138:
	.loc 1 800 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 803 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 804 0
	cmpl	$0, -8(%ebp)
	je	.L141
	.loc 1 805 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L132
.L141:
	.loc 1 807 0
	movl	-12(%ebp), %eax
	movl	%eax, named_labels@GOTOFF(%ebx)
	jmp	.L132
.L134:
	.loc 1 811 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 812 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L132:
.L151:
	.loc 1 785 0
	cmpl	$0, -12(%ebp)
	jne	.L133
	.loc 1 817 0
	movl	shadowed_labels@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L145
.L146:
	.loc 1 818 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L147
	.loc 1 819 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 48(%edx)
.L147:
	.loc 1 817 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L145:
	cmpl	$0, -12(%ebp)
	jne	.L146
	.loc 1 822 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	named_labels@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, named_labels@GOTOFF(%ebx)
	.loc 1 823 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, shadowed_labels@GOTOFF(%ebx)
	.loc 1 826 0
	leal	label_level_chain@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pop_binding_level
	.loc 1 827 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	pop_label_level, .-pop_label_level
.globl pushtag
	.type	pushtag, @function
pushtag:
.LFB31:
	.loc 1 839 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$36, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 844 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L153
.L154:
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L153:
	movl	-8(%ebp), %eax
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	.L154
	.loc 1 847 0
	cmpl	$0, 8(%ebp)
	je	.L156
	.loc 1 851 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L156
	.loc 1 852 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 60(%edx)
.L156:
	.loc 1 855 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 864 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 868 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 84(%eax)
	.loc 1 869 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	pushtag, .-pushtag
	.section	.rodata
	.type	__FUNCTION__.15152, @object
	.size	__FUNCTION__.15152, 16
__FUNCTION__.15152:
	.string	"duplicate_decls"
.LC12:
	.string	"noinline"
	.align 4
.LC13:
	.string	"function `%s' redeclared as inline"
	.align 4
.LC14:
	.string	"previous declaration of function `%s' with attribute noinline"
	.align 4
.LC15:
	.string	"function `%s' redeclared with attribute noinline"
	.align 4
.LC16:
	.string	"previous declaration of function `%s' was inline"
	.align 4
.LC17:
	.string	"shadowing built-in function `%s'"
	.align 4
.LC18:
	.string	"shadowing library function `%s'"
	.align 4
.LC19:
	.string	"library function `%s' declared as non-function"
	.align 4
.LC20:
	.string	"built-in function `%s' declared as non-function"
	.align 4
.LC21:
	.string	"`%s' redeclared as different kind of symbol"
.LC22:
	.string	"previous declaration of `%s'"
	.align 4
.LC23:
	.string	"conflicting types for built-in function `%s'"
.LC24:
	.string	"conflicting types for `%s'"
	.align 4
.LC25:
	.string	"a parameter list with an ellipsis can't match an empty parameter name list declaration"
	.align 4
.LC26:
	.string	"an argument type that has a default promotion can't match an empty parameter name list declaration"
	.align 4
.LC27:
	.string	"thread-local declaration of `%s' follows non thread-local declaration"
	.align 4
.LC28:
	.string	"non thread-local declaration of `%s' follows thread-local declaration"
.LC29:
	.string	"redefinition of `%s'"
.LC30:
	.string	"redeclaration of `%s'"
	.align 4
.LC31:
	.string	"conflicting declarations of `%s'"
.LC32:
	.string	"../../../kgccfe/gnu/c-decl.c"
.LC33:
	.string	"`%s' previously defined here"
.LC34:
	.string	"`%s' previously declared here"
.LC35:
	.string	"prototype for `%s' follows"
.LC36:
	.string	"non-prototype definition here"
	.align 4
.LC37:
	.string	"prototype for `%s' follows and number of arguments doesn't match"
	.align 4
.LC38:
	.string	"prototype for `%s' follows and argument %d doesn't match"
	.align 4
.LC39:
	.string	"`%s' declared inline after being called"
	.align 4
.LC40:
	.string	"`%s' declared inline after its definition"
	.align 4
.LC41:
	.string	"static declaration for `%s' follows non-static"
	.align 4
.LC42:
	.string	"non-static declaration for `%s' follows static"
	.align 4
.LC43:
	.string	"const declaration for `%s' follows non-const"
	.align 4
.LC44:
	.string	"type qualifiers for `%s' conflict with previous decl"
	.align 4
.LC45:
	.string	"redundant redeclaration of `%s' in same scope"
	.text
	.type	duplicate_decls, @function
duplicate_decls:
.LFB32:
	.loc 1 886 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$148, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 887 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -88(%ebp)
	.loc 1 889 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L161
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L161
	movl	$1, -132(%ebp)
	jmp	.L164
.L161:
	movl	$0, -132(%ebp)
.L164:
	movl	-132(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 890 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 891 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 892 0
	movl	$0, -72(%ebp)
	.loc 1 894 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L165
	.loc 1 896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L167
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L167
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L170
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L167
.L170:
	.loc 1 900 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L172
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L172
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L172
	jmp	.L167
.L172:
	.loc 1 904 0
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L176
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L176
	movl	12(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L176
	jmp	.L167
.L176:
	.loc 1 908 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L180
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L180
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L180
	movl	12(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L180
	.loc 1 913 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 915 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 908 0
	jmp	.L167
.L180:
	.loc 1 918 0
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L167
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L167
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L167
	.loc 1 922 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 924 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L167:
	.loc 1 929 0
	movl	targetm@GOT(%ebx), %eax
	movl	176(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
.L165:
	.loc 1 933 0
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L188
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L190
.L188:
	.loc 1 935 0
	movl	$0, -88(%ebp)
.L190:
	.loc 1 940 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L191
	.loc 1 942 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L193
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L195
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L193
.L195:
	.loc 1 949 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L197
	.loc 1 951 0
	movl	warn_shadow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L208
	.loc 1 953 0
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L201
	.loc 1 954 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L208
.L201:
	.loc 1 956 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L208
.L197:
	.loc 1 960 0
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L204
	.loc 1 961 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L208
.L204:
	.loc 1 964 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L206
	.loc 1 965 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L208
.L206:
	.loc 1 968 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 942 0
	jmp	.L208
.L193:
	.loc 1 973 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 974 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L208:
	.loc 1 977 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L191:
	.loc 1 982 0
	cmpl	$0, -88(%ebp)
	je	.L210
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L210
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L210
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L210
	.loc 1 984 0
	movl	$1, -128(%ebp)
	jmp	.L209
.L210:
	.loc 1 991 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L215
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L215
	.loc 1 994 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L218
	.loc 1 999 0
	movl	warn_shadow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L220
	.loc 1 1000 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L220:
	.loc 1 1002 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L218:
	.loc 1 1004 0
	cmpl	$0, -88(%ebp)
	jne	.L222
.LBB6:
	.loc 1 1007 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1008 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1010 0
	movl	-68(%ebp), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-64(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L224
.LBB7:
	.loc 1 1016 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1017 0
	movl	-80(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1020 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1021 0
	cmpl	$0, -88(%ebp)
	je	.L224
	.loc 1 1022 0
	movl	-60(%ebp), %eax
	movl	%eax, -80(%ebp)
.L224:
.LBE7:
	.loc 1 1026 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L227
.LBB8:
	.loc 1 1039 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1040 0
	movl	-80(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1043 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1044 0
	cmpl	$0, -88(%ebp)
	je	.L227
	.loc 1 1045 0
	movl	-56(%ebp), %eax
	movl	%eax, -80(%ebp)
.L227:
.LBE8:
	.loc 1 1047 0
	cmpl	$0, 16(%ebp)
	jne	.L236
	.loc 1 1048 0
	movl	12(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L236
.L222:
.LBE6:
	.loc 1 1050 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L236
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L236
.LBB9:
	.loc 1 1058 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1059 0
	movl	-80(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1062 0
	movl	-52(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1063 0
	cmpl	$0, 16(%ebp)
	jne	.L236
	.loc 1 1064 0
	movl	12(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
.L236:
.LBE9:
	.loc 1 1066 0
	cmpl	$0, -88(%ebp)
	jne	.L242
	.loc 1 1069 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1070 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L215:
	.loc 1 1073 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L243
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L243
	.loc 1 1078 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L246
	.loc 1 1082 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L246:
	.loc 1 1084 0
	cmpl	$0, -88(%ebp)
	jne	.L242
	.loc 1 1089 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1073 0
	jmp	.L242
.L243:
	.loc 1 1094 0
	cmpl	$0, -88(%ebp)
	jne	.L250
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L250
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L250
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L250
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L250
	movl	12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L256
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L250
.L256:
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L258
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L258
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	self_promoting_args_p@PLT
	testl	%eax, %eax
	je	.L258
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L262
.L258:
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L250
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L250
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	self_promoting_args_p@PLT
	testl	%eax, %eax
	je	.L250
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L250
.L262:
	.loc 1 1111 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L266
	.loc 1 1112 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
.L266:
	.loc 1 1114 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L268
	.loc 1 1115 0
	movl	-80(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
.L268:
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$32, %edx
	movb	%dl, 34(%eax)
	.loc 1 1094 0
	jmp	.L242
.L250:
	.loc 1 1121 0
	cmpl	$0, -88(%ebp)
	jne	.L270
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L272
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L272
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L272
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L270
.L272:
	.loc 1 1131 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1134 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L276
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L276
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L279
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L281
.L279:
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L276
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L276
.L281:
.LBB10:
	.loc 1 1144 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1145 0
	cmpl	$0, -48(%ebp)
	jne	.L285
	.loc 1 1146 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1147 0
	jmp	.L285
.L286:
.LBB11:
	.loc 1 1149 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1151 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L287
	movl	-44(%ebp), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L287
	.loc 1 1154 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1155 0
	jmp	.L276
.L287:
	.loc 1 1158 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	c_type_promotes_to@PLT
	cmpl	-44(%ebp), %eax
	je	.L290
	.loc 1 1160 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1161 0
	jmp	.L276
.L290:
.LBE11:
	.loc 1 1147 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L285:
	cmpl	$0, -48(%ebp)
	jne	.L286
.L276:
.LBE10:
	.loc 1 1165 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1171 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L242
	.loc 1 1172 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 1121 0
	jmp	.L242
.L270:
	.loc 1 1175 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L294
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L294
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L294
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L294
	.loc 1 1178 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1179 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1175 0
	jmp	.L242
.L294:
	.loc 1 1182 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L299
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L299
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L299
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L299
	.loc 1 1185 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1186 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1182 0
	jmp	.L242
.L299:
	.loc 1 1190 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redeclaration_error_message
	movl	%eax, -72(%ebp)
	.loc 1 1191 0
	cmpl	$0, -72(%ebp)
	je	.L304
	.loc 1 1193 0
	movl	-72(%ebp), %edx
	movl	%edx, -136(%ebp)
	cmpl	$2, -136(%ebp)
	je	.L308
	cmpl	$3, -136(%ebp)
	je	.L309
	cmpl	$1, -136(%ebp)
	je	.L307
	jmp	.L306
.L307:
	.loc 1 1196 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1197 0
	jmp	.L310
.L308:
	.loc 1 1199 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1200 0
	jmp	.L310
.L309:
	.loc 1 1202 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1203 0
	jmp	.L310
.L306:
	.loc 1 1205 0
	leal	__FUNCTION__.15152@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1205, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L310:
	.loc 1 1208 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L311
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L311
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
	jmp	.L314
.L311:
	leal	.LC34@GOTOFF(%ebx), %edx
	movl	%edx, -124(%ebp)
.L314:
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1213 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L304:
	.loc 1 1215 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L315
	movl	12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L317
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L315
.L317:
	.loc 1 1219 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1220 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L319
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L319
	leal	.LC33@GOTOFF(%ebx), %edx
	movl	%edx, -120(%ebp)
	jmp	.L322
.L319:
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
.L322:
	movl	-120(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1215 0
	jmp	.L242
.L315:
	.loc 1 1227 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L323
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L323
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L323
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L323
	movl	-80(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L323
.LBB12:
	.loc 1 1239 0
	movl	-80(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, -32(%ebp)
.L329:
	.loc 1 1243 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L330
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L330
	.loc 1 1246 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1247 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1248 0
	jmp	.L242
.L330:
	.loc 1 1250 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L334
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L336
.L334:
	.loc 1 1253 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1255 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1256 0
	movl	$1, -72(%ebp)
	.loc 1 1257 0
	jmp	.L242
.L336:
	.loc 1 1261 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L337
	.loc 1 1263 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1266 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1267 0
	movl	$1, -72(%ebp)
	.loc 1 1268 0
	jmp	.L242
.L337:
	.loc 1 1241 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	addl	$1, -32(%ebp)
	.loc 1 1270 0
	jmp	.L329
.L323:
.LBE12:
	.loc 1 1277 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L339
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L339
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L339
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L339
	.loc 1 1281 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L339:
	.loc 1 1283 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L344
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L344
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L344
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 1287 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L344:
	.loc 1 1292 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L349
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L351
.L349:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L351
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L351
	.loc 1 1295 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L351:
	.loc 1 1299 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L354
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L354
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L354
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L354
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L354
	.loc 1 1303 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L354:
	.loc 1 1307 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L360
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L360
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L360
	.loc 1 1310 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1307 0
	jmp	.L242
.L360:
	.loc 1 1314 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L242
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L242
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$4, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L366
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L242
.L366:
	.loc 1 1317 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
.L242:
	.loc 1 1322 0
	cmpl	$0, -72(%ebp)
	jne	.L368
	movl	warn_redundant_decls@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L368
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L368
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L372
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L372
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L368
.L372:
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L375
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L368
.L375:
	.loc 1 1330 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1331 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L368:
	.loc 1 1340 0
	cmpl	$0, -88(%ebp)
	je	.L377
.LBB13:
	.loc 1 1345 0
	cmpl	$0, 16(%ebp)
	je	.L379
	movl	8(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L381
.L379:
	movl	12(%ebp), %edx
	movl	%edx, -116(%ebp)
.L381:
	movl	-116(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1348 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L382
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L384
.L382:
	.loc 1 1350 0
	cmpl	$0, 16(%ebp)
	je	.L385
	.loc 1 1352 0
	movl	-80(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L387
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L387
	.loc 1 1354 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1352 0
	jmp	.L384
.L387:
	.loc 1 1356 0
	movl	-80(%ebp), %eax
	movl	28(%eax), %edx
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	merge_attributes@PLT
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_attribute_variant@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L384
.L385:
	.loc 1 1363 0
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	common_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L384:
	.loc 1 1369 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-80(%ebp), %eax
	je	.L391
	.loc 1 1371 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L393
	.loc 1 1372 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
.L393:
	.loc 1 1373 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L399
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L399
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L399
	.loc 1 1376 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	jmp	.L399
.L391:
	.loc 1 1381 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1382 0
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 1383 0
	movl	12(%ebp), %eax
	movzbl	32(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 32(%eax)
	.loc 1 1384 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L399
	.loc 1 1385 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	cmpl	%eax, %edx
	jle	.L399
	.loc 1 1387 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 1388 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L399:
	.loc 1 1393 0
	movl	12(%ebp), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 1396 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L402
	.loc 1 1397 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$16, %edx
	movb	%dl, 9(%eax)
.L402:
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L404
	.loc 1 1401 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$8, %eax
	movb	%al, 9(%edx)
	.loc 1 1402 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L404
	cmpl	$0, -72(%ebp)
	jne	.L404
	.loc 1 1410 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_var_volatile@PLT
.L404:
	.loc 1 1416 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L408
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L408
	cmpl	$0, 16(%ebp)
	jne	.L408
	.loc 1 1419 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1420 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L408:
	.loc 1 1424 0
	movl	12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L412
	.loc 1 1425 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$32, %edx
	movb	%dl, 34(%eax)
	jmp	.L414
.L412:
	.loc 1 1426 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L414
	.loc 1 1427 0
	movl	-28(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$32, %edx
	movb	%dl, 34(%eax)
.L414:
	.loc 1 1433 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L416
	cmpl	$0, 16(%ebp)
	jne	.L416
	.loc 1 1434 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L416:
	.loc 1 1440 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	jne	.L419
	.loc 1 1441 0
	movl	12(%ebp), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
.L419:
	.loc 1 1445 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L421
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
.L421:
	.loc 1 1447 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L425
	.loc 1 1449 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	%al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	35(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 35(%ecx)
	.loc 1 1450 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	35(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 35(%ecx)
	.loc 1 1451 0
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	shrb	%al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	36(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 36(%ecx)
	.loc 1 1452 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	35(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 35(%ecx)
	.loc 1 1455 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	38(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 1456 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	38(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	jmp	.L425
.L377:
.LBE13:
	.loc 1 1462 0
	cmpl	$0, 16(%ebp)
	jne	.L425
	.loc 1 1464 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1465 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1466 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	9(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1467 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	9(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 9(%edx)
.L425:
	.loc 1 1471 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_weak@PLT
	.loc 1 1474 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L427
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	andl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1481 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1483 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L427
	.loc 1 1484 0
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movzbl	10(%edx), %eax
	andl	$-9, %eax
	movb	%al, 10(%edx)
.L427:
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L430
	.loc 1 1488 0
	cmpl	$0, 16(%ebp)
	jne	.L432
	.loc 1 1493 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1494 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 33(%edx)
.L432:
	.loc 1 1497 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1498 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L436
	.loc 1 1499 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	jmp	.L436
.L430:
	.loc 1 1504 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L437
	movl	12(%ebp), %eax
	movl	128(%eax), %eax
	testl	%eax, %eax
	je	.L437
	.loc 1 1505 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Resolve_Duplicate_Decls@PLT
.L437:
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1508 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L436:
	.loc 1 1511 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L440
	.loc 1 1517 0
	cmpl	$0, -84(%ebp)
	je	.L442
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L442
	.loc 1 1519 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L445
	.loc 1 1520 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L445:
	.loc 1 1523 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-9, %eax
	movb	%al, 33(%edx)
	.loc 1 1524 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	orl	$2, %eax
	movb	%al, 37(%edx)
	.loc 1 1517 0
	jmp	.L447
.L442:
	.loc 1 1530 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L448
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L450
.L448:
	.loc 1 1532 0
	movl	8(%ebp), %eax
	movl	120(%eax), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
.L450:
	.loc 1 1534 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L451
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L453
.L451:
	movl	$1, -112(%ebp)
	jmp	.L454
.L453:
	movl	$0, -112(%ebp)
.L454:
	movzbl	-112(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	37(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	37(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
.L447:
	.loc 1 1538 0
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L455
	.loc 1 1542 0
	cmpl	$0, -88(%ebp)
	je	.L457
	cmpl	$0, -84(%ebp)
	je	.L459
.L457:
	.loc 1 1544 0
	cmpl	$0, 16(%ebp)
	jne	.L455
	.loc 1 1546 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1547 0
	movl	12(%ebp), %edx
	movzbl	36(%edx), %eax
	andl	$-13, %eax
	movb	%al, 36(%edx)
	.loc 1 1542 0
	jmp	.L455
.L459:
	.loc 1 1554 0
	movl	12(%ebp), %eax
	movzbl	36(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movl	8(%ebp), %ecx
	andl	$3, %eax
	leal	0(,%eax,4), %edx
	movzbl	36(%ecx), %eax
	andl	$-13, %eax
	orl	%edx, %eax
	movb	%al, 36(%ecx)
	.loc 1 1555 0
	movl	12(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L455:
	.loc 1 1560 0
	cmpl	$0, -84(%ebp)
	jne	.L462
	.loc 1 1562 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 1566 0
	cmpl	$0, 16(%ebp)
	jne	.L464
	.loc 1 1567 0
	movl	12(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L464:
	.loc 1 1568 0
	movl	12(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 1569 0
	movl	12(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	.loc 1 1570 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	.loc 1 1571 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1575 0
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L440
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L440
	.loc 1 1577 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$8, %edx
	movb	%dl, 33(%eax)
	.loc 1 1578 0
	cmpl	$0, 16(%ebp)
	je	.L469
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L471
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L473
.L471:
	movl	12(%ebp), %edx
	movl	%edx, -104(%ebp)
.L473:
	movl	-104(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L474
.L469:
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -108(%ebp)
.L474:
	movl	8(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, 72(%eax)
	jmp	.L440
.L462:
	.loc 1 1588 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L440
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L440
	.loc 1 1590 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$8, %edx
	movb	%dl, 33(%eax)
.L440:
	.loc 1 1593 0
	cmpl	$0, 16(%ebp)
	je	.L477
	.loc 1 1596 0
	movl	12(%ebp), %eax
	movl	128(%eax), %eax
	testl	%eax, %eax
	jne	.L479
	.loc 1 1597 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	Create_ST_For_Tree@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 128(%eax)
.L479:
	.loc 1 1598 0
	movl	12(%ebp), %eax
	movl	128(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 128(%eax)
	.loc 1 1600 0
	movl	$0, -128(%ebp)
	jmp	.L209
.L477:
.LBB14:
	.loc 1 1608 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1610 0
	movl	12(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1611 0
	movl	12(%ebp), %eax
	movl	132(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1615 0
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1616 0
	movl	12(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1619 0
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	movl	$132, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 1622 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1624 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 128(%edx)
	.loc 1 1625 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 128(%edx)
	.loc 1 1626 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 132(%edx)
	.loc 1 1627 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 132(%edx)
	.loc 1 1632 0
	movl	-12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	39(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	39(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 1634 0
	movl	-8(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	37(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	37(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 37(%ecx)
.LBE14:
	.loc 1 1641 0
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 84(%eax)
	.loc 1 1646 0
	movl	12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L481
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L483
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L481
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L481
.L483:
	.loc 1 1650 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
.L481:
	.loc 1 1652 0
	movl	$1, -128(%ebp)
.L209:
	movl	-128(%ebp), %eax
	.loc 1 1653 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	duplicate_decls, .-duplicate_decls
	.section	.rodata
	.align 4
.LC46:
	.string	"declaration of `%s' shadows a parameter"
	.align 4
.LC47:
	.string	"declaration of `%s' shadows a symbol from the parameter list"
.LC48:
	.string	"a parameter"
.LC49:
	.string	"a previous local"
.LC50:
	.string	"a global declaration"
	.text
	.type	warn_if_shadowing, @function
warn_if_shadowing:
.LFB33:
	.loc 1 1661 0
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
	.loc 1 1664 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L512
	.loc 1 1667 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1670 0
	cmpl	$0, 12(%ebp)
	je	.L490
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	jne	.L490
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L490
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	chain_member@PLT
	testl	%eax, %eax
	je	.L490
	.loc 1 1679 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L495
	.loc 1 1680 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L512
.L495:
	.loc 1 1683 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1670 0
	jmp	.L512
.L490:
	.loc 1 1687 0
	movl	warn_shadow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L500
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L512
.L500:
	.loc 1 1693 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L502
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L502
	jmp	.L512
.L502:
	.loc 1 1701 0
	cmpl	$0, 12(%ebp)
	je	.L505
	.loc 1 1703 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L507
	.loc 1 1704 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	shadow_warning@PLT
	jmp	.L512
.L507:
	.loc 1 1706 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	shadow_warning@PLT
	jmp	.L512
.L505:
	.loc 1 1708 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	-8(%ebp), %eax
	movl	40(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L512
	.loc 1 1710 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	shadow_warning@PLT
.L512:
	.loc 1 1713 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	warn_if_shadowing, .-warn_if_shadowing
	.section	.rodata
	.align 4
.LC51:
	.string	"nested extern declaration of `%s'"
	.align 4
.LC52:
	.string	"`%s' used prior to declaration"
	.align 4
.LC53:
	.string	"`%s' was declared implicitly `extern' and later `static'"
	.align 4
.LC54:
	.string	"type mismatch with previous external decl"
	.align 4
.LC55:
	.string	"previous external decl of `%s'"
	.align 4
.LC56:
	.string	"type mismatch with previous implicit declaration"
	.align 4
.LC57:
	.string	"previous implicit declaration of `%s'"
	.align 4
.LC58:
	.string	"`%s' was previously implicitly declared to return `int'"
	.align 4
.LC59:
	.string	"`%s' was declared `extern' and later `static'"
	.align 4
.LC60:
	.string	"extern declaration of `%s' doesn't match global one"
	.text
.globl pushdecl
	.type	pushdecl, @function
pushdecl:
.LFB34:
	.loc 1 1726 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$80, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1728 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1729 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1732 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L514
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	jne	.L514
	.loc 1 1733 0
	movl	$8, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 120(%eax)
.L514:
	.loc 1 1736 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1740 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L517
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L519
.L517:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L519
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L519
	.loc 1 1742 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
.L519:
	.loc 1 1744 0
	cmpl	$0, -40(%ebp)
	je	.L522
.LBB15:
	.loc 1 1746 0
	movl	$0, -32(%ebp)
	.loc 1 1748 0
	movl	warn_nested_externs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L524
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L524
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	je	.L524
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L524
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L524
	.loc 1 1754 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L524:
	.loc 1 1757 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name_current_level@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1758 0
	cmpl	$0, -44(%ebp)
	jne	.L530
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L530
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L530
	.loc 1 1760 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1763 0
	cmpl	$0, -44(%ebp)
	je	.L534
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L536
.L534:
	.loc 1 1766 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -44(%ebp)
.L536:
	.loc 1 1767 0
	movl	$1, -32(%ebp)
.L530:
	.loc 1 1769 0
	cmpl	$0, -44(%ebp)
	je	.L537
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L537
	.loc 1 1772 0
	movl	$0, -44(%ebp)
	.loc 1 1773 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L537:
	.loc 1 1778 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L540
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L540
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L543
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L540
.L543:
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L540
	.loc 1 1787 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 1789 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %esi
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %edx
	movl	%ecx, 12(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_file_and_line@PLT
	.loc 1 1794 0
	movl	-40(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$8, %eax
	movb	%al, 9(%edx)
.L540:
	.loc 1 1797 0
	cmpl	$0, -44(%ebp)
	je	.L546
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	duplicate_decls
	testl	%eax, %eax
	je	.L546
	.loc 1 1799 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L549
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	-44(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	9(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1804 0
	movl	-44(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L551
.L549:
	.loc 1 1806 0
	movl	-44(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L551
.L546:
	.loc 1 1852 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L552
	.loc 1 1854 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L554
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L552
	.loc 1 1857 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 60(%edx)
	jmp	.L552
.L554:
	.loc 1 1859 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L552
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L552
.LBB16:
	.loc 1 1862 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1863 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 1864 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build_type_copy@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1865 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 1866 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 10(%edx)
	.loc 1 1867 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
.L552:
.LBE16:
	.loc 1 1874 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L560
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L562
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L560
.L562:
.LBB17:
	.loc 1 1879 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L564
	.loc 1 1881 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L566
.L564:
	.loc 1 1883 0
	movl	$0, -24(%ebp)
.L566:
	.loc 1 1885 0
	cmpl	$0, -24(%ebp)
	je	.L560
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L560
	movl	-24(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L560
	.loc 1 1889 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	.loc 1 1891 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
.L560:
.LBE17:
	.loc 1 1898 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L570
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L570
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L570
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L570
	.loc 1 1904 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 1905 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %edx
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L570:
	.loc 1 1911 0
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L575
	.loc 1 1917 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L577
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L577
	.loc 1 1918 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$8, %edx
	movb	%dl, 10(%eax)
.L577:
	.loc 1 1920 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1923 0
	movl	-40(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 1926 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L580
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L580
	.loc 1 1928 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	movl	-40(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L580:
	.loc 1 1931 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L583
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L583
	.loc 1 1933 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$4, %edx
	movb	%dl, 9(%eax)
.L583:
	.loc 1 1936 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L586
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L588
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L586
.L588:
	.loc 1 1941 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L586:
	.loc 1 1946 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L605
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L605
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L605
	.loc 1 1950 0
	cmpl	$0, -44(%ebp)
	je	.L594
	movl	-44(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L594
	jmp	.L605
.L594:
	.loc 1 1953 0
	cmpl	$0, -44(%ebp)
	je	.L597
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L597
	jmp	.L605
.L597:
	.loc 1 1957 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L605
	.loc 1 1959 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L601
	.loc 1 1961 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L605
	.loc 1 1962 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L605
.L601:
	.loc 1 1966 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L605
.L575:
.LBB18:
	.loc 1 1973 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1974 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1976 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 1980 0
	cmpl	$0, -20(%ebp)
	jne	.L606
	cmpl	$0, -16(%ebp)
	je	.L606
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L606
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L606
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L606
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L606
	.loc 1 1988 0
	movl	-40(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L613
	.loc 1 1990 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L606
.L613:
	.loc 1 1995 0
	movl	-16(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L615
	.loc 1 1997 0
	movl	8(%ebp), %eax
	movl	120(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 1999 0
	movl	-16(%ebp), %eax
	movzbl	33(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	33(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 2000 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L617
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L619
.L617:
	movl	$0, -60(%ebp)
.L619:
	movl	8(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 68(%eax)
	.loc 1 2002 0
	movl	-16(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 2003 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	.loc 1 2004 0
	movl	-16(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 2005 0
	movl	-16(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 2006 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	9(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2007 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
.L615:
	.loc 1 2011 0
	movl	-16(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L620
	.loc 1 2013 0
	movl	-16(%ebp), %eax
	movzbl	36(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movl	8(%ebp), %ecx
	andl	$3, %eax
	leal	0(,%eax,4), %edx
	movzbl	36(%ecx), %eax
	andl	$-13, %eax
	orl	%edx, %eax
	movb	%al, 36(%ecx)
	.loc 1 2014 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L620:
	.loc 1 2017 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L606
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L606
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L606
	.loc 1 2020 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L606:
	.loc 1 2039 0
	cmpl	$0, -20(%ebp)
	jne	.L625
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L625
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L625
	.loc 1 2043 0
	cmpl	$0, -16(%ebp)
	jne	.L629
	.loc 1 2044 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$8, %edx
	movb	%dl, 10(%eax)
.L629:
	.loc 1 2053 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L625
	.loc 1 2054 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 60(%edx)
.L625:
	.loc 1 2057 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_if_shadowing
	.loc 1 2061 0
	cmpl	$0, -20(%ebp)
	je	.L605
	.loc 1 2062 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
.L605:
.LBE18:
	.loc 1 2069 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L522
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L522
.LBB19:
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2074 0
	jmp	.L635
.L636:
	.loc 1 2075 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L635:
	.loc 1 2074 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L636
	.loc 1 2076 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L638
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L522
.L638:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L640
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L522
.L640:
	.loc 1 2080 0
	movl	-36(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 32(%eax)
.L522:
.LBE19:
.LBE15:
	.loc 1 2086 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2087 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2089 0
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
.L551:
	movl	-64(%ebp), %eax
	.loc 1 2090 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	pushdecl, .-pushdecl
.globl pushdecl_top_level
	.type	pushdecl_top_level, @function
pushdecl_top_level:
.LFB35:
	.loc 1 2097 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$20, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2099 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2101 0
	movl	global_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, current_binding_level@GOTOFF(%ebx)
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2103 0
	movl	-8(%ebp), %eax
	movl	%eax, current_binding_level@GOTOFF(%ebx)
	.loc 1 2104 0
	movl	-12(%ebp), %eax
	.loc 1 2105 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	pushdecl_top_level, .-pushdecl_top_level
	.section	.rodata
	.align 4
.LC61:
	.string	"function `%s' was previously declared within a block"
	.text
.globl implicitly_declare
	.type	implicitly_declare, @function
implicitly_declare:
.LFB36:
	.loc 1 2113 0
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
	.loc 1 2115 0
	movl	$0, -12(%ebp)
	.loc 1 2127 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2131 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L646
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L646
	.loc 1 2132 0
	movl	$1, -12(%ebp)
.L646:
	.loc 1 2135 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2137 0
	movl	-16(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 2138 0
	movl	-16(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 2141 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 2145 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 2148 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L649
	.loc 1 2149 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L649:
	.loc 1 2151 0
	movl	-16(%ebp), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 2153 0
	cmpl	$0, -8(%ebp)
	je	.L651
	.loc 1 2154 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	implicit_decl_warning@PLT
	jmp	.L653
.L651:
	.loc 1 2155 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L653
	cmpl	$0, -12(%ebp)
	je	.L653
	.loc 1 2156 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L653:
	.loc 1 2162 0
	movl	-16(%ebp), %eax
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	gen_aux_info_record@PLT
	.loc 1 2165 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 2167 0
	movl	-16(%ebp), %eax
	.loc 1 2168 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	implicitly_declare, .-implicitly_declare
	.section	.rodata
	.align 4
.LC62:
	.string	"implicit declaration of function `%s'"
	.text
.globl implicit_decl_warning
	.type	implicit_decl_warning, @function
implicit_decl_warning:
.LFB37:
	.loc 1 2173 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$36, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2174 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2175 0
	movl	mesg_implicit_function_declaration@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L658
	.loc 1 2176 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L662
.L658:
	.loc 1 2177 0
	movl	mesg_implicit_function_declaration@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L662
	.loc 1 2178 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L662:
	.loc 1 2179 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	implicit_decl_warning, .-implicit_decl_warning
	.type	redeclaration_error_message, @function
redeclaration_error_message:
.LFB38:
	.loc 1 2190 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	subl	$4, %esp
.LCFI89:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2191 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L664
	.loc 1 2195 0
	movl	12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L666
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L668
.L666:
	.loc 1 2196 0
	movl	$0, -4(%ebp)
	jmp	.L669
.L668:
	.loc 1 2197 0
	movl	$1, -4(%ebp)
	jmp	.L669
.L664:
	.loc 1 2199 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L670
	.loc 1 2205 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L672
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L672
	movl	12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L675
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L675
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L672
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L672
.L675:
	.loc 1 2211 0
	movl	$1, -4(%ebp)
	jmp	.L669
.L672:
	.loc 1 2212 0
	movl	$0, -4(%ebp)
	jmp	.L669
.L670:
	.loc 1 2214 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L679
	.loc 1 2218 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L681
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L683
.L681:
	.loc 1 2219 0
	movl	$0, -4(%ebp)
	jmp	.L669
.L683:
	.loc 1 2221 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L684
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L684
	.loc 1 2222 0
	movl	$1, -4(%ebp)
	jmp	.L669
.L684:
	.loc 1 2225 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$1, %edx
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L687
	.loc 1 2226 0
	movl	$3, -4(%ebp)
	jmp	.L669
.L687:
	.loc 1 2227 0
	movl	$0, -4(%ebp)
	jmp	.L669
.L679:
	.loc 1 2229 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L689
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L689
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L689
	.loc 1 2231 0
	movl	$0, -4(%ebp)
	jmp	.L669
.L689:
	.loc 1 2238 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L693
	movl	12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L695
.L693:
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	%eax, %edx
	jne	.L695
	.loc 1 2240 0
	movl	$2, -4(%ebp)
	jmp	.L669
.L695:
	.loc 1 2241 0
	movl	$0, -4(%ebp)
.L669:
	movl	-4(%ebp), %eax
	.loc 1 2243 0
	leave
	ret
.LFE38:
	.size	redeclaration_error_message, .-redeclaration_error_message
	.section	.rodata
	.align 4
.LC63:
	.string	"label %s referenced outside of any function"
	.text
.globl lookup_label
	.type	lookup_label, @function
lookup_label:
.LFB39:
	.loc 1 2252 0
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
	.loc 1 2253 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2255 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L699
	.loc 1 2257 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2259 0
	movl	$0, -24(%ebp)
	jmp	.L701
.L699:
	.loc 1 2263 0
	cmpl	$0, -8(%ebp)
	je	.L702
	.loc 1 2266 0
	movl	-8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L704
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L704
	.loc 1 2268 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	shadow_label@PLT
	movl	%eax, -24(%ebp)
	jmp	.L701
.L704:
	.loc 1 2269 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L701
.L702:
	.loc 1 2272 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	build_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2275 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 2277 0
	movl	-8(%ebp), %eax
	movb	$0, 32(%eax)
	.loc 1 2281 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2282 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2284 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 2286 0
	movl	named_labels@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, named_labels@GOTOFF(%ebx)
	.loc 1 2288 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L701:
	movl	-24(%ebp), %eax
	.loc 1 2289 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	lookup_label, .-lookup_label
	.section	.rodata
	.align 4
.LC64:
	.string	"duplicate label declaration `%s'"
	.align 4
.LC65:
	.string	"this is a previous declaration"
	.text
.globl shadow_label
	.type	shadow_label, @function
shadow_label:
.LFB40:
	.loc 1 2302 0
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
	.loc 1 2303 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2305 0
	cmpl	$0, -12(%ebp)
	je	.L709
.LBB20:
	.loc 1 2311 0
	movl	named_labels@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L711
.L712:
	.loc 1 2312 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L713
	.loc 1 2314 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2316 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_with_decl@PLT
	.loc 1 2319 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_label@PLT
	movl	%eax, -24(%ebp)
	jmp	.L715
.L713:
	.loc 1 2311 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L711:
	cmpl	$0, -8(%ebp)
	jne	.L712
	.loc 1 2322 0
	movl	shadowed_labels@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, shadowed_labels@GOTOFF(%ebx)
	.loc 1 2323 0
	movl	8(%ebp), %edx
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 48(%edx)
.L709:
.LBE20:
	.loc 1 2326 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_label@PLT
	movl	%eax, -24(%ebp)
.L715:
	movl	-24(%ebp), %eax
	.loc 1 2327 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	shadow_label, .-shadow_label
	.section	.rodata
	.align 4
.LC66:
	.string	"traditional C lacks a separate namespace for labels, identifier `%s' conflicts"
.LC67:
	.string	"duplicate label `%s'"
	.text
.globl define_label
	.type	define_label, @function
define_label:
.LFB41:
	.loc 1 2338 0
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
	.loc 1 2339 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_label@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2342 0
	cmpl	$0, -8(%ebp)
	je	.L719
	movl	-8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L719
	.loc 1 2344 0
	movl	shadowed_labels@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, shadowed_labels@GOTOFF(%ebx)
	.loc 1 2345 0
	movl	16(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 2346 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_label@PLT
	movl	%eax, -8(%ebp)
.L719:
	.loc 1 2349 0
	movl	warn_traditional@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L722
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L722
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 2350 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_file_and_line@PLT
.L722:
	.loc 1 2354 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L726
	.loc 1 2356 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_file_and_line@PLT
	.loc 1 2358 0
	movl	$0, -24(%ebp)
	jmp	.L728
.L726:
	.loc 1 2363 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 2365 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2366 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2367 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L728:
	movl	-24(%ebp), %eax
	.loc 1 2369 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	define_label, .-define_label
.globl getdecls
	.type	getdecls, @function
getdecls:
.LFB42:
	.loc 1 2378 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2379 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	.loc 1 2380 0
	popl	%ebp
	ret
.LFE42:
	.size	getdecls, .-getdecls
.globl gettags
	.type	gettags, @function
gettags:
.LFB43:
	.loc 1 2386 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2387 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	.loc 1 2388 0
	popl	%ebp
	ret
.LFE43:
	.size	gettags, .-gettags
	.type	storedecls, @function
storedecls:
.LFB44:
	.loc 1 2397 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2398 0
	movl	current_binding_level@GOTOFF(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2399 0
	popl	%ebp
	ret
.LFE44:
	.size	storedecls, .-storedecls
	.type	storetags, @function
storetags:
.LFB45:
	.loc 1 2406 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2407 0
	movl	current_binding_level@GOTOFF(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2408 0
	popl	%ebp
	ret
.LFE45:
	.size	storetags, .-storetags
	.type	lookup_tag, @function
lookup_tag:
.LFB46:
	.loc 1 2426 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$20, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2428 0
	movl	$1, -12(%ebp)
	.loc 1 2430 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L739
.L740:
.LBB21:
	.loc 1 2433 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L741
.L742:
	.loc 1 2435 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L743
	.loc 1 2437 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L745
	.loc 1 2440 0
	movl	pending_invalid_xref@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2441 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	pending_invalid_xref_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2442 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	pending_invalid_xref_line@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2447 0
	cmpl	$0, -12(%ebp)
	je	.L745
	.loc 1 2448 0
	call	pending_xref_error@PLT
.L745:
	.loc 1 2450 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L748
.L743:
	.loc 1 2433 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L741:
	cmpl	$0, -8(%ebp)
	jne	.L742
	.loc 1 2453 0
	movl	-16(%ebp), %eax
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	.L750
	.loc 1 2455 0
	cmpl	$0, 20(%ebp)
	je	.L752
	.loc 1 2456 0
	movl	$0, -24(%ebp)
	jmp	.L748
.L752:
	.loc 1 2457 0
	movl	$0, -12(%ebp)
.L750:
.LBE21:
	.loc 1 2430 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L739:
	cmpl	$0, -16(%ebp)
	jne	.L740
	.loc 1 2460 0
	movl	$0, -24(%ebp)
.L748:
	movl	-24(%ebp), %eax
	.loc 1 2461 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	lookup_tag, .-lookup_tag
	.section	.rodata
	.align 4
.LC68:
	.string	"`%s' defined as wrong kind of tag"
	.text
.globl pending_xref_error
	.type	pending_xref_error, @function
pending_xref_error:
.LFB47:
	.loc 1 2470 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%esi
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$16, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2471 0
	movl	pending_invalid_xref@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L757
	.loc 1 2472 0
	movl	pending_invalid_xref@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	pending_invalid_xref_line@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	pending_invalid_xref_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	error_with_file_and_line@PLT
.L757:
	.loc 1 2476 0
	movl	pending_invalid_xref@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2477 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE47:
	.size	pending_xref_error, .-pending_xref_error
	.type	lookup_tag_reverse, @function
lookup_tag_reverse:
.LFB48:
	.loc 1 2485 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	subl	$20, %esp
.LCFI121:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2488 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L761
.L762:
.LBB22:
	.loc 1 2491 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L763
.L764:
	.loc 1 2493 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L765
	.loc 1 2494 0
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L767
.L765:
	.loc 1 2491 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L763:
	cmpl	$0, -4(%ebp)
	jne	.L764
.LBE22:
	.loc 1 2488 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L761:
	cmpl	$0, -8(%ebp)
	jne	.L762
	.loc 1 2497 0
	movl	$0, -20(%ebp)
.L767:
	movl	-20(%ebp), %eax
	.loc 1 2498 0
	leave
	ret
.LFE48:
	.size	lookup_tag_reverse, .-lookup_tag_reverse
.globl lookup_name
	.type	lookup_name, @function
lookup_name:
.LFB49:
	.loc 1 2508 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	subl	$16, %esp
.LCFI124:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2511 0
	movl	current_binding_level@GOTOFF(%ecx), %edx
	movl	global_binding_level@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	je	.L772
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L772
	.loc 1 2513 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2511 0
	jmp	.L775
.L772:
	.loc 1 2515 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -4(%ebp)
.L775:
	.loc 1 2516 0
	movl	-4(%ebp), %eax
	.loc 1 2517 0
	leave
	ret
.LFE49:
	.size	lookup_name, .-lookup_name
.globl lookup_name_current_level
	.type	lookup_name_current_level, @function
lookup_name_current_level:
.LFB50:
	.loc 1 2524 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	subl	$20, %esp
.LCFI127:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2527 0
	movl	current_binding_level@GOTOFF(%ecx), %edx
	movl	global_binding_level@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	jne	.L778
	.loc 1 2528 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L780
.L778:
	.loc 1 2530 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L781
	.loc 1 2531 0
	movl	$0, -20(%ebp)
	jmp	.L780
.L781:
	.loc 1 2533 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L783
.L784:
	.loc 1 2534 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L785
	.loc 1 2533 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L783:
	cmpl	$0, -4(%ebp)
	jne	.L784
.L785:
	.loc 1 2537 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L780:
	movl	-20(%ebp), %eax
	.loc 1 2538 0
	leave
	ret
.LFE50:
	.size	lookup_name_current_level, .-lookup_name_current_level
	.section	.rodata
.LC69:
	.string	"_Bool"
	.text
.globl c_init_decl_processing
	.type	c_init_decl_processing, @function
c_init_decl_processing:
.LFB51:
	.loc 1 2547 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%esi
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$32, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2552 0
	call	c_parse_init@PLT
	.loc 1 2554 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2555 0
	movl	$0, named_labels@GOTOFF(%ebx)
	.loc 1 2556 0
	movl	$0, current_binding_level@GOTOFF(%ebx)
	.loc 1 2557 0
	movl	$0, free_binding_level@GOTOFF(%ebx)
	.loc 1 2560 0
	movl	$0, (%esp)
	call	pushlevel@PLT
	.loc 1 2561 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	%eax, global_binding_level@GOTOFF(%ebx)
	.loc 1 2563 0
	movl	flag_signed_char@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_common_tree_nodes@PLT
	.loc 1 2565 0
	call	c_common_nodes_and_builtins@PLT
	.loc 1 2567 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 60(%eax)
	.loc 1 2568 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 64(%eax)
	.loc 1 2569 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 68(%eax)
	.loc 1 2571 0
	movl	$8, (%esp)
	call	make_unsigned_type@PLT
	movl	%eax, %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 72(%eax)
	.loc 1 2572 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movb	$12, 8(%eax)
	.loc 1 2573 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %esi
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 68(%esi)
	.loc 1 2574 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	68(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2575 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	$1, %eax
	movw	%ax, 36(%edx)
	.loc 1 2576 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %esi
	movl	$5, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 2578 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 80(%eax)
	.loc 1 2579 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2580 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	%edx, 76(%eax)
	.loc 1 2581 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	76(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 2583 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2584 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2585 0
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	112(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2589 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	pedantic_lvalues@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2591 0
	movl	make_fname_decl@GOT(%ebx), %edx
	leal	c_make_fname_decl@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 2592 0
	call	start_fname_decls@PLT
	.loc 1 2593 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE51:
	.size	c_init_decl_processing, .-c_init_decl_processing
	.type	c_make_fname_decl, @function
c_make_fname_decl:
.LFB52:
	.loc 1 2607 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%edi
.LCFI135:
	pushl	%esi
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$60, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2608 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fname_as_string@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2610 0
	movl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2612 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, %esi
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2616 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2618 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 2620 0
	movl	-28(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 2621 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 2622 0
	movl	-28(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 2624 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2625 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2626 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 2628 0
	movl	-28(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 2630 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_decl@PLT
	.loc 1 2632 0
	movl	-28(%ebp), %eax
	.loc 1 2633 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	c_make_fname_decl, .-c_make_fname_decl
.globl builtin_function
	.type	builtin_function, @function
builtin_function:
.LFB53:
	.loc 1 2652 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%esi
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$32, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2653 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2654 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 2655 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 2656 0
	cmpl	$0, 24(%ebp)
	je	.L793
	.loc 1 2657 0
	movl	-12(%ebp), %esi
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, 76(%esi)
.L793:
	.loc 1 2658 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 2659 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 2660 0
	movl	-12(%ebp), %ecx
	movl	20(%ebp), %eax
	andl	$3, %eax
	andl	$3, %eax
	leal	0(,%eax,4), %edx
	movzbl	36(%ecx), %eax
	andl	$-13, %eax
	orl	%edx, %eax
	movb	%al, 36(%ecx)
	.loc 1 2661 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 2665 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L795
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L797
.L795:
	.loc 1 2666 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$1, %edx
	movb	%dl, 38(%eax)
.L797:
	.loc 1 2669 0
	cmpl	$0, 28(%ebp)
	je	.L798
	.loc 1 2670 0
	movl	$16, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	jmp	.L800
.L798:
	.loc 1 2672 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
.L800:
	.loc 1 2674 0
	movl	-12(%ebp), %eax
	.loc 1 2675 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	builtin_function, .-builtin_function
.globl c_insert_default_attributes
	.type	c_insert_default_attributes, @function
c_insert_default_attributes:
.LFB54:
	.loc 1 2683 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$4, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2684 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L805
	.loc 1 2686 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_insert_default_attributes@PLT
.L805:
	.loc 1 2687 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	c_insert_default_attributes, .-c_insert_default_attributes
.globl shadow_tag
	.type	shadow_tag, @function
shadow_tag:
.LFB55:
	.loc 1 2700 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$20, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2701 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	shadow_tag_warned@PLT
	.loc 1 2702 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	shadow_tag, .-shadow_tag
	.section	.rodata
	.align 4
.LC70:
	.string	"unnamed struct/union that defines no instances"
	.align 4
.LC71:
	.string	"useless keyword or type name in empty declaration"
	.align 4
.LC72:
	.string	"two types specified in one empty declaration"
.LC73:
	.string	"empty declaration"
	.text
.globl shadow_tag_warned
	.type	shadow_tag_warned, @function
shadow_tag_warned:
.LFB56:
	.loc 1 2710 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$52, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2711 0
	movl	$0, -28(%ebp)
	.loc 1 2715 0
	movl	pending_invalid_xref@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2719 0
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_specs_attrs@PLT
	.loc 1 2721 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L809
.L810:
.LBB23:
	.loc 1 2723 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2724 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2726 0
	cmpl	$21, -16(%ebp)
	je	.L811
	cmpl	$22, -16(%ebp)
	je	.L811
	cmpl	$11, -16(%ebp)
	jne	.L814
.L811:
.LBB24:
	.loc 1 2730 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_tag_reverse
	movl	%eax, -12(%ebp)
	.loc 1 2733 0
	addl	$1, -28(%ebp)
	.loc 1 2735 0
	cmpl	$0, -12(%ebp)
	jne	.L815
	.loc 1 2737 0
	cmpl	$1, 12(%ebp)
	je	.L822
	cmpl	$11, -16(%ebp)
	je	.L822
	.loc 1 2740 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 2741 0
	movl	$1, 12(%ebp)
	jmp	.L822
.L815:
	.loc 1 2746 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_tag
	movl	%eax, -8(%ebp)
	.loc 1 2748 0
	cmpl	$0, -8(%ebp)
	jne	.L822
	.loc 1 2750 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2751 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushtag@PLT
	.loc 1 2726 0
	jmp	.L822
.L814:
.LBE24:
	.loc 1 2757 0
	cmpl	$0, 12(%ebp)
	jne	.L822
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L822
	.loc 1 2759 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 2760 0
	movl	$2, 12(%ebp)
.L822:
.LBE23:
	.loc 1 2721 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L809:
	cmpl	$0, -24(%ebp)
	jne	.L810
	.loc 1 2765 0
	cmpl	$1, -28(%ebp)
	jle	.L826
	.loc 1 2766 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L826:
	.loc 1 2768 0
	cmpl	$1, 12(%ebp)
	je	.L831
	.loc 1 2770 0
	cmpl	$0, -28(%ebp)
	jne	.L831
	.loc 1 2771 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L831:
	.loc 1 2773 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	shadow_tag_warned, .-shadow_tag_warned
	.section	.rodata
	.align 4
.LC74:
	.string	"ISO C90 does not support `static' or type qualifiers in parameter array declarators"
	.align 4
.LC75:
	.string	"ISO C90 does not support `[*]' array declarators"
	.align 4
.LC76:
	.string	"GCC does not yet properly implement `[*]' array declarators"
	.text
.globl build_array_declarator
	.type	build_array_declarator, @function
build_array_declarator:
.LFB57:
	.loc 1 2793 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$36, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2795 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$44, (%esp)
	call	build_nt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2796 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2797 0
	cmpl	$0, 16(%ebp)
	setne	%al
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 2798 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L833
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L833
	.loc 1 2800 0
	cmpl	$0, 16(%ebp)
	jne	.L836
	cmpl	$0, 12(%ebp)
	je	.L838
.L836:
	.loc 1 2801 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L838:
	.loc 1 2802 0
	cmpl	$0, 20(%ebp)
	je	.L833
	.loc 1 2803 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L833:
	.loc 1 2805 0
	cmpl	$0, 20(%ebp)
	je	.L840
	.loc 1 2806 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L840:
	.loc 1 2807 0
	movl	-8(%ebp), %eax
	.loc 1 2808 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	build_array_declarator, .-build_array_declarator
	.section	.rodata
	.align 4
.LC77:
	.string	"static or type qualifiers in abstract declarator"
	.text
.globl set_array_declarator_type
	.type	set_array_declarator_type, @function
set_array_declarator_type:
.LFB58:
	.loc 1 2822 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$4, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2823 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2824 0
	cmpl	$0, 16(%ebp)
	je	.L844
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L846
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L844
.L846:
	.loc 1 2825 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L844:
	.loc 1 2826 0
	movl	8(%ebp), %eax
	.loc 1 2827 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	set_array_declarator_type, .-set_array_declarator_type
.globl groktypename
	.type	groktypename, @function
groktypename:
.LFB59:
	.loc 1 2834 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$36, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2837 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L850
	.loc 1 2838 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L852
.L850:
	.loc 1 2840 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	split_specs_attrs@PLT
	.loc 1 2842 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, 8(%ebp)
	.loc 1 2845 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 2847 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L852:
	movl	-24(%ebp), %eax
	.loc 1 2848 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	groktypename, .-groktypename
.globl groktypename_in_parm_context
	.type	groktypename_in_parm_context, @function
groktypename_in_parm_context:
.LFB60:
	.loc 1 2855 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	subl	$24, %esp
.LCFI170:
	.loc 1 2856 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L855
	.loc 1 2857 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L857
.L855:
	.loc 1 2858 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, -4(%ebp)
.L857:
	movl	-4(%ebp), %eax
	.loc 1 2861 0
	leave
	ret
.LFE60:
	.size	groktypename_in_parm_context, .-groktypename_in_parm_context
	.section	.rodata
.LC78:
	.string	"deprecated"
.LC79:
	.string	"`%s' is usually a function"
	.align 4
.LC80:
	.string	"typedef `%s' is initialized (use __typeof__ instead)"
	.align 4
.LC81:
	.string	"function `%s' is initialized like a variable"
.LC82:
	.string	"parameter `%s' is initialized"
	.align 4
.LC83:
	.string	"variable-sized object may not be initialized"
	.align 4
.LC84:
	.string	"variable `%s' has initializer but incomplete type"
	.align 4
.LC85:
	.string	"elements of array `%s' have incomplete type"
	.align 4
.LC86:
	.string	"inline function `%s' given attribute noinline"
	.text
.globl start_decl
	.type	start_decl, @function
start_decl:
.LFB61:
	.loc 1 2883 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$36, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2889 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L860
	.loc 1 2890 0
	movl	$1, deprecated_state@GOTOFF(%ebx)
.L860:
	.loc 1 2892 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, -12(%ebp)
	.loc 1 2895 0
	movl	$0, deprecated_state@GOTOFF(%ebx)
	.loc 1 2897 0
	movl	warn_main@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L862
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L862
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L862
	.loc 1 2899 0
	movl	-12(%ebp), %edx
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L862:
	.loc 1 2901 0
	cmpl	$0, 16(%ebp)
	je	.L866
	.loc 1 2905 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$34, -24(%ebp)
	je	.L870
	cmpl	$36, -24(%ebp)
	je	.L871
	cmpl	$31, -24(%ebp)
	je	.L869
	jmp	.L868
.L870:
	.loc 1 2908 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2910 0
	movl	$0, 16(%ebp)
	.loc 1 2911 0
	jmp	.L866
.L869:
	.loc 1 2914 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2916 0
	movl	$0, 16(%ebp)
	.loc 1 2917 0
	jmp	.L866
.L871:
	.loc 1 2921 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2923 0
	movl	$0, 16(%ebp)
	.loc 1 2924 0
	jmp	.L866
.L868:
	.loc 1 2932 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L872
	.loc 1 2933 0
	movl	$0, 16(%ebp)
	jmp	.L866
.L872:
	.loc 1 2934 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L874
	.loc 1 2938 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L876
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L866
.L876:
	.loc 1 2941 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2942 0
	movl	$0, 16(%ebp)
	jmp	.L866
.L874:
	.loc 1 2945 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L879
	.loc 1 2947 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2949 0
	movl	$0, 16(%ebp)
	jmp	.L866
.L879:
	.loc 1 2951 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L866
	.loc 1 2953 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2955 0
	movl	$0, 16(%ebp)
.L866:
	.loc 1 2959 0
	cmpl	$0, 16(%ebp)
	je	.L882
	.loc 1 2969 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 2970 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L884
	.loc 1 2971 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L884:
	.loc 1 2976 0
	movl	-12(%ebp), %eax
	movl	global_trees@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 68(%eax)
.L882:
	.loc 1 2982 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L886
	.loc 1 2983 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	-12(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	gen_aux_info_record@PLT
.L886:
	.loc 1 2996 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L888
	cmpl	$0, 16(%ebp)
	jne	.L888
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L888
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L888
	movl	flag_no_common@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L888
	.loc 1 3001 0
	movl	-12(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$64, %edx
	movb	%dl, 34(%eax)
.L888:
	.loc 1 3004 0
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 3007 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L894
	.loc 1 3008 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_apply_pragma_weak@PLT
.L894:
	.loc 1 3010 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L896
	movl	-12(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L896
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L896
	movl	-12(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L896
	.loc 1 3014 0
	movl	-12(%ebp), %edx
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L896:
	.loc 1 3019 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3022 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L901
	movl	-8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	.L901
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L901
	.loc 1 3029 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L905
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L905
	.loc 1 3031 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
	.loc 1 3029 0
	jmp	.L901
.L905:
	.loc 1 3032 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L901
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L901
	.loc 1 3034 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
.L901:
	.loc 1 3037 0
	movl	-8(%ebp), %eax
	.loc 1 3038 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	start_decl, .-start_decl
	.local	eh_initialized_p.17239
	.comm	eh_initialized_p.17239,1,1
	.section	.rodata
	.align 4
.LC87:
	.string	"initializer fails to determine size of `%s'"
.LC88:
	.string	"array size missing in `%s'"
	.align 4
.LC89:
	.string	"zero or negative size array `%s'"
	.align 4
.LC90:
	.string	"storage size of `%s' isn't known"
	.align 4
.LC91:
	.string	"storage size of `%s' isn't constant"
	.align 4
.LC92:
	.string	"ignoring asm-specifier for non-static local variable `%s'"
.LC93:
	.string	"c-decl init"
.LC94:
	.string	"cleanup"
.LC95:
	.string	"__gcc_personality_v0"
	.text
.globl finish_decl
	.type	finish_decl, @function
finish_decl:
.LFB62:
	.loc 1 3049 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$100, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3050 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3051 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 3052 0
	movl	$0, -40(%ebp)
	.loc 1 3055 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L912
	.loc 1 3056 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_apply_renaming_pragma@PLT
	movl	%eax, 16(%ebp)
.L912:
	.loc 1 3057 0
	cmpl	$0, 16(%ebp)
	je	.L914
	.loc 1 3058 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
.L914:
	.loc 1 3061 0
	cmpl	$0, 12(%ebp)
	je	.L916
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L916
	.loc 1 3062 0
	movl	$0, 12(%ebp)
.L916:
	.loc 1 3065 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L919
	.loc 1 3066 0
	movl	$0, 12(%ebp)
.L919:
	.loc 1 3068 0
	cmpl	$0, 12(%ebp)
	je	.L921
	.loc 1 3069 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	store_init_value@PLT
.L921:
	.loc 1 3072 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L923
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L923
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L923
.LBB25:
	.loc 1 3081 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L927
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L929
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L929
	movl	$1, -72(%ebp)
	jmp	.L932
.L929:
	movl	$0, -72(%ebp)
.L932:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L933
.L927:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
.L933:
	movl	-76(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3083 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_array_type@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3086 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 3088 0
	cmpl	$1, -32(%ebp)
	jne	.L934
	.loc 1 3089 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L936
.L934:
	.loc 1 3091 0
	cmpl	$2, -32(%ebp)
	jne	.L937
	.loc 1 3093 0
	cmpl	$0, -36(%ebp)
	je	.L939
	.loc 1 3094 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L936
.L939:
	.loc 1 3101 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L936
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L936
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L936
	.loc 1 3102 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$1, %edx
	movb	%dl, 33(%eax)
	jmp	.L936
.L937:
	.loc 1 3108 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L936
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L936
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L936
	.loc 1 3110 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L936:
	.loc 1 3112 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L923:
.LBE25:
	.loc 1 3115 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L948
	.loc 1 3117 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L950
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L950
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L950
	.loc 1 3119 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L950:
	.loc 1 3121 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L954
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L954
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L957
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L959
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L961
.L959:
	movl	$1, -64(%ebp)
	jmp	.L962
.L961:
	movl	$0, -64(%ebp)
.L962:
	movzbl	-64(%ebp), %eax
	movb	%al, -65(%ebp)
	jmp	.L963
.L957:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	sete	-65(%ebp)
.L963:
	cmpb	$0, -65(%ebp)
	je	.L954
	.loc 1 3138 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 3139 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L954:
	.loc 1 3142 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L965
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L967
.L965:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L967
	.loc 1 3145 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L969
	.loc 1 3146 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	jmp	.L967
.L969:
	.loc 1 3148 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L967:
	.loc 1 3151 0
	movl	-48(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L948
	.loc 1 3152 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
.L948:
	.loc 1 3158 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L972
	cmpl	$0, -40(%ebp)
	je	.L972
	.loc 1 3160 0
	movl	8(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$12, %al
	jne	.L975
.LBB26:
	.loc 1 3162 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	built_in_decls@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3163 0
	movl	$0, -24(%ebp)
	.loc 1 3164 0
	movl	-28(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 3165 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 3167 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$29, %eax
	jne	.L977
	.loc 1 3168 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	init_block_move_fn@PLT
	jmp	.L979
.L977:
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$32, %eax
	jne	.L979
	.loc 1 3170 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	init_block_clear_fn@PLT
.L979:
	.loc 1 3177 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	$23, %eax
	movl	%eax, -80(%ebp)
	cmpl	$9, -80(%ebp)
	ja	.L981
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L988@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L988:
	.long	.L982@GOTOFF
	.long	.L983@GOTOFF
	.long	.L981@GOTOFF
	.long	.L981@GOTOFF
	.long	.L981@GOTOFF
	.long	.L981@GOTOFF
	.long	.L984@GOTOFF
	.long	.L985@GOTOFF
	.long	.L986@GOTOFF
	.long	.L987@GOTOFF
	.text
.L984:
	.loc 1 3179 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L981
.L985:
	.loc 1 3180 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L981
.L983:
	.loc 1 3181 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L981
.L986:
	.loc 1 3182 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	56(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L981
.L987:
	.loc 1 3183 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L981
.L982:
	.loc 1 3184 0
	movl	libfunc_table@GOT(%ebx), %eax
	leal	68(%eax), %eax
	movl	%eax, -24(%ebp)
.L981:
	.loc 1 3187 0
	cmpl	$0, -24(%ebp)
	je	.L975
	.loc 1 3188 0
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L990
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L992
.L990:
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
.L992:
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
.L975:
.LBE26:
	.loc 1 3190 0
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 3191 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
.L972:
	.loc 1 3198 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L993
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L995
.L993:
	.loc 1 3201 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L996
	.loc 1 3202 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L996:
	.loc 1 3204 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L998
	.loc 1 3206 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1000
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1002
.L1000:
	.loc 1 3211 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 34(%eax)
.L1002:
	.loc 1 3212 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1003
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1005
.L1003:
	movl	$1, -56(%ebp)
	jmp	.L1006
.L1005:
	movl	$0, -56(%ebp)
.L1006:
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	jmp	.L1007
.L998:
	.loc 1 3220 0
	cmpl	$0, -40(%ebp)
	je	.L1008
	.loc 1 3225 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1010
	.loc 1 3226 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$2, %edx
	movb	%dl, 38(%eax)
.L1010:
	.loc 1 3233 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1012
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1012
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1012
	.loc 1 3236 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	.loc 1 3233 0
	jmp	.L1008
.L1012:
	.loc 1 3239 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
.L1008:
	.loc 1 3242 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1007
	.loc 1 3243 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_decl_stmt@PLT
.L1007:
	.loc 1 3246 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L995
	.loc 1 3250 0
	cmpl	$0, -44(%ebp)
	je	.L995
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L995
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L995
	.loc 1 3254 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 3256 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L995
	.loc 1 3257 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
.L995:
	.loc 1 3263 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1022
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1022
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1022
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1022
	.loc 1 3268 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 3269 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Initialize_Decl@PLT
.L1022:
	.loc 1 3273 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1027
	.loc 1 3276 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1029
	.loc 1 3277 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L1029:
	.loc 1 3278 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L1027:
	.loc 1 3282 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1031
	.loc 1 3283 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	40(%edx), %eax
	orl	$1, %eax
	movb	%al, 40(%edx)
.L1031:
	.loc 1 3287 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Decl@PLT
	.loc 1 3291 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1033
	.loc 1 3292 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	40(%edx), %eax
	andl	$-2, %eax
	movb	%al, 40(%edx)
.L1033:
	.loc 1 3298 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1035
	.loc 1 3299 0
	call	get_pending_sizes@PLT
.L1035:
	.loc 1 3302 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1044
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1044
.LBB27:
	.loc 1 3304 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3305 0
	cmpl	$0, -20(%ebp)
	je	.L1044
.LBB28:
	.loc 1 3309 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3310 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3314 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3315 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3316 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_function_call@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3319 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 3322 0
	movl	flag_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1041
	movzbl	eh_initialized_p.17239@GOTOFF(%ebx), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1041
	.loc 1 3324 0
	movb	$1, eh_initialized_p.17239@GOTOFF(%ebx)
	.loc 1 3325 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_one_libfunc@PLT
	movl	%eax, %edx
	movl	libfunc_table@GOT(%ebx), %eax
	movl	%edx, 76(%eax)
	.loc 1 3329 0
	call	using_eh_for_cleanups@PLT
.L1041:
	.loc 1 3332 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$175, (%esp)
	call	build_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
.L1044:
.LBE28:
.LBE27:
	.loc 1 3335 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	finish_decl, .-finish_decl
.globl push_parm_decl
	.type	push_parm_decl, @function
push_parm_decl:
.LFB63:
	.loc 1 3345 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%esi
.LCFI181:
	pushl	%ebx
.LCFI182:
	subl	$32, %esp
.LCFI183:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3347 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3349 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3351 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, -16(%ebp)
	.loc 1 3353 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 3366 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3368 0
	movl	immediate_size_expand@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3370 0
	movl	current_binding_level@GOTOFF(%ebx), %esi
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	36(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 36(%esi)
	.loc 1 3374 0
	movl	-16(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	finish_decl@PLT
	.loc 1 3375 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE63:
	.size	push_parm_decl, .-push_parm_decl
.globl clear_parm_order
	.type	clear_parm_order, @function
clear_parm_order:
.LFB64:
	.loc 1 3383 0
	pushl	%ebp
.LCFI184:
	movl	%esp, %ebp
.LCFI185:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3384 0
	movl	current_binding_level@GOTOFF(%ecx), %eax
	movl	$0, 36(%eax)
	.loc 1 3385 0
	popl	%ebp
	ret
.LFE64:
	.size	clear_parm_order, .-clear_parm_order
	.section	.rodata
	.type	__FUNCTION__.17557, @object
	.size	__FUNCTION__.17557, 23
__FUNCTION__.17557:
	.string	"build_compound_literal"
.LC96:
	.string	"__compound_literal"
.LC97:
	.string	"%s.%d"
	.text
.globl build_compound_literal
	.type	build_compound_literal, @function
build_compound_literal:
.LFB65:
	.loc 1 3396 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$68, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3396 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 3400 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3403 0
	movl	-28(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 3404 0
	movl	-28(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-9, %eax
	movb	%al, 10(%edx)
	.loc 1 3405 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	sete	%al
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 3406 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 3407 0
	movl	-28(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 3408 0
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3409 0
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-28(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 3410 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	store_init_value@PLT
	.loc 1 3412 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1050
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1050
.LBB29:
	.loc 1 3414 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_array_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3415 0
	cmpl	$0, -16(%ebp)
	je	.L1050
	.loc 1 3416 0
	leal	__FUNCTION__.17557@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3416, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1050:
.LBE29:
	.loc 1 3419 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3420 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L1054
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1056
.L1054:
	.loc 1 3421 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1057
.L1056:
	.loc 1 3423 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$158, (%esp)
	call	build_stmt@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3424 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$174, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3425 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 3427 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 3429 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1058
.LBB30:
	.loc 1 3436 0
	subl	$48, %esp
	leal	16(%esp), %edx
	movl	%edx, -48(%ebp)
	movl	-48(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	var_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3437 0
	movl	var_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	var_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3438 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 3439 0
	movl	-28(%ebp), %edx
	movzbl	34(%edx), %eax
	orl	$-128, %eax
	movb	%al, 34(%edx)
	.loc 1 3440 0
	movl	-28(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$-128, %eax
	movb	%al, 35(%edx)
	.loc 1 3441 0
	movl	-28(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 3442 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 3443 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L1058:
.LBE30:
	.loc 1 3446 0
	movl	-24(%ebp), %edx
	movl	%edx, -52(%ebp)
.L1057:
	movl	-52(%ebp), %eax
	.loc 1 3447 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1061
	call	__stack_chk_fail_local
.L1061:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE65:
	.size	build_compound_literal, .-build_compound_literal
.globl complete_array_type
	.type	complete_array_type, @function
complete_array_type:
.LFB66:
	.loc 1 3458 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$36, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3459 0
	movl	$0, -20(%ebp)
	.loc 1 3460 0
	movl	$0, -16(%ebp)
	.loc 1 3462 0
	cmpl	$0, 12(%ebp)
	je	.L1063
	.loc 1 3466 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1065
.LBB31:
	.loc 1 3469 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3470 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-12(%ebp)
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -20(%ebp)
	jmp	.L1063
.L1065:
.LBE31:
	.loc 1 3473 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1067
.LBB32:
	.loc 1 3475 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3476 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3477 0
	jmp	.L1069
.L1070:
	.loc 1 3479 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1071
	.loc 1 3480 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1073
.L1071:
	.loc 1 3482 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
.L1073:
	.loc 1 3477 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1069:
	cmpl	$0, -8(%ebp)
	jne	.L1070
	.loc 1 3485 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -20(%ebp)
	jmp	.L1063
.L1067:
.LBE32:
	.loc 1 3490 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L1075
	.loc 1 3491 0
	movl	$1, -16(%ebp)
.L1075:
	.loc 1 3494 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -20(%ebp)
.L1063:
	.loc 1 3498 0
	cmpl	$0, -20(%ebp)
	jne	.L1077
	.loc 1 3500 0
	cmpl	$0, 16(%ebp)
	je	.L1079
	.loc 1 3501 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -20(%ebp)
.L1079:
	.loc 1 3502 0
	movl	$2, -16(%ebp)
.L1077:
	.loc 1 3505 0
	cmpl	$0, -20(%ebp)
	je	.L1081
	.loc 1 3507 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 3508 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1081
	.loc 1 3509 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
.L1081:
	.loc 1 3514 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 3516 0
	movl	-16(%ebp), %eax
	.loc 1 3517 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	complete_array_type, .-complete_array_type
	.type	flexible_array_type_p, @function
flexible_array_type_p:
.LFB67:
	.loc 1 3525 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	subl	$28, %esp
.LCFI196:
	.loc 1 3527 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$21, -24(%ebp)
	je	.L1087
	cmpl	$22, -24(%ebp)
	je	.L1088
	jmp	.L1086
.L1087:
	.loc 1 3530 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3531 0
	cmpl	$0, -4(%ebp)
	jne	.L1092
	.loc 1 3532 0
	movl	$0, -20(%ebp)
	jmp	.L1091
.L1093:
	.loc 1 3534 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1092:
	.loc 1 3533 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1093
	.loc 1 3535 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1095
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1095
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1095
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1095
	.loc 1 3539 0
	movl	$1, -20(%ebp)
	jmp	.L1091
.L1095:
	.loc 1 3540 0
	movl	$0, -20(%ebp)
	jmp	.L1091
.L1088:
	.loc 1 3542 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1100
.L1101:
	.loc 1 3544 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	flexible_array_type_p
	testb	%al, %al
	je	.L1102
	.loc 1 3545 0
	movl	$1, -20(%ebp)
	jmp	.L1091
.L1102:
	.loc 1 3542 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1100:
	cmpl	$0, -4(%ebp)
	jne	.L1101
	.loc 1 3547 0
	movl	$0, -20(%ebp)
	jmp	.L1091
.L1086:
	.loc 1 3549 0
	movl	$0, -20(%ebp)
.L1091:
	movl	-20(%ebp), %eax
	.loc 1 3551 0
	leave
	ret
.LFE67:
	.size	flexible_array_type_p, .-flexible_array_type_p
	.local	already.17760
	.comm	already.17760,4,4
	.section	.rodata
	.type	__FUNCTION__.17741, @object
	.size	__FUNCTION__.17741, 15
__FUNCTION__.17741:
	.string	"grokdeclarator"
.LC98:
	.string	"type name"
	.align 4
.LC99:
	.string	"`long long long' is too long for GCC"
	.align 4
.LC100:
	.string	"ISO C90 does not support `long long'"
.LC101:
	.string	"duplicate `%s'"
.LC102:
	.string	"`__thread' before `extern'"
.LC103:
	.string	"`__thread' before `static'"
	.align 4
.LC104:
	.string	"two or more data types in declaration of `%s'"
	.align 4
.LC105:
	.string	"`%s' fails to be a typedef or built in type"
	.align 4
.LC106:
	.string	"type defaults to `int' in declaration of `%s'"
	.align 4
.LC107:
	.string	"both long and short specified for `%s'"
	.align 4
.LC108:
	.string	"long or short specified with char for `%s'"
	.align 4
.LC109:
	.string	"long or short specified with floating type for `%s'"
	.align 4
.LC110:
	.string	"the only valid combination is `long double'"
	.align 4
.LC111:
	.string	"both signed and unsigned specified for `%s'"
	.align 4
.LC112:
	.string	"long, short, signed or unsigned invalid for `%s'"
	.align 4
.LC113:
	.string	"long, short, signed or unsigned used invalidly for `%s'"
.LC114:
	.string	"complex invalid for `%s'"
	.align 4
.LC115:
	.string	"ISO C90 does not support complex types"
	.align 4
.LC116:
	.string	"ISO C does not support plain `complex' meaning `double complex'"
	.align 4
.LC117:
	.string	"ISO C does not support complex integer types"
.LC118:
	.string	"duplicate `const'"
.LC119:
	.string	"duplicate `restrict'"
.LC120:
	.string	"duplicate `volatile'"
	.align 4
.LC121:
	.string	"multiple storage classes in declaration of `%s'"
	.align 4
.LC122:
	.string	"function definition declared `auto'"
	.align 4
.LC123:
	.string	"function definition declared `register'"
	.align 4
.LC124:
	.string	"function definition declared `typedef'"
	.align 4
.LC125:
	.string	"function definition declared `__thread'"
	.align 4
.LC126:
	.string	"storage class specified for structure field `%s'"
	.align 4
.LC127:
	.string	"storage class specified for parameter `%s'"
	.align 4
.LC128:
	.string	"storage class specified for typename"
	.align 4
.LC129:
	.string	"`%s' initialized and declared `extern'"
	.align 4
.LC130:
	.string	"`%s' has both `extern' and initializer"
	.align 4
.LC131:
	.string	"top-level declaration of `%s' specifies `auto'"
	.align 4
.LC132:
	.string	"nested function `%s' declared `extern'"
	.align 4
.LC133:
	.string	"function-scope `%s' implicitly auto and declared `__thread'"
	.align 4
.LC134:
	.string	"static or type qualifiers in non-parameter array declarator"
	.align 4
.LC135:
	.string	"declaration of `%s' as array of voids"
	.align 4
.LC136:
	.string	"declaration of `%s' as array of functions"
	.align 4
.LC137:
	.string	"invalid use of structure with flexible array member"
	.align 4
.LC138:
	.string	"size of array `%s' has non-integer type"
	.align 4
.LC139:
	.string	"ISO C forbids zero-size array `%s'"
	.align 4
.LC140:
	.string	"size of array `%s' is negative"
	.align 4
.LC141:
	.string	"ISO C90 forbids array `%s' whose size can't be evaluated"
	.align 4
.LC142:
	.string	"ISO C90 forbids variable-size array `%s'"
	.align 4
.LC143:
	.string	"size of array `%s' is too large"
	.align 4
.LC144:
	.string	"ISO C90 does not support flexible array members"
	.align 4
.LC145:
	.string	"array type has incomplete element type"
	.align 4
.LC146:
	.string	"`%s' declared as function returning a function"
	.align 4
.LC147:
	.string	"`%s' declared as function returning an array"
	.align 4
.LC148:
	.string	"ISO C forbids qualified void function return type"
	.align 4
.LC149:
	.string	"type qualifiers ignored on function return type"
	.align 4
.LC150:
	.string	"ISO C forbids qualified function types"
	.align 4
.LC151:
	.string	"invalid type modifier within pointer declarator"
	.align 4
.LC152:
	.string	"ISO C forbids const or volatile function types"
	.align 4
.LC153:
	.string	"variable or field `%s' declared void"
	.align 4
.LC154:
	.string	"attributes in parameter array declarator ignored"
	.align 4
.LC155:
	.string	"invalid type modifier within array declarator"
	.align 4
.LC156:
	.string	"field `%s' declared as a function"
	.align 4
.LC157:
	.string	"field `%s' has incomplete type"
	.align 4
.LC158:
	.string	"invalid storage class for function `%s'"
	.align 4
.LC159:
	.string	"`noreturn' function returns non-void value"
.LC160:
	.string	"cannot inline function `main'"
	.align 4
.LC161:
	.string	"variable `%s' declared `inline'"
	.align 4
.LC162:
	.string	"thread-local storage not supported for this target"
	.text
	.type	grokdeclarator, @function
grokdeclarator:
.LFB68:
	.loc 1 3588 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%esi
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$400, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3589 0
	movl	$0, -228(%ebp)
	.loc 1 3591 0
	movl	$0, -232(%ebp)
	.loc 1 3592 0
	movl	$0, -220(%ebp)
	.loc 1 3596 0
	movl	$0, -204(%ebp)
	.loc 1 3598 0
	movl	$0, -196(%ebp)
	.loc 1 3599 0
	movl	$0, -192(%ebp)
	.loc 1 3600 0
	movl	$0, -188(%ebp)
	.loc 1 3602 0
	movl	$0, -184(%ebp)
	.loc 1 3603 0
	movl	$0, -180(%ebp)
	.loc 1 3604 0
	movl	$0, -176(%ebp)
	.loc 1 3605 0
	movl	$0, -172(%ebp)
	.loc 1 3606 0
	movl	$0, -168(%ebp)
	.loc 1 3607 0
	movl	$0, -164(%ebp)
	.loc 1 3608 0
	movl	$0, -160(%ebp)
	.loc 1 3610 0
	movl	$0, -156(%ebp)
	.loc 1 3612 0
	movl	$0, -148(%ebp)
	.loc 1 3613 0
	movl	$0, -144(%ebp)
	.loc 1 3614 0
	movl	$0, -140(%ebp)
	.loc 1 3615 0
	movl	$0, -136(%ebp)
	.loc 1 3616 0
	movl	$0, -132(%ebp)
	.loc 1 3617 0
	movl	$0, -128(%ebp)
	.loc 1 3618 0
	movl	$0, -124(%ebp)
	.loc 1 3619 0
	movl	$0, -120(%ebp)
	.loc 1 3620 0
	movl	$0, -116(%ebp)
	.loc 1 3622 0
	cmpl	$4, 16(%ebp)
	jne	.L1107
	.loc 1 3623 0
	movl	$1, -136(%ebp)
	movl	$3, 16(%ebp)
.L1107:
	.loc 1 3625 0
	cmpl	$1, 16(%ebp)
	jne	.L1109
	.loc 1 3626 0
	movl	$1, -144(%ebp)
	movl	$0, 16(%ebp)
.L1109:
.LBB33:
	.loc 1 3631 0
	movl	8(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 3632 0
	movl	$0, -152(%ebp)
	.loc 1 3634 0
	jmp	.L1723
.L1112:
	.loc 1 3635 0
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -368(%ebp)
	cmpl	$42, -368(%ebp)
	je	.L1116
	cmpl	$42, -368(%ebp)
	ja	.L1117
	cmpl	$1, -368(%ebp)
	je	.L1114
	cmpl	$3, -368(%ebp)
	je	.L1115
	jmp	.L1113
.L1117:
	cmpl	$44, -368(%ebp)
	je	.L1116
	cmpl	$54, -368(%ebp)
	je	.L1116
	jmp	.L1113
.L1116:
	.loc 1 3640 0
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -140(%ebp)
	.loc 1 3641 0
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 3642 0
	jmp	.L1111
.L1115:
	.loc 1 3645 0
	movl	-112(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 3646 0
	jmp	.L1111
.L1114:
	.loc 1 3649 0
	movl	-112(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 3650 0
	movl	$0, -112(%ebp)
	.loc 1 3651 0
	jmp	.L1111
.L1113:
	.loc 1 3654 0
	leal	__FUNCTION__.17741@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3654, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1111:
.L1723:
	.loc 1 3634 0
	cmpl	$0, -112(%ebp)
	jne	.L1112
	.loc 1 3656 0
	cmpl	$0, -152(%ebp)
	jne	.L1119
	.loc 1 3657 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
.L1119:
.LBE33:
	.loc 1 3663 0
	cmpl	$0, -144(%ebp)
	je	.L1121
	cmpl	$54, -140(%ebp)
	je	.L1121
	.loc 1 3664 0
	movl	$0, -364(%ebp)
	jmp	.L1124
.L1121:
	.loc 1 3673 0
	cmpl	$0, 16(%ebp)
	jne	.L1125
	cmpl	$0, -144(%ebp)
	jne	.L1125
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L1125
	.loc 1 3675 0
	movl	$2, 16(%ebp)
.L1125:
	.loc 1 3691 0
	movl	12(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L1129
.L1130:
.LBB34:
	.loc 1 3693 0
	movl	-224(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 3697 0
	cmpl	$0, -108(%ebp)
	je	.L1131
	movl	-108(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1131
	.loc 1 3699 0
	movl	deprecated_state@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	je	.L1131
	.loc 1 3700 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_deprecated_use@PLT
.L1131:
	.loc 1 3703 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$132, %eax
	movl	(%eax), %eax
	cmpl	-108(%ebp), %eax
	jne	.L1135
	.loc 1 3704 0
	movl	$1, -196(%ebp)
.L1135:
	.loc 1 3705 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$136, %eax
	movl	(%eax), %eax
	cmpl	-108(%ebp), %eax
	jne	.L1137
	.loc 1 3706 0
	movl	$1, -192(%ebp)
.L1137:
	.loc 1 3708 0
	movl	-108(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1139
	movl	-108(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1139
.LBB35:
	.loc 1 3710 0
	movl	-108(%ebp), %eax
	movzbl	31(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	.loc 1 3711 0
	movl	-104(%ebp), %eax
	cmpl	$32, %eax
	jg	.L1139
	.loc 1 3718 0
	movl	-104(%ebp), %eax
	movl	%eax, -372(%ebp)
	cmpl	$13, -372(%ebp)
	jb	.L1143
	cmpl	$14, -372(%ebp)
	jbe	.L1144
	cmpl	$17, -372(%ebp)
	ja	.L1143
	.loc 1 3722 0
	movl	$1, -164(%ebp)
.L1144:
	.loc 1 3726 0
	movl	-104(%ebp), %eax
	movl	%eax, -160(%ebp)
.L1143:
	.loc 1 3733 0
	cmpl	$2, -104(%ebp)
	jne	.L1146
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1146
	.loc 1 3735 0
	cmpl	$0, -220(%ebp)
	je	.L1149
	.loc 1 3736 0
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1157
.L1149:
	.loc 1 3739 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1152
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1152
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1152
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1152
	.loc 1 3741 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1152:
	.loc 1 3742 0
	movl	$1, -220(%ebp)
	.loc 1 3733 0
	jmp	.L1157
.L1146:
	.loc 1 3745 0
	movl	-104(%ebp), %ecx
	movl	-228(%ebp), %eax
	sarl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1157
	.loc 1 3747 0
	cmpl	$3, -104(%ebp)
	je	.L1159
	cmpl	$9, -104(%ebp)
	je	.L1159
	cmpl	$12, -104(%ebp)
	jne	.L1162
.L1159:
	.loc 1 3749 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1157
	.loc 1 3750 0
	movl	-108(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 3747 0
	jmp	.L1157
.L1162:
	.loc 1 3753 0
	movl	-108(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1157:
	.loc 1 3758 0
	cmpl	$21, -104(%ebp)
	jne	.L1165
	movl	-228(%ebp), %eax
	andl	$17, %eax
	testl	%eax, %eax
	je	.L1165
	.loc 1 3762 0
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1168
	.loc 1 3763 0
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1165
.L1168:
	.loc 1 3765 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1165:
	.loc 1 3768 0
	movl	-104(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, -228(%ebp)
	.loc 1 3769 0
	jmp	.L1170
.L1139:
.LBE35:
	.loc 1 3772 0
	movl	-232(%ebp), %eax
	testl	%eax, %eax
	je	.L1171
	.loc 1 3773 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1170
.L1171:
	.loc 1 3775 0
	movl	-108(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1173
	.loc 1 3777 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1170
	.loc 1 3781 0
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 3782 0
	movl	-108(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 3783 0
	movl	-108(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1170
.L1173:
	.loc 1 3787 0
	movl	-108(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1177
.LBB36:
	.loc 1 3789 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -100(%ebp)
	.loc 1 3790 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1170
	.loc 1 3792 0
	cmpl	$0, -100(%ebp)
	je	.L1181
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1183
.L1181:
	.loc 1 3793 0
	movl	-108(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3792 0
	jmp	.L1170
.L1183:
	.loc 1 3797 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 3798 0
	movl	-100(%ebp), %eax
	movl	%eax, -156(%ebp)
	jmp	.L1170
.L1177:
.LBE36:
	.loc 1 3801 0
	movl	-108(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1170
	.loc 1 3802 0
	movl	-108(%ebp), %eax
	movl	%eax, -232(%ebp)
.L1170:
.LBE34:
	.loc 1 3691 0
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
.L1129:
	cmpl	$0, -224(%ebp)
	jne	.L1130
	.loc 1 3808 0
	movl	-232(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 3809 0
	movl	-232(%ebp), %eax
	testl	%eax, %eax
	je	.L1186
	.loc 1 3810 0
	movl	-232(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
.L1186:
	.loc 1 3815 0
	movl	-232(%ebp), %eax
	testl	%eax, %eax
	jne	.L1188
	.loc 1 3817 0
	movl	-228(%ebp), %eax
	andl	$1049734, %eax
	testl	%eax, %eax
	jne	.L1190
	movl	-228(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1192
	cmpl	$0, 20(%ebp)
	jne	.L1190
.L1192:
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1190
	.loc 1 3828 0
	movl	warn_implicit_int@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1195
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1195
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1198
.L1195:
	cmpl	$0, -144(%ebp)
	je	.L1198
	.loc 1 3830 0
	movl	$1, warn_about_return_type@GOTOFF(%ebx)
	.loc 1 3828 0
	jmp	.L1190
.L1198:
	.loc 1 3831 0
	movl	warn_implicit_int@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1200
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1190
.L1200:
	.loc 1 3832 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_c99@PLT
.L1190:
	.loc 1 3838 0
	cmpl	$0, -164(%ebp)
	je	.L1202
	.loc 1 3839 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1188
.L1202:
	.loc 1 3843 0
	movl	$1, -188(%ebp)
	.loc 1 3844 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -232(%ebp)
.L1188:
	.loc 1 3855 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1204
	cmpl	$0, -220(%ebp)
	jne	.L1204
	movl	-232(%ebp), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1204
	.loc 1 3858 0
	andl	$-5, -228(%ebp)
	.loc 1 3859 0
	movl	global_trees@GOT(%ebx), %eax
	movl	104(%eax), %eax
	movl	%eax, -232(%ebp)
.L1204:
	.loc 1 3864 0
	movl	-228(%ebp), %eax
	andl	$1158, %eax
	testl	%eax, %eax
	je	.L1208
.LBB37:
	.loc 1 3867 0
	movl	$0, -96(%ebp)
	.loc 1 3869 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1210
	movl	-228(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1210
	.loc 1 3871 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3869 0
	jmp	.L1213
.L1210:
	.loc 1 3872 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1214
	movl	-228(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1216
.L1214:
	cmpl	$0, -192(%ebp)
	je	.L1216
	.loc 1 3875 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3872 0
	jmp	.L1213
.L1216:
	.loc 1 3876 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L1218
	movl	-228(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1220
.L1218:
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1220
.LBB38:
	.loc 1 3882 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3883 0
	movl	already.17760@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1213
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1213
	.loc 1 3885 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3886 0
	movl	$1, already.17760@GOTOFF(%ebx)
	.loc 1 3876 0
	jmp	.L1213
.L1220:
.LBE38:
	.loc 1 3889 0
	movl	-228(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L1225
	movl	-228(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1225
	.loc 1 3891 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3889 0
	jmp	.L1213
.L1225:
	.loc 1 3892 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1228
	.loc 1 3893 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1213
.L1228:
	.loc 1 3896 0
	movl	$1, -96(%ebp)
	.loc 1 3897 0
	cmpl	$0, -196(%ebp)
	jne	.L1213
	cmpl	$0, -188(%ebp)
	jne	.L1213
	cmpl	$0, -192(%ebp)
	jne	.L1213
	.loc 1 3899 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3901 0
	movl	$0, -96(%ebp)
.L1213:
	.loc 1 3906 0
	cmpl	$0, -96(%ebp)
	jne	.L1208
	.loc 1 3908 0
	andl	$-1159, -228(%ebp)
	.loc 1 3910 0
	movl	$0, -220(%ebp)
.L1208:
.LBE37:
	.loc 1 3914 0
	movl	-228(%ebp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1234
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1234
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1234
	.loc 1 3917 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3918 0
	andl	$-1048577, -228(%ebp)
.L1234:
	.loc 1 3923 0
	movl	-228(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L1238
	cmpl	$0, -136(%ebp)
	je	.L1240
	movl	flag_signed_bitfields@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1240
	cmpl	$0, -196(%ebp)
	jne	.L1243
	cmpl	$0, -188(%ebp)
	jne	.L1243
	cmpl	$0, -192(%ebp)
	jne	.L1243
	cmpl	$0, -156(%ebp)
	je	.L1243
	movl	-156(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1240
.L1243:
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1240
	movl	-228(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1240
.L1238:
	.loc 1 3933 0
	cmpl	$0, -220(%ebp)
	je	.L1249
	.loc 1 3939 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1249:
	.loc 1 3943 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1252
	.loc 1 3944 0
	movl	integer_types@GOT(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1252:
	.loc 1 3945 0
	movl	-228(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1254
	.loc 1 3946 0
	movl	integer_types@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1254:
	.loc 1 3947 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1256
	.loc 1 3948 0
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1256:
	.loc 1 3949 0
	cmpl	$0, -156(%ebp)
	je	.L1258
	.loc 1 3950 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_unsigned_type@PLT
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1258:
	.loc 1 3952 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 3923 0
	jmp	.L1260
.L1240:
	.loc 1 3954 0
	movl	-228(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L1261
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1261
	.loc 1 3956 0
	movl	integer_types@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 3954 0
	jmp	.L1260
.L1261:
	.loc 1 3957 0
	cmpl	$0, -220(%ebp)
	je	.L1264
	.loc 1 3963 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1264:
	.loc 1 3967 0
	movl	-228(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L1266
	.loc 1 3968 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1260
.L1266:
	.loc 1 3969 0
	movl	-228(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L1260
	.loc 1 3970 0
	movl	integer_types@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -232(%ebp)
.L1260:
	.loc 1 3972 0
	movl	-228(%ebp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1269
	.loc 1 3974 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1271
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1271
	.loc 1 3975 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1271:
	.loc 1 3981 0
	cmpl	$0, -188(%ebp)
	je	.L1274
	cmpl	$0, -220(%ebp)
	jne	.L1274
	movl	-228(%ebp), %eax
	andl	$1158, %eax
	testl	%eax, %eax
	jne	.L1274
	.loc 1 3986 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1278
	.loc 1 3987 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1278:
	.loc 1 3988 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 3981 0
	jmp	.L1269
.L1274:
	.loc 1 3990 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1280
	.loc 1 3992 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1282
	.loc 1 3993 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1282:
	.loc 1 3994 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1269
.L1280:
	.loc 1 3996 0
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1284
	.loc 1 3997 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1269
.L1284:
	.loc 1 3998 0
	movl	global_trees@GOT(%ebx), %eax
	movl	100(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1286
	.loc 1 3999 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1269
.L1286:
	.loc 1 4000 0
	movl	global_trees@GOT(%ebx), %eax
	movl	104(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1288
	.loc 1 4001 0
	movl	global_trees@GOT(%ebx), %eax
	movl	92(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L1269
.L1288:
	.loc 1 4004 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1290
	.loc 1 4005 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1290:
	.loc 1 4006 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex_type@PLT
	movl	%eax, -232(%ebp)
.L1269:
	.loc 1 4015 0
	movl	-228(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-232(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -216(%ebp)
	.loc 1 4016 0
	movl	-228(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-232(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -212(%ebp)
	.loc 1 4017 0
	movl	-228(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-232(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -208(%ebp)
	.loc 1 4018 0
	movl	-228(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -200(%ebp)
	.loc 1 4020 0
	movl	-228(%ebp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -184(%ebp)
	.loc 1 4021 0
	movl	-228(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -180(%ebp)
	.loc 1 4022 0
	movl	-228(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -176(%ebp)
	.loc 1 4023 0
	movl	-228(%ebp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -172(%ebp)
	.loc 1 4024 0
	movl	-228(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -168(%ebp)
	.loc 1 4026 0
	cmpl	$1, -216(%ebp)
	jle	.L1292
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1292
	.loc 1 4027 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1292:
	.loc 1 4028 0
	cmpl	$1, -212(%ebp)
	jle	.L1295
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1295
	.loc 1 4029 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1295:
	.loc 1 4030 0
	cmpl	$1, -208(%ebp)
	jle	.L1298
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1298
	.loc 1 4031 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1298:
	.loc 1 4032 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1301
	movl	-232(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-232(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-232(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -360(%ebp)
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1303
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1303
	movl	$1, -356(%ebp)
	jmp	.L1306
.L1303:
	movl	$0, -356(%ebp)
.L1306:
	movl	-356(%ebp), %eax
	sall	$3, %eax
	orl	-360(%ebp), %eax
	testl	%eax, %eax
	je	.L1301
	.loc 1 4033 0
	movl	-232(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -232(%ebp)
.L1301:
	.loc 1 4034 0
	cmpl	$0, -216(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -352(%ebp)
	cmpl	$0, -212(%ebp)
	je	.L1308
	movl	$4, -348(%ebp)
	jmp	.L1310
.L1308:
	movl	$0, -348(%ebp)
.L1310:
	movl	-352(%ebp), %eax
	orl	-348(%ebp), %eax
	movl	%eax, -344(%ebp)
	cmpl	$0, -208(%ebp)
	je	.L1311
	movl	$2, -340(%ebp)
	jmp	.L1313
.L1311:
	movl	$0, -340(%ebp)
.L1313:
	movl	-344(%ebp), %edx
	orl	-340(%ebp), %edx
	movl	%edx, -336(%ebp)
	cmpl	$0, -184(%ebp)
	je	.L1314
	movl	$16, -332(%ebp)
	jmp	.L1316
.L1314:
	movl	$0, -332(%ebp)
.L1316:
	movl	-336(%ebp), %ecx
	orl	-332(%ebp), %ecx
	movl	%ecx, -328(%ebp)
	cmpl	$0, -180(%ebp)
	je	.L1317
	movl	$32, -324(%ebp)
	jmp	.L1319
.L1317:
	movl	$0, -324(%ebp)
.L1319:
	movl	-328(%ebp), %eax
	orl	-324(%ebp), %eax
	movl	%eax, -320(%ebp)
	cmpl	$0, -176(%ebp)
	je	.L1320
	movl	$64, -316(%ebp)
	jmp	.L1322
.L1320:
	movl	$0, -316(%ebp)
.L1322:
	movl	-320(%ebp), %edx
	orl	-316(%ebp), %edx
	movl	%edx, -312(%ebp)
	cmpl	$0, -172(%ebp)
	je	.L1323
	movl	$128, -308(%ebp)
	jmp	.L1325
.L1323:
	movl	$0, -308(%ebp)
.L1325:
	movl	-312(%ebp), %ecx
	orl	-308(%ebp), %ecx
	movl	%ecx, -304(%ebp)
	cmpl	$0, -168(%ebp)
	je	.L1326
	movl	$256, -300(%ebp)
	jmp	.L1328
.L1326:
	movl	$0, -300(%ebp)
.L1328:
	movl	-304(%ebp), %eax
	orl	-300(%ebp), %eax
	movl	%eax, -204(%ebp)
.LBB39:
	.loc 1 4049 0
	movl	$0, -92(%ebp)
	.loc 1 4051 0
	movl	-228(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1329
	addl	$1, -92(%ebp)
.L1329:
	.loc 1 4052 0
	movl	-228(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1331
	addl	$1, -92(%ebp)
.L1331:
	.loc 1 4053 0
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1333
	addl	$1, -92(%ebp)
.L1333:
	.loc 1 4054 0
	movl	-228(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1335
	addl	$1, -92(%ebp)
.L1335:
	.loc 1 4055 0
	movl	-228(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1337
	addl	$1, -92(%ebp)
.L1337:
	.loc 1 4058 0
	movl	-228(%ebp), %eax
	andl	$2097169, %eax
	cmpl	$2097152, %eax
	jne	.L1339
	.loc 1 4061 0
	addl	$1, -92(%ebp)
.L1339:
	.loc 1 4066 0
	cmpl	$1, -92(%ebp)
	jle	.L1341
	.loc 1 4067 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1724
.L1341:
	.loc 1 4068 0
	cmpl	$0, -144(%ebp)
	je	.L1344
	movl	-228(%ebp), %eax
	andl	$2099296, %eax
	testl	%eax, %eax
	je	.L1344
	.loc 1 4075 0
	movl	-228(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1347
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1349
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1347
.L1349:
	.loc 1 4077 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1347:
	.loc 1 4078 0
	movl	-228(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1351
	.loc 1 4079 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1351:
	.loc 1 4080 0
	movl	-228(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1353
	.loc 1 4081 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1353:
	.loc 1 4082 0
	movl	-228(%ebp), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L1355
	.loc 1 4083 0
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1355:
	.loc 1 4084 0
	andl	$-2099297, -228(%ebp)
	.loc 1 4068 0
	jmp	.L1724
.L1344:
	.loc 1 4087 0
	cmpl	$0, 16(%ebp)
	je	.L1357
	cmpl	$0, -92(%ebp)
	jle	.L1357
	.loc 1 4089 0
	cmpl	$2, 16(%ebp)
	jne	.L1360
	movl	-228(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1360
	jmp	.L1724
.L1360:
	.loc 1 4093 0
	movl	16(%ebp), %eax
	movl	%eax, -376(%ebp)
	cmpl	$2, -376(%ebp)
	je	.L1365
	cmpl	$3, -376(%ebp)
	je	.L1366
	jmp	.L1364
.L1366:
	.loc 1 4096 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4098 0
	jmp	.L1367
.L1365:
	.loc 1 4100 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4101 0
	jmp	.L1367
.L1364:
	.loc 1 4103 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1367:
	.loc 1 4106 0
	andl	$-2099314, -228(%ebp)
	.loc 1 4087 0
	jmp	.L1724
.L1357:
	.loc 1 4111 0
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1368
	cmpl	$0, 20(%ebp)
	je	.L1368
	cmpl	$0, -144(%ebp)
	jne	.L1368
	.loc 1 4114 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1372
	.loc 1 4115 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1724
.L1372:
	.loc 1 4117 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4111 0
	jmp	.L1724
.L1368:
	.loc 1 4119 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1375
	.loc 1 4121 0
	movl	-228(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1724
	.loc 1 4122 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1724
.L1375:
	.loc 1 4126 0
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1379
	cmpl	$0, -144(%ebp)
	je	.L1379
	.loc 1 4127 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4126 0
	jmp	.L1724
.L1379:
	.loc 1 4128 0
	movl	-228(%ebp), %eax
	andl	$2097169, %eax
	cmpl	$2097152, %eax
	jne	.L1724
	.loc 1 4133 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4135 0
	andl	$-2097153, -228(%ebp)
	.loc 1 4144 0
	jmp	.L1724
.L1384:
.LBE39:
	.loc 1 4146 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1385
	.loc 1 4148 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4149 0
	jmp	.L1383
.L1385:
	.loc 1 4167 0
	cmpl	$0, -124(%ebp)
	jne	.L1387
	cmpl	$0, -120(%ebp)
	je	.L1389
.L1387:
	.loc 1 4172 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4173 0
	movl	$0, -124(%ebp)
	.loc 1 4174 0
	movl	$0, -120(%ebp)
.L1389:
	.loc 1 4177 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L1390
.LBB40:
	.loc 1 4181 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 4183 0
	movl	$0, -80(%ebp)
	.loc 1 4184 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4185 0
	movl	8(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 4186 0
	jmp	.L1392
.L1393:
	.loc 1 4188 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
.L1392:
	.loc 1 4186 0
	cmpl	$0, -84(%ebp)
	je	.L1394
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L1393
.L1394:
	.loc 1 4189 0
	cmpl	$0, -84(%ebp)
	je	.L1396
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1398
.L1396:
	.loc 1 4191 0
	orl	$1, -80(%ebp)
	.loc 1 4189 0
	jmp	.L1399
.L1398:
	.loc 1 4192 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L1400
	.loc 1 4193 0
	orl	$2, -80(%ebp)
	jmp	.L1399
.L1400:
	.loc 1 4194 0
	movl	-84(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L1399
	.loc 1 4195 0
	orl	$4, -80(%ebp)
.L1399:
	.loc 1 4196 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1383
.L1390:
.LBE40:
	.loc 1 4200 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	jne	.L1403
.LBB41:
	.loc 1 4202 0
	movl	$0, -76(%ebp)
	.loc 1 4203 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4205 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	c_common_signed_type@PLT
	movl	%eax, -68(%ebp)
	.loc 1 4207 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 4208 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -120(%ebp)
	.loc 1 4210 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 4214 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1405
	.loc 1 4216 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4217 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
.L1405:
	.loc 1 4220 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1407
	.loc 1 4222 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4223 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
.L1407:
	.loc 1 4226 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1409
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	flexible_array_type_p
	testb	%al, %al
	je	.L1409
	.loc 1 4227 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1409:
	.loc 1 4229 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-72(%ebp), %eax
	jne	.L1412
	.loc 1 4230 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
.L1412:
	.loc 1 4232 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1383
	.loc 1 4239 0
	cmpl	$0, -72(%ebp)
	je	.L1415
	.loc 1 4242 0
	jmp	.L1417
.L1418:
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
.L1417:
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1419
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1419
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1422
.L1419:
	movl	-72(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1422
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L1418
.L1422:
	.loc 1 4244 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1424
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1424
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1424
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1424
	.loc 1 4246 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4247 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -72(%ebp)
.L1424:
	.loc 1 4250 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1429
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1429
	.loc 1 4251 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1429:
	.loc 1 4253 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1432
	.loc 1 4255 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	.loc 1 4256 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L1436
	.loc 1 4258 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4259 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1436
.L1432:
	.loc 1 4266 0
	movl	$1, -132(%ebp)
	.loc 1 4268 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1436
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1436
	.loc 1 4270 0
	movl	-72(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1439
	.loc 1 4271 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1436
.L1439:
	.loc 1 4274 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1436:
	.loc 1 4279 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1441
	.loc 1 4284 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_range_type@PLT
	movl	%eax, -76(%ebp)
	jmp	.L1451
.L1441:
	.loc 1 4292 0
	movl	global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4302 0
	movl	-76(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1444
	.loc 1 4304 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4305 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 4306 0
	jmp	.L1383
.L1444:
	.loc 1 4309 0
	cmpl	$0, -132(%ebp)
	je	.L1446
.LBB42:
	.loc 1 4317 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4318 0
	cmpl	$2, 16(%ebp)
	jne	.L1448
	.loc 1 4319 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1448:
	.loc 1 4320 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	variable_size@PLT
	movl	%eax, -76(%ebp)
	.loc 1 4321 0
	cmpl	$2, 16(%ebp)
	jne	.L1446
	.loc 1 4322 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
.L1446:
.LBE42:
	.loc 1 4324 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -76(%ebp)
	jmp	.L1451
.L1415:
	.loc 1 4327 0
	cmpl	$3, 16(%ebp)
	jne	.L1451
	.loc 1 4329 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1453
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1453
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1453
	.loc 1 4330 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1453:
	.loc 1 4334 0
	movl	global_trees@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_range_type@PLT
	movl	%eax, -76(%ebp)
.L1451:
	.loc 1 4339 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1457
	movl	-232(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1457
	.loc 1 4340 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1457:
	.loc 1 4355 0
	movl	-232(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4356 0
	cmpl	$0, -204(%ebp)
	je	.L1460
	.loc 1 4357 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1460:
	.loc 1 4359 0
	cmpl	$0, -132(%ebp)
	je	.L1462
	.loc 1 4360 0
	movl	-232(%ebp), %eax
	movzbl	39(%eax), %edx
	orl	$2, %edx
	movb	%dl, 39(%eax)
.L1462:
	.loc 1 4364 0
	cmpl	$0, -72(%ebp)
	je	.L1464
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1464
	.loc 1 4366 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 4367 0
	movl	-232(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 4368 0
	movl	-232(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, 24(%edx)
.L1464:
	.loc 1 4370 0
	cmpl	$2, 16(%ebp)
	je	.L1383
	cmpl	$0, -124(%ebp)
	jne	.L1469
	cmpl	$0, -120(%ebp)
	je	.L1383
.L1469:
	.loc 1 4373 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4374 0
	movl	$0, -124(%ebp)
	.loc 1 4375 0
	movl	$0, -120(%ebp)
	jmp	.L1383
.L1403:
.LBE41:
	.loc 1 4378 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L1471
.LBB43:
	.loc 1 4384 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	je	.L1383
	.loc 1 4387 0
	movl	$0, -132(%ebp)
	.loc 1 4391 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1474
	.loc 1 4393 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4394 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -232(%ebp)
.L1474:
	.loc 1 4396 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1476
	.loc 1 4398 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4399 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -232(%ebp)
.L1476:
	.loc 1 4405 0
	cmpl	$0, -144(%ebp)
	je	.L1478
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1478
	movl	$1, -296(%ebp)
	jmp	.L1481
.L1478:
	movl	$0, -296(%ebp)
.L1481:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	-296(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	grokparms
	movl	%eax, -60(%ebp)
	.loc 1 4413 0
	cmpl	$0, -204(%ebp)
	je	.L1482
	.loc 1 4425 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1484
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1484
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1484
	.loc 1 4426 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 4425 0
	jmp	.L1488
.L1484:
	.loc 1 4427 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1488
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1490
	cmpl	$2, -204(%ebp)
	je	.L1488
.L1490:
	.loc 1 4430 0
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1488:
	.loc 1 4432 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1482:
	.loc 1 4434 0
	movl	$0, -204(%ebp)
	.loc 1 4436 0
	movl	-232(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4437 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.LBB44:
	.loc 1 4446 0
	movl	last_function_parm_tags@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4447 0
	jmp	.L1492
.L1493:
	.loc 1 4449 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %edx
	movl	-232(%ebp), %eax
	movl	%eax, 84(%edx)
	.loc 1 4448 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1492:
	.loc 1 4447 0
	cmpl	$0, -56(%ebp)
	jne	.L1493
	jmp	.L1383
.L1471:
.LBE44:
.LBE43:
	.loc 1 4452 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L1495
	.loc 1 4457 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1497
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1497
	cmpl	$0, -204(%ebp)
	je	.L1497
	.loc 1 4459 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1497:
	.loc 1 4460 0
	cmpl	$0, -204(%ebp)
	je	.L1501
	.loc 1 4461 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1501:
	.loc 1 4462 0
	movl	$0, -204(%ebp)
	.loc 1 4463 0
	movl	$0, -132(%ebp)
	.loc 1 4465 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4470 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1503
.LBB45:
	.loc 1 4473 0
	movl	$0, -48(%ebp)
	.loc 1 4475 0
	movl	$0, -216(%ebp)
	.loc 1 4476 0
	movl	$0, -208(%ebp)
	.loc 1 4477 0
	movl	$0, -212(%ebp)
	.loc 1 4478 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1505
.L1506:
.LBB46:
	.loc 1 4481 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4483 0
	movl	-44(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1507
	.loc 1 4485 0
	movl	-44(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$3, %al
	jne	.L1509
	.loc 1 4486 0
	addl	$1, -216(%ebp)
	jmp	.L1516
.L1509:
	.loc 1 4487 0
	movl	-44(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$9, %al
	jne	.L1512
	.loc 1 4488 0
	addl	$1, -208(%ebp)
	jmp	.L1516
.L1512:
	.loc 1 4489 0
	movl	-44(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$12, %al
	jne	.L1514
	.loc 1 4490 0
	addl	$1, -212(%ebp)
	jmp	.L1516
.L1514:
	.loc 1 4492 0
	addl	$1, -48(%ebp)
	jmp	.L1516
.L1507:
	.loc 1 4495 0
	addl	$1, -48(%ebp)
.L1516:
.LBE46:
	.loc 1 4479 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1505:
	.loc 1 4478 0
	cmpl	$0, -52(%ebp)
	jne	.L1506
	.loc 1 4498 0
	cmpl	$0, -48(%ebp)
	je	.L1518
	.loc 1 4499 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1518:
	.loc 1 4500 0
	cmpl	$1, -216(%ebp)
	jle	.L1520
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1520
	.loc 1 4501 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1520:
	.loc 1 4502 0
	cmpl	$1, -208(%ebp)
	jle	.L1523
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1523
	.loc 1 4503 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1523:
	.loc 1 4504 0
	cmpl	$1, -212(%ebp)
	jle	.L1526
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1526
	.loc 1 4505 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1526:
	.loc 1 4507 0
	cmpl	$0, -216(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -292(%ebp)
	cmpl	$0, -212(%ebp)
	je	.L1529
	movl	$4, -288(%ebp)
	jmp	.L1531
.L1529:
	movl	$0, -288(%ebp)
.L1531:
	movl	-292(%ebp), %ecx
	orl	-288(%ebp), %ecx
	movl	%ecx, -284(%ebp)
	cmpl	$0, -208(%ebp)
	je	.L1532
	movl	$2, -280(%ebp)
	jmp	.L1534
.L1532:
	movl	$0, -280(%ebp)
.L1534:
	movl	-284(%ebp), %eax
	orl	-280(%ebp), %eax
	movl	%eax, -204(%ebp)
.L1503:
.LBE45:
	.loc 1 4512 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L1383
.L1495:
	.loc 1 4515 0
	leal	__FUNCTION__.17741@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4515, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1383:
.L1724:
	.loc 1 4144 0
	cmpl	$0, 8(%ebp)
	je	.L1535
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1384
.L1535:
	.loc 1 4523 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1537
	movl	-232(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1537
	movl	-232(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1537
	.loc 1 4527 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4530 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
.L1537:
	.loc 1 4535 0
	movl	-228(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L1541
.LBB47:
	.loc 1 4540 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1543
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1543
	cmpl	$0, -204(%ebp)
	je	.L1543
	.loc 1 4542 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1543:
	.loc 1 4543 0
	cmpl	$0, -204(%ebp)
	je	.L1547
	.loc 1 4544 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1547:
	.loc 1 4545 0
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4546 0
	movl	-228(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1549
	cmpl	$0, -156(%ebp)
	je	.L1551
	movl	-156(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1551
.L1549:
	.loc 1 4548 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$64, %edx
	movb	%dl, 37(%eax)
.L1551:
	.loc 1 4549 0
	movl	$0, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 4550 0
	movl	-236(%ebp), %eax
	movl	%eax, -364(%ebp)
	jmp	.L1124
.L1541:
.LBE47:
	.loc 1 4559 0
	movl	-232(%ebp), %eax
	testl	%eax, %eax
	je	.L1553
	cmpl	$0, -148(%ebp)
	je	.L1553
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1553
	movl	-232(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1553
	movl	-232(%ebp), %eax
	movl	76(%eax), %edx
	movl	-148(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1553
	.loc 1 4563 0
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4564 0
	cmpl	$0, -132(%ebp)
	je	.L1553
	.loc 1 4565 0
	movl	-232(%ebp), %eax
	movzbl	39(%eax), %edx
	orl	$2, %edx
	movb	%dl, 39(%eax)
.L1553:
	.loc 1 4571 0
	cmpl	$5, 16(%ebp)
	jne	.L1560
	.loc 1 4575 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1562
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1562
	cmpl	$0, -204(%ebp)
	je	.L1562
	.loc 1 4577 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1562:
	.loc 1 4578 0
	cmpl	$0, -204(%ebp)
	je	.L1566
	.loc 1 4579 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1566:
	.loc 1 4580 0
	movl	$0, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 4581 0
	movl	-232(%ebp), %edx
	movl	%edx, -364(%ebp)
	jmp	.L1124
.L1560:
	.loc 1 4590 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1568
	cmpl	$2, 16(%ebp)
	je	.L1568
	cmpl	$3, 16(%ebp)
	je	.L1571
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L1571
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L1568
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1571
	movl	-228(%ebp), %eax
	andl	$33, %eax
	testl	%eax, %eax
	je	.L1568
.L1571:
	.loc 1 4597 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4598 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -232(%ebp)
.L1568:
.LBB48:
	.loc 1 4607 0
	cmpl	$2, 16(%ebp)
	jne	.L1576
.LBB49:
	.loc 1 4615 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1578
	.loc 1 4618 0
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 4619 0
	cmpl	$0, -204(%ebp)
	je	.L1580
	.loc 1 4620 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1580:
	.loc 1 4621 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4622 0
	movl	$0, -204(%ebp)
	.loc 1 4623 0
	cmpl	$0, -124(%ebp)
	je	.L1582
.LBB50:
	.loc 1 4626 0
	movl	$0, -28(%ebp)
	.loc 1 4627 0
	leal	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	split_specs_attrs@PLT
	.loc 1 4629 0
	movl	-244(%ebp), %eax
	testl	%eax, %eax
	je	.L1584
	.loc 1 4630 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1584:
	.loc 1 4632 0
	movl	$0, -216(%ebp)
	.loc 1 4633 0
	movl	$0, -208(%ebp)
	.loc 1 4634 0
	movl	$0, -212(%ebp)
	.loc 1 4635 0
	jmp	.L1586
.L1587:
.LBB51:
	.loc 1 4637 0
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4639 0
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1588
	.loc 1 4641 0
	movl	-24(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$3, %al
	jne	.L1590
	.loc 1 4642 0
	addl	$1, -216(%ebp)
	jmp	.L1597
.L1590:
	.loc 1 4643 0
	movl	-24(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$9, %al
	jne	.L1593
	.loc 1 4644 0
	addl	$1, -208(%ebp)
	jmp	.L1597
.L1593:
	.loc 1 4645 0
	movl	-24(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$12, %al
	jne	.L1595
	.loc 1 4646 0
	addl	$1, -212(%ebp)
	jmp	.L1597
.L1595:
	.loc 1 4648 0
	addl	$1, -28(%ebp)
	jmp	.L1597
.L1588:
	.loc 1 4651 0
	addl	$1, -28(%ebp)
.L1597:
.LBE51:
	.loc 1 4635 0
	movl	-240(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
.L1586:
	movl	-240(%ebp), %eax
	testl	%eax, %eax
	jne	.L1587
	.loc 1 4654 0
	cmpl	$0, -28(%ebp)
	je	.L1599
	.loc 1 4655 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1599:
	.loc 1 4657 0
	cmpl	$0, -216(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -276(%ebp)
	cmpl	$0, -212(%ebp)
	je	.L1601
	movl	$4, -272(%ebp)
	jmp	.L1603
.L1601:
	movl	$0, -272(%ebp)
.L1603:
	movl	-276(%ebp), %ecx
	orl	-272(%ebp), %ecx
	movl	%ecx, -268(%ebp)
	cmpl	$0, -208(%ebp)
	je	.L1604
	movl	$2, -264(%ebp)
	jmp	.L1606
.L1604:
	movl	$0, -264(%ebp)
.L1606:
	movl	-268(%ebp), %eax
	orl	-264(%ebp), %eax
	movl	%eax, -204(%ebp)
.L1582:
.LBE50:
	.loc 1 4661 0
	movl	$0, -132(%ebp)
	jmp	.L1607
.L1578:
	.loc 1 4663 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1608
	.loc 1 4665 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1610
	cmpl	$0, -204(%ebp)
	je	.L1610
	.loc 1 4666 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1610:
	.loc 1 4667 0
	cmpl	$0, -204(%ebp)
	je	.L1613
	.loc 1 4668 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1613:
	.loc 1 4669 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4670 0
	movl	$0, -204(%ebp)
	jmp	.L1607
.L1608:
	.loc 1 4672 0
	cmpl	$0, -204(%ebp)
	je	.L1607
	.loc 1 4673 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1607:
	.loc 1 4675 0
	movl	-232(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4677 0
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$36, (%esp)
	call	build_decl@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4678 0
	cmpl	$0, -132(%ebp)
	je	.L1616
	.loc 1 4679 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$32, %edx
	movb	%dl, 37(%eax)
.L1616:
	.loc 1 4686 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-232(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1618
	.loc 1 4687 0
	movl	-232(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1620
.L1618:
	.loc 1 4689 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	c_type_promotes_to@PLT
	movl	%eax, -32(%ebp)
.L1620:
	.loc 1 4691 0
	movl	-236(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 4692 0
	movl	-236(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 64(%edx)
	jmp	.L1621
.L1576:
.LBE49:
	.loc 1 4694 0
	cmpl	$3, 16(%ebp)
	jne	.L1622
	.loc 1 4698 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1624
	.loc 1 4700 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4701 0
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -232(%ebp)
	jmp	.L1626
.L1624:
	.loc 1 4703 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L1626
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1628
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -260(%ebp)
	jmp	.L1630
.L1628:
	movl	-232(%ebp), %eax
	movl	%eax, -260(%ebp)
.L1630:
	movl	-260(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	jne	.L1626
	.loc 1 4706 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4707 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -232(%ebp)
.L1626:
	.loc 1 4710 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1632
	cmpl	$0, -204(%ebp)
	je	.L1632
	.loc 1 4712 0
	movl	-232(%ebp), %eax
	movl	16(%eax), %esi
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_build_qualified_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4710 0
	jmp	.L1635
.L1632:
	.loc 1 4721 0
	cmpl	$0, -160(%ebp)
	je	.L1635
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1635
	.loc 1 4724 0
	movl	-160(%ebp), %ecx
	subl	$13, %ecx
	movl	%ecx, -380(%ebp)
	cmpl	$4, -380(%ebp)
	ja	.L1635
	movl	-380(%ebp), %eax
	sall	$2, %eax
	movl	.L1643@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1643:
	.long	.L1638@GOTOFF
	.long	.L1639@GOTOFF
	.long	.L1640@GOTOFF
	.long	.L1641@GOTOFF
	.long	.L1642@GOTOFF
	.text
.L1640:
	.loc 1 4726 0
	movl	-232(%ebp), %eax
	movl	$64, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4727 0
	jmp	.L1635
.L1641:
	.loc 1 4729 0
	movl	-232(%ebp), %eax
	movl	$128, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4730 0
	jmp	.L1635
.L1642:
	.loc 1 4732 0
	movl	-232(%ebp), %eax
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4733 0
	jmp	.L1635
.L1638:
	.loc 1 4735 0
	movl	-232(%ebp), %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4736 0
	jmp	.L1635
.L1639:
	.loc 1 4738 0
	movl	-232(%ebp), %eax
	movl	$32, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1635:
	.loc 1 4742 0
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4743 0
	movl	-236(%ebp), %ecx
	movl	-136(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	36(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 36(%ecx)
	.loc 1 4745 0
	cmpl	$0, -132(%ebp)
	je	.L1621
	.loc 1 4746 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$32, %edx
	movb	%dl, 37(%eax)
	jmp	.L1621
.L1622:
	.loc 1 4748 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1646
.LBB52:
	.loc 1 4756 0
	movl	-228(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1648
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1650
.L1648:
	movl	$1, -256(%ebp)
	jmp	.L1651
.L1650:
	movl	$0, -256(%ebp)
.L1651:
	movl	-256(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4758 0
	movl	-228(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1652
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1654
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1652
.L1654:
	.loc 1 4760 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1652:
	.loc 1 4761 0
	movl	-228(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1656
	.loc 1 4762 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1656:
	.loc 1 4763 0
	movl	-228(%ebp), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L1658
	.loc 1 4764 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1658:
	.loc 1 4768 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L1660
	movl	-228(%ebp), %eax
	andl	$257, %eax
	testl	%eax, %eax
	je	.L1660
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1660
	.loc 1 4771 0
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1660:
	.loc 1 4773 0
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4774 0
	movl	-236(%ebp), %edx
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_decl_attribute_variant@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4776 0
	movl	-236(%ebp), %esi
	movl	$8, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, 120(%esi)
	.loc 1 4779 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1664
	cmpl	$0, -204(%ebp)
	je	.L1664
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1664
	.loc 1 4780 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1664:
	.loc 1 4784 0
	movl	-204(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1668
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1668
	.loc 1 4786 0
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1668:
	.loc 1 4788 0
	cmpl	$0, -20(%ebp)
	je	.L1671
	.loc 1 4789 0
	movl	-236(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$1, %edx
	movb	%dl, 33(%eax)
.L1671:
	.loc 1 4791 0
	movl	-236(%ebp), %ecx
	movl	-228(%ebp), %eax
	andl	$2049, %eax
	testl	%eax, %eax
	sete	%al
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 4794 0
	cmpl	$0, -188(%ebp)
	je	.L1673
	.loc 1 4795 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$64, %edx
	movb	%dl, 37(%eax)
.L1673:
	.loc 1 4798 0
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1675
	.loc 1 4800 0
	cmpl	$0, -200(%ebp)
	je	.L1621
	.loc 1 4801 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1621
.L1675:
	.loc 1 4803 0
	cmpl	$0, -200(%ebp)
	je	.L1680
	.loc 1 4806 0
	movl	-236(%ebp), %eax
	movl	120(%eax), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 4812 0
	cmpl	$0, 20(%ebp)
	je	.L1621
	.loc 1 4814 0
	movl	-236(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$8, %eax
	movb	%al, 33(%edx)
	.loc 1 4815 0
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1621
	.loc 1 4816 0
	movl	$1, current_extern_inline@GOTOFF(%ebx)
	jmp	.L1621
.L1680:
	.loc 1 4822 0
	movl	flag_inline_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1621
	cmpl	$0, 20(%ebp)
	je	.L1621
	.loc 1 4824 0
	movl	-236(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1687
	.loc 1 4825 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$8, %edx
	movb	%dl, 37(%eax)
.L1687:
	.loc 1 4826 0
	movl	-236(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$8, %eax
	movb	%al, 33(%edx)
	.loc 1 4827 0
	movl	-236(%ebp), %eax
	movl	120(%eax), %edx
	movzbl	(%edx), %eax
	andl	$-2, %eax
	movb	%al, (%edx)
	jmp	.L1621
.L1646:
.LBE52:
.LBB53:
	.loc 1 4834 0
	cmpl	$0, 20(%ebp)
	jne	.L1689
	movl	-228(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L1689
	movl	$1, -252(%ebp)
	jmp	.L1692
.L1689:
	movl	$0, -252(%ebp)
.L1692:
	movl	-252(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 4837 0
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1693
	cmpl	$0, -204(%ebp)
	je	.L1693
.LBB54:
	.loc 1 4839 0
	movl	-232(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4840 0
	movl	-232(%ebp), %eax
	movl	16(%eax), %esi
	movl	-232(%ebp), %eax
	movl	4(%eax), %edx
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	c_build_qualified_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -232(%ebp)
	.loc 1 4843 0
	movl	-232(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 4837 0
	jmp	.L1696
.L1693:
.LBE54:
	.loc 1 4848 0
	cmpl	$0, -204(%ebp)
	je	.L1696
	.loc 1 4849 0
	movl	-232(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_build_qualified_type@PLT
	movl	%eax, -232(%ebp)
.L1696:
	.loc 1 4851 0
	movl	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_decl@PLT
	movl	%eax, -236(%ebp)
	.loc 1 4852 0
	cmpl	$0, -132(%ebp)
	je	.L1698
	.loc 1 4853 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$32, %edx
	movb	%dl, 37(%eax)
.L1698:
	.loc 1 4855 0
	cmpl	$0, -200(%ebp)
	je	.L1700
	.loc 1 4856 0
	movl	-236(%ebp), %edx
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
.L1700:
	.loc 1 4858 0
	movl	-236(%ebp), %ecx
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	33(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 4864 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L1702
	.loc 1 4866 0
	movl	-236(%ebp), %ecx
	movl	-228(%ebp), %eax
	andl	$33, %eax
	testl	%eax, %eax
	sete	%al
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 4868 0
	movl	-236(%ebp), %ecx
	cmpl	$0, -16(%ebp)
	sete	%al
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	jmp	.L1704
.L1702:
	.loc 1 4873 0
	movl	-236(%ebp), %ecx
	movl	-228(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 4874 0
	movl	-236(%ebp), %ecx
	movl	-16(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L1704:
	.loc 1 4877 0
	movl	-228(%ebp), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L1621
	.loc 1 4879 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	246(%eax), %eax
	testb	%al, %al
	je	.L1706
	.loc 1 4880 0
	movl	-236(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$4, %edx
	movb	%dl, 37(%eax)
	jmp	.L1621
.L1706:
	.loc 1 4884 0
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1621:
.LBE53:
	.loc 1 4891 0
	movl	-228(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1708
	.loc 1 4892 0
	movl	-236(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$4, %edx
	movb	%dl, 33(%eax)
.L1708:
	.loc 1 4897 0
	movl	-228(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L1710
	.loc 1 4898 0
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$2, %edx
	movb	%dl, 34(%eax)
.L1710:
	.loc 1 4899 0
	movl	-228(%ebp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1712
	.loc 1 4900 0
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$1, %edx
	movb	%dl, 34(%eax)
.L1712:
	.loc 1 4902 0
	movl	-228(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L1714
	.loc 1 4904 0
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$4, %edx
	movb	%dl, 34(%eax)
.L1714:
	.loc 1 4906 0
	movl	-228(%ebp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1716
	.loc 1 4908 0
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$8, %edx
	movb	%dl, 34(%eax)
.L1716:
	.loc 1 4910 0
	movl	-228(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L1718
	.loc 1 4912 0
	movl	-236(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$16, %edx
	movb	%dl, 34(%eax)
.L1718:
	.loc 1 4918 0
	movl	-236(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, (%esp)
	call	c_apply_type_quals_to_decl@PLT
	.loc 1 4923 0
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1720
	.loc 1 4924 0
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	c_mark_addressable@PLT
.L1720:
	.loc 1 4926 0
	movl	$0, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 4928 0
	movl	-236(%ebp), %ecx
	movl	%ecx, -364(%ebp)
.L1124:
	movl	-364(%ebp), %eax
.LBE48:
	.loc 1 4930 0
	addl	$400, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE68:
	.size	grokdeclarator, .-grokdeclarator
	.section	.rodata
	.align 4
.LC163:
	.string	"function declaration isn't a prototype"
	.align 4
.LC164:
	.string	"parameter names (without types) in function declaration"
	.align 4
.LC165:
	.string	"parameter `%s' has incomplete type"
.LC166:
	.string	"parameter has incomplete type"
	.text
	.type	grokparms, @function
grokparms:
.LFB69:
	.loc 1 4954 0
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
	.loc 1 4955 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4957 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, last_function_parms@GOTOFF(%ebx)
	.loc 1 4958 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, last_function_parm_tags@GOTOFF(%ebx)
	.loc 1 4960 0
	movl	warn_strict_prototypes@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1726
	cmpl	$0, -20(%ebp)
	jne	.L1726
	cmpl	$0, 12(%ebp)
	jne	.L1726
	movl	in_system_header@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1726
	.loc 1 4962 0
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1726:
	.loc 1 4964 0
	cmpl	$0, -20(%ebp)
	je	.L1731
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L1731
	.loc 1 4967 0
	cmpl	$0, 12(%ebp)
	jne	.L1734
	.loc 1 4968 0
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1734:
	.loc 1 4970 0
	movl	-20(%ebp), %eax
	movl	%eax, last_function_parms@GOTOFF(%ebx)
	.loc 1 4971 0
	movl	$0, -24(%ebp)
	jmp	.L1736
.L1731:
.LBB55:
	.loc 1 4987 0
	movl	last_function_parms@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4988 0
	jmp	.L1737
.L1738:
	.loc 1 4991 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L1739
.LBB56:
	.loc 1 4994 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4995 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L1739
	.loc 1 4997 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1742
	.loc 1 4999 0
	cmpl	$0, 12(%ebp)
	je	.L1744
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1744
	.loc 1 5000 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4999 0
	jmp	.L1747
.L1744:
	.loc 1 5003 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1747:
	.loc 1 5004 0
	cmpl	$0, 12(%ebp)
	je	.L1742
	.loc 1 5006 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5007 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
.L1742:
	.loc 1 5031 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1739:
.LBE56:
	.loc 1 4989 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1737:
	.loc 1 4988 0
	cmpl	$0, -16(%ebp)
	jne	.L1738
	.loc 1 5034 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1736:
	movl	-24(%ebp), %eax
.LBE55:
	.loc 1 5036 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	grokparms, .-grokparms
	.section	.rodata
	.align 4
.LC167:
	.string	"parameter `%s' has just a forward declaration"
	.align 4
.LC168:
	.string	"`void' in parameter list must be the entire list"
	.text
.globl get_parm_info
	.type	get_parm_info, @function
get_parm_info:
.LFB70:
	.loc 1 5050 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	pushl	%ebx
.LCFI208:
	subl	$68, %esp
.LCFI209:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5052 0
	movl	$0, -36(%ebp)
	.loc 1 5053 0
	movl	$0, -32(%ebp)
	.loc 1 5054 0
	call	gettags@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5055 0
	call	getdecls@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5056 0
	movl	$0, -20(%ebp)
	.loc 1 5057 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5064 0
	cmpl	$0, 8(%ebp)
	je	.L1752
	cmpl	$0, -24(%ebp)
	je	.L1752
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1752
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1752
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1752
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1752
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1752
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1752
	.loc 1 5072 0
	movl	$0, -24(%ebp)
	.loc 1 5073 0
	movl	$0, (%esp)
	call	storedecls
	.loc 1 5074 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1761
.L1752:
	.loc 1 5080 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1762
.L1763:
.LBB57:
	.loc 1 5082 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5084 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L1764
	.loc 1 5086 0
	movl	-44(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5087 0
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1766
.L1764:
	.loc 1 5089 0
	movl	-44(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1766
	.loc 1 5091 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 5093 0
	movl	-44(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5094 0
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1766:
	.loc 1 5096 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1762:
.LBE57:
	.loc 1 5080 0
	cmpl	$0, -44(%ebp)
	jne	.L1763
	.loc 1 5100 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1769
.L1770:
	.loc 1 5102 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1771
	.loc 1 5103 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L1773
.L1771:
	.loc 1 5105 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, (%eax)
.L1773:
	.loc 1 5100 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1769:
	cmpl	$0, -40(%ebp)
	jne	.L1770
	.loc 1 5108 0
	cmpl	$0, -16(%ebp)
	je	.L1775
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -56(%ebp)
	jmp	.L1777
.L1775:
	movl	$0, -56(%ebp)
.L1777:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, -20(%ebp)
	.loc 1 5113 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	storedecls
	.loc 1 5115 0
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1778
.L1779:
	.loc 1 5118 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L1780
.LBB58:
	.loc 1 5122 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5123 0
	movl	-44(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 5124 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1782
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1782
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1782
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1786
.L1782:
	movl	-8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L1786
	.loc 1 5127 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 68(%eax)
.L1786:
	.loc 1 5129 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5130 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1780
	cmpl	$0, -32(%ebp)
	jne	.L1780
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1780
	.loc 1 5133 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5134 0
	movl	$1, -32(%ebp)
.L1780:
.LBE58:
	.loc 1 5115 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L1778:
	cmpl	$0, -44(%ebp)
	jne	.L1779
	.loc 1 5138 0
	cmpl	$0, 8(%ebp)
	je	.L1792
	.loc 1 5139 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1761
.L1792:
	.loc 1 5142 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -60(%ebp)
.L1761:
	movl	-60(%ebp), %eax
	.loc 1 5143 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	get_parm_info, .-get_parm_info
	.local	already.19289
	.comm	already.19289,4,4
	.section	.rodata
	.align 4
.LC169:
	.string	"`struct %s' declared inside parameter list"
	.align 4
.LC170:
	.string	"`union %s' declared inside parameter list"
	.align 4
.LC171:
	.string	"`enum %s' declared inside parameter list"
	.align 4
.LC172:
	.string	"anonymous struct declared inside parameter list"
	.align 4
.LC173:
	.string	"anonymous union declared inside parameter list"
	.align 4
.LC174:
	.string	"anonymous enum declared inside parameter list"
	.align 4
.LC175:
	.string	"its scope is only this definition or declaration, which is probably not what you want"
	.text
.globl parmlist_tags_warning
	.type	parmlist_tags_warning, @function
parmlist_tags_warning:
.LFB71:
	.loc 1 5150 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$36, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5154 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1796
.L1797:
.LBB59:
	.loc 1 5156 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 5159 0
	cmpl	$22, -8(%ebp)
	jne	.L1798
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1798
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1801
.L1798:
	.loc 1 5161 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1802
	.loc 1 5163 0
	cmpl	$21, -8(%ebp)
	jne	.L1804
	.loc 1 5164 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1809
.L1804:
	.loc 1 5166 0
	cmpl	$22, -8(%ebp)
	jne	.L1807
	.loc 1 5167 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1809
.L1807:
	.loc 1 5170 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1809
.L1802:
	.loc 1 5176 0
	cmpl	$21, -8(%ebp)
	jne	.L1810
	.loc 1 5177 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1809
.L1810:
	.loc 1 5178 0
	cmpl	$22, -8(%ebp)
	jne	.L1812
	.loc 1 5179 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1809
.L1812:
	.loc 1 5181 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1809:
	.loc 1 5183 0
	movl	already.19289@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1801
	.loc 1 5185 0
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5186 0
	movl	$1, already.19289@GOTOFF(%ebx)
.L1801:
.LBE59:
	.loc 1 5154 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1796:
	cmpl	$0, -12(%ebp)
	jne	.L1797
	.loc 1 5189 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	parmlist_tags_warning, .-parmlist_tags_warning
.globl xref_tag
	.type	xref_tag, @function
xref_tag:
.LFB72:
	.loc 1 5198 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	pushl	%ebx
.LCFI216:
	subl	$36, %esp
.LCFI217:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5202 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_tag
	movl	%eax, -8(%ebp)
	.loc 1 5214 0
	cmpl	$0, -8(%ebp)
	je	.L1818
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L1818
	.loc 1 5215 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1821
.L1818:
	.loc 1 5222 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5223 0
	cmpl	$11, 8(%ebp)
	jne	.L1822
	.loc 1 5227 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	-8(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 5228 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 5229 0
	movl	-8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	movb	%al, 39(%edx)
	.loc 1 5230 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$32, %eax
	movb	%al, 9(%edx)
	.loc 1 5231 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 5232 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 5233 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	68(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 68(%eax)
.L1822:
	.loc 1 5236 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushtag@PLT
	.loc 1 5238 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1821:
	movl	-24(%ebp), %eax
	.loc 1 5239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	xref_tag, .-xref_tag
	.section	.rodata
.LC176:
	.string	"redefinition of `union %s'"
.LC177:
	.string	"redefinition of `struct %s'"
	.text
.globl start_struct
	.type	start_struct, @function
start_struct:
.LFB73:
	.loc 1 5249 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$36, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5253 0
	movl	$0, -8(%ebp)
	.loc 1 5255 0
	cmpl	$0, 12(%ebp)
	je	.L1826
	.loc 1 5256 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_tag
	movl	%eax, -8(%ebp)
.L1826:
	.loc 1 5257 0
	cmpl	$0, -8(%ebp)
	je	.L1828
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	jne	.L1828
	.loc 1 5259 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1835
	.loc 1 5261 0
	cmpl	$22, 8(%ebp)
	jne	.L1833
	.loc 1 5262 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1835
.L1833:
	.loc 1 5264 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5257 0
	jmp	.L1835
.L1828:
	.loc 1 5271 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5272 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushtag@PLT
.L1835:
	.loc 1 5275 0
	movl	-8(%ebp), %edx
	movzbl	39(%edx), %eax
	orl	$1, %eax
	movb	%al, 39(%edx)
	.loc 1 5276 0
	movl	flag_pack_struct@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	38(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 5277 0
	movl	-8(%ebp), %eax
	.loc 1 5278 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	start_struct, .-start_struct
	.section	.rodata
	.align 4
.LC178:
	.string	"declaration does not declare anything"
	.text
.globl grokfield
	.type	grokfield, @function
grokfield:
.LFB74:
	.loc 1 5293 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%ebx
.LCFI224:
	subl	$52, %esp
.LCFI225:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5296 0
	cmpl	$0, 16(%ebp)
	jne	.L1838
	cmpl	$0, 24(%ebp)
	jne	.L1838
.LBB60:
	.loc 1 5317 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5319 0
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1841
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L1841
	.loc 1 5320 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L1841:
	.loc 1 5321 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1844
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1846
.L1844:
	.loc 1 5323 0
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1838
	.loc 1 5325 0
	movl	flag_iso@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1846
	.loc 1 5327 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L1846
	.loc 1 5321 0
	jmp	.L1838
.L1846:
	.loc 1 5335 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5336 0
	movl	$0, -28(%ebp)
	jmp	.L1850
.L1838:
.LBE60:
	.loc 1 5340 0
	cmpl	$0, 24(%ebp)
	je	.L1851
	movl	$4, -24(%ebp)
	jmp	.L1853
.L1851:
	movl	$3, -24(%ebp)
.L1853:
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, -12(%ebp)
	.loc 1 5342 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_decl@PLT
	.loc 1 5343 0
	movl	-12(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 5345 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1854
	.loc 1 5346 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L1854:
	.loc 1 5347 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1850:
	movl	-28(%ebp), %eax
	.loc 1 5348 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	grokfield, .-grokfield
	.type	field_decl_cmp, @function
field_decl_cmp:
.LFB75:
	.loc 1 5357 0
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	subl	$20, %esp
.LCFI228:
	.loc 1 5358 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 5360 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1858
	.loc 1 5361 0
	movl	$0, -20(%ebp)
	jmp	.L1860
.L1858:
	.loc 1 5362 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1861
	.loc 1 5363 0
	movl	$-1, -20(%ebp)
	jmp	.L1860
.L1861:
	.loc 1 5364 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1863
	.loc 1 5365 0
	movl	$1, -20(%ebp)
	jmp	.L1860
.L1863:
	.loc 1 5366 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1865
	.loc 1 5367 0
	movl	$-1, -20(%ebp)
	jmp	.L1860
.L1865:
	.loc 1 5368 0
	movl	$1, -20(%ebp)
.L1860:
	movl	-20(%ebp), %eax
	.loc 1 5369 0
	leave
	ret
.LFE75:
	.size	field_decl_cmp, .-field_decl_cmp
	.section	.rodata
.LC179:
	.string	"union"
.LC180:
	.string	"structure"
.LC181:
	.string	"%s defined inside parms"
.LC182:
	.string	"named members"
.LC183:
	.string	"members"
.LC184:
	.string	"struct"
.LC185:
	.string	"%s has no %s"
.LC186:
	.string	"nested redefinition of `%s'"
	.align 4
.LC187:
	.string	"bit-field `%s' width not an integer constant"
	.align 4
.LC188:
	.string	"bit-field `%s' has invalid type"
	.align 4
.LC189:
	.string	"bit-field `%s' type invalid in ISO C"
	.align 4
.LC190:
	.string	"negative width in bit-field `%s'"
	.align 4
.LC191:
	.string	"width of `%s' exceeds its type"
.LC192:
	.string	"zero width for bit-field `%s'"
	.align 4
.LC193:
	.string	"`%s' is narrower than values of its type"
	.align 4
.LC194:
	.string	"flexible array member in union"
	.align 4
.LC195:
	.string	"flexible array member not at end of struct"
	.align 4
.LC196:
	.string	"flexible array member in otherwise empty struct"
.LC197:
	.string	"duplicate member `%s'"
	.align 4
.LC198:
	.string	"union cannot be made transparent"
	.text
.globl finish_struct
	.type	finish_struct, @function
finish_struct:
.LFB76:
	.loc 1 5381 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%ebx
.LCFI231:
	subl	$148, %esp
.LCFI232:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5383 0
	movl	global_binding_level@GOTOFF(%ebx), %edx
	movl	current_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 5389 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 5391 0
	movl	$8, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 5394 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1869
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1871
.L1869:
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1871
	.loc 1 5396 0
	call	in_parm_level_p@PLT
	testl	%eax, %eax
	je	.L1871
	.loc 1 5398 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1874
	.loc 1 5399 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1876
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1878
.L1876:
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
.L1878:
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	jmp	.L1871
.L1874:
	.loc 1 5402 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1879
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1881
.L1879:
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
.L1881:
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1871:
	.loc 1 5406 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1882
	.loc 1 5408 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1884
.L1885:
	.loc 1 5409 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1886
	.loc 1 5408 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L1884:
	cmpl	$0, -60(%ebp)
	jne	.L1885
.L1886:
	.loc 1 5412 0
	cmpl	$0, -60(%ebp)
	jne	.L1882
	.loc 1 5413 0
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	.L1889
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1891
.L1889:
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
.L1891:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1892
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1894
.L1892:
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
.L1894:
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L1882:
	.loc 1 5423 0
	movl	$0, -52(%ebp)
	.loc 1 5424 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1895
.L1896:
	.loc 1 5426 0
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 5427 0
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-60(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	33(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 5430 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1897
	.loc 1 5431 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$2, %edx
	movb	%dl, 11(%eax)
	jmp	.L1899
.L1897:
.LBB61:
	.loc 1 5435 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5436 0
	jmp	.L1900
.L1901:
	.loc 1 5437 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L1900:
	.loc 1 5436 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L1901
	.loc 1 5438 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1903
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1899
.L1903:
	movl	-48(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1899
	.loc 1 5440 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$2, %edx
	movb	%dl, 11(%eax)
.L1899:
.LBE61:
	.loc 1 5445 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1906
	.loc 1 5446 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$4, %edx
	movb	%dl, 11(%eax)
.L1906:
	.loc 1 5449 0
	movl	-60(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1908
	.loc 1 5450 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %edx
	orl	$2, %edx
	movb	%dl, 39(%eax)
.L1908:
	.loc 1 5453 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1910
	.loc 1 5454 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1910:
	.loc 1 5458 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1912
	.loc 1 5459 0
	jmp	.L1914
.L1915:
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 68(%eax)
.L1914:
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1916
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1916
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1912
.L1916:
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1912
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1915
.L1912:
	.loc 1 5460 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1920
	.loc 1 5462 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1922
	.loc 1 5463 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	jmp	.L1920
.L1922:
	.loc 1 5466 0
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 5468 0
	movl	-60(%ebp), %eax
	movl	$0, 68(%eax)
.L1920:
	.loc 1 5473 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1924
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1924
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1924
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1924
	.loc 1 5478 0
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 5479 0
	movl	-60(%ebp), %eax
	movl	$0, 68(%eax)
.L1924:
	.loc 1 5482 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L1929
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L1929
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1929
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1935
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L1929
.L1935:
	.loc 1 5490 0
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
.L1929:
	.loc 1 5494 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1937
.LBB62:
	.loc 1 5498 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	je	.L1939
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -108(%ebp)
	jmp	.L1941
.L1939:
	movl	$8, -108(%ebp)
.L1941:
	movl	-108(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5500 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L1942
	.loc 1 5501 0
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1937
.L1942:
	.loc 1 5502 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L1944
	.loc 1 5503 0
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L1937
.L1944:
	.loc 1 5504 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1946
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1946
	.loc 1 5505 0
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 5504 0
	jmp	.L1937
.L1946:
.LBB63:
	.loc 1 5510 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 5512 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1949
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	%eax, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	-100(%ebp), %eax
	cmpl	-68(%ebp), %eax
	ja	.L1951
	movl	-100(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L1953
	movl	-104(%ebp), %eax
	cmpl	-72(%ebp), %eax
	ja	.L1951
.L1953:
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	%eax, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	-92(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L1949
	movl	-92(%ebp), %eax
	cmpl	-68(%ebp), %eax
	ja	.L1951
	movl	-96(%ebp), %eax
	cmpl	-72(%ebp), %eax
	jbe	.L1949
.L1951:
	.loc 1 5518 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L1949:
	.loc 1 5521 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5522 0
	movl	-60(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$16, %eax
	movb	%al, 33(%edx)
	.loc 1 5523 0
	movl	-60(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 5525 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L1937
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	xorl	$1, %eax
	testb	%al, %al
	je	.L1937
	.loc 1 5530 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -84(%ebp)
	cmpl	$32, -84(%ebp)
	jge	.L1957
	movl	$32, -84(%ebp)
.L1957:
	movl	-84(%ebp), %eax
	andl	$16777215, %eax
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 5535 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-80(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	jae	.L1958
	movl	-80(%ebp), %eax
	movl	%eax, -76(%ebp)
.L1958:
	movl	-76(%ebp), %eax
	andl	$16777215, %eax
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 5537 0
	movl	-60(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	orl	%edx, %eax
	andl	$1, %eax
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L1937:
.LBE63:
.LBE62:
	.loc 1 5544 0
	movl	-60(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 5547 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1959
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1959
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1959
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1959
	.loc 1 5552 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1964
	.loc 1 5553 0
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1959
.L1964:
	.loc 1 5554 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1966
	.loc 1 5555 0
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1959
.L1966:
	.loc 1 5556 0
	cmpl	$0, -52(%ebp)
	jne	.L1959
	.loc 1 5557 0
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L1959:
	.loc 1 5560 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1969
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1969
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	flexible_array_type_p
	testb	%al, %al
	je	.L1969
	.loc 1 5562 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
.L1969:
	.loc 1 5564 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1973
	.loc 1 5565 0
	movl	$1, -52(%ebp)
.L1973:
	.loc 1 5424 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L1895:
	cmpl	$0, -60(%ebp)
	jne	.L1896
	.loc 1 5569 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2046
.L1977:
	.loc 1 5571 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L1978
	.loc 1 5572 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1976
.L1978:
.LBB64:
	.loc 1 5575 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1980:
	.loc 1 5579 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	je	.L1981
	.loc 1 5581 0
	movl	-40(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L1981
	.loc 1 5583 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5584 0
	jmp	.L1980
.L1981:
	.loc 1 5585 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1984
	.loc 1 5587 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	error_with_decl@PLT
	.loc 1 5588 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1976
.L1984:
	.loc 1 5591 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L1976:
.L2046:
.LBE64:
	.loc 1 5569 0
	cmpl	$0, -60(%ebp)
	je	.L1986
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1977
.L1986:
	.loc 1 5597 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5599 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
.LBB65:
	.loc 1 5603 0
	leal	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5604 0
	jmp	.L2047
.L1989:
	.loc 1 5605 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1990
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1990
	.loc 1 5606 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5605 0
	jmp	.L1988
.L1990:
	.loc 1 5608 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1988:
.L2047:
	.loc 1 5604 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1989
.LBE65:
	.loc 1 5614 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
.LBB66:
	.loc 1 5620 0
	movl	$0, -32(%ebp)
	.loc 1 5622 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1994
.L1995:
	.loc 1 5624 0
	cmpl	$15, -32(%ebp)
	jg	.L1996
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1996
	.loc 1 5626 0
	addl	$1, -32(%ebp)
	.loc 1 5622 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L1994:
	cmpl	$0, -60(%ebp)
	jne	.L1995
.L1996:
	.loc 1 5629 0
	cmpl	$15, -32(%ebp)
	jle	.L1999
.LBB67:
	.loc 1 5634 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	addl	%eax, -32(%ebp)
	.loc 1 5640 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 5642 0
	movl	$0, -32(%ebp)
	.loc 1 5643 0
	movl	-24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5644 0
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2001
.L2002:
	.loc 1 5646 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -32(%ebp)
	.loc 1 5649 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2003
	.loc 1 5644 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L2001:
	cmpl	$0, -60(%ebp)
	jne	.L2002
.L2003:
	.loc 1 5653 0
	cmpl	$0, -60(%ebp)
	jne	.L1999
	.loc 1 5655 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 96(%edx)
	.loc 1 5656 0
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5657 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5658 0
	movl	-32(%ebp), %edx
	leal	field_decl_cmp@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
.L1999:
.LBE67:
.LBE66:
	.loc 1 5663 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2006
.L2007:
	.loc 1 5665 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5666 0
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 5667 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 5668 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-60(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 5663 0
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -60(%ebp)
.L2006:
	cmpl	$0, -60(%ebp)
	jne	.L2007
	.loc 1 5673 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2009
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2009
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L2009
	.loc 1 5677 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-9, %eax
	movb	%al, 38(%edx)
	.loc 1 5678 0
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2009:
	.loc 1 5684 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2013
.LBB68:
	.loc 1 5686 0
	movl	$0, -20(%ebp)
	.loc 1 5688 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	32(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L2015
.L2016:
.LBB69:
	.loc 1 5690 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5692 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2017
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2017
	.loc 1 5695 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 5698 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2020
	.loc 1 5699 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L2020:
	.loc 1 5700 0
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 5701 0
	cmpl	$0, -56(%ebp)
	jne	.L2022
	.loc 1 5702 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
.L2022:
	.loc 1 5704 0
	cmpl	$0, -20(%ebp)
	je	.L2024
	.loc 1 5705 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2027
.L2024:
	.loc 1 5707 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	-60(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 32(%eax)
	.loc 1 5692 0
	jmp	.L2027
.L2017:
	.loc 1 5709 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2028
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2028
.LBB70:
	.loc 1 5712 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5713 0
	jmp	.L2031
.L2032:
	.loc 1 5714 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L2031:
	.loc 1 5713 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	je	.L2032
	.loc 1 5715 0
	movl	8(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L2034
	.loc 1 5717 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	layout_array_type
	.loc 1 5718 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L2036
	.loc 1 5720 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 5721 0
	movl	flag_objc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2038
	.loc 1 5722 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	objc_check_decl@PLT
.L2038:
	.loc 1 5723 0
	movl	$0, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 5724 0
	cmpl	$0, -56(%ebp)
	jne	.L2036
	.loc 1 5725 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
.L2036:
	.loc 1 5728 0
	cmpl	$0, -20(%ebp)
	je	.L2041
	.loc 1 5729 0
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L2027
.L2041:
	.loc 1 5731 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	-60(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 32(%eax)
	jmp	.L2027
.L2034:
	.loc 1 5734 0
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5709 0
	jmp	.L2027
.L2028:
.LBE70:
	.loc 1 5737 0
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
.L2027:
.LBE69:
	.loc 1 5688 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L2015:
	cmpl	$0, -60(%ebp)
	jne	.L2016
.L2013:
.LBE68:
	.loc 1 5742 0
	movl	8(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rest_of_type_compilation@PLT
	.loc 1 5744 0
	movl	8(%ebp), %eax
	.loc 1 5745 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	finish_struct, .-finish_struct
	.type	layout_array_type, @function
layout_array_type:
.LFB77:
	.loc 1 5752 0
	pushl	%ebp
.LCFI233:
	movl	%esp, %ebp
.LCFI234:
	pushl	%ebx
.LCFI235:
	subl	$4, %esp
.LCFI236:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5753 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2049
	.loc 1 5754 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	layout_array_type
.L2049:
	.loc 1 5755 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 5756 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	layout_array_type, .-layout_array_type
	.section	.rodata
.LC199:
	.string	"redeclaration of `enum %s'"
	.text
.globl start_enum
	.type	start_enum, @function
start_enum:
.LFB78:
	.loc 1 5767 0
	pushl	%ebp
.LCFI237:
	movl	%esp, %ebp
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$36, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5768 0
	movl	$0, -8(%ebp)
	.loc 1 5774 0
	cmpl	$0, 8(%ebp)
	je	.L2053
	.loc 1 5775 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	lookup_tag
	movl	%eax, -8(%ebp)
.L2053:
	.loc 1 5777 0
	cmpl	$0, -8(%ebp)
	je	.L2055
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2057
.L2055:
	.loc 1 5779 0
	movl	$11, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 5780 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushtag@PLT
.L2057:
	.loc 1 5783 0
	movl	-8(%ebp), %edx
	movzbl	39(%edx), %eax
	orl	$1, %eax
	movb	%al, 39(%edx)
	.loc 1 5785 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2058
	.loc 1 5788 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5792 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
.L2058:
	.loc 1 5795 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, enum_next_value@GOTOFF(%ebx)
	.loc 1 5796 0
	movl	$0, enum_overflow@GOTOFF(%ebx)
	.loc 1 5798 0
	movl	flag_short_enums@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2060
	.loc 1 5799 0
	movl	-8(%ebp), %eax
	movzbl	38(%eax), %edx
	orl	$16, %edx
	movb	%dl, 38(%eax)
.L2060:
	.loc 1 5801 0
	movl	-8(%ebp), %eax
	.loc 1 5802 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	start_enum, .-start_enum
	.section	.rodata
.LC200:
	.string	"enum defined inside parms"
	.align 4
.LC201:
	.string	"enumeration values exceed range of largest integer"
	.text
.globl finish_enum
	.type	finish_enum, @function
finish_enum:
.LFB79:
	.loc 1 5815 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%esi
.LCFI243:
	pushl	%ebx
.LCFI244:
	subl	$64, %esp
.LCFI245:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5817 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 5819 0
	movl	global_binding_level@GOTOFF(%ebx), %edx
	movl	current_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 5821 0
	call	in_parm_level_p@PLT
	testl	%eax, %eax
	je	.L2064
	.loc 1 5822 0
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2064:
	.loc 1 5824 0
	movl	$8, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 5828 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L2066
	.loc 1 5829 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2068
.L2066:
	.loc 1 5832 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5833 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L2069
.L2070:
.LBB71:
	.loc 1 5835 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5836 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2071
	.loc 1 5837 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
.L2071:
	.loc 1 5838 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2073
	.loc 1 5839 0
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2073:
.LBE71:
	.loc 1 5833 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L2069:
	cmpl	$0, -52(%ebp)
	jne	.L2070
.L2068:
	.loc 1 5847 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	notl	%eax
	shrl	$31, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5848 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	min_precision@PLT
	cmpl	%eax, %esi
	jbe	.L2075
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	%eax, -60(%ebp)
	jmp	.L2077
.L2075:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	%eax, -60(%ebp)
.L2077:
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5850 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2078
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-32(%ebp), %eax
	jge	.L2080
.L2078:
.LBB72:
	.loc 1 5852 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5853 0
	cmpl	$0, -16(%ebp)
	jne	.L2081
	.loc 1 5855 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5856 0
	movl	integer_types@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
.L2081:
	.loc 1 5859 0
	movl	-16(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 5850 0
	jmp	.L2083
.L2080:
.LBE72:
	.loc 1 5862 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
.L2083:
	.loc 1 5864 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-32(%ebp), %eax
	jne	.L2084
	.loc 1 5865 0
	movl	-32(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -36(%ebp)
	jmp	.L2086
.L2084:
	.loc 1 5867 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L2086:
	.loc 1 5869 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 5870 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 5871 0
	movl	8(%ebp), %ecx
	movl	-32(%ebp), %eax
	andw	$511, %ax
	movl	%eax, %edx
	andw	$511, %dx
	movzwl	36(%ecx), %eax
	andw	$-512, %ax
	orl	%edx, %eax
	movw	%ax, 36(%ecx)
	.loc 1 5872 0
	movl	8(%ebp), %ecx
	movl	-28(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 5873 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 5874 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 5876 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2087
	.loc 1 5885 0
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L2089
.L2090:
.LBB73:
	.loc 1 5887 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5889 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 5890 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5891 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 5892 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	andl	$16777215, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 5893 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 5894 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, 32(%eax)
	.loc 1 5910 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5911 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 20(%eax)
.LBE73:
	.loc 1 5885 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L2089:
	cmpl	$0, -52(%ebp)
	jne	.L2090
	.loc 1 5914 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
.L2087:
	.loc 1 5918 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2092
.L2093:
	.loc 1 5920 0
	movl	8(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	je	.L2094
	.loc 1 5922 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 5923 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 5924 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 5925 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5926 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5927 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	-48(%ebp), %edx
	leal	(%eax,%eax), %ecx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 5928 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movl	-48(%ebp), %edx
	movl	%eax, %ecx
	andw	$511, %cx
	movzwl	36(%edx), %eax
	andw	$-512, %ax
	orl	%ecx, %eax
	movw	%ax, 36(%edx)
	.loc 1 5929 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 5930 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-48(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 5931 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	-48(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L2094:
	.loc 1 5918 0
	movl	-48(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -48(%ebp)
.L2092:
	cmpl	$0, -48(%ebp)
	jne	.L2093
	.loc 1 5935 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rest_of_type_compilation@PLT
	.loc 1 5937 0
	movl	8(%ebp), %eax
	.loc 1 5938 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE79:
	.size	finish_enum, .-finish_enum
	.section	.rodata
	.align 4
.LC202:
	.string	"enumerator value for `%s' not integer constant"
	.align 4
.LC203:
	.string	"overflow in enumeration values"
	.align 4
.LC204:
	.string	"ISO C restricts enumerator values to range of `int'"
	.text
.globl build_enumerator
	.type	build_enumerator, @function
build_enumerator:
.LFB80:
	.loc 1 5948 0
	pushl	%ebp
.LCFI246:
	movl	%esp, %ebp
.LCFI247:
	pushl	%ebx
.LCFI248:
	subl	$52, %esp
.LCFI249:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5954 0
	cmpl	$0, 12(%ebp)
	je	.L2099
	.loc 1 5955 0
	jmp	.L2101
.L2102:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L2101:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2103
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2103
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2099
.L2103:
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2099
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2102
.L2099:
	.loc 1 5957 0
	cmpl	$0, 12(%ebp)
	je	.L2107
	.loc 1 5959 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2109
	.loc 1 5961 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	default_conversion@PLT
	movl	%eax, 12(%ebp)
	.loc 1 5962 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	constant_expression_warning@PLT
	jmp	.L2107
.L2109:
	.loc 1 5966 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5968 0
	movl	$0, 12(%ebp)
.L2107:
	.loc 1 5975 0
	cmpl	$0, 12(%ebp)
	jne	.L2111
	.loc 1 5977 0
	movl	enum_next_value@GOTOFF(%ebx), %eax
	movl	%eax, 12(%ebp)
	.loc 1 5978 0
	movl	enum_overflow@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2111
	.loc 1 5979 0
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2111:
	.loc 1 5982 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2114
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	jne	.L2114
	.loc 1 5984 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 5985 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 12(%ebp)
.L2114:
	.loc 1 5989 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_binary_op@PLT
	movl	%eax, enum_next_value@GOTOFF(%ebx)
	.loc 1 5990 0
	movl	enum_next_value@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	movl	%eax, enum_overflow@GOTOFF(%ebx)
	.loc 1 5994 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5995 0
	movl	-8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jl	.L2117
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2117
	movl	$1, -32(%ebp)
	jmp	.L2120
.L2117:
	movl	$0, -32(%ebp)
.L2120:
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	movl	%edx, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jge	.L2121
	movl	-28(%ebp), %edx
	movl	%edx, -24(%ebp)
.L2121:
	movl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	c_common_type_for_size@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6001 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6002 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6003 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 6005 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	.loc 1 6006 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	build_enumerator, .-build_enumerator
	.section	.rodata
	.align 4
.LC205:
	.string	"return type is an incomplete type"
.LC206:
	.string	"return type defaults to `int'"
	.align 4
.LC207:
	.string	"no previous prototype for `%s'"
	.align 4
.LC208:
	.string	"`%s' was used with no prototype before its definition"
	.align 4
.LC209:
	.string	"no previous declaration for `%s'"
	.align 4
.LC210:
	.string	"`%s' was used with no declaration before its definition"
	.align 4
.LC211:
	.string	"return type of `%s' is not `int'"
	.align 4
.LC212:
	.string	"first argument of `%s' should be `int'"
	.align 4
.LC213:
	.string	"second argument of `%s' should be `char **'"
	.align 4
.LC214:
	.string	"third argument of `%s' should probably be `char **'"
	.align 4
.LC215:
	.string	"`%s' takes only zero or two arguments"
	.align 4
.LC216:
	.string	"`%s' is normally a non-static function"
	.text
.globl start_function
	.type	start_function, @function
start_function:
.LFB81:
	.loc 1 6024 0
	pushl	%ebp
.LCFI250:
	movl	%esp, %ebp
.LCFI251:
	pushl	%esi
.LCFI252:
	pushl	%ebx
.LCFI253:
	subl	$64, %esp
.LCFI254:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6027 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6029 0
	movl	current_function_returns_value@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6030 0
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6031 0
	movl	current_function_returns_abnormally@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6032 0
	movl	$0, warn_about_return_type@GOTOFF(%ebx)
	.loc 1 6033 0
	movl	$0, current_extern_inline@GOTOFF(%ebx)
	.loc 1 6034 0
	movl	$0, named_labels@GOTOFF(%ebx)
	.loc 1 6035 0
	movl	$0, shadowed_labels@GOTOFF(%ebx)
	.loc 1 6038 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6040 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	grokdeclarator
	movl	%eax, -36(%ebp)
	.loc 1 6044 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L2124
	.loc 1 6046 0
	movl	immediate_size_expand@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6047 0
	movl	$0, -48(%ebp)
	jmp	.L2126
.L2124:
	.loc 1 6050 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_attributes@PLT
	.loc 1 6053 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	global_binding_level@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L2127
	.loc 1 6054 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_apply_pragma_weak@PLT
.L2127:
	.loc 1 6056 0
	movl	-36(%ebp), %eax
	movl	120(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2129
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2129
	movl	-36(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	testl	%eax, %eax
	je	.L2129
	.loc 1 6059 0
	movl	-36(%ebp), %edx
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L2129:
	.loc 1 6062 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	announce_function@PLT
	.loc 1 6064 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2133
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2133
	.loc 1 6066 0
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6068 0
	movl	-36(%ebp), %esi
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 4(%esi)
.L2133:
	.loc 1 6073 0
	movl	warn_about_return_type@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L2136
	.loc 1 6074 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn_c99@PLT
.L2136:
	.loc 1 6078 0
	movl	last_function_parms@GOTOFF(%ebx), %eax
	movl	%eax, current_function_parms@GOTOFF(%ebx)
	.loc 1 6079 0
	movl	last_function_parm_tags@GOTOFF(%ebx), %eax
	movl	%eax, current_function_parm_tags@GOTOFF(%ebx)
	.loc 1 6083 0
	movl	-36(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 68(%edx)
	.loc 1 6088 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	lookup_name_current_level@PLT
	movl	%eax, -32(%ebp)
	.loc 1 6089 0
	cmpl	$0, -32(%ebp)
	je	.L2138
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2138
	movl	-32(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L2138
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2138
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2138
	.loc 1 6095 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 6096 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, current_function_prototype_file@GOTOFF(%ebx)
	.loc 1 6097 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, current_function_prototype_line@GOTOFF(%ebx)
.L2138:
	.loc 1 6102 0
	cmpl	$0, -32(%ebp)
	jne	.L2144
	.loc 1 6103 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L2144:
	.loc 1 6106 0
	movl	warn_strict_prototypes@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2146
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2146
	cmpl	$0, -32(%ebp)
	je	.L2149
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2146
	movl	-32(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L2149
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2146
.L2149:
	.loc 1 6112 0
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 6106 0
	jmp	.L2153
.L2146:
	.loc 1 6114 0
	movl	warn_missing_prototypes@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2154
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2154
	cmpl	$0, -32(%ebp)
	je	.L2157
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2154
	movl	-32(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L2157
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2154
.L2157:
	movl	-36(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	je	.L2154
	.loc 1 6121 0
	movl	-36(%ebp), %edx
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
	.loc 1 6114 0
	jmp	.L2153
.L2154:
	.loc 1 6124 0
	movl	warn_missing_prototypes@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2162
	cmpl	$0, -32(%ebp)
	je	.L2162
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2162
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L2162
	.loc 1 6127 0
	movl	-36(%ebp), %edx
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
	.loc 1 6124 0
	jmp	.L2153
.L2162:
	.loc 1 6130 0
	movl	warn_missing_declarations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2167
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2167
	cmpl	$0, -32(%ebp)
	jne	.L2167
	movl	-36(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	je	.L2167
	.loc 1 6134 0
	movl	-36(%ebp), %edx
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
	.loc 1 6130 0
	jmp	.L2153
.L2167:
	.loc 1 6137 0
	movl	warn_missing_declarations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2153
	cmpl	$0, -32(%ebp)
	je	.L2153
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2153
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	52(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L2153
	.loc 1 6140 0
	movl	-36(%ebp), %edx
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warning_with_decl@PLT
.L2153:
	.loc 1 6147 0
	movl	-36(%ebp), %ecx
	movl	current_extern_inline@GOTOFF(%ebx), %eax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	33(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 6151 0
	movl	-36(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 6154 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2176
	.loc 1 6155 0
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %edx
	andl	$-9, %edx
	movb	%dl, 10(%eax)
.L2176:
	.loc 1 6158 0
	movl	warn_main@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L2178
	movl	-36(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2178
.LBB74:
	.loc 1 6161 0
	movl	$0, -16(%ebp)
	.loc 1 6163 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L2181
	.loc 1 6165 0
	movl	-36(%ebp), %edx
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
.L2181:
	.loc 1 6167 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2183
.L2184:
.LBB75:
	.loc 1 6170 0
	cmpl	$0, -20(%ebp)
	je	.L2185
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2187
.L2185:
	movl	$0, -44(%ebp)
.L2187:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6172 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2188
	.loc 1 6175 0
	addl	$1, -16(%ebp)
	.loc 1 6176 0
	movl	-16(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$2, -52(%ebp)
	je	.L2192
	cmpl	$3, -52(%ebp)
	je	.L2193
	cmpl	$1, -52(%ebp)
	je	.L2191
	jmp	.L2190
.L2191:
	.loc 1 6179 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L2190
	.loc 1 6180 0
	movl	-36(%ebp), %edx
	leal	.LC212@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
	.loc 1 6182 0
	jmp	.L2190
.L2192:
	.loc 1 6185 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2196
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2196
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2190
.L2196:
	.loc 1 6189 0
	movl	-36(%ebp), %edx
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
	.loc 1 6191 0
	jmp	.L2190
.L2193:
	.loc 1 6194 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2200
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2200
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2190
.L2200:
	.loc 1 6198 0
	movl	-36(%ebp), %edx
	leal	.LC214@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
.L2190:
.LBE75:
	.loc 1 6168 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L2183:
	.loc 1 6167 0
	cmpl	$0, -20(%ebp)
	jne	.L2184
.L2188:
	.loc 1 6207 0
	cmpl	$0, -16(%ebp)
	jle	.L2203
	cmpl	$1, -16(%ebp)
	jle	.L2205
	cmpl	$3, -16(%ebp)
	jle	.L2203
.L2205:
	.loc 1 6208 0
	movl	-36(%ebp), %edx
	leal	.LC215@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
.L2203:
	.loc 1 6210 0
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2178
	.loc 1 6211 0
	movl	-36(%ebp), %edx
	leal	.LC216@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	pedwarn_with_decl@PLT
.L2178:
.LBE74:
	.loc 1 6218 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	movl	%eax, %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6220 0
	movl	$0, (%esp)
	call	pushlevel@PLT
	.loc 1 6221 0
	movl	$1, (%esp)
	call	declare_parm_level@PLT
	.loc 1 6222 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movb	$1, 26(%eax)
	.loc 1 6224 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 6226 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6228 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	c_promoting_integer_type_p@PLT
	testb	%al, %al
	je	.L2208
	.loc 1 6231 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2210
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L2210
	.loc 1 6234 0
	movl	integer_types@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6231 0
	jmp	.L2208
.L2210:
	.loc 1 6236 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L2208:
	.loc 1 6238 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$37, (%esp)
	call	build_decl@PLT
	movl	%eax, 64(%esi)
	.loc 1 6243 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2213
	.loc 1 6244 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
.L2213:
	.loc 1 6246 0
	movl	immediate_size_expand@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6248 0
	call	start_fname_decls@PLT
	.loc 1 6250 0
	movl	$1, -48(%ebp)
.L2126:
	movl	-48(%ebp), %eax
	.loc 1 6251 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE81:
	.size	start_function, .-start_function
	.section	.rodata
	.align 4
.LC217:
	.string	"parm types given both in parmlist and separately"
.LC218:
	.string	"parameter name omitted"
.LC219:
	.string	"parameter `%s' declared void"
	.align 4
.LC220:
	.string	"parameter name missing from parameter list"
	.align 4
.LC221:
	.string	"multiple parameters named `%s'"
	.align 4
.LC222:
	.string	"type of `%s' defaults to `int'"
	.align 4
.LC223:
	.string	"declaration for parameter `%s' but no such parameter"
	.align 4
.LC224:
	.string	"number of arguments doesn't match prototype"
.LC225:
	.string	"prototype declaration"
	.align 4
.LC226:
	.string	"promoted argument `%s' doesn't match prototype"
	.align 4
.LC227:
	.string	"argument `%s' doesn't match prototype"
.LC228:
	.string	"store_parm_decls"
	.text
.globl store_parm_decls
	.type	store_parm_decls, @function
store_parm_decls:
.LFB82:
	.loc 1 6262 0
	pushl	%ebp
.LCFI255:
	movl	%esp, %ebp
.LCFI256:
	pushl	%esi
.LCFI257:
	pushl	%ebx
.LCFI258:
	subl	$112, %esp
.LCFI259:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6263 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 6268 0
	movl	current_function_parms@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	.loc 1 6271 0
	movl	current_function_parm_tags@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	.loc 1 6274 0
	call	getdecls@PLT
	movl	%eax, -80(%ebp)
	.loc 1 6279 0
	movl	$0, -76(%ebp)
	.loc 1 6282 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -72(%ebp)
	.loc 1 6285 0
	movl	$0, -68(%ebp)
	.loc 1 6287 0
	movl	warn_shadow@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 6290 0
	movl	warn_shadow@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6292 0
	cmpl	$0, -88(%ebp)
	je	.L2217
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	je	.L2217
.LBB76:
	.loc 1 6300 0
	movl	$0, -56(%ebp)
	.loc 1 6302 0
	movl	$1, -68(%ebp)
	.loc 1 6304 0
	cmpl	$0, -80(%ebp)
	je	.L2220
.LBB77:
	.loc 1 6308 0
	leal	.LC217@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6312 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 6313 0
	jmp	.L2222
.L2223:
	.loc 1 6314 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2224
	.loc 1 6315 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 44(%eax)
.L2224:
	.loc 1 6313 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L2222:
	cmpl	$0, -52(%ebp)
	jne	.L2223
	.loc 1 6316 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 6317 0
	jmp	.L2227
.L2228:
	.loc 1 6318 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 44(%edx)
	.loc 1 6317 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L2227:
	cmpl	$0, -48(%ebp)
	jne	.L2228
	.loc 1 6319 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6320 0
	movl	current_binding_level@GOTOFF(%ebx), %eax
	movl	$0, 8(%eax)
.L2220:
.LBE77:
	.loc 1 6323 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -88(%ebp)
	.loc 1 6324 0
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2230
.L2231:
	.loc 1 6326 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 6327 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L2232
	.loc 1 6329 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L2234
	.loc 1 6330 0
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L2236
.L2234:
	.loc 1 6331 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L2236
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2236
	.loc 1 6334 0
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6337 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 4(%eax)
.L2236:
	.loc 1 6339 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
	jmp	.L2239
.L2232:
	.loc 1 6345 0
	movl	-92(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6346 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, -56(%ebp)
.L2239:
	.loc 1 6324 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
.L2230:
	cmpl	$0, -92(%ebp)
	jne	.L2231
	.loc 1 6352 0
	call	getdecls@PLT
	movl	-96(%ebp), %edx
	movl	%eax, 60(%edx)
	.loc 1 6371 0
	movl	-56(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2241
.L2242:
	.loc 1 6373 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 6374 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2243
	.loc 1 6376 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	je	.L2243
	.loc 1 6378 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2243
	.loc 1 6379 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
.L2243:
	.loc 1 6371 0
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
.L2241:
	cmpl	$0, -92(%ebp)
	jne	.L2242
	.loc 1 6382 0
	call	gettags@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, (%esp)
	call	storetags
	.loc 1 6292 0
	jmp	.L2248
.L2217:
.LBE76:
	.loc 1 6400 0
	movl	-80(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2249
.L2250:
	.loc 1 6401 0
	movl	-92(%ebp), %edx
	movzbl	35(%edx), %eax
	andl	$-17, %eax
	movb	%al, 35(%edx)
	.loc 1 6400 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2249:
	cmpl	$0, -92(%ebp)
	jne	.L2250
	.loc 1 6403 0
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2252
.L2253:
.LBB78:
	.loc 1 6405 0
	movl	$0, -40(%ebp)
	.loc 1 6407 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2254
	.loc 1 6409 0
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6411 0
	movl	-92(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 6412 0
	jmp	.L2256
.L2254:
	.loc 1 6417 0
	movl	-80(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2257
.L2258:
	.loc 1 6418 0
	movl	-44(%ebp), %eax
	movl	52(%eax), %edx
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2259
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L2259
	.loc 1 6421 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6422 0
	jmp	.L2262
.L2259:
	.loc 1 6417 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L2257:
	cmpl	$0, -44(%ebp)
	jne	.L2258
.L2262:
	.loc 1 6427 0
	cmpl	$0, -40(%ebp)
	je	.L2263
	movl	-40(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2263
	.loc 1 6429 0
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6430 0
	movl	$0, -40(%ebp)
.L2263:
	.loc 1 6434 0
	cmpl	$0, -40(%ebp)
	je	.L2266
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L2266
	.loc 1 6436 0
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6437 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6438 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6439 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L2266:
	.loc 1 6443 0
	cmpl	$0, -40(%ebp)
	jne	.L2269
	.loc 1 6445 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$36, (%esp)
	call	build_decl@PLT
	movl	%eax, -40(%ebp)
	.loc 1 6447 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6448 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 6449 0
	movl	-96(%ebp), %eax
	movl	16(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 6450 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2271
	.loc 1 6451 0
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L2273
.L2271:
	.loc 1 6452 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2273
	.loc 1 6453 0
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L2273:
	.loc 1 6454 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl@PLT
.L2269:
	.loc 1 6457 0
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 6460 0
	movl	-40(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$16, %eax
	movb	%al, 35(%edx)
.L2256:
.LBE78:
	.loc 1 6403 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2252:
	cmpl	$0, -92(%ebp)
	jne	.L2253
	.loc 1 6469 0
	movl	$0, -76(%ebp)
	.loc 1 6470 0
	movl	-80(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2276
.L2277:
.LBB79:
	.loc 1 6472 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 6473 0
	movl	-92(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6475 0
	movl	-92(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L2278
	.loc 1 6476 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, -76(%ebp)
	jmp	.L2280
.L2278:
	.loc 1 6480 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2281
	.loc 1 6482 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6483 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 4(%eax)
.L2281:
	.loc 1 6486 0
	movl	-92(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2280
	.loc 1 6488 0
	leal	.LC223@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 6493 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, -88(%ebp)
.L2280:
	.loc 1 6499 0
	movl	-36(%ebp), %eax
	movl	%eax, -92(%ebp)
.L2276:
.LBE79:
	.loc 1 6470 0
	cmpl	$0, -92(%ebp)
	jne	.L2277
	.loc 1 6505 0
	movl	-88(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 6506 0
	movl	-96(%ebp), %eax
	movl	$0, 60(%eax)
.LBB80:
	.loc 1 6509 0
	movl	$0, -32(%ebp)
	jmp	.L2285
.L2286:
	.loc 1 6510 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2287
	.loc 1 6512 0
	cmpl	$0, -32(%ebp)
	jne	.L2289
	.loc 1 6513 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%edx, 60(%eax)
	jmp	.L2291
.L2289:
	.loc 1 6515 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
.L2291:
	.loc 1 6516 0
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6517 0
	movl	-32(%ebp), %eax
	movl	$0, (%eax)
.L2287:
	.loc 1 6509 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2285:
	cmpl	$0, -92(%ebp)
	jne	.L2286
.LBE80:
	.loc 1 6525 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2293
.LBB81:
	.loc 1 6529 0
	movl	-96(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6530 0
	jmp	.L2295
.L2296:
	.loc 1 6534 0
	cmpl	$0, -92(%ebp)
	je	.L2297
	cmpl	$0, -28(%ebp)
	je	.L2297
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2300
.L2297:
	.loc 1 6537 0
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6538 0
	movl	current_function_prototype_line@GOTOFF(%ebx), %edx
	movl	current_function_prototype_file@GOTOFF(%ebx), %ecx
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	error_with_file_and_line@PLT
	.loc 1 6541 0
	jmp	.L2301
.L2300:
	.loc 1 6546 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	-92(%ebp), %eax
	movl	68(%eax), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2302
	.loc 1 6549 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2304
	.loc 1 6557 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 6559 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2306
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2306
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2306
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2310
.L2306:
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L2310
	.loc 1 6563 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%edx, 68(%eax)
.L2310:
	.loc 1 6565 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2302
	.loc 1 6567 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC226@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 6569 0
	movl	current_function_prototype_line@GOTOFF(%ebx), %edx
	movl	current_function_prototype_file@GOTOFF(%ebx), %ecx
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	warning_with_file_and_line@PLT
	jmp	.L2302
.L2304:
	.loc 1 6577 0
	movl	-92(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6579 0
	movl	current_function_prototype_line@GOTOFF(%ebx), %edx
	movl	current_function_prototype_file@GOTOFF(%ebx), %ecx
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	error_with_file_and_line@PLT
.L2302:
	.loc 1 6532 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2295:
	.loc 1 6530 0
	cmpl	$0, -92(%ebp)
	jne	.L2296
	cmpl	$0, -28(%ebp)
	je	.L2301
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	76(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2296
.L2301:
	.loc 1 6585 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 80(%eax)
	jmp	.L2316
.L2293:
.LBE81:
.LBB82:
	.loc 1 6592 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 6594 0
	movl	-96(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2317
.L2318:
	.loc 1 6596 0
	movl	-92(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6597 0
	cmpl	$0, -20(%ebp)
	je	.L2319
	.loc 1 6598 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2321
.L2319:
	.loc 1 6600 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2321:
	.loc 1 6601 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6594 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L2317:
	cmpl	$0, -92(%ebp)
	jne	.L2318
	.loc 1 6603 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6604 0
	cmpl	$0, -20(%ebp)
	je	.L2323
	.loc 1 6605 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L2325
.L2323:
	.loc 1 6607 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2325:
	.loc 1 6617 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_type_copy@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6619 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 80(%edx)
.L2316:
.LBE82:
	.loc 1 6627 0
	movl	-96(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, (%esp)
	call	storedecls
.L2248:
	.loc 1 6634 0
	movl	$1, keep_next_if_subblocks@GOTOFF(%ebx)
	.loc 1 6645 0
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_aux_info_record@PLT
	.loc 1 6648 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	init_function_start@PLT
	.loc 1 6651 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$100, %eax
	movl	%eax, (%esp)
	call	begin_stmt_tree@PLT
	.loc 1 6656 0
	cmpl	$0, -72(%ebp)
	je	.L2326
.LBB83:
	.loc 1 6660 0
	movl	-96(%ebp), %eax
	movl	120(%eax), %esi
	call	get_pending_sizes@PLT
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 4(%esi)
	.loc 1 6662 0
	movl	-96(%ebp), %eax
	movl	120(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6663 0
	jmp	.L2328
.L2329:
	.loc 1 6665 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 6664 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2328:
	.loc 1 6663 0
	cmpl	$0, -12(%ebp)
	jne	.L2329
.L2326:
.LBE83:
	.loc 1 6669 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$8, %eax
	movb	%al, 298(%edx)
	.loc 1 6675 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6676 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$16, %eax
	movb	%al, 298(%edx)
	.loc 1 6678 0
	movl	warn_shadow@GOT(%ebx), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6685 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_parse_tree@PLT
	.loc 1 6693 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Start_Function@PLT
	.loc 1 6695 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE82:
	.size	store_parm_decls, .-store_parm_decls
	.section	.rodata
	.align 4
.LC229:
	.string	"no return statement in function returning non-void"
	.align 4
.LC230:
	.string	"this function may return with or without a value"
	.text
.globl finish_function
	.type	finish_function, @function
finish_function:
.LFB83:
	.loc 1 6710 0
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
	.loc 1 6711 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6719 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	poplevel@PLT
	.loc 1 6720 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 6724 0
	movl	-8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 6726 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2332
	movl	flag_hosted@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2332
	.loc 1 6728 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L2335
	.loc 1 6733 0
	movl	warn_main@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2332
	.loc 1 6734 0
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L2332
.L2335:
	.loc 1 6742 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2332
	.loc 1 6743 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	c_expand_return@PLT
.L2332:
	.loc 1 6748 0
	call	finish_fname_decls@PLT
	.loc 1 6751 0
	movl	-8(%ebp), %eax
	addl	$100, %eax
	movl	%eax, (%esp)
	call	finish_stmt_tree@PLT
	.loc 1 6754 0
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2340
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L2340
	movl	current_function_returns_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2340
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2340
	movl	current_function_returns_abnormally@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2340
	movl	-8(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	je	.L2340
	movl	-8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L2340
	movl	-8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2340
	.loc 1 6766 0
	leal	.LC229@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2340:
	.loc 1 6770 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2349
	movl	current_function_returns_value@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2349
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2349
	.loc 1 6773 0
	leal	.LC230@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2349:
	.loc 1 6776 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_parsing@PLT
	.loc 1 6779 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_compilation@PLT
	.loc 1 6780 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6782 0
	cmpl	$0, 8(%ebp)
	jne	.L2355
	.loc 1 6785 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_expand_body
	.loc 1 6790 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
.L2355:
	.loc 1 6792 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	finish_function, .-finish_function
.globl c_expand_deferred_function
	.type	c_expand_deferred_function, @function
c_expand_deferred_function:
.LFB84:
	.loc 1 6799 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%ebx
.LCFI266:
	subl	$20, %esp
.LCFI267:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6802 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2360
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2360
	.loc 1 6818 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Start_Function@PLT
	.loc 1 6820 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_expand_body
	.loc 1 6821 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
.L2360:
	.loc 1 6823 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	c_expand_deferred_function, .-c_expand_deferred_function
	.type	set_save_expr_context, @function
set_save_expr_context:
.LFB85:
	.loc 1 6834 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 6835 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L2362
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L2362
	.loc 1 6836 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 6835 0
	jmp	.L2365
.L2362:
	.loc 1 6839 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L2365
	.loc 1 6840 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L2365:
	.loc 1 6842 0
	movl	$0, %eax
	.loc 1 6843 0
	popl	%ebp
	ret
.LFE85:
	.size	set_save_expr_context, .-set_save_expr_context
	.section	.rodata
	.align 4
.LC231:
	.string	"size of return value of `%s' is %u bytes"
	.align 4
.LC232:
	.string	"size of return value of `%s' is larger than %d bytes"
	.text
	.type	c_expand_body, @function
c_expand_body:
.LFB86:
	.loc 1 6854 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	pushl	%ebx
.LCFI272:
	subl	$52, %esp
.LCFI273:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6855 0
	movl	$1, -28(%ebp)
	.loc 1 6864 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2420
	.loc 1 6867 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6868 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6869 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6870 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 6881 0
	movl	flag_inline_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2371
	.loc 1 6886 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 6887 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_inlinable_function_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 6889 0
	cmpl	$0, -28(%ebp)
	jne	.L2373
	cmpl	$0, 16(%ebp)
	je	.L2373
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defer_fn@PLT
	testl	%eax, %eax
	je	.L2373
	.loc 1 6896 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 6897 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 6898 0
	movl	lineno@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6899 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6918 0
	movl	WFE_Null_ST_References@GOT(%ebx), %eax
	movl	8(%ebp), %edx
	addl	$100, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_tree_without_duplicates@PLT
	.loc 1 6921 0
	movl	defer_function@GOT(%ebx), %eax
	movb	$1, (%eax)
	.loc 1 6922 0
	call	WFE_Finish_Function@PLT
	.loc 1 6923 0
	movl	defer_function@GOT(%ebx), %eax
	movb	$0, (%eax)
	.loc 1 6924 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2377
.L2378:
	.loc 1 6926 0
	movl	-16(%ebp), %eax
	movl	$0, 128(%eax)
	.loc 1 6925 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2377:
	.loc 1 6924 0
	cmpl	$0, -16(%ebp)
	jne	.L2378
	.loc 1 6928 0
	jmp	.L2420
.L2373:
	.loc 1 6932 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_inline_calls@PLT
	.loc 1 6933 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
.L2371:
	.loc 1 6936 0
	movl	$14, (%esp)
	call	timevar_push@PLT
	.loc 1 6938 0
	cmpl	$0, 12(%ebp)
	je	.L2380
	.loc 1 6942 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	expand_pending_sizes@PLT
	.loc 1 6944 0
	call	push_function_context@PLT
.L2380:
	.loc 1 6948 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 6949 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_function_start@PLT
	.loc 1 6952 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$8, %eax
	movb	%al, 298(%edx)
	.loc 1 6958 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 6959 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$16, %eax
	movb	%al, 298(%edx)
	.loc 1 6962 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_function_start@PLT
	.loc 1 6968 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L2382
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	variably_modified_type_p@PLT
	testb	%al, %al
	je	.L2382
	.loc 1 6970 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, 12(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	set_save_expr_context@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	walk_tree@PLT
.L2382:
	.loc 1 6975 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2385
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	232(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2385
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L2385
	.loc 1 6978 0
	call	expand_main_function@PLT
.L2385:
	.loc 1 6981 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	expand_stmt@PLT
	.loc 1 6983 0
	call	WFE_Finish_Function@PLT
	.loc 1 6987 0
	cmpl	$0, -28(%ebp)
	je	.L2389
	movl	$0, (%esp)
	call	dump_enabled_p@PLT
	testl	%eax, %eax
	jne	.L2389
	.loc 1 6990 0
	movl	8(%ebp), %eax
	movl	$0, 100(%eax)
.L2389:
	.loc 1 6997 0
	movl	immediate_size_expand@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 7000 0
	movl	lang_expand_function_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2392
	.loc 1 7001 0
	movl	lang_expand_function_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	call	*%eax
.L2392:
	.loc 1 7004 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_function_end@PLT
	.loc 1 7008 0
	cmpl	$0, 12(%ebp)
	je	.L2394
	.loc 1 7009 0
	call	ggc_push_context@PLT
.L2394:
	.loc 1 7012 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_compilation@PLT
	.loc 1 7015 0
	cmpl	$0, 12(%ebp)
	je	.L2396
	.loc 1 7016 0
	call	ggc_pop_context@PLT
.L2396:
	.loc 1 7022 0
	movl	warn_larger_than@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2398
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2398
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2398
.LBB84:
	.loc 1 7024 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7026 0
	cmpl	$0, -12(%ebp)
	je	.L2398
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2398
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2398
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L2398
.LBB85:
	.loc 1 7032 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7034 0
	movl	-8(%ebp), %edx
	movl	$0, %ecx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jne	.L2406
	.loc 1 7035 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC231@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
	jmp	.L2398
.L2406:
	.loc 1 7039 0
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L2398:
.LBE85:
.LBE84:
	.loc 1 7045 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	.L2408
	cmpl	$0, 12(%ebp)
	jne	.L2408
	movl	flag_inline_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2408
	.loc 1 7053 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L2412
	.loc 1 7054 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
.L2412:
	.loc 1 7056 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
.L2408:
	.loc 1 7059 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2414
	.loc 1 7068 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	WFE_Assemble_Constructor@PLT
.L2414:
	.loc 1 7073 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2416
	.loc 1 7082 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	WFE_Assemble_Destructor@PLT
.L2416:
	.loc 1 7087 0
	cmpl	$0, 12(%ebp)
	je	.L2418
	.loc 1 7089 0
	call	pop_function_context@PLT
.L2418:
	.loc 1 7090 0
	movl	$14, (%esp)
	call	timevar_pop@PLT
	.loc 1 7092 0
	movl	lineno@GOT(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7093 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
.L2420:
	.loc 1 7094 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	c_expand_body, .-c_expand_body
	.section	.rodata
	.align 4
.LC233:
	.string	"`for' loop initial declaration used outside C99 mode"
	.align 4
.LC234:
	.string	"`struct %s' declared in `for' loop initial declaration"
	.align 4
.LC235:
	.string	"`union %s' declared in `for' loop initial declaration"
	.align 4
.LC236:
	.string	"`enum %s' declared in `for' loop initial declaration"
	.align 4
.LC237:
	.string	"declaration of non-variable `%s' in `for' loop initial declaration"
	.align 4
.LC238:
	.string	"declaration of static variable `%s' in `for' loop initial declaration"
	.align 4
.LC239:
	.string	"declaration of `extern' variable `%s' in `for' loop initial declaration"
	.text
.globl check_for_loop_decls
	.type	check_for_loop_decls, @function
check_for_loop_decls:
.LFB87:
	.loc 1 7100 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$36, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7103 0
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2422
	.loc 1 7108 0
	leal	.LC233@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 7109 0
	jmp	.L2443
.L2422:
	.loc 1 7125 0
	call	gettags@PLT
	movl	%eax, -12(%ebp)
	jmp	.L2425
.L2426:
	.loc 1 7127 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2427
.LBB86:
	.loc 1 7129 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 7131 0
	cmpl	$21, -8(%ebp)
	jne	.L2429
	.loc 1 7132 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC234@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2427
.L2429:
	.loc 1 7134 0
	cmpl	$22, -8(%ebp)
	jne	.L2431
	.loc 1 7135 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC235@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L2427
.L2431:
	.loc 1 7138 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC236@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2427:
.LBE86:
	.loc 1 7125 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2425:
	cmpl	$0, -12(%ebp)
	jne	.L2426
	.loc 1 7143 0
	call	getdecls@PLT
	movl	%eax, -12(%ebp)
	jmp	.L2434
.L2435:
	.loc 1 7145 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L2436
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2436
	.loc 1 7146 0
	leal	.LC237@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 7145 0
	jmp	.L2439
.L2436:
	.loc 1 7147 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2440
	.loc 1 7148 0
	leal	.LC238@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L2439
.L2440:
	.loc 1 7149 0
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2439
	.loc 1 7150 0
	leal	.LC239@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L2439:
	.loc 1 7143 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2434:
	cmpl	$0, -12(%ebp)
	jne	.L2435
.L2443:
	.loc 1 7152 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	check_for_loop_decls, .-check_for_loop_decls
.globl c_push_function_context
	.type	c_push_function_context, @function
c_push_function_context:
.LFB88:
	.loc 1 7177 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$20, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7179 0
	movl	$52, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7181 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 288(%edx)
	.loc 1 7183 0
	movl	-8(%ebp), %edx
	movl	c_stmt_tree@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+c_stmt_tree@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+c_stmt_tree@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+c_stmt_tree@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	.loc 1 7184 0
	movl	c_scope_stmt_stack@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 7185 0
	movl	named_labels@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 7186 0
	movl	shadowed_labels@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 7187 0
	movl	current_function_returns_value@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 7188 0
	movl	current_function_returns_null@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 7189 0
	movl	current_function_returns_abnormally@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 7190 0
	movl	warn_about_return_type@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 7191 0
	movl	current_extern_inline@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 7192 0
	movl	current_binding_level@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 7193 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	c_push_function_context, .-c_push_function_context
.globl c_pop_function_context
	.type	c_pop_function_context, @function
c_pop_function_context:
.LFB89:
	.loc 1 7200 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	subl	$16, %esp
.LCFI284:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 7201 0
	movl	8(%ebp), %eax
	movl	288(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7205 0
	movl	shadowed_labels@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L2447
.L2448:
	.loc 1 7206 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2449
	.loc 1 7207 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 48(%edx)
.L2449:
	.loc 1 7205 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L2447:
	cmpl	$0, -4(%ebp)
	jne	.L2448
	.loc 1 7210 0
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	.L2452
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	jne	.L2452
	.loc 1 7216 0
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, 68(%edx)
	.loc 1 7217 0
	movl	current_function_decl@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 60(%eax)
.L2452:
	.loc 1 7220 0
	movl	-8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, c_stmt_tree@GOTOFF(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4+c_stmt_tree@GOTOFF(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8+c_stmt_tree@GOTOFF(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12+c_stmt_tree@GOTOFF(%ecx)
	.loc 1 7221 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, c_scope_stmt_stack@GOTOFF(%ecx)
	.loc 1 7222 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, named_labels@GOTOFF(%ecx)
	.loc 1 7223 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, shadowed_labels@GOTOFF(%ecx)
	.loc 1 7224 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %edx
	movl	current_function_returns_value@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 7225 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %edx
	movl	current_function_returns_null@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 7226 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	current_function_returns_abnormally@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 7227 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, warn_about_return_type@GOTOFF(%ecx)
	.loc 1 7228 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, current_extern_inline@GOTOFF(%ecx)
	.loc 1 7229 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, current_binding_level@GOTOFF(%ecx)
	.loc 1 7231 0
	movl	8(%ebp), %eax
	movl	$0, 288(%eax)
	.loc 1 7232 0
	leave
	ret
.LFE89:
	.size	c_pop_function_context, .-c_pop_function_context
.globl c_dup_lang_specific_decl
	.type	c_dup_lang_specific_decl, @function
c_dup_lang_specific_decl:
.LFB90:
	.loc 1 7239 0
	pushl	%ebp
.LCFI285:
	movl	%esp, %ebp
.LCFI286:
	pushl	%ebx
.LCFI287:
	subl	$20, %esp
.LCFI288:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7242 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L2459
	.loc 1 7245 0
	movl	$8, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7246 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 7248 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 120(%edx)
.L2459:
	.loc 1 7249 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	c_dup_lang_specific_decl, .-c_dup_lang_specific_decl
.globl stmts_are_full_exprs_p
	.type	stmts_are_full_exprs_p, @function
stmts_are_full_exprs_p:
.LFB91:
	.loc 1 7262 0
	pushl	%ebp
.LCFI289:
	movl	%esp, %ebp
.LCFI290:
	.loc 1 7263 0
	movl	$0, %eax
	.loc 1 7264 0
	popl	%ebp
	ret
.LFE91:
	.size	stmts_are_full_exprs_p, .-stmts_are_full_exprs_p
.globl current_stmt_tree
	.type	current_stmt_tree, @function
current_stmt_tree:
.LFB92:
	.loc 1 7272 0
	pushl	%ebp
.LCFI291:
	movl	%esp, %ebp
.LCFI292:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 7273 0
	leal	c_stmt_tree@GOTOFF(%ecx), %eax
	.loc 1 7274 0
	popl	%ebp
	ret
.LFE92:
	.size	current_stmt_tree, .-current_stmt_tree
.globl current_scope_stmt_stack
	.type	current_scope_stmt_stack, @function
current_scope_stmt_stack:
.LFB93:
	.loc 1 7280 0
	pushl	%ebp
.LCFI293:
	movl	%esp, %ebp
.LCFI294:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 7281 0
	leal	c_scope_stmt_stack@GOTOFF(%ecx), %eax
	.loc 1 7282 0
	popl	%ebp
	ret
.LFE93:
	.size	current_scope_stmt_stack, .-current_scope_stmt_stack
.globl anon_aggr_type_p
	.type	anon_aggr_type_p, @function
anon_aggr_type_p:
.LFB94:
	.loc 1 7290 0
	pushl	%ebp
.LCFI295:
	movl	%esp, %ebp
.LCFI296:
	.loc 1 7291 0
	movl	$0, %eax
	.loc 1 7292 0
	popl	%ebp
	ret
.LFE94:
	.size	anon_aggr_type_p, .-anon_aggr_type_p
.globl extract_interface_info
	.type	extract_interface_info, @function
extract_interface_info:
.LFB95:
	.loc 1 7298 0
	pushl	%ebp
.LCFI297:
	movl	%esp, %ebp
.LCFI298:
	.loc 1 7299 0
	popl	%ebp
	ret
.LFE95:
	.size	extract_interface_info, .-extract_interface_info
.globl c_begin_compound_stmt
	.type	c_begin_compound_stmt, @function
c_begin_compound_stmt:
.LFB96:
	.loc 1 7306 0
	pushl	%ebp
.LCFI299:
	movl	%esp, %ebp
.LCFI300:
	pushl	%ebx
.LCFI301:
	subl	$36, %esp
.LCFI302:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7310 0
	movl	$0, 4(%esp)
	movl	$157, (%esp)
	call	build_stmt@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7312 0
	movl	-8(%ebp), %eax
	.loc 1 7313 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	c_begin_compound_stmt, .-c_begin_compound_stmt
.globl c_expand_decl_stmt
	.type	c_expand_decl_stmt, @function
c_expand_decl_stmt:
.LFB97:
	.loc 1 7321 0
	pushl	%ebp
.LCFI303:
	movl	%esp, %ebp
.LCFI304:
	pushl	%ebx
.LCFI305:
	subl	$36, %esp
.LCFI306:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7322 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7325 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L2477
	movl	-8(%ebp), %eax
	movl	56(%eax), %edx
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2477
	movl	-8(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L2477
	.loc 1 7328 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	c_expand_body
.L2477:
	.loc 1 7329 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	c_expand_decl_stmt, .-c_expand_decl_stmt
.globl identifier_global_value
	.type	identifier_global_value, @function
identifier_global_value:
.LFB98:
	.loc 1 7337 0
	pushl	%ebp
.LCFI307:
	movl	%esp, %ebp
.LCFI308:
	.loc 1 7338 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	.loc 1 7339 0
	popl	%ebp
	ret
.LFE98:
	.size	identifier_global_value, .-identifier_global_value
.globl record_builtin_type
	.type	record_builtin_type, @function
record_builtin_type:
.LFB99:
	.loc 1 7349 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	pushl	%ebx
.LCFI311:
	subl	$36, %esp
.LCFI312:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7351 0
	cmpl	$0, 12(%ebp)
	jne	.L2481
	.loc 1 7352 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2483
.L2481:
	.loc 1 7354 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -8(%ebp)
.L2483:
	.loc 1 7355 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	build_decl@PLT
	movl	%eax, (%esp)
	call	pushdecl@PLT
	.loc 1 7356 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	record_builtin_type, .-record_builtin_type
.globl build_void_list_node
	.type	build_void_list_node, @function
build_void_list_node:
.LFB100:
	.loc 1 7361 0
	pushl	%ebp
.LCFI313:
	movl	%esp, %ebp
.LCFI314:
	pushl	%ebx
.LCFI315:
	subl	$36, %esp
.LCFI316:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7362 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7363 0
	movl	-8(%ebp), %eax
	.loc 1 7364 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	build_void_list_node, .-build_void_list_node
.globl make_pointer_declarator
	.type	make_pointer_declarator, @function
make_pointer_declarator:
.LFB101:
	.loc 1 7378 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	pushl	%ebx
.LCFI319:
	subl	$36, %esp
.LCFI320:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7380 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7381 0
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_specs_attrs@PLT
	.loc 1 7382 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L2488
	.loc 1 7383 0
	movl	-16(%ebp), %eax
	movl	$0, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
.L2488:
	.loc 1 7384 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	.loc 1 7385 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE101:
	.size	make_pointer_declarator, .-make_pointer_declarator
.globl gt_ggc_mx_binding_level
	.type	gt_ggc_mx_binding_level, @function
gt_ggc_mx_binding_level:
.LFB102:
	.file 2 "../../../kgccfe/gnu/MIPS/gt-c-decl.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI321:
	movl	%esp, %ebp
.LCFI322:
	pushl	%ebx
.LCFI323:
	subl	$20, %esp
.LCFI324:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L2511
	cmpl	$1, -8(%ebp)
	je	.L2511
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L2511
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2496
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2496:
	.loc 2 31 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2498
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2498:
	.loc 2 32 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L2500
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2500:
	.loc 2 33 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2502
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2502:
	.loc 2 34 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2504
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2504:
	.loc 2 35 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2506
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_binding_level@PLT
.L2506:
	.loc 2 36 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2508
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2508:
	.loc 2 37 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2511
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2511:
	.loc 2 39 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE102:
	.size	gt_ggc_mx_binding_level, .-gt_ggc_mx_binding_level
.globl gt_ggc_mx_lang_tree_node
	.type	gt_ggc_mx_lang_tree_node, @function
gt_ggc_mx_lang_tree_node:
.LFB103:
	.loc 2 44 0
	pushl	%ebp
.LCFI325:
	movl	%esp, %ebp
.LCFI326:
	pushl	%ebx
.LCFI327:
	subl	$52, %esp
.LCFI328:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 45 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 2 46 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 2 47 0
	jmp	.L2513
.L2514:
	.loc 2 48 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L2513:
	.loc 2 47 0
	cmpl	$0, -24(%ebp)
	je	.L2518
	cmpl	$1, -24(%ebp)
	je	.L2518
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	je	.L2514
	.loc 2 49 0
	jmp	.L2518
.L2519:
	.loc 2 51 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L2521
	cmpl	$1, -52(%ebp)
	je	.L2522
	jmp	.L2520
.L2521:
	.loc 2 54 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_node_structure@PLT
	movl	%eax, -48(%ebp)
	cmpl	$12, -48(%ebp)
	ja	.L2520
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L2537@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2537:
	.long	.L2524@GOTOFF
	.long	.L2525@GOTOFF
	.long	.L2526@GOTOFF
	.long	.L2527@GOTOFF
	.long	.L2528@GOTOFF
	.long	.L2529@GOTOFF
	.long	.L2530@GOTOFF
	.long	.L2531@GOTOFF
	.long	.L2532@GOTOFF
	.long	.L2533@GOTOFF
	.long	.L2534@GOTOFF
	.long	.L2535@GOTOFF
	.long	.L2536@GOTOFF
	.text
.L2524:
	.loc 2 57 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2538
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2538:
	.loc 2 58 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 59 0
	jmp	.L2520
.L2525:
	.loc 2 61 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2542
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2542:
	.loc 2 62 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2544
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2544:
	.loc 2 63 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 64 0
	jmp	.L2520
.L2526:
	.loc 2 66 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2548
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2548:
	.loc 2 67 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2550
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2550:
	.loc 2 68 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2552
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2552:
	.loc 2 69 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_real_value@PLT
	.loc 2 70 0
	jmp	.L2520
.L2527:
	.loc 2 72 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2556
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2556:
	.loc 2 73 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2558
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2558:
	.loc 2 74 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2560
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2560:
	.loc 2 75 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 76 0
	jmp	.L2520
.L2528:
	.loc 2 78 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2564
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2564:
	.loc 2 79 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2566
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2566:
	.loc 2 80 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 81 0
	jmp	.L2520
.L2529:
	.loc 2 83 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2570
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2570:
	.loc 2 84 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2572
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2572:
	.loc 2 85 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2574
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2574:
	.loc 2 86 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2576
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2576:
	.loc 2 87 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 88 0
	jmp	.L2520
.L2530:
	.loc 2 90 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2580
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2580:
	.loc 2 91 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 92 0
	jmp	.L2520
.L2531:
	.loc 2 94 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2584
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2584:
	.loc 2 95 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2586
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2586:
	.loc 2 96 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2588
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2588:
	.loc 2 97 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2590
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2590:
	.loc 2 98 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2592
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2592:
	.loc 2 99 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2594
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2594:
	.loc 2 100 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2596
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2596:
	.loc 2 101 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2598
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2598:
	.loc 2 102 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L2600
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2600:
	.loc 2 103 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L2602
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2602:
	.loc 2 104 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L2604
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2604:
	.loc 2 105 0
	movl	-28(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L2606
	movl	-28(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2606:
	.loc 2 106 0
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	.L2608
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2608:
	.loc 2 107 0
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L2610
	movl	-28(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2610:
	.loc 2 108 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2612
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2612:
	.loc 2 109 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$36, -44(%ebp)
	je	.L2616
	cmpl	$38, -44(%ebp)
	je	.L2617
	cmpl	$31, -44(%ebp)
	je	.L2615
	jmp	.L2614
.L2615:
	.loc 2 112 0
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L2614
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_function@PLT
	.loc 2 113 0
	jmp	.L2614
.L2616:
	.loc 2 115 0
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L2614
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 116 0
	jmp	.L2614
.L2617:
	.loc 2 118 0
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L2614
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2614:
	.loc 2 123 0
	movl	-28(%ebp), %eax
	movl	100(%eax), %eax
	testl	%eax, %eax
	je	.L2623
	movl	-28(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2623:
	.loc 2 124 0
	movl	-28(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L2625
	movl	-28(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2625:
	.loc 2 125 0
	movl	-28(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L2627
	movl	-28(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2627:
	.loc 2 126 0
	movl	-28(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_decl@PLT
	.loc 2 127 0
	jmp	.L2520
.L2532:
	.loc 2 129 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2631
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2631:
	.loc 2 130 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2633
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2633:
	.loc 2 131 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2635
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2635:
	.loc 2 132 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2637
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2637:
	.loc 2 133 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2639
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2639:
	.loc 2 134 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2641
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2641:
	.loc 2 135 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2643
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2643:
	.loc 2 136 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2645
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2645:
	.loc 2 137 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	sdb_debug_hooks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L2652
.L2652:
	.loc 2 144 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2653
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2653:
	.loc 2 145 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2655
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2655:
	.loc 2 146 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L2657
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2657:
	.loc 2 147 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L2659
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2659:
	.loc 2 148 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L2661
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2661:
	.loc 2 149 0
	movl	-28(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L2663
	movl	-28(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2663:
	.loc 2 150 0
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	.L2665
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2665:
	.loc 2 151 0
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_type@PLT
	.loc 2 152 0
	jmp	.L2520
.L2533:
	.loc 2 154 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2669
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2669:
	.loc 2 155 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2671
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2671:
	.loc 2 156 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2673
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2673:
	.loc 2 157 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 158 0
	jmp	.L2520
.L2534:
	.loc 2 160 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2677
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2677:
	.loc 2 161 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2679
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2679:
.LBB87:
	.loc 2 164 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 165 0
	movl	$0, -20(%ebp)
	jmp	.L2681
.L2682:
	.loc 2 166 0
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2683
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2683:
	.loc 2 165 0
	addl	$1, -20(%ebp)
.L2681:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L2682
	.loc 2 169 0
	jmp	.L2520
.L2535:
.LBE87:
	.loc 2 171 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2686
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2686:
	.loc 2 172 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2688
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2688:
	.loc 2 173 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$120, -40(%ebp)
	je	.L2693
	cmpl	$120, -40(%ebp)
	ja	.L2696
	cmpl	$55, -40(%ebp)
	je	.L2691
	cmpl	$56, -40(%ebp)
	je	.L2692
	jmp	.L2690
.L2696:
	cmpl	$122, -40(%ebp)
	je	.L2694
	cmpl	$138, -40(%ebp)
	je	.L2695
	jmp	.L2690
.L2691:
	.loc 2 176 0
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2697
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2697:
	.loc 2 177 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2699
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2699:
	.loc 2 178 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2701
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2701:
	.loc 2 179 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 180 0
	jmp	.L2520
.L2692:
	.loc 2 182 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2706
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2706:
	.loc 2 183 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2708
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2708:
	.loc 2 184 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 185 0
	jmp	.L2520
.L2694:
	.loc 2 187 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2712
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2712:
	.loc 2 188 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 189 0
	jmp	.L2520
.L2695:
	.loc 2 191 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2716
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2716:
	.loc 2 192 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 193 0
	jmp	.L2520
.L2693:
	.loc 2 195 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2720
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L2720:
	.loc 2 196 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2722
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2722:
	.loc 2 197 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 198 0
	jmp	.L2520
.L2690:
.LBB88:
	.loc 2 202 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 2 203 0
	movl	$0, -12(%ebp)
	jmp	.L2726
.L2727:
	.loc 2 204 0
	movl	-12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2728
	movl	-12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2728:
	.loc 2 203 0
	addl	$1, -12(%ebp)
.L2726:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L2727
	.loc 2 209 0
	jmp	.L2520
.L2536:
.LBE88:
	.loc 2 211 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2730
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2730:
	.loc 2 212 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2732
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2732:
	.loc 2 213 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2734
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2734:
	.loc 2 214 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2736
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2736:
	.loc 2 215 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2738
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2738:
	.loc 2 216 0
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2740
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2740:
	.loc 2 217 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2742
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2742:
	.loc 2 218 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 223 0
	jmp	.L2520
.L2522:
	.loc 2 225 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2745
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2745:
	.loc 2 226 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2747
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2747:
	.loc 2 227 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L2749
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2749:
	.loc 2 228 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L2751
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2751:
	.loc 2 229 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2753
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2753:
	.loc 2 230 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2755
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2755:
	.loc 2 231 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2757
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2757:
	.loc 2 232 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2520:
	.loc 2 237 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2518:
	.loc 2 49 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L2519
	.loc 2 239 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE103:
	.size	gt_ggc_mx_lang_tree_node, .-gt_ggc_mx_lang_tree_node
.globl gt_ggc_mx_lang_decl
	.type	gt_ggc_mx_lang_decl, @function
gt_ggc_mx_lang_decl:
.LFB104:
	.loc 2 244 0
	pushl	%ebp
.LCFI329:
	movl	%esp, %ebp
.LCFI330:
	pushl	%ebx
.LCFI331:
	subl	$20, %esp
.LCFI332:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 245 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 246 0
	cmpl	$0, -8(%ebp)
	je	.L2768
	cmpl	$1, -8(%ebp)
	je	.L2768
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L2768
	.loc 2 248 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2768
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2768:
	.loc 2 250 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	gt_ggc_mx_lang_decl, .-gt_ggc_mx_lang_decl
.globl gt_ggc_mx_lang_type
	.type	gt_ggc_mx_lang_type, @function
gt_ggc_mx_lang_type:
.LFB105:
	.loc 2 255 0
	pushl	%ebp
.LCFI333:
	movl	%esp, %ebp
.LCFI334:
	pushl	%ebx
.LCFI335:
	subl	$20, %esp
.LCFI336:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 256 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 257 0
	cmpl	$0, -16(%ebp)
	je	.L2778
	cmpl	$1, -16(%ebp)
	je	.L2778
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L2778
.LBB89:
	.loc 2 261 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 2 262 0
	movl	$0, -12(%ebp)
	jmp	.L2774
.L2775:
	.loc 2 263 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2776
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2776:
	.loc 2 262 0
	addl	$1, -12(%ebp)
.L2774:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L2775
.L2778:
.LBE89:
	.loc 2 267 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	gt_ggc_mx_lang_type, .-gt_ggc_mx_lang_type
.globl gt_ggc_mx_language_function
	.type	gt_ggc_mx_language_function, @function
gt_ggc_mx_language_function:
.LFB106:
	.loc 2 272 0
	pushl	%ebp
.LCFI337:
	movl	%esp, %ebp
.LCFI338:
	pushl	%ebx
.LCFI339:
	subl	$20, %esp
.LCFI340:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 273 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 274 0
	cmpl	$0, -8(%ebp)
	je	.L2795
	cmpl	$1, -8(%ebp)
	je	.L2795
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L2795
	.loc 2 276 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2784
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2784:
	.loc 2 277 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2786
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2786:
	.loc 2 278 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2788
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2788:
	.loc 2 279 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2790
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2790:
	.loc 2 280 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L2792
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L2792:
	.loc 2 281 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L2795
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_binding_level@PLT
.L2795:
	.loc 2 283 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	gt_ggc_mx_language_function, .-gt_ggc_mx_language_function
.globl gt_ggc_r_gt_c_decl_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_c_decl_h, @object
	.size	gt_ggc_r_gt_c_decl_h, 176
gt_ggc_r_gt_c_decl_h:
	.long	label_level_chain
	.long	1
	.long	4
	.long	gt_ggc_mx_binding_level
	.long	global_binding_level
	.long	1
	.long	4
	.long	gt_ggc_mx_binding_level
	.long	current_binding_level
	.long	1
	.long	4
	.long	gt_ggc_mx_binding_level
	.long	shadowed_labels
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	named_labels
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	c_scope_stmt_stack
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	c_stmt_tree
	.long	1
	.long	16
	.long	gt_ggc_mx_lang_tree_node
	.long	c_stmt_tree+4
	.long	1
	.long	16
	.long	gt_ggc_mx_lang_tree_node
	.long	static_dtors
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	static_ctors
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
.globl gt_ggc_rd_gt_c_decl_h
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	gt_ggc_rd_gt_c_decl_h, @object
	.size	gt_ggc_rd_gt_c_decl_h, 32
gt_ggc_rd_gt_c_decl_h:
	.long	free_binding_level
	.long	1
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.local	enum_next_value
	.comm	enum_next_value,4,4
	.local	enum_overflow
	.comm	enum_overflow,4,4
	.local	last_function_parms
	.comm	last_function_parms,4,4
	.local	last_function_parm_tags
	.comm	last_function_parm_tags,4,4
	.local	current_function_parms
	.comm	current_function_parms,4,4
	.local	current_function_parm_tags
	.comm	current_function_parm_tags,4,4
	.local	current_function_prototype_file
	.comm	current_function_prototype_file,4,4
	.local	current_function_prototype_line
	.comm	current_function_prototype_line,4,4
	.local	c_stmt_tree
	.comm	c_stmt_tree,16,4
	.local	c_scope_stmt_stack
	.comm	c_scope_stmt_stack,4,4
	.local	named_labels
	.comm	named_labels,4,4
	.local	shadowed_labels
	.comm	shadowed_labels,4,4
	.local	warn_about_return_type
	.comm	warn_about_return_type,4,4
	.local	current_extern_inline
	.comm	current_extern_inline,4,4
	.local	current_binding_level
	.comm	current_binding_level,4,4
	.local	free_binding_level
	.comm	free_binding_level,4,4
	.local	global_binding_level
	.comm	global_binding_level,4,4
	.local	keep_next_level_flag
	.comm	keep_next_level_flag,4,4
	.local	keep_next_if_subblocks
	.comm	keep_next_if_subblocks,4,4
	.local	label_level_chain
	.comm	label_level_chain,4,4
	.comm	current_function_returns_value,4,4
	.comm	current_function_returns_null,4,4
	.comm	current_function_returns_abnormally,4,4
	.comm	static_ctors,4,4
	.comm	static_dtors,4,4
	.comm	pending_invalid_xref,4,4
	.comm	pending_invalid_xref_file,4,4
	.comm	pending_invalid_xref_line,4,4
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
	.byte	0x87
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
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI19-.LFB20
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
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
	.long	.LCFI24-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
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
	.long	.LCFI26-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI28-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI32-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
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
	.long	.LCFI35-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI36
	.byte	0x83
	.uleb128 0x4
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
	.long	.LCFI40-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI41
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
	.long	.LCFI45-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI46
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
	.long	.LCFI50-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI54-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI58-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
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
	.byte	0x4
	.long	.LCFI65-.LCFI63
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
	.long	.LCFI66-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI70-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI71
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
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
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI90-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI94-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI98-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI102-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
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
	.long	.LCFI104-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI106-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI108-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI110-.LFB46
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI114-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI115
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
	.long	.LCFI119-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
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
	.long	.LCFI122-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI125-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI128-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI132-.LCFI129
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI133-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI134
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
	.long	.LCFI139-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI140
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI144-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI148-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI152-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI156-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI159-.LCFI157
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
	.long	.LCFI160-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI161
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
	.long	.LCFI164-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI165
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
	.long	.LCFI168-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI171-.LFB61
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI175-.LFB62
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
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI179-.LFB63
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI184-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI186-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI189-.LCFI187
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
	.long	.LCFI190-.LFB66
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
	.long	.LCFI194-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI197-.LFB68
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI202-.LFB69
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
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI206-.LFB70
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
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI210-.LFB71
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
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI214-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI215
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
	.long	.LCFI218-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI219
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
	.long	.LCFI222-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI225-.LCFI223
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
	.long	.LCFI226-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI229-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI233-.LFB77
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
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI237-.LFB78
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
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI241-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI245-.LCFI242
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI246-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI247-.LCFI246
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI249-.LCFI247
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
	.long	.LCFI250-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI251-.LCFI250
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI254-.LCFI251
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI255-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI259-.LCFI256
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI260-.LFB83
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
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI264-.LFB84
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
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI268-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
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
	.long	.LCFI270-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI273-.LCFI271
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
	.long	.LCFI274-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
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
	.long	.LCFI278-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI281-.LCFI279
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
	.long	.LCFI282-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI285-.LFB90
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
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI289-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI290-.LCFI289
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
	.long	.LCFI291-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI292-.LCFI291
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI293-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI294-.LCFI293
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI295-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI296-.LCFI295
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
	.long	.LCFI297-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI298-.LCFI297
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
	.long	.LCFI299-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI300-.LCFI299
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI302-.LCFI300
	.byte	0x83
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
	.long	.LCFI303-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI304-.LCFI303
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI306-.LCFI304
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI307-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI308-.LCFI307
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
	.long	.LCFI309-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI310-.LCFI309
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI312-.LCFI310
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
	.long	.LCFI313-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI314-.LCFI313
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI316-.LCFI314
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
	.long	.LCFI317-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI320-.LCFI318
	.byte	0x83
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
	.long	.LCFI321-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI322-.LCFI321
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI324-.LCFI322
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
	.long	.LCFI325-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI326-.LCFI325
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI328-.LCFI326
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
	.long	.LCFI329-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI330-.LCFI329
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI332-.LCFI330
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
	.long	.LCFI333-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI334-.LCFI333
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI336-.LCFI334
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
	.long	.LCFI337-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI338-.LCFI337
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI340-.LCFI338
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE182:
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 7 "../../../kgccfe/gnu/MIPS/config.h"
	.file 8 "../../../kgccfe/gnu/tree.h"
	.file 9 "../../../kgccfe/gnu/rtl.h"
	.file 10 "../../../kgccfe/gnu/machmode.h"
	.file 11 "../../../kgccfe/gnu/real.h"
	.file 12 "../../../kgccfe/gnu/hashtable.h"
	.file 13 "../../../kgccfe/gnu/location.h"
	.file 14 "../../../kgccfe/gnu/function.h"
	.file 15 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 16 "../../../kgccfe/gnu/c-common.h"
	.file 17 "../../../kgccfe/gnu/c-tree.h"
	.file 18 "../../../kgccfe/omp_types.h"
	.file 19 "../../../kgccfe/gnu/cpplib.h"
	.file 20 "../../../kgccfe/gnu/tree-inline.h"
	.file 21 "../../../kgccfe/gnu/flags.h"
	.file 22 "../../../kgccfe/gnu/target.h"
	.file 23 "../../../kgccfe/gnu/debug.h"
	.file 24 "../../../kgccfe/gnu/libfuncs.h"
	.file 25 "../../../kgccfe/wfe_decl.h"
	.file 26 "../../../kgccfe/gnu/ggc.h"
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
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
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
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
.LLST21:
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
.LLST22:
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
.LLST23:
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
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI164-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI165-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI226-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI227-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
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
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI246-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI247-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI250-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI250-.Ltext0
	.long	.LCFI251-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI251-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI255-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI256-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
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
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB84-.Ltext0
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
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB85-.Ltext0
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
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
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
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI282-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI283-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
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
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
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
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI291-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI292-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
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
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI295-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI296-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
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
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI299-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI300-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI303-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI304-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI307-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI308-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
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
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI313-.Ltext0
	.long	.LCFI314-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI314-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
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
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
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
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI325-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI325-.Ltext0
	.long	.LCFI326-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI326-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI329-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI329-.Ltext0
	.long	.LCFI330-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI330-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI333-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI333-.Ltext0
	.long	.LCFI334-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI334-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI337-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI337-.Ltext0
	.long	.LCFI338-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI338-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xb4ab
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/c-decl.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x7
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x7
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x9
	.byte	0x8a
	.long	0x4da3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x9
	.byte	0x8d
	.long	0x7fc
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x9
	.byte	0x94
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x9
	.byte	0x97
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x9
	.byte	0x9f
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x9
	.byte	0xa8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x9
	.byte	0xba
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x9
	.byte	0xc1
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x9
	.byte	0xc6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x9
	.byte	0xcf
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x9
	.byte	0xd4
	.long	0x57ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x7
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x7
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x9
	.byte	0xf8
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x9
	.byte	0xf9
	.long	0x580f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x7
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x8
	.long	0x2c4
	.string	"tree_node"
	.byte	0x94
	.byte	0x7
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x8
	.value	0x855
	.long	0x2cb6
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x8
	.value	0x856
	.long	0x2fce
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x8
	.value	0x857
	.long	0x3016
	.uleb128 0xa
	.string	"vector"
	.byte	0x8
	.value	0x858
	.long	0x3182
	.uleb128 0xa
	.string	"string"
	.byte	0x8
	.value	0x859
	.long	0x30c3
	.uleb128 0xa
	.string	"complex"
	.byte	0x8
	.value	0x85a
	.long	0x312d
	.uleb128 0x9
	.long	.LASF2
	.byte	0x8
	.value	0x85b
	.long	0x3208
	.uleb128 0x9
	.long	.LASF3
	.byte	0x8
	.value	0x85c
	.long	0x42a6
	.uleb128 0x9
	.long	.LASF4
	.byte	0x8
	.value	0x85d
	.long	0x3462
	.uleb128 0xa
	.string	"list"
	.byte	0x8
	.value	0x85e
	.long	0x323f
	.uleb128 0xa
	.string	"vec"
	.byte	0x8
	.value	0x85f
	.long	0x3284
	.uleb128 0xa
	.string	"exp"
	.byte	0x8
	.value	0x860
	.long	0x32d2
	.uleb128 0x9
	.long	.LASF5
	.byte	0x8
	.value	0x861
	.long	0x331e
	.uleb128 0xa
	.string	"omp"
	.byte	0x8
	.value	0x863
	.long	0x4c4b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2ca
	.uleb128 0xb
	.long	0x2cf
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3aa
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF6
	.byte	0xf
	.value	0xacb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x10
	.long	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.long	0x3c1
	.long	0x9b
	.uleb128 0x12
	.long	0x3c1
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x13
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x2de
	.uleb128 0x2
	.string	"size_t"
	.byte	0x6
	.byte	0xd6
	.long	0x3aa
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
	.byte	0x5
	.byte	0x3b
	.long	0x446
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x490
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x471
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2cf
	.uleb128 0x2
	.string	"FILE"
	.byte	0x3
	.byte	0x2e
	.long	0x4c1
	.uleb128 0x15
	.long	0x73c
	.long	.LASF8
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x7b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x481
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x7cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x7d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x742
	.uleb128 0xb
	.long	0x3ee
	.uleb128 0x3
	.byte	0x4
	.long	0x3ee
	.uleb128 0x3
	.byte	0x4
	.long	0x753
	.uleb128 0x16
	.long	0x75f
	.byte	0x1
	.uleb128 0x17
	.long	0x4ad
	.byte	0x0
	.uleb128 0x18
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0x4
	.long	0x7b0
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x7b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76d
	.uleb128 0x3
	.byte	0x4
	.long	0x4c1
	.uleb128 0x11
	.long	0x7cc
	.long	0x2cf
	.uleb128 0x12
	.long	0x3c1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75f
	.uleb128 0x11
	.long	0x7e2
	.long	0x2cf
	.uleb128 0x12
	.long	0x3c1
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x3
	.byte	0x4
	.long	0x7f3
	.uleb128 0x19
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7f4
	.uleb128 0x1b
	.long	0xa45
	.string	"machine_mode"
	.byte	0x4
	.byte	0xa
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
	.uleb128 0x4
	.long	0xa77
	.string	"location_s"
	.byte	0x8
	.byte	0xd
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xd
	.byte	0x1e
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xd
	.byte	0x21
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xd
	.byte	0x23
	.long	0xa45
	.uleb128 0x1b
	.long	0x13ab
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
	.long	0x3aa
	.uleb128 0x4
	.long	0x13f9
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x8
	.byte	0x32
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x8
	.byte	0x32
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"offset"
	.byte	0x8
	.byte	0x32
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x8
	.byte	0x36
	.long	0x1403
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.uleb128 0x1f
	.long	0x1458
	.long	.LASF9
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
	.long	0x2cb6
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
	.long	0x2f92
	.string	"tree_common"
	.byte	0x10
	.byte	0x8
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x8
	.byte	0x8f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF4
	.byte	0x8
	.byte	0x90
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x8
	.byte	0x92
	.long	0xa89
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x8
	.byte	0xa6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x8
	.byte	0xa7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x8
	.byte	0xa8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x8
	.byte	0xa9
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x8
	.byte	0xaa
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x8
	.byte	0xab
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x8
	.byte	0xac
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
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
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x2fce
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x8
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x8
	.value	0x2f7
	.long	0x457
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x8
	.value	0x2f8
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3016
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x8
	.value	0x2ef
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x2f0
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x2f1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x8
	.value	0x2f9
	.long	0x2f92
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3064
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x8
	.value	0x30b
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x30c
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x30d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x8
	.value	0x30e
	.long	0x30bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x30bd
	.string	"real_value"
	.byte	0x18
	.byte	0x8
	.value	0x305
	.uleb128 0x6
	.string	"class"
	.byte	0xb
	.byte	0x37
	.long	0x77d8
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sign"
	.byte	0xb
	.byte	0x39
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"exp"
	.byte	0xb
	.byte	0x3a
	.long	0x2d7
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0xb
	.byte	0x3b
	.long	0x781e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3064
	.uleb128 0xd
	.long	0x3127
	.string	"tree_string"
	.byte	0x20
	.byte	0x8
	.value	0x31f
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x320
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF17
	.byte	0x8
	.value	0x322
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x8
	.value	0x323
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x8
	.value	0x325
	.long	0x3127
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13f9
	.uleb128 0xd
	.long	0x3182
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x8
	.value	0x32e
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x32f
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x330
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x8
	.value	0x331
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x8
	.value	0x332
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x31ca
	.string	"tree_vector"
	.byte	0x18
	.byte	0x8
	.value	0x340
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x341
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x342
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x8
	.value	0x343
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	0x3208
	.long	.LASF18
	.byte	0xc
	.byte	0xc
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0xc
	.byte	0x1c
	.long	0x73c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0xc
	.byte	0x1d
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0xc
	.byte	0x1e
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x323f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x8
	.value	0x35f
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x360
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x8
	.value	0x361
	.long	0x31ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3284
	.string	"tree_list"
	.byte	0x18
	.byte	0x8
	.value	0x369
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x36a
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x8
	.value	0x36b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x8
	.value	0x36c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x32c2
	.string	"tree_vec"
	.byte	0x18
	.byte	0x8
	.value	0x377
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x378
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x8
	.value	0x379
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x8
	.value	0x37a
	.long	0x32c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x32d2
	.long	0x1e3
	.uleb128 0x12
	.long	0x3c1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x331e
	.string	"tree_exp"
	.byte	0x18
	.byte	0x8
	.value	0x3bd
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x3be
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x8
	.value	0x3bf
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x8
	.value	0x3c2
	.long	0x32c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3408
	.string	"tree_block"
	.byte	0x2c
	.byte	0x8
	.value	0x3f3
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x3f4
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"handler_block_flag"
	.byte	0x8
	.value	0x3f6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF20
	.byte	0x8
	.value	0x3f7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.string	"block_num"
	.byte	0x8
	.value	0x3f8
	.long	0x3aa
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF21
	.byte	0x8
	.value	0x3fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x8
	.value	0x3fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.long	.LASF22
	.byte	0x8
	.value	0x3fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x8
	.value	0x3fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x8
	.value	0x3ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x344f
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x8
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x8
	.value	0x563
	.long	0x2d7
	.uleb128 0xa
	.string	"pointer"
	.byte	0x8
	.value	0x564
	.long	0x4af
	.uleb128 0xa
	.string	"die"
	.byte	0x8
	.value	0x565
	.long	0x345c
	.byte	0x0
	.uleb128 0x1e
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x344f
	.uleb128 0xd
	.long	0x37aa
	.string	"tree_type"
	.byte	0x74
	.byte	0x8
	.value	0x53f
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x540
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x8
	.value	0x541
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"size"
	.byte	0x8
	.value	0x542
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF23
	.byte	0x8
	.value	0x543
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.long	.LASF24
	.byte	0x8
	.value	0x544
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x8
	.value	0x545
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF25
	.byte	0x8
	.value	0x547
	.long	0x3aa
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"mode"
	.byte	0x8
	.value	0x548
	.long	0x7fc
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"string_flag"
	.byte	0x8
	.value	0x54a
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_force_blk_flag"
	.byte	0x8
	.value	0x54b
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"needs_constructing_flag"
	.byte	0x8
	.value	0x54c
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"transparent_union_flag"
	.byte	0x8
	.value	0x54d
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"packed_flag"
	.byte	0x8
	.value	0x54e
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"restrict_flag"
	.byte	0x8
	.value	0x54f
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF26
	.byte	0x8
	.value	0x550
	.long	0x3aa
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x8
	.value	0x552
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x8
	.value	0x553
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x8
	.value	0x554
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x8
	.value	0x555
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x8
	.value	0x556
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF15
	.byte	0x8
	.value	0x557
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF16
	.byte	0x8
	.value	0x558
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF27
	.byte	0x8
	.value	0x559
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"defer_expansion"
	.byte	0x8
	.value	0x55c
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"align"
	.byte	0x8
	.value	0x55f
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x8
	.value	0x560
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x8
	.value	0x561
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x8
	.value	0x566
	.long	0x3408
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.value	0x568
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x8
	.value	0x569
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x8
	.value	0x56a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x8
	.value	0x56b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x8
	.value	0x56c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x8
	.value	0x56d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.long	.LASF29
	.byte	0x8
	.value	0x56e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x8
	.value	0x56f
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.value	0x571
	.long	0x37db
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x8
	.value	0x573
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x8
	.value	0x574
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x8
	.value	0x575
	.long	0x13bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x37db
	.string	"lang_type"
	.byte	0x8
	.byte	0x8
	.value	0x571
	.uleb128 0x7
	.string	"len"
	.byte	0x11
	.byte	0x80
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elts"
	.byte	0x11
	.byte	0x81
	.long	0x32c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37aa
	.uleb128 0xd
	.long	0x3826
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x8
	.value	0x7f0
	.uleb128 0x20
	.string	"align"
	.byte	0x8
	.value	0x7f1
	.long	0x3aa
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.string	"off_align"
	.byte	0x8
	.value	0x7f2
	.long	0x3aa
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x385b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x8
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x8
	.value	0x7ea
	.long	0x1458
	.uleb128 0xa
	.string	"i"
	.byte	0x8
	.value	0x7ed
	.long	0x446
	.uleb128 0xa
	.string	"a"
	.byte	0x8
	.value	0x7f3
	.long	0x37e1
	.byte	0x0
	.uleb128 0x22
	.long	0x389a
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x8
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x8
	.value	0x809
	.long	0x4252
	.uleb128 0xa
	.string	"r"
	.byte	0x8
	.value	0x80a
	.long	0x9b
	.uleb128 0xa
	.string	"t"
	.byte	0x8
	.value	0x80b
	.long	0x1e3
	.uleb128 0xa
	.string	"i"
	.byte	0x8
	.value	0x80c
	.long	0x2d7
	.byte	0x0
	.uleb128 0x23
	.long	0x4252
	.string	"function"
	.value	0x134
	.byte	0x8
	.value	0x79d
	.uleb128 0x7
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x5b85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x5b99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x5b9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x5ba5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x5bbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF28
	.byte	0xe
	.byte	0xbe
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF3
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
	.long	0x4252
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF31
	.byte	0xe
	.byte	0xce
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x2d7
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
	.long	0x3c8
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
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x5bd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x2d7
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
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x446
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x3aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x581f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x5bea
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x588b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x5c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x5cd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x20
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xf
	.long	.LASF32
	.byte	0xe
	.value	0x1fa
	.long	0x5b0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x389a
	.uleb128 0x24
	.long	0x4290
	.byte	0x4
	.byte	0x8
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x8
	.value	0x81f
	.long	0x3127
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x8
	.value	0x820
	.long	0x13ab
	.uleb128 0xa
	.string	"field_id"
	.byte	0x8
	.value	0x821
	.long	0x3aa
	.byte	0x0
	.uleb128 0x24
	.long	0x42a6
	.byte	0x4
	.byte	0x8
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x8
	.value	0x824
	.long	0x3127
	.byte	0x0
	.uleb128 0xd
	.long	0x49b9
	.string	"tree_decl"
	.byte	0x94
	.byte	0x8
	.value	0x7a0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x7a1
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x8
	.value	0x7a2
	.long	0xa77
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x8
	.value	0x7a3
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"size"
	.byte	0x8
	.value	0x7a4
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.string	"mode"
	.byte	0x8
	.value	0x7a5
	.long	0x7fc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"external_flag"
	.byte	0x8
	.value	0x7a7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"nonlocal_flag"
	.byte	0x8
	.value	0x7a8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"regdecl_flag"
	.byte	0x8
	.value	0x7a9
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"inline_flag"
	.byte	0x8
	.value	0x7aa
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"bit_field_flag"
	.byte	0x8
	.value	0x7ab
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"virtual_flag"
	.byte	0x8
	.value	0x7ac
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"ignored_flag"
	.byte	0x8
	.value	0x7ad
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF20
	.byte	0x8
	.value	0x7ae
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sbuf_flag"
	.byte	0x8
	.value	0x7b2
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"sdram_flag"
	.byte	0x8
	.value	0x7b3
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v1buf_flag"
	.byte	0x8
	.value	0x7b4
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v2buf_flag"
	.byte	0x8
	.value	0x7b5
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"v4buf_flag"
	.byte	0x8
	.value	0x7b6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"in_system_header_flag"
	.byte	0x8
	.value	0x7ba
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"common_flag"
	.byte	0x8
	.value	0x7bb
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"defer_output"
	.byte	0x8
	.value	0x7bc
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"transparent_union"
	.byte	0x8
	.value	0x7bd
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_ctor_flag"
	.byte	0x8
	.value	0x7be
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"static_dtor_flag"
	.byte	0x8
	.value	0x7bf
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"artificial_flag"
	.byte	0x8
	.value	0x7c0
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"weak_flag"
	.byte	0x8
	.value	0x7c1
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"non_addr_const_p"
	.byte	0x8
	.value	0x7c3
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"no_instrument_function_entry_exit"
	.byte	0x8
	.value	0x7c4
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"comdat_flag"
	.byte	0x8
	.value	0x7c5
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.string	"malloc_flag"
	.byte	0x8
	.value	0x7c6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"no_limit_stack"
	.byte	0x8
	.value	0x7c7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF9
	.byte	0x8
	.value	0x7c8
	.long	0x1408
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"pure_flag"
	.byte	0x8
	.value	0x7c9
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF26
	.byte	0x8
	.value	0x7cb
	.long	0x3aa
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"non_addressable"
	.byte	0x8
	.value	0x7cc
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF27
	.byte	0x8
	.value	0x7cd
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF33
	.byte	0x8
	.value	0x7ce
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"thread_local_flag"
	.byte	0x8
	.value	0x7cf
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"inlined_function_flag"
	.byte	0x8
	.value	0x7d0
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF34
	.byte	0x8
	.value	0x7d2
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF10
	.byte	0x8
	.value	0x7d5
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF11
	.byte	0x8
	.value	0x7d6
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF12
	.byte	0x8
	.value	0x7d7
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF13
	.byte	0x8
	.value	0x7d8
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF14
	.byte	0x8
	.value	0x7d9
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF15
	.byte	0x8
	.value	0x7da
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF16
	.byte	0x8
	.value	0x7db
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"lang_flag_7"
	.byte	0x8
	.value	0x7dc
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"syscall_linkage_flag"
	.byte	0x8
	.value	0x7df
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"widen_retval_flag"
	.byte	0x8
	.value	0x7e0
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.string	"promote_static"
	.byte	0x8
	.value	0x7e3
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.long	.LASF35
	.byte	0x8
	.value	0x7e4
	.long	0x3aa
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
	.long	0x3826
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.long	.LASF23
	.byte	0x8
	.value	0x7f6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.value	0x7f7
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.long	.LASF29
	.byte	0x8
	.value	0x7f8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x8
	.value	0x7f9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x8
	.value	0x7fa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x8
	.value	0x7fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.long	.LASF22
	.byte	0x8
	.value	0x7fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x8
	.value	0x7fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x8
	.value	0x7fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.long	.LASF24
	.byte	0x8
	.value	0x7ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x8
	.value	0x800
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x8
	.value	0x801
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x8
	.value	0x80d
	.long	0x385b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x8
	.value	0x810
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x8
	.value	0x814
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x8
	.value	0x816
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x8
	.value	0x817
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.value	0x819
	.long	0x49f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x20
	.string	"symtab_idx"
	.byte	0x8
	.value	0x81b
	.long	0x3aa
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x20
	.string	"label_defined"
	.byte	0x8
	.value	0x81c
	.long	0x3aa
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
	.long	0x4258
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x8
	.value	0x825
	.long	0x4290
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x8
	.value	0x826
	.long	0x13bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x8
	.value	0x82a
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0xd
	.long	0x49f4
	.string	"lang_decl"
	.byte	0x8
	.byte	0x8
	.value	0x819
	.uleb128 0x7
	.string	"base"
	.byte	0x11
	.byte	0x40
	.long	0x69da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pending_sizes"
	.byte	0x11
	.byte	0x44
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x49b9
	.uleb128 0x1b
	.long	0x4c4b
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x12
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
	.long	0x4c9a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x8
	.value	0x832
	.uleb128 0xf
	.long	.LASF1
	.byte	0x8
	.value	0x833
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x8
	.value	0x834
	.long	0x49fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x8
	.value	0x835
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4d55
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x8
	.value	0x9db
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.value	0x9de
	.long	0x4d55
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x8
	.value	0x9e0
	.long	0x7e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x8
	.value	0x9e3
	.long	0x7e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x8
	.value	0x9eb
	.long	0x4d5a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x8
	.value	0x9ee
	.long	0x4d5a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x8
	.value	0x9f3
	.long	0x4d5a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x8
	.value	0xa02
	.long	0x4d98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2c4
	.uleb128 0xb
	.long	0x4d5f
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x25
	.long	0x4d8c
	.byte	0x1
	.long	0x1e3
	.uleb128 0x17
	.long	0x4d8c
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x2d7
	.uleb128 0x17
	.long	0x4d92
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x4d5f
	.uleb128 0xb
	.long	0x4d9d
	.uleb128 0x3
	.byte	0x4
	.long	0x4d68
	.uleb128 0x1b
	.long	0x5572
	.string	"rtx_code"
	.byte	0x4
	.byte	0x9
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
	.uleb128 0x26
	.long	0x564c
	.byte	0x4
	.byte	0x9
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x9
	.byte	0x4f
	.long	0x3aa
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x9
	.byte	0x51
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x9
	.byte	0x52
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x9
	.byte	0x54
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x9
	.byte	0x56
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x9
	.byte	0x58
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x9
	.byte	0x5b
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x9
	.byte	0x5d
	.long	0x3aa
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x9
	.byte	0x5e
	.long	0x5572
	.uleb128 0x15
	.long	0x56c3
	.long	.LASF36
	.byte	0x18
	.byte	0x9
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x9
	.byte	0x69
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x9
	.byte	0x6a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x9
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x9
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x9
	.byte	0x6d
	.long	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x27
	.long	.LASF36
	.byte	0x9
	.byte	0x6e
	.long	0x5667
	.uleb128 0x8
	.long	0x57a0
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.uleb128 0x28
	.string	"rtwint"
	.byte	0x9
	.byte	0x74
	.long	0x446
	.uleb128 0x28
	.string	"rtint"
	.byte	0x9
	.byte	0x75
	.long	0x2d7
	.uleb128 0x28
	.string	"rtuint"
	.byte	0x9
	.byte	0x76
	.long	0x3aa
	.uleb128 0x28
	.string	"rtstr"
	.byte	0x9
	.byte	0x77
	.long	0x2c4
	.uleb128 0x28
	.string	"rtx"
	.byte	0x9
	.byte	0x78
	.long	0x9b
	.uleb128 0x28
	.string	"rtvec"
	.byte	0x9
	.byte	0x79
	.long	0x19b
	.uleb128 0x28
	.string	"rttype"
	.byte	0x9
	.byte	0x7a
	.long	0x7fc
	.uleb128 0x28
	.string	"rt_addr_diff_vec_flags"
	.byte	0x9
	.byte	0x7b
	.long	0x564c
	.uleb128 0x28
	.string	"rt_cselib"
	.byte	0x9
	.byte	0x7c
	.long	0x57b4
	.uleb128 0x28
	.string	"rtbit"
	.byte	0x9
	.byte	0x7d
	.long	0x57cc
	.uleb128 0x28
	.string	"rttree"
	.byte	0x9
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x28
	.string	"bb"
	.byte	0x9
	.byte	0x7f
	.long	0x57e4
	.uleb128 0x28
	.string	"rtmem"
	.byte	0x9
	.byte	0x80
	.long	0x57ea
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57a0
	.uleb128 0x1e
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57ba
	.uleb128 0x1e
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57d2
	.uleb128 0x3
	.byte	0x4
	.long	0x56c3
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x9
	.byte	0x82
	.long	0x56ce
	.uleb128 0x11
	.long	0x580f
	.long	0x57f0
	.uleb128 0x12
	.long	0x3c1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x581f
	.long	0x9b
	.uleb128 0x12
	.long	0x3c1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x588b
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
	.long	0x7fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next"
	.byte	0xe
	.byte	0x1b
	.long	0x588b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5825
	.uleb128 0x15
	.long	0x58da
	.long	.LASF37
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
	.uleb128 0x1d
	.long	.LASF38
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
	.long	0x58da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5891
	.uleb128 0x4
	.long	0x5a2f
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x2d7
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
	.uleb128 0x1d
	.long	.LASF38
	.byte	0xe
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xe
	.byte	0x50
	.long	0x58da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x4d8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x581f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5b0f
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x2d7
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
	.uleb128 0x29
	.long	0x5b79
	.long	.LASF32
	.byte	0x4
	.byte	0xe
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
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b79
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b8b
	.uleb128 0x3
	.byte	0x4
	.long	0x5a2f
	.uleb128 0x3
	.byte	0x4
	.long	0x58e0
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bab
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bc1
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bde
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bf0
	.uleb128 0xd
	.long	0x5cd9
	.string	"language_function"
	.byte	0x34
	.byte	0xe
	.value	0x184
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.value	0x1bf8
	.long	0x6987
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.value	0x1bf9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF40
	.byte	0x1
	.value	0x1bfa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"returns_value"
	.byte	0x1
	.value	0x1bfb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"returns_null"
	.byte	0x1
	.value	0x1bfc
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"returns_abnormally"
	.byte	0x1
	.value	0x1bfd
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.value	0x1bfe
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"extern_inline"
	.byte	0x1
	.value	0x1bff
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.value	0x1c00
	.long	0x798e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c09
	.uleb128 0x15
	.long	0x5d73
	.long	.LASF43
	.byte	0x18
	.byte	0x13
	.byte	0x2e
	.uleb128 0xe
	.string	"ident"
	.byte	0x13
	.value	0x1e6
	.long	0x31ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_index"
	.byte	0x13
	.value	0x1e7
	.long	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"directive_index"
	.byte	0x13
	.value	0x1e8
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"rid_code"
	.byte	0x13
	.value	0x1e9
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x21
	.long	.LASF4
	.byte	0x13
	.value	0x1ea
	.long	0x612b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"flags"
	.byte	0x13
	.value	0x1eb
	.long	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.long	.LASF19
	.byte	0x13
	.value	0x1f7
	.long	0x61de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x27
	.long	.LASF44
	.byte	0x13
	.byte	0x2f
	.long	0x5d7e
	.uleb128 0x2a
	.long	.LASF44
	.byte	0x1
	.uleb128 0x1b
	.long	0x612b
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x13
	.byte	0x97
	.uleb128 0x1c
	.string	"CPP_EQ"
	.sleb128 0
	.uleb128 0x1c
	.string	"CPP_NOT"
	.sleb128 1
	.uleb128 0x1c
	.string	"CPP_GREATER"
	.sleb128 2
	.uleb128 0x1c
	.string	"CPP_LESS"
	.sleb128 3
	.uleb128 0x1c
	.string	"CPP_PLUS"
	.sleb128 4
	.uleb128 0x1c
	.string	"CPP_MINUS"
	.sleb128 5
	.uleb128 0x1c
	.string	"CPP_MULT"
	.sleb128 6
	.uleb128 0x1c
	.string	"CPP_DIV"
	.sleb128 7
	.uleb128 0x1c
	.string	"CPP_MOD"
	.sleb128 8
	.uleb128 0x1c
	.string	"CPP_AND"
	.sleb128 9
	.uleb128 0x1c
	.string	"CPP_OR"
	.sleb128 10
	.uleb128 0x1c
	.string	"CPP_XOR"
	.sleb128 11
	.uleb128 0x1c
	.string	"CPP_RSHIFT"
	.sleb128 12
	.uleb128 0x1c
	.string	"CPP_LSHIFT"
	.sleb128 13
	.uleb128 0x1c
	.string	"CPP_MIN"
	.sleb128 14
	.uleb128 0x1c
	.string	"CPP_MAX"
	.sleb128 15
	.uleb128 0x1c
	.string	"CPP_COMPL"
	.sleb128 16
	.uleb128 0x1c
	.string	"CPP_AND_AND"
	.sleb128 17
	.uleb128 0x1c
	.string	"CPP_OR_OR"
	.sleb128 18
	.uleb128 0x1c
	.string	"CPP_QUERY"
	.sleb128 19
	.uleb128 0x1c
	.string	"CPP_COLON"
	.sleb128 20
	.uleb128 0x1c
	.string	"CPP_COMMA"
	.sleb128 21
	.uleb128 0x1c
	.string	"CPP_OPEN_PAREN"
	.sleb128 22
	.uleb128 0x1c
	.string	"CPP_CLOSE_PAREN"
	.sleb128 23
	.uleb128 0x1c
	.string	"CPP_EOF"
	.sleb128 24
	.uleb128 0x1c
	.string	"CPP_EQ_EQ"
	.sleb128 25
	.uleb128 0x1c
	.string	"CPP_NOT_EQ"
	.sleb128 26
	.uleb128 0x1c
	.string	"CPP_GREATER_EQ"
	.sleb128 27
	.uleb128 0x1c
	.string	"CPP_LESS_EQ"
	.sleb128 28
	.uleb128 0x1c
	.string	"CPP_PLUS_EQ"
	.sleb128 29
	.uleb128 0x1c
	.string	"CPP_MINUS_EQ"
	.sleb128 30
	.uleb128 0x1c
	.string	"CPP_MULT_EQ"
	.sleb128 31
	.uleb128 0x1c
	.string	"CPP_DIV_EQ"
	.sleb128 32
	.uleb128 0x1c
	.string	"CPP_MOD_EQ"
	.sleb128 33
	.uleb128 0x1c
	.string	"CPP_AND_EQ"
	.sleb128 34
	.uleb128 0x1c
	.string	"CPP_OR_EQ"
	.sleb128 35
	.uleb128 0x1c
	.string	"CPP_XOR_EQ"
	.sleb128 36
	.uleb128 0x1c
	.string	"CPP_RSHIFT_EQ"
	.sleb128 37
	.uleb128 0x1c
	.string	"CPP_LSHIFT_EQ"
	.sleb128 38
	.uleb128 0x1c
	.string	"CPP_MIN_EQ"
	.sleb128 39
	.uleb128 0x1c
	.string	"CPP_MAX_EQ"
	.sleb128 40
	.uleb128 0x1c
	.string	"CPP_HASH"
	.sleb128 41
	.uleb128 0x1c
	.string	"CPP_PASTE"
	.sleb128 42
	.uleb128 0x1c
	.string	"CPP_OPEN_SQUARE"
	.sleb128 43
	.uleb128 0x1c
	.string	"CPP_CLOSE_SQUARE"
	.sleb128 44
	.uleb128 0x1c
	.string	"CPP_OPEN_BRACE"
	.sleb128 45
	.uleb128 0x1c
	.string	"CPP_CLOSE_BRACE"
	.sleb128 46
	.uleb128 0x1c
	.string	"CPP_SEMICOLON"
	.sleb128 47
	.uleb128 0x1c
	.string	"CPP_ELLIPSIS"
	.sleb128 48
	.uleb128 0x1c
	.string	"CPP_PLUS_PLUS"
	.sleb128 49
	.uleb128 0x1c
	.string	"CPP_MINUS_MINUS"
	.sleb128 50
	.uleb128 0x1c
	.string	"CPP_DEREF"
	.sleb128 51
	.uleb128 0x1c
	.string	"CPP_DOT"
	.sleb128 52
	.uleb128 0x1c
	.string	"CPP_SCOPE"
	.sleb128 53
	.uleb128 0x1c
	.string	"CPP_DEREF_STAR"
	.sleb128 54
	.uleb128 0x1c
	.string	"CPP_DOT_STAR"
	.sleb128 55
	.uleb128 0x1c
	.string	"CPP_ATSIGN"
	.sleb128 56
	.uleb128 0x1c
	.string	"CPP_NAME"
	.sleb128 57
	.uleb128 0x1c
	.string	"CPP_NUMBER"
	.sleb128 58
	.uleb128 0x1c
	.string	"CPP_CHAR"
	.sleb128 59
	.uleb128 0x1c
	.string	"CPP_WCHAR"
	.sleb128 60
	.uleb128 0x1c
	.string	"CPP_OTHER"
	.sleb128 61
	.uleb128 0x1c
	.string	"CPP_STRING"
	.sleb128 62
	.uleb128 0x1c
	.string	"CPP_WSTRING"
	.sleb128 63
	.uleb128 0x1c
	.string	"CPP_HEADER_NAME"
	.sleb128 64
	.uleb128 0x1c
	.string	"CPP_COMMENT"
	.sleb128 65
	.uleb128 0x1c
	.string	"CPP_MACRO_ARG"
	.sleb128 66
	.uleb128 0x1c
	.string	"CPP_PADDING"
	.sleb128 67
	.uleb128 0x1c
	.string	"N_TTYPES"
	.sleb128 68
	.byte	0x0
	.uleb128 0x2b
	.long	0x6163
	.string	"node_type"
	.byte	0x4
	.byte	0x13
	.value	0x1c8
	.uleb128 0x1c
	.string	"NT_VOID"
	.sleb128 0
	.uleb128 0x1c
	.string	"NT_MACRO"
	.sleb128 1
	.uleb128 0x1c
	.string	"NT_ASSERTION"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2b
	.long	0x61de
	.string	"builtin_type"
	.byte	0x4
	.byte	0x13
	.value	0x1d1
	.uleb128 0x1c
	.string	"BT_SPECLINE"
	.sleb128 0
	.uleb128 0x1c
	.string	"BT_DATE"
	.sleb128 1
	.uleb128 0x1c
	.string	"BT_FILE"
	.sleb128 2
	.uleb128 0x1c
	.string	"BT_BASE_FILE"
	.sleb128 3
	.uleb128 0x1c
	.string	"BT_INCLUDE_LEVEL"
	.sleb128 4
	.uleb128 0x1c
	.string	"BT_TIME"
	.sleb128 5
	.uleb128 0x1c
	.string	"BT_STDC"
	.sleb128 6
	.uleb128 0x1c
	.string	"BT_PRAGMA"
	.sleb128 7
	.byte	0x0
	.uleb128 0x24
	.long	0x6227
	.byte	0x4
	.byte	0x13
	.value	0x1ee
	.uleb128 0xa
	.string	"macro"
	.byte	0x13
	.value	0x1ef
	.long	0x6227
	.uleb128 0xa
	.string	"answers"
	.byte	0x13
	.value	0x1f0
	.long	0x6236
	.uleb128 0xa
	.string	"operator"
	.byte	0x13
	.value	0x1f4
	.long	0x5d84
	.uleb128 0xa
	.string	"builtin"
	.byte	0x13
	.value	0x1f6
	.long	0x6163
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d73
	.uleb128 0x1e
	.string	"answer"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x622d
	.uleb128 0x1b
	.long	0x68bd
	.string	"rid"
	.byte	0x4
	.byte	0x10
	.byte	0x3d
	.uleb128 0x1c
	.string	"RID_STATIC"
	.sleb128 0
	.uleb128 0x1c
	.string	"RID_UNSIGNED"
	.sleb128 1
	.uleb128 0x1c
	.string	"RID_LONG"
	.sleb128 2
	.uleb128 0x1c
	.string	"RID_CONST"
	.sleb128 3
	.uleb128 0x1c
	.string	"RID_EXTERN"
	.sleb128 4
	.uleb128 0x1c
	.string	"RID_REGISTER"
	.sleb128 5
	.uleb128 0x1c
	.string	"RID_TYPEDEF"
	.sleb128 6
	.uleb128 0x1c
	.string	"RID_SHORT"
	.sleb128 7
	.uleb128 0x1c
	.string	"RID_INLINE"
	.sleb128 8
	.uleb128 0x1c
	.string	"RID_VOLATILE"
	.sleb128 9
	.uleb128 0x1c
	.string	"RID_SIGNED"
	.sleb128 10
	.uleb128 0x1c
	.string	"RID_AUTO"
	.sleb128 11
	.uleb128 0x1c
	.string	"RID_RESTRICT"
	.sleb128 12
	.uleb128 0x1c
	.string	"RID_SBUF"
	.sleb128 13
	.uleb128 0x1c
	.string	"RID_SDRAM"
	.sleb128 14
	.uleb128 0x1c
	.string	"RID_V1BUF"
	.sleb128 15
	.uleb128 0x1c
	.string	"RID_V2BUF"
	.sleb128 16
	.uleb128 0x1c
	.string	"RID_V4BUF"
	.sleb128 17
	.uleb128 0x1c
	.string	"RID_BOUNDED"
	.sleb128 18
	.uleb128 0x1c
	.string	"RID_UNBOUNDED"
	.sleb128 19
	.uleb128 0x1c
	.string	"RID_COMPLEX"
	.sleb128 20
	.uleb128 0x1c
	.string	"RID_THREAD"
	.sleb128 21
	.uleb128 0x1c
	.string	"RID_FRIEND"
	.sleb128 22
	.uleb128 0x1c
	.string	"RID_VIRTUAL"
	.sleb128 23
	.uleb128 0x1c
	.string	"RID_EXPLICIT"
	.sleb128 24
	.uleb128 0x1c
	.string	"RID_EXPORT"
	.sleb128 25
	.uleb128 0x1c
	.string	"RID_MUTABLE"
	.sleb128 26
	.uleb128 0x1c
	.string	"RID_IN"
	.sleb128 27
	.uleb128 0x1c
	.string	"RID_OUT"
	.sleb128 28
	.uleb128 0x1c
	.string	"RID_INOUT"
	.sleb128 29
	.uleb128 0x1c
	.string	"RID_BYCOPY"
	.sleb128 30
	.uleb128 0x1c
	.string	"RID_BYREF"
	.sleb128 31
	.uleb128 0x1c
	.string	"RID_ONEWAY"
	.sleb128 32
	.uleb128 0x1c
	.string	"RID_INT"
	.sleb128 33
	.uleb128 0x1c
	.string	"RID_CHAR"
	.sleb128 34
	.uleb128 0x1c
	.string	"RID_FLOAT"
	.sleb128 35
	.uleb128 0x1c
	.string	"RID_DOUBLE"
	.sleb128 36
	.uleb128 0x1c
	.string	"RID_VOID"
	.sleb128 37
	.uleb128 0x1c
	.string	"RID_ENUM"
	.sleb128 38
	.uleb128 0x1c
	.string	"RID_STRUCT"
	.sleb128 39
	.uleb128 0x1c
	.string	"RID_UNION"
	.sleb128 40
	.uleb128 0x1c
	.string	"RID_IF"
	.sleb128 41
	.uleb128 0x1c
	.string	"RID_ELSE"
	.sleb128 42
	.uleb128 0x1c
	.string	"RID_WHILE"
	.sleb128 43
	.uleb128 0x1c
	.string	"RID_DO"
	.sleb128 44
	.uleb128 0x1c
	.string	"RID_FOR"
	.sleb128 45
	.uleb128 0x1c
	.string	"RID_SWITCH"
	.sleb128 46
	.uleb128 0x1c
	.string	"RID_CASE"
	.sleb128 47
	.uleb128 0x1c
	.string	"RID_DEFAULT"
	.sleb128 48
	.uleb128 0x1c
	.string	"RID_BREAK"
	.sleb128 49
	.uleb128 0x1c
	.string	"RID_CONTINUE"
	.sleb128 50
	.uleb128 0x1c
	.string	"RID_RETURN"
	.sleb128 51
	.uleb128 0x1c
	.string	"RID_GOTO"
	.sleb128 52
	.uleb128 0x1c
	.string	"RID_SIZEOF"
	.sleb128 53
	.uleb128 0x1c
	.string	"RID_ASM"
	.sleb128 54
	.uleb128 0x1c
	.string	"RID_TYPEOF"
	.sleb128 55
	.uleb128 0x1c
	.string	"RID_ALIGNOF"
	.sleb128 56
	.uleb128 0x1c
	.string	"RID_ATTRIBUTE"
	.sleb128 57
	.uleb128 0x1c
	.string	"RID_VA_ARG"
	.sleb128 58
	.uleb128 0x1c
	.string	"RID_EXTENSION"
	.sleb128 59
	.uleb128 0x1c
	.string	"RID_IMAGPART"
	.sleb128 60
	.uleb128 0x1c
	.string	"RID_REALPART"
	.sleb128 61
	.uleb128 0x1c
	.string	"RID_LABEL"
	.sleb128 62
	.uleb128 0x1c
	.string	"RID_PTRBASE"
	.sleb128 63
	.uleb128 0x1c
	.string	"RID_PTREXTENT"
	.sleb128 64
	.uleb128 0x1c
	.string	"RID_PTRVALUE"
	.sleb128 65
	.uleb128 0x1c
	.string	"RID_CHOOSE_EXPR"
	.sleb128 66
	.uleb128 0x1c
	.string	"RID_TYPES_COMPATIBLE_P"
	.sleb128 67
	.uleb128 0x1c
	.string	"RID_FUNCTION_NAME"
	.sleb128 68
	.uleb128 0x1c
	.string	"RID_PRETTY_FUNCTION_NAME"
	.sleb128 69
	.uleb128 0x1c
	.string	"RID_C99_FUNCTION_NAME"
	.sleb128 70
	.uleb128 0x1c
	.string	"RID_BOOL"
	.sleb128 71
	.uleb128 0x1c
	.string	"RID_WCHAR"
	.sleb128 72
	.uleb128 0x1c
	.string	"RID_CLASS"
	.sleb128 73
	.uleb128 0x1c
	.string	"RID_PUBLIC"
	.sleb128 74
	.uleb128 0x1c
	.string	"RID_PRIVATE"
	.sleb128 75
	.uleb128 0x1c
	.string	"RID_PROTECTED"
	.sleb128 76
	.uleb128 0x1c
	.string	"RID_TEMPLATE"
	.sleb128 77
	.uleb128 0x1c
	.string	"RID_NULL"
	.sleb128 78
	.uleb128 0x1c
	.string	"RID_CATCH"
	.sleb128 79
	.uleb128 0x1c
	.string	"RID_DELETE"
	.sleb128 80
	.uleb128 0x1c
	.string	"RID_FALSE"
	.sleb128 81
	.uleb128 0x1c
	.string	"RID_NAMESPACE"
	.sleb128 82
	.uleb128 0x1c
	.string	"RID_NEW"
	.sleb128 83
	.uleb128 0x1c
	.string	"RID_OPERATOR"
	.sleb128 84
	.uleb128 0x1c
	.string	"RID_THIS"
	.sleb128 85
	.uleb128 0x1c
	.string	"RID_THROW"
	.sleb128 86
	.uleb128 0x1c
	.string	"RID_TRUE"
	.sleb128 87
	.uleb128 0x1c
	.string	"RID_TRY"
	.sleb128 88
	.uleb128 0x1c
	.string	"RID_TYPENAME"
	.sleb128 89
	.uleb128 0x1c
	.string	"RID_TYPEID"
	.sleb128 90
	.uleb128 0x1c
	.string	"RID_USING"
	.sleb128 91
	.uleb128 0x1c
	.string	"RID_CONSTCAST"
	.sleb128 92
	.uleb128 0x1c
	.string	"RID_DYNCAST"
	.sleb128 93
	.uleb128 0x1c
	.string	"RID_REINTCAST"
	.sleb128 94
	.uleb128 0x1c
	.string	"RID_STATCAST"
	.sleb128 95
	.uleb128 0x1c
	.string	"RID_ID"
	.sleb128 96
	.uleb128 0x1c
	.string	"RID_AT_ENCODE"
	.sleb128 97
	.uleb128 0x1c
	.string	"RID_AT_END"
	.sleb128 98
	.uleb128 0x1c
	.string	"RID_AT_CLASS"
	.sleb128 99
	.uleb128 0x1c
	.string	"RID_AT_ALIAS"
	.sleb128 100
	.uleb128 0x1c
	.string	"RID_AT_DEFS"
	.sleb128 101
	.uleb128 0x1c
	.string	"RID_AT_PRIVATE"
	.sleb128 102
	.uleb128 0x1c
	.string	"RID_AT_PROTECTED"
	.sleb128 103
	.uleb128 0x1c
	.string	"RID_AT_PUBLIC"
	.sleb128 104
	.uleb128 0x1c
	.string	"RID_AT_PROTOCOL"
	.sleb128 105
	.uleb128 0x1c
	.string	"RID_AT_SELECTOR"
	.sleb128 106
	.uleb128 0x1c
	.string	"RID_AT_INTERFACE"
	.sleb128 107
	.uleb128 0x1c
	.string	"RID_AT_IMPLEMENTATION"
	.sleb128 108
	.uleb128 0x1c
	.string	"RID_MAX"
	.sleb128 109
	.uleb128 0x1c
	.string	"RID_FIRST_MODIFIER"
	.sleb128 0
	.uleb128 0x1c
	.string	"RID_LAST_MODIFIER"
	.sleb128 32
	.uleb128 0x1c
	.string	"RID_FIRST_AT"
	.sleb128 97
	.uleb128 0x1c
	.string	"RID_LAST_AT"
	.sleb128 108
	.uleb128 0x1c
	.string	"RID_FIRST_PQ"
	.sleb128 27
	.uleb128 0x1c
	.string	"RID_LAST_PQ"
	.sleb128 32
	.byte	0x0
	.uleb128 0x4
	.long	0x68f7
	.string	"c_common_identifier"
	.byte	0x28
	.byte	0x10
	.byte	0xc1
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x10
	.byte	0xc2
	.long	0x2cb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"node"
	.byte	0x10
	.byte	0xc3
	.long	0x5cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x696f
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0x10
	.value	0x102
	.uleb128 0xe
	.string	"x_last_stmt"
	.byte	0x10
	.value	0x104
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_last_expr_type"
	.byte	0x10
	.value	0x107
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"x_last_expr_filename"
	.byte	0x10
	.value	0x109
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF45
	.byte	0x10
	.value	0x118
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.string	"stmt_tree"
	.byte	0x10
	.value	0x11b
	.long	0x6981
	.uleb128 0x3
	.byte	0x4
	.long	0x68f7
	.uleb128 0xd
	.long	0x69da
	.string	"c_language_function"
	.byte	0x14
	.byte	0x10
	.value	0x120
	.uleb128 0xe
	.string	"x_stmt_tree"
	.byte	0x10
	.value	0x123
	.long	0x68f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x_scope_stmt_stack"
	.byte	0x10
	.value	0x125
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x6a0e
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0x10
	.value	0x16a
	.uleb128 0x20
	.string	"declared_inline"
	.byte	0x10
	.value	0x16b
	.long	0x3aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6ac2
	.string	"lang_identifier"
	.byte	0x40
	.byte	0x11
	.byte	0x26
	.uleb128 0x7
	.string	"common_id"
	.byte	0x11
	.byte	0x27
	.long	0x68bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"global_value"
	.byte	0x11
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"local_value"
	.byte	0x11
	.byte	0x29
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"label_value"
	.byte	0x11
	.byte	0x2a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"implicit_decl"
	.byte	0x11
	.byte	0x2b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"error_locus"
	.byte	0x11
	.byte	0x2c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"limbo_value"
	.byte	0x11
	.byte	0x2d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x8
	.long	0x6af4
	.string	"lang_tree_node"
	.byte	0x94
	.byte	0x11
	.byte	0x35
	.uleb128 0x28
	.string	"generic"
	.byte	0x11
	.byte	0x38
	.long	0x1f5
	.uleb128 0x2c
	.long	.LASF2
	.byte	0x11
	.byte	0x39
	.long	0x6a0e
	.byte	0x0
	.uleb128 0x4
	.long	0x6b46
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x1a
	.byte	0x34
	.uleb128 0x7
	.string	"base"
	.byte	0x1a
	.byte	0x35
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x1a
	.byte	0x36
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x1a
	.byte	0x37
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x1a
	.byte	0x38
	.long	0x74d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6b8e
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x16
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x16
	.byte	0x3b
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x16
	.byte	0x3c
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x16
	.byte	0x3d
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x16
	.byte	0x3e
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6dc4
	.string	"asm_out"
	.byte	0x70
	.byte	0x16
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x16
	.byte	0x38
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x6b46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x6b46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x16
	.byte	0x46
	.long	0x6dde
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x16
	.byte	0x49
	.long	0x6dfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x16
	.byte	0x4d
	.long	0x6e12
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x16
	.byte	0x50
	.long	0x6e29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x16
	.byte	0x53
	.long	0x6e3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x16
	.byte	0x56
	.long	0x6e3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x16
	.byte	0x59
	.long	0x6e29
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x16
	.byte	0x5d
	.long	0x6e52
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x16
	.byte	0x60
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x16
	.byte	0x63
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x16
	.byte	0x6a
	.long	0x6e6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x16
	.byte	0x6e
	.long	0x6e8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x16
	.byte	0x73
	.long	0x6e12
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x16
	.byte	0x76
	.long	0x6ea1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x16
	.byte	0x79
	.long	0x6ea1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x16
	.byte	0x80
	.long	0x6ec7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x16
	.byte	0x8b
	.long	0x6eec
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x25
	.long	0x6dde
	.byte	0x1
	.long	0x4d5f
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x3aa
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6dc4
	.uleb128 0x16
	.long	0x6df5
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b5
	.uleb128 0x3
	.byte	0x4
	.long	0x6de4
	.uleb128 0x16
	.long	0x6e12
	.byte	0x1
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e01
	.uleb128 0x16
	.long	0x6e29
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x446
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e18
	.uleb128 0x16
	.long	0x6e3b
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e2f
	.uleb128 0x16
	.long	0x6e52
	.byte	0x1
	.uleb128 0x17
	.long	0x2c4
	.uleb128 0x17
	.long	0x3aa
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e41
	.uleb128 0x16
	.long	0x6e6e
	.byte	0x1
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x2d7
	.uleb128 0x17
	.long	0x457
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e58
	.uleb128 0x16
	.long	0x6e8a
	.byte	0x1
	.uleb128 0x17
	.long	0x7fc
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x457
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e74
	.uleb128 0x16
	.long	0x6ea1
	.byte	0x1
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e90
	.uleb128 0x16
	.long	0x6ec7
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x446
	.uleb128 0x17
	.long	0x446
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ea7
	.uleb128 0x25
	.long	0x6eec
	.byte	0x1
	.long	0x4d5f
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x446
	.uleb128 0x17
	.long	0x446
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ecd
	.uleb128 0x4
	.long	0x70ad
	.string	"sched"
	.byte	0x40
	.byte	0x16
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x16
	.byte	0x97
	.long	0x70cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x16
	.byte	0x9b
	.long	0x70e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x16
	.byte	0xa0
	.long	0x70f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x16
	.byte	0xa4
	.long	0x7118
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x16
	.byte	0xa7
	.long	0x7134
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x16
	.byte	0xaa
	.long	0x714b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x16
	.byte	0xae
	.long	0x7175
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x16
	.byte	0xaf
	.long	0x7175
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x16
	.byte	0xb4
	.long	0x70f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc2
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc3
	.long	0x7181
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc4
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc5
	.long	0x7181
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x16
	.byte	0xcd
	.long	0x70f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x16
	.byte	0xd8
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x16
	.byte	0xd9
	.long	0x7197
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x25
	.long	0x70cc
	.byte	0x1
	.long	0x2d7
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70ad
	.uleb128 0x25
	.long	0x70e7
	.byte	0x1
	.long	0x2d7
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70d2
	.uleb128 0x2d
	.byte	0x1
	.long	0x2d7
	.uleb128 0x3
	.byte	0x4
	.long	0x70ed
	.uleb128 0x25
	.long	0x7118
	.byte	0x1
	.long	0x2d7
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x2d7
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70f9
	.uleb128 0x16
	.long	0x7134
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x2d7
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x711e
	.uleb128 0x16
	.long	0x714b
	.byte	0x1
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x713a
	.uleb128 0x25
	.long	0x7175
	.byte	0x1
	.long	0x2d7
	.uleb128 0x17
	.long	0x6df5
	.uleb128 0x17
	.long	0x2d7
	.uleb128 0x17
	.long	0x581f
	.uleb128 0x17
	.long	0x7e7
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7151
	.uleb128 0x2d
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x717b
	.uleb128 0x25
	.long	0x7197
	.byte	0x1
	.long	0x9b
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7187
	.uleb128 0x4
	.long	0x7486
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x16
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x16
	.byte	0x8f
	.long	0x6b8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x16
	.byte	0xda
	.long	0x6ef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x16
	.byte	0xdd
	.long	0x749b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x16
	.byte	0xe0
	.long	0x749b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.string	"attribute_table"
	.byte	0x16
	.byte	0xe4
	.long	0x74a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x16
	.byte	0xe9
	.long	0x74c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x16
	.byte	0xec
	.long	0x74d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x16
	.byte	0xef
	.long	0x74ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x16
	.byte	0xf3
	.long	0x7500
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x16
	.byte	0xf7
	.long	0x7500
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x16
	.byte	0xfa
	.long	0x7f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x16
	.byte	0xfd
	.long	0x752a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x16
	.value	0x103
	.long	0x754a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x16
	.value	0x107
	.long	0x7556
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x16
	.value	0x10a
	.long	0x756c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x16
	.value	0x10d
	.long	0x7500
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x16
	.value	0x111
	.long	0x7500
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x16
	.value	0x115
	.long	0x6e12
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x16
	.value	0x118
	.long	0x7582
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x16
	.value	0x11d
	.long	0x4d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x16
	.value	0x121
	.long	0x4d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x16
	.value	0x124
	.long	0x4d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x16
	.value	0x127
	.long	0x4d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x16
	.value	0x12a
	.long	0x4d5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x25
	.long	0x749b
	.byte	0x1
	.long	0x1e3
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7486
	.uleb128 0x3
	.byte	0x4
	.long	0x74a7
	.uleb128 0xb
	.long	0x4c9a
	.uleb128 0x25
	.long	0x74c1
	.byte	0x1
	.long	0x2d7
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74ac
	.uleb128 0x16
	.long	0x74d3
	.byte	0x1
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74c7
	.uleb128 0x16
	.long	0x74ea
	.byte	0x1
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x4d8c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74d9
	.uleb128 0x25
	.long	0x7500
	.byte	0x1
	.long	0x4d5f
	.uleb128 0x17
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74f0
	.uleb128 0x25
	.long	0x752a
	.byte	0x1
	.long	0x9b
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x9b
	.uleb128 0x17
	.long	0x7fc
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7506
	.uleb128 0x25
	.long	0x754a
	.byte	0x1
	.long	0x3aa
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x2c4
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7530
	.uleb128 0x2d
	.byte	0x1
	.long	0x4d5f
	.uleb128 0x3
	.byte	0x4
	.long	0x7550
	.uleb128 0x25
	.long	0x756c
	.byte	0x1
	.long	0x4d5f
	.uleb128 0x17
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x755c
	.uleb128 0x25
	.long	0x7582
	.byte	0x1
	.long	0x2c4
	.uleb128 0x17
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7572
	.uleb128 0x4
	.long	0x776b
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x17
	.byte	0x19
	.uleb128 0x7
	.string	"init"
	.byte	0x17
	.byte	0x1c
	.long	0x7777
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"finish"
	.byte	0x17
	.byte	0x1f
	.long	0x7777
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"define"
	.byte	0x17
	.byte	0x22
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"undef"
	.byte	0x17
	.byte	0x25
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"start_source_file"
	.byte	0x17
	.byte	0x29
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"end_source_file"
	.byte	0x17
	.byte	0x2d
	.long	0x77a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"begin_block"
	.byte	0x17
	.byte	0x31
	.long	0x77b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"end_block"
	.byte	0x17
	.byte	0x34
	.long	0x77b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ignore_block"
	.byte	0x17
	.byte	0x3b
	.long	0x7500
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"source_line"
	.byte	0x17
	.byte	0x3e
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"begin_prologue"
	.byte	0x17
	.byte	0x43
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"end_prologue"
	.byte	0x17
	.byte	0x47
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"end_epilogue"
	.byte	0x17
	.byte	0x4a
	.long	0x778e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"begin_function"
	.byte	0x17
	.byte	0x4d
	.long	0x74d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"end_function"
	.byte	0x17
	.byte	0x50
	.long	0x77a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_decl"
	.byte	0x17
	.byte	0x56
	.long	0x74d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"global_decl"
	.byte	0x17
	.byte	0x5a
	.long	0x74d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"deferred_inline_function"
	.byte	0x17
	.byte	0x5e
	.long	0x74d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"outlining_inline_function"
	.byte	0x17
	.byte	0x63
	.long	0x74d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"label"
	.byte	0x17
	.byte	0x67
	.long	0x77c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x16
	.long	0x7777
	.byte	0x1
	.uleb128 0x17
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x776b
	.uleb128 0x16
	.long	0x778e
	.byte	0x1
	.uleb128 0x17
	.long	0x3aa
	.uleb128 0x17
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x777d
	.uleb128 0x16
	.long	0x77a0
	.byte	0x1
	.uleb128 0x17
	.long	0x3aa
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7794
	.uleb128 0x16
	.long	0x77b7
	.byte	0x1
	.uleb128 0x17
	.long	0x3aa
	.uleb128 0x17
	.long	0x3aa
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77a6
	.uleb128 0x16
	.long	0x77c9
	.byte	0x1
	.uleb128 0x17
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77bd
	.uleb128 0xc
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x1b
	.long	0x781e
	.string	"real_value_class"
	.byte	0x4
	.byte	0xb
	.byte	0x24
	.uleb128 0x1c
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1c
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1c
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1c
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x11
	.long	0x782e
	.long	0x415
	.uleb128 0x12
	.long	0x3c1
	.byte	0x4
	.byte	0x0
	.uleb128 0x1f
	.long	0x7873
	.long	.LASF46
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.uleb128 0x1c
	.string	"NORMAL"
	.sleb128 0
	.uleb128 0x1c
	.string	"FUNCDEF"
	.sleb128 1
	.uleb128 0x1c
	.string	"PARM"
	.sleb128 2
	.uleb128 0x1c
	.string	"FIELD"
	.sleb128 3
	.uleb128 0x1c
	.string	"BITFIELD"
	.sleb128 4
	.uleb128 0x1c
	.string	"TYPENAME"
	.sleb128 5
	.byte	0x0
	.uleb128 0x15
	.long	0x798e
	.long	.LASF42
	.byte	0x28
	.byte	0x1
	.byte	0xba
	.uleb128 0x7
	.string	"names"
	.byte	0x1
	.byte	0xbe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"tags"
	.byte	0x1
	.byte	0xc6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"shadowed"
	.byte	0x1
	.byte	0xcc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"blocks"
	.byte	0x1
	.byte	0xd1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"this_block"
	.byte	0x1
	.byte	0xd5
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"level_chain"
	.byte	0x1
	.byte	0xd8
	.long	0x798e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"parm_flag"
	.byte	0x1
	.byte	0xdb
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF47
	.byte	0x1
	.byte	0xde
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x7
	.string	"subblocks_tag_transparent"
	.byte	0x1
	.byte	0xe4
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"keep"
	.byte	0x1
	.byte	0xe7
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0x7
	.string	"keep_if_subblocks"
	.byte	0x1
	.byte	0xea
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"incomplete_list"
	.byte	0x1
	.byte	0xee
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"parm_order"
	.byte	0x1
	.byte	0xf3
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7873
	.uleb128 0x2b
	.long	0x79da
	.string	"deprecated_states"
	.byte	0x4
	.byte	0x1
	.value	0x13d
	.uleb128 0x1c
	.string	"DEPRECATED_NORMAL"
	.sleb128 0
	.uleb128 0x1c
	.string	"DEPRECATED_SUPPRESS"
	.sleb128 1
	.byte	0x0
	.uleb128 0x2e
	.long	0x7a4f
	.byte	0x1
	.string	"c_print_identifier"
	.byte	0x1
	.value	0x149
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2f
	.string	"file"
	.byte	0x1
	.value	0x146
	.long	0x6df5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"node"
	.byte	0x1
	.value	0x147
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"indent"
	.byte	0x1
	.value	0x148
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x31
	.string	"rid"
	.byte	0x1
	.value	0x152
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7aa7
	.byte	0x1
	.string	"c_finish_incomplete_decl"
	.byte	0x1
	.value	0x160
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x15f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x163
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x7af0
	.string	"make_binding_level"
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	0x798e
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"result"
	.byte	0x1
	.value	0x179
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x7b33
	.string	"pop_binding_level"
	.byte	0x1
	.value	0x186
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.string	"lp"
	.byte	0x1
	.value	0x185
	.long	0x7b33
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.value	0x187
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x798e
	.uleb128 0x36
	.byte	0x1
	.string	"global_bindings_p"
	.byte	0x1
	.value	0x193
	.byte	0x1
	.long	0x2d7
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x37
	.byte	0x1
	.string	"keep_next_level"
	.byte	0x1
	.value	0x199
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x36
	.byte	0x1
	.string	"kept_level_p"
	.byte	0x1
	.value	0x1a1
	.byte	0x1
	.long	0x2d7
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2e
	.long	0x7beb
	.byte	0x1
	.string	"declare_parm_level"
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2f
	.string	"definition_flag"
	.byte	0x1
	.value	0x1b1
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.string	"in_parm_level_p"
	.byte	0x1
	.value	0x1ba
	.byte	0x1
	.long	0x2d7
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.long	0x7c50
	.byte	0x1
	.string	"pushlevel"
	.byte	0x1
	.value	0x1c5
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x1c4
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x1c6
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x7c97
	.string	"clear_limbo_values"
	.byte	0x1
	.value	0x1e8
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x32
	.long	.LASF5
	.byte	0x1
	.value	0x1e7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x1e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x38
	.long	0x7d92
	.byte	0x1
	.string	"poplevel"
	.byte	0x1
	.value	0x207
	.byte	0x1
	.long	0x1e3
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.string	"keep"
	.byte	0x1
	.value	0x204
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"reverse"
	.byte	0x1
	.value	0x205
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"functionbody"
	.byte	0x1
	.value	0x206
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x208
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"decls"
	.byte	0x1
	.value	0x20b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"tags"
	.byte	0x1
	.value	0x20c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF21
	.byte	0x1
	.value	0x20d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x20e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x20f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"block_previously_created"
	.byte	0x1
	.value	0x210
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x31
	.string	"label"
	.byte	0x1
	.value	0x297
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7dc5
	.byte	0x1
	.string	"insert_block"
	.byte	0x1
	.value	0x2e3
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x32
	.long	.LASF5
	.byte	0x1
	.value	0x2e2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7df5
	.byte	0x1
	.string	"set_block"
	.byte	0x1
	.value	0x2ef
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.long	.LASF5
	.byte	0x1
	.value	0x2ee
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7e2c
	.byte	0x1
	.string	"push_label_level"
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF48
	.byte	0x1
	.value	0x2fa
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x7e83
	.byte	0x1
	.string	"pop_label_level"
	.byte	0x1
	.value	0x30b
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x31
	.string	"level"
	.byte	0x1
	.value	0x30c
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x30d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0x30d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x7ecd
	.byte	0x1
	.string	"pushtag"
	.byte	0x1
	.value	0x347
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x346
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0x346
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x348
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x813c
	.string	"duplicate_decls"
	.byte	0x1
	.value	0x376
	.byte	0x1
	.long	0x2d7
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2f
	.string	"newdecl"
	.byte	0x1
	.value	0x374
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"olddecl"
	.byte	0x1
	.value	0x374
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF50
	.byte	0x1
	.value	0x375
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"types_match"
	.byte	0x1
	.value	0x377
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"new_is_definition"
	.byte	0x1
	.value	0x378
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"oldtype"
	.byte	0x1
	.value	0x37a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"newtype"
	.byte	0x1
	.value	0x37b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"errmsg"
	.byte	0x1
	.value	0x37c
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.long	0x8015
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x31
	.string	"oldreturntype"
	.byte	0x1
	.value	0x3ef
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"newreturntype"
	.byte	0x1
	.value	0x3f0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	0x7ffb
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x3f6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x30
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x40b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8032
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.long	.LASF51
	.byte	0x1
	.value	0x420
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x39
	.long	0x8066
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x478
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x47d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x80a4
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x4d1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"parm"
	.byte	0x1
	.value	0x4d1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"nargs"
	.byte	0x1
	.value	0x4d2
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	0x80cb
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x31
	.string	"write_olddecl"
	.byte	0x1
	.value	0x541
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0x812b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"olddecl_uid"
	.byte	0x1
	.value	0x648
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"st"
	.byte	0x1
	.value	0x64a
	.long	0x3127
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"st2"
	.byte	0x1
	.value	0x64b
	.long	0x3127
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF35
	.byte	0x1
	.value	0x64f
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF34
	.byte	0x1
	.value	0x650
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa9f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15152
	.byte	0x0
	.uleb128 0x35
	.long	0x818f
	.string	"warn_if_shadowing"
	.byte	0x1
	.value	0x67d
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x67c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x67c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0x67e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x828a
	.byte	0x1
	.string	"pushdecl"
	.byte	0x1
	.value	0x6be
	.byte	0x1
	.long	0x1e3
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x6bd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x6bf
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0x6c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x6c1
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.long	.LASF50
	.byte	0x1
	.value	0x6d2
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	0x821c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"tt"
	.byte	0x1
	.value	0x746
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0x8239
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x755
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0x826b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.long	.LASF53
	.byte	0x1
	.value	0x7b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"oldglobal"
	.byte	0x1
	.value	0x7b6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x31
	.string	"element"
	.byte	0x1
	.value	0x818
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x82df
	.byte	0x1
	.string	"pushdecl_top_level"
	.byte	0x1
	.value	0x831
	.byte	0x1
	.long	0x1e3
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x830
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x832
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x833
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x836d
	.byte	0x1
	.string	"implicitly_declare"
	.byte	0x1
	.value	0x841
	.byte	0x1
	.long	0x1e3
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.string	"functionid"
	.byte	0x1
	.value	0x840
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x842
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"traditional_warning"
	.byte	0x1
	.value	0x843
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"implicit_warning"
	.byte	0x1
	.value	0x845
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x83b7
	.byte	0x1
	.string	"implicit_decl_warning"
	.byte	0x1
	.value	0x87d
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x87c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0x87e
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8413
	.string	"redeclaration_error_message"
	.byte	0x1
	.value	0x88e
	.byte	0x1
	.long	0x2d7
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.string	"newdecl"
	.byte	0x1
	.value	0x88d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"olddecl"
	.byte	0x1
	.value	0x88d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x38
	.long	0x8458
	.byte	0x1
	.string	"lookup_label"
	.byte	0x1
	.value	0x8cc
	.byte	0x1
	.long	0x1e3
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x8cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x8cd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x84b7
	.byte	0x1
	.string	"shadow_label"
	.byte	0x1
	.value	0x8fe
	.byte	0x1
	.long	0x1e3
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x8fd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x8ff
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x31
	.string	"dup"
	.byte	0x1
	.value	0x903
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x851c
	.byte	0x1
	.string	"define_label"
	.byte	0x1
	.value	0x922
	.byte	0x1
	.long	0x1e3
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x91f
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"line"
	.byte	0x1
	.value	0x920
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x921
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x923
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.string	"getdecls"
	.byte	0x1
	.value	0x94a
	.byte	0x1
	.long	0x1e3
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x36
	.byte	0x1
	.string	"gettags"
	.byte	0x1
	.value	0x952
	.byte	0x1
	.long	0x1e3
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x35
	.long	0x858b
	.string	"storedecls"
	.byte	0x1
	.value	0x95d
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.string	"decls"
	.byte	0x1
	.value	0x95c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x85bb
	.string	"storetags"
	.byte	0x1
	.value	0x966
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2f
	.string	"tags"
	.byte	0x1
	.value	0x965
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x8667
	.string	"lookup_tag"
	.byte	0x1
	.value	0x97a
	.byte	0x1
	.long	0x1e3
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x976
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x978
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x977
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"thislevel_only"
	.byte	0x1
	.value	0x979
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"level"
	.byte	0x1
	.value	0x97b
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"thislevel"
	.byte	0x1
	.value	0x97c
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x31
	.string	"tail"
	.byte	0x1
	.value	0x980
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.string	"pending_xref_error"
	.byte	0x1
	.value	0x9a6
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x34
	.long	0x86f3
	.string	"lookup_tag_reverse"
	.byte	0x1
	.value	0x9b5
	.byte	0x1
	.long	0x1e3
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0x9b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"level"
	.byte	0x1
	.value	0x9b6
	.long	0x798e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x31
	.string	"tail"
	.byte	0x1
	.value	0x9ba
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8738
	.byte	0x1
	.string	"lookup_name"
	.byte	0x1
	.value	0x9cc
	.byte	0x1
	.long	0x1e3
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x9cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x9cd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x38
	.long	0x8789
	.byte	0x1
	.string	"lookup_name_current_level"
	.byte	0x1
	.value	0x9dc
	.byte	0x1
	.long	0x1e3
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x9db
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x9dd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0x87fd
	.byte	0x1
	.string	"c_init_decl_processing"
	.byte	0x1
	.value	0x9f3
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x31
	.string	"endlink"
	.byte	0x1
	.value	0x9f4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"ptr_ftype_void"
	.byte	0x1
	.value	0x9f5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"ptr_ftype_ptr"
	.byte	0x1
	.value	0x9f5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0x8897
	.string	"c_make_fname_decl"
	.byte	0x1
	.value	0xa2f
	.byte	0x1
	.long	0x1e3
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0xa2d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"type_dep"
	.byte	0x1
	.value	0xa2e
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0xa30
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xa31
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0xa31
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"init"
	.byte	0x1
	.value	0xa31
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF17
	.byte	0x1
	.value	0xa32
	.long	0x3e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	0x8941
	.byte	0x1
	.string	"builtin_function"
	.byte	0x1
	.value	0xa5c
	.byte	0x1
	.long	0x1e3
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0xa56
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xa57
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"function_code"
	.byte	0x1
	.value	0xa58
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"class"
	.byte	0x1
	.value	0xa59
	.long	0x1408
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"library_name"
	.byte	0x1
	.value	0xa5a
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF55
	.byte	0x1
	.value	0xa5b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xa5d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x8983
	.byte	0x1
	.string	"c_insert_default_attributes"
	.byte	0x1
	.value	0xa7b
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xa7a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x89b4
	.byte	0x1
	.string	"shadow_tag"
	.byte	0x1
	.value	0xa8c
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0xa8b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x8a90
	.byte	0x1
	.string	"shadow_tag_warned"
	.byte	0x1
	.value	0xa96
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0xa92
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"warned"
	.byte	0x1
	.value	0xa93
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"found_tag"
	.byte	0x1
	.value	0xa97
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0xa98
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"specs"
	.byte	0x1
	.value	0xa99
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0xa99
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.long	.LASF19
	.byte	0x1
	.value	0xaa3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0xaa4
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0xaaa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xaab
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8b1e
	.byte	0x1
	.string	"build_array_declarator"
	.byte	0x1
	.value	0xae9
	.byte	0x1
	.long	0x1e3
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2f
	.string	"expr"
	.byte	0x1
	.value	0xae5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"quals"
	.byte	0x1
	.value	0xae6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"static_p"
	.byte	0x1
	.value	0xae7
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"vla_unspec_p"
	.byte	0x1
	.value	0xae8
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xaea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x8b87
	.byte	0x1
	.string	"set_array_declarator_type"
	.byte	0x1
	.value	0xb06
	.byte	0x1
	.long	0x1e3
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xb03
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xb04
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"abstract_p"
	.byte	0x1
	.value	0xb05
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x38
	.long	0x8bde
	.byte	0x1
	.string	"groktypename"
	.byte	0x1
	.value	0xb12
	.byte	0x1
	.long	0x1e3
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xb11
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"specs"
	.byte	0x1
	.value	0xb13
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0xb13
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	0x8c25
	.byte	0x1
	.string	"groktypename_in_parm_context"
	.byte	0x1
	.value	0xb27
	.byte	0x1
	.long	0x1e3
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x32
	.long	.LASF57
	.byte	0x1
	.value	0xb26
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x8ca5
	.byte	0x1
	.string	"start_decl"
	.byte	0x1
	.value	0xb43
	.byte	0x1
	.long	0x1e3
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0xb40
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0xb40
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF59
	.byte	0x1
	.value	0xb41
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0xb42
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xb44
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xb45
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x8e27
	.byte	0x1
	.string	"finish_decl"
	.byte	0x1
	.value	0xbe9
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xbe7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0xbe7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"asmspec_tree"
	.byte	0x1
	.value	0xbe8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0xbea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"was_incomplete"
	.byte	0x1
	.value	0xbeb
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"asmspec"
	.byte	0x1
	.value	0xbec
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	0x8d6a
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.value	0xc04
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"failure"
	.byte	0x1
	.value	0xc0a
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	0x8d9e
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.string	"builtin"
	.byte	0x1
	.value	0xc5a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"libfunc"
	.byte	0x1
	.value	0xc5b
	.long	0x581f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x39
	.long	0x8e07
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x31
	.string	"attr"
	.byte	0x1
	.value	0xce8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.string	"cleanup_id"
	.byte	0x1
	.value	0xced
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"cleanup_decl"
	.byte	0x1
	.value	0xcee
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"cleanup"
	.byte	0x1
	.value	0xcef
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.string	"eh_initialized_p"
	.byte	0x1
	.value	0xceb
	.long	0x4d5f
	.byte	0x5
	.byte	0x3
	.long	eh_initialized_p.17239
	.byte	0x0
	.uleb128 0x2e
	.long	0x8e7b
	.byte	0x1
	.string	"push_parm_decl"
	.byte	0x1
	.value	0xd11
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2f
	.string	"parm"
	.byte	0x1
	.value	0xd10
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xd12
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0xd13
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.string	"clear_parm_order"
	.byte	0x1
	.value	0xd37
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x38
	.long	0x8f6f
	.byte	0x1
	.string	"build_compound_literal"
	.byte	0x1
	.value	0xd44
	.byte	0x1
	.long	0x1e3
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xd42
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0xd43
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xd48
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"complit"
	.byte	0x1
	.value	0xd49
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"stmt"
	.byte	0x1
	.value	0xd4a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	0x8f41
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.string	"failure"
	.byte	0x1
	.value	0xd56
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0x8f5e
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0xd69
	.long	0x4af
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa9e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17557
	.byte	0x0
	.uleb128 0x38
	.long	0x9033
	.byte	0x1
	.string	"complete_array_type"
	.byte	0x1
	.value	0xd82
	.byte	0x1
	.long	0x2d7
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xd7f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"initial_value"
	.byte	0x1
	.value	0xd80
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF60
	.byte	0x1
	.value	0xd81
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"maxindex"
	.byte	0x1
	.value	0xd83
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF19
	.byte	0x1
	.value	0xd84
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	0x9018
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x31
	.string	"eltsize"
	.byte	0x1
	.value	0xd8c
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"elts"
	.byte	0x1
	.value	0xd93
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x907f
	.string	"flexible_array_type_p"
	.byte	0x1
	.value	0xdc5
	.byte	0x1
	.long	0x4d5f
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0xdc4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xdc6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x96f4
	.string	"grokdeclarator"
	.byte	0x1
	.value	0xe04
	.byte	0x1
	.long	0x1e3
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0xe01
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0xe00
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0xe02
	.long	0x782e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF59
	.byte	0x1
	.value	0xe03
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"specbits"
	.byte	0x1
	.value	0xe05
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x31
	.string	"spec"
	.byte	0x1
	.value	0xe06
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0xe07
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x31
	.string	"longlong"
	.byte	0x1
	.value	0xe08
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x31
	.string	"constp"
	.byte	0x1
	.value	0xe09
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.string	"restrictp"
	.byte	0x1
	.value	0xe0a
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x31
	.string	"volatilep"
	.byte	0x1
	.value	0xe0b
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x31
	.string	"type_quals"
	.byte	0x1
	.value	0xe0c
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x31
	.string	"inlinep"
	.byte	0x1
	.value	0xe0d
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.string	"explicit_int"
	.byte	0x1
	.value	0xe0e
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x31
	.string	"explicit_char"
	.byte	0x1
	.value	0xe0f
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.string	"defaulted_int"
	.byte	0x1
	.value	0xe10
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x31
	.string	"sbufp"
	.byte	0x1
	.value	0xe12
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.string	"sdramp"
	.byte	0x1
	.value	0xe13
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x31
	.string	"v1bufp"
	.byte	0x1
	.value	0xe14
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.string	"v2bufp"
	.byte	0x1
	.value	0xe15
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x31
	.string	"v4bufp"
	.byte	0x1
	.value	0xe16
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.string	"vbuf_type"
	.byte	0x1
	.value	0xe17
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.string	"internal_mem"
	.byte	0x1
	.value	0xe18
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"typedef_decl"
	.byte	0x1
	.value	0xe1a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.long	.LASF28
	.byte	0x1
	.value	0xe1b
	.long	0x2c4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.string	"typedef_type"
	.byte	0x1
	.value	0xe1c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.long	.LASF62
	.byte	0x1
	.value	0xe1d
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"innermost_code"
	.byte	0x1
	.value	0xe1e
	.long	0xa89
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.string	"bitfield"
	.byte	0x1
	.value	0xe1f
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"size_varies"
	.byte	0x1
	.value	0xe20
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x31
	.string	"decl_attr"
	.byte	0x1
	.value	0xe21
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"array_ptr_quals"
	.byte	0x1
	.value	0xe22
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"array_parm_static"
	.byte	0x1
	.value	0xe23
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.string	"returned_attrs"
	.byte	0x1
	.value	0xe24
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3b
	.string	"found"
	.byte	0x1
	.value	0xedc
	.long	.L1170
	.uleb128 0x39
	.long	0x93a3
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0xe2f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x39
	.long	0x93f4
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0xe6d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x39
	.long	0x93db
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xe7e
	.long	0x623c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x30
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xecd
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x941a
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x31
	.string	"ok"
	.byte	0x1
	.value	0xf1b
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3c
	.long	.LBB38
	.long	.LBE38
	.byte	0x0
	.uleb128 0x39
	.long	0x943d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x31
	.string	"nclasses"
	.byte	0x1
	.value	0xfd1
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x39
	.long	0x9489
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x1055
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"inner_decl"
	.byte	0x1
	.value	0x1056
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"attr_flags"
	.byte	0x1
	.value	0x1057
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x39
	.long	0x94eb
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x31
	.string	"itype"
	.byte	0x1
	.value	0x106a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"size"
	.byte	0x1
	.value	0x106b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"index_type"
	.byte	0x1
	.value	0x106d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x31
	.string	"cfd"
	.byte	0x1
	.value	0x10dd
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9528
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x31
	.string	"arg_types"
	.byte	0x1
	.value	0x111c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x115c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9577
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x31
	.string	"typemodlist"
	.byte	0x1
	.value	0x1178
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"erred"
	.byte	0x1
	.value	0x1179
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x33
	.long	.LASF63
	.byte	0x1
	.value	0x1181
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9595
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x11b9
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.byte	0x0
	.uleb128 0x39
	.long	0x96cd
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x11fd
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x31
	.string	"tmp_type_node"
	.byte	0x1
	.value	0x1320
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	0x9675
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x31
	.string	"type_as_written"
	.byte	0x1
	.value	0x1201
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"promoted_type"
	.byte	0x1
	.value	0x1202
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x31
	.string	"new_ptr_quals"
	.byte	0x1
	.value	0x1211
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.string	"new_ptr_attrs"
	.byte	0x1
	.value	0x1211
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x31
	.string	"erred"
	.byte	0x1
	.value	0x1212
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x33
	.long	.LASF63
	.byte	0x1
	.value	0x121d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9692
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x33
	.long	.LASF64
	.byte	0x1
	.value	0x1293
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x33
	.long	.LASF64
	.byte	0x1
	.value	0x12e2
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x31
	.string	"saved_align"
	.byte	0x1
	.value	0x12e7
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF52
	.long	0xa9cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17741
	.uleb128 0x31
	.string	"already"
	.byte	0x1
	.value	0xf28
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	already.17760
	.byte	0x0
	.uleb128 0x34
	.long	0x9798
	.string	"grokparms"
	.byte	0x1
	.value	0x135a
	.byte	0x1
	.long	0x1e3
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x2f
	.string	"parms_info"
	.byte	0x1
	.value	0x1358
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1359
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"first_parm"
	.byte	0x1
	.value	0x135b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x31
	.string	"parm"
	.byte	0x1
	.value	0x136f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"typelt"
	.byte	0x1
	.value	0x1370
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x1382
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9894
	.byte	0x1
	.string	"get_parm_info"
	.byte	0x1
	.value	0x13ba
	.byte	0x1
	.long	0x1e3
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2f
	.string	"void_at_end"
	.byte	0x1
	.value	0x13b9
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x13bb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x13bb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"types"
	.byte	0x1
	.value	0x13bc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"erred"
	.byte	0x1
	.value	0x13bd
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"tags"
	.byte	0x1
	.value	0x13be
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"parms"
	.byte	0x1
	.value	0x13bf
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"new_parms"
	.byte	0x1
	.value	0x13c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"order"
	.byte	0x1
	.value	0x13c1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	0x987a
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x31
	.string	"next"
	.byte	0x1
	.value	0x13da
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x1402
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x9903
	.byte	0x1
	.string	"parmlist_tags_warning"
	.byte	0x1
	.value	0x141e
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x31
	.string	"elt"
	.byte	0x1
	.value	0x141f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	0x98ec
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x1424
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.string	"already"
	.byte	0x1
	.value	0x1420
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	already.19289
	.byte	0x0
	.uleb128 0x38
	.long	0x9954
	.byte	0x1
	.string	"xref_tag"
	.byte	0x1
	.value	0x144e
	.byte	0x1
	.long	0x1e3
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x144c
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x144d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"ref"
	.byte	0x1
	.value	0x1452
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x99a9
	.byte	0x1
	.string	"start_struct"
	.byte	0x1
	.value	0x1481
	.byte	0x1
	.long	0x1e3
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x32
	.long	.LASF0
	.byte	0x1
	.value	0x147f
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x1480
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"ref"
	.byte	0x1
	.value	0x1485
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x9a5f
	.byte	0x1
	.string	"grokfield"
	.byte	0x1
	.value	0x14ad
	.byte	0x1
	.long	0x1e3
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x14aa
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"line"
	.byte	0x1
	.value	0x14ab
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x14ac
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x14ac
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"width"
	.byte	0x1
	.value	0x14ac
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.long	.LASF19
	.byte	0x1
	.value	0x14ae
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.string	"warn_unnamed_field"
	.byte	0x1
	.value	0x14d6
	.long	.L1846
	.uleb128 0x30
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x14c5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x9abe
	.string	"field_decl_cmp"
	.byte	0x1
	.value	0x14ed
	.byte	0x1
	.long	0x2d7
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x2f
	.string	"xp"
	.byte	0x1
	.value	0x14eb
	.long	0x7ed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"yp"
	.byte	0x1
	.value	0x14ec
	.long	0x7ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x14ee
	.long	0x4d8c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x14ee
	.long	0x4d8c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x38
	.long	0x9c89
	.byte	0x1
	.string	"finish_struct"
	.byte	0x1
	.value	0x1505
	.byte	0x1
	.long	0x1e3
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1502
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"fieldlist"
	.byte	0x1
	.value	0x1503
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0x1504
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1506
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF65
	.byte	0x1
	.value	0x1507
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"saw_named_field"
	.byte	0x1
	.value	0x1508
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x39
	.long	0x9b6b
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0x153b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x39
	.long	0x9baa
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x31
	.string	"max_width"
	.byte	0x1
	.value	0x1578
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x31
	.string	"width"
	.byte	0x1
	.value	0x1585
	.long	0x457
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x9bc5
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x15c7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x39
	.long	0x9be9
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x31
	.string	"fieldlistp"
	.byte	0x1
	.value	0x15e3
	.long	0x4d8c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x39
	.long	0x9c38
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x15f4
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x31
	.string	"field_array"
	.byte	0x1
	.value	0x15ff
	.long	0x4d8c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"space"
	.byte	0x1
	.value	0x1600
	.long	0x4af
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0x1636
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x163a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x31
	.string	"element"
	.byte	0x1
	.value	0x1650
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x9cbe
	.string	"layout_array_type"
	.byte	0x1
	.value	0x1678
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1677
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x9d02
	.byte	0x1
	.string	"start_enum"
	.byte	0x1
	.value	0x1687
	.byte	0x1
	.long	0x1e3
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x1686
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF66
	.byte	0x1
	.value	0x1688
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x9e42
	.byte	0x1
	.string	"finish_enum"
	.byte	0x1
	.value	0x16b7
	.byte	0x1
	.long	0x1e3
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x16b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"values"
	.byte	0x1
	.value	0x16b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0x16b6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"pair"
	.byte	0x1
	.value	0x16b8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x16b8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"minnode"
	.byte	0x1
	.value	0x16b9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"maxnode"
	.byte	0x1
	.value	0x16b9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"enum_value_type"
	.byte	0x1
	.value	0x16b9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF25
	.byte	0x1
	.value	0x16ba
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"unsign"
	.byte	0x1
	.value	0x16ba
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF65
	.byte	0x1
	.value	0x16bb
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	0x9e05
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x33
	.long	.LASF19
	.byte	0x1
	.value	0x16cb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x39
	.long	0x9e28
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x31
	.string	"narrowest"
	.byte	0x1
	.value	0x16dc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x31
	.string	"enu"
	.byte	0x1
	.value	0x16ff
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9eaa
	.byte	0x1
	.string	"build_enumerator"
	.byte	0x1
	.value	0x173c
	.byte	0x1
	.long	0x1e3
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x173b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF19
	.byte	0x1
	.value	0x173b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x173d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x173d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x9f8c
	.byte	0x1
	.string	"start_function"
	.byte	0x1
	.value	0x1788
	.byte	0x1
	.long	0x2d7
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x32
	.long	.LASF56
	.byte	0x1
	.value	0x1787
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x1787
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0x1787
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"decl1"
	.byte	0x1
	.value	0x1789
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"old_decl"
	.byte	0x1
	.value	0x1789
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"restype"
	.byte	0x1
	.value	0x178a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0x178b
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x31
	.string	"args"
	.byte	0x1
	.value	0x1810
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"argct"
	.byte	0x1
	.value	0x1811
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x181a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xa1a0
	.byte	0x1
	.string	"store_parm_decls"
	.byte	0x1
	.value	0x1876
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0x1877
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.string	"parm"
	.byte	0x1
	.value	0x1878
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.string	"specparms"
	.byte	0x1
	.value	0x187c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"parmtags"
	.byte	0x1
	.value	0x187f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"parmdecls"
	.byte	0x1
	.value	0x1882
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"nonparms"
	.byte	0x1
	.value	0x1887
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF29
	.byte	0x1
	.value	0x188a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF6
	.byte	0x1
	.value	0x188d
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"saved_warn_shadow"
	.byte	0x1
	.value	0x188f
	.long	0x2d7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	0xa0c1
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x31
	.string	"next"
	.byte	0x1
	.value	0x189b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"others"
	.byte	0x1
	.value	0x189c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x18a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x18a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xa0f0
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x31
	.string	"tail"
	.byte	0x1
	.value	0x1905
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"found"
	.byte	0x1
	.value	0x1905
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x39
	.long	0xa10e
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x31
	.string	"next"
	.byte	0x1
	.value	0x1948
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x39
	.long	0xa12c
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x31
	.string	"last"
	.byte	0x1
	.value	0x196c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	0xa149
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x197f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x39
	.long	0xa188
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x31
	.string	"actual"
	.byte	0x1
	.value	0x19c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"last"
	.byte	0x1
	.value	0x19c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF4
	.byte	0x1
	.value	0x19c0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1a02
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xa1f7
	.byte	0x1
	.string	"finish_function"
	.byte	0x1
	.value	0x1a36
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x2f
	.string	"nested"
	.byte	0x1
	.value	0x1a34
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF68
	.byte	0x1
	.value	0x1a35
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0x1a37
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xa238
	.byte	0x1
	.string	"c_expand_deferred_function"
	.byte	0x1
	.value	0x1a8f
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x32
	.long	.LASF67
	.byte	0x1
	.value	0x1a8e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0xa29f
	.string	"set_save_expr_context"
	.byte	0x1
	.value	0x1ab2
	.byte	0x1
	.long	0x1e3
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x2f
	.string	"tp"
	.byte	0x1
	.value	0x1aaf
	.long	0x4d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"walk_subtrees"
	.byte	0x1
	.value	0x1ab0
	.long	0x7e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"data"
	.byte	0x1
	.value	0x1ab1
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0xa38c
	.string	"c_expand_body"
	.byte	0x1
	.value	0x1ac6
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x32
	.long	.LASF67
	.byte	0x1
	.value	0x1ac4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"nested_p"
	.byte	0x1
	.value	0x1ac5
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF68
	.byte	0x1
	.value	0x1ac5
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF33
	.byte	0x1
	.value	0x1ac7
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"saved_lineno"
	.byte	0x1
	.value	0x1ac8
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"saved_input_filename"
	.byte	0x1
	.value	0x1ac9
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"pdecl"
	.byte	0x1
	.value	0x1acb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x31
	.string	"ret_type"
	.byte	0x1
	.value	0x1b70
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x31
	.string	"size_as_int"
	.byte	0x1
	.value	0x1b77
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xa3de
	.byte	0x1
	.string	"check_for_loop_decls"
	.byte	0x1
	.value	0x1bbc
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1bbd
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x33
	.long	.LASF0
	.byte	0x1
	.value	0x1bd9
	.long	0xa89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xa427
	.byte	0x1
	.string	"c_push_function_context"
	.byte	0x1
	.value	0x1c09
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x1c08
	.long	0x4252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1c0a
	.long	0x5cd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xa47e
	.byte	0x1
	.string	"c_pop_function_context"
	.byte	0x1
	.value	0x1c20
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x1c1f
	.long	0x4252
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1c21
	.long	0x5cd9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.long	.LASF49
	.byte	0x1
	.value	0x1c22
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0xa4cb
	.byte	0x1
	.string	"c_dup_lang_specific_decl"
	.byte	0x1
	.value	0x1c47
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1c46
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"ld"
	.byte	0x1
	.value	0x1c48
	.long	0x49f4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.value	0x1c5e
	.byte	0x1
	.long	0x2d7
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x36
	.byte	0x1
	.string	"current_stmt_tree"
	.byte	0x1
	.value	0x1c68
	.byte	0x1
	.long	0x696f
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x36
	.byte	0x1
	.string	"current_scope_stmt_stack"
	.byte	0x1
	.value	0x1c70
	.byte	0x1
	.long	0x4d8c
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x38
	.long	0xa578
	.byte	0x1
	.string	"anon_aggr_type_p"
	.byte	0x1
	.value	0x1c7a
	.byte	0x1
	.long	0x2d7
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x2f
	.string	"node"
	.byte	0x1
	.value	0x1c79
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.string	"extract_interface_info"
	.byte	0x1
	.value	0x1c82
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x38
	.long	0xa5e2
	.byte	0x1
	.string	"c_begin_compound_stmt"
	.byte	0x1
	.value	0x1c8a
	.byte	0x1
	.long	0x1e3
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x31
	.string	"stmt"
	.byte	0x1
	.value	0x1c8b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xa628
	.byte	0x1
	.string	"c_expand_decl_stmt"
	.byte	0x1
	.value	0x1c99
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1c98
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF3
	.byte	0x1
	.value	0x1c9a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xa668
	.byte	0x1
	.string	"identifier_global_value"
	.byte	0x1
	.value	0x1ca9
	.byte	0x1
	.long	0x1e3
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1ca8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0xa6d4
	.byte	0x1
	.string	"record_builtin_type"
	.byte	0x1
	.value	0x1cb5
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x2f
	.string	"rid_index"
	.byte	0x1
	.value	0x1cb2
	.long	0x623c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF28
	.byte	0x1
	.value	0x1cb3
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF4
	.byte	0x1
	.value	0x1cb4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0x1cb6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xa711
	.byte	0x1
	.string	"build_void_list_node"
	.byte	0x1
	.value	0x1cc1
	.byte	0x1
	.long	0x1e3
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1cc2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xa7a5
	.byte	0x1
	.string	"make_pointer_declarator"
	.byte	0x1
	.value	0x1cd2
	.byte	0x1
	.long	0x1e3
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x2f
	.string	"type_quals_attrs"
	.byte	0x1
	.value	0x1cd1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"target"
	.byte	0x1
	.value	0x1cd1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"quals"
	.byte	0x1
	.value	0x1cd3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x1cd3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"itarget"
	.byte	0x1
	.value	0x1cd4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3e
	.long	0xa7ed
	.byte	0x1
	.string	"gt_ggc_mx_binding_level"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x3f
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x40
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xa7ed
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x798e
	.uleb128 0x3e
	.long	0xa8a4
	.byte	0x1
	.string	"gt_ggc_mx_lang_tree_node"
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x3f
	.string	"x_p"
	.byte	0x2
	.byte	0x2b
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x40
	.string	"x"
	.byte	0x2
	.byte	0x2d
	.long	0xa8a4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x40
	.string	"xlimit"
	.byte	0x2
	.byte	0x2e
	.long	0xa8a4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	0xa876
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x40
	.string	"i1_0"
	.byte	0x2
	.byte	0xa3
	.long	0x3e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x41
	.long	.LASF69
	.byte	0x2
	.byte	0xa4
	.long	0xa8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x40
	.string	"i2_0"
	.byte	0x2
	.byte	0xc9
	.long	0x3e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.string	"ilimit2_0"
	.byte	0x2
	.byte	0xca
	.long	0xa8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ac2
	.uleb128 0xb
	.long	0x3e0
	.uleb128 0x3e
	.long	0xa8f3
	.byte	0x1
	.string	"gt_ggc_mx_lang_decl"
	.byte	0x2
	.byte	0xf4
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x3f
	.string	"x_p"
	.byte	0x2
	.byte	0xf3
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x40
	.string	"x"
	.byte	0x2
	.byte	0xf5
	.long	0xa8f3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x49f4
	.uleb128 0x3e
	.long	0xa966
	.byte	0x1
	.string	"gt_ggc_mx_lang_type"
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x3f
	.string	"x_p"
	.byte	0x2
	.byte	0xfe
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x2
	.value	0x100
	.long	0xa966
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x31
	.string	"i1_0"
	.byte	0x2
	.value	0x104
	.long	0x3e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF69
	.byte	0x2
	.value	0x105
	.long	0xa8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x37db
	.uleb128 0x2e
	.long	0xa9ba
	.byte	0x1
	.string	"gt_ggc_mx_language_function"
	.byte	0x2
	.value	0x110
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x2f
	.string	"x_p"
	.byte	0x2
	.value	0x10f
	.long	0x4ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x2
	.value	0x111
	.long	0xa9ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x5cd9
	.uleb128 0x11
	.long	0xa9cf
	.long	0x2cf
	.uleb128 0x12
	.long	0x3c1
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xa9bf
	.uleb128 0x11
	.long	0xa9e4
	.long	0x2cf
	.uleb128 0x12
	.long	0x3c1
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xa9d4
	.uleb128 0x11
	.long	0xa9f9
	.long	0x2cf
	.uleb128 0x12
	.long	0x3c1
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0xa9e9
	.uleb128 0x40
	.string	"enum_next_value"
	.byte	0x1
	.byte	0x61
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	enum_next_value
	.uleb128 0x40
	.string	"enum_overflow"
	.byte	0x1
	.byte	0x65
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	enum_overflow
	.uleb128 0x40
	.string	"last_function_parms"
	.byte	0x1
	.byte	0x6a
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	last_function_parms
	.uleb128 0x40
	.string	"last_function_parm_tags"
	.byte	0x1
	.byte	0x6f
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	last_function_parm_tags
	.uleb128 0x40
	.string	"current_function_parms"
	.byte	0x1
	.byte	0x75
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	current_function_parms
	.uleb128 0x40
	.string	"current_function_parm_tags"
	.byte	0x1
	.byte	0x78
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	current_function_parm_tags
	.uleb128 0x40
	.string	"current_function_prototype_file"
	.byte	0x1
	.byte	0x7c
	.long	0x2c4
	.byte	0x5
	.byte	0x3
	.long	current_function_prototype_file
	.uleb128 0x40
	.string	"current_function_prototype_line"
	.byte	0x1
	.byte	0x7d
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	current_function_prototype_line
	.uleb128 0x40
	.string	"c_stmt_tree"
	.byte	0x1
	.byte	0x81
	.long	0x68f7
	.byte	0x5
	.byte	0x3
	.long	c_stmt_tree
	.uleb128 0x40
	.string	"c_scope_stmt_stack"
	.byte	0x1
	.byte	0x85
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	c_scope_stmt_stack
	.uleb128 0x41
	.long	.LASF39
	.byte	0x1
	.byte	0x8b
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	named_labels
	.uleb128 0x41
	.long	.LASF40
	.byte	0x1
	.byte	0x8f
	.long	0x1e3
	.byte	0x5
	.byte	0x3
	.long	shadowed_labels
	.uleb128 0x41
	.long	.LASF41
	.byte	0x1
	.byte	0xa3
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	warn_about_return_type
	.uleb128 0x40
	.string	"current_extern_inline"
	.byte	0x1
	.byte	0xa7
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	current_extern_inline
	.uleb128 0x40
	.string	"current_binding_level"
	.byte	0x1
	.byte	0xfa
	.long	0x798e
	.byte	0x5
	.byte	0x3
	.long	current_binding_level
	.uleb128 0x40
	.string	"free_binding_level"
	.byte	0x1
	.byte	0xfe
	.long	0x798e
	.byte	0x5
	.byte	0x3
	.long	free_binding_level
	.uleb128 0x31
	.string	"global_binding_level"
	.byte	0x1
	.value	0x104
	.long	0x798e
	.byte	0x5
	.byte	0x3
	.long	global_binding_level
	.uleb128 0x31
	.string	"clear_binding_level"
	.byte	0x1
	.value	0x108
	.long	0x7873
	.byte	0x5
	.byte	0x3
	.long	clear_binding_level
	.uleb128 0x31
	.string	"keep_next_level_flag"
	.byte	0x1
	.value	0x10e
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	keep_next_level_flag
	.uleb128 0x31
	.string	"keep_next_if_subblocks"
	.byte	0x1
	.value	0x113
	.long	0x2d7
	.byte	0x5
	.byte	0x3
	.long	keep_next_if_subblocks
	.uleb128 0x31
	.string	"label_level_chain"
	.byte	0x1
	.value	0x11b
	.long	0x798e
	.byte	0x5
	.byte	0x3
	.long	label_level_chain
	.uleb128 0x31
	.string	"deprecated_state"
	.byte	0x1
	.value	0x142
	.long	0x7994
	.byte	0x5
	.byte	0x3
	.long	deprecated_state
	.uleb128 0x11
	.long	0xaccb
	.long	0x2cf
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.string	"tree_code_type"
	.byte	0x8
	.byte	0x45
	.long	0xace3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xacc0
	.uleb128 0x11
	.long	0xacf3
	.long	0x3ee
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.string	"tree_code_length"
	.byte	0x8
	.byte	0x50
	.long	0xad0d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xace8
	.uleb128 0x11
	.long	0xad23
	.long	0x1e3
	.uleb128 0x44
	.long	0x3c1
	.value	0x128
	.byte	0x0
	.uleb128 0x43
	.string	"built_in_decls"
	.byte	0x8
	.byte	0x75
	.long	0xad12
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xad4b
	.long	0x1e3
	.uleb128 0x12
	.long	0x3c1
	.byte	0x3a
	.byte	0x0
	.uleb128 0x45
	.string	"global_trees"
	.byte	0x8
	.value	0x8b5
	.long	0xad3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xad72
	.long	0x1e3
	.uleb128 0x12
	.long	0x3c1
	.byte	0xa
	.byte	0x0
	.uleb128 0x45
	.string	"integer_types"
	.byte	0x8
	.value	0x91d
	.long	0xad62
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xad9a
	.long	0x1e3
	.uleb128 0x12
	.long	0x3c1
	.byte	0x5
	.byte	0x0
	.uleb128 0x45
	.string	"sizetype_tab"
	.byte	0x8
	.value	0xad1
	.long	0xad8a
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"input_filename"
	.byte	0x8
	.value	0xbb7
	.long	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"lineno"
	.byte	0x8
	.value	0xbba
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"pedantic_lvalues"
	.byte	0x8
	.value	0xbbf
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"immediate_size_expand"
	.byte	0x8
	.value	0xbc4
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"current_function_decl"
	.byte	0x8
	.value	0xbc8
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flag_inline_trees"
	.byte	0x14
	.byte	0x28
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"extra_warnings"
	.byte	0x15
	.byte	0x61
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_unused_label"
	.byte	0x15
	.byte	0x6a
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_shadow"
	.byte	0x15
	.byte	0x85
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_return_type"
	.byte	0x15
	.byte	0x98
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_larger_than"
	.byte	0x15
	.byte	0xa8
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"larger_than_size"
	.byte	0x15
	.byte	0xa9
	.long	0x446
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"pedantic"
	.byte	0x15
	.byte	0xe5
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"in_system_header"
	.byte	0x15
	.byte	0xea
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flag_signed_char"
	.byte	0x15
	.byte	0xf5
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flag_short_enums"
	.byte	0x15
	.byte	0xf9
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_syntax_only"
	.byte	0x15
	.value	0x1a3
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_gen_aux_info"
	.byte	0x15
	.value	0x1a7
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_exceptions"
	.byte	0x15
	.value	0x1ee
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_no_common"
	.byte	0x15
	.value	0x1fb
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_pack_struct"
	.byte	0x15
	.value	0x22f
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x4252
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"ridpointers"
	.byte	0x10
	.byte	0x8b
	.long	0x4d8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xb000
	.long	0x1e3
	.uleb128 0x12
	.long	0x3c1
	.byte	0x1e
	.byte	0x0
	.uleb128 0x43
	.string	"c_global_trees"
	.byte	0x10
	.byte	0xef
	.long	0xaff0
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"lang_expand_function_end"
	.byte	0x10
	.value	0x146
	.long	0x7f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_iso"
	.byte	0x10
	.value	0x181
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_objc"
	.byte	0x10
	.value	0x184
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_ms_extensions"
	.byte	0x10
	.value	0x19c
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_signed_bitfields"
	.byte	0x10
	.value	0x1ad
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_missing_prototypes"
	.byte	0x10
	.value	0x1c1
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_long_long"
	.byte	0x10
	.value	0x1d2
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_redundant_decls"
	.byte	0x10
	.value	0x1dc
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"mesg_implicit_function_declaration"
	.byte	0x10
	.value	0x20e
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_isoc99"
	.byte	0x10
	.value	0x21b
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"flag_hosted"
	.byte	0x10
	.value	0x21f
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_traditional"
	.byte	0x10
	.value	0x22e
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_strict_prototypes"
	.byte	0x10
	.value	0x237
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_missing_declarations"
	.byte	0x10
	.value	0x23c
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_nested_externs"
	.byte	0x10
	.value	0x244
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_main"
	.byte	0x10
	.value	0x248
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"warn_implicit_int"
	.byte	0x10
	.value	0x253
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	0xb215
	.byte	0x1
	.long	0x1e3
	.uleb128 0x17
	.long	0x1e3
	.uleb128 0x17
	.long	0x2d7
	.byte	0x0
	.uleb128 0x45
	.string	"make_fname_decl"
	.byte	0x10
	.value	0x365
	.long	0xb22f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xb200
	.uleb128 0x46
	.string	"current_function_returns_value"
	.byte	0x1
	.byte	0x94
	.long	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_returns_value
	.uleb128 0x46
	.string	"current_function_returns_null"
	.byte	0x1
	.byte	0x99
	.long	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_returns_null
	.uleb128 0x46
	.string	"current_function_returns_abnormally"
	.byte	0x1
	.byte	0x9e
	.long	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_returns_abnormally
	.uleb128 0x47
	.string	"static_ctors"
	.byte	0x1
	.value	0x11f
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_ctors
	.uleb128 0x47
	.string	"static_dtors"
	.byte	0x1
	.value	0x11f
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_dtors
	.uleb128 0x46
	.string	"ggc_p"
	.byte	0x1
	.byte	0x4f
	.long	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ggc_p
	.uleb128 0x45
	.string	"targetm"
	.byte	0x16
	.value	0x12d
	.long	0x719d
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"debug_hooks"
	.byte	0x17
	.byte	0x6a
	.long	0xb333
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xb339
	.uleb128 0xb
	.long	0x7588
	.uleb128 0x43
	.string	"sdb_debug_hooks"
	.byte	0x17
	.byte	0x81
	.long	0xb339
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"dwarf2_debug_hooks"
	.byte	0x17
	.byte	0x84
	.long	0xb339
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xb383
	.long	0x9b
	.uleb128 0x12
	.long	0x3c1
	.byte	0x60
	.byte	0x0
	.uleb128 0x43
	.string	"libfunc_table"
	.byte	0x18
	.byte	0x97
	.long	0xb373
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"defer_function"
	.byte	0x19
	.byte	0x4e
	.long	0x4d5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"pending_invalid_xref"
	.byte	0x1
	.byte	0x56
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pending_invalid_xref
	.uleb128 0x46
	.string	"pending_invalid_xref_file"
	.byte	0x1
	.byte	0x58
	.long	0x2c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pending_invalid_xref_file
	.uleb128 0x46
	.string	"pending_invalid_xref_line"
	.byte	0x1
	.byte	0x59
	.long	0x2d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pending_invalid_xref_line
	.uleb128 0x45
	.string	"var_labelno"
	.byte	0x1
	.value	0xd6a
	.long	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0xb44b
	.long	0x6af4
	.uleb128 0x12
	.long	0x3c1
	.byte	0xa
	.byte	0x0
	.uleb128 0x47
	.string	"gt_ggc_r_gt_c_decl_h"
	.byte	0x2
	.value	0x11f
	.long	0xb46f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_c_decl_h
	.uleb128 0xb
	.long	0xb43b
	.uleb128 0x11
	.long	0xb484
	.long	0x6af4
	.uleb128 0x12
	.long	0x3c1
	.byte	0x1
	.byte	0x0
	.uleb128 0x47
	.string	"gt_ggc_rd_gt_c_decl_h"
	.byte	0x2
	.value	0x169
	.long	0xb4a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_rd_gt_c_decl_h
	.uleb128 0xb
	.long	0xb474
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x77f
	.value	0x2
	.long	.Ldebug_info0
	.long	0xb4af
	.long	0x79da
	.string	"c_print_identifier"
	.long	0x7a4f
	.string	"c_finish_incomplete_decl"
	.long	0x7b39
	.string	"global_bindings_p"
	.long	0x7b61
	.string	"keep_next_level"
	.long	0x7b83
	.string	"kept_level_p"
	.long	0x7ba6
	.string	"declare_parm_level"
	.long	0x7beb
	.string	"in_parm_level_p"
	.long	0x7c11
	.string	"pushlevel"
	.long	0x7c97
	.string	"poplevel"
	.long	0x7d92
	.string	"insert_block"
	.long	0x7dc5
	.string	"set_block"
	.long	0x7df5
	.string	"push_label_level"
	.long	0x7e2c
	.string	"pop_label_level"
	.long	0x7e83
	.string	"pushtag"
	.long	0x818f
	.string	"pushdecl"
	.long	0x828a
	.string	"pushdecl_top_level"
	.long	0x82df
	.string	"implicitly_declare"
	.long	0x836d
	.string	"implicit_decl_warning"
	.long	0x8413
	.string	"lookup_label"
	.long	0x8458
	.string	"shadow_label"
	.long	0x84b7
	.string	"define_label"
	.long	0x851c
	.string	"getdecls"
	.long	0x853b
	.string	"gettags"
	.long	0x8667
	.string	"pending_xref_error"
	.long	0x86f3
	.string	"lookup_name"
	.long	0x8738
	.string	"lookup_name_current_level"
	.long	0x8789
	.string	"c_init_decl_processing"
	.long	0x8897
	.string	"builtin_function"
	.long	0x8941
	.string	"c_insert_default_attributes"
	.long	0x8983
	.string	"shadow_tag"
	.long	0x89b4
	.string	"shadow_tag_warned"
	.long	0x8a90
	.string	"build_array_declarator"
	.long	0x8b1e
	.string	"set_array_declarator_type"
	.long	0x8b87
	.string	"groktypename"
	.long	0x8bde
	.string	"groktypename_in_parm_context"
	.long	0x8c25
	.string	"start_decl"
	.long	0x8ca5
	.string	"finish_decl"
	.long	0x8e27
	.string	"push_parm_decl"
	.long	0x8e7b
	.string	"clear_parm_order"
	.long	0x8e9e
	.string	"build_compound_literal"
	.long	0x8f6f
	.string	"complete_array_type"
	.long	0x9798
	.string	"get_parm_info"
	.long	0x9894
	.string	"parmlist_tags_warning"
	.long	0x9903
	.string	"xref_tag"
	.long	0x9954
	.string	"start_struct"
	.long	0x99a9
	.string	"grokfield"
	.long	0x9abe
	.string	"finish_struct"
	.long	0x9cbe
	.string	"start_enum"
	.long	0x9d02
	.string	"finish_enum"
	.long	0x9e42
	.string	"build_enumerator"
	.long	0x9eaa
	.string	"start_function"
	.long	0x9f8c
	.string	"store_parm_decls"
	.long	0xa1a0
	.string	"finish_function"
	.long	0xa1f7
	.string	"c_expand_deferred_function"
	.long	0xa38c
	.string	"check_for_loop_decls"
	.long	0xa3de
	.string	"c_push_function_context"
	.long	0xa427
	.string	"c_pop_function_context"
	.long	0xa47e
	.string	"c_dup_lang_specific_decl"
	.long	0xa4cb
	.string	"stmts_are_full_exprs_p"
	.long	0xa4e5
	.string	"current_stmt_tree"
	.long	0xa50d
	.string	"current_scope_stmt_stack"
	.long	0xa53c
	.string	"anon_aggr_type_p"
	.long	0xa578
	.string	"extract_interface_info"
	.long	0xa5a1
	.string	"c_begin_compound_stmt"
	.long	0xa5e2
	.string	"c_expand_decl_stmt"
	.long	0xa628
	.string	"identifier_global_value"
	.long	0xa668
	.string	"record_builtin_type"
	.long	0xa6d4
	.string	"build_void_list_node"
	.long	0xa711
	.string	"make_pointer_declarator"
	.long	0xa7a5
	.string	"gt_ggc_mx_binding_level"
	.long	0xa7f2
	.string	"gt_ggc_mx_lang_tree_node"
	.long	0xa8af
	.string	"gt_ggc_mx_lang_decl"
	.long	0xa8f8
	.string	"gt_ggc_mx_lang_type"
	.long	0xa96b
	.string	"gt_ggc_mx_language_function"
	.long	0xb235
	.string	"current_function_returns_value"
	.long	0xb262
	.string	"current_function_returns_null"
	.long	0xb28e
	.string	"current_function_returns_abnormally"
	.long	0xb2c0
	.string	"static_ctors"
	.long	0xb2dc
	.string	"static_dtors"
	.long	0xb2f8
	.string	"ggc_p"
	.long	0xb3b2
	.string	"pending_invalid_xref"
	.long	0xb3d5
	.string	"pending_invalid_xref_file"
	.long	0xb3fd
	.string	"pending_invalid_xref_line"
	.long	0xb44b
	.string	"gt_ggc_r_gt_c_decl_h"
	.long	0xb484
	.string	"gt_ggc_rd_gt_c_decl_h"
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
.LASF49:
	.string	"link"
.LASF28:
	.string	"name"
.LASF45:
	.string	"stmts_are_full_exprs_p"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF34:
	.string	"noinline_attrib"
.LASF36:
	.string	"mem_attrs"
.LASF63:
	.string	"qualifier"
.LASF55:
	.string	"attrs"
.LASF6:
	.string	"prototype"
.LASF58:
	.string	"declarator"
.LASF1:
	.string	"common"
.LASF59:
	.string	"initialized"
.LASF43:
	.string	"cpp_hashnode"
.LASF30:
	.string	"lang_specific"
.LASF68:
	.string	"can_defer_p"
.LASF38:
	.string	"sequence_rtl_expr"
.LASF37:
	.string	"sequence_stack"
.LASF32:
	.string	"function_frequency"
.LASF54:
	.string	"filename"
.LASF13:
	.string	"lang_flag_3"
.LASF48:
	.string	"newlevel"
.LASF22:
	.string	"abstract_origin"
.LASF26:
	.string	"pointer_depth"
.LASF62:
	.string	"funcdef_flag"
.LASF41:
	.string	"warn_about_return_type"
.LASF27:
	.string	"user_align"
.LASF46:
	.string	"decl_context"
.LASF23:
	.string	"size_unit"
.LASF69:
	.string	"ilimit1_0"
.LASF4:
	.string	"type"
.LASF19:
	.string	"value"
.LASF50:
	.string	"different_binding_level"
.LASF21:
	.string	"subblocks"
.LASF31:
	.string	"args_size"
.LASF64:
	.string	"extern_ref"
.LASF25:
	.string	"precision"
.LASF67:
	.string	"fndecl"
.LASF9:
	.string	"built_in_class"
.LASF2:
	.string	"identifier"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF20:
	.string	"abstract_flag"
.LASF44:
	.string	"cpp_macro"
.LASF0:
	.string	"code"
.LASF39:
	.string	"named_labels"
.LASF29:
	.string	"context"
.LASF18:
	.string	"ht_identifier"
.LASF35:
	.string	"always_inline_attrib"
.LASF42:
	.string	"binding_level"
.LASF57:
	.string	"typename"
.LASF47:
	.string	"tag_transparent"
.LASF61:
	.string	"old_immediate_size_expand"
.LASF53:
	.string	"oldlocal"
.LASF60:
	.string	"do_default"
.LASF51:
	.string	"trytype"
.LASF52:
	.string	"__FUNCTION__"
.LASF66:
	.string	"enumtype"
.LASF5:
	.string	"block"
.LASF40:
	.string	"shadowed_labels"
.LASF65:
	.string	"toplevel"
.LASF56:
	.string	"declspecs"
.LASF8:
	.string	"_IO_FILE"
.LASF24:
	.string	"attributes"
.LASF3:
	.string	"decl"
.LASF17:
	.string	"length"
.LASF33:
	.string	"uninlinable"
.LASF7:
	.string	"unsigned int"
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
