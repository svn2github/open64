	.file	"cp-demangle.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"Allocation failed."
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	status_allocation_failed, @object
	.size	status_allocation_failed, 4
status_allocation_failed:
	.long	.LC0
	.text
	.type	int_to_dyn_string, @function
int_to_dyn_string:
.LFB5:
	.file 1 "../../libiberty/cp-demangle.c"
	.loc 1 372 0
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
	.loc 1 374 0
	movl	$1, -12(%ebp)
	.loc 1 377 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 379 0
	movl	$48, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L4
	.loc 1 380 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L6
.L4:
	.loc 1 381 0
	movl	$0, -24(%ebp)
	jmp	.L6
.L2:
	.loc 1 385 0
	cmpl	$0, 8(%ebp)
	jns	.L7
	.loc 1 387 0
	movl	$45, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L9
	.loc 1 388 0
	movl	status_allocation_failed@GOTOFF(%ebx), %ecx
	movl	%ecx, -24(%ebp)
	jmp	.L6
.L9:
	.loc 1 389 0
	negl	8(%ebp)
.L7:
	.loc 1 393 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 394 0
	jmp	.L11
.L12:
	.loc 1 396 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 397 0
	movl	-16(%ebp), %ecx
	movl	$1717986919, -28(%ebp)
	movl	-28(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
.L11:
	.loc 1 394 0
	cmpl	$9, -16(%ebp)
	jg	.L12
	.loc 1 401 0
	jmp	.L14
.L15:
.LBB2:
	.loc 1 403 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-12(%ebp)
	movl	%eax, -8(%ebp)
	.loc 1 405 0
	movl	-8(%ebp), %eax
	addl	$48, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L16
	.loc 1 406 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L6
.L16:
	.loc 1 408 0
	movl	-8(%ebp), %eax
	imull	-12(%ebp), %eax
	subl	%eax, 8(%ebp)
	.loc 1 409 0
	movl	-12(%ebp), %ecx
	movl	$1717986919, -28(%ebp)
	movl	-28(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
.L14:
.LBE2:
	.loc 1 401 0
	cmpl	$0, -12(%ebp)
	jg	.L15
	.loc 1 412 0
	movl	$0, -24(%ebp)
.L6:
	movl	-24(%ebp), %eax
	.loc 1 413 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	int_to_dyn_string, .-int_to_dyn_string
	.type	string_list_new, @function
string_list_new:
.LFB6:
	.loc 1 423 0
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
	.loc 1 424 0
	movl	$20, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 425 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 426 0
	cmpl	$0, -8(%ebp)
	jne	.L21
	.loc 1 427 0
	movl	$0, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 428 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_init@PLT
	testl	%eax, %eax
	jne	.L24
	.loc 1 429 0
	movl	$0, -24(%ebp)
	jmp	.L23
.L24:
	.loc 1 430 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L23:
	movl	-24(%ebp), %eax
	.loc 1 431 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	string_list_new, .-string_list_new
	.type	string_list_delete, @function
string_list_delete:
.LFB7:
	.loc 1 438 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB3:
	.loc 1 439 0
	jmp	.L28
.L29:
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 442 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 443 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L28:
.LBE3:
	.loc 1 439 0
	cmpl	$0, 8(%ebp)
	jne	.L29
	.loc 1 445 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	string_list_delete, .-string_list_delete
	.type	result_add_separated_char, @function
result_add_separated_char:
.LFB8:
	.loc 1 454 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$52, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 460 0
	cmpl	$0, -16(%ebp)
	jle	.L33
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L33
.LBB4:
	.loc 1 461 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L36
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L38
.L36:
	movl	$0, -32(%ebp)
.L38:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L33
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L40
.L33:
.LBE4:
.LBB5:
	.loc 1 463 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L41
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L43
.L41:
	movl	$0, -24(%ebp)
.L43:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L44
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L40
.L44:
.LBE5:
	.loc 1 465 0
	movl	$0, -28(%ebp)
.L40:
	movl	-28(%ebp), %eax
	.loc 1 466 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	result_add_separated_char, .-result_add_separated_char
	.type	result_push, @function
result_push:
.LFB9:
	.loc 1 476 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$36, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 477 0
	movl	$0, (%esp)
	call	string_list_new
	movl	%eax, -8(%ebp)
	.loc 1 478 0
	cmpl	$0, -8(%ebp)
	jne	.L48
	.loc 1 480 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L50
.L48:
	.loc 1 483 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 484 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 485 0
	movl	$0, -24(%ebp)
.L50:
	movl	-24(%ebp), %eax
	.loc 1 486 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	result_push, .-result_push
	.type	result_pop, @function
result_pop:
.LFB10:
	.loc 1 495 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	subl	$16, %esp
.LCFI22:
	.loc 1 496 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 497 0
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 498 0
	movl	-4(%ebp), %eax
	.loc 1 499 0
	leave
	ret
.LFE10:
	.size	result_pop, .-result_pop
	.type	result_get_caret, @function
result_get_caret:
.LFB11:
	.loc 1 507 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	.loc 1 508 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	.loc 1 509 0
	popl	%ebp
	ret
.LFE11:
	.size	result_get_caret, .-result_get_caret
	.type	result_set_caret, @function
result_set_caret:
.LFB12:
	.loc 1 518 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	.loc 1 519 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 520 0
	popl	%ebp
	ret
.LFE12:
	.size	result_set_caret, .-result_set_caret
	.type	result_shift_caret, @function
result_shift_caret:
.LFB13:
	.loc 1 529 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	.loc 1 530 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 531 0
	popl	%ebp
	ret
.LFE13:
	.size	result_shift_caret, .-result_shift_caret
	.type	result_previous_char_is_space, @function
result_previous_char_is_space:
.LFB14:
	.loc 1 540 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	subl	$20, %esp
.LCFI31:
	.loc 1 541 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 542 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 543 0
	cmpl	$0, -4(%ebp)
	jle	.L61
	movl	-4(%ebp), %eax
	addl	-8(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	.L61
	movl	$1, -20(%ebp)
	jmp	.L64
.L61:
	movl	$0, -20(%ebp)
.L64:
	movl	-20(%ebp), %eax
	.loc 1 544 0
	leave
	ret
.LFE14:
	.size	result_previous_char_is_space, .-result_previous_char_is_space
	.type	substitution_start, @function
substitution_start:
.LFB15:
	.loc 1 553 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	.loc 1 554 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	.loc 1 555 0
	popl	%ebp
	ret
.LFE15:
	.size	substitution_start, .-substitution_start
	.type	substitution_add, @function
substitution_add:
.LFB16:
	.loc 1 566 0
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
	.loc 1 567 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 568 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -16(%ebp)
	.loc 1 571 0
	cmpl	$0, -16(%ebp)
	jne	.L69
	.loc 1 572 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L71
.L69:
	.loc 1 576 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_substring@PLT
	testl	%eax, %eax
	jne	.L72
	.loc 1 579 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 580 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L71
.L72:
	.loc 1 584 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L74
.LBB6:
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L76
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	jmp	.L78
.L76:
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	$2, 16(%eax)
.L78:
	.loc 1 591 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$3, %eax
	movl	%eax, -8(%ebp)
	.loc 1 594 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	realloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 596 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 599 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 600 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L71
.L74:
.LBE6:
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 606 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 607 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %ecx
	movl	16(%ebp), %eax
	sall	$7, %eax
	sarb	$7, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	4(%ecx), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 4(%ecx)
	.loc 1 613 0
	movl	$0, -24(%ebp)
.L71:
	movl	-24(%ebp), %eax
	.loc 1 614 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	substitution_add, .-substitution_add
	.type	substitution_get, @function
substitution_get:
.LFB17:
	.loc 1 627 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	subl	$20, %esp
.LCFI40:
	.loc 1 631 0
	cmpl	$0, 12(%ebp)
	js	.L82
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jg	.L84
.L82:
	.loc 1 632 0
	movl	$0, -20(%ebp)
	jmp	.L85
.L84:
	.loc 1 634 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 635 0
	movl	-4(%ebp), %eax
	movzbl	4(%eax), %eax
	sall	$7, %eax
	sarb	$7, %al
	movsbl	%al,%edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 636 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L85:
	movl	-20(%ebp), %eax
	.loc 1 637 0
	leave
	ret
.LFE17:
	.size	substitution_get, .-substitution_get
	.type	template_arg_list_new, @function
template_arg_list_new:
.LFB18:
	.loc 1 671 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$36, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 673 0
	movl	$12, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 674 0
	cmpl	$0, -8(%ebp)
	jne	.L88
	.loc 1 675 0
	movl	$0, -24(%ebp)
	jmp	.L90
.L88:
	.loc 1 677 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 678 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 680 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L90:
	movl	-24(%ebp), %eax
	.loc 1 681 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	template_arg_list_new, .-template_arg_list_new
	.type	template_arg_list_delete, @function
template_arg_list_delete:
.LFB19:
	.loc 1 689 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$4, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 691 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L93
	.loc 1 692 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	string_list_delete
.L93:
	.loc 1 694 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 695 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	template_arg_list_delete, .-template_arg_list_delete
	.type	template_arg_list_add_arg, @function
template_arg_list_add_arg:
.LFB20:
	.loc 1 703 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L97
	.loc 1 706 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L99
.L97:
	.loc 1 709 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
.L99:
	.loc 1 711 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	.loc 1 712 0
	movl	12(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 713 0
	popl	%ebp
	ret
.LFE20:
	.size	template_arg_list_add_arg, .-template_arg_list_add_arg
	.type	template_arg_list_get_arg, @function
template_arg_list_get_arg:
.LFB21:
	.loc 1 722 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	subl	$20, %esp
.LCFI53:
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 726 0
	jmp	.L102
.L103:
	.loc 1 728 0
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 729 0
	cmpl	$0, -4(%ebp)
	jne	.L102
	.loc 1 732 0
	movl	$0, -20(%ebp)
	jmp	.L105
.L102:
	.loc 1 726 0
	subl	$1, 12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	.L103
	.loc 1 735 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L105:
	movl	-20(%ebp), %eax
	.loc 1 736 0
	leave
	ret
.LFE21:
	.size	template_arg_list_get_arg, .-template_arg_list_get_arg
	.type	push_template_arg_list, @function
push_template_arg_list:
.LFB22:
	.loc 1 744 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 746 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 751 0
	popl	%ebp
	ret
.LFE22:
	.size	push_template_arg_list, .-push_template_arg_list
	.type	pop_to_template_arg_list, @function
pop_to_template_arg_list:
.LFB23:
	.loc 1 761 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	subl	$24, %esp
.LCFI58:
.LBB7:
	.loc 1 762 0
	jmp	.L111
.L112:
	.loc 1 764 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 766 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 768 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	template_arg_list_delete
.L111:
.LBE7:
	.loc 1 762 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L112
	.loc 1 773 0
	leave
	ret
.LFE23:
	.size	pop_to_template_arg_list, .-pop_to_template_arg_list
	.type	current_template_arg_list, @function
current_template_arg_list:
.LFB24:
	.loc 1 807 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	.loc 1 808 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	.loc 1 809 0
	popl	%ebp
	ret
.LFE24:
	.size	current_template_arg_list, .-current_template_arg_list
	.type	demangling_new, @function
demangling_new:
.LFB25:
	.loc 1 819 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$36, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 821 0
	movl	$44, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 822 0
	cmpl	$0, -8(%ebp)
	jne	.L118
	.loc 1 823 0
	movl	$0, -24(%ebp)
	jmp	.L120
.L118:
	.loc 1 825 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 826 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 827 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 828 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 829 0
	movl	-8(%ebp), %eax
	movl	$10, 16(%eax)
	.loc 1 830 0
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 831 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 832 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L121
	.loc 1 833 0
	movl	$0, -24(%ebp)
	jmp	.L120
.L121:
	.loc 1 834 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 836 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L123
	.loc 1 838 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 839 0
	movl	$0, -24(%ebp)
	jmp	.L120
.L123:
	.loc 1 841 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 842 0
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 843 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 845 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L120:
	movl	-24(%ebp), %eax
	.loc 1 846 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	demangling_new, .-demangling_new
	.type	demangling_delete, @function
demangling_delete:
.LFB26:
	.loc 1 854 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$20, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 856 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 859 0
	jmp	.L127
.L128:
.LBB8:
	.loc 1 861 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 862 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	template_arg_list_delete
	.loc 1 863 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L127:
.LBE8:
	.loc 1 859 0
	cmpl	$0, -12(%ebp)
	jne	.L128
	.loc 1 866 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L130
.L131:
	.loc 1 867 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.L130:
	.loc 1 866 0
	subl	$1, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jns	.L131
	.loc 1 868 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 870 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	string_list_delete
	.loc 1 872 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 874 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 875 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	demangling_delete, .-demangling_delete
	.local	error_message.3577
	.comm	error_message.3577,4,4
	.section	.rodata
.LC1:
	.string	"Expected ?"
	.text
	.type	demangle_char, @function
demangle_char:
.LFB27:
	.loc 1 970 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$20, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L135
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 976 0
	movl	$0, -8(%ebp)
	jmp	.L137
.L135:
	.loc 1 980 0
	movl	error_message.3577@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L138
	.loc 1 981 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, error_message.3577@GOTOFF(%ebx)
.L138:
	.loc 1 982 0
	movl	error_message.3577@GOTOFF(%ebx), %eax
	leal	9(%eax), %edx
	movl	12(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 983 0
	movl	error_message.3577@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L137:
	movl	-8(%ebp), %eax
	.loc 1 985 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	demangle_char, .-demangle_char
	.type	demangle_mangled_name, @function
demangle_mangled_name:
.LFB28:
	.loc 1 994 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$40, %esp
.LCFI75:
.LBB9:
	.loc 1 996 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L142
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L144
.L142:
.LBE9:
.LBB10:
	.loc 1 997 0
	movl	$90, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L145
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L144
.L145:
.LBE10:
.LBB11:
	.loc 1 998 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L147
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L144
.L147:
.LBE11:
	.loc 1 999 0
	movl	$0, -20(%ebp)
.L144:
	movl	-20(%ebp), %eax
	.loc 1 1000 0
	leave
	ret
.LFE28:
	.size	demangle_mangled_name, .-demangle_mangled_name
	.type	demangle_encoding, @function
demangle_encoding:
.LFB29:
	.loc 1 1011 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	subl	$56, %esp
.LCFI78:
	.loc 1 1014 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	current_template_arg_list
	movl	%eax, -24(%ebp)
	.loc 1 1015 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	.loc 1 1021 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1023 0
	cmpb	$71, -1(%ebp)
	je	.L151
	cmpb	$84, -1(%ebp)
	jne	.L153
.L151:
.LBB12:
	.loc 1 1024 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_special_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L157
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L156
.L153:
.LBE12:
.LBB13:
	.loc 1 1028 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_name
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L158
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L156
.L158:
.LBE13:
	.loc 1 1032 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L157
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	je	.L157
	.loc 1 1035 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L162
.LBB14:
	.loc 1 1038 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_bare_function_type
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L157
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L156
.L162:
.LBE14:
.LBB15:
	.loc 1 1043 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_bare_function_type
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L157
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L156
.L157:
.LBE15:
	.loc 1 1050 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_to_template_arg_list
	.loc 1 1052 0
	movl	$0, -36(%ebp)
.L156:
	movl	-36(%ebp), %eax
	.loc 1 1053 0
	leave
	ret
.LFE29:
	.size	demangle_encoding, .-demangle_encoding
	.section	.rodata
.LC2:
	.string	"std::"
	.text
	.type	demangle_name, @function
demangle_name:
.LFB30:
	.loc 1 1073 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$100, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_start
	movl	%eax, -56(%ebp)
	.loc 1 1075 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1076 0
	movl	$0, -52(%ebp)
	.loc 1 1082 0
	movl	$0, -60(%ebp)
	.loc 1 1086 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -80(%ebp)
	cmpl	$83, -80(%ebp)
	je	.L171
	cmpl	$90, -80(%ebp)
	je	.L172
	cmpl	$78, -80(%ebp)
	je	.L170
	jmp	.L169
.L170:
.LBB16:
	.loc 1 1090 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_nested_name
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L176
	movl	-48(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L172:
.LBE16:
.LBB17:
	.loc 1 1094 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_local_name
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L177
	movl	-44(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L177:
.LBE17:
	.loc 1 1095 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1096 0
	jmp	.L176
.L171:
	.loc 1 1101 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L179
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	.L179
	.loc 1 1103 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1104 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB18:
	.loc 1 1105 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L182
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L184
.L182:
	movl	$0, -72(%ebp)
.L184:
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L185
	movl	-40(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L185:
.LBE18:
.LBB19:
	.loc 1 1106 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_unqualified_name
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L187
	movl	-36(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L187:
.LBE19:
	.loc 1 1108 0
	movl	$1, -52(%ebp)
	.loc 1 1101 0
	jmp	.L189
.L179:
.LBB20:
	.loc 1 1111 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_substitution
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L189
	movl	-32(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L189:
.LBE20:
	.loc 1 1114 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	jne	.L191
	.loc 1 1118 0
	cmpl	$0, -52(%ebp)
	je	.L193
.LBB21:
	.loc 1 1119 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L193
	movl	-28(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L193:
.LBE21:
.LBB22:
	.loc 1 1121 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_args
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L196
	movl	-24(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L196:
.LBE22:
	.loc 1 1122 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L176
.L191:
	.loc 1 1125 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1127 0
	jmp	.L176
.L169:
.LBB23:
	.loc 1 1131 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_unqualified_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L199
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L199:
.LBE23:
	.loc 1 1135 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	jne	.L201
.LBB24:
	.loc 1 1138 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L203
	movl	-16(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L203:
.LBE24:
.LBB25:
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_args
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L205
	movl	-12(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L175
.L205:
.LBE25:
	.loc 1 1141 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L176
.L201:
	.loc 1 1144 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L176:
	.loc 1 1149 0
	movl	$0, -76(%ebp)
.L175:
	movl	-76(%ebp), %eax
	.loc 1 1150 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	demangle_name, .-demangle_name
	.type	demangle_nested_name, @function
demangle_nested_name:
.LFB31:
	.loc 1 1160 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$68, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB26:
	.loc 1 1165 0
	movl	$78, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L209
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L211
.L209:
.LBE26:
	.loc 1 1167 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1168 0
	cmpb	$114, -5(%ebp)
	je	.L212
	cmpb	$86, -5(%ebp)
	je	.L212
	cmpb	$75, -5(%ebp)
	jne	.L215
.L212:
.LBB27:
	.loc 1 1174 0
	movl	$24, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1175 0
	cmpl	$0, -28(%ebp)
	jne	.L216
	.loc 1 1176 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L211
.L216:
	.loc 1 1177 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_CV_qualifiers
	.loc 1 1180 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L218
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L220
.L218:
	movl	$0, -44(%ebp)
.L220:
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1181 0
	cmpl	$0, -24(%ebp)
	jne	.L221
	.loc 1 1182 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L223
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L225
.L223:
	movl	$0, -40(%ebp)
.L225:
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
.L221:
	.loc 1 1188 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	notl	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_shift_caret
	.loc 1 1190 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB28:
	.loc 1 1191 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L215
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L211
.L215:
.LBE28:
.LBE27:
.LBB29:
	.loc 1 1194 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_prefix
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L227
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L211
.L227:
.LBE29:
.LBB30:
	.loc 1 1197 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L229
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L211
.L229:
.LBE30:
	.loc 1 1199 0
	movl	$0, -48(%ebp)
.L211:
	movl	-48(%ebp), %eax
	.loc 1 1200 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	demangle_nested_name, .-demangle_nested_name
	.section	.rodata
	.align 4
.LC3:
	.string	"Unexpected end of name in <compound-name>."
.LC4:
	.string	"."
.LC5:
	.string	"::"
	.align 4
.LC6:
	.string	"Unexpected character in <compound-name>."
	.text
	.type	demangle_prefix, @function
demangle_prefix:
.LFB32:
	.loc 1 1216 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$84, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1217 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_start
	movl	%eax, -40(%ebp)
	.loc 1 1218 0
	movl	$0, -36(%ebp)
	.loc 1 1228 0
	movl	$0, -44(%ebp)
	jmp	.L281
.L233:
.L281:
.LBB31:
	.loc 1 1236 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L234
	.loc 1 1237 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L236
.L234:
	.loc 1 1239 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1247 0
	cmpb	$73, -5(%ebp)
	je	.L237
	.loc 1 1248 0
	movl	$0, -44(%ebp)
.L237:
	.loc 1 1250 0
	cmpb	$47, -5(%ebp)
	jbe	.L239
	cmpb	$57, -5(%ebp)
	jbe	.L241
.L239:
	cmpb	$96, -5(%ebp)
	jbe	.L242
	cmpb	$122, -5(%ebp)
	jbe	.L241
.L242:
	cmpb	$67, -5(%ebp)
	je	.L241
	cmpb	$68, -5(%ebp)
	je	.L241
	cmpb	$83, -5(%ebp)
	jne	.L246
.L241:
	.loc 1 1256 0
	cmpl	$0, -36(%ebp)
	je	.L247
.LBB32:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$4, %eax
	jne	.L249
	leal	.LC4@GOTOFF(%ebx), %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L251
.L249:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L251:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	-56(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L252
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L254
.L252:
	movl	$0, -60(%ebp)
.L254:
	movl	-60(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L257
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L236
.L247:
.LBE32:
	.loc 1 1259 0
	movl	$1, -36(%ebp)
.L257:
	.loc 1 1261 0
	cmpb	$83, -5(%ebp)
	jne	.L258
.LBB33:
	.loc 1 1264 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_substitution
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L265
	movl	-28(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L236
.L258:
.LBE33:
.LBB34:
	.loc 1 1268 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_unqualified_name
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L263
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L236
.L263:
.LBE34:
	.loc 1 1270 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1250 0
	jmp	.L265
.L246:
	.loc 1 1273 0
	cmpb	$90, -5(%ebp)
	jne	.L266
.LBB35:
	.loc 1 1274 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_local_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L265
	movl	-20(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L236
.L266:
.LBE35:
	.loc 1 1275 0
	cmpb	$73, -5(%ebp)
	jne	.L270
.LBB36:
	.loc 1 1277 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_args
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L272
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L236
.L272:
.LBE36:
	.loc 1 1286 0
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L265
.L270:
	.loc 1 1288 0
	cmpb	$69, -5(%ebp)
	jne	.L274
	.loc 1 1290 0
	movl	$0, -64(%ebp)
	jmp	.L236
.L274:
	.loc 1 1292 0
	leal	.LC6@GOTOFF(%ebx), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L236
.L265:
	.loc 1 1294 0
	cmpb	$83, -5(%ebp)
	je	.L233
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	je	.L233
.LBB37:
	.loc 1 1297 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L233
	movl	-12(%ebp), %eax
	movl	%eax, -64(%ebp)
.L236:
	.loc 1 1298 0
	movl	-64(%ebp), %eax
.LBE37:
.LBE31:
	.loc 1 1299 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	demangle_prefix, .-demangle_prefix
	.section	.rodata
	.align 4
.LC7:
	.string	"Unexpected character in <unqualified-name>."
	.text
	.type	demangle_unqualified_name, @function
demangle_unqualified_name:
.LFB33:
	.loc 1 1315 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$52, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1316 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1322 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1324 0
	cmpb	$47, -5(%ebp)
	jbe	.L283
	cmpb	$57, -5(%ebp)
	ja	.L283
.LBB38:
	.loc 1 1325 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_source_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L289
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L288
.L283:
.LBE38:
	.loc 1 1326 0
	cmpb	$96, -5(%ebp)
	jbe	.L290
	cmpb	$122, -5(%ebp)
	ja	.L290
.LBB39:
	.loc 1 1331 0
	cmpb	$99, -5(%ebp)
	jne	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L293
	.loc 1 1332 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L293:
.LBB40:
	.loc 1 1334 0
	movl	$0, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_operator_name
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L289
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L288
.L290:
.LBE40:
.LBE39:
	.loc 1 1336 0
	cmpb	$67, -5(%ebp)
	je	.L299
	cmpb	$68, -5(%ebp)
	jne	.L301
.L299:
	.loc 1 1339 0
	cmpb	$67, -5(%ebp)
	jne	.L302
	.loc 1 1340 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L302:
.LBB41:
	.loc 1 1342 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_ctor_dtor_name
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L289
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L288
.L301:
.LBE41:
	.loc 1 1345 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L288
.L289:
	.loc 1 1347 0
	movl	$0, -40(%ebp)
.L288:
	movl	-40(%ebp), %eax
	.loc 1 1348 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	demangle_unqualified_name, .-demangle_unqualified_name
	.section	.rodata
.LC8:
	.string	"Zero length in <source-name>."
	.text
	.type	demangle_source_name, @function
demangle_source_name:
.LFB34:
	.loc 1 1357 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$52, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB42:
	.loc 1 1363 0
	movl	$0, 12(%esp)
	movl	$10, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L308
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L310
.L308:
.LBE42:
	.loc 1 1364 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L311
	.loc 1 1365 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L310
.L311:
.LBB43:
	.loc 1 1369 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_identifier
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L313
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L310
.L313:
.LBE43:
.LBB44:
	.loc 1 1373 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L315
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L317
.L315:
	movl	$0, -24(%ebp)
.L317:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L318
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L310
.L318:
.LBE44:
	.loc 1 1375 0
	movl	$0, -28(%ebp)
.L310:
	movl	-28(%ebp), %eax
	.loc 1 1376 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	demangle_source_name, .-demangle_source_name
	.type	demangle_number, @function
demangle_number:
.LFB35:
	.loc 1 1394 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$36, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1395 0
	movl	$10, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1399 0
	cmpl	$0, -8(%ebp)
	jne	.L322
	.loc 1 1400 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L324
.L322:
	.loc 1 1402 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	.loc 1 1403 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	strtol@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1404 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 1406 0
	movl	$0, -24(%ebp)
.L324:
	movl	-24(%ebp), %eax
	.loc 1 1407 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	demangle_number, .-demangle_number
	.section	.rodata
.LC9:
	.string	"Internal error."
	.text
	.type	demangle_number_literally, @function
demangle_number_literally:
.LFB36:
	.loc 1 1422 0
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
	.loc 1 1425 0
	cmpl	$10, 16(%ebp)
	je	.L327
	cmpl	$36, 16(%ebp)
	je	.L327
	.loc 1 1426 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L330
.L327:
	.loc 1 1429 0
	cmpl	$0, 20(%ebp)
	je	.L331
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L331
	.loc 1 1432 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1435 0
	movl	$45, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L331
	.loc 1 1436 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L330
.L331:
.LBB45:
	.loc 1 1442 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1443 0
	cmpb	$47, -5(%ebp)
	jbe	.L335
	cmpb	$57, -5(%ebp)
	jbe	.L337
.L335:
	cmpl	$36, 16(%ebp)
	jne	.L338
	cmpb	$64, -5(%ebp)
	jbe	.L338
	cmpb	$90, -5(%ebp)
	ja	.L338
.L337:
	.loc 1 1447 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %ecx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	%ecx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L331
	.loc 1 1448 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L330
.L338:
.LBE45:
	.loc 1 1455 0
	movl	$0, -24(%ebp)
.L330:
	movl	-24(%ebp), %eax
	.loc 1 1456 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	demangle_number_literally, .-demangle_number_literally
	.section	.rodata
	.align 4
.LC10:
	.string	"Unexpected end of name in <identifier>."
.LC11:
	.string	"Error."
.LC12:
	.string	"__U"
.LC13:
	.string	"_GLOBAL_"
.LC14:
	.string	"(anonymous namespace)"
	.text
	.type	demangle_identifier, @function
demangle_identifier:
.LFB37:
	.loc 1 1466 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%edi
.LCFI109:
	pushl	%esi
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$76, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1466 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1469 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_clear@PLT
	.loc 1 1470 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L380
	.loc 1 1471 0
	movl	status_allocation_failed@GOTOFF(%ebx), %edx
	movl	%edx, -56(%ebp)
	jmp	.L347
.L349:
.LBB46:
	.loc 1 1476 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L350
	.loc 1 1477 0
	leal	.LC10@GOTOFF(%ebx), %ecx
	movl	%ecx, -56(%ebp)
	jmp	.L347
.L350:
	.loc 1 1478 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	addl	$1, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1483 0
	cmpl	$95, -44(%ebp)
	jne	.L352
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L352
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L352
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$85, %al
	jne	.L352
.LBB47:
	.loc 1 1488 0
	movl	$0, -40(%ebp)
	.loc 1 1489 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	subl	$2, 12(%ebp)
	.loc 1 1490 0
	jmp	.L357
.L358:
	.loc 1 1492 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	addl	$1, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1493 0
	call	__ctype_b_loc@PLT
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L359
	.loc 1 1495 0
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	movb	%dl, -26(%ebp,%eax)
	addl	$1, -40(%ebp)
.L357:
	.loc 1 1490 0
	cmpl	$0, 12(%ebp)
	setg	%al
	subl	$1, 12(%ebp)
	testb	%al, %al
	jne	.L358
.L359:
	.loc 1 1497 0
	cmpl	$95, -44(%ebp)
	jne	.L361
	cmpl	$0, 12(%ebp)
	jns	.L363
.L361:
	.loc 1 1498 0
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -56(%ebp)
	jmp	.L347
.L363:
	.loc 1 1499 0
	cmpl	$0, -40(%ebp)
	jne	.L364
	.loc 1 1502 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	testl	%eax, %eax
	jne	.L348
	.loc 1 1503 0
	movl	status_allocation_failed@GOTOFF(%ebx), %edi
	movl	%edi, -56(%ebp)
	jmp	.L347
.L364:
	.loc 1 1508 0
	movl	-40(%ebp), %eax
	movb	$0, -26(%ebp,%eax)
	.loc 1 1509 0
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	leal	-26(%ebp), %eax
	movl	%eax, (%esp)
	call	strtol@PLT
	movl	%eax, -44(%ebp)
.L352:
.LBE47:
	.loc 1 1513 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L348
	.loc 1 1514 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L347
.L348:
.L380:
.LBE46:
	.loc 1 1473 0
	cmpl	$0, 12(%ebp)
	setg	%al
	subl	$1, 12(%ebp)
	testb	%al, %al
	jne	.L349
	.loc 1 1520 0
	movl	flag_strict@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L370
.LBB48:
	.loc 1 1522 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1523 0
	movl	$8, -32(%ebp)
	.loc 1 1526 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, -60(%ebp)
	movl	%eax, -64(%ebp)
	cmpl	$9, -64(%ebp)
	jle	.L372
	movl	$9, -64(%ebp)
.L372:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	%eax, -76(%ebp)
	cld
	movl	-76(%ebp), %edi
	cmpl	%edi, -76(%ebp)
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L370
	.loc 1 1528 0
	movl	-32(%ebp), %eax
	addl	%eax, -36(%ebp)
	.loc 1 1532 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L374
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L374
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L370
.L374:
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$78, %al
	jne	.L370
	.loc 1 1536 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_copy_cstr@PLT
.L370:
.LBE48:
	.loc 1 1540 0
	movl	$0, -56(%ebp)
.L347:
	movl	-56(%ebp), %eax
	.loc 1 1541 0
	movl	-16(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L379
	call	__stack_chk_fail_local
.L379:
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	demangle_identifier, .-demangle_identifier
	.section	.rodata
.LC15:
	.string	"aN"
.LC16:
	.string	"&="
.LC17:
	.string	"aS"
.LC18:
	.string	"="
.LC19:
	.string	"aa"
.LC20:
	.string	"&&"
.LC21:
	.string	"ad"
.LC22:
	.string	"&"
.LC23:
	.string	"an"
.LC24:
	.string	"cl"
.LC25:
	.string	"()"
.LC26:
	.string	"cm"
.LC27:
	.string	","
.LC28:
	.string	"co"
.LC29:
	.string	"~"
.LC30:
	.string	"dV"
.LC31:
	.string	"/="
.LC32:
	.string	"da"
.LC33:
	.string	" delete[]"
.LC34:
	.string	"de"
.LC35:
	.string	"*"
.LC36:
	.string	"dl"
.LC37:
	.string	" delete"
.LC38:
	.string	"dv"
.LC39:
	.string	"/"
.LC40:
	.string	"eO"
.LC41:
	.string	"^="
.LC42:
	.string	"eo"
.LC43:
	.string	"^"
.LC44:
	.string	"eq"
.LC45:
	.string	"=="
.LC46:
	.string	"ge"
.LC47:
	.string	">="
.LC48:
	.string	"gt"
.LC49:
	.string	">"
.LC50:
	.string	"ix"
.LC51:
	.string	"[]"
.LC52:
	.string	"lS"
.LC53:
	.string	"<<="
.LC54:
	.string	"le"
.LC55:
	.string	"<="
.LC56:
	.string	"ls"
.LC57:
	.string	"<<"
.LC58:
	.string	"lt"
.LC59:
	.string	"<"
.LC60:
	.string	"mI"
.LC61:
	.string	"-="
.LC62:
	.string	"mL"
.LC63:
	.string	"*="
.LC64:
	.string	"mi"
.LC65:
	.string	"-"
.LC66:
	.string	"ml"
.LC67:
	.string	"mm"
.LC68:
	.string	"--"
.LC69:
	.string	"na"
.LC70:
	.string	" new[]"
.LC71:
	.string	"ne"
.LC72:
	.string	"!="
.LC73:
	.string	"ng"
.LC74:
	.string	"nt"
.LC75:
	.string	"!"
.LC76:
	.string	"nw"
.LC77:
	.string	" new"
.LC78:
	.string	"oR"
.LC79:
	.string	"|="
.LC80:
	.string	"oo"
.LC81:
	.string	"||"
.LC82:
	.string	"or"
.LC83:
	.string	"|"
.LC84:
	.string	"pL"
.LC85:
	.string	"+="
.LC86:
	.string	"pl"
.LC87:
	.string	"+"
.LC88:
	.string	"pm"
.LC89:
	.string	"->*"
.LC90:
	.string	"pp"
.LC91:
	.string	"++"
.LC92:
	.string	"ps"
.LC93:
	.string	"pt"
.LC94:
	.string	"->"
.LC95:
	.string	"qu"
.LC96:
	.string	"?"
.LC97:
	.string	"rM"
.LC98:
	.string	"%="
.LC99:
	.string	"rS"
.LC100:
	.string	">>="
.LC101:
	.string	"rm"
.LC102:
	.string	"%"
.LC103:
	.string	"rs"
.LC104:
	.string	">>"
.LC105:
	.string	"sz"
.LC106:
	.string	" sizeof"
	.section	.data.rel.ro.local
	.align 32
	.type	operators.4153, @object
	.size	operators.4153, 576
operators.4153:
	.long	.LC15
	.long	.LC16
	.long	2
	.long	.LC17
	.long	.LC18
	.long	2
	.long	.LC19
	.long	.LC20
	.long	2
	.long	.LC21
	.long	.LC22
	.long	1
	.long	.LC23
	.long	.LC22
	.long	2
	.long	.LC24
	.long	.LC25
	.long	0
	.long	.LC26
	.long	.LC27
	.long	2
	.long	.LC28
	.long	.LC29
	.long	1
	.long	.LC30
	.long	.LC31
	.long	2
	.long	.LC32
	.long	.LC33
	.long	1
	.long	.LC34
	.long	.LC35
	.long	1
	.long	.LC36
	.long	.LC37
	.long	1
	.long	.LC38
	.long	.LC39
	.long	2
	.long	.LC40
	.long	.LC41
	.long	2
	.long	.LC42
	.long	.LC43
	.long	2
	.long	.LC44
	.long	.LC45
	.long	2
	.long	.LC46
	.long	.LC47
	.long	2
	.long	.LC48
	.long	.LC49
	.long	2
	.long	.LC50
	.long	.LC51
	.long	2
	.long	.LC52
	.long	.LC53
	.long	2
	.long	.LC54
	.long	.LC55
	.long	2
	.long	.LC56
	.long	.LC57
	.long	2
	.long	.LC58
	.long	.LC59
	.long	2
	.long	.LC60
	.long	.LC61
	.long	2
	.long	.LC62
	.long	.LC63
	.long	2
	.long	.LC64
	.long	.LC65
	.long	2
	.long	.LC66
	.long	.LC35
	.long	2
	.long	.LC67
	.long	.LC68
	.long	1
	.long	.LC69
	.long	.LC70
	.long	1
	.long	.LC71
	.long	.LC72
	.long	2
	.long	.LC73
	.long	.LC65
	.long	1
	.long	.LC74
	.long	.LC75
	.long	1
	.long	.LC76
	.long	.LC77
	.long	1
	.long	.LC78
	.long	.LC79
	.long	2
	.long	.LC80
	.long	.LC81
	.long	2
	.long	.LC82
	.long	.LC83
	.long	2
	.long	.LC84
	.long	.LC85
	.long	2
	.long	.LC86
	.long	.LC87
	.long	2
	.long	.LC88
	.long	.LC89
	.long	2
	.long	.LC90
	.long	.LC91
	.long	1
	.long	.LC92
	.long	.LC87
	.long	1
	.long	.LC93
	.long	.LC94
	.long	2
	.long	.LC95
	.long	.LC96
	.long	3
	.long	.LC97
	.long	.LC98
	.long	2
	.long	.LC99
	.long	.LC100
	.long	2
	.long	.LC101
	.long	.LC102
	.long	2
	.long	.LC103
	.long	.LC104
	.long	2
	.long	.LC105
	.long	.LC106
	.long	1
	.section	.rodata
.LC107:
	.string	"operator "
.LC108:
	.string	"operator"
	.align 4
.LC109:
	.string	"Unknown code in <operator-name>."
	.text
	.type	demangle_operator_name, @function
demangle_operator_name:
.LFB38:
	.loc 1 1609 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$100, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1673 0
	movl	$48, -60(%ebp)
	.loc 1 1675 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1676 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1677 0
	leal	operators.4153@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1678 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	leal	operators.4153@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1683 0
	cmpl	$0, 20(%ebp)
	je	.L382
	.loc 1 1684 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L382:
	.loc 1 1687 0
	cmpl	$118, -56(%ebp)
	jne	.L384
	cmpl	$47, -52(%ebp)
	jle	.L384
	cmpl	$57, -52(%ebp)
	jg	.L384
.LBB49:
	.loc 1 1689 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L388
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L390
.L388:
	movl	$0, -92(%ebp)
.L390:
	movl	-92(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L391
	movl	-40(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L393
.L391:
.LBE49:
.LBB50:
	.loc 1 1690 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_source_name
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L394
	movl	-36(%ebp), %ecx
	movl	%ecx, -88(%ebp)
	jmp	.L393
.L394:
.LBE50:
	.loc 1 1691 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1692 0
	movl	$0, -88(%ebp)
	jmp	.L393
.L384:
	.loc 1 1696 0
	cmpl	$99, -56(%ebp)
	jne	.L396
	cmpl	$118, -52(%ebp)
	jne	.L396
.LBB51:
	.loc 1 1698 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L399
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L401
.L399:
	movl	$0, -84(%ebp)
.L401:
	movl	-84(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L402
	movl	-32(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L393
.L402:
.LBE51:
.LBB52:
	.loc 1 1700 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L404
	movl	-28(%ebp), %ecx
	movl	%ecx, -88(%ebp)
	jmp	.L393
.L404:
.LBE52:
	.loc 1 1701 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1702 0
	movl	$0, -88(%ebp)
	jmp	.L393
.L396:
	.loc 1 1706 0
	cmpl	$115, -56(%ebp)
	jne	.L438
	cmpl	$116, -52(%ebp)
	jne	.L438
.LBB53:
	.loc 1 1708 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L409
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	jmp	.L411
.L409:
	movl	$0, -80(%ebp)
.L411:
	movl	-80(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L412
	movl	-24(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L393
.L412:
.LBE53:
	.loc 1 1709 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 1710 0
	cmpl	$0, 20(%ebp)
	je	.L414
	.loc 1 1711 0
	movl	20(%ebp), %eax
	movl	$1, (%eax)
.L414:
	.loc 1 1712 0
	movl	$0, -88(%ebp)
	jmp	.L393
.L406:
.L438:
.LBB54:
	.loc 1 1718 0
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1719 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -6(%ebp)
	.loc 1 1720 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1722 0
	movzbl	-6(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L416
	movzbl	-5(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jne	.L416
	.loc 1 1725 0
	cmpl	$0, 12(%ebp)
	jne	.L419
.LBB55:
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L421
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L423
.L421:
	movl	$0, -76(%ebp)
.L423:
	movl	-76(%ebp), %ecx
	movl	%ecx, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L419
	movl	-16(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L393
.L419:
.LBE55:
.LBB56:
	.loc 1 1727 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L425
	movl	status_allocation_failed@GOTOFF(%ebx), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.L427
.L425:
	movl	$0, -72(%ebp)
.L427:
	movl	-72(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L428
	movl	-12(%ebp), %ecx
	movl	%ecx, -88(%ebp)
	jmp	.L393
.L428:
.LBE56:
	.loc 1 1728 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1730 0
	movl	$0, -88(%ebp)
	jmp	.L393
.L416:
	.loc 1 1733 0
	movl	-20(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L430
	.loc 1 1735 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L393
.L430:
	.loc 1 1738 0
	movzbl	-6(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jg	.L432
	movzbl	-6(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L434
	movzbl	-5(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jle	.L434
.L432:
	.loc 1 1739 0
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1738 0
	jmp	.L406
.L434:
	.loc 1 1741 0
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1742 0
	jmp	.L406
.L393:
	movl	-88(%ebp), %eax
.LBE54:
	.loc 1 1743 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	demangle_operator_name, .-demangle_operator_name
	.section	.rodata
.LC110:
	.string	" [nv:"
	.text
	.type	demangle_nv_offset, @function
demangle_nv_offset:
.LFB39:
	.loc 1 1752 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$52, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1754 0
	movl	$0, -12(%ebp)
	.loc 1 1759 0
	movl	$4, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1760 0
	cmpl	$0, -16(%ebp)
	jne	.L440
	.loc 1 1761 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L442
.L440:
	.loc 1 1762 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	.loc 1 1765 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L443
	.loc 1 1767 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L445
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L447
.L445:
	movl	$0, -32(%ebp)
.L447:
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1768 0
	cmpl	$0, -12(%ebp)
	jne	.L448
	.loc 1 1769 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L450
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L452
.L450:
	movl	$0, -28(%ebp)
.L452:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
.L448:
	.loc 1 1770 0
	cmpl	$0, -12(%ebp)
	jne	.L443
	.loc 1 1771 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L454
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L456
.L454:
	movl	$0, -24(%ebp)
.L456:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
.L443:
	.loc 1 1775 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB57:
	.loc 1 1776 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L457
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L442
.L457:
.LBE57:
	.loc 1 1777 0
	movl	$0, -36(%ebp)
.L442:
	movl	-36(%ebp), %eax
	.loc 1 1778 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	demangle_nv_offset, .-demangle_nv_offset
	.section	.rodata
.LC111:
	.string	" [v:"
	.text
	.type	demangle_v_offset, @function
demangle_v_offset:
.LFB40:
	.loc 1 1788 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$68, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1790 0
	movl	$0, -20(%ebp)
	.loc 1 1795 0
	movl	$4, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1796 0
	cmpl	$0, -24(%ebp)
	jne	.L461
	.loc 1 1797 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L463
.L461:
	.loc 1 1798 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	.loc 1 1801 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L464
	.loc 1 1803 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L466
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L468
.L466:
	movl	$0, -52(%ebp)
.L468:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1804 0
	cmpl	$0, -20(%ebp)
	jne	.L469
	.loc 1 1805 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L471
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L473
.L471:
	movl	$0, -48(%ebp)
.L473:
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
.L469:
	.loc 1 1806 0
	cmpl	$0, -20(%ebp)
	jne	.L464
	.loc 1 1807 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$44, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
.L464:
	.loc 1 1809 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB58:
	.loc 1 1810 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L477
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L463
.L477:
.LBE58:
.LBB59:
	.loc 1 1813 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L479
	movl	-12(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L463
.L479:
.LBE59:
	.loc 1 1816 0
	movl	$4, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1817 0
	cmpl	$0, -24(%ebp)
	jne	.L481
	.loc 1 1818 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L463
.L481:
	.loc 1 1819 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	.loc 1 1822 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L483
	.loc 1 1824 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L485
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L487
.L485:
	movl	$0, -44(%ebp)
.L487:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1825 0
	cmpl	$0, -20(%ebp)
	jne	.L483
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L489
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L491
.L489:
	movl	$0, -40(%ebp)
.L491:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
.L483:
	.loc 1 1828 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB60:
	.loc 1 1829 0
	movl	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L492
	movl	-8(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L463
.L492:
.LBE60:
	.loc 1 1831 0
	movl	$0, -56(%ebp)
.L463:
	movl	-56(%ebp), %eax
	.loc 1 1832 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	demangle_v_offset, .-demangle_v_offset
	.section	.rodata
.LC112:
	.string	"Unrecognized <call-offset>."
	.text
	.type	demangle_call_offset, @function
demangle_call_offset:
.LFB41:
	.loc 1 1842 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$36, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1845 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$104, -28(%ebp)
	je	.L497
	cmpl	$118, -28(%ebp)
	je	.L498
	jmp	.L496
.L497:
	.loc 1 1848 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB61:
	.loc 1 1850 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_nv_offset
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L499
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L501
.L499:
.LBE61:
.LBB62:
	.loc 1 1852 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L504
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L501
.L498:
.LBE62:
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB63:
	.loc 1 1858 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_v_offset
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L505
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L501
.L505:
.LBE63:
.LBB64:
	.loc 1 1860 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L504
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L501
.L496:
.LBE64:
	.loc 1 1864 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L501
.L504:
	.loc 1 1867 0
	movl	$0, -24(%ebp)
.L501:
	movl	-24(%ebp), %eax
	.loc 1 1868 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	demangle_call_offset, .-demangle_call_offset
	.section	.rodata
.LC113:
	.string	"guard variable for "
.LC114:
	.string	"reference temporary for "
.LC115:
	.string	"Unrecognized <special-name>."
.LC116:
	.string	"vtable for "
.LC117:
	.string	"VTT for "
.LC118:
	.string	"typeinfo for "
.LC119:
	.string	"typeinfo fn for "
.LC120:
	.string	"typeinfo name for "
.LC121:
	.string	"java Class for "
.LC122:
	.string	"non-virtual thunk"
.LC123:
	.string	" to "
.LC124:
	.string	"virtual thunk"
.LC125:
	.string	"covariant return thunk"
.LC126:
	.string	"construction vtable for "
.LC127:
	.string	"-in-"
	.text
	.type	demangle_special_name, @function
demangle_special_name:
.LFB42:
	.loc 1 1903 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$260, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1906 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1910 0
	cmpb	$71, -5(%ebp)
	jne	.L511
	.loc 1 1913 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1914 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -244(%ebp)
	cmpl	$82, -244(%ebp)
	je	.L514
	cmpl	$86, -244(%ebp)
	je	.L515
	jmp	.L513
.L515:
	.loc 1 1918 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB65:
	.loc 1 1919 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L516
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -240(%ebp)
	jmp	.L518
.L516:
	movl	$0, -240(%ebp)
.L518:
	movl	-240(%ebp), %eax
	movl	%eax, -156(%ebp)
	cmpl	$0, -156(%ebp)
	je	.L519
	movl	-156(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L519:
.LBE65:
.LBB66:
	.loc 1 1920 0
	leal	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_name
	movl	%eax, -152(%ebp)
	cmpl	$0, -152(%ebp)
	je	.L532
	movl	-152(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L514:
.LBE66:
	.loc 1 1925 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB67:
	.loc 1 1926 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L525
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -232(%ebp)
	jmp	.L527
.L525:
	movl	$0, -232(%ebp)
.L527:
	movl	-232(%ebp), %eax
	movl	%eax, -148(%ebp)
	cmpl	$0, -148(%ebp)
	je	.L528
	movl	-148(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L528:
.LBE67:
.LBB68:
	.loc 1 1927 0
	leal	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_name
	movl	%eax, -144(%ebp)
	cmpl	$0, -144(%ebp)
	je	.L532
	movl	-144(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L513:
.LBE68:
	.loc 1 1931 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L511:
	.loc 1 1934 0
	cmpb	$84, -5(%ebp)
	jne	.L533
.LBB69:
	.loc 1 1936 0
	movl	$0, -140(%ebp)
	.loc 1 1939 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1941 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$67, %eax
	movl	%eax, -248(%ebp)
	cmpl	$51, -248(%ebp)
	ja	.L535
	movl	-248(%ebp), %eax
	sall	$2, %eax
	movl	.L546@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L546:
	.long	.L536@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L537@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L538@GOTOFF
	.long	.L539@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L540@GOTOFF
	.long	.L541@GOTOFF
	.long	.L535@GOTOFF
	.long	.L542@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L543@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L544@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L545@GOTOFF
	.text
.L542:
	.loc 1 1945 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB70:
	.loc 1 1946 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L547
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -228(%ebp)
	jmp	.L549
.L547:
	movl	$0, -228(%ebp)
.L549:
	movl	-228(%ebp), %eax
	movl	%eax, -136(%ebp)
	cmpl	$0, -136(%ebp)
	je	.L550
	movl	-136(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L550:
.LBE70:
.LBB71:
	.loc 1 1947 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -132(%ebp)
	cmpl	$0, -132(%ebp)
	je	.L532
	movl	-132(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L541:
.LBE71:
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB72:
	.loc 1 1953 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L555
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -224(%ebp)
	jmp	.L557
.L555:
	movl	$0, -224(%ebp)
.L557:
	movl	-224(%ebp), %eax
	movl	%eax, -128(%ebp)
	cmpl	$0, -128(%ebp)
	je	.L558
	movl	-128(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L558:
.LBE72:
.LBB73:
	.loc 1 1954 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -124(%ebp)
	cmpl	$0, -124(%ebp)
	je	.L532
	movl	-124(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L538:
.LBE73:
	.loc 1 1959 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB74:
	.loc 1 1960 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L562
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -220(%ebp)
	jmp	.L564
.L562:
	movl	$0, -220(%ebp)
.L564:
	movl	-220(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$0, -120(%ebp)
	je	.L565
	movl	-120(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L565:
.LBE74:
.LBB75:
	.loc 1 1961 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -116(%ebp)
	cmpl	$0, -116(%ebp)
	je	.L532
	movl	-116(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L537:
.LBE75:
	.loc 1 1966 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB76:
	.loc 1 1967 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L569
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -216(%ebp)
	jmp	.L571
.L569:
	movl	$0, -216(%ebp)
.L571:
	movl	-216(%ebp), %eax
	movl	%eax, -112(%ebp)
	cmpl	$0, -112(%ebp)
	je	.L572
	movl	-112(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L572:
.LBE76:
.LBB77:
	.loc 1 1968 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -108(%ebp)
	cmpl	$0, -108(%ebp)
	je	.L532
	movl	-108(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L540:
.LBE77:
	.loc 1 1973 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB78:
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L576
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -212(%ebp)
	jmp	.L578
.L576:
	movl	$0, -212(%ebp)
.L578:
	movl	-212(%ebp), %eax
	movl	%eax, -104(%ebp)
	cmpl	$0, -104(%ebp)
	je	.L579
	movl	-104(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L579:
.LBE78:
.LBB79:
	.loc 1 1975 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -100(%ebp)
	cmpl	$0, -100(%ebp)
	je	.L532
	movl	-100(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L539:
.LBE79:
	.loc 1 1980 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB80:
	.loc 1 1981 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L583
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -208(%ebp)
	jmp	.L585
.L583:
	movl	$0, -208(%ebp)
.L585:
	movl	-208(%ebp), %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	je	.L586
	movl	-96(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L586:
.LBE80:
.LBB81:
	.loc 1 1982 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -92(%ebp)
	cmpl	$0, -92(%ebp)
	je	.L532
	movl	-92(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L544:
.LBE81:
	.loc 1 1987 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB82:
	.loc 1 1988 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L590
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -204(%ebp)
	jmp	.L592
.L590:
	movl	$0, -204(%ebp)
.L592:
	movl	-204(%ebp), %eax
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L593
	movl	-88(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L593:
.LBE82:
.LBB83:
	.loc 1 1989 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_nv_offset
	movl	%eax, -84(%ebp)
	cmpl	$0, -84(%ebp)
	je	.L595
	movl	-84(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L595:
.LBE83:
.LBB84:
	.loc 1 1991 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L597
	movl	-80(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L597:
.LBE84:
.LBB85:
	.loc 1 1993 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L599
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -200(%ebp)
	jmp	.L601
.L599:
	movl	$0, -200(%ebp)
.L601:
	movl	-200(%ebp), %eax
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L602
	movl	-76(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L602:
.LBE85:
.LBB86:
	.loc 1 1994 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L532
	movl	-72(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L545:
.LBE86:
	.loc 1 1999 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB87:
	.loc 1 2000 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L606
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -196(%ebp)
	jmp	.L608
.L606:
	movl	$0, -196(%ebp)
.L608:
	movl	-196(%ebp), %eax
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L609
	movl	-68(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L609:
.LBE87:
.LBB88:
	.loc 1 2001 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_v_offset
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L611
	movl	-64(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L611:
.LBE88:
.LBB89:
	.loc 1 2003 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L613
	movl	-60(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L613:
.LBE89:
.LBB90:
	.loc 1 2005 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L615
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -192(%ebp)
	jmp	.L617
.L615:
	movl	$0, -192(%ebp)
.L617:
	movl	-192(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L618
	movl	-56(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L618:
.LBE90:
.LBB91:
	.loc 1 2006 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L532
	movl	-52(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L543:
.LBE91:
	.loc 1 2011 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB92:
	.loc 1 2012 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L622
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
	jmp	.L624
.L622:
	movl	$0, -188(%ebp)
.L624:
	movl	-188(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L625
	movl	-48(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L625:
.LBE92:
.LBB93:
	.loc 1 2013 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_call_offset
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L627
	movl	-44(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L627:
.LBE93:
.LBB94:
	.loc 1 2014 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_call_offset
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L629
	movl	-40(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L629:
.LBE94:
.LBB95:
	.loc 1 2016 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L631
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -184(%ebp)
	jmp	.L633
.L631:
	movl	$0, -184(%ebp)
.L633:
	movl	-184(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L634
	movl	-36(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L634:
.LBE95:
.LBB96:
	.loc 1 2017 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L532
	movl	-32(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L536:
.LBE96:
	.loc 1 2022 0
	movl	flag_strict@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L535
.LBB97:
	.loc 1 2026 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB98:
	.loc 1 2027 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L639
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -180(%ebp)
	jmp	.L641
.L639:
	movl	$0, -180(%ebp)
.L641:
	movl	-180(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L642
	movl	-24(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L642:
.LBE98:
.LBB99:
	.loc 1 2030 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L644
	movl	-20(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L644:
.LBE99:
.LBB100:
	.loc 1 2031 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L646
	movl	-16(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L646:
.LBE100:
	.loc 1 2032 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -28(%ebp)
	.loc 1 2035 0
	movl	$4, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -160(%ebp)
	.loc 1 2036 0
	cmpl	$0, -160(%ebp)
	jne	.L648
	.loc 1 2038 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 2039 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L648:
	.loc 1 2041 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	.loc 1 2043 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -140(%ebp)
	.loc 1 2046 0
	cmpl	$0, -140(%ebp)
	jne	.L650
	.loc 1 2047 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -140(%ebp)
.L650:
	.loc 1 2050 0
	cmpl	$0, -140(%ebp)
	jne	.L652
	.loc 1 2051 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L654
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -176(%ebp)
	jmp	.L656
.L654:
	movl	$0, -176(%ebp)
.L656:
	movl	-176(%ebp), %eax
	movl	%eax, -140(%ebp)
.L652:
	.loc 1 2052 0
	cmpl	$0, -140(%ebp)
	jne	.L657
	.loc 1 2053 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L659
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -172(%ebp)
	jmp	.L661
.L659:
	movl	$0, -172(%ebp)
.L661:
	movl	-172(%ebp), %eax
	movl	%eax, -140(%ebp)
.L657:
	.loc 1 2054 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 2057 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L662
	.loc 1 2059 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L664
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -168(%ebp)
	jmp	.L666
.L664:
	movl	$0, -168(%ebp)
.L666:
	movl	-168(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 2060 0
	cmpl	$0, -140(%ebp)
	jne	.L662
	.loc 1 2061 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
.L662:
	.loc 1 2063 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB101:
	.loc 1 2064 0
	movl	-140(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L532
	movl	-12(%ebp), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L535:
.LBE101:
.LBE97:
	.loc 1 2070 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L533:
.LBE69:
	.loc 1 2074 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -236(%ebp)
	jmp	.L521
.L532:
	.loc 1 2076 0
	movl	$0, -236(%ebp)
.L521:
	movl	-236(%ebp), %eax
	.loc 1 2077 0
	addl	$260, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	demangle_special_name, .-demangle_special_name
	.section	.rodata
.LC128:
	.string	"in-charge deleting"
.LC129:
	.string	"in-charge"
.LC130:
	.string	"not-in-charge"
	.section	.data.rel.ro.local
	.align 4
	.type	dtor_flavors.4932, @object
	.size	dtor_flavors.4932, 12
dtor_flavors.4932:
	.long	.LC128
	.long	.LC129
	.long	.LC130
	.section	.rodata
.LC131:
	.string	"allocating"
	.section	.data.rel.ro.local
	.align 4
	.type	ctor_flavors.4931, @object
	.size	ctor_flavors.4931, 12
ctor_flavors.4931:
	.long	.LC129
	.long	.LC130
	.long	.LC131
	.section	.rodata
.LC132:
	.string	"Unrecognized constructor."
.LC133:
	.string	"["
.LC134:
	.string	"Unrecognized destructor."
.LC135:
	.string	" ["
	.text
	.type	demangle_ctor_dtor_name, @function
demangle_ctor_dtor_name:
.LFB43:
	.loc 1 2092 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$116, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 2111 0
	cmpb	$67, -5(%ebp)
	jne	.L674
	.loc 1 2114 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2115 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2116 0
	cmpl	$48, -48(%ebp)
	jle	.L676
	cmpl	$51, -48(%ebp)
	jle	.L678
.L676:
	.loc 1 2117 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L678:
.LBB102:
	.loc 1 2118 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L680
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L682
.L680:
	movl	$0, -88(%ebp)
.L682:
	movl	-88(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L683
	movl	-44(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L683:
.LBE102:
	.loc 1 2119 0
	movl	-48(%ebp), %eax
	movl	%eax, -96(%ebp)
	cmpl	$50, -96(%ebp)
	je	.L687
	cmpl	$51, -96(%ebp)
	je	.L688
	cmpl	$49, -96(%ebp)
	je	.L686
	jmp	.L685
.L686:
	.loc 1 2121 0
	movl	8(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 2122 0
	jmp	.L685
.L687:
	.loc 1 2123 0
	movl	8(%ebp), %eax
	movl	$2, 36(%eax)
	.loc 1 2124 0
	jmp	.L685
.L688:
	.loc 1 2125 0
	movl	8(%ebp), %eax
	movl	$3, 36(%eax)
.L685:
	.loc 1 2129 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L705
.LBB103:
	.loc 1 2131 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L691
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L693
.L691:
	movl	$0, -84(%ebp)
.L693:
	movl	-84(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L694
	movl	-40(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L694:
.LBE103:
.LBB104:
	.loc 1 2132 0
	movl	-48(%ebp), %eax
	subl	$49, %eax
	movl	ctor_flavors.4931@GOTOFF(%ebx,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L696
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	jmp	.L698
.L696:
	movl	$0, -80(%ebp)
.L698:
	movl	-80(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L699
	movl	-36(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L699:
.LBE104:
.LBB105:
	.loc 1 2133 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L701
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L703
.L701:
	movl	$0, -76(%ebp)
.L703:
	movl	-76(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L705
	movl	-32(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L674:
.LBE105:
	.loc 1 2136 0
	cmpb	$68, -5(%ebp)
	jne	.L706
	.loc 1 2139 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2140 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2141 0
	cmpl	$47, -48(%ebp)
	jle	.L708
	cmpl	$50, -48(%ebp)
	jle	.L710
.L708:
	.loc 1 2142 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L710:
.LBB106:
	.loc 1 2143 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$126, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L711
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L713
.L711:
	movl	$0, -72(%ebp)
.L713:
	movl	-72(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L714
	movl	-28(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L714:
.LBE106:
.LBB107:
	.loc 1 2144 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L716
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L718
.L716:
	movl	$0, -68(%ebp)
.L718:
	movl	-68(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L719
	movl	-24(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L719:
.LBE107:
	.loc 1 2145 0
	movl	-48(%ebp), %eax
	movl	%eax, -100(%ebp)
	cmpl	$49, -100(%ebp)
	je	.L723
	cmpl	$50, -100(%ebp)
	je	.L724
	cmpl	$48, -100(%ebp)
	je	.L722
	jmp	.L721
.L722:
	.loc 1 2147 0
	movl	8(%ebp), %eax
	movl	$1, 40(%eax)
	.loc 1 2148 0
	jmp	.L721
.L723:
	.loc 1 2149 0
	movl	8(%ebp), %eax
	movl	$2, 40(%eax)
	.loc 1 2150 0
	jmp	.L721
.L724:
	.loc 1 2151 0
	movl	8(%ebp), %eax
	movl	$3, 40(%eax)
.L721:
	.loc 1 2155 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L705
.LBB108:
	.loc 1 2157 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L727
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L729
.L727:
	movl	$0, -64(%ebp)
.L729:
	movl	-64(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L730
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L730:
.LBE108:
.LBB109:
	.loc 1 2158 0
	movl	-48(%ebp), %eax
	subl	$48, %eax
	movl	dtor_flavors.4932@GOTOFF(%ebx,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L732
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L734
.L732:
	movl	$0, -60(%ebp)
.L734:
	movl	-60(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L735
	movl	-16(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L735:
.LBE109:
.LBB110:
	.loc 1 2159 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L737
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L739
.L737:
	movl	$0, -56(%ebp)
.L739:
	movl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L705
	movl	-12(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L706:
.LBE110:
	.loc 1 2163 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L679
.L705:
	.loc 1 2165 0
	movl	$0, -92(%ebp)
.L679:
	movl	-92(%ebp), %eax
	.loc 1 2166 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	demangle_ctor_dtor_name, .-demangle_ctor_dtor_name
	.section	.rodata
.LC136:
	.string	"::*"
	.text
	.type	demangle_type_ptr, @function
demangle_type_ptr:
.LFB44:
	.loc 1 2199 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$116, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2201 0
	movl	$1, -60(%ebp)
	.loc 1 2207 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -100(%ebp)
	cmpl	$17, -100(%ebp)
	ja	.L743
	movl	-100(%ebp), %eax
	sall	$2, %eax
	movl	.L749@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L749:
	.long	.L744@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L745@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L746@GOTOFF
	.long	.L743@GOTOFF
	.long	.L743@GOTOFF
	.long	.L747@GOTOFF
	.long	.L743@GOTOFF
	.long	.L748@GOTOFF
	.text
.L747:
	.loc 1 2211 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB111:
	.loc 1 2213 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type_ptr
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L750
	movl	-56(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L750:
.LBE111:
	.loc 1 2218 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$4, %eax
	je	.L753
.LBB112:
	.loc 1 2219 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$42, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L755
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L757
.L755:
	movl	$0, -92(%ebp)
.L757:
	movl	-92(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L753
	movl	-52(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L753:
.LBE112:
	.loc 1 2222 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2223 0
	jmp	.L759
.L748:
	.loc 1 2227 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB113:
	.loc 1 2229 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type_ptr
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L760
	movl	-48(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L760:
.LBE113:
.LBB114:
	.loc 1 2233 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$38, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L762
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L764
.L762:
	movl	$0, -88(%ebp)
.L764:
	movl	-88(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L765
	movl	-44(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L765:
.LBE114:
	.loc 1 2236 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2237 0
	jmp	.L759
.L746:
.LBB115:
	.loc 1 2245 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB116:
	.loc 1 2248 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L767
	movl	-36(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L767:
.LBE116:
.LBB117:
	.loc 1 2249 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L769
	movl	-32(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L769:
.LBE117:
	.loc 1 2250 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -40(%ebp)
	.loc 1 2252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$70, %al
	jne	.L771
	.loc 1 2258 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type_ptr
	movl	%eax, -64(%ebp)
	jmp	.L773
.L771:
	.loc 1 2259 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$65, %al
	jne	.L774
	.loc 1 2264 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_array_type
	movl	%eax, -64(%ebp)
	jmp	.L773
.L774:
	.loc 1 2269 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -64(%ebp)
	.loc 1 2271 0
	cmpl	$0, -64(%ebp)
	jne	.L776
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_previous_char_is_space
	testl	%eax, %eax
	jne	.L776
	.loc 1 2273 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L779
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L781
.L779:
	movl	$0, -84(%ebp)
.L781:
	movl	-84(%ebp), %eax
	movl	%eax, -64(%ebp)
.L776:
	.loc 1 2276 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L773:
	.loc 1 2280 0
	cmpl	$0, -64(%ebp)
	jne	.L782
	.loc 1 2281 0
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L784
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	jmp	.L786
.L784:
	movl	$0, -80(%ebp)
.L786:
	movl	-80(%ebp), %eax
	movl	%eax, -64(%ebp)
.L782:
	.loc 1 2282 0
	cmpl	$0, -64(%ebp)
	jne	.L787
	.loc 1 2283 0
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L789
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L791
.L789:
	movl	$0, -76(%ebp)
.L791:
	movl	-76(%ebp), %eax
	movl	%eax, -64(%ebp)
.L787:
	.loc 1 2288 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	leal	3(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2291 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB118:
	.loc 1 2293 0
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L759
	movl	-28(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L745:
.LBE118:
.LBE115:
	.loc 1 2301 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.LBB119:
	.loc 1 2304 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L794
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L796
.L794:
	movl	$0, -72(%ebp)
.L796:
	movl	-72(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L797
	movl	-24(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L797:
.LBE119:
.LBB120:
	.loc 1 2308 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_function_type
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L799
	movl	-20(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L799:
.LBE120:
	.loc 1 2315 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2316 0
	jmp	.L759
.L744:
.LBB121:
	.loc 1 2321 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_array_type
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L759
	movl	-16(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L743:
.LBE121:
.LBB122:
	.loc 1 2328 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L803
	movl	-12(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L803:
.LBE122:
	.loc 1 2331 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2335 0
	movl	$0, -60(%ebp)
.L759:
	.loc 1 2339 0
	cmpl	$0, -60(%ebp)
	je	.L805
.LBB123:
	.loc 1 2340 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L805
	movl	-8(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L752
.L805:
.LBE123:
	.loc 1 2342 0
	movl	$0, -96(%ebp)
.L752:
	movl	-96(%ebp), %eax
	.loc 1 2343 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	demangle_type_ptr, .-demangle_type_ptr
	.section	.rodata
	.align 4
.LC137:
	.string	"Non-pointer or -reference function type."
.LC138:
	.string	"complex "
.LC139:
	.string	"imaginary "
	.align 4
.LC140:
	.string	"Unexpected character in <type>."
	.text
	.type	demangle_type, @function
demangle_type:
.LFB45:
	.loc 1 2365 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$180, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2366 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_start
	movl	%eax, -120(%ebp)
	.loc 1 2367 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -6(%ebp)
	.loc 1 2369 0
	movl	$0, -124(%ebp)
	.loc 1 2370 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	current_template_arg_list
	movl	%eax, -116(%ebp)
	.loc 1 2376 0
	movl	$1, -112(%ebp)
	.loc 1 2382 0
	cmpb	$47, -6(%ebp)
	jbe	.L810
	cmpb	$57, -6(%ebp)
	jbe	.L812
.L810:
	cmpb	$78, -6(%ebp)
	je	.L812
	cmpb	$90, -6(%ebp)
	jne	.L814
.L812:
.LBB124:
	.loc 1 2383 0
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_class_enum_type
	movl	%eax, -108(%ebp)
	cmpl	$0, -108(%ebp)
	je	.L818
	movl	-108(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L814:
.LBE124:
	.loc 1 2386 0
	cmpb	$96, -6(%ebp)
	jbe	.L819
	cmpb	$122, -6(%ebp)
	ja	.L819
	cmpb	$114, -6(%ebp)
	je	.L819
.LBB125:
	.loc 1 2388 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_builtin_type
	movl	%eax, -104(%ebp)
	cmpl	$0, -104(%ebp)
	je	.L823
	movl	-104(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L823:
.LBE125:
	.loc 1 2390 0
	movl	$0, -112(%ebp)
	.loc 1 2386 0
	jmp	.L818
.L819:
	.loc 1 2393 0
	movzbl	-6(%ebp), %eax
	subl	$65, %eax
	movl	%eax, -164(%ebp)
	cmpl	$49, -164(%ebp)
	ja	.L825
	movl	-164(%ebp), %eax
	sall	$2, %eax
	movl	.L835@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L835:
	.long	.L826@GOTOFF
	.long	.L825@GOTOFF
	.long	.L827@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L828@GOTOFF
	.long	.L829@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L830@GOTOFF
	.long	.L825@GOTOFF
	.long	.L831@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L831@GOTOFF
	.long	.L825@GOTOFF
	.long	.L831@GOTOFF
	.long	.L832@GOTOFF
	.long	.L833@GOTOFF
	.long	.L834@GOTOFF
	.long	.L830@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L825@GOTOFF
	.long	.L830@GOTOFF
	.text
.L830:
.LBB126:
	.loc 1 2403 0
	movl	$24, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -96(%ebp)
	.loc 1 2404 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_get_caret
	movl	%eax, -92(%ebp)
	.loc 1 2406 0
	cmpl	$0, -96(%ebp)
	jne	.L836
	.loc 1 2407 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L836:
	.loc 1 2410 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_CV_qualifiers
	.loc 1 2413 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L838
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -156(%ebp)
	jmp	.L840
.L838:
	movl	$0, -156(%ebp)
.L840:
	movl	-156(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2414 0
	movl	-96(%ebp), %eax
	movl	4(%eax), %eax
	negl	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_shift_caret
	.loc 1 2416 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB127:
	.loc 1 2417 0
	movl	-100(%ebp), %eax
	movl	%eax, -88(%ebp)
	cmpl	$0, -88(%ebp)
	je	.L841
	movl	-88(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L841:
.LBE127:
.LBB128:
	.loc 1 2419 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L843
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
	jmp	.L845
.L843:
	movl	$0, -152(%ebp)
.L845:
	movl	-152(%ebp), %eax
	movl	%eax, -84(%ebp)
	cmpl	$0, -84(%ebp)
	je	.L846
	movl	-84(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L846:
.LBE128:
	.loc 1 2420 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_shift_caret
.LBB129:
	.loc 1 2424 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -80(%ebp)
	cmpl	$0, -80(%ebp)
	je	.L848
	movl	-80(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L848:
.LBE129:
	.loc 1 2427 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_set_caret
	.loc 1 2429 0
	jmp	.L818
.L828:
.LBE126:
	.loc 1 2432 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L826:
.LBB130:
	.loc 1 2435 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_array_type
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L818
	movl	-76(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L833:
.LBE130:
.LBB131:
	.loc 1 2442 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_param
	movl	%eax, -72(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L852
	movl	-72(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L852:
.LBE131:
	.loc 1 2447 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	jne	.L818
.LBB132:
	.loc 1 2452 0
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L856
	movl	-68(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L856:
.LBE132:
.LBB133:
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_args
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L818
	movl	-64(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L832:
.LBE133:
	.loc 1 2468 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L859
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -145(%ebp)
	jmp	.L861
.L859:
	movb	$0, -145(%ebp)
.L861:
	movzbl	-145(%ebp), %eax
	movb	%al, -5(%ebp)
	.loc 1 2469 0
	cmpb	$47, -5(%ebp)
	jbe	.L862
	cmpb	$57, -5(%ebp)
	jbe	.L864
.L862:
	cmpb	$95, -5(%ebp)
	jne	.L865
.L864:
.LBB134:
	.loc 1 2471 0
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_substitution
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L866
	movl	-60(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L866:
.LBE134:
	.loc 1 2476 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	jne	.L868
.LBB135:
	.loc 1 2477 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_args
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L818
	movl	-56(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L868:
.LBE135:
	.loc 1 2482 0
	movl	$0, -112(%ebp)
	.loc 1 2469 0
	jmp	.L818
.L865:
.LBB136:
	.loc 1 2500 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.LBB137:
	.loc 1 2502 0
	leal	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_class_enum_type
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L874
	movl	-48(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L874:
.LBE137:
	.loc 1 2507 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	.L818
	.loc 1 2508 0
	movl	$0, -112(%ebp)
	.loc 1 2511 0
	jmp	.L818
.L831:
.LBE136:
.LBB138:
	.loc 1 2516 0
	movl	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type_ptr
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L877
	movl	-44(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L877:
.LBE138:
	.loc 1 2519 0
	movl	$0, -112(%ebp)
	.loc 1 2520 0
	jmp	.L818
.L827:
.LBB139:
	.loc 1 2524 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L879
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -144(%ebp)
	jmp	.L881
.L879:
	movl	$0, -144(%ebp)
.L881:
	movl	-144(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L882
	movl	-40(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L882:
.LBE139:
	.loc 1 2525 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB140:
	.loc 1 2526 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L818
	movl	-36(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L829:
.LBE140:
.LBB141:
	.loc 1 2531 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L886
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -140(%ebp)
	jmp	.L888
.L886:
	movl	$0, -140(%ebp)
.L888:
	movl	-140(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L889
	movl	-32(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L889:
.LBE141:
	.loc 1 2532 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB142:
	.loc 1 2533 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L818
	movl	-28(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L834:
.LBE142:
	.loc 1 2538 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB143:
	.loc 1 2539 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_source_name
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L893
	movl	-24(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L893:
.LBE143:
.LBB144:
	.loc 1 2540 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$32, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L895
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	jmp	.L897
.L895:
	movl	$0, -136(%ebp)
.L897:
	movl	-136(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L898
	movl	-20(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L898:
.LBE144:
.LBB145:
	.loc 1 2541 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L818
	movl	-16(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L825:
.LBE145:
	.loc 1 2545 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L818:
	.loc 1 2548 0
	cmpl	$0, -112(%ebp)
	je	.L902
.LBB146:
	.loc 1 2553 0
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_add
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L902
	movl	-12(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L817
.L902:
.LBE146:
	.loc 1 2557 0
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_to_template_arg_list
	.loc 1 2559 0
	movl	$0, -160(%ebp)
.L817:
	movl	-160(%ebp), %eax
	.loc 1 2560 0
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	demangle_type, .-demangle_type
	.section	.rodata
.LC141:
	.string	"signed char"
.LC142:
	.string	"bool"
.LC143:
	.string	"char"
.LC144:
	.string	"double"
.LC145:
	.string	"long double"
.LC146:
	.string	"float"
.LC147:
	.string	"__float128"
.LC148:
	.string	"unsigned char"
.LC149:
	.string	"int"
.LC150:
	.string	"unsigned"
.LC151:
	.string	"long"
.LC152:
	.string	"unsigned long"
.LC153:
	.string	"__int128"
.LC154:
	.string	"unsigned __int128"
.LC155:
	.string	"short"
.LC156:
	.string	"unsigned short"
.LC157:
	.string	"void"
.LC158:
	.string	"wchar_t"
.LC159:
	.string	"long long"
.LC160:
	.string	"unsigned long long"
.LC161:
	.string	"..."
	.section	.data.rel.ro.local
	.align 32
	.type	builtin_type_names, @object
	.size	builtin_type_names, 104
builtin_type_names:
	.long	.LC141
	.long	.LC142
	.long	.LC143
	.long	.LC144
	.long	.LC145
	.long	.LC146
	.long	.LC147
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	0
	.long	.LC151
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	0
	.long	0
	.long	0
	.long	.LC155
	.long	.LC156
	.long	0
	.long	.LC157
	.long	.LC158
	.long	.LC159
	.long	.LC160
	.long	.LC161
	.section	.rodata
.LC162:
	.string	"boolean"
.LC163:
	.string	"byte"
	.section	.data.rel.ro.local
	.align 32
	.type	java_builtin_type_names, @object
	.size	java_builtin_type_names, 104
java_builtin_type_names:
	.long	.LC141
	.long	.LC162
	.long	.LC163
	.long	.LC144
	.long	.LC145
	.long	.LC146
	.long	.LC147
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	0
	.long	.LC151
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	0
	.long	0
	.long	0
	.long	.LC155
	.long	.LC156
	.long	0
	.long	.LC157
	.long	.LC143
	.long	.LC151
	.long	.LC160
	.long	.LC161
	.section	.rodata
	.align 4
.LC164:
	.string	"Unrecognized <builtin-type> code."
	.align 4
.LC165:
	.string	"Non-alphabetic <builtin-type> code."
	.text
	.type	demangle_builtin_type, @function
demangle_builtin_type:
.LFB46:
	.loc 1 2655 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$36, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2657 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 2661 0
	cmpb	$117, -5(%ebp)
	jne	.L907
	.loc 1 2663 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB147:
	.loc 1 2664 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_source_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L909
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L911
.L909:
.LBE147:
	.loc 1 2665 0
	movl	$0, -28(%ebp)
	jmp	.L911
.L907:
	.loc 1 2667 0
	cmpb	$96, -5(%ebp)
	jbe	.L912
	cmpb	$122, -5(%ebp)
	ja	.L912
.LBB148:
	.loc 1 2671 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$4, %eax
	jne	.L915
	.loc 1 2672 0
	movzbl	-5(%ebp), %eax
	subl	$97, %eax
	movl	java_builtin_type_names@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L917
.L915:
	.loc 1 2674 0
	movzbl	-5(%ebp), %eax
	subl	$97, %eax
	movl	builtin_type_names@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
.L917:
	.loc 1 2675 0
	cmpl	$0, -16(%ebp)
	jne	.L918
	.loc 1 2676 0
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L911
.L918:
.LBB149:
	.loc 1 2678 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L920
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L922
.L920:
	movl	$0, -24(%ebp)
.L922:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L923
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L911
.L923:
.LBE149:
	.loc 1 2679 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2680 0
	movl	$0, -28(%ebp)
	jmp	.L911
.L912:
.LBE148:
	.loc 1 2683 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L911:
	movl	-28(%ebp), %eax
	.loc 1 2684 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	demangle_builtin_type, .-demangle_builtin_type
	.section	.rodata
.LC166:
	.string	"restrict"
.LC167:
	.string	"volatile"
.LC168:
	.string	"const"
	.text
	.type	demangle_CV_qualifiers, @function
demangle_CV_qualifiers:
.LFB47:
	.loc 1 2694 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$20, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L927:
	.loc 1 2699 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$86, -12(%ebp)
	je	.L930
	cmpl	$114, -12(%ebp)
	je	.L931
	cmpl	$75, -12(%ebp)
	je	.L929
	jmp	.L928
.L931:
	.loc 1 2702 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	.L932
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L932
	movl	$32, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L932
	.loc 1 2703 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L932:
	.loc 1 2704 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	testl	%eax, %eax
	jne	.L939
	.loc 1 2705 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L930:
	.loc 1 2709 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	.L940
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L940
	movl	$32, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L940
	.loc 1 2710 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L940:
	.loc 1 2711 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	testl	%eax, %eax
	jne	.L939
	.loc 1 2712 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L929:
	.loc 1 2716 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	.L946
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L946
	movl	$32, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L946
	.loc 1 2717 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L946:
	.loc 1 2718 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	testl	%eax, %eax
	jne	.L939
	.loc 1 2719 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L928:
	.loc 1 2723 0
	movl	$0, -8(%ebp)
	jmp	.L936
.L939:
	.loc 1 2726 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2727 0
	jmp	.L927
.L936:
	movl	-8(%ebp), %eax
	.loc 1 2728 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	demangle_CV_qualifiers, .-demangle_CV_qualifiers
	.section	.rodata
.LC169:
	.string	" [extern \"C\"] "
	.text
	.type	demangle_function_type, @function
demangle_function_type:
.LFB48:
	.loc 1 2742 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$36, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB150:
	.loc 1 2744 0
	movl	$70, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L954
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L956
.L954:
.LBE150:
	.loc 1 2745 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$89, %al
	jne	.L957
	.loc 1 2748 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L959
.LBB151:
	.loc 1 2749 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L961
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L963
.L961:
	movl	$0, -24(%ebp)
.L963:
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L959
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L956
.L959:
.LBE151:
	.loc 1 2750 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L957:
.LBB152:
	.loc 1 2752 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_bare_function_type
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L965
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L956
.L965:
.LBE152:
.LBB153:
	.loc 1 2753 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L967
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L956
.L967:
.LBE153:
	.loc 1 2754 0
	movl	$0, -28(%ebp)
.L956:
	movl	-28(%ebp), %eax
	.loc 1 2755 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	demangle_function_type, .-demangle_function_type
	.section	.rodata
.LC170:
	.string	", "
.LC171:
	.string	"Missing function return type."
.LC172:
	.string	"Missing function parameter."
	.text
	.type	demangle_bare_function_type, @function
demangle_bare_function_type:
.LFB49:
	.loc 1 2768 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%ebx
.LCFI159:
	subl	$84, %esp
.LCFI160:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2772 0
	cmpl	$0, 12(%ebp)
	jne	.L971
	movl	$0, -72(%ebp)
	jmp	.L973
.L971:
	movl	$-1, -72(%ebp)
.L973:
	movl	-72(%ebp), %eax
	movl	%eax, -44(%ebp)
.LBB154:
	.loc 1 2776 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$40, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L974
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L976
.L974:
	movl	$0, -68(%ebp)
.L976:
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L980
	movl	-40(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L981:
.LBE154:
	.loc 1 2779 0
	cmpl	$-1, -44(%ebp)
	jne	.L982
.LBB155:
	.loc 1 2783 0
	movl	$0, -32(%ebp)
.LBB156:
	.loc 1 2786 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L984
	movl	-28(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L984:
.LBE156:
.LBB157:
	.loc 1 2787 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L986
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L986:
.LBE157:
	.loc 1 2788 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -36(%ebp)
	.loc 1 2792 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	.L988
	movl	-36(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L988
	movl	$32, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_char@PLT
	testl	%eax, %eax
	jne	.L988
	.loc 1 2793 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L988:
	.loc 1 2794 0
	cmpl	$0, -32(%ebp)
	jne	.L992
	.loc 1 2796 0
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L994
	.loc 1 2798 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L992
.L994:
	.loc 1 2800 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L992:
	.loc 1 2803 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB158:
	.loc 1 2804 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L998
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L982:
.LBE158:
.LBE155:
	.loc 1 2811 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$118, %al
	jne	.L999
	.loc 1 2813 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L998
.L999:
	.loc 1 2817 0
	cmpl	$0, -44(%ebp)
	jle	.L1001
.LBB159:
	.loc 1 2818 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1003
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1005
.L1003:
	movl	$0, -60(%ebp)
.L1005:
	movl	-60(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1001
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L1001:
.LBE159:
.LBB160:
	.loc 1 2820 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L998
	movl	-12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L998:
.LBE160:
	.loc 1 2824 0
	addl	$1, -44(%ebp)
.L980:
	.loc 1 2777 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1008
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L981
.L1008:
.LBB161:
	.loc 1 2826 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$41, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1010
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1012
.L1010:
	movl	$0, -56(%ebp)
.L1012:
	movl	-56(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1013
	movl	-8(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L1013:
.LBE161:
	.loc 1 2831 0
	cmpl	$-1, -44(%ebp)
	jne	.L1015
	.loc 1 2832 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L1015:
	.loc 1 2833 0
	cmpl	$0, -44(%ebp)
	jne	.L1017
	.loc 1 2834 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L979
.L1017:
	.loc 1 2836 0
	movl	$0, -64(%ebp)
.L979:
	movl	-64(%ebp), %eax
	.loc 1 2837 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	demangle_bare_function_type, .-demangle_bare_function_type
	.type	demangle_class_enum_type, @function
demangle_class_enum_type:
.LFB50:
	.loc 1 2848 0
	pushl	%ebp
.LCFI161:
	movl	%esp, %ebp
.LCFI162:
	subl	$40, %esp
.LCFI163:
.LBB162:
	.loc 1 2851 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_name
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L1021
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1023
.L1021:
.LBE162:
	.loc 1 2852 0
	movl	$0, -20(%ebp)
.L1023:
	movl	-20(%ebp), %eax
	.loc 1 2853 0
	leave
	ret
.LFE50:
	.size	demangle_class_enum_type, .-demangle_class_enum_type
	.section	.rodata
.LC173:
	.string	" () "
	.text
	.type	demangle_array_type, @function
demangle_array_type:
.LFB51:
	.loc 1 2876 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$68, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2877 0
	movl	$0, -32(%ebp)
	.loc 1 2878 0
	movl	$0, -28(%ebp)
.LBB163:
	.loc 1 2883 0
	movl	$65, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1026
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1028
.L1026:
.LBE163:
	.loc 1 2886 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 2887 0
	cmpb	$95, -5(%ebp)
	je	.L1029
	.loc 1 2890 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jbe	.L1031
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	ja	.L1031
	.loc 1 2893 0
	movl	$10, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2894 0
	cmpl	$0, -28(%ebp)
	jne	.L1034
	.loc 1 2895 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1028
.L1034:
	.loc 1 2896 0
	movl	$0, 12(%esp)
	movl	$10, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	movl	%eax, -32(%ebp)
	.loc 1 2890 0
	jmp	.L1029
.L1031:
.LBB164:
	.loc 1 2903 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1036
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1028
.L1036:
.LBE164:
.LBB165:
	.loc 1 2904 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1038
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1028
.L1038:
.LBE165:
	.loc 1 2905 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -28(%ebp)
.L1029:
	.loc 1 2911 0
	cmpl	$0, -32(%ebp)
	jne	.L1040
	.loc 1 2912 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -32(%ebp)
.L1040:
	.loc 1 2913 0
	cmpl	$0, -32(%ebp)
	jne	.L1042
	.loc 1 2914 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -32(%ebp)
.L1042:
	.loc 1 2916 0
	cmpl	$0, 12(%ebp)
	je	.L1044
	.loc 1 2921 0
	cmpl	$0, -32(%ebp)
	jne	.L1046
	.loc 1 2922 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1048
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1050
.L1048:
	movl	$0, -52(%ebp)
.L1050:
	movl	-52(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1046:
	.loc 1 2924 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	leal	-2(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1044:
	.loc 1 2928 0
	cmpl	$0, -32(%ebp)
	jne	.L1051
	.loc 1 2929 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$91, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1053
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1055
.L1053:
	movl	$0, -48(%ebp)
.L1055:
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1051:
	.loc 1 2930 0
	cmpl	$0, -32(%ebp)
	jne	.L1056
	cmpl	$0, -28(%ebp)
	je	.L1056
	.loc 1 2931 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1059
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1061
.L1059:
	movl	$0, -44(%ebp)
.L1061:
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1056:
	.loc 1 2932 0
	cmpl	$0, -32(%ebp)
	jne	.L1062
	.loc 1 2933 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1064
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1066
.L1064:
	movl	$0, -40(%ebp)
.L1066:
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1062:
	.loc 1 2934 0
	cmpl	$0, -28(%ebp)
	je	.L1067
	.loc 1 2935 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.L1067:
.LBB166:
	.loc 1 2937 0
	movl	-32(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1069
	movl	-12(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1028
.L1069:
.LBE166:
	.loc 1 2939 0
	movl	$0, -56(%ebp)
.L1028:
	movl	-56(%ebp), %eax
	.loc 1 2940 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	demangle_array_type, .-demangle_array_type
	.section	.rodata
	.align 4
.LC174:
	.string	"Template parameter outside of template."
	.align 4
.LC175:
	.string	"Template parameter number out of bounds."
	.text
	.type	demangle_template_param, @function
demangle_template_param:
.LFB52:
	.loc 1 2950 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$68, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2952 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	current_template_arg_list
	movl	%eax, -28(%ebp)
	.loc 1 2959 0
	cmpl	$0, -28(%ebp)
	jne	.L1073
	.loc 1 2960 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1073:
.LBB167:
	.loc 1 2962 0
	movl	$84, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1076
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1076:
.LBE167:
	.loc 1 2963 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1078
	.loc 1 2964 0
	movl	$0, -32(%ebp)
	jmp	.L1080
.L1078:
.LBB168:
	.loc 1 2967 0
	movl	$0, 12(%esp)
	movl	$10, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1081
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1081:
.LBE168:
	.loc 1 2968 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
.L1080:
.LBB169:
	.loc 1 2970 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1083
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1083:
.LBE169:
	.loc 1 2972 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	template_arg_list_get_arg
	movl	%eax, -24(%ebp)
	.loc 1 2973 0
	cmpl	$0, -24(%ebp)
	jne	.L1085
	.loc 1 2976 0
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1085:
.LBB170:
	.loc 1 2977 0
	movl	-24(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1087
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1089
.L1087:
	movl	$0, -40(%ebp)
.L1089:
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1090
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1075
.L1090:
.LBE170:
	.loc 1 2979 0
	movl	$0, -44(%ebp)
.L1075:
	movl	-44(%ebp), %eax
	.loc 1 2980 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	demangle_template_param, .-demangle_template_param
	.type	demangle_template_args, @function
demangle_template_args:
.LFB53:
	.loc 1 2989 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$84, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2990 0
	movl	$1, -48(%ebp)
	.loc 1 2992 0
	call	template_arg_list_new
	movl	%eax, -40(%ebp)
	.loc 1 2994 0
	cmpl	$0, -40(%ebp)
	jne	.L1094
	.loc 1 2995 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1094:
	.loc 1 2998 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2999 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 3003 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L1097
	.loc 1 3004 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1097:
.LBB171:
	.loc 1 3006 0
	movl	$73, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1099
	movl	-36(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1099:
.LBE171:
.LBB172:
	.loc 1 3007 0
	movl	$60, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_add_separated_char
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1101
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1101:
.LBE172:
.LBB173:
	.loc 1 3012 0
	cmpl	$0, -48(%ebp)
	je	.L1103
	.loc 1 3013 0
	movl	$0, -48(%ebp)
	jmp	.L1105
.L1103:
.LBB174:
	.loc 1 3015 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1106
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1108
.L1106:
	movl	$0, -60(%ebp)
.L1108:
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1105
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1105:
.LBE174:
.LBB175:
	.loc 1 3018 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1110
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1110:
.LBE175:
.LBB176:
	.loc 1 3019 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_arg
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1112
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1112:
.LBE176:
	.loc 1 3020 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -28(%ebp)
.LBB177:
	.loc 1 3023 0
	movl	-28(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1114
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1116
.L1114:
	movl	$0, -56(%ebp)
.L1116:
	movl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1117
	movl	-12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1117:
.LBE177:
	.loc 1 3026 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	template_arg_list_add_arg
.LBE173:
	.loc 1 3028 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L1101
.LBB178:
	.loc 1 3030 0
	movl	$62, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_add_separated_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1120
	movl	-8(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1096
.L1120:
.LBE178:
	.loc 1 3033 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3036 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 3037 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 3042 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_arg_list
	.loc 1 3044 0
	movl	$0, -64(%ebp)
.L1096:
	movl	-64(%ebp), %eax
	.loc 1 3045 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	demangle_template_args, .-demangle_template_args
	.section	.rodata
.LC176:
	.string	"ibi    iii ll     ii  i  "
	.section	.data.rel.ro.local
	.align 4
	.type	code_map.6062, @object
	.size	code_map.6062, 4
code_map.6062:
	.long	.LC176
	.section	.rodata
.LC177:
	.string	"Unimplemented."
.LC178:
	.string	"false"
.LC179:
	.string	"true"
.LC180:
	.string	"Unrecognized bool constant."
	.text
	.type	demangle_literal, @function
demangle_literal:
.LFB54:
	.loc 1 3059 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$100, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3060 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -7(%ebp)
	.loc 1 3066 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1124
	cmpb	$96, -7(%ebp)
	jbe	.L1124
	cmpb	$122, -7(%ebp)
	ja	.L1124
.LBB179:
	.loc 1 3084 0
	movzbl	-7(%ebp), %eax
	movl	%eax, %edx
	movl	code_map.6062@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$97, %eax
	movzbl	(%eax), %eax
	movb	%al, -6(%ebp)
	.loc 1 3086 0
	cmpb	$117, -6(%ebp)
	jne	.L1128
	.loc 1 3087 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1128:
	.loc 1 3088 0
	cmpb	$98, -6(%ebp)
	jne	.L1131
.LBB180:
	.loc 1 3094 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3097 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 3098 0
	cmpb	$48, -5(%ebp)
	jne	.L1133
.LBB181:
	.loc 1 3099 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1135
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1137
.L1135:
	movl	$0, -80(%ebp)
.L1137:
	movl	-80(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1140
	movl	-36(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1133:
.LBE181:
	.loc 1 3100 0
	cmpb	$49, -5(%ebp)
	jne	.L1141
.LBB182:
	.loc 1 3101 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1143
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1145
.L1143:
	movl	$0, -76(%ebp)
.L1145:
	movl	-76(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1140
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1141:
.LBE182:
	.loc 1 3103 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1140:
	.loc 1 3105 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3106 0
	movl	$0, -84(%ebp)
	jmp	.L1130
.L1131:
.LBE180:
	.loc 1 3108 0
	cmpb	$105, -6(%ebp)
	je	.L1148
	cmpb	$108, -6(%ebp)
	jne	.L1124
.L1148:
	.loc 1 3113 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3116 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3117 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	movl	%eax, -40(%ebp)
	.loc 1 3118 0
	cmpl	$0, -40(%ebp)
	jne	.L1150
	.loc 1 3119 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1152
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1154
.L1152:
	movl	$0, -72(%ebp)
.L1154:
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1150:
	.loc 1 3121 0
	cmpb	$108, -6(%ebp)
	jne	.L1155
	cmpl	$0, -40(%ebp)
	jne	.L1155
	.loc 1 3122 0
	movzbl	-6(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1158
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1160
.L1158:
	movl	$0, -68(%ebp)
.L1160:
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1155:
	.loc 1 3123 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB183:
	.loc 1 3125 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1161
	movl	-28(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1161:
.LBE183:
	.loc 1 3126 0
	movl	$0, -84(%ebp)
	jmp	.L1130
.L1124:
.LBE179:
.LBB184:
	.loc 1 3132 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$40, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1163
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1165
.L1163:
	movl	$0, -64(%ebp)
.L1165:
	movl	-64(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1166
	movl	-24(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1166:
.LBE184:
.LBB185:
	.loc 1 3133 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1168
	movl	-20(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1168:
.LBE185:
.LBB186:
	.loc 1 3134 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$41, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1170
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1172
.L1170:
	movl	$0, -60(%ebp)
.L1172:
	movl	-60(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1173
	movl	-16(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1173:
.LBE186:
	.loc 1 3136 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3137 0
	cmpl	$0, -44(%ebp)
	jne	.L1175
	.loc 1 3138 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1175:
	.loc 1 3140 0
	movl	$1, 12(%esp)
	movl	$10, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number_literally
	movl	%eax, -40(%ebp)
	.loc 1 3141 0
	cmpl	$0, -40(%ebp)
	jne	.L1177
	.loc 1 3142 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1179
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1181
.L1179:
	movl	$0, -56(%ebp)
.L1181:
	movl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
.L1177:
	.loc 1 3143 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB187:
	.loc 1 3144 0
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1182
	movl	-12(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1130
.L1182:
.LBE187:
	.loc 1 3146 0
	movl	$0, -84(%ebp)
.L1130:
	movl	-84(%ebp), %eax
	.loc 1 3147 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	demangle_literal, .-demangle_literal
	.type	demangle_template_arg, @function
demangle_template_arg:
.LFB55:
	.loc 1 3159 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	subl	$56, %esp
.LCFI182:
	.loc 1 3162 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$76, -40(%ebp)
	je	.L1187
	cmpl	$88, -40(%ebp)
	je	.L1188
	jmp	.L1186
.L1187:
	.loc 1 3165 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3167 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jne	.L1189
	.loc 1 3170 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB188:
	.loc 1 3172 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1194
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1189:
.LBE188:
.LBB189:
	.loc 1 3175 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_literal
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1194
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1194:
.LBE189:
.LBB190:
	.loc 1 3176 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1198
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1188:
.LBE190:
	.loc 1 3181 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB191:
	.loc 1 3182 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1199
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1199:
.LBE191:
.LBB192:
	.loc 1 3183 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1198
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1186:
.LBE192:
.LBB193:
	.loc 1 3187 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L1198
	movl	-4(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1193
.L1198:
.LBE193:
	.loc 1 3191 0
	movl	$0, -36(%ebp)
.L1193:
	movl	-36(%ebp), %eax
	.loc 1 3192 0
	leave
	ret
.LFE55:
	.size	demangle_template_arg, .-demangle_template_arg
	.section	.rodata
.LC181:
	.string	":("
	.text
	.type	demangle_expression, @function
demangle_expression:
.LFB56:
	.loc 1 3204 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$132, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3205 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 3209 0
	cmpb	$76, -5(%ebp)
	je	.L1206
	cmpb	$84, -5(%ebp)
	jne	.L1208
.L1206:
.LBB194:
	.loc 1 3210 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expr_primary
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L1212
	movl	-64(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1208:
.LBE194:
	.loc 1 3211 0
	cmpb	$115, -5(%ebp)
	jne	.L1213
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1213
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$114, %al
	jne	.L1213
.LBB195:
	.loc 1 3212 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_scope_expression
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L1212
	movl	-60(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1213:
.LBE195:
.LBB196:
	.loc 1 3218 0
	movl	$0, -56(%ebp)
.LBB197:
	.loc 1 3224 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L1219
	movl	-48(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1219:
.LBE197:
.LBB198:
	.loc 1 3225 0
	leal	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_operator_name
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L1221
	movl	-44(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1221:
.LBE198:
	.loc 1 3227 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -52(%ebp)
	.loc 1 3230 0
	movl	-68(%ebp), %eax
	cmpl	$1, %eax
	jle	.L1223
	.loc 1 3232 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$40, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1225
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1227
.L1225:
	movl	$0, -112(%ebp)
.L1227:
	movl	-112(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3233 0
	cmpl	$0, -56(%ebp)
	jne	.L1228
	.loc 1 3234 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -56(%ebp)
.L1228:
	.loc 1 3235 0
	cmpl	$0, -56(%ebp)
	jne	.L1223
	.loc 1 3236 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$41, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1231
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1233
.L1231:
	movl	$0, -108(%ebp)
.L1233:
	movl	-108(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1223:
	.loc 1 3240 0
	cmpl	$0, -56(%ebp)
	jne	.L1234
	.loc 1 3241 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1236
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1238
.L1236:
	movl	$0, -104(%ebp)
.L1238:
	movl	-104(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1234:
	.loc 1 3242 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.LBB199:
	.loc 1 3243 0
	movl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1239
	movl	-40(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1239:
.LBE199:
.LBB200:
	.loc 1 3246 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$40, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1241
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1243
.L1241:
	movl	$0, -100(%ebp)
.L1243:
	movl	-100(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1244
	movl	-36(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1244:
.LBE200:
	.loc 1 3247 0
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	.L1246
.LBB201:
	.loc 1 3248 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1250
	movl	-32(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1246:
.LBE201:
.LBB202:
	.loc 1 3250 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1250
	movl	-28(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1250:
.LBE202:
.LBB203:
	.loc 1 3251 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$41, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1252
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1254
.L1252:
	movl	$0, -96(%ebp)
.L1254:
	movl	-96(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1255
	movl	-24(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1255:
.LBE203:
	.loc 1 3254 0
	movl	-68(%ebp), %eax
	cmpl	$3, %eax
	jne	.L1212
.LBB204:
	.loc 1 3256 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1258
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1260
.L1258:
	movl	$0, -92(%ebp)
.L1260:
	movl	-92(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1261
	movl	-20(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1261:
.LBE204:
.LBB205:
	.loc 1 3257 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_expression
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1263
	movl	-16(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1263:
.LBE205:
.LBB206:
	.loc 1 3258 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$41, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1265
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1267
.L1265:
	movl	$0, -88(%ebp)
.L1267:
	movl	-88(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1212
	movl	-12(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1211
.L1212:
.LBE206:
.LBE196:
	.loc 1 3262 0
	movl	$0, -116(%ebp)
.L1211:
	movl	-116(%ebp), %eax
	.loc 1 3263 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	demangle_expression, .-demangle_expression
	.type	demangle_scope_expression, @function
demangle_scope_expression:
.LFB57:
	.loc 1 3273 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$52, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB207:
	.loc 1 3274 0
	movl	$115, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1271
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1273
.L1271:
.LBE207:
.LBB208:
	.loc 1 3275 0
	movl	$114, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1274
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1273
.L1274:
.LBE208:
.LBB209:
	.loc 1 3276 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1276
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1273
.L1276:
.LBE209:
.LBB210:
	.loc 1 3277 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1278
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1280
.L1278:
	movl	$0, -40(%ebp)
.L1280:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1281
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1273
.L1281:
.LBE210:
.LBB211:
	.loc 1 3278 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1283
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1273
.L1283:
.LBE211:
	.loc 1 3279 0
	movl	$0, -44(%ebp)
.L1273:
	movl	-44(%ebp), %eax
	.loc 1 3280 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	demangle_scope_expression, .-demangle_scope_expression
	.type	demangle_expr_primary, @function
demangle_expr_primary:
.LFB58:
	.loc 1 3291 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%ebx
.LCFI193:
	subl	$52, %esp
.LCFI194:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3292 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 3296 0
	cmpb	$84, -5(%ebp)
	jne	.L1287
.LBB212:
	.loc 1 3297 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_template_param
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1292
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1287:
.LBE212:
	.loc 1 3298 0
	cmpb	$76, -5(%ebp)
	jne	.L1293
	.loc 1 3301 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3302 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 3304 0
	cmpb	$95, -5(%ebp)
	jne	.L1295
.LBB213:
	.loc 1 3305 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_mangled_name
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1299
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1295:
.LBE213:
.LBB214:
	.loc 1 3307 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_literal
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1299
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1299:
.LBE214:
.LBB215:
	.loc 1 3309 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1292
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1293:
.LBE215:
	.loc 1 3312 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1291
.L1292:
	.loc 1 3314 0
	movl	$0, -40(%ebp)
.L1291:
	movl	-40(%ebp), %eax
	.loc 1 3315 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	demangle_expr_primary, .-demangle_expr_primary
	.section	.rodata
.LC182:
	.string	"std"
.LC183:
	.string	"std::allocator"
.LC184:
	.string	"allocator"
.LC185:
	.string	"std::basic_string"
.LC186:
	.string	"basic_string"
.LC187:
	.string	"std::string"
.LC188:
	.string	"string"
	.align 4
.LC189:
	.string	"std::basic_string<char, std::char_traits<char>, std::allocator<char> >"
.LC190:
	.string	"std::istream"
.LC191:
	.string	"istream"
	.align 4
.LC192:
	.string	"std::basic_istream<char, std::char_traits<char> >"
.LC193:
	.string	"basic_istream"
.LC194:
	.string	"std::ostream"
.LC195:
	.string	"ostream"
	.align 4
.LC196:
	.string	"std::basic_ostream<char, std::char_traits<char> >"
.LC197:
	.string	"basic_ostream"
.LC198:
	.string	"std::iostream"
.LC199:
	.string	"iostream"
	.align 4
.LC200:
	.string	"std::basic_iostream<char, std::char_traits<char> >"
.LC201:
	.string	"basic_iostream"
.LC202:
	.string	"Unrecognized <substitution>."
	.align 4
.LC203:
	.string	"Substitution number out of range."
	.text
	.type	demangle_substitution, @function
demangle_substitution:
.LFB59:
	.loc 1 3341 0
	pushl	%ebp
.LCFI195:
	movl	%esp, %ebp
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$164, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB216:
	.loc 1 3348 0
	movl	$83, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L1305
	movl	-68(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1305:
.LBE216:
	.loc 1 3352 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	.loc 1 3353 0
	cmpl	$95, -76(%ebp)
	jne	.L1308
	.loc 1 3354 0
	movl	$-1, -80(%ebp)
	jmp	.L1310
.L1308:
	.loc 1 3358 0
	movl	-76(%ebp), %eax
	cmpb	$47, %al
	jbe	.L1311
	movl	-76(%ebp), %eax
	cmpb	$57, %al
	jbe	.L1313
.L1311:
	cmpl	$64, -76(%ebp)
	jle	.L1314
	cmpl	$90, -76(%ebp)
	jg	.L1314
.L1313:
.LBB217:
	.loc 1 3360 0
	movl	$0, 12(%esp)
	movl	$36, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L1310
	movl	-64(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1314:
.LBE217:
.LBB218:
	.loc 1 3363 0
	movl	$0, -60(%ebp)
	.loc 1 3365 0
	movl	-76(%ebp), %eax
	subl	$97, %eax
	movl	%eax, -140(%ebp)
	cmpl	$19, -140(%ebp)
	ja	.L1318
	movl	-140(%ebp), %eax
	sall	$2, %eax
	movl	.L1326@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1326:
	.long	.L1319@GOTOFF
	.long	.L1320@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1321@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1322@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1323@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1318@GOTOFF
	.long	.L1324@GOTOFF
	.long	.L1325@GOTOFF
	.text
.L1325:
.LBB219:
	.loc 1 3368 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1327
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	jmp	.L1329
.L1327:
	movl	$0, -132(%ebp)
.L1329:
	movl	-132(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L1332
	movl	-56(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1319:
.LBE219:
.LBB220:
	.loc 1 3372 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1333
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1335
.L1333:
	movl	$0, -128(%ebp)
.L1335:
	movl	-128(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	je	.L1336
	movl	-52(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1336:
.LBE220:
	.loc 1 3373 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3374 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3375 0
	jmp	.L1332
.L1320:
.LBB221:
	.loc 1 3378 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1338
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
	jmp	.L1340
.L1338:
	movl	$0, -124(%ebp)
.L1340:
	movl	-124(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L1341
	movl	-48(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1341:
.LBE221:
	.loc 1 3379 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3380 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3381 0
	jmp	.L1332
.L1324:
	.loc 1 3384 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1343
.LBB222:
	.loc 1 3386 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1345
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -120(%ebp)
	jmp	.L1347
.L1345:
	movl	$0, -120(%ebp)
.L1347:
	movl	-120(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L1348
	movl	-44(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1348:
.LBE222:
	.loc 1 3387 0
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1350
.L1343:
.LBB223:
	.loc 1 3391 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1351
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -116(%ebp)
	jmp	.L1353
.L1351:
	movl	$0, -116(%ebp)
.L1353:
	movl	-116(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1354
	movl	-40(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1354:
.LBE223:
	.loc 1 3392 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L1350:
	.loc 1 3394 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3395 0
	jmp	.L1332
.L1322:
	.loc 1 3398 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1356
.LBB224:
	.loc 1 3400 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1358
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	jmp	.L1360
.L1358:
	movl	$0, -112(%ebp)
.L1360:
	movl	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1361
	movl	-36(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1361:
.LBE224:
	.loc 1 3401 0
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1363
.L1356:
.LBB225:
	.loc 1 3405 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1364
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	jmp	.L1366
.L1364:
	movl	$0, -108(%ebp)
.L1366:
	movl	-108(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1367
	movl	-32(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1367:
.LBE225:
	.loc 1 3406 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L1363:
	.loc 1 3408 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3409 0
	jmp	.L1332
.L1323:
	.loc 1 3412 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1369
.LBB226:
	.loc 1 3414 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1371
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	jmp	.L1373
.L1371:
	movl	$0, -104(%ebp)
.L1373:
	movl	-104(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1374
	movl	-28(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1374:
.LBE226:
	.loc 1 3415 0
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1376
.L1369:
.LBB227:
	.loc 1 3419 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1377
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L1379
.L1377:
	movl	$0, -100(%ebp)
.L1379:
	movl	-100(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1380
	movl	-24(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1380:
.LBE227:
	.loc 1 3420 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L1376:
	.loc 1 3422 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3423 0
	jmp	.L1332
.L1321:
	.loc 1 3426 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1382
.LBB228:
	.loc 1 3428 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1384
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	jmp	.L1386
.L1384:
	movl	$0, -96(%ebp)
.L1386:
	movl	-96(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1387
	movl	-20(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1387:
.LBE228:
	.loc 1 3429 0
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1389
.L1382:
.LBB229:
	.loc 1 3433 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1390
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L1392
.L1390:
	movl	$0, -92(%ebp)
.L1392:
	movl	-92(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1393
	movl	-16(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1393:
.LBE229:
	.loc 1 3434 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
.L1389:
	.loc 1 3436 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3437 0
	jmp	.L1332
.L1318:
	.loc 1 3440 0
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1332:
	.loc 1 3444 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3446 0
	cmpl	$0, -60(%ebp)
	je	.L1395
	.loc 1 3448 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_copy_cstr@PLT
	testl	%eax, %eax
	jne	.L1395
	.loc 1 3450 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1395:
	.loc 1 3453 0
	movl	$0, -136(%ebp)
	jmp	.L1307
.L1310:
.LBE218:
	.loc 1 3459 0
	movl	-80(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	substitution_get
	movl	%eax, -72(%ebp)
	.loc 1 3460 0
	cmpl	$0, -72(%ebp)
	jne	.L1398
	.loc 1 3461 0
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1398:
.LBB230:
	.loc 1 3464 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert@PLT
	testl	%eax, %eax
	jne	.L1400
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L1402
.L1400:
	movl	$0, -88(%ebp)
.L1402:
	movl	-88(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1403
	movl	-12(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1403:
.LBE230:
.LBB231:
	.loc 1 3466 0
	movl	$95, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1405
	movl	-8(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1307
.L1405:
.LBE231:
	.loc 1 3467 0
	movl	$0, -136(%ebp)
.L1307:
	movl	-136(%ebp), %eax
	.loc 1 3468 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	demangle_substitution, .-demangle_substitution
	.section	.rodata
.LC204:
	.string	"string literal"
	.text
	.type	demangle_local_name, @function
demangle_local_name:
.LFB60:
	.loc 1 3478 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%ebx
.LCFI201:
	subl	$84, %esp
.LCFI202:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB232:
	.loc 1 3481 0
	movl	$90, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L1409
	movl	-36(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1409:
.LBE232:
.LBB233:
	.loc 1 3482 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_encoding
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1412
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1412:
.LBE233:
.LBB234:
	.loc 1 3483 0
	movl	$69, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_char
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1414
	movl	-28(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1414:
.LBE234:
.LBB235:
	.loc 1 3484 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1416
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1418
.L1416:
	movl	$0, -60(%ebp)
.L1418:
	movl	-60(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1419
	movl	-24(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1419:
.LBE235:
	.loc 1 3486 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L1421
.LBB236:
	.loc 1 3489 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1423
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1425
.L1423:
	movl	$0, -56(%ebp)
.L1425:
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1426
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1426:
.LBE236:
	.loc 1 3491 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.LBB237:
	.loc 1 3492 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_discriminator
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1430
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1421:
.LBE237:
.LBB238:
.LBB239:
	.loc 1 3498 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_name
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1431
	movl	-12(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1431:
.LBE239:
.LBB240:
	.loc 1 3499 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_discriminator
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1430
	movl	-8(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L1411
.L1430:
.LBE240:
.LBE238:
	.loc 1 3502 0
	movl	$0, -64(%ebp)
.L1411:
	movl	-64(%ebp), %eax
	.loc 1 3503 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	demangle_local_name, .-demangle_local_name
	.section	.rodata
.LC205:
	.string	" [#"
.LC206:
	.string	" [#0]"
	.text
	.type	demangle_discriminator, @function
demangle_discriminator:
.LFB61:
	.loc 1 3517 0
	pushl	%ebp
.LCFI203:
	movl	%esp, %ebp
.LCFI204:
	pushl	%ebx
.LCFI205:
	subl	$68, %esp
.LCFI206:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3521 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1436
	.loc 1 3524 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3525 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1438
.LBB241:
	.loc 1 3526 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1440
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1442
.L1440:
	movl	$0, -52(%ebp)
.L1442:
	movl	-52(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1438
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1438:
.LBE241:
	.loc 1 3528 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jbe	.L1445
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	ja	.L1445
.LBB242:
.LBB243:
	.loc 1 3532 0
	movl	$0, 12(%esp)
	movl	$10, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_number
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1448
	movl	-20(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1448:
.LBE243:
	.loc 1 3533 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1450
.LBB244:
	.loc 1 3537 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	int_to_dyn_string
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1450
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1450:
.LBE244:
.LBE242:
	.loc 1 3542 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1453
	jmp	.L1459
.L1445:
	.loc 1 3541 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1453:
.LBB245:
	.loc 1 3543 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$93, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dyn_string_insert_char@PLT
	testl	%eax, %eax
	jne	.L1455
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1457
.L1455:
	movl	$0, -44(%ebp)
.L1457:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L1459
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1436:
.LBE245:
	.loc 1 3545 0
	cmpl	$0, 12(%ebp)
	jne	.L1459
	.loc 1 3547 0
	movl	flag_verbose@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1459
.LBB246:
	.loc 1 3548 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dyn_string_insert_cstr@PLT
	testl	%eax, %eax
	jne	.L1462
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1464
.L1462:
	movl	$0, -40(%ebp)
.L1464:
	movl	-40(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L1459
	movl	-8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1444
.L1459:
.LBE246:
	.loc 1 3551 0
	movl	$0, -48(%ebp)
.L1444:
	movl	-48(%ebp), %eax
	.loc 1 3552 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	demangle_discriminator, .-demangle_discriminator
	.type	cp_demangle, @function
cp_demangle:
.LFB62:
	.loc 1 3563 0
	pushl	%ebp
.LCFI207:
	movl	%esp, %ebp
.LCFI208:
	pushl	%edi
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$32, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3565 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3567 0
	cmpl	$2, -20(%ebp)
	jle	.L1468
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1468
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jne	.L1468
.LBB247:
	.loc 1 3569 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_new
	movl	%eax, -16(%ebp)
	.loc 1 3570 0
	cmpl	$0, -16(%ebp)
	jne	.L1472
	.loc 1 3571 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1474
.L1472:
	.loc 1 3573 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -24(%ebp)
	.loc 1 3574 0
	cmpl	$0, -24(%ebp)
	je	.L1475
	.loc 1 3576 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3577 0
	movl	-24(%ebp), %edi
	movl	%edi, -28(%ebp)
	jmp	.L1474
.L1475:
	.loc 1 3580 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_mangled_name
	movl	%eax, -24(%ebp)
	.loc 1 3581 0
	cmpl	$0, -24(%ebp)
	jne	.L1477
.LBB248:
	.loc 1 3583 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -12(%ebp)
	.loc 1 3584 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_copy@PLT
	testl	%eax, %eax
	jne	.L1479
	.loc 1 3585 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1474
.L1479:
	.loc 1 3586 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.L1477:
.LBE248:
	.loc 1 3589 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3567 0
	jmp	.L1481
.L1468:
.LBE247:
	.loc 1 3596 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_copy_cstr@PLT
	testl	%eax, %eax
	jne	.L1482
	.loc 1 3597 0
	movl	status_allocation_failed@GOTOFF(%ebx), %edi
	movl	%edi, -28(%ebp)
	jmp	.L1474
.L1482:
	.loc 1 3598 0
	movl	$0, -24(%ebp)
.L1481:
	.loc 1 3601 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1474:
	movl	-28(%ebp), %eax
	.loc 1 3602 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE62:
	.size	cp_demangle, .-cp_demangle
	.type	cp_demangle_type, @function
cp_demangle_type:
.LFB63:
	.loc 1 3612 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$36, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3614 0
	movl	$16384, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_new
	movl	%eax, -12(%ebp)
	.loc 1 3616 0
	cmpl	$0, -12(%ebp)
	jne	.L1486
	.loc 1 3617 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1488
.L1486:
	.loc 1 3620 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -16(%ebp)
	.loc 1 3621 0
	cmpl	$0, -16(%ebp)
	je	.L1489
	.loc 1 3623 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3624 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1488
.L1489:
	.loc 1 3627 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_type
	movl	%eax, -16(%ebp)
	.loc 1 3629 0
	cmpl	$0, -16(%ebp)
	jne	.L1491
.LBB249:
	.loc 1 3633 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	result_pop
	movl	%eax, -8(%ebp)
	.loc 1 3634 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_copy@PLT
	testl	%eax, %eax
	jne	.L1493
	.loc 1 3635 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1488
.L1493:
	.loc 1 3636 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
.L1491:
.LBE249:
	.loc 1 3640 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3642 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1488:
	movl	-24(%ebp), %eax
	.loc 1 3643 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	cp_demangle_type, .-cp_demangle_type
	.section	.rodata
.LC207:
	.string	"Memory allocation failed.\n"
	.text
.globl cplus_demangle_v3
	.type	cplus_demangle_v3, @function
cplus_demangle_v3:
.LFB64:
	.loc 1 3765 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$36, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3768 0
	movl	12(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3770 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1497
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jne	.L1497
	.loc 1 3772 0
	movl	$0, -12(%ebp)
	.loc 1 3770 0
	jmp	.L1500
.L1497:
	.loc 1 3776 0
	cmpl	$0, -12(%ebp)
	jne	.L1500
	.loc 1 3777 0
	movl	$0, -24(%ebp)
	jmp	.L1502
.L1500:
	.loc 1 3780 0
	movl	12(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, flag_verbose@GOTOFF(%ebx)
	.loc 1 3783 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3785 0
	cmpl	$0, -12(%ebp)
	jne	.L1503
	.loc 1 3787 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_demangle
	movl	%eax, -16(%ebp)
	jmp	.L1505
.L1503:
	.loc 1 3790 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_demangle_type
	movl	%eax, -16(%ebp)
.L1505:
	.loc 1 3792 0
	cmpl	$0, -16(%ebp)
	jne	.L1506
.LBB250:
	.loc 1 3797 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_release@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3799 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1502
.L1506:
.LBE250:
	.loc 1 3801 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L1508
	.loc 1 3803 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3804 0
	call	abort@PLT
.L1508:
	.loc 1 3809 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 3810 0
	movl	$0, -24(%ebp)
.L1502:
	movl	-24(%ebp), %eax
	.loc 1 3812 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	cplus_demangle_v3, .-cplus_demangle_v3
	.section	.rodata
.LC208:
	.string	"JArray<"
	.text
.globl java_demangle_v3
	.type	java_demangle_v3, @function
java_demangle_v3:
.LFB65:
	.loc 1 3824 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%edi
.LCFI222:
	pushl	%ebx
.LCFI223:
	subl	$80, %esp
.LCFI224:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3830 0
	movl	$0, -28(%ebp)
	.loc 1 3835 0
	movl	$0, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3838 0
	movl	$4, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_demangle
	movl	%eax, -32(%ebp)
	.loc 1 3840 0
	cmpl	$0, -32(%ebp)
	jne	.L1512
	.loc 1 3844 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_release@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3858 0
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 3859 0
	movl	-24(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3860 0
	movl	-36(%ebp), %eax
	addl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3861 0
	movl	$0, -48(%ebp)
	.loc 1 3864 0
	jmp	.L1541
.L1512:
	.loc 1 3846 0
	movl	status_allocation_failed@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L1515
	.loc 1 3848 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3849 0
	call	abort@PLT
.L1515:
	.loc 1 3854 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_delete@PLT
	.loc 1 3855 0
	movl	$0, -60(%ebp)
	jmp	.L1517
.L1518:
.LBB251:
	.loc 1 3866 0
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3867 0
	movl	$0, -12(%ebp)
	.loc 1 3868 0
	cmpl	$0, -28(%ebp)
	jle	.L1519
	.loc 1 3869 0
	movl	$62, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -12(%ebp)
.L1519:
	.loc 1 3871 0
	cmpl	$0, -16(%ebp)
	je	.L1521
	cmpl	$0, -12(%ebp)
	je	.L1523
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L1521
.L1523:
	.loc 1 3873 0
	addl	$1, -28(%ebp)
	.loc 1 3875 0
	cmpl	$0, -48(%ebp)
	jne	.L1525
	.loc 1 3876 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_new@PLT
	movl	%eax, -48(%ebp)
.L1525:
	.loc 1 3879 0
	movl	-16(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jbe	.L1527
	.loc 1 3881 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3882 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
.L1527:
	.loc 1 3884 0
	movl	-16(%ebp), %eax
	addl	$7, %eax
	movl	%eax, -44(%ebp)
	.loc 1 3871 0
	jmp	.L1514
.L1521:
	.loc 1 3886 0
	cmpl	$0, -12(%ebp)
	je	.L1529
	.loc 1 3888 0
	subl	$1, -28(%ebp)
	.loc 1 3892 0
	movl	-12(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jbe	.L1531
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L1531
	.loc 1 3894 0
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3895 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
.L1531:
	.loc 1 3897 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	.loc 1 3898 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L1514
.L1529:
	.loc 1 3904 0
	movl	-44(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L1534
	.loc 1 3905 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1517
.L1534:
	.loc 1 3907 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_append_cstr@PLT
	.loc 1 3908 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1514:
.L1541:
.LBE251:
	.loc 1 3864 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jb	.L1518
	.loc 1 3912 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3914 0
	cmpl	$0, -48(%ebp)
	je	.L1537
	.loc 1 3915 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_release@PLT
	movl	%eax, -20(%ebp)
	jmp	.L1539
.L1537:
	.loc 1 3917 0
	movl	$0, -20(%ebp)
.L1539:
	.loc 1 3919 0
	movl	-20(%ebp), %edi
	movl	%edi, -60(%ebp)
.L1517:
	movl	-60(%ebp), %eax
	.loc 1 3920 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE65:
	.size	java_demangle_v3, .-java_demangle_v3
	.section	.rodata
.LC209:
	.string	"_Z"
.LC210:
	.string	"%s\n"
	.text
	.type	demangle_v3_with_details, @function
demangle_v3_with_details:
.LFB66:
	.loc 1 3932 0
	pushl	%ebp
.LCFI225:
	movl	%esp, %ebp
.LCFI226:
	pushl	%edi
.LCFI227:
	pushl	%esi
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$60, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3936 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$2, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L1543
	.loc 1 3937 0
	movl	$0, -32(%ebp)
	jmp	.L1545
.L1543:
	.loc 1 3939 0
	movl	$16384, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_new
	movl	%eax, -20(%ebp)
	.loc 1 3940 0
	cmpl	$0, -20(%ebp)
	jne	.L1546
	.loc 1 3942 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 3943 0
	call	abort@PLT
.L1546:
	.loc 1 3946 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	result_push
	movl	%eax, -16(%ebp)
	.loc 1 3947 0
	cmpl	$0, -16(%ebp)
	je	.L1548
	.loc 1 3949 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3950 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 3951 0
	call	abort@PLT
.L1548:
	.loc 1 3954 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_mangled_name
	movl	%eax, -16(%ebp)
	.loc 1 3955 0
	cmpl	$0, -16(%ebp)
	jne	.L1550
	.loc 1 3956 0
	movl	-20(%ebp), %esi
	movl	%esi, -32(%ebp)
	jmp	.L1545
.L1550:
	.loc 1 3958 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3959 0
	movl	$0, -32(%ebp)
.L1545:
	movl	-32(%ebp), %eax
	.loc 1 3960 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE66:
	.size	demangle_v3_with_details, .-demangle_v3_with_details
.globl is_gnu_v3_mangled_ctor
	.type	is_gnu_v3_mangled_ctor, @function
is_gnu_v3_mangled_ctor:
.LFB67:
	.loc 1 3971 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	subl	$24, %esp
.LCFI233:
	.loc 1 3972 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_v3_with_details
	movl	%eax, -8(%ebp)
	.loc 1 3974 0
	cmpl	$0, -8(%ebp)
	je	.L1554
.LBB252:
	.loc 1 3976 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3977 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 3978 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1556
.L1554:
.LBE252:
	.loc 1 3981 0
	movl	$0, -20(%ebp)
.L1556:
	movl	-20(%ebp), %eax
	.loc 1 3982 0
	leave
	ret
.LFE67:
	.size	is_gnu_v3_mangled_ctor, .-is_gnu_v3_mangled_ctor
.globl is_gnu_v3_mangled_dtor
	.type	is_gnu_v3_mangled_dtor, @function
is_gnu_v3_mangled_dtor:
.LFB68:
	.loc 1 3993 0
	pushl	%ebp
.LCFI234:
	movl	%esp, %ebp
.LCFI235:
	subl	$24, %esp
.LCFI236:
	.loc 1 3994 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangle_v3_with_details
	movl	%eax, -8(%ebp)
	.loc 1 3996 0
	cmpl	$0, -8(%ebp)
	je	.L1559
.LBB253:
	.loc 1 3998 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 3999 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	demangling_delete
	.loc 1 4000 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1561
.L1559:
.LBE253:
	.loc 1 4003 0
	movl	$0, -20(%ebp)
.L1561:
	movl	-20(%ebp), %eax
	.loc 1 4004 0
	leave
	ret
.LFE68:
	.size	is_gnu_v3_mangled_dtor, .-is_gnu_v3_mangled_dtor
	.local	flag_verbose
	.comm	flag_verbose,4,4
	.local	flag_strict
	.comm	flag_strict,4,4
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI8-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI12-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI13
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
	.long	.LCFI16-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
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
	.long	.LCFI20-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI23-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI25-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI27-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI29-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI32-.LFB15
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI34-.LFB16
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI38-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI41-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI45-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI49-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI51-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI54-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI56-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI59-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI61-.LFB25
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI65-.LFB26
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI69-.LFB27
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI73-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI76-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI79-.LFB30
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI83-.LFB31
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI87-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI91-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI95-.LFB34
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI99-.LFB35
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI103-.LFB36
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI107-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI108
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
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI113-.LFB38
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI117-.LFB39
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI121-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI125-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI129-.LFB42
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
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI133-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI134
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI137-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI141-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI142
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI145-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI149-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI153-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI154
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI157-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI160-.LCFI158
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI161-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI164-.LFB51
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
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI168-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI172-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI176-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI180-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI183-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI184
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI187-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI188
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI191-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI194-.LCFI192
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI195-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI198-.LCFI196
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI199-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI202-.LCFI200
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI203-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI204-.LCFI203
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI206-.LCFI204
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI207-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI208
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
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
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
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
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
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
	.byte	0x4
	.long	.LCFI224-.LCFI221
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI225-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI230-.LCFI226
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI231-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI234-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE126:
	.file 2 "../../include/gnu/dyn-string.h"
	.file 3 "../../include/gnu/demangle.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI17-.Ltext0
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB45-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB46-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB48-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB50-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI161-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI162-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB53-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB54-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB55-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB56-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI183-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI184-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB57-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB58-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB59-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI195-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI196-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB60-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI199-.Ltext0
	.long	.LCFI200-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI200-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB61-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI203-.Ltext0
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI204-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
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
.LLST59:
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
.LLST60:
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
.LLST61:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB68-.Ltext0
	.long	.LCFI234-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI234-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI235-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3d66
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/cp-demangle.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0xaa
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x7
	.byte	0x3b
	.long	0x110
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x15a
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x13b
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x186
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0x109
	.uleb128 0x7
	.long	0x109
	.uleb128 0x6
	.byte	0x4
	.long	0x19f
	.uleb128 0x7
	.long	0x186
	.uleb128 0x8
	.long	0x41f
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x470
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xb
	.long	0x470
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x470
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x42d
	.uleb128 0x6
	.byte	0x4
	.long	0x1a4
	.uleb128 0xd
	.long	0x48c
	.long	0x186
	.uleb128 0xe
	.long	0x177
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x41f
	.uleb128 0xd
	.long	0x4a2
	.long	0x186
	.uleb128 0xe
	.long	0x177
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x4e4
	.string	"dyn_string"
	.byte	0xc
	.byte	0x2
	.byte	0x18
	.uleb128 0xc
	.string	"allocated"
	.byte	0x2
	.byte	0x19
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0x1a
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"s"
	.byte	0x2
	.byte	0x1b
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.string	"dyn_string_t"
	.byte	0x2
	.byte	0x1c
	.long	0x4f8
	.uleb128 0x6
	.byte	0x4
	.long	0x4a2
	.uleb128 0x7
	.long	0x199
	.uleb128 0x10
	.long	0x57f
	.string	"gnu_v3_ctor_kinds"
	.byte	0x4
	.byte	0x3
	.byte	0x90
	.uleb128 0x11
	.string	"gnu_v3_complete_object_ctor"
	.sleb128 1
	.uleb128 0x11
	.string	"gnu_v3_base_object_ctor"
	.sleb128 2
	.uleb128 0x11
	.string	"gnu_v3_complete_object_allocating_ctor"
	.sleb128 3
	.byte	0x0
	.uleb128 0x10
	.long	0x5e9
	.string	"gnu_v3_dtor_kinds"
	.byte	0x4
	.byte	0x3
	.byte	0x9e
	.uleb128 0x11
	.string	"gnu_v3_deleting_dtor"
	.sleb128 1
	.uleb128 0x11
	.string	"gnu_v3_complete_object_dtor"
	.sleb128 2
	.uleb128 0x11
	.string	"gnu_v3_base_object_dtor"
	.sleb128 3
	.byte	0x0
	.uleb128 0xb
	.long	0x63a
	.string	"string_list_def"
	.byte	0x14
	.byte	0x1
	.byte	0x69
	.uleb128 0xc
	.string	"string"
	.byte	0x1
	.byte	0x6b
	.long	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"caret_position"
	.byte	0x1
	.byte	0x71
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0x74
	.long	0x63a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x5e9
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x1
	.byte	0x77
	.long	0x63a
	.uleb128 0xb
	.long	0x68f
	.string	"substitution_def"
	.byte	0x8
	.byte	0x1
	.byte	0x7c
	.uleb128 0xc
	.string	"text"
	.byte	0x1
	.byte	0x7e
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.long	.LASF4
	.byte	0x1
	.byte	0x81
	.long	0x109
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xb
	.long	0x6ed
	.string	"template_arg_list_def"
	.byte	0xc
	.byte	0x1
	.byte	0x87
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0x8a
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"first_argument"
	.byte	0x1
	.byte	0x8e
	.long	0x640
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"last_argument"
	.byte	0x1
	.byte	0x91
	.long	0x640
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x68f
	.uleb128 0x2
	.string	"template_arg_list_t"
	.byte	0x1
	.byte	0x94
	.long	0x6ed
	.uleb128 0xb
	.long	0x81f
	.string	"demangling_def"
	.byte	0x2c
	.byte	0x1
	.byte	0x99
	.uleb128 0xf
	.long	.LASF5
	.byte	0x1
	.byte	0x9b
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0x9e
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0xa2
	.long	0x640
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_substitutions"
	.byte	0x1
	.byte	0xa5
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"substitutions_allocated"
	.byte	0x1
	.byte	0xa8
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"substitutions"
	.byte	0x1
	.byte	0xb4
	.long	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"template_arg_lists"
	.byte	0x1
	.byte	0xb7
	.long	0x6f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last_source_name"
	.byte	0x1
	.byte	0xba
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"style"
	.byte	0x1
	.byte	0xbd
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"is_constructor"
	.byte	0x1
	.byte	0xc1
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"is_destructor"
	.byte	0x1
	.byte	0xc5
	.long	0x57f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x655
	.uleb128 0x2
	.string	"demangling_t"
	.byte	0x1
	.byte	0xc9
	.long	0x839
	.uleb128 0x6
	.byte	0x4
	.long	0x70e
	.uleb128 0x2
	.string	"status_t"
	.byte	0x1
	.byte	0xcd
	.long	0x199
	.uleb128 0x13
	.long	0x8d2
	.string	"int_to_dyn_string"
	.byte	0x1
	.value	0x174
	.byte	0x1
	.long	0x83f
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.value	0x172
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ds"
	.byte	0x1
	.value	0x173
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x175
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"mask"
	.byte	0x1
	.value	0x176
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x15
	.string	"digit"
	.byte	0x1
	.value	0x193
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x918
	.string	"string_list_new"
	.byte	0x1
	.value	0x1a7
	.byte	0x1
	.long	0x640
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x1a6
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1a8
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x96a
	.string	"string_list_delete"
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x14
	.string	"node"
	.byte	0x1
	.value	0x1b5
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.value	0x1b9
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xa17
	.string	"result_add_separated_char"
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	0x83f
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x1c4
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"character"
	.byte	0x1
	.value	0x1c5
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.value	0x1c7
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"caret_pos"
	.byte	0x1
	.value	0x1c8
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	0x9ff
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1cd
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1cf
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xa61
	.string	"result_push"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.long	0x83f
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x1db
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"new_string"
	.byte	0x1
	.value	0x1dd
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0xaa3
	.string	"result_pop"
	.byte	0x1
	.value	0x1ef
	.byte	0x1
	.long	0x640
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x1ee
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"top"
	.byte	0x1
	.value	0x1f0
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1b
	.long	0xadb
	.string	"result_get_caret"
	.byte	0x1
	.value	0x1fb
	.long	0x109
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x1fa
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1c
	.long	0xb23
	.string	"result_set_caret"
	.byte	0x1
	.value	0x206
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x204
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"position"
	.byte	0x1
	.value	0x205
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1c
	.long	0xb74
	.string	"result_shift_caret"
	.byte	0x1
	.value	0x211
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x20f
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"position_offset"
	.byte	0x1
	.value	0x210
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1b
	.long	0xbd7
	.string	"result_previous_char_is_space"
	.byte	0x1
	.value	0x21c
	.long	0x109
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x21b
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.value	0x21d
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.string	"pos"
	.byte	0x1
	.value	0x21e
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1d
	.long	0xc03
	.long	.LASF7
	.byte	0x1
	.value	0x229
	.byte	0x1
	.long	0x109
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x228
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x13
	.long	0xcb2
	.string	"substitution_add"
	.byte	0x1
	.value	0x236
	.byte	0x1
	.long	0x83f
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x233
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x234
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF4
	.byte	0x1
	.value	0x235
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.value	0x237
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"substitution"
	.byte	0x1
	.value	0x238
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x239
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x15
	.string	"new_array_size"
	.byte	0x1
	.value	0x24a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xd16
	.string	"substitution_get"
	.byte	0x1
	.value	0x273
	.byte	0x1
	.long	0x4e4
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x270
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.value	0x271
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF4
	.byte	0x1
	.value	0x272
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.string	"sub"
	.byte	0x1
	.value	0x274
	.long	0x81f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x13
	.long	0xd5a
	.string	"template_arg_list_new"
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	0x6f3
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x15
	.string	"new_list"
	.byte	0x1
	.value	0x2a0
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0xd99
	.string	"template_arg_list_delete"
	.byte	0x1
	.value	0x2b1
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x14
	.string	"list"
	.byte	0x1
	.value	0x2b0
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.long	0xde7
	.string	"template_arg_list_add_arg"
	.byte	0x1
	.value	0x2bf
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x2bd
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.value	0x2be
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x13
	.long	0xe4a
	.string	"template_arg_list_get_arg"
	.byte	0x1
	.value	0x2d2
	.byte	0x1
	.long	0x640
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x2d0
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.value	0x2d1
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.value	0x2d3
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x18
	.long	0xe94
	.string	"push_template_arg_list"
	.byte	0x1
	.value	0x2e8
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x2e6
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x2e7
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x18
	.long	0xef9
	.string	"pop_to_template_arg_list"
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x2f7
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x2f8
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x15
	.string	"top"
	.byte	0x1
	.value	0x2fc
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xf3b
	.string	"current_template_arg_list"
	.byte	0x1
	.value	0x327
	.byte	0x1
	.long	0x6f3
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x326
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x13
	.long	0xf92
	.string	"demangling_new"
	.byte	0x1
	.value	0x333
	.byte	0x1
	.long	0x825
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0x331
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"style"
	.byte	0x1
	.value	0x332
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0x334
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0xffd
	.string	"demangling_delete"
	.byte	0x1
	.value	0x356
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x355
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x357
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF9
	.byte	0x1
	.value	0x358
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.value	0x35d
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x105c
	.string	"demangle_char"
	.byte	0x1
	.value	0x3ca
	.byte	0x1
	.long	0x83f
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x3c8
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.value	0x3c9
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"error_message"
	.byte	0x1
	.value	0x3cb
	.long	0x180
	.byte	0x5
	.byte	0x3
	.long	error_message.3577
	.byte	0x0
	.uleb128 0x13
	.long	0x10e7
	.string	"demangle_mangled_name"
	.byte	0x1
	.value	0x3e2
	.byte	0x1
	.long	0x83f
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x3e1
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x10b4
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x3e4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0x10cf
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x3e5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x3e6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x11c5
	.string	"demangle_encoding"
	.byte	0x1
	.value	0x3f3
	.byte	0x1
	.long	0x83f
	.long	.LFB29
	.long	.LFE29
	.long	.LLST24
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x3f2
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF10
	.byte	0x1
	.value	0x3f4
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF8
	.byte	0x1
	.value	0x3f5
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF11
	.byte	0x1
	.value	0x3f6
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x3f7
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.long	0x1177
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x400
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x1192
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x404
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x11ad
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x40e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x413
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1363
	.string	"demangle_name"
	.byte	0x1
	.value	0x431
	.byte	0x1
	.long	0x83f
	.long	.LFB30
	.long	.LFE30
	.long	.LLST25
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x42f
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.value	0x430
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"start"
	.byte	0x1
	.value	0x432
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x433
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x15
	.string	"is_std_substitution"
	.byte	0x1
	.value	0x434
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.long	.LASF13
	.byte	0x1
	.value	0x43a
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	0x1273
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x442
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1a
	.long	0x128e
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x446
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x12a9
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x451
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x12c4
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x452
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x12df
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x457
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x12fa
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x45f
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x1315
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x461
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x1330
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x46b
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x134b
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x472
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x474
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x144e
	.string	"demangle_nested_name"
	.byte	0x1
	.value	0x488
	.byte	0x1
	.long	0x83f
	.long	.LFB31
	.long	.LFE31
	.long	.LLST26
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x486
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.value	0x487
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x489
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x13d8
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x48d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x141b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x19
	.long	.LASF14
	.byte	0x1
	.value	0x492
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x493
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4a7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x1436
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4aa
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4ad
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x157e
	.string	"demangle_prefix"
	.byte	0x1
	.value	0x4c0
	.byte	0x1
	.long	0x83f
	.long	.LFB32
	.long	.LFE32
	.long	.LLST27
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x4be
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.value	0x4bf
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"start"
	.byte	0x1
	.value	0x4c1
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"nested"
	.byte	0x1
	.value	0x4c2
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF13
	.byte	0x1
	.value	0x4cc
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x4d2
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x14f9
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4e9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x1514
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4f0
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x152f
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4f4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x154a
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4fa
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x1565
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x4fd
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x511
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1644
	.string	"demangle_unqualified_name"
	.byte	0x1
	.value	0x523
	.byte	0x1
	.long	0x83f
	.long	.LFB33
	.long	.LFE33
	.long	.LLST28
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x521
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.value	0x522
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x524
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x15f8
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x52d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x162c
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x19
	.long	.LASF16
	.byte	0x1
	.value	0x530
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x536
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x53e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x16dd
	.string	"demangle_source_name"
	.byte	0x1
	.value	0x54d
	.byte	0x1
	.long	0x83f
	.long	.LFB34
	.long	.LFE34
	.long	.LLST29
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x54c
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF2
	.byte	0x1
	.value	0x54e
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	0x16aa
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x553
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x16c5
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x559
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x55d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1754
	.string	"demangle_number"
	.byte	0x1
	.value	0x572
	.byte	0x1
	.long	0x83f
	.long	.LFB35
	.long	.LFE35
	.long	.LLST30
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x56e
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.value	0x56f
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"base"
	.byte	0x1
	.value	0x570
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.value	0x571
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.long	.LASF18
	.byte	0x1
	.value	0x573
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x13
	.long	0x17dd
	.string	"demangle_number_literally"
	.byte	0x1
	.value	0x58e
	.byte	0x1
	.long	0x83f
	.long	.LFB36
	.long	.LFE36
	.long	.LLST31
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x58a
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"str"
	.byte	0x1
	.value	0x58b
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"base"
	.byte	0x1
	.value	0x58c
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.value	0x58d
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x5a2
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x18b4
	.string	"demangle_identifier"
	.byte	0x1
	.value	0x5ba
	.byte	0x1
	.long	0x83f
	.long	.LFB37
	.long	.LFE37
	.long	.LLST32
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x5b7
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x5b8
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"identifier"
	.byte	0x1
	.value	0x5b9
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	0x1881
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x15
	.string	"ch"
	.byte	0x1
	.value	0x5c3
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.value	0x5cf
	.long	0x18b4
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x15
	.string	"pos"
	.byte	0x1
	.value	0x5d0
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x19
	.long	.LASF5
	.byte	0x1
	.value	0x5f2
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"prefix_length"
	.byte	0x1
	.value	0x5f3
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x18c4
	.long	0x186
	.uleb128 0xe
	.long	0x177
	.byte	0x9
	.byte	0x0
	.uleb128 0x13
	.long	0x1adf
	.string	"demangle_operator_name"
	.byte	0x1
	.value	0x649
	.byte	0x1
	.long	0x83f
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x645
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"short_name"
	.byte	0x1
	.value	0x646
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.value	0x647
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF19
	.byte	0x1
	.value	0x648
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.long	0x197c
	.string	"operator_code"
	.byte	0xc
	.byte	0x1
	.value	0x64b
	.uleb128 0x9
	.string	"code"
	.byte	0x1
	.value	0x64d
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x64f
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x1
	.value	0x651
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.string	"num_operators"
	.byte	0x1
	.value	0x688
	.long	0x194
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"c0"
	.byte	0x1
	.value	0x68b
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"c1"
	.byte	0x1
	.value	0x68c
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.string	"p1"
	.byte	0x1
	.value	0x68d
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"p2"
	.byte	0x1
	.value	0x68e
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	0x19e9
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x699
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x1a04
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x69a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x1a1f
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6a2
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x1a3a
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6a4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x1a55
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6ac
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x1ac6
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.value	0x6b6
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"match0"
	.byte	0x1
	.value	0x6b7
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x15
	.string	"match1"
	.byte	0x1
	.value	0x6b8
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x1aae
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6be
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6bf
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.string	"operators"
	.byte	0x1
	.value	0x654
	.long	0x3c9a
	.byte	0x5
	.byte	0x3
	.long	operators.4153
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1ae5
	.uleb128 0x7
	.long	0x1936
	.uleb128 0x13
	.long	0x1b5a
	.string	"demangle_nv_offset"
	.byte	0x1
	.value	0x6d8
	.byte	0x1
	.long	0x83f
	.long	.LFB39
	.long	.LFE39
	.long	.LLST34
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x6d7
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF18
	.byte	0x1
	.value	0x6d9
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x6da
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x6f0
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1bff
	.string	"demangle_v_offset"
	.byte	0x1
	.value	0x6fc
	.byte	0x1
	.long	0x83f
	.long	.LFB40
	.long	.LFE40
	.long	.LLST35
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x6fb
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF18
	.byte	0x1
	.value	0x6fd
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x6fe
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	0x1bcc
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x712
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x1be7
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x715
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x725
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x1ca4
	.string	"demangle_call_offset"
	.byte	0x1
	.value	0x732
	.byte	0x1
	.long	0x83f
	.long	.LFB41
	.long	.LFE41
	.long	.LLST36
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x731
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x1c56
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x73a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x1c71
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x73c
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x1c8c
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x742
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x744
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2115
	.string	"demangle_special_name"
	.byte	0x1
	.value	0x76f
	.byte	0x1
	.long	0x83f
	.long	.LFB42
	.long	.LFE42
	.long	.LLST37
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x76e
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF18
	.byte	0x1
	.value	0x770
	.long	0x4e4
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x15
	.string	"unused"
	.byte	0x1
	.value	0x771
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x772
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x1d2f
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x77f
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.uleb128 0x1a
	.long	0x1d4b
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x780
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x1a
	.long	0x1d67
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x786
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.uleb128 0x1a
	.long	0x1d83
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x787
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x16
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x790
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1a
	.long	0x1db8
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x79a
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x1a
	.long	0x1dd4
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x79b
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x1a
	.long	0x1df0
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7a1
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e0c
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7a2
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e28
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7a8
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e44
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7a9
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e60
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7af
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e7c
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7b0
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x1a
	.long	0x1e98
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7b6
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x1a
	.long	0x1eb4
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7b7
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x1a
	.long	0x1ed0
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7bd
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x1a
	.long	0x1eec
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7be
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f08
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7c4
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f24
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7c5
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f40
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7c7
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f5c
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7c9
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f78
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7ca
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x1a
	.long	0x1f94
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7d0
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x1a
	.long	0x1fb0
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7d1
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x1a
	.long	0x1fcc
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7d3
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x1a
	.long	0x1fe7
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7d5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x1a
	.long	0x2002
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7d6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x1a
	.long	0x201d
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7dc
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1a
	.long	0x2038
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7dd
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x2053
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7de
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x206e
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7e0
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x2089
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7e1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x16
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x15
	.string	"derived_type"
	.byte	0x1
	.value	0x7e8
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	0x20c5
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7eb
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x20e0
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7ee
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x20fb
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x7ef
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x810
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x229f
	.string	"demangle_ctor_dtor_name"
	.byte	0x1
	.value	0x82c
	.byte	0x1
	.long	0x83f
	.long	.LFB43
	.long	.LFE43
	.long	.LLST38
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x82b
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"flavor"
	.byte	0x1
	.value	0x83a
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x83b
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x2190
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x846
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x21ab
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x853
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x21c6
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x854
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x21e1
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x855
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x21fc
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x85f
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x2217
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x860
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x2232
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x86d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x224d
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x86e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x2268
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x86f
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x15
	.string	"ctor_flavors"
	.byte	0x1
	.value	0x82d
	.long	0x3c70
	.byte	0x5
	.byte	0x3
	.long	ctor_flavors.4931
	.uleb128 0x15
	.string	"dtor_flavors"
	.byte	0x1
	.value	0x833
	.long	0x3c85
	.byte	0x5
	.byte	0x3
	.long	dtor_flavors.4932
	.byte	0x0
	.uleb128 0x13
	.long	0x2477
	.string	"demangle_type_ptr"
	.byte	0x1
	.value	0x897
	.byte	0x1
	.long	0x83f
	.long	.LFB44
	.long	.LFE44
	.long	.LLST39
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x894
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF20
	.byte	0x1
	.value	0x895
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF7
	.byte	0x1
	.value	0x896
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x898
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF21
	.byte	0x1
	.value	0x899
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	0x2331
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8a5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x1a
	.long	0x234c
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8ab
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x1a
	.long	0x2367
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8b5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1a
	.long	0x2382
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8b9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x23f3
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x15
	.string	"class_type"
	.byte	0x1
	.value	0x8c2
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x23c0
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8c8
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x23db
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8c9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x16
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x8f5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x240e
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x900
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x2429
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x904
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2444
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x911
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x245f
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x918
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x924
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x27c2
	.string	"demangle_type"
	.byte	0x1
	.value	0x93d
	.byte	0x1
	.long	0x83f
	.long	.LFB45
	.long	.LFE45
	.long	.LLST40
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0x93c
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"start"
	.byte	0x1
	.value	0x93e
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0x93f
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x15
	.string	"peek_next"
	.byte	0x1
	.value	0x940
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x19
	.long	.LASF10
	.byte	0x1
	.value	0x941
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x19
	.long	.LASF11
	.byte	0x1
	.value	0x942
	.long	0x6f3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x19
	.long	.LASF20
	.byte	0x1
	.value	0x943
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.long	.LASF21
	.byte	0x1
	.value	0x948
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	0x253e
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x94f
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x1a
	.long	0x255a
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x954
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x1a
	.long	0x25f7
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0x962
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x19
	.long	.LASF14
	.byte	0x1
	.value	0x963
	.long	0x4e4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.string	"old_caret_position"
	.byte	0x1
	.value	0x964
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	0x25c2
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x971
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x1a
	.long	0x25de
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x973
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x16
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x978
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x2613
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x983
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x1a
	.long	0x262f
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x98a
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x1a
	.long	0x264b
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x994
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x1a
	.long	0x2667
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x997
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x1a
	.long	0x2683
	.long	.LBB134
	.long	.LBE134
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9a7
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x1a
	.long	0x269e
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9ad
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x1a
	.long	0x26d2
	.long	.LBB136
	.long	.LBE136
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.value	0x9c4
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9c6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x26ed
	.long	.LBB138
	.long	.LBE138
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9d4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x2708
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9dc
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x2723
	.long	.LBB140
	.long	.LBE140
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9de
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x273e
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9e3
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x2759
	.long	.LBB142
	.long	.LBE142
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9e5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x2774
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9eb
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x278f
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9ec
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x27aa
	.long	.LBB145
	.long	.LBE145
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9ed
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB146
	.long	.LBE146
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x9f9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x285b
	.string	"demangle_builtin_type"
	.byte	0x1
	.value	0xa5f
	.byte	0x1
	.long	0x83f
	.long	.LFB46
	.long	.LFE46
	.long	.LLST41
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xa5e
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"code"
	.byte	0x1
	.value	0xa61
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x282a
	.long	.LBB147
	.long	.LBE147
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xa68
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x16
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x19
	.long	.LASF22
	.byte	0x1
	.value	0xa6d
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LBB149
	.long	.LBE149
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xa76
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x28b0
	.string	"demangle_CV_qualifiers"
	.byte	0x1
	.value	0xa86
	.byte	0x1
	.long	0x83f
	.long	.LFB47
	.long	.LFE47
	.long	.LLST42
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xa84
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"qualifiers"
	.byte	0x1
	.value	0xa85
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x13
	.long	0x2974
	.string	"demangle_function_type"
	.byte	0x1
	.value	0xab6
	.byte	0x1
	.long	0x83f
	.long	.LFB48
	.long	.LFE48
	.long	.LLST43
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xab4
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"function_name_pos"
	.byte	0x1
	.value	0xab5
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.long	0x2926
	.long	.LBB150
	.long	.LBE150
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xab8
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2941
	.long	.LBB151
	.long	.LBE151
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xabd
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x295c
	.long	.LBB152
	.long	.LBE152
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xac0
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB153
	.long	.LBE153
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xac1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2ad0
	.string	"demangle_bare_function_type"
	.byte	0x1
	.value	0xad0
	.byte	0x1
	.long	0x83f
	.long	.LFB49
	.long	.LFE49
	.long	.LLST44
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xace
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"return_type_pos"
	.byte	0x1
	.value	0xacf
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"sequence"
	.byte	0x1
	.value	0xad3
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	0x2a01
	.long	.LBB154
	.long	.LBE154
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xad8
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x2a82
	.long	.LBB155
	.long	.LBE155
	.uleb128 0x15
	.string	"return_type"
	.byte	0x1
	.value	0xade
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xadf
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	0x2a4f
	.long	.LBB156
	.long	.LBE156
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xae2
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x2a6a
	.long	.LBB157
	.long	.LBE157
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xae3
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x16
	.long	.LBB158
	.long	.LBE158
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xaf4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x2a9d
	.long	.LBB159
	.long	.LBE159
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb02
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x2ab8
	.long	.LBB160
	.long	.LBE160
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb04
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB161
	.long	.LBE161
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb0a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2b37
	.string	"demangle_class_enum_type"
	.byte	0x1
	.value	0xb20
	.byte	0x1
	.long	0x83f
	.long	.LFB50
	.long	.LFE50
	.long	.LLST45
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xb1e
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF10
	.byte	0x1
	.value	0xb1f
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LBB162
	.long	.LBE162
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb23
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2c29
	.string	"demangle_array_type"
	.byte	0x1
	.value	0xb3c
	.byte	0x1
	.long	0x83f
	.long	.LFB51
	.long	.LFE51
	.long	.LLST46
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xb3a
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ptr_insert_pos"
	.byte	0x1
	.value	0xb3b
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xb3d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"array_size"
	.byte	0x1
	.value	0xb3e
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0xb3f
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x2bdb
	.long	.LBB163
	.long	.LBE163
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb43
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x2bf6
	.long	.LBB164
	.long	.LBE164
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb57
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2c11
	.long	.LBB165
	.long	.LBE165
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb58
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB166
	.long	.LBE166
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb79
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2d13
	.string	"demangle_template_param"
	.byte	0x1
	.value	0xb86
	.byte	0x1
	.long	0x83f
	.long	.LFB52
	.long	.LFE52
	.long	.LLST47
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xb85
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"parm_number"
	.byte	0x1
	.value	0xb87
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"current_arg_list"
	.byte	0x1
	.value	0xb88
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.value	0xb89
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	0x2cc5
	.long	.LBB167
	.long	.LBE167
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb92
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2ce0
	.long	.LBB168
	.long	.LBE168
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb97
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x2cfb
	.long	.LBB169
	.long	.LBE169
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xb9a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB170
	.long	.LBE170
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xba1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2e64
	.string	"demangle_template_args"
	.byte	0x1
	.value	0xbad
	.byte	0x1
	.long	0x83f
	.long	.LFB53
	.long	.LFE53
	.long	.LLST48
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xbac
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"first"
	.byte	0x1
	.value	0xbae
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"old_last_source_name"
	.byte	0x1
	.value	0xbaf
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF9
	.byte	0x1
	.value	0xbb0
	.long	0x6f3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x2dac
	.long	.LBB171
	.long	.LBE171
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbbe
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x2dc7
	.long	.LBB172
	.long	.LBE172
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbbf
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x2e4c
	.long	.LBB173
	.long	.LBE173
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.value	0xbc2
	.long	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	0x2dfe
	.long	.LBB174
	.long	.LBE174
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbc7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x2e19
	.long	.LBB175
	.long	.LBE175
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbca
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2e34
	.long	.LBB176
	.long	.LBE176
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbcb
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB177
	.long	.LBE177
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbcf
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	.LBB178
	.long	.LBE178
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xbd6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x2fdc
	.string	"demangle_literal"
	.byte	0x1
	.value	0xbf3
	.byte	0x1
	.long	0x83f
	.long	.LFB54
	.long	.LFE54
	.long	.LLST49
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xbf2
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0xbf4
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x15
	.string	"value_string"
	.byte	0x1
	.value	0xbf5
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xbf6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x2f58
	.long	.LBB179
	.long	.LBE179
	.uleb128 0x15
	.string	"code"
	.byte	0x1
	.value	0xc0c
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1a
	.long	0x2f40
	.long	.LBB180
	.long	.LBE180
	.uleb128 0x15
	.string	"value"
	.byte	0x1
	.value	0xc13
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x2f28
	.long	.LBB181
	.long	.LBE181
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc1b
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x16
	.long	.LBB182
	.long	.LBE182
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc1d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	.LBB183
	.long	.LBE183
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc35
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x2f73
	.long	.LBB184
	.long	.LBE184
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc3c
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x2f8e
	.long	.LBB185
	.long	.LBE185
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc3d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x2fa9
	.long	.LBB186
	.long	.LBE186
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc3e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x2fc4
	.long	.LBB187
	.long	.LBE187
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc48
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x15
	.string	"code_map"
	.byte	0x1
	.value	0xc0a
	.long	0x4fe
	.byte	0x5
	.byte	0x3
	.long	code_map.6062
	.byte	0x0
	.uleb128 0x13
	.long	0x30b8
	.string	"demangle_template_arg"
	.byte	0x1
	.value	0xc57
	.byte	0x1
	.long	0x83f
	.long	.LFB55
	.long	.LFE55
	.long	.LLST50
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xc56
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x3034
	.long	.LBB188
	.long	.LBE188
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc64
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x304f
	.long	.LBB189
	.long	.LBE189
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc67
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x306a
	.long	.LBB190
	.long	.LBE190
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc68
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x3085
	.long	.LBB191
	.long	.LBE191
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc6e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0x30a0
	.long	.LBB192
	.long	.LBE192
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc6f
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	.LBB193
	.long	.LBE193
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc73
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x3297
	.string	"demangle_expression"
	.byte	0x1
	.value	0xc84
	.byte	0x1
	.long	0x83f
	.long	.LFB56
	.long	.LFE56
	.long	.LLST51
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xc83
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0xc85
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x311e
	.long	.LBB194
	.long	.LBE194
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc8a
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x1a
	.long	0x313a
	.long	.LBB195
	.long	.LBE195
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc8c
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x16
	.long	.LBB196
	.long	.LBE196
	.uleb128 0x19
	.long	.LASF16
	.byte	0x1
	.value	0xc90
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LASF19
	.byte	0x1
	.value	0xc91
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xc92
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"operator_name"
	.byte	0x1
	.value	0xc93
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	0x31a6
	.long	.LBB197
	.long	.LBE197
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc98
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1a
	.long	0x31c1
	.long	.LBB198
	.long	.LBE198
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xc99
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x31dc
	.long	.LBB199
	.long	.LBE199
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcab
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x31f7
	.long	.LBB200
	.long	.LBE200
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcae
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x3212
	.long	.LBB201
	.long	.LBE201
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcb0
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x322d
	.long	.LBB202
	.long	.LBE202
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcb2
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x3248
	.long	.LBB203
	.long	.LBE203
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcb3
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x3263
	.long	.LBB204
	.long	.LBE204
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcb8
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x327e
	.long	.LBB205
	.long	.LBE205
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcb9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB206
	.long	.LBE206
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcba
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x335c
	.string	"demangle_scope_expression"
	.byte	0x1
	.value	0xcc9
	.byte	0x1
	.long	0x83f
	.long	.LFB57
	.long	.LFE57
	.long	.LLST52
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xcc8
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x32f3
	.long	.LBB207
	.long	.LBE207
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcca
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x330e
	.long	.LBB208
	.long	.LBE208
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xccb
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x3329
	.long	.LBB209
	.long	.LBE209
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xccc
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0x3344
	.long	.LBB210
	.long	.LBE210
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xccd
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB211
	.long	.LBE211
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xcce
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x3411
	.string	"demangle_expr_primary"
	.byte	0x1
	.value	0xcdb
	.byte	0x1
	.long	0x83f
	.long	.LFB58
	.long	.LFE58
	.long	.LLST53
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xcda
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0xcdc
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1a
	.long	0x33c3
	.long	.LBB212
	.long	.LBE212
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xce1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x33de
	.long	.LBB213
	.long	.LBE213
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xce9
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x33f9
	.long	.LBB214
	.long	.LBE214
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xceb
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB215
	.long	.LBE215
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xced
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x3650
	.string	"demangle_substitution"
	.byte	0x1
	.value	0xd0d
	.byte	0x1
	.long	0x83f
	.long	.LFB59
	.long	.LFE59
	.long	.LLST54
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xd0b
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF4
	.byte	0x1
	.value	0xd0c
	.long	0x18e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"seq_id"
	.byte	0x1
	.value	0xd0e
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.value	0xd0f
	.long	0x109
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.string	"text"
	.byte	0x1
	.value	0xd10
	.long	0x4e4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	0x34ad
	.long	.LBB216
	.long	.LBE216
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd14
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x1a
	.long	0x34c9
	.long	.LBB217
	.long	.LBE217
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd20
	.long	0x83f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x1a
	.long	0x361d
	.long	.LBB218
	.long	.LBE218
	.uleb128 0x15
	.string	"new_last_source_name"
	.byte	0x1
	.value	0xd23
	.long	0x199
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	0x3512
	.long	.LBB219
	.long	.LBE219
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd28
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x1a
	.long	0x352d
	.long	.LBB220
	.long	.LBE220
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd2c
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x1a
	.long	0x3548
	.long	.LBB221
	.long	.LBE221
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd32
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1a
	.long	0x3563
	.long	.LBB222
	.long	.LBE222
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd3a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1a
	.long	0x357e
	.long	.LBB223
	.long	.LBE223
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd3f
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1a
	.long	0x3599
	.long	.LBB224
	.long	.LBE224
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd48
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x35b4
	.long	.LBB225
	.long	.LBE225
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd4d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x35cf
	.long	.LBB226
	.long	.LBE226
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd56
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x35ea
	.long	.LBB227
	.long	.LBE227
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd5b
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x3605
	.long	.LBB228
	.long	.LBE228
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd64
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x16
	.long	.LBB229
	.long	.LBE229
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd69
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x3638
	.long	.LBB230
	.long	.LBE230
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd88
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB231
	.long	.LBE231
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd8a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x377c
	.string	"demangle_local_name"
	.byte	0x1
	.value	0xd96
	.byte	0x1
	.long	0x83f
	.long	.LFB60
	.long	.LFE60
	.long	.LLST55
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xd95
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x36a6
	.long	.LBB232
	.long	.LBE232
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd99
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1a
	.long	0x36c1
	.long	.LBB233
	.long	.LBE233
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd9a
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1a
	.long	0x36dc
	.long	.LBB234
	.long	.LBE234
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd9b
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1a
	.long	0x36f7
	.long	.LBB235
	.long	.LBE235
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xd9c
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x3712
	.long	.LBB236
	.long	.LBE236
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xda1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1a
	.long	0x372d
	.long	.LBB237
	.long	.LBE237
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xda4
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	.LBB238
	.long	.LBE238
	.uleb128 0x15
	.string	"unused"
	.byte	0x1
	.value	0xda8
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x3763
	.long	.LBB239
	.long	.LBE239
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdaa
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB240
	.long	.LBE240
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdab
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x387b
	.string	"demangle_discriminator"
	.byte	0x1
	.value	0xdbd
	.byte	0x1
	.long	0x83f
	.long	.LFB61
	.long	.LFE61
	.long	.LLST56
	.uleb128 0x14
	.string	"dm"
	.byte	0x1
	.value	0xdbb
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"suppress_first"
	.byte	0x1
	.value	0xdbc
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.long	0x37ef
	.long	.LBB241
	.long	.LBE241
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdc6
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	0x3848
	.long	.LBB242
	.long	.LBE242
	.uleb128 0x15
	.string	"discriminator"
	.byte	0x1
	.value	0xdca
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	0x3830
	.long	.LBB243
	.long	.LBE243
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdcc
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x16
	.long	.LBB244
	.long	.LBE244
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdd1
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x3863
	.long	.LBB245
	.long	.LBE245
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xdd7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	.LBB246
	.long	.LBE246
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0xddc
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x391f
	.string	"cp_demangle"
	.byte	0x1
	.value	0xdeb
	.byte	0x1
	.long	0x83f
	.long	.LFB62
	.long	.LFE62
	.long	.LLST57
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0xde8
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.value	0xde9
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"style"
	.byte	0x1
	.value	0xdea
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xdec
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF2
	.byte	0x1
	.value	0xded
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LBB247
	.long	.LBE247
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0xdf1
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LBB248
	.long	.LBE248
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.value	0xdff
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x399e
	.string	"cp_demangle_type"
	.byte	0x1
	.value	0xe1c
	.byte	0x1
	.long	0x83f
	.long	.LFB63
	.long	.LFE63
	.long	.LLST58
	.uleb128 0x17
	.long	.LASF22
	.byte	0x1
	.value	0xe1a
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.value	0xe1b
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xe1d
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0xe1e
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB249
	.long	.LBE249
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.value	0xe31
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3a38
	.byte	0x1
	.string	"cplus_demangle_v3"
	.byte	0x1
	.value	0xeb5
	.byte	0x1
	.long	0x180
	.long	.LFB64
	.long	.LFE64
	.long	.LLST59
	.uleb128 0x14
	.string	"mangled"
	.byte	0x1
	.value	0xeb3
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"options"
	.byte	0x1
	.value	0xeb4
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.value	0xeb6
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xeb7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"type"
	.byte	0x1
	.value	0xeb8
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LBB250
	.long	.LBE250
	.uleb128 0x19
	.long	.LASF24
	.byte	0x1
	.value	0xed5
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3b32
	.byte	0x1
	.string	"java_demangle_v3"
	.byte	0x1
	.value	0xef0
	.byte	0x1
	.long	0x180
	.long	.LFB65
	.long	.LFE65
	.long	.LLST60
	.uleb128 0x14
	.string	"mangled"
	.byte	0x1
	.value	0xeef
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.value	0xef1
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.value	0xef2
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.string	"end"
	.byte	0x1
	.value	0xef3
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.value	0xef4
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xef5
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"nesting"
	.byte	0x1
	.value	0xef6
	.long	0x109
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"cplus_demangled"
	.byte	0x1
	.value	0xef7
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF24
	.byte	0x1
	.value	0xef8
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LBB251
	.long	.LBE251
	.uleb128 0x15
	.string	"open_str"
	.byte	0x1
	.value	0xf1a
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"close_str"
	.byte	0x1
	.value	0xf1b
	.long	0x180
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3b90
	.string	"demangle_v3_with_details"
	.byte	0x1
	.value	0xf5c
	.long	0x825
	.long	.LFB66
	.long	.LFE66
	.long	.LLST61
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0xf5b
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0xf5d
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF15
	.byte	0x1
	.value	0xf5e
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x20
	.long	0x3bf8
	.byte	0x1
	.string	"is_gnu_v3_mangled_ctor"
	.byte	0x1
	.value	0xf83
	.byte	0x1
	.long	0x503
	.long	.LFB67
	.long	.LFE67
	.long	.LLST62
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0xf82
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0xf84
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.long	.LBB252
	.long	.LBE252
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.value	0xf88
	.long	0x503
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3c60
	.byte	0x1
	.string	"is_gnu_v3_mangled_dtor"
	.byte	0x1
	.value	0xf99
	.byte	0x1
	.long	0x57f
	.long	.LFB68
	.long	.LFE68
	.long	.LLST63
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0xf98
	.long	0x199
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"dm"
	.byte	0x1
	.value	0xf9a
	.long	0x825
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.long	.LBB253
	.long	.LBE253
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.value	0xf9e
	.long	0x57f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x3c70
	.long	0x199
	.uleb128 0xe
	.long	0x177
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.long	0x3c60
	.uleb128 0xd
	.long	0x3c85
	.long	0x199
	.uleb128 0xe
	.long	0x177
	.byte	0x2
	.byte	0x0
	.uleb128 0x7
	.long	0x3c75
	.uleb128 0xd
	.long	0x3c9a
	.long	0x1936
	.uleb128 0xe
	.long	0x177
	.byte	0x2f
	.byte	0x0
	.uleb128 0x7
	.long	0x3c8a
	.uleb128 0x21
	.string	"flag_verbose"
	.byte	0x1
	.byte	0x5e
	.long	0x109
	.byte	0x5
	.byte	0x3
	.long	flag_verbose
	.uleb128 0x21
	.string	"flag_strict"
	.byte	0x1
	.byte	0x62
	.long	0x109
	.byte	0x5
	.byte	0x3
	.long	flag_strict
	.uleb128 0x21
	.string	"status_allocation_failed"
	.byte	0x1
	.byte	0xd6
	.long	0x4fe
	.byte	0x5
	.byte	0x3
	.long	status_allocation_failed
	.uleb128 0xd
	.long	0x3d08
	.long	0x199
	.uleb128 0xe
	.long	0x177
	.byte	0x19
	.byte	0x0
	.uleb128 0x15
	.string	"builtin_type_names"
	.byte	0x1
	.value	0xa04
	.long	0x3d29
	.byte	0x5
	.byte	0x3
	.long	builtin_type_names
	.uleb128 0x7
	.long	0x3cf8
	.uleb128 0x15
	.string	"java_builtin_type_names"
	.byte	0x1
	.value	0xa25
	.long	0x3d54
	.byte	0x5
	.byte	0x3
	.long	java_builtin_type_names
	.uleb128 0x7
	.long	0x3cf8
	.uleb128 0x22
	.string	"stderr"
	.byte	0x5
	.byte	0x90
	.long	0x476
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x6f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3d6a
	.long	0x399e
	.string	"cplus_demangle_v3"
	.long	0x3a38
	.string	"java_demangle_v3"
	.long	0x3b90
	.string	"is_gnu_v3_mangled_ctor"
	.long	0x3bf8
	.string	"is_gnu_v3_mangled_dtor"
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
.LASF16:
	.string	"num_args"
.LASF5:
	.string	"name"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"next"
.LASF24:
	.string	"return_value"
.LASF11:
	.string	"old_arg_list"
.LASF7:
	.string	"substitution_start"
.LASF9:
	.string	"arg_list"
.LASF8:
	.string	"start_position"
.LASF6:
	.string	"result"
.LASF21:
	.string	"is_substitution_candidate"
.LASF14:
	.string	"cv_qualifiers"
.LASF22:
	.string	"type_name"
.LASF15:
	.string	"status"
.LASF19:
	.string	"type_arg"
.LASF10:
	.string	"encode_return_type"
.LASF18:
	.string	"number"
.LASF12:
	.string	"peek"
.LASF4:
	.string	"template_p"
.LASF23:
	.string	"demangled"
.LASF2:
	.string	"length"
.LASF17:
	.string	"is_signed"
.LASF1:
	.string	"_IO_FILE"
.LASF13:
	.string	"suppress_return_type"
.LASF20:
	.string	"insert_pos"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
