	.file	"dbxout.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	have_used_extensions
	.comm	have_used_extensions,4,4
	.data
	.align 4
	.type	source_label_number, @object
	.size	source_label_number, 4
source_label_number:
	.long	1
.globl dbx_debug_hooks
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	dbx_debug_hooks, @object
	.size	dbx_debug_hooks, 80
dbx_debug_hooks:
	.long	dbxout_init
	.long	dbxout_finish
	.long	debug_nothing_int_charstar
	.long	debug_nothing_int_charstar
	.long	dbxout_start_source_file
	.long	dbxout_end_source_file
	.long	dbxout_begin_block
	.long	dbxout_end_block
	.long	debug_true_tree
	.long	dbxout_source_line
	.long	dbxout_source_line
	.long	debug_nothing_int_charstar
	.long	debug_nothing_int_charstar
	.long	dbxout_begin_function
	.long	debug_nothing_int
	.long	dbxout_function_decl
	.long	dbxout_global_decl
	.long	debug_nothing_tree
	.long	debug_nothing_tree
	.long	debug_nothing_rtx
	.local	scope_labelno.13161
	.comm	scope_labelno.13161,4,4
	.section	.rodata
.LC0:
	.string	"Lscope"
.LC1:
	.string	"$"
.LC2:
	.string	"*%s%s%ld"
.LC3:
	.string	"%s%s%d:\n"
.LC4:
	.string	"\t.stabs\t"
.LC5:
	.string	" #.stabs\t"
.LC6:
	.string	"%s\"\",%d,0,0,"
	.text
	.type	dbxout_function_end, @function
dbxout_function_end:
.LFB15:
	.file 1 "../../../kgccfe/gnu/dbxout.c"
	.loc 1 401 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$148, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 401 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 407 0
	movl	scope_labelno.13161@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 408 0
	movl	scope_labelno.13161@GOTOFF(%ebx), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 16(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 409 0
	movl	scope_labelno.13161@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, scope_labelno.13161@GOTOFF(%ebx)
	.loc 1 416 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L2
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -124(%ebp)
	jmp	.L4
.L2:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
.L4:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$36, 12(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 417 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 418 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	.loc 1 419 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L5
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L7
.L5:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -120(%ebp)
.L7:
	movl	-120(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 420 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 422 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L9
	call	__stack_chk_fail_local
.L9:
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	dbxout_function_end, .-dbxout_function_end
	.section	.rodata
.LC7:
	.string	"Ltext"
.LC8:
	.string	"/"
.LC9:
	.string	",%d,0,0,"
.LC10:
	.string	"gcc2_compiled."
.LC11:
	.string	"%s\"%s\",%d,0,0,0\n"
	.text
	.type	dbxout_init, @function
dbxout_init:
.LFB16:
	.loc 1 431 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%edi
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$160, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
	.loc 1 431 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 433 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	240(%eax), %eax
	call	*%eax
	movl	%eax, -116(%ebp)
	.loc 1 435 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, asmfile@GOTOFF(%ebx)
	.loc 1 437 0
	movl	$100, typevec_len@GOTOFF(%ebx)
	.loc 1 438 0
	movl	typevec_len@GOTOFF(%ebx), %eax
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 443 0
	movl	$0, 16(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 448 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 451 0
	movl	cwd@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L13
	call	getpwd@PLT
	movl	%eax, cwd@GOTOFF(%ebx)
	movl	cwd@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L13
	movl	cwd@GOTOFF(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L16
	movl	cwd@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -148(%ebp)
	movl	$0, %eax
	cld
	movl	-148(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	cwd@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L13
.L16:
	.loc 1 452 0
	movl	cwd@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat@PLT
	movl	%eax, cwd@GOTOFF(%ebx)
.L13:
	.loc 1 453 0
	movl	cwd@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 458 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -144(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L19
	leal	.LC4@GOTOFF(%ebx), %edi
	movl	%edi, -140(%ebp)
	jmp	.L21
.L19:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -140(%ebp)
.L21:
	movl	-144(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 459 0
	movl	cwd@GOTOFF(%ebx), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_quoted_string@PLT
	.loc 1 460 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$100, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 461 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 462 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L11:
	.loc 1 475 0
	movl	asmfile@GOTOFF(%ebx), %edi
	movl	%edi, -136(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L22
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	jmp	.L24
.L22:
	leal	.LC5@GOTOFF(%ebx), %edi
	movl	%edi, -132(%ebp)
.L24:
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %edi
	movl	%edi, (%esp)
	call	fputs@PLT
	.loc 1 476 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_quoted_string@PLT
	.loc 1 477 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$100, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 478 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 479 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 480 0
	call	text_section@PLT
	.loc 1 481 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$0, 16(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 488 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L25
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
	jmp	.L27
.L25:
	leal	.LC5@GOTOFF(%ebx), %edi
	movl	%edi, -128(%ebp)
.L27:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$60, 16(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 492 0
	movl	-124(%ebp), %eax
	movl	%eax, lastfile@GOTOFF(%ebx)
	.loc 1 494 0
	movl	$1, next_type_number@GOTOFF(%ebx)
	.loc 1 497 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, current_file@GOTOFF(%ebx)
	.loc 1 498 0
	movl	current_file@GOTOFF(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 499 0
	movl	current_file@GOTOFF(%ebx), %eax
	movl	$0, 4(%eax)
	.loc 1 500 0
	movl	current_file@GOTOFF(%ebx), %eax
	movl	$1, 8(%eax)
	.loc 1 501 0
	movl	$1, next_file_number@GOTOFF(%ebx)
	.loc 1 514 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	60(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	.loc 1 515 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	.loc 1 521 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_typedefs
	.loc 1 522 0
	movl	-12(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L29
	call	__stack_chk_fail_local
.L29:
	addl	$160, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	dbxout_init, .-dbxout_init
	.type	dbxout_typedefs, @function
dbxout_typedefs:
.LFB17:
	.loc 1 530 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$36, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 531 0
	cmpl	$0, 8(%ebp)
	je	.L38
	.loc 1 533 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_typedefs
	.loc 1 534 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L38
.LBB2:
	.loc 1 536 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 537 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L38
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L38
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L38
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L38
	.loc 1 541 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
.L38:
.LBE2:
	.loc 1 544 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	dbxout_typedefs, .-dbxout_typedefs
	.section	.rodata
.LC12:
	.string	",%d,0,0,0\n"
	.text
	.type	dbxout_start_source_file, @function
dbxout_start_source_file:
.LFB18:
	.loc 1 552 0
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
	.loc 1 554 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 556 0
	movl	current_file@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 557 0
	movl	next_file_number@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	leal	1(%edx), %eax
	movl	%eax, next_file_number@GOTOFF(%ebx)
	.loc 1 558 0
	movl	-8(%ebp), %eax
	movl	$1, 8(%eax)
	.loc 1 559 0
	movl	-8(%ebp), %eax
	movl	%eax, current_file@GOTOFF(%ebx)
	.loc 1 560 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L40
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L42
.L40:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L42:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 561 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_quoted_string@PLT
	.loc 1 562 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$130, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 564 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	dbxout_start_source_file, .-dbxout_start_source_file
	.section	.rodata
.LC13:
	.string	"\t.stabn\t"
.LC14:
	.string	" #.stabn\t"
.LC15:
	.string	"%s%d,0,0,0\n"
	.text
	.type	dbxout_end_source_file, @function
dbxout_end_source_file:
.LFB19:
	.loc 1 571 0
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
	.loc 1 575 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L45
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L47
.L45:
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L47:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$162, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 576 0
	movl	current_file@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 577 0
	movl	current_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 578 0
	movl	-8(%ebp), %eax
	movl	%eax, current_file@GOTOFF(%ebx)
	.loc 1 580 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	dbxout_end_source_file, .-dbxout_end_source_file
	.type	dbxout_source_file, @function
dbxout_source_file:
.LFB20:
	.loc 1 589 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$148, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -124(%ebp)
	.loc 1 589 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 590 0
	cmpl	$0, -124(%ebp)
	je	.L61
	movl	lastfile@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L52
	movl	lastfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L61
.L52:
.LBB3:
	.loc 1 597 0
	movl	source_label_number@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 599 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L54
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
	jmp	.L56
.L54:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -128(%ebp)
.L56:
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 600 0
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	output_quoted_string@PLT
	.loc 1 601 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$132, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 602 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 603 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 604 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L57
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L57
	jmp	.L60
.L57:
	.loc 1 608 0
	call	text_section@PLT
.L60:
	.loc 1 609 0
	movl	source_label_number@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 610 0
	movl	source_label_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, source_label_number@GOTOFF(%ebx)
	.loc 1 612 0
	movl	-124(%ebp), %eax
	movl	%eax, lastfile@GOTOFF(%ebx)
.L61:
.LBE3:
	.loc 1 614 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L62
	call	__stack_chk_fail_local
.L62:
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	dbxout_source_file, .-dbxout_source_file
	.data
	.align 4
	.type	sym_lineno.13368, @object
	.size	sym_lineno.13368, 4
sym_lineno.13368:
	.long	1
	.section	.rodata
.LC16:
	.string	"LM"
.LC17:
	.string	"\t.stabn 68,0,%d,"
	.text
	.type	dbxout_source_line, @function
dbxout_source_line:
.LFB21:
	.loc 1 623 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$308, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -280(%ebp)
	.loc 1 623 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 624 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dbxout_source_file
.LBB4:
	.loc 1 627 0
	movl	sym_lineno.13368@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L64
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L66
.L64:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -284(%ebp)
.L66:
	movl	-284(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	movl	sym_lineno.13368@GOTOFF(%ebx), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 16(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	sym_lineno.13368@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, sym_lineno.13368@GOTOFF(%ebx)
.LBE4:
	.loc 1 631 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L68
	call	__stack_chk_fail_local
.L68:
	addl	$308, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	dbxout_source_line, .-dbxout_source_line
	.section	.rodata
.LC18:
	.string	"LBB"
	.text
	.type	dbxout_begin_block, @function
dbxout_begin_block:
.LFB22:
	.loc 1 639 0
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
	.loc 1 640 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 641 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	dbxout_begin_block, .-dbxout_begin_block
	.section	.rodata
.LC19:
	.string	"LBE"
	.text
	.type	dbxout_end_block, @function
dbxout_end_block:
.LFB23:
	.loc 1 649 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 650 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 651 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	dbxout_end_block, .-dbxout_end_block
	.type	dbxout_function_decl, @function
dbxout_function_decl:
.LFB24:
	.loc 1 662 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$20, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 666 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_block
	.loc 1 670 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L80
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L76
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L76
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L80
.L76:
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	testb	%al, %al
	je	.L80
	.loc 1 675 0
	call	dbxout_function_end
.L80:
	.loc 1 676 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	dbxout_function_decl, .-dbxout_function_decl
	.type	dbxout_global_decl, @function
dbxout_global_decl:
.LFB25:
	.loc 1 685 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$20, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 686 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L86
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L86
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L86
	.loc 1 689 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
.L86:
	.loc 1 690 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	dbxout_global_decl, .-dbxout_global_decl
	.section	.rodata
	.align 4
.LC20:
	.string	"\t.text\n\t.stabs \"\",%d,0,0,%LLetext\n%LLetext:\n"
	.text
	.type	dbxout_finish, @function
dbxout_finish:
.LFB26:
	.loc 1 699 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$20, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 701 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$100, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	asm_fprintf@PLT
	.loc 1 703 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	dbxout_finish, .-dbxout_finish
	.section	.rodata
	.type	__FUNCTION__.13446, @object
	.size	__FUNCTION__.13446, 20
__FUNCTION__.13446:
	.string	"dbxout_fptype_value"
.LC21:
	.string	"../../../kgccfe/gnu/dbxout.c"
	.text
	.type	dbxout_fptype_value, @function
dbxout_fptype_value:
.LFB27:
	.loc 1 725 0
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
	.loc 1 726 0
	movb	$48, -5(%ebp)
	.loc 1 727 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 729 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L90
	.loc 1 731 0
	cmpl	$15, -12(%ebp)
	jne	.L92
	.loc 1 732 0
	movb	$49, -5(%ebp)
	jmp	.L100
.L92:
	.loc 1 733 0
	cmpl	$16, -12(%ebp)
	jne	.L95
	.loc 1 734 0
	movb	$50, -5(%ebp)
	jmp	.L100
.L95:
	.loc 1 735 0
	cmpl	$18, -12(%ebp)
	je	.L97
	cmpl	$17, -12(%ebp)
	jne	.L99
.L97:
	.loc 1 736 0
	movb	$54, -5(%ebp)
	.loc 1 735 0
	jmp	.L100
.L99:
	.loc 1 739 0
	movb	$49, -5(%ebp)
	jmp	.L100
.L90:
	.loc 1 741 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L101
	.loc 1 743 0
	cmpl	$21, -12(%ebp)
	jne	.L103
	.loc 1 744 0
	movb	$51, -5(%ebp)
	jmp	.L100
.L103:
	.loc 1 745 0
	cmpl	$22, -12(%ebp)
	jne	.L106
	.loc 1 746 0
	movb	$52, -5(%ebp)
	jmp	.L100
.L106:
	.loc 1 747 0
	cmpl	$24, -12(%ebp)
	je	.L108
	cmpl	$23, -12(%ebp)
	jne	.L110
.L108:
	.loc 1 748 0
	movb	$53, -5(%ebp)
	.loc 1 747 0
	jmp	.L100
.L110:
	.loc 1 751 0
	movb	$51, -5(%ebp)
	jmp	.L100
.L101:
	.loc 1 754 0
	leal	__FUNCTION__.13446@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$754, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L100:
	.loc 1 756 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movzbl	-5(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	putc_unlocked@PLT
	.loc 1 757 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 758 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	dbxout_fptype_value, .-dbxout_fptype_value
	.section	.rodata
.LC22:
	.string	"(%d,%d)"
	.text
	.type	dbxout_type_index, @function
dbxout_type_index:
.LFB28:
	.loc 1 765 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 770 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 771 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 772 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$9, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 774 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	dbxout_type_index, .-dbxout_type_index
	.section	.rodata
.LC23:
	.string	"\\\\"
.LC24:
	.string	"%s\""
	.text
	.type	dbxout_continue, @function
dbxout_continue:
.LFB29:
	.loc 1 785 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$20, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 789 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 791 0
	movl	$0, (%esp)
	call	dbxout_finish_symbol
	.loc 1 792 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L115
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L117
.L115:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L117:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 793 0
	movl	$0, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 794 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	dbxout_continue, .-dbxout_continue
	.section	.rodata
.LC25:
	.string	"%s:"
.LC26:
	.string	":%s;"
.LC27:
	.string	",0,0;"
	.text
	.type	dbxout_type_fields, @function
dbxout_type_fields:
.LFB30:
	.loc 1 804 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$52, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 809 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L120
.L121:
	.loc 1 812 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L122
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L124
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	bit_position@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L122
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L122
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L122
.L124:
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L122
	.loc 1 823 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L122
	.loc 1 827 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L130
	.loc 1 828 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	cmpl	$1500, %eax
	jle	.L130
	call	dbxout_continue
.L130:
	.loc 1 830 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L133
	.loc 1 832 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 833 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L135
.L133:
	.loc 1 837 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	fputc@PLT
	.loc 1 838 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L135:
	.loc 1 841 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L136
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L138
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L138
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L136
.L138:
	.loc 1 845 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 846 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	putc_unlocked@PLT
	.loc 1 847 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L141
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L143
	movl	$49, -28(%ebp)
	jmp	.L145
.L143:
	movl	$50, -28(%ebp)
.L145:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L146
.L141:
	movl	$48, -32(%ebp)
.L146:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 850 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L136:
	.loc 1 853 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L147
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L147
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L150
.L147:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L150:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 857 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L151
	.loc 1 859 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L153
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L153
.LBB5:
	.loc 1 861 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 863 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 864 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 865 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 859 0
	jmp	.L122
.L153:
.LBE5:
	.loc 1 870 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 871 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L122
.L151:
	.loc 1 876 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 877 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 878 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 879 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 880 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 881 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$3, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L122:
	.loc 1 809 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L120:
	cmpl	$0, -12(%ebp)
	jne	.L121
	.loc 1 885 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	dbxout_type_fields, .-dbxout_type_fields
	.section	.rodata
.LC28:
	.string	":%s;%c%c%c"
	.text
	.type	dbxout_type_method_1, @function
dbxout_type_method_1:
.LFB31:
	.loc 1 896 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$64, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 897 0
	movb	$65, -10(%ebp)
	.loc 1 899 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L160
	.loc 1 900 0
	movb	$63, -9(%ebp)
	jmp	.L162
.L160:
.LBB6:
	.loc 1 903 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 908 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L163
	.loc 1 909 0
	addb	$1, -10(%ebp)
.L163:
	.loc 1 910 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L165
	.loc 1 911 0
	addb	$2, -10(%ebp)
.L165:
	.loc 1 913 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L167
	.loc 1 914 0
	movb	$42, -9(%ebp)
	jmp	.L162
.L167:
	.loc 1 916 0
	movb	$46, -9(%ebp)
.L162:
.LBE6:
	.loc 1 919 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -40(%ebp)
	movzbl	-10(%ebp), %ecx
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L169
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L171
	movl	$49, -28(%ebp)
	jmp	.L173
.L171:
	movl	$50, -28(%ebp)
.L173:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L174
.L169:
	movl	$48, -32(%ebp)
.L174:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-40(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 922 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	20(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	(%esi,%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$6, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 925 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L178
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L178
	.loc 1 927 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 928 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 929 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 930 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 931 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	fputc@PLT
	.loc 1 932 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L178:
	.loc 1 934 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	dbxout_type_method_1, .-dbxout_type_method_1
	.section	.rodata
.LC29:
	.string	"%d"
.LC30:
	.string	"%s::"
	.text
	.type	dbxout_type_methods, @function
dbxout_type_methods:
.LFB32:
	.loc 1 942 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$84, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 942 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 944 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 951 0
	cmpl	$0, -56(%ebp)
	je	.L203
	.loc 1 954 0
	movl	-72(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 974 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 976 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 978 0
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	je	.L182
	.loc 1 979 0
	movl	-56(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L205
.L182:
	.loc 1 980 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L185
	.loc 1 981 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L205
.L185:
	.loc 1 983 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 985 0
	jmp	.L205
.L188:
.LBB7:
	.loc 1 987 0
	movl	$1, -36(%ebp)
	.loc 1 991 0
	movl	$0, -44(%ebp)
	.loc 1 992 0
	jmp	.L189
.L190:
.LBB8:
	.loc 1 1005 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L191
	.loc 1 1008 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1010 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	cmpl	$1500, %eax
	jle	.L193
	call	dbxout_continue
.L193:
	.loc 1 1012 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1016 0
	movl	-48(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L191
	movl	-48(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L191
	.loc 1 1021 0
	cmpl	$0, -36(%ebp)
	je	.L197
.LBB9:
	.loc 1 1023 0
	movl	-48(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1024 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1025 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1026 0
	movl	$0, -36(%ebp)
.L197:
.LBE9:
	.loc 1 1029 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1031 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_method_1
.L191:
.LBE8:
	.loc 1 993 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L189:
	.loc 1 992 0
	cmpl	$0, -48(%ebp)
	je	.L199
	cmpl	$0, -44(%ebp)
	je	.L190
	movl	-48(%ebp), %eax
	movl	52(%eax), %edx
	movl	-44(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	je	.L190
.L199:
	.loc 1 1033 0
	cmpl	$0, -36(%ebp)
	jne	.L187
	.loc 1 1035 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1036 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L187:
.L205:
.LBE7:
	.loc 1 985 0
	cmpl	$0, -48(%ebp)
	jne	.L188
.L203:
	.loc 1 1039 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L204
	call	__stack_chk_fail_local
.L204:
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	dbxout_type_methods, .-dbxout_type_methods
	.section	.rodata
.LC31:
	.string	";0"
.LC32:
	.string	";-1;"
	.text
	.type	dbxout_range_type, @function
dbxout_range_type:
.LFB33:
	.loc 1 1048 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$20, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1049 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	fputc@PLT
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L207
	.loc 1 1051 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	jmp	.L209
.L207:
	.loc 1 1052 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L210
	.loc 1 1053 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	jmp	.L209
.L210:
	.loc 1 1068 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L212
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	jmp	.L209
.L212:
	.loc 1 1071 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
.L209:
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L214
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L214
	.loc 1 1077 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1078 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1079 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1074 0
	jmp	.L217
.L214:
	.loc 1 1083 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1084 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L217:
	.loc 1 1087 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L218
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L218
	.loc 1 1090 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1091 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1092 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1093 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1094 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1087 0
	jmp	.L222
.L218:
	.loc 1 1098 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1099 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$4, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L222:
	.loc 1 1101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	dbxout_range_type, .-dbxout_range_type
	.section	.rodata
	.type	__FUNCTION__.13854, @object
	.size	__FUNCTION__.13854, 12
__FUNCTION__.13854:
	.string	"dbxout_type"
	.local	anonymous_type_number.13819
	.comm	anonymous_type_number.13819,4,4
.LC33:
	.string	";0;127;"
.LC34:
	.string	"@s%d;"
.LC35:
	.string	";0;"
.LC36:
	.string	"@s"
.LC37:
	.string	";-20;"
.LC38:
	.string	";0;%d;"
.LC39:
	.string	";-16;"
.LC40:
	.string	"eFalse:0,True:1,;"
.LC41:
	.string	"real:"
.LC42:
	.string	",0,%d;"
.LC43:
	.string	"imag:"
.LC44:
	.string	",%d,%d;;"
.LC45:
	.string	"@S;"
.LC46:
	.string	";@S;S"
.LC47:
	.string	"ar"
.LC48:
	.string	";0;-1;"
.LC49:
	.string	"xs"
.LC50:
	.string	"xu"
.LC51:
	.string	"$$%d"
.LC52:
	.string	"!%d,"
.LC53:
	.string	"GNU C++"
.LC54:
	.string	"xe"
	.text
	.type	dbxout_type, @function
dbxout_type:
.LFB34:
	.loc 1 1117 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%edi
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$112, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$10, %al
	jne	.L224
	.loc 1 1125 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L224:
	.loc 1 1130 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L226
	.loc 1 1131 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L228
.L226:
	.loc 1 1134 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L228
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L228
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L228
	.loc 1 1137 0
	movl	$0, 12(%ebp)
.L228:
	.loc 1 1141 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L232
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L232
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L232
	.loc 1 1143 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1141 0
	jmp	.L236
.L232:
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
.L236:
	.loc 1 1149 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L237
	.loc 1 1150 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%ebp)
.L237:
	.loc 1 1152 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L239
	.loc 1 1155 0
	movl	next_type_number@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	leal	1(%edx), %eax
	movl	%eax, next_type_number@GOTOFF(%ebx)
	.loc 1 1159 0
	movl	next_type_number@GOTOFF(%ebx), %edx
	movl	typevec_len@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L241
	.loc 1 1161 0
	movl	typevec_len@GOTOFF(%ebx), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1164 0
	movl	typevec_len@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	movl	typevec_len@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 1166 0
	movl	typevec_len@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, typevec_len@GOTOFF(%ebx)
.L241:
	.loc 1 1170 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	current_file@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 1172 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	current_file@GOTOFF(%ebx), %ecx
	movl	8(%ecx), %eax
	movl	%eax, 8(%edx)
	addl	$1, %eax
	movl	%eax, 8(%ecx)
.L239:
	.loc 1 1178 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1188 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	cmpl	$1, -92(%ebp)
	je	.L245
	cmpl	$1, -92(%ebp)
	jb	.L243
	cmpl	$2, -92(%ebp)
	je	.L408
	jmp	.L243
.L245:
	.loc 1 1197 0
	cmpl	$0, 12(%ebp)
	je	.L408
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L408
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L243
	.loc 1 1200 0
	jmp	.L408
.L243:
	.loc 1 1233 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	fputc@PLT
	.loc 1 1234 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1239 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$2, (%eax)
	.loc 1 1244 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jle	.L252
	.loc 1 1246 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$107, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1247 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1248 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L254
	movl	$2, -88(%ebp)
	jmp	.L256
.L254:
	movl	$0, -88(%ebp)
.L256:
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1249 0
	jmp	.L408
.L252:
	.loc 1 1251 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jle	.L257
	.loc 1 1253 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$66, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1254 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1255 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1256 0
	jmp	.L408
.L257:
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L259
	.loc 1 1261 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	64(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1262 0
	jmp	.L408
.L259:
	.loc 1 1266 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$6, %eax
	movl	%eax, -96(%ebp)
	cmpl	$19, -96(%ebp)
	ja	.L261
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	.L278@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L278:
	.long	.L262@GOTOFF
	.long	.L263@GOTOFF
	.long	.L264@GOTOFF
	.long	.L265@GOTOFF
	.long	.L261@GOTOFF
	.long	.L266@GOTOFF
	.long	.L267@GOTOFF
	.long	.L268@GOTOFF
	.long	.L269@GOTOFF
	.long	.L270@GOTOFF
	.long	.L271@GOTOFF
	.long	.L272@GOTOFF
	.long	.L273@GOTOFF
	.long	.L274@GOTOFF
	.long	.L275@GOTOFF
	.long	.L276@GOTOFF
	.long	.L276@GOTOFF
	.long	.L276@GOTOFF
	.long	.L277@GOTOFF
	.long	.L262@GOTOFF
	.text
.L262:
	.loc 1 1275 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1276 0
	jmp	.L408
.L263:
	.loc 1 1279 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L279
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L279
	.loc 1 1286 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	fputc@PLT
	.loc 1 1287 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1288 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1289 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1290 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$7, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1279 0
	jmp	.L408
.L279:
	.loc 1 1295 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L283
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L283
	.loc 1 1301 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L286
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L286
	.loc 1 1304 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1305 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1306 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L286:
	.loc 1 1309 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_range_type
	.loc 1 1295 0
	jmp	.L408
.L283:
	.loc 1 1317 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L289
	.loc 1 1320 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1321 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1322 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L289:
	.loc 1 1337 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L292
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L292
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L292
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L292
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L292
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L298
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L300
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L298
.L300:
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	$64, %eax
	jg	.L298
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	$64, %ax
	jne	.L292
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L292
.L298:
	.loc 1 1350 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	fputc@PLT
	.loc 1 1351 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1352 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1353 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	fputc@PLT
	.loc 1 1354 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1355 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	print_int_cst_octal
	.loc 1 1356 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	fputc@PLT
	.loc 1 1357 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	print_int_cst_octal
	.loc 1 1359 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	fputc@PLT
	.loc 1 1360 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1337 0
	jmp	.L408
.L292:
	.loc 1 1365 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_range_type
	.loc 1 1368 0
	jmp	.L408
.L264:
	.loc 1 1373 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	fputc@PLT
	.loc 1 1374 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1375 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1376 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1377 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1378 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1379 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1380 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$3, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1381 0
	jmp	.L408
.L268:
	.loc 1 1384 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L304
	.loc 1 1386 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1387 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1388 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1389 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1390 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1391 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$4, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L408
.L304:
	.loc 1 1397 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$114, (%esp)
	call	fputc@PLT
	.loc 1 1398 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1399 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1400 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L307
	movl	$255, -84(%ebp)
	jmp	.L309
.L307:
	movl	$127, -84(%ebp)
.L309:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1401 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$7, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1403 0
	jmp	.L408
.L267:
	.loc 1 1406 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L310
	.loc 1 1408 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1409 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1410 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1411 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1412 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1413 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$4, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L408
.L310:
	.loc 1 1417 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1418 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$17, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1420 0
	jmp	.L408
.L273:
	.loc 1 1423 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1424 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1425 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1426 0
	jmp	.L408
.L265:
	.loc 1 1431 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L313
	.loc 1 1433 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$82, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1434 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1435 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_fptype_value
	.loc 1 1436 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1437 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1438 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1439 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1440 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$3, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L408
.L313:
	.loc 1 1446 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$115, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1447 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1448 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1449 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1450 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1452 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1454 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$7, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1455 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1456 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1457 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1458 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1460 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$10, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1462 0
	jmp	.L408
.L275:
	.loc 1 1465 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L316
	.loc 1 1467 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1468 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1469 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1470 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1471 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1472 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L316
	.loc 1 1478 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1479 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$3, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L316:
	.loc 1 1482 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$83, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1483 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1484 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1485 0
	jmp	.L408
.L274:
	.loc 1 1489 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L319
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L319
	.loc 1 1491 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1492 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1493 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1494 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1495 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1496 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1497 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1498 0
	jmp	.L408
.L319:
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L322
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L322
	.loc 1 1509 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1510 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1511 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$3, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L322:
	.loc 1 1513 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1514 0
	cmpl	$0, -28(%ebp)
	jne	.L325
	.loc 1 1516 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1517 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1518 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_type_index
	.loc 1 1519 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1520 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$6, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L327
.L325:
	.loc 1 1524 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$97, (%esp)
	call	fputc@PLT
	.loc 1 1525 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1526 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_range_type
.L327:
	.loc 1 1529 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1530 0
	jmp	.L408
.L276:
.LBB10:
	.loc 1 1536 0
	movl	$0, -16(%ebp)
	.loc 1 1538 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L328
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L328
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L328
	.loc 1 1541 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
.L328:
	.loc 1 1545 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L332
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L334
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L332
.L334:
	cmpl	$0, 12(%ebp)
	je	.L336
.L332:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L336
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L338
.L336:
	.loc 1 1560 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L339
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L341
.L339:
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
.L341:
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1561 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1569 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 1570 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_name
	jmp	.L344
.L342:
	.loc 1 1573 0
	movl	anonymous_type_number.13819@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	addl	$1, %eax
	movl	%eax, anonymous_type_number.13819@GOTOFF(%ebx)
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	%edx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1574 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L344:
	.loc 1 1577 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	fputc@PLT
	.loc 1 1578 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1579 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 1580 0
	jmp	.L408
.L338:
	.loc 1 1584 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L345
	movl	$115, -68(%ebp)
	jmp	.L347
.L345:
	movl	$117, -68(%ebp)
.L347:
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1585 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1586 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1588 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L348
	.loc 1 1590 0
	cmpl	$0, -16(%ebp)
	je	.L348
	.loc 1 1592 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1593 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1594 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$8, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L348:
	.loc 1 1597 0
	movl	$0, -20(%ebp)
	jmp	.L351
.L352:
.LBB11:
	.loc 1 1599 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1601 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L353
	.loc 1 1603 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1604 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L355
	movl	$49, -60(%ebp)
	jmp	.L357
.L355:
	movl	$48, -60(%ebp)
.L357:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1605 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L358
	movl	$50, -52(%ebp)
	jmp	.L360
.L358:
	movl	$48, -52(%ebp)
.L360:
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1606 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1607 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L361
	movl	lang_hooks@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L361
	.loc 1 1611 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1607 0
	jmp	.L364
.L361:
	.loc 1 1614 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
.L364:
	.loc 1 1616 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1617 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1618 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1619 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1620 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L365
.L353:
	.loc 1 1626 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_type_name
	.loc 1 1627 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1628 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1629 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dbxout_type
	.loc 1 1630 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1631 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1632 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1634 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1635 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1636 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1639 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1640 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L365:
.LBE11:
	.loc 1 1597 0
	addl	$1, -20(%ebp)
.L351:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L352
.LBE10:
	.loc 1 1646 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_fields
	.loc 1 1647 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L367
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L367
	.loc 1 1649 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1650 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_methods
.L367:
	.loc 1 1653 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1654 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1656 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L408
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L408
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L408
	.loc 1 1660 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1663 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$126, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1664 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1670 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L374
	.loc 1 1672 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$37, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1673 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	108(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
.L374:
	.loc 1 1677 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1678 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1680 0
	jmp	.L408
.L266:
	.loc 1 1686 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L376
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L378
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L376
.L378:
	cmpl	$0, 12(%ebp)
	je	.L380
.L376:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L381
.L380:
	.loc 1 1692 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1693 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1694 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type_name
	.loc 1 1695 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	typevec@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 1696 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$58, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1697 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1698 0
	jmp	.L408
.L381:
	.loc 1 1703 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L382
	movl	8(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L382
	.loc 1 1706 0
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1707 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$5, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L382:
	.loc 1 1710 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$101, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1711 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1712 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L385
.L386:
	.loc 1 1714 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1715 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1716 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L387
	.loc 1 1717 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	jmp	.L389
.L387:
	.loc 1 1718 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L390
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	testl	%edx, %edx
	jns	.L390
	.loc 1 1720 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_wide_int
	.loc 1 1718 0
	jmp	.L389
.L390:
	.loc 1 1722 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	print_int_cst_octal
.L389:
	.loc 1 1724 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1725 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1726 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L393
	.loc 1 1727 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	cmpl	$1500, %eax
	jle	.L393
	call	dbxout_continue
.L393:
	.loc 1 1712 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L385:
	cmpl	$0, -28(%ebp)
	jne	.L386
	.loc 1 1730 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1731 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1733 0
	jmp	.L408
.L269:
	.loc 1 1736 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1737 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1738 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1739 0
	jmp	.L408
.L272:
	.loc 1 1742 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L397
	.loc 1 1744 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1745 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1746 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1749 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1750 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1751 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1752 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1753 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_args
	.loc 1 1754 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1755 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	jmp	.L408
.L397:
	.loc 1 1759 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1760 0
	jmp	.L408
.L270:
	.loc 1 1763 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L400
	.loc 1 1765 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
	.loc 1 1766 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1767 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1768 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1769 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1770 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1771 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	jmp	.L408
.L400:
	.loc 1 1775 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1776 0
	jmp	.L408
.L271:
	.loc 1 1779 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L403
	.loc 1 1780 0
	movl	$1, have_used_extensions@GOTOFF(%ebx)
.L403:
	.loc 1 1781 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L405
	movl	$38, -44(%ebp)
	jmp	.L407
.L405:
	movl	$42, -44(%ebp)
.L407:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1782 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1783 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1784 0
	jmp	.L408
.L277:
	.loc 1 1787 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$102, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1788 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1789 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 1790 0
	jmp	.L408
.L261:
	.loc 1 1793 0
	leal	__FUNCTION__.13854@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1793, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L408:
	.loc 1 1795 0
	addl	$112, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	dbxout_type, .-dbxout_type
	.section	.rodata
.LC55:
	.string	"%o%01o"
	.text
	.type	print_int_cst_octal, @function
print_int_cst_octal:
.LFB35:
	.loc 1 1803 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%edi
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$76, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1804 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1805 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1806 0
	movl	$2, -24(%ebp)
	.loc 1 1807 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1812 0
	cmpl	$128, -20(%ebp)
	je	.L410
	.loc 1 1814 0
	cmpl	$64, -20(%ebp)
	jbe	.L412
	.loc 1 1815 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L424
	movl	%eax, %edx
	xorl	%eax, %eax
.L424:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L410
.L412:
	.loc 1 1816 0
	cmpl	$64, -20(%ebp)
	jne	.L414
	.loc 1 1817 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L410
.L414:
	.loc 1 1819 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L423
	movl	%eax, %edx
	xorl	%eax, %eax
.L423:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L410:
	.loc 1 1821 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	fputc@PLT
	.loc 1 1822 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1824 0
	cmpl	$3, -24(%ebp)
	jne	.L416
	.loc 1 1826 0
	movl	$21, 8(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_octal
	.loc 1 1827 0
	movl	$21, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_octal
	jmp	.L419
.L416:
.LBB12:
	.loc 1 1831 0
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L420
	movl	%edx, %eax
	xorl	%edx, %edx
.L420:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 1834 0
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L421
	movl	%eax, %edx
	xorl	%eax, %eax
.L421:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	andl	-64(%ebp), %eax
	movl	%edi, %edx
	andl	-60(%ebp), %edx
	movl	$3, %ecx
	subl	-24(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L422
	movl	%esi, %edi
	xorl	%esi, %esi
.L422:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	%edi, %eax
	orl	%edx, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1838 0
	movl	-56(%ebp), %eax
	andb	$255, %ah
	movl	%eax, -32(%ebp)
	movl	-52(%ebp), %eax
	andl	$2147483647, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1840 0
	movl	-40(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1841 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1842 0
	movl	$21, 8(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	print_octal
.L419:
.LBE12:
	.loc 1 1844 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	print_int_cst_octal, .-print_int_cst_octal
	.section	.rodata
.LC56:
	.string	"%01o"
	.text
	.type	print_octal, @function
print_octal:
.LFB36:
	.loc 1 1850 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$52, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1853 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L426
.L427:
	.loc 1 1854 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%eax,%edx), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L430
	movl	%edx, %eax
	xorl	%edx, %edx
.L430:
	andl	$7, %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1853 0
	subl	$1, -12(%ebp)
.L426:
	cmpl	$0, -12(%ebp)
	jns	.L427
	.loc 1 1856 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	16(%ebp), %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1857 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	print_octal, .-print_octal
	.section	.rodata
.LC57:
	.string	"%lld"
.globl __divdi3
	.text
	.type	print_wide_int, @function
print_wide_int:
.LFB37:
	.loc 1 1864 0
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
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1865 0
	movl	$0, -12(%ebp)
	.loc 1 1867 0
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1869 0
	cmpl	$0, -28(%ebp)
	jns	.L434
	.loc 1 1870 0
	addl	$1, -12(%ebp)
	negl	-32(%ebp)
	adcl	$0, -28(%ebp)
	negl	-28(%ebp)
	.loc 1 1872 0
	jmp	.L434
.L435:
	.loc 1 1873 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$10, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L434:
	.loc 1 1872 0
	cmpl	$0, -28(%ebp)
	jg	.L435
	cmpl	$0, -28(%ebp)
	js	.L437
	cmpl	$0, -32(%ebp)
	ja	.L435
.L437:
	.loc 1 1873 0
	addl	$1, -12(%ebp)
	.loc 1 1875 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	-12(%ebp), %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1876 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	print_wide_int, .-print_wide_int
	.section	.rodata
	.type	__FUNCTION__.14637, @object
	.size	__FUNCTION__.14637, 17
__FUNCTION__.14637:
	.string	"dbxout_type_name"
	.text
	.type	dbxout_type_name, @function
dbxout_type_name:
.LFB38:
	.loc 1 1885 0
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
	.loc 1 1887 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L440
	.loc 1 1888 0
	leal	__FUNCTION__.14637@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1888, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L440:
	.loc 1 1889 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L442
	.loc 1 1891 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L444
.L442:
	.loc 1 1893 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L445
	.loc 1 1895 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L444
.L445:
	.loc 1 1898 0
	leal	__FUNCTION__.14637@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1898, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L444:
	.loc 1 1900 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 1901 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 1902 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	dbxout_type_name, .-dbxout_type_name
	.type	dbxout_class_name_qualifiers, @function
dbxout_class_name_qualifiers:
.LFB39:
	.loc 1 1910 0
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
	.loc 1 1911 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_type_context@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1913 0
	cmpl	$0, -12(%ebp)
	je	.L457
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L457
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L457
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L453
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L457
.L453:
.LBB13:
	.loc 1 1919 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1921 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L455
	.loc 1 1923 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_class_name_qualifiers
	.loc 1 1924 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L455:
	.loc 1 1926 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1927 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L457:
.LBE13:
	.loc 1 1929 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	dbxout_class_name_qualifiers, .-dbxout_class_name_qualifiers
	.section	.rodata
	.type	__FUNCTION__.14709, @object
	.size	__FUNCTION__.14709, 14
__FUNCTION__.14709:
	.string	"dbxout_symbol"
.LC58:
	.string	"%s\"%s:%c"
.LC59:
	.string	",%s,%s"
.LC60:
	.string	"%s\"%s:T"
.LC61:
	.string	"%s\" :T"
.LC62:
	.string	"%s\"%s:c=i"
.LC63:
	.string	"\",0x%x,0,0,0\n"
	.text
.globl dbxout_symbol
	.type	dbxout_symbol, @function
dbxout_symbol:
.LFB40:
	.loc 1 1941 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%esi
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$144, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1942 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1943 0
	movl	$0, -36(%ebp)
	.loc 1 1944 0
	movl	$0, -32(%ebp)
	.loc 1 1947 0
	movl	$0, current_sym_code@GOTOFF(%ebx)
	.loc 1 1948 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	.loc 1 1949 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 1953 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L459
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L461
.L459:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L462
.L461:
	.loc 1 1955 0
	movl	$0, -124(%ebp)
	jmp	.L463
.L462:
	.loc 1 1957 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_prepare_symbol
	.loc 1 1962 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L464
	.loc 1 1963 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
.L464:
	.loc 1 1965 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$31, %eax
	movl	%eax, -128(%ebp)
	cmpl	$6, -128(%ebp)
	ja	.L466
	movl	-128(%ebp), %eax
	sall	$2, %eax
	movl	.L472@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L472:
	.long	.L467@GOTOFF
	.long	.L466@GOTOFF
	.long	.L466@GOTOFF
	.long	.L469@GOTOFF
	.long	.L470@GOTOFF
	.long	.L471@GOTOFF
	.long	.L470@GOTOFF
	.text
.L467:
	.loc 1 1972 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L473
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	sete	-117(%ebp)
	jmp	.L475
.L473:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	sete	-117(%ebp)
.L475:
	cmpb	$0, -117(%ebp)
	je	.L476
	.loc 1 1973 0
	movl	$0, -124(%ebp)
	jmp	.L463
.L476:
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L466
	.loc 1 1977 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1978 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -36(%ebp)
	je	.L466
	.loc 1 1980 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L480
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L482
.L480:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -116(%ebp)
.L482:
	movl	-116(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L466
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L484
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L486
.L484:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -112(%ebp)
.L486:
	movl	-112(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L466
	.loc 1 1985 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L488
	movl	$70, -108(%ebp)
	jmp	.L490
.L488:
	movl	$102, -108(%ebp)
.L490:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L491
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L493
.L491:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -100(%ebp)
.L493:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1988 0
	movl	$1, -32(%ebp)
	.loc 1 1990 0
	movl	$36, current_sym_code@GOTOFF(%ebx)
	.loc 1 1991 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L494
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L496
.L494:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
.L496:
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, current_sym_addr@GOTOFF(%ebx)
	.loc 1 1993 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L497
	.loc 1 1994 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	jmp	.L499
.L497:
	.loc 1 1996 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
.L499:
	.loc 1 2001 0
	cmpl	$0, -36(%ebp)
	je	.L500
	.loc 1 2002 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L500:
	.loc 1 2006 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2007 0
	jmp	.L466
.L469:
	.loc 1 2024 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L502
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L504
.L502:
	.loc 1 2025 0
	movl	$0, -124(%ebp)
	jmp	.L463
.L504:
	.loc 1 2028 0
	movl	$1, -32(%ebp)
.LBB14:
	.loc 1 2030 0
	movl	$1, -28(%ebp)
	.loc 1 2031 0
	movl	$0, -24(%ebp)
	.loc 1 2033 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L505
	.loc 1 2036 0
	movl	$0, -28(%ebp)
	.loc 1 2042 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L507
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L507
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L510
.L507:
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L510
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L512
	movl	have_used_extensions@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L510
.L512:
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L510
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L510
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L510
.LBB15:
	.loc 1 2056 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2057 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L517
	.loc 1 2058 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L517:
	.loc 1 2060 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2061 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	.loc 1 2062 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2063 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2065 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L519
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L521
.L519:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -88(%ebp)
.L521:
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	-92(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2067 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2068 0
	movl	$0, (%esp)
	call	dbxout_finish_symbol
.L510:
.LBE15:
	.loc 1 2072 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L522
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L524
.L522:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -84(%ebp)
.L524:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2074 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L525
	.loc 1 2077 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_class_name_qualifiers
.L525:
	.loc 1 2081 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2084 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L527
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L527
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L530
.L527:
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L530
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L530
	.loc 1 2092 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L530
	movl	have_used_extensions@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L530
	.loc 1 2094 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2095 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
.L530:
	.loc 1 2103 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$116, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2104 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2106 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2107 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2108 0
	movl	$1, -24(%ebp)
.L505:
	.loc 1 2114 0
	cmpl	$0, -28(%ebp)
	je	.L535
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L535
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L538
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L535
.L538:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L535
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L535
.LBB16:
	.loc 1 2125 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2126 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L542
	.loc 1 2127 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L542:
	.loc 1 2129 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2130 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	.loc 1 2131 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2132 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2134 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L544
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -76(%ebp)
	jmp	.L546
.L544:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
.L546:
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	-80(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2136 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2137 0
	movl	$0, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2138 0
	movl	$1, -24(%ebp)
.L535:
.LBE16:
	.loc 1 2144 0
	cmpl	$0, -24(%ebp)
	jne	.L547
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L547
	.loc 1 2146 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2147 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	.loc 1 2148 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2149 0
	movl	$2, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2153 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L550
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L552
.L550:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -72(%ebp)
.L552:
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2154 0
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2155 0
	movl	$0, (%esp)
	call	dbxout_finish_symbol
.L547:
	.loc 1 2159 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
	.loc 1 2160 0
	jmp	.L466
.L471:
.LBE14:
	.loc 1 2166 0
	leal	__FUNCTION__.14709@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2166, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L470:
	.loc 1 2171 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	jne	.L553
	.loc 1 2172 0
	movl	$0, -124(%ebp)
	jmp	.L463
.L553:
	.loc 1 2175 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L466
	.loc 1 2180 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L556
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L556
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L556
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L556
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L556
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L562
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$5, %al
	jne	.L556
.L562:
	.loc 1 2187 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L556
.LBB17:
	.loc 1 2190 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2192 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L565
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L466
.L565:
.LBB18:
	.loc 1 2195 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 2199 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L568
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L570
.L568:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -68(%ebp)
.L570:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2201 0
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2202 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$128, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2204 0
	movl	$1, -124(%ebp)
	jmp	.L463
.L556:
.LBE18:
.LBE17:
	.loc 1 2215 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L571
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L573
.L571:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -64(%ebp)
.L573:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, (%esp)
	call	eliminate_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 2221 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L574
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L576
.L574:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -60(%ebp)
.L576:
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
	movl	%eax, -32(%ebp)
.L466:
	.loc 1 2227 0
	movl	-32(%ebp), %edx
	movl	%edx, -124(%ebp)
.L463:
	movl	-124(%ebp), %eax
	.loc 1 2228 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	dbxout_symbol, .-dbxout_symbol
	.section	.rodata
.LC64:
	.string	"$imag"
.LC65:
	.string	"$real"
	.text
	.type	dbxout_symbol_location, @function
dbxout_symbol_location:
.LFB41:
	.loc 1 2241 0
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
	.loc 1 2242 0
	movl	$0, -24(%ebp)
	.loc 1 2243 0
	movl	$-1, -20(%ebp)
	.loc 1 2251 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L579
.LBB19:
	.loc 1 2253 0
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2255 0
	jmp	.L581
.L582:
	.loc 1 2256 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L581:
	.loc 1 2255 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L582
	.loc 1 2257 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L584
	.loc 1 2259 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L584
	.loc 1 2260 0
	movl	$0, -52(%ebp)
	jmp	.L587
.L584:
	.loc 1 2262 0
	leal	20(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, 20(%ebp)
.L579:
.LBE19:
	.loc 1 2264 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L588
	.loc 1 2266 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2267 0
	cmpl	$175, -20(%ebp)
	jle	.L588
	.loc 1 2268 0
	movl	$0, -52(%ebp)
	jmp	.L587
.L588:
	.loc 1 2284 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L591
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L591
	.loc 1 2287 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L594
	.loc 1 2289 0
	movl	$71, -24(%ebp)
	.loc 1 2290 0
	movl	$32, current_sym_code@GOTOFF(%ebx)
	jmp	.L611
.L594:
	.loc 1 2294 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2296 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	je	.L597
	movl	$86, -48(%ebp)
	jmp	.L599
.L597:
	movl	$83, -48(%ebp)
.L599:
	movl	-48(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2302 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L600
	movl	lang_hooks@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L602
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L602
.L600:
	.loc 1 2305 0
	movl	$40, current_sym_code@GOTOFF(%ebx)
	.loc 1 2302 0
	jmp	.L611
.L602:
	.loc 1 2306 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L604
	.loc 1 2309 0
	movl	$36, current_sym_code@GOTOFF(%ebx)
	jmp	.L611
.L604:
	.loc 1 2317 0
	movl	current_sym_addr@GOTOFF(%ebx), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L606
	movl	current_sym_addr@GOTOFF(%ebx), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L606
.LBB20:
	.loc 1 2320 0
	movl	current_sym_addr@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_pool_constant@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2322 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L609
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L606
.L609:
	.loc 1 2324 0
	movl	-12(%ebp), %eax
	movl	%eax, current_sym_addr@GOTOFF(%ebx)
.L606:
.LBE20:
	.loc 1 2331 0
	movl	$38, current_sym_code@GOTOFF(%ebx)
	.loc 1 2284 0
	jmp	.L611
.L591:
	.loc 1 2335 0
	cmpl	$0, -20(%ebp)
	js	.L612
	.loc 1 2337 0
	movl	$114, -24(%ebp)
	.loc 1 2338 0
	movl	$64, current_sym_code@GOTOFF(%ebx)
	.loc 1 2339 0
	movl	-20(%ebp), %eax
	movl	mips_dbx_regno@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	jmp	.L611
.L612:
	.loc 1 2341 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L614
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L616
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L614
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L619
	movl	$17, -40(%ebp)
	jmp	.L621
.L619:
	movl	$30, -40(%ebp)
.L621:
	movl	-40(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	je	.L614
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	je	.L614
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L614
.L616:
	.loc 1 2358 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L624
	.loc 1 2360 0
	movl	$114, -24(%ebp)
	.loc 1 2361 0
	movl	$64, current_sym_code@GOTOFF(%ebx)
	.loc 1 2362 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L626
	.loc 1 2363 0
	movl	$0, -52(%ebp)
	jmp	.L587
.L626:
	.loc 1 2364 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	mips_dbx_regno@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	jmp	.L628
.L624:
	.loc 1 2368 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2371 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
.L628:
	.loc 1 2379 0
	movl	$14, (%esp)
	call	make_node@PLT
	movl	%eax, 12(%ebp)
	.loc 1 2380 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2341 0
	jmp	.L611
.L614:
	.loc 1 2382 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L629
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L629
	.loc 1 2385 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2386 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2382 0
	jmp	.L611
.L629:
	.loc 1 2388 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L632
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L632
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L632
	.loc 1 2392 0
	movl	$128, current_sym_code@GOTOFF(%ebx)
	.loc 1 2395 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2388 0
	jmp	.L611
.L632:
	.loc 1 2397 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L636
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L636
	.loc 1 2411 0
	movl	$40, current_sym_code@GOTOFF(%ebx)
	.loc 1 2412 0
	movl	$86, -24(%ebp)
	.loc 1 2413 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2397 0
	jmp	.L611
.L636:
	.loc 1 2415 0
	movl	20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$75, %ax
	jne	.L639
.LBB21:
	.loc 1 2422 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L641
	.loc 1 2423 0
	movl	$0, -52(%ebp)
	jmp	.L587
.L641:
	.loc 1 2425 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2429 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L643
	.loc 1 2430 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
	jmp	.L645
.L643:
	.loc 1 2432 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
.L645:
	.loc 1 2435 0
	movl	$0, current_sym_code@GOTOFF(%ebx)
	.loc 1 2436 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	.loc 1 2437 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2438 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_prepare_symbol
	.loc 1 2440 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L646
	.loc 1 2441 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
	jmp	.L648
.L646:
	.loc 1 2443 0
	movl	20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
.L648:
	.loc 1 2444 0
	movl	$1, -52(%ebp)
	jmp	.L587
.L639:
.LBE21:
	.loc 1 2450 0
	movl	$0, -52(%ebp)
	jmp	.L587
.L611:
	.loc 1 2459 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_name
	.loc 1 2460 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2461 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2466 0
	movl	$1, -52(%ebp)
.L587:
	movl	-52(%ebp), %eax
	.loc 1 2467 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	dbxout_symbol_location, .-dbxout_symbol_location
	.section	.rodata
.LC66:
	.string	"(anon)"
.LC67:
	.string	""
.LC68:
	.string	"%s\"%s%s:"
	.text
	.type	dbxout_symbol_name, @function
dbxout_symbol_name:
.LFB42:
	.loc 1 2477 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$52, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2480 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L651
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L651
	.loc 1 2485 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2480 0
	jmp	.L654
.L651:
	.loc 1 2489 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L654:
	.loc 1 2491 0
	cmpl	$0, -8(%ebp)
	jne	.L655
	.loc 1 2492 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L655:
	.loc 1 2493 0
	cmpl	$0, 12(%ebp)
	je	.L657
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L659
.L657:
	leal	.LC67@GOTOFF(%ebx), %edx
	movl	%edx, -28(%ebp)
.L659:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L660
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L662
.L660:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -24(%ebp)
.L662:
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-8(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2496 0
	cmpl	$0, 16(%ebp)
	je	.L665
	.loc 1 2497 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
.L665:
	.loc 1 2498 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	dbxout_symbol_name, .-dbxout_symbol_name
	.type	dbxout_prepare_symbol, @function
dbxout_prepare_symbol:
.LFB43:
	.loc 1 2503 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	.loc 1 2509 0
	popl	%ebp
	ret
.LFE43:
	.size	dbxout_prepare_symbol, .-dbxout_prepare_symbol
	.section	.rodata
.LC69:
	.string	"\",%d,0,%d,"
	.text
	.type	dbxout_finish_symbol, @function
dbxout_finish_symbol:
.LFB44:
	.loc 1 2514 0
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
	.loc 1 2518 0
	movl	$0, -8(%ebp)
	.loc 1 2519 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	cmpl	$0, 8(%ebp)
	je	.L669
	.loc 1 2520 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L669:
	.loc 1 2522 0
	movl	current_sym_code@GOTOFF(%ebx), %edx
	movl	asmfile@GOTOFF(%ebx), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2523 0
	movl	current_sym_addr@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L672
	.loc 1 2524 0
	movl	current_sym_addr@GOTOFF(%ebx), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	jmp	.L674
.L672:
	.loc 1 2526 0
	movl	current_sym_value@GOTOFF(%ebx), %eax
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L674:
	.loc 1 2527 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2529 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	dbxout_finish_symbol, .-dbxout_finish_symbol
.globl dbxout_syms
	.type	dbxout_syms, @function
dbxout_syms:
.LFB45:
	.loc 1 2537 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$36, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2538 0
	movl	$0, -8(%ebp)
	.loc 1 2539 0
	jmp	.L677
.L678:
	.loc 1 2541 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	addl	%eax, -8(%ebp)
	.loc 1 2542 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L677:
	.loc 1 2539 0
	cmpl	$0, 8(%ebp)
	jne	.L678
	.loc 1 2544 0
	movl	-8(%ebp), %eax
	.loc 1 2545 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	dbxout_syms, .-dbxout_syms
	.section	.rodata
.LC70:
	.string	"%s\"(anon):%c"
.LC71:
	.string	"%s\"%s:v"
	.text
.globl dbxout_parms
	.type	dbxout_parms, @function
dbxout_parms:
.LFB46:
	.loc 1 2562 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%edi
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$304, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2563 0
	jmp	.L682
.L683:
	.loc 1 2564 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L684
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L684
	.loc 1 2566 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_prepare_symbol
	.loc 1 2570 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	eliminate_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 2572 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L687
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -280(%ebp)
	jmp	.L689
.L687:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -280(%ebp)
.L689:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	eliminate_regs@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 2581 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L690
.LBB22:
	.loc 1 2583 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2589 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L692
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L692
	.loc 1 2591 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2589 0
	jmp	.L695
.L692:
	.loc 1 2593 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
.L695:
	.loc 1 2595 0
	movl	$160, current_sym_code@GOTOFF(%ebx)
	.loc 1 2596 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2599 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L696
	.loc 1 2601 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2603 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -276(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L698
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -272(%ebp)
	jmp	.L700
.L698:
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -272(%ebp)
.L700:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$112, 16(%esp)
	movl	-276(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L701
.L696:
	.loc 1 2609 0
	movl	$8, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2610 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L702
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -268(%ebp)
	jmp	.L704
.L702:
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -268(%ebp)
.L704:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$112, 12(%esp)
	movl	-268(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L701:
	.loc 1 2628 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2629 0
	movl	current_sym_value@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2630 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	jmp	.L684
.L690:
.LBE22:
	.loc 1 2632 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L705
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -264(%ebp)
	jmp	.L707
.L705:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -264(%ebp)
.L707:
	movl	-264(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L708
.LBB23:
	.loc 1 2639 0
	movl	$64, current_sym_code@GOTOFF(%ebx)
	.loc 1 2640 0
	movb	$80, -10(%ebp)
	.loc 1 2641 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2650 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L710
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -260(%ebp)
	jmp	.L712
.L710:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -260(%ebp)
.L712:
	movl	-260(%ebp), %ecx
	movl	4(%ecx), %eax
	cmpl	$175, %eax
	ja	.L713
	.loc 1 2652 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L715
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -256(%ebp)
	jmp	.L717
.L715:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -256(%ebp)
.L717:
	movl	-256(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 2653 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L718
.L713:
	.loc 1 2659 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2660 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L718:
	.loc 1 2662 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_dbx_regno@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2665 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L719
	.loc 1 2667 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2668 0
	movzbl	-10(%ebp), %eax
	movl	%eax, -252(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -248(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L721
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -244(%ebp)
	jmp	.L723
.L721:
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -244(%ebp)
.L723:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-252(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-248(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-244(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L724
.L719:
	.loc 1 2674 0
	movl	$8, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2675 0
	movzbl	-10(%ebp), %edi
	movl	%edi, -240(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L725
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -236(%ebp)
	jmp	.L727
.L725:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -236(%ebp)
.L727:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-240(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-236(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L724:
	.loc 1 2679 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2680 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	jmp	.L684
.L708:
.LBE23:
	.loc 1 2682 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L728
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
	jmp	.L730
.L728:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -232(%ebp)
.L730:
	movl	-232(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L731
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L733
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -228(%ebp)
	jmp	.L735
.L733:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -228(%ebp)
.L735:
	movl	-228(%ebp), %ecx
	movl	4(%ecx), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L731
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L737
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L739
.L737:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -224(%ebp)
.L739:
	movl	-224(%ebp), %edi
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	%eax, -220(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L740
	movl	$17, -216(%ebp)
	jmp	.L742
.L740:
	movl	$30, -216(%ebp)
.L742:
	movl	-216(%ebp), %eax
	cmpl	%eax, -220(%ebp)
	je	.L731
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L744
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -212(%ebp)
	jmp	.L746
.L744:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -212(%ebp)
.L746:
	movl	-212(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	cmpl	$29, %eax
	je	.L731
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L748
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -208(%ebp)
	jmp	.L750
.L748:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -208(%ebp)
.L750:
	movl	-208(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L731
.LBB24:
	.loc 1 2700 0
	movl	$64, current_sym_code@GOTOFF(%ebx)
	.loc 1 2701 0
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L752
	.loc 1 2702 0
	movb	$97, -9(%ebp)
	jmp	.L754
.L752:
	.loc 1 2704 0
	movb	$80, -9(%ebp)
.L754:
	.loc 1 2709 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L755
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -204(%ebp)
	jmp	.L757
.L755:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -204(%ebp)
.L757:
	movl	-204(%ebp), %edi
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L758
	.loc 1 2710 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L760
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -200(%ebp)
	jmp	.L762
.L760:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -200(%ebp)
.L762:
	movl	-200(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	jmp	.L763
.L758:
	.loc 1 2712 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
.L763:
	.loc 1 2714 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2717 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L764
	.loc 1 2719 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -284(%ebp)
	movl	$0, %eax
	cld
	movl	-284(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2722 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -196(%ebp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -192(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L766
	leal	.LC4@GOTOFF(%ebx), %edx
	movl	%edx, -188(%ebp)
	jmp	.L768
.L766:
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -188(%ebp)
.L768:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-196(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-188(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L769
.L764:
	.loc 1 2728 0
	movl	$8, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2729 0
	movzbl	-9(%ebp), %edi
	movl	%edi, -184(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L770
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -180(%ebp)
	jmp	.L772
.L770:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -180(%ebp)
.L772:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-184(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-180(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L769:
	.loc 1 2733 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2734 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2682 0
	jmp	.L684
.L731:
.LBE24:
	.loc 1 2736 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L773
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -176(%ebp)
	jmp	.L775
.L773:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -176(%ebp)
.L775:
	movl	-176(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L776
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L778
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L780
.L778:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -172(%ebp)
.L780:
	movl	-172(%ebp), %ecx
	movl	4(%ecx), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L776
.LBB25:
	.loc 1 2745 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L782
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -168(%ebp)
	jmp	.L784
.L782:
	leal	.LC66@GOTOFF(%ebx), %edi
	movl	%edi, -168(%ebp)
.L784:
	movl	-168(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2746 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L785
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L787
.L785:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -164(%ebp)
.L787:
	movl	-164(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L788
	.loc 1 2747 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	jmp	.L790
.L788:
	.loc 1 2749 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L791
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -160(%ebp)
	jmp	.L793
.L791:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -160(%ebp)
.L793:
	movl	-160(%ebp), %ecx
	movl	4(%ecx), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
.L790:
	.loc 1 2751 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2752 0
	movl	$160, current_sym_code@GOTOFF(%ebx)
	.loc 1 2755 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L794
	leal	.LC4@GOTOFF(%ebx), %edi
	movl	%edi, -156(%ebp)
	jmp	.L796
.L794:
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -156(%ebp)
.L796:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-156(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2757 0
	movl	current_sym_value@GOTOFF(%ebx), %eax
	movl	%eax, -152(%ebp)
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edi, -148(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L797
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L799
.L797:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -140(%ebp)
.L799:
	movl	-140(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	-152(%ebp), %edx
	movl	-148(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2760 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2761 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
	.loc 1 2736 0
	jmp	.L684
.L776:
.LBE25:
	.loc 1 2763 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L800
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L802
.L800:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -136(%ebp)
.L802:
	movl	-136(%ebp), %ecx
	movzwl	(%ecx), %eax
	cmpw	$76, %ax
	jne	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L804
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L806
.L804:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -132(%ebp)
.L806:
	movl	-132(%ebp), %edi
	movl	4(%edi), %eax
	movl	const_int_rtx@GOT(%ebx), %edx
	movl	256(%edx), %edx
	cmpl	%edx, %eax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L808
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L810
.L808:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -128(%ebp)
.L810:
	movl	-128(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L812
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L814
.L812:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -124(%ebp)
.L814:
	movl	-124(%ebp), %ecx
	movl	4(%ecx), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L816
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L818
.L816:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -120(%ebp)
.L818:
	movl	-120(%ebp), %edi
	movl	4(%edi), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L820
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L822
.L820:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -116(%ebp)
.L822:
	movl	-116(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L824
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L826
.L824:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -112(%ebp)
.L826:
	movl	-112(%ebp), %ecx
	movl	4(%ecx), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L828
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L830
.L828:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -108(%ebp)
.L830:
	movl	-108(%ebp), %edi
	movl	4(%edi), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L832
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L834
.L832:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -104(%ebp)
.L834:
	movl	-104(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L684
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L836
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L838
.L836:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -100(%ebp)
.L838:
	movl	-100(%ebp), %ecx
	movl	4(%ecx), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L684
	.loc 1 2772 0
	movl	$160, current_sym_code@GOTOFF(%ebx)
	.loc 1 2777 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L840
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L842
.L840:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
.L842:
	movl	-96(%ebp), %edi
	movl	4(%edi), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L843
	.loc 1 2778 0
	movl	$0, current_sym_value@GOTOFF(%ebx)
	jmp	.L845
.L843:
	.loc 1 2780 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L846
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L848
.L846:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -92(%ebp)
.L848:
	movl	-92(%ebp), %edx
	movl	4(%edx), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
.L845:
	.loc 1 2783 0
	movl	$0, current_sym_addr@GOTOFF(%ebx)
	.loc 1 2787 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L849
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L851
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L853
.L851:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -84(%ebp)
.L853:
	movl	-84(%ebp), %ecx
	movzbl	2(%ecx), %eax
	movzbl	%al, %eax
	cmpl	%eax, -88(%ebp)
	je	.L849
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L855
	movl	$8, -76(%ebp)
	jmp	.L857
.L855:
	movl	$4, -76(%ebp)
.L857:
	movl	-76(%ebp), %edi
	cmpl	%edi, -80(%ebp)
	jge	.L849
	.loc 1 2791 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L859
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L861
.L859:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -72(%ebp)
.L861:
	movl	-72(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	current_sym_value@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, current_sym_value@GOTOFF(%ebx)
.L849:
	.loc 1 2797 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L862
	.loc 1 2799 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -288(%ebp)
	movl	$0, %eax
	cld
	movl	-288(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$2, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2802 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L864
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L866
.L864:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -64(%ebp)
.L866:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$112, 16(%esp)
	movl	-68(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-64(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L867
.L862:
	.loc 1 2808 0
	movl	$8, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2809 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L868
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L870
.L868:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -60(%ebp)
.L870:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$112, 12(%esp)
	movl	-60(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L867:
	.loc 1 2813 0
	movl	current_sym_value@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edi
	sarl	$31, %edi
	movl	%edi, -52(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L871
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L873
.L871:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -44(%ebp)
.L873:
	movl	-44(%ebp), %edx
	movl	4(%edx), %eax
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	mips_debugger_offset@PLT
	movl	%eax, current_sym_value@GOTOFF(%ebx)
	.loc 1 2816 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2817 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_finish_symbol
.L684:
	.loc 1 2563 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L682:
	cmpl	$0, 8(%ebp)
	jne	.L683
	.loc 1 2820 0
	addl	$304, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	dbxout_parms, .-dbxout_parms
.globl dbxout_reg_parms
	.type	dbxout_reg_parms, @function
dbxout_reg_parms:
.LFB47:
	.loc 1 2836 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$52, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2837 0
	jmp	.L877
.L878:
	.loc 1 2838 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L879
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L879
	.loc 1 2840 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_prepare_symbol
	.loc 1 2844 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L882
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L884
.L882:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -40(%ebp)
.L884:
	movl	-40(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L885
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L887
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L889
.L887:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
.L889:
	movl	-36(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	$175, %eax
	ja	.L885
	.loc 1 2846 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L891
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L893
.L891:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -32(%ebp)
.L893:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
	.loc 1 2844 0
	jmp	.L879
.L885:
	.loc 1 2848 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L894
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L896
.L894:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L896:
	movl	-28(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$75, %ax
	jne	.L897
	.loc 1 2849 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L899
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L901
.L899:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L901:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
	jmp	.L879
.L897:
	.loc 1 2852 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L902
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L904
.L902:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
.L904:
	movl	-20(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L879
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L906
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L908
.L906:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
.L908:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L879
	.loc 1 2854 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L910
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L912
.L910:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
.L912:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-8(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol_location
.L879:
	.loc 1 2837 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L877:
	cmpl	$0, 8(%ebp)
	jne	.L878
	.loc 1 2857 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	dbxout_reg_parms, .-dbxout_reg_parms
	.type	dbxout_args, @function
dbxout_args:
.LFB48:
	.loc 1 2865 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$20, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2866 0
	jmp	.L916
.L917:
	.loc 1 2868 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2869 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_type
	.loc 1 2870 0
	movl	current_sym_nchars@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, current_sym_nchars@GOTOFF(%ebx)
	.loc 1 2871 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L916:
	.loc 1 2866 0
	cmpl	$0, 8(%ebp)
	jne	.L917
	.loc 1 2873 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	dbxout_args, .-dbxout_args
	.section	.rodata
.LC72:
	.string	"%s\"%s:C1\",%d,0,0,"
.LC73:
	.string	"%s%d,0,0,"
	.text
	.type	dbxout_block, @function
dbxout_block:
.LFB49:
	.loc 1 2897 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$100, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2897 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2898 0
	movl	$-1, -44(%ebp)
	.loc 1 2902 0
	movl	current_function_func_begin_label@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L921
	.loc 1 2903 0
	movl	current_function_func_begin_label@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L927
.L921:
	.loc 1 2905 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L924
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L926
.L924:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -80(%ebp)
.L926:
	movl	-80(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2908 0
	jmp	.L927
.L928:
	.loc 1 2911 0
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L929
	movl	-56(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L929
.LBB26:
	.loc 1 2920 0
	movl	$0, -36(%ebp)
	.loc 1 2921 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L932
	cmpl	$0, 12(%ebp)
	jne	.L934
.L932:
	.loc 1 2922 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_syms@PLT
	movl	%eax, -36(%ebp)
.L934:
	.loc 1 2923 0
	cmpl	$0, -60(%ebp)
	je	.L935
	.loc 1 2924 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_reg_parms@PLT
.L935:
	.loc 1 2931 0
	cmpl	$0, 12(%ebp)
	jle	.L937
	cmpl	$0, -36(%ebp)
	je	.L937
.LBB27:
	.loc 1 2934 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, -44(%ebp)
	.loc 1 2935 0
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2937 0
	movl	-56(%ebp), %eax
	movzbl	16(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L940
.LBB28:
	.loc 1 2940 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2941 0
	jmp	.L942
.L943:
	.loc 1 2946 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L944
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	jmp	.L946
.L944:
	leal	.LC5@GOTOFF(%ebx), %edx
	movl	%edx, -72(%ebp)
.L946:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$84, 16(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2948 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 2949 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 2951 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L942:
	.loc 1 2941 0
	cmpl	$0, -32(%ebp)
	jne	.L943
.L940:
.LBE28:
	.loc 1 2958 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L947
	leal	.LC13@GOTOFF(%ebx), %edx
	movl	%edx, -68(%ebp)
	jmp	.L949
.L947:
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
.L949:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$192, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2959 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 2961 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2962 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 2964 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L937:
.LBE27:
	.loc 1 2978 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	-56(%ebp), %edx
	movl	24(%edx), %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dbxout_block
	.loc 1 2981 0
	cmpl	$0, 12(%ebp)
	jle	.L929
	cmpl	$0, -36(%ebp)
	je	.L929
.LBB29:
	.loc 1 2984 0
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2988 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L952
	leal	.LC13@GOTOFF(%ebx), %edx
	movl	%edx, -64(%ebp)
	jmp	.L954
.L952:
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L954:
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	$224, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2989 0
	movl	asmfile@GOTOFF(%ebx), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 2991 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2992 0
	movl	asmfile@GOTOFF(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 2994 0
	movl	asmfile@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L929:
.LBE29:
.LBE26:
	.loc 1 2998 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L927:
	.loc 1 2908 0
	cmpl	$0, -56(%ebp)
	jne	.L928
	.loc 1 3000 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L957
	call	__stack_chk_fail_local
.L957:
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	dbxout_block, .-dbxout_block
	.type	dbxout_begin_function, @function
dbxout_begin_function:
.LFB50:
	.loc 1 3010 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$20, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3011 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	.loc 1 3012 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	dbxout_parms@PLT
	.loc 1 3013 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L961
	.loc 1 3014 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
.L961:
	.loc 1 3015 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	dbxout_begin_function, .-dbxout_begin_function
	.local	asmfile
	.comm	asmfile,4,4
	.local	lastfile
	.comm	lastfile,4,4
	.local	cwd
	.comm	cwd,4,4
	.local	typevec_len
	.comm	typevec_len,4,4
	.local	next_type_number
	.comm	next_type_number,4,4
	.local	current_file
	.comm	current_file,4,4
	.local	next_file_number
	.comm	next_file_number,4,4
	.local	current_sym_code
	.comm	current_sym_code,4,4
	.local	current_sym_value
	.comm	current_sym_value,4,4
	.local	current_sym_addr
	.comm	current_sym_addr,4,4
	.local	current_sym_nchars
	.comm	current_sym_nchars,4,4
	.comm	typevec,4,4
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
	.long	.LCFI40-.LCFI38
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
	.long	.LCFI44-.LCFI42
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
	.long	.LCFI45-.LFB26
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
	.long	.LCFI60-.LCFI58
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
	.long	.LCFI61-.LFB30
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
	.byte	0x4
	.long	.LCFI77-.LCFI75
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
	.long	.LCFI78-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI79
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI83-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI84
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
	.long	.LCFI89-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI90
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
	.long	.LCFI93-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI97-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI101-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI105-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI106
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
	.long	.LCFI110-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI114-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI118-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
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
	.long	.LCFI120-.LFB44
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
	.long	.LCFI127-.LCFI125
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
	.long	.LCFI128-.LFB46
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
	.long	.LCFI133-.LFB47
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI137-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI141-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI145-.LFB50
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
.LEFDE70:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/basic-block.h"
	.file 8 "../../../kgccfe/gnu/sbitmap.h"
	.file 9 "../../../kgccfe/gnu/hashtable.h"
	.file 10 "../../../kgccfe/gnu/location.h"
	.file 11 "../../../kgccfe/gnu/function.h"
	.file 12 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 13 "../../../kgccfe/omp_types.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kgccfe/gnu/gstab.h"
	.file 19 "../../../kgccfe/gnu/flags.h"
	.file 20 "../../../kgccfe/gnu/output.h"
	.file 21 "../../../kgccfe/gnu/debug.h"
	.file 22 "../../../kgccfe/gnu/target.h"
	.file 23 "../../../kgccfe/gnu/langhooks.h"
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
	.long	.LFE30-.Ltext0
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
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x9060
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/dbxout.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x8a
	.long	0xa5e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x8d
	.long	0x815
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x94
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x97
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x9f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xba
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xc1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xcf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xd4
	.long	0x167d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf8
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x168d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x7
	.long	0x2ce
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x855
	.long	0x3915
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x3c2e
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x3c76
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3d99
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x859
	.long	0x3cd7
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3d44
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3e1f
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x85c
	.long	0x4e9e
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x85d
	.long	0x4082
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3e56
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x3e9b
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x3eec
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x3f38
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x5836
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4
	.uleb128 0xa
	.long	0x2d9
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3ba
	.string	"mips_args"
	.byte	0x40
	.byte	0xc
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xc
	.value	0xaad
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xc
	.value	0xab0
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xc
	.value	0xab5
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xc
	.value	0xab8
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xc
	.value	0xabb
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xc
	.value	0xac8
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xc
	.value	0xacb
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xc
	.value	0xad3
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xc
	.value	0xad4
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d1
	.long	0x9b
	.uleb128 0x10
	.long	0x3d1
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xc
	.value	0xad5
	.long	0x2e8
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x3ba
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x10
	.byte	0x3b
	.long	0x456
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x4a0
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x481
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d9
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x4d1
	.uleb128 0x13
	.long	0x74c
	.long	.LASF4
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x7ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x7b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x7ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x7ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x752
	.uleb128 0xa
	.long	0x3fe
	.uleb128 0x3
	.byte	0x4
	.long	0x3fe
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x7ae
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x7ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x7b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76b
	.uleb128 0x3
	.byte	0x4
	.long	0x4d1
	.uleb128 0xf
	.long	0x7ca
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75d
	.uleb128 0xf
	.long	0x7e0
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x7f0
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x801
	.uleb128 0x15
	.long	0x80d
	.byte	0x1
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x80d
	.uleb128 0x18
	.long	0xa5e
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
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
	.long	0x122d
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
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
	.long	0x1307
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x51
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x52
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x54
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x56
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x58
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x5b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x5d
	.long	0x3ba
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
	.byte	0x5e
	.long	0x122d
	.uleb128 0x13
	.long	0x137e
	.long	.LASF5
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x4
	.byte	0x6e
	.long	0x1322
	.uleb128 0x7
	.long	0x145b
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x1c
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x456
	.uleb128 0x1c
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2e1
	.uleb128 0x1c
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3ba
	.uleb128 0x1c
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2ce
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9b
	.uleb128 0x1c
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19c
	.uleb128 0x1c
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x815
	.uleb128 0x1c
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x1307
	.uleb128 0x1c
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x146f
	.uleb128 0x1c
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x14d7
	.uleb128 0x1c
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e4
	.uleb128 0x1c
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x1662
	.uleb128 0x1c
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x1668
	.byte	0x0
	.uleb128 0x1d
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x145b
	.uleb128 0x4
	.long	0x14d7
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x5a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x5a93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1475
	.uleb128 0x4
	.long	0x1662
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x5be6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x5be6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x5b16
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x5b16
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x5b16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x5b16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1662
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x1662
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x5e61
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x5b24
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0xe5
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14dd
	.uleb128 0x3
	.byte	0x4
	.long	0x137e
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x1389
	.uleb128 0xf
	.long	0x168d
	.long	0x166e
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x169d
	.long	0x9b
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x16d4
	.string	"location_s"
	.byte	0x8
	.byte	0xa
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0xa
	.byte	0x1e
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0xa
	.byte	0x21
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xa
	.byte	0x23
	.long	0x16a3
	.uleb128 0x18
	.long	0x2008
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.uleb128 0x19
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x19
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x19
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x19
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x19
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x19
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x19
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x19
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x19
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x19
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x19
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x19
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x19
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x19
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x19
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x19
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x19
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x19
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x19
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x19
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x19
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x19
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x19
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x19
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x19
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x19
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x19
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x19
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x19
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x19
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x19
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x19
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x19
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x19
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x19
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x19
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x19
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x19
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x19
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x19
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x19
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x19
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x19
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x19
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x19
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x19
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x19
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x19
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x19
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x19
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x19
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x19
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x19
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x19
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x19
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x19
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x19
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x19
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x19
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x19
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x19
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x19
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x19
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x19
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x19
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x19
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x19
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x19
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x19
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x19
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x19
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x19
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x19
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x19
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x19
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x19
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x19
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x19
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x19
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x19
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x19
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x19
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x19
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x19
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x19
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x19
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x19
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x19
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x19
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x19
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x19
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x19
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x19
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x19
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x19
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x19
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x19
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x19
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x19
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x19
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x19
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x19
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x19
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x19
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x19
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x19
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x19
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x19
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x19
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x19
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x19
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x19
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x19
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x19
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x19
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x19
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x19
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x19
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x19
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x19
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x19
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x19
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x19
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x19
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x19
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x19
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x19
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x19
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x19
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x19
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x19
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x19
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x19
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x19
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x19
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x19
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x19
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x19
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x19
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x19
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x19
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x19
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x19
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x19
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x19
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x19
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x19
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x19
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x19
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x31
	.long	0x3ba
	.uleb128 0x4
	.long	0x2058
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x32
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x2062
	.uleb128 0x1d
	.string	"st"
	.byte	0x1
	.uleb128 0x1f
	.long	0x20b7
	.long	.LASF7
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.uleb128 0x19
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x18
	.long	0x3915
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
	.uleb128 0x19
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x19
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x19
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x19
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x19
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x19
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x19
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x19
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x19
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x19
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x19
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x19
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x19
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x19
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x19
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x19
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x19
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x19
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x19
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x19
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x19
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x19
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x19
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x19
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x19
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x19
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x19
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x19
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x19
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x19
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x19
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x19
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x19
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x19
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x19
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x19
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x19
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x19
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x19
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x19
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x19
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x19
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x19
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x19
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x19
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x19
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x19
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x19
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x19
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x19
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x19
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x19
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x19
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x19
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x19
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x19
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x19
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x19
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x19
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x19
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x19
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x19
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x19
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x19
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x19
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x19
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x19
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x19
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x19
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x19
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x19
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x19
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x19
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x19
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x19
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x19
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x19
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x19
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x19
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x19
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x19
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x19
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x19
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x19
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x19
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x19
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x19
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x19
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x19
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x19
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x19
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x19
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x19
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x19
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x19
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x19
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x19
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x19
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x19
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x19
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x19
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x19
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x19
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x19
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x19
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x19
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x19
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x19
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x19
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x19
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x19
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x19
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x19
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x19
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x19
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x19
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x19
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x19
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x19
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x19
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x19
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x19
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x19
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x19
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x19
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x19
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x19
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x19
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x19
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x19
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x19
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x19
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x19
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x19
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x19
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x19
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x19
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x19
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x19
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x19
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x19
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x19
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x19
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x19
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x19
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x19
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x19
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x19
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x19
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x19
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x19
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x19
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x19
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x19
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x19
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x19
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x19
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x19
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x19
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x19
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x19
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x19
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x19
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3bf2
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x3
	.byte	0x90
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
	.long	0x16e6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x94
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x3
	.byte	0x95
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x96
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x97
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x98
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x99
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x9a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x3
	.byte	0x9b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x3
	.byte	0x9d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0x9e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF8
	.byte	0x3
	.byte	0xa6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.byte	0xa7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.byte	0xa8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.byte	0xa9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.byte	0xaa
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.byte	0xab
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.byte	0xac
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x3
	.byte	0xad
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x3
	.byte	0xaf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x3
	.byte	0xb0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x3
	.byte	0xb1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x3
	.byte	0xb2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x3
	.byte	0xb3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3c2e
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3c76
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x2f0
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x3bf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3cc4
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x30c
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x3cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3cc4
	.uleb128 0xc
	.long	0x3d3e
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x322
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x3d3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2058
	.uleb128 0xc
	.long	0x3d99
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x32f
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x3de1
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x341
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x3e1f
	.long	.LASF15
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x9
	.byte	0x1c
	.long	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x9
	.byte	0x1d
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x9
	.byte	0x1e
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3e56
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x360
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x3de1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x3e9b
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x36a
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF16
	.byte	0x3
	.value	0x36c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3edc
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x378
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x379
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x3edc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3eec
	.long	0x1e4
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3f38
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x3be
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x3edc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4028
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x3f4
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF17
	.byte	0x3
	.value	0x3f7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x3
	.value	0x3f8
	.long	0x3ba
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x3
	.value	0x3fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF18
	.byte	0x3
	.value	0x3fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x406f
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2e1
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x4bf
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x407c
	.byte	0x0
	.uleb128 0x1d
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x406f
	.uleb128 0xc
	.long	0x43c7
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x540
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x543
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x544
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x3
	.value	0x547
	.long	0x3ba
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"mode"
	.byte	0x3
	.value	0x548
	.long	0x815
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x3
	.value	0x54a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x54b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x54c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x54d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x3
	.value	0x54e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x3
	.value	0x54f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF21
	.byte	0x3
	.value	0x550
	.long	0x3ba
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x3
	.value	0x552
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x3
	.value	0x553
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x3
	.value	0x554
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x555
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x556
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x3
	.value	0x557
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x3
	.value	0x558
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF22
	.byte	0x3
	.value	0x559
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x3
	.value	0x55f
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x4028
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x568
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x56c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF25
	.byte	0x3
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x21
	.long	.LASF26
	.byte	0x3
	.value	0x571
	.long	0x43d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x2019
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1d
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x43c7
	.uleb128 0xc
	.long	0x441e
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x22
	.string	"align"
	.byte	0x3
	.value	0x7f1
	.long	0x3ba
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0x3
	.value	0x7f2
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4453
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x20b7
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x456
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x43d9
	.byte	0x0
	.uleb128 0x24
	.long	0x4492
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x4e4a
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2e1
	.byte	0x0
	.uleb128 0x25
	.long	0x4e4a
	.long	.LASF27
	.value	0x134
	.byte	0x4
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0xb
	.byte	0xb5
	.long	0x6453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xb
	.byte	0xb6
	.long	0x6467
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xb
	.byte	0xb7
	.long	0x646d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xb
	.byte	0xb8
	.long	0x6473
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xb
	.byte	0xb9
	.long	0x6489
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF23
	.byte	0xb
	.byte	0xbe
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF1
	.byte	0xb
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xb
	.byte	0xc4
	.long	0x4e4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xb
	.byte	0xc9
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xb
	.byte	0xce
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xb
	.byte	0xd3
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xb
	.byte	0xd7
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xb
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xb
	.byte	0xdf
	.long	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xb
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xb
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xb
	.byte	0xec
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xb
	.byte	0xf0
	.long	0x64a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xb
	.byte	0xf3
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xb
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xb
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xb
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xb
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xb
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xb
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xb
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xb
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xb
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xb
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xb
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xb
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xb
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xb
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xb
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0xb
	.value	0x138
	.long	0x456
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0xb
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xb
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xb
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xb
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0xb
	.value	0x151
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xb
	.value	0x157
	.long	0x169d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xb
	.value	0x15a
	.long	0x64b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xb
	.value	0x15d
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xb
	.value	0x160
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xb
	.value	0x166
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xb
	.value	0x16a
	.long	0x615a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0xb
	.value	0x16d
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xb
	.value	0x16e
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0xb
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xb
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xb
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0xb
	.value	0x175
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xb
	.value	0x178
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xb
	.value	0x17d
	.long	0x64d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xb
	.value	0x17f
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xb
	.value	0x181
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xb
	.value	0x184
	.long	0x64eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xb
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x22
	.string	"returns_struct"
	.byte	0xb
	.value	0x190
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pcc_struct"
	.byte	0xb
	.value	0x194
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pointer"
	.byte	0xb
	.value	0x197
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"needs_context"
	.byte	0xb
	.value	0x19a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_setjmp"
	.byte	0xb
	.value	0x19d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_longjmp"
	.byte	0xb
	.value	0x1a0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_alloca"
	.byte	0xb
	.value	0x1a4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_eh_return"
	.byte	0xb
	.value	0x1a7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_label"
	.byte	0xb
	.value	0x1ab
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_goto"
	.byte	0xb
	.value	0x1af
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"contains_functions"
	.byte	0xb
	.value	0x1b2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_computed_jump"
	.byte	0xb
	.value	0x1b5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"is_thunk"
	.byte	0xb
	.value	0x1ba
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"all_throwers_are_sibcalls"
	.byte	0xb
	.value	0x1c1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"instrument_entry_exit"
	.byte	0xb
	.value	0x1c5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arc_profile"
	.byte	0xb
	.value	0x1c8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"profile"
	.byte	0xb
	.value	0x1cb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"limit_stack"
	.byte	0xb
	.value	0x1cf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"stdarg"
	.byte	0xb
	.value	0x1d2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_whole_function_mode_p"
	.byte	0xb
	.value	0x1d8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xb
	.value	0x1e1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_const_pool"
	.byte	0xb
	.value	0x1e4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_pic_offset_table"
	.byte	0xb
	.value	0x1e7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_eh_lsda"
	.byte	0xb
	.value	0x1ea
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arg_pointer_save_area_init"
	.byte	0xb
	.value	0x1ed
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.long	.LASF28
	.byte	0xb
	.value	0x1fa
	.long	0x63dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xb
	.value	0x1fe
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4492
	.uleb128 0x26
	.long	0x4e88
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3d3e
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x2008
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x3ba
	.byte	0x0
	.uleb128 0x26
	.long	0x4e9e
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3d3e
	.byte	0x0
	.uleb128 0xc
	.long	0x55d3
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x7a1
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x16d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7a4
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x3
	.value	0x7a5
	.long	0x815
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x3
	.value	0x7a7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7a8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7a9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x3
	.value	0x7aa
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7ab
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7ac
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7ad
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF17
	.byte	0x3
	.value	0x7ae
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7b2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7b3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7b4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7b5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7b6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7ba
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x3
	.value	0x7bb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x3
	.value	0x7bc
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x3
	.value	0x7bd
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7be
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7bf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7c0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x3
	.value	0x7c1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7c3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7c4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7c5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7c6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7c7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x3
	.value	0x7c8
	.long	0x2067
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x3
	.value	0x7c9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF21
	.byte	0x3
	.value	0x7cb
	.long	0x3ba
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x3
	.value	0x7cc
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF22
	.byte	0x3
	.value	0x7cd
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x3
	.value	0x7ce
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x3
	.value	0x7d5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x3
	.value	0x7d6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x3
	.value	0x7d7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x7d8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x7d9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x3
	.value	0x7da
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x3
	.value	0x7db
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x441e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x7f6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x7f7
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x21
	.long	.LASF25
	.byte	0x3
	.value	0x7f8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x21
	.long	.LASF29
	.byte	0x3
	.value	0x7fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x21
	.long	.LASF18
	.byte	0x3
	.value	0x7fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x7ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x4453
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x21
	.long	.LASF26
	.byte	0x3
	.value	0x819
	.long	0x55df
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x4e50
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x4e88
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x2019
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1d
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x55d3
	.uleb128 0x18
	.long	0x5836
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1e
	.uleb128 0x19
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x19
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x19
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x19
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x19
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x19
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x19
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x19
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x19
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x19
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x19
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x19
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x19
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x19
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x19
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x19
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x19
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x19
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x19
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x19
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x19
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x19
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x19
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x19
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x19
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x19
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x19
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x19
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x19
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x19
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x19
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x19
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x5885
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x833
	.long	0x3915
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x55e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5940
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x21
	.long	.LASF23
	.byte	0x3
	.value	0x9de
	.long	0x5940
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x5945
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x5945
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x5945
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x5983
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2ce
	.uleb128 0xa
	.long	0x594a
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x27
	.long	0x5977
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x5977
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x597d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x594a
	.uleb128 0xa
	.long	0x5988
	.uleb128 0x3
	.byte	0x4
	.long	0x5953
	.uleb128 0x1f
	.long	0x59ed
	.long	.LASF30
	.byte	0x4
	.byte	0x13
	.byte	0x33
	.uleb128 0x19
	.string	"DINFO_LEVEL_NONE"
	.sleb128 0
	.uleb128 0x19
	.string	"DINFO_LEVEL_TERSE"
	.sleb128 1
	.uleb128 0x19
	.string	"DINFO_LEVEL_NORMAL"
	.sleb128 2
	.uleb128 0x19
	.string	"DINFO_LEVEL_VERBOSE"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.long	0x59fd
	.long	0x467
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x425
	.uleb128 0x4
	.long	0x5a67
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x6
	.byte	0x35
	.long	0x5a67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x5a67
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x5a6d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a10
	.uleb128 0xf
	.long	0x5a7d
	.long	0x59fd
	.uleb128 0x10
	.long	0x3d1
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x5a10
	.uleb128 0x3
	.byte	0x4
	.long	0x5a7d
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x14d7
	.uleb128 0x4
	.long	0x5b01
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x22
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x59ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x5b10
	.uleb128 0x3
	.byte	0x4
	.long	0x5aa7
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x5a99
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x456
	.uleb128 0x4
	.long	0x5be0
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x5be0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x5be0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x1662
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x1662
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x7
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0x83
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0x85
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0x87
	.long	0x5b24
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b35
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x5be0
	.uleb128 0x4
	.long	0x5e61
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x5e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x5e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x5e67
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x5e7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x7
	.value	0x18b
	.long	0x5e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x5e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x5b01
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x7
	.value	0x195
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x5e7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x5e7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x5b01
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x5e80
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x5e61
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x5e61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x21
	.long	.LASF31
	.byte	0x7
	.value	0x1b7
	.long	0x5e61
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x7
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x7
	.value	0x1e6
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bf2
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x1662
	.uleb128 0x3
	.byte	0x4
	.long	0x5be6
	.uleb128 0x3
	.byte	0x4
	.long	0x5e61
	.uleb128 0x4
	.long	0x6069
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x15
	.byte	0x19
	.uleb128 0x6
	.string	"init"
	.byte	0x15
	.byte	0x1c
	.long	0x6075
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"finish"
	.byte	0x15
	.byte	0x1f
	.long	0x6075
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"define"
	.byte	0x15
	.byte	0x22
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"undef"
	.byte	0x15
	.byte	0x25
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"start_source_file"
	.byte	0x15
	.byte	0x29
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"end_source_file"
	.byte	0x15
	.byte	0x2d
	.long	0x609e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"begin_block"
	.byte	0x15
	.byte	0x31
	.long	0x60b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"end_block"
	.byte	0x15
	.byte	0x34
	.long	0x60b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"ignore_block"
	.byte	0x15
	.byte	0x3b
	.long	0x60cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"source_line"
	.byte	0x15
	.byte	0x3e
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"begin_prologue"
	.byte	0x15
	.byte	0x43
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"end_prologue"
	.byte	0x15
	.byte	0x47
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"end_epilogue"
	.byte	0x15
	.byte	0x4a
	.long	0x608c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"begin_function"
	.byte	0x15
	.byte	0x4d
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"end_function"
	.byte	0x15
	.byte	0x50
	.long	0x609e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_decl"
	.byte	0x15
	.byte	0x56
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"global_decl"
	.byte	0x15
	.byte	0x5a
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"deferred_inline_function"
	.byte	0x15
	.byte	0x5e
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"outlining_inline_function"
	.byte	0x15
	.byte	0x63
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"label"
	.byte	0x15
	.byte	0x67
	.long	0x60ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x6075
	.byte	0x1
	.uleb128 0x16
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6069
	.uleb128 0x15
	.long	0x608c
	.byte	0x1
	.uleb128 0x16
	.long	0x3ba
	.uleb128 0x16
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x607b
	.uleb128 0x15
	.long	0x609e
	.byte	0x1
	.uleb128 0x16
	.long	0x3ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6092
	.uleb128 0x15
	.long	0x60b5
	.byte	0x1
	.uleb128 0x16
	.long	0x3ba
	.uleb128 0x16
	.long	0x3ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60a4
	.uleb128 0x27
	.long	0x60cb
	.byte	0x1
	.long	0x594a
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60bb
	.uleb128 0x15
	.long	0x60dd
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60d1
	.uleb128 0x15
	.long	0x60ef
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60e3
	.uleb128 0x4
	.long	0x615a
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xb
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xb
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xb
	.byte	0x19
	.long	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xb
	.byte	0x1a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF31
	.byte	0xb
	.byte	0x1b
	.long	0x615a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60f5
	.uleb128 0x13
	.long	0x61a8
	.long	.LASF32
	.byte	0x10
	.byte	0xb
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xb
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xb
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF33
	.byte	0xb
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF31
	.byte	0xb
	.byte	0x29
	.long	0x61a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6160
	.uleb128 0x4
	.long	0x62fd
	.string	"emit_status"
	.byte	0x34
	.byte	0xb
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xb
	.byte	0x3a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xb
	.byte	0x3d
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xb
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xb
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF33
	.byte	0xb
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF32
	.byte	0xb
	.byte	0x50
	.long	0x61a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xb
	.byte	0x54
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xb
	.byte	0x58
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xb
	.byte	0x59
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xb
	.byte	0x5f
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xb
	.byte	0x65
	.long	0x757
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xb
	.byte	0x69
	.long	0x5977
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xb
	.byte	0x70
	.long	0x169d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x63dd
	.string	"expr_status"
	.byte	0x1c
	.byte	0xb
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xb
	.byte	0x80
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xb
	.byte	0x91
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xb
	.byte	0x97
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xb
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xb
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xb
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xb
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6447
	.long	.LASF28
	.byte	0x4
	.byte	0xb
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
	.uleb128 0x1d
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6447
	.uleb128 0x1d
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6459
	.uleb128 0x3
	.byte	0x4
	.long	0x62fd
	.uleb128 0x3
	.byte	0x4
	.long	0x61ae
	.uleb128 0x1d
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6479
	.uleb128 0x1d
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x648f
	.uleb128 0x1d
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64ac
	.uleb128 0x1d
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64be
	.uleb128 0x1d
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64d7
	.uleb128 0x4
	.long	0x6539
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x16
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x16
	.byte	0x3b
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x16
	.byte	0x3c
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x16
	.byte	0x3d
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x16
	.byte	0x3e
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x676f
	.string	"asm_out"
	.byte	0x70
	.byte	0x16
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x16
	.byte	0x35
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x16
	.byte	0x38
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x64f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x16
	.byte	0x3f
	.long	0x64f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x16
	.byte	0x46
	.long	0x6789
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x16
	.byte	0x49
	.long	0x67a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x16
	.byte	0x4d
	.long	0x67bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x16
	.byte	0x50
	.long	0x67d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x16
	.byte	0x53
	.long	0x67e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x16
	.byte	0x56
	.long	0x67e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x16
	.byte	0x59
	.long	0x67d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x16
	.byte	0x5d
	.long	0x67fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x16
	.byte	0x60
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x16
	.byte	0x63
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x16
	.byte	0x6a
	.long	0x6819
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x16
	.byte	0x6e
	.long	0x6835
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x16
	.byte	0x73
	.long	0x67bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x16
	.byte	0x76
	.long	0x684c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x16
	.byte	0x79
	.long	0x684c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x16
	.byte	0x80
	.long	0x6872
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x16
	.byte	0x8b
	.long	0x6897
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x27
	.long	0x6789
	.byte	0x1
	.long	0x594a
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x3ba
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x676f
	.uleb128 0x15
	.long	0x67a0
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c5
	.uleb128 0x3
	.byte	0x4
	.long	0x678f
	.uleb128 0x15
	.long	0x67bd
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67ac
	.uleb128 0x15
	.long	0x67d4
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x456
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67c3
	.uleb128 0x15
	.long	0x67e6
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67da
	.uleb128 0x15
	.long	0x67fd
	.byte	0x1
	.uleb128 0x16
	.long	0x2ce
	.uleb128 0x16
	.long	0x3ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x67ec
	.uleb128 0x15
	.long	0x6819
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x467
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6803
	.uleb128 0x15
	.long	0x6835
	.byte	0x1
	.uleb128 0x16
	.long	0x815
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x467
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x681f
	.uleb128 0x15
	.long	0x684c
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x683b
	.uleb128 0x15
	.long	0x6872
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x456
	.uleb128 0x16
	.long	0x456
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6852
	.uleb128 0x27
	.long	0x6897
	.byte	0x1
	.long	0x594a
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x456
	.uleb128 0x16
	.long	0x456
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6878
	.uleb128 0x4
	.long	0x6a58
	.string	"sched"
	.byte	0x40
	.byte	0x16
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x16
	.byte	0x97
	.long	0x6a77
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x16
	.byte	0x9b
	.long	0x6a92
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x16
	.byte	0xa0
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x16
	.byte	0xa4
	.long	0x6ac3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x16
	.byte	0xa7
	.long	0x6adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x16
	.byte	0xaa
	.long	0x6af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x16
	.byte	0xae
	.long	0x6b20
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x16
	.byte	0xaf
	.long	0x6b20
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x16
	.byte	0xb4
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc2
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x16
	.byte	0xc3
	.long	0x6b2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc4
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x16
	.byte	0xc5
	.long	0x6b2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x16
	.byte	0xcd
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x16
	.byte	0xd8
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x16
	.byte	0xd9
	.long	0x6b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x27
	.long	0x6a77
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a58
	.uleb128 0x27
	.long	0x6a92
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a7d
	.uleb128 0x29
	.byte	0x1
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x6a98
	.uleb128 0x27
	.long	0x6ac3
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6aa4
	.uleb128 0x15
	.long	0x6adf
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ac9
	.uleb128 0x15
	.long	0x6af6
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ae5
	.uleb128 0x27
	.long	0x6b20
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x169d
	.uleb128 0x16
	.long	0x7f5
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6afc
	.uleb128 0x29
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x6b26
	.uleb128 0x27
	.long	0x6b42
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b32
	.uleb128 0x4
	.long	0x6e25
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x16
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x16
	.byte	0x8f
	.long	0x6539
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x16
	.byte	0xda
	.long	0x689d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x16
	.byte	0xdd
	.long	0x6e3a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x16
	.byte	0xe0
	.long	0x6e3a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x16
	.byte	0xe4
	.long	0x6e40
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x16
	.byte	0xe9
	.long	0x6e60
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x16
	.byte	0xec
	.long	0x60dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x16
	.byte	0xef
	.long	0x6e77
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x16
	.byte	0xf3
	.long	0x60cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x16
	.byte	0xf7
	.long	0x60cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x16
	.byte	0xfa
	.long	0x80f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x16
	.byte	0xfd
	.long	0x6ea1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x16
	.value	0x103
	.long	0x6ec1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x16
	.value	0x107
	.long	0x6ecd
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x16
	.value	0x10a
	.long	0x6ee3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x16
	.value	0x10d
	.long	0x60cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x16
	.value	0x111
	.long	0x60cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x16
	.value	0x115
	.long	0x67bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x16
	.value	0x118
	.long	0x6ef9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x16
	.value	0x11d
	.long	0x594a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x16
	.value	0x121
	.long	0x594a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x16
	.value	0x124
	.long	0x594a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x16
	.value	0x127
	.long	0x594a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x16
	.value	0x12a
	.long	0x594a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x27
	.long	0x6e3a
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e25
	.uleb128 0x3
	.byte	0x4
	.long	0x6e46
	.uleb128 0xa
	.long	0x5885
	.uleb128 0x27
	.long	0x6e60
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e4b
	.uleb128 0x15
	.long	0x6e77
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x5977
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e66
	.uleb128 0x27
	.long	0x6ea1
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x815
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e7d
	.uleb128 0x27
	.long	0x6ec1
	.byte	0x1
	.long	0x3ba
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2ce
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ea7
	.uleb128 0x29
	.byte	0x1
	.long	0x594a
	.uleb128 0x3
	.byte	0x4
	.long	0x6ec7
	.uleb128 0x27
	.long	0x6ee3
	.byte	0x1
	.long	0x594a
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ed3
	.uleb128 0x27
	.long	0x6ef9
	.byte	0x1
	.long	0x2ce
	.uleb128 0x16
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ee9
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x17
	.byte	0x1d
	.long	0x6f1b
	.uleb128 0x3
	.byte	0x4
	.long	0x6f21
	.uleb128 0x15
	.long	0x6f37
	.byte	0x1
	.uleb128 0x16
	.long	0x67a0
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x4
	.long	0x70bd
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x17
	.byte	0x23
	.uleb128 0x6
	.string	"walk_subtrees"
	.byte	0x17
	.byte	0x24
	.long	0x7107
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x17
	.byte	0x29
	.long	0x711d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x17
	.byte	0x2a
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x17
	.byte	0x2b
	.long	0x714e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x17
	.byte	0x2d
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x17
	.byte	0x2e
	.long	0x7169
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x17
	.byte	0x2f
	.long	0x7198
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x17
	.byte	0x34
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x17
	.byte	0x35
	.long	0x71ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x17
	.byte	0x36
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x17
	.byte	0x37
	.long	0x71c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x17
	.byte	0x38
	.long	0x71e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x27
	.long	0x70e1
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x70e1
	.uleb128 0x16
	.long	0x7f5
	.uleb128 0x16
	.long	0x70e7
	.uleb128 0x16
	.long	0x4bd
	.uleb128 0x16
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x70ed
	.uleb128 0x27
	.long	0x7107
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x70e1
	.uleb128 0x16
	.long	0x7f5
	.uleb128 0x16
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70bd
	.uleb128 0x27
	.long	0x711d
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x70e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x710d
	.uleb128 0x27
	.long	0x7133
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7123
	.uleb128 0x27
	.long	0x714e
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x4bd
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7139
	.uleb128 0x27
	.long	0x7169
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7154
	.uleb128 0x27
	.long	0x7198
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x4bd
	.uleb128 0x16
	.long	0x7f5
	.uleb128 0x16
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x716f
	.uleb128 0x27
	.long	0x71ae
	.byte	0x1
	.long	0x594a
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x719e
	.uleb128 0x15
	.long	0x71c0
	.byte	0x1
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71b4
	.uleb128 0x27
	.long	0x71e0
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
	.long	0x71c6
	.uleb128 0x4
	.long	0x7255
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x17
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x17
	.byte	0x42
	.long	0x7261
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x17
	.byte	0x45
	.long	0x7261
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x17
	.byte	0x48
	.long	0x7261
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x17
	.byte	0x4b
	.long	0x7261
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x7261
	.byte	0x1
	.uleb128 0x16
	.long	0x4e4a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7255
	.uleb128 0x4
	.long	0x72b2
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x17
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x17
	.byte	0x54
	.long	0x72c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x17
	.byte	0x57
	.long	0x72dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	0x72c7
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x4bd
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72b2
	.uleb128 0x27
	.long	0x72dd
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72cd
	.uleb128 0x4
	.long	0x73d0
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x17
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x17
	.byte	0x60
	.long	0x73e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x17
	.byte	0x64
	.long	0x73fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x17
	.byte	0x68
	.long	0x7416
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x17
	.byte	0x6c
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x17
	.byte	0x70
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x17
	.byte	0x74
	.long	0x7447
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x17
	.byte	0x7a
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x17
	.byte	0x80
	.long	0x745e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x27
	.long	0x73e0
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x16e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x73d0
	.uleb128 0x27
	.long	0x73fb
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x815
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x73e6
	.uleb128 0x27
	.long	0x7416
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x3ba
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7401
	.uleb128 0x27
	.long	0x742c
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x741c
	.uleb128 0x27
	.long	0x7447
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7432
	.uleb128 0x15
	.long	0x745e
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x744d
	.uleb128 0x4
	.long	0x756a
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x17
	.byte	0x86
	.uleb128 0x6
	.string	"pushlevel"
	.byte	0x17
	.byte	0x89
	.long	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"poplevel"
	.byte	0x17
	.byte	0x90
	.long	0x7584
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x17
	.byte	0x94
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x17
	.byte	0x99
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x17
	.byte	0x9c
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x17
	.byte	0xa2
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x17
	.byte	0xa5
	.long	0x7590
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x17
	.byte	0xa9
	.long	0x60cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"final_write_globals"
	.byte	0x17
	.byte	0xad
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"ok_for_sibcall"
	.byte	0x17
	.byte	0xb0
	.long	0x60cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x27
	.long	0x7584
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x756a
	.uleb128 0x29
	.byte	0x1
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x758a
	.uleb128 0x25
	.long	0x79bb
	.long	.LASF35
	.value	0x120
	.byte	0x17
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x17
	.byte	0xb8
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"identifier_size"
	.byte	0x17
	.byte	0xbc
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"init_options"
	.byte	0x17
	.byte	0xc0
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decode_option"
	.byte	0x17
	.byte	0xca
	.long	0x79d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x17
	.byte	0xd6
	.long	0x6ecd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x17
	.byte	0xde
	.long	0x6ef9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"finish"
	.byte	0x17
	.byte	0xe1
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"parse_file"
	.byte	0x17
	.byte	0xe5
	.long	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"clear_binding_stack"
	.byte	0x17
	.byte	0xe8
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"get_alias_set"
	.byte	0x17
	.byte	0xec
	.long	0x79ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x17
	.byte	0xf1
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x17
	.byte	0xf5
	.long	0x7a11
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"truthvalue_conversion"
	.byte	0x17
	.value	0x102
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"insert_default_attributes"
	.byte	0x17
	.value	0x106
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"safe_from_p"
	.byte	0x17
	.value	0x10f
	.long	0x7a2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"finish_incomplete_decl"
	.byte	0x17
	.value	0x113
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"unsafe_for_reeval"
	.byte	0x17
	.value	0x118
	.long	0x72dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"mark_addressable"
	.byte	0x17
	.value	0x11d
	.long	0x60cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"staticp"
	.byte	0x17
	.value	0x120
	.long	0x72dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"dup_lang_specific_decl"
	.byte	0x17
	.value	0x124
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"unsave_expr_now"
	.byte	0x17
	.value	0x129
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"maybe_build_cleanup"
	.byte	0x17
	.value	0x12d
	.long	0x742c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"set_decl_assembler_name"
	.byte	0x17
	.value	0x134
	.long	0x60dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"can_use_bit_fields_p"
	.byte	0x17
	.value	0x138
	.long	0x6ecd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"honor_readonly"
	.byte	0x17
	.value	0x13b
	.long	0x594a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"print_statistics"
	.byte	0x17
	.value	0x13f
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"print_xnode"
	.byte	0x17
	.value	0x143
	.long	0x6eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"print_decl"
	.byte	0x17
	.value	0x147
	.long	0x6eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"print_type"
	.byte	0x17
	.value	0x148
	.long	0x6eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"print_identifier"
	.byte	0x17
	.value	0x149
	.long	0x6eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"decl_printable_name"
	.byte	0x17
	.value	0x151
	.long	0x7a47
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"print_error_function"
	.byte	0x17
	.value	0x154
	.long	0x7a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"expr_size"
	.byte	0x17
	.value	0x15b
	.long	0x742c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF34
	.byte	0x17
	.value	0x162
	.long	0x6e40
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"common_attribute_table"
	.byte	0x17
	.value	0x163
	.long	0x6e40
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"format_attribute_table"
	.byte	0x17
	.value	0x164
	.long	0x6e40
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF27
	.byte	0x17
	.value	0x167
	.long	0x71e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"tree_inlining"
	.byte	0x17
	.value	0x169
	.long	0x6f37
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"tree_dump"
	.byte	0x17
	.value	0x16b
	.long	0x7267
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"decls"
	.byte	0x17
	.value	0x16d
	.long	0x7464
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"types"
	.byte	0x17
	.value	0x16f
	.long	0x72e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x27
	.long	0x79d0
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x2e1
	.uleb128 0x16
	.long	0x79d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4bf
	.uleb128 0x3
	.byte	0x4
	.long	0x79bb
	.uleb128 0x27
	.long	0x79ec
	.byte	0x1
	.long	0x456
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79dc
	.uleb128 0x27
	.long	0x7a11
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x815
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79f2
	.uleb128 0x27
	.long	0x7a2c
	.byte	0x1
	.long	0x2e1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a17
	.uleb128 0x27
	.long	0x7a47
	.byte	0x1
	.long	0x2ce
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a32
	.uleb128 0x15
	.long	0x7a5e
	.byte	0x1
	.uleb128 0x16
	.long	0x7a5e
	.uleb128 0x16
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a64
	.uleb128 0x1d
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7a4d
	.uleb128 0x18
	.long	0x7c61
	.string	"__stab_debug_code"
	.byte	0x4
	.byte	0x12
	.byte	0x7
	.uleb128 0x19
	.string	"N_GSYM"
	.sleb128 32
	.uleb128 0x19
	.string	"N_FNAME"
	.sleb128 34
	.uleb128 0x19
	.string	"N_FUN"
	.sleb128 36
	.uleb128 0x19
	.string	"N_STSYM"
	.sleb128 38
	.uleb128 0x19
	.string	"N_LCSYM"
	.sleb128 40
	.uleb128 0x19
	.string	"N_MAIN"
	.sleb128 42
	.uleb128 0x19
	.string	"N_PC"
	.sleb128 48
	.uleb128 0x19
	.string	"N_NSYMS"
	.sleb128 50
	.uleb128 0x19
	.string	"N_NOMAP"
	.sleb128 52
	.uleb128 0x19
	.string	"N_OBJ"
	.sleb128 56
	.uleb128 0x19
	.string	"N_OPT"
	.sleb128 60
	.uleb128 0x19
	.string	"N_RSYM"
	.sleb128 64
	.uleb128 0x19
	.string	"N_M2C"
	.sleb128 66
	.uleb128 0x19
	.string	"N_SLINE"
	.sleb128 68
	.uleb128 0x19
	.string	"N_DSLINE"
	.sleb128 70
	.uleb128 0x19
	.string	"N_BSLINE"
	.sleb128 72
	.uleb128 0x19
	.string	"N_BROWS"
	.sleb128 72
	.uleb128 0x19
	.string	"N_DEFD"
	.sleb128 74
	.uleb128 0x19
	.string	"N_EHDECL"
	.sleb128 80
	.uleb128 0x19
	.string	"N_MOD2"
	.sleb128 80
	.uleb128 0x19
	.string	"N_CATCH"
	.sleb128 84
	.uleb128 0x19
	.string	"N_SSYM"
	.sleb128 96
	.uleb128 0x19
	.string	"N_SO"
	.sleb128 100
	.uleb128 0x19
	.string	"N_LSYM"
	.sleb128 128
	.uleb128 0x19
	.string	"N_BINCL"
	.sleb128 130
	.uleb128 0x19
	.string	"N_SOL"
	.sleb128 132
	.uleb128 0x19
	.string	"N_PSYM"
	.sleb128 160
	.uleb128 0x19
	.string	"N_EINCL"
	.sleb128 162
	.uleb128 0x19
	.string	"N_ENTRY"
	.sleb128 164
	.uleb128 0x19
	.string	"N_LBRAC"
	.sleb128 192
	.uleb128 0x19
	.string	"N_EXCL"
	.sleb128 194
	.uleb128 0x19
	.string	"N_SCOPE"
	.sleb128 196
	.uleb128 0x19
	.string	"N_RBRAC"
	.sleb128 224
	.uleb128 0x19
	.string	"N_BCOMM"
	.sleb128 226
	.uleb128 0x19
	.string	"N_ECOMM"
	.sleb128 228
	.uleb128 0x19
	.string	"N_ECOML"
	.sleb128 232
	.uleb128 0x19
	.string	"N_NBTEXT"
	.sleb128 240
	.uleb128 0x19
	.string	"N_NBDATA"
	.sleb128 242
	.uleb128 0x19
	.string	"N_NBBSS"
	.sleb128 244
	.uleb128 0x19
	.string	"N_NBSTS"
	.sleb128 246
	.uleb128 0x19
	.string	"N_NBLCS"
	.sleb128 248
	.uleb128 0x19
	.string	"N_LENG"
	.sleb128 254
	.uleb128 0x19
	.string	"LAST_UNUSED_STAB_CODE"
	.sleb128 255
	.byte	0x0
	.uleb128 0x18
	.long	0x7c9e
	.string	"typestatus"
	.byte	0x4
	.byte	0x1
	.byte	0xd1
	.uleb128 0x19
	.string	"TYPE_UNSEEN"
	.sleb128 0
	.uleb128 0x19
	.string	"TYPE_XREF"
	.sleb128 1
	.uleb128 0x19
	.string	"TYPE_DEFINED"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x7ce5
	.string	"typeinfo"
	.byte	0xc
	.byte	0x1
	.byte	0xdb
	.uleb128 0x6
	.string	"status"
	.byte	0x1
	.byte	0xdc
	.long	0x7c61
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x1
	.byte	0xde
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_number"
	.byte	0x1
	.byte	0xdf
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x7d21
	.string	"dbx_file"
	.byte	0xc
	.byte	0x1
	.byte	0xfb
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.byte	0xfc
	.long	0x7d21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x1
	.byte	0xfd
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0xfe
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ce5
	.uleb128 0x2a
	.long	0x7d8b
	.string	"dbxout_function_end"
	.byte	0x1
	.value	0x191
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.string	"lscope_label_name"
	.byte	0x1
	.value	0x193
	.long	0x7d8b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.string	"scope_labelno"
	.byte	0x1
	.value	0x192
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	scope_labelno.13161
	.byte	0x0
	.uleb128 0xf
	.long	0x7d9b
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x63
	.byte	0x0
	.uleb128 0x2a
	.long	0x7dfa
	.string	"dbxout_init"
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"input_file_name"
	.byte	0x1
	.value	0x1ae
	.long	0x2ce
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.long	.LASF38
	.byte	0x1
	.value	0x1b0
	.long	0x7d8b
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"syms"
	.byte	0x1
	.value	0x1b1
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x2a
	.long	0x7e49
	.string	"dbxout_typedefs"
	.byte	0x1
	.value	0x212
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2c
	.string	"syms"
	.byte	0x1
	.value	0x211
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.long	.LASF2
	.byte	0x1
	.value	0x218
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x7ea3
	.string	"dbxout_start_source_file"
	.byte	0x1
	.value	0x228
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0x226
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x227
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x22a
	.long	0x7d21
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x7eee
	.string	"dbxout_end_source_file"
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0x23a
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF31
	.byte	0x1
	.value	0x23d
	.long	0x7d21
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x7f52
	.string	"dbxout_source_file"
	.byte	0x1
	.value	0x24d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2c
	.string	"file"
	.byte	0x1
	.value	0x24b
	.long	0x67a0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x24c
	.long	0x2ce
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.long	.LASF38
	.byte	0x1
	.value	0x253
	.long	0x7d8b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x7fd5
	.string	"dbxout_source_line"
	.byte	0x1
	.value	0x26f
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2c
	.string	"lineno"
	.byte	0x1
	.value	0x26d
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x26e
	.long	0x2ce
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x30
	.long	0x7fbb
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.value	0x273
	.long	0x7fd5
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x0
	.uleb128 0x2b
	.string	"sym_lineno"
	.byte	0x1
	.value	0x273
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	sym_lineno.13368
	.byte	0x0
	.uleb128 0xf
	.long	0x7fe5
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xff
	.byte	0x0
	.uleb128 0x2a
	.long	0x802a
	.string	"dbxout_begin_block"
	.byte	0x1
	.value	0x27f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0x27d
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x27e
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x806d
	.string	"dbxout_end_block"
	.byte	0x1
	.value	0x289
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2f
	.long	.LASF6
	.byte	0x1
	.value	0x287
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x288
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x80a7
	.string	"dbxout_function_decl"
	.byte	0x1
	.value	0x296
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x295
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x80df
	.string	"dbxout_global_decl"
	.byte	0x1
	.value	0x2ad
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x2ac
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8112
	.string	"dbxout_finish"
	.byte	0x1
	.value	0x2bb
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.long	.LASF39
	.byte	0x1
	.value	0x2ba
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x817a
	.string	"dbxout_fptype_value"
	.byte	0x1
	.value	0x2d5
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x2d4
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF16
	.byte	0x1
	.value	0x2d6
	.long	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.string	"mode"
	.byte	0x1
	.value	0x2d7
	.long	0x815
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF40
	.long	0x8d06
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13446
	.byte	0x0
	.uleb128 0x2a
	.long	0x81be
	.string	"dbxout_type_index"
	.byte	0x1
	.value	0x2fd
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x2fc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x302
	.long	0x81be
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c9e
	.uleb128 0x32
	.string	"dbxout_continue"
	.byte	0x1
	.value	0x311
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2a
	.long	0x8245
	.string	"dbxout_type_fields"
	.byte	0x1
	.value	0x324
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x323
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x325
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x35d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x82c8
	.string	"dbxout_type_method_1"
	.byte	0x1
	.value	0x380
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x37e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x1
	.value	0x37f
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"c1"
	.byte	0x1
	.value	0x381
	.long	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2b
	.string	"c2"
	.byte	0x1
	.value	0x381
	.long	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2e
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"firstarg"
	.byte	0x1
	.value	0x387
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x83f1
	.string	"dbxout_type_methods"
	.byte	0x1
	.value	0x3ae
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x3ad
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"methods"
	.byte	0x1
	.value	0x3b0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"type_encoding"
	.byte	0x1
	.value	0x3b1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"fndecl"
	.byte	0x1
	.value	0x3b2
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"last"
	.byte	0x1
	.value	0x3b3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"formatted_type_identifier_length"
	.byte	0x1
	.value	0x3b4
	.long	0x83f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"type_identifier_length"
	.byte	0x1
	.value	0x3b5
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"need_prefix"
	.byte	0x1
	.value	0x3db
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2d
	.long	.LASF41
	.byte	0x1
	.value	0x3e8
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x3ff
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x8401
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xf
	.byte	0x0
	.uleb128 0x2a
	.long	0x8438
	.string	"dbxout_range_type"
	.byte	0x1
	.value	0x418
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x417
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x851a
	.string	"dbxout_type"
	.byte	0x1
	.value	0x45d
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x45b
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"full"
	.byte	0x1
	.value	0x45c
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x45e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x45f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	0x84e5
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x600
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"n_baseclasses"
	.byte	0x1
	.value	0x600
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"child"
	.byte	0x1
	.value	0x63f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.string	"anonymous_type_number"
	.byte	0x1
	.value	0x460
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	anonymous_type_number.13819
	.uleb128 0x31
	.long	.LASF40
	.long	0x8d01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13854
	.byte	0x0
	.uleb128 0x2a
	.long	0x85ce
	.string	"print_int_cst_octal"
	.byte	0x1
	.value	0x70b
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x70a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"high"
	.byte	0x1
	.value	0x70c
	.long	0x467
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"low"
	.byte	0x1
	.value	0x70d
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"excess"
	.byte	0x1
	.value	0x70e
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"width"
	.byte	0x1
	.value	0x70f
	.long	0x3ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"beg"
	.byte	0x1
	.value	0x727
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"middle"
	.byte	0x1
	.value	0x728
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x72b
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x861e
	.string	"print_octal"
	.byte	0x1
	.value	0x73a
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0x738
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"digits"
	.byte	0x1
	.value	0x739
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x73b
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	0x8660
	.string	"print_wide_int"
	.byte	0x1
	.value	0x748
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x747
	.long	0x456
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"digs"
	.byte	0x1
	.value	0x749
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	0x86b3
	.string	"dbxout_type_name"
	.byte	0x1
	.value	0x75d
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x75c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x75e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF40
	.long	0x8cec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14637
	.byte	0x0
	.uleb128 0x2a
	.long	0x871d
	.string	"dbxout_class_name_qualifiers"
	.byte	0x1
	.value	0x776
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x775
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF25
	.byte	0x1
	.value	0x777
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x77f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x8843
	.byte	0x1
	.string	"dbxout_symbol"
	.byte	0x1
	.value	0x795
	.byte	0x1
	.long	0x2e1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x793
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"local"
	.byte	0x1
	.value	0x794
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF2
	.byte	0x1
	.value	0x796
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF25
	.byte	0x1
	.value	0x797
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x798
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	0x87fb
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"tag_needed"
	.byte	0x1
	.value	0x7ee
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF42
	.byte	0x1
	.value	0x7ef
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	0x87e1
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x808
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x84d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8832
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x88e
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"ival"
	.byte	0x1
	.value	0x893
	.long	0x456
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF40
	.long	0x8cd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14709
	.byte	0x0
	.uleb128 0x34
	.long	0x892e
	.string	"dbxout_symbol_location"
	.byte	0x1
	.value	0x8c1
	.byte	0x1
	.long	0x2e1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x8be
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x8be
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"suffix"
	.byte	0x1
	.value	0x8bf
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"home"
	.byte	0x1
	.value	0x8c0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"letter"
	.byte	0x1
	.value	0x8c2
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"regno"
	.byte	0x1
	.value	0x8c3
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	0x88f3
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2d
	.long	.LASF16
	.byte	0x1
	.value	0x8cd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	0x8910
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x910
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"subtype"
	.byte	0x1
	.value	0x971
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8999
	.string	"dbxout_symbol_name"
	.byte	0x1
	.value	0x9ad
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x9aa
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"suffix"
	.byte	0x1
	.value	0x9ab
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"letter"
	.byte	0x1
	.value	0x9ac
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x9ae
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x89d4
	.string	"dbxout_prepare_symbol"
	.byte	0x1
	.value	0x9c7
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x9c6
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8a1d
	.string	"dbxout_finish_symbol"
	.byte	0x1
	.value	0x9d2
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2c
	.string	"sym"
	.byte	0x1
	.value	0x9d1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF6
	.byte	0x1
	.value	0x9d6
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x8a63
	.byte	0x1
	.string	"dbxout_syms"
	.byte	0x1
	.value	0x9e9
	.byte	0x1
	.long	0x2e1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2c
	.string	"syms"
	.byte	0x1
	.value	0x9e8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF29
	.byte	0x1
	.value	0x9ea
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x8b38
	.byte	0x1
	.string	"dbxout_parms"
	.byte	0x1
	.value	0xa02
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2c
	.string	"parms"
	.byte	0x1
	.value	0xa01
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	0x8ab5
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"addr"
	.byte	0x1
	.value	0xa17
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x30
	.long	0x8afb
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"best_rtl"
	.byte	0x1
	.value	0xa4a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0xa4b
	.long	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2b
	.string	"parm_type"
	.byte	0x1
	.value	0xa4c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	0x8b18
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2d
	.long	.LASF43
	.byte	0x1
	.value	0xa89
	.long	0x2d9
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"decl_name"
	.byte	0x1
	.value	0xab7
	.long	0x5940
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x8b71
	.byte	0x1
	.string	"dbxout_reg_parms"
	.byte	0x1
	.value	0xb14
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2c
	.string	"parms"
	.byte	0x1
	.value	0xb13
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8ba3
	.string	"dbxout_args"
	.byte	0x1
	.value	0xb31
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2c
	.string	"args"
	.byte	0x1
	.value	0xb30
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8c8c
	.string	"dbxout_block"
	.byte	0x1
	.value	0xb51
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2c
	.string	"block"
	.byte	0x1
	.value	0xb4e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"depth"
	.byte	0x1
	.value	0xb4f
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"args"
	.byte	0x1
	.value	0xb50
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"blocknum"
	.byte	0x1
	.value	0xb52
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"begin_label"
	.byte	0x1
	.value	0xb55
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2d
	.long	.LASF42
	.byte	0x1
	.value	0xb61
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	0x8c71
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xb75
	.long	0x7e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0xb7c
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xba7
	.long	0x7e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x8cc7
	.string	"dbxout_begin_function"
	.byte	0x1
	.value	0xbc2
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xbc1
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x8cd7
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xd
	.byte	0x0
	.uleb128 0xa
	.long	0x8cc7
	.uleb128 0xf
	.long	0x8cec
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x8cdc
	.uleb128 0xf
	.long	0x8d01
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x8cf1
	.uleb128 0xa
	.long	0x7e0
	.uleb128 0x36
	.string	"have_used_extensions"
	.byte	0x1
	.byte	0xa0
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	have_used_extensions
	.uleb128 0x36
	.string	"source_label_number"
	.byte	0x1
	.byte	0xa6
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	source_label_number
	.uleb128 0x36
	.string	"asmfile"
	.byte	0x1
	.byte	0xc7
	.long	0x67a0
	.byte	0x5
	.byte	0x3
	.long	asmfile
	.uleb128 0x36
	.string	"lastfile"
	.byte	0x1
	.byte	0xcb
	.long	0x2ce
	.byte	0x5
	.byte	0x3
	.long	lastfile
	.uleb128 0x36
	.string	"cwd"
	.byte	0x1
	.byte	0xcf
	.long	0x2ce
	.byte	0x5
	.byte	0x3
	.long	cwd
	.uleb128 0x36
	.string	"typevec_len"
	.byte	0x1
	.byte	0xec
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	typevec_len
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.byte	0xf2
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	next_type_number
	.uleb128 0x2b
	.string	"current_file"
	.byte	0x1
	.value	0x103
	.long	0x7d21
	.byte	0x5
	.byte	0x3
	.long	current_file
	.uleb128 0x2b
	.string	"next_file_number"
	.byte	0x1
	.value	0x107
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	next_file_number
	.uleb128 0x2b
	.string	"current_sym_code"
	.byte	0x1
	.value	0x115
	.long	0x7a7f
	.byte	0x5
	.byte	0x3
	.long	current_sym_code
	.uleb128 0x2b
	.string	"current_sym_value"
	.byte	0x1
	.value	0x116
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	current_sym_value
	.uleb128 0x2b
	.string	"current_sym_addr"
	.byte	0x1
	.value	0x117
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	current_sym_addr
	.uleb128 0x2b
	.string	"current_sym_nchars"
	.byte	0x1
	.value	0x11c
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	current_sym_nchars
	.uleb128 0x38
	.string	"target_flags"
	.byte	0xc
	.byte	0x21
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8e8e
	.long	0x2e1
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x38
	.string	"mips_dbx_regno"
	.byte	0xc
	.byte	0xa0
	.long	0x8e83
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8eb6
	.long	0x3fe
	.uleb128 0x10
	.long	0x3d1
	.byte	0x35
	.byte	0x0
	.uleb128 0x38
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x8ec9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8ea6
	.uleb128 0xf
	.long	0x8ede
	.long	0x9b
	.uleb128 0x10
	.long	0x3d1
	.byte	0x80
	.byte	0x0
	.uleb128 0x3a
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x6a4
	.long	0x8ece
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8f01
	.long	0x2d9
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x38
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0x8f19
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8ef6
	.uleb128 0xf
	.long	0x8f2e
	.long	0x1e4
	.uleb128 0x10
	.long	0x3d1
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3a
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x8f1e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8f55
	.long	0x1e4
	.uleb128 0x10
	.long	0x3d1
	.byte	0xa
	.byte	0x0
	.uleb128 0x3a
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0x8f45
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"current_function_func_begin_label"
	.byte	0x3
	.value	0xbcb
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF30
	.byte	0x13
	.byte	0x3b
	.long	0x598e
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"use_gnu_debug_info_extensions"
	.byte	0x13
	.byte	0x3f
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"asm_out_file"
	.byte	0x14
	.value	0x194
	.long	0x67a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"dbx_debug_hooks"
	.byte	0x1
	.value	0x157
	.long	0x9023
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dbx_debug_hooks
	.uleb128 0xa
	.long	0x5e86
	.uleb128 0x3a
	.string	"targetm"
	.byte	0x16
	.value	0x12d
	.long	0x6b48
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF35
	.byte	0x17
	.value	0x176
	.long	0x9048
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x7596
	.uleb128 0x3e
	.string	"typevec"
	.byte	0x1
	.byte	0xe8
	.long	0x81be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	typevec
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
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.long	0x76
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9064
	.long	0x871d
	.string	"dbxout_symbol"
	.long	0x8a1d
	.string	"dbxout_syms"
	.long	0x8a63
	.string	"dbxout_parms"
	.long	0x8b38
	.string	"dbxout_reg_parms"
	.long	0x9004
	.string	"dbx_debug_hooks"
	.long	0x904d
	.string	"typevec"
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
.LASF36:
	.string	"file_number"
.LASF38:
	.string	"ltext_label_name"
.LASF6:
	.string	"line"
.LASF23:
	.string	"name"
.LASF41:
	.string	"debug_name"
.LASF29:
	.string	"result"
.LASF8:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_2"
.LASF14:
	.string	"lang_flag_6"
.LASF5:
	.string	"mem_attrs"
.LASF37:
	.string	"next_type_number"
.LASF0:
	.string	"common"
.LASF26:
	.string	"lang_specific"
.LASF33:
	.string	"sequence_rtl_expr"
.LASF32:
	.string	"sequence_stack"
.LASF28:
	.string	"function_frequency"
.LASF39:
	.string	"filename"
.LASF11:
	.string	"lang_flag_3"
.LASF27:
	.string	"function"
.LASF31:
	.string	"next"
.LASF24:
	.string	"main_variant"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"abstract_origin"
.LASF21:
	.string	"pointer_depth"
.LASF22:
	.string	"user_align"
.LASF35:
	.string	"lang_hooks"
.LASF42:
	.string	"did_output"
.LASF19:
	.string	"size_unit"
.LASF34:
	.string	"attribute_table"
.LASF2:
	.string	"type"
.LASF16:
	.string	"value"
.LASF43:
	.string	"regparm_letter"
.LASF12:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_5"
.LASF17:
	.string	"abstract_flag"
.LASF25:
	.string	"context"
.LASF15:
	.string	"ht_identifier"
.LASF40:
	.string	"__FUNCTION__"
.LASF7:
	.string	"built_in_class"
.LASF30:
	.string	"debug_info_level"
.LASF4:
	.string	"_IO_FILE"
.LASF20:
	.string	"attributes"
.LASF1:
	.string	"decl"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
