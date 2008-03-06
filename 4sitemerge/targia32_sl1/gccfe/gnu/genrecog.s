	.file	"genrecog.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	insn_name_ptr
	.comm	insn_name_ptr,4,4
	.local	insn_name_ptr_size
	.comm	insn_name_ptr_size,4,4
	.section	.rodata
.LC0:
	.string	"general_operand"
.LC1:
	.string	"uns_arith_operand"
.LC2:
	.string	"arith_operand"
.LC3:
	.string	"arith32_operand"
.LC4:
	.string	"reg_or_0_operand"
.LC5:
	.string	"true_reg_or_0_operand"
.LC6:
	.string	"small_int"
.LC7:
	.string	"large_int"
.LC8:
	.string	"mips_const_double_ok"
.LC9:
	.string	"const_float_1_operand"
.LC10:
	.string	"simple_memory_operand"
.LC11:
	.string	"equality_op"
.LC12:
	.string	"cmp_op"
.LC13:
	.string	"trap_cmp_op"
.LC14:
	.string	"pc_or_label_operand"
.LC15:
	.string	"call_insn_operand"
.LC16:
	.string	"move_operand"
.LC17:
	.string	"movdi_operand"
.LC18:
	.string	"se_register_operand"
.LC19:
	.string	"se_reg_or_0_operand"
.LC20:
	.string	"se_uns_arith_operand"
.LC21:
	.string	"se_arith_operand"
.LC22:
	.string	"se_nonmemory_operand"
.LC23:
	.string	"consttable_operand"
.LC24:
	.string	"fcc_register_operand"
.LC25:
	.string	"extend_operator"
.LC26:
	.string	"highpart_shift_operator"
.LC27:
	.string	"address_operand"
.LC28:
	.string	"register_operand"
.LC29:
	.string	"pmode_register_operand"
.LC30:
	.string	"scratch_operand"
.LC31:
	.string	"immediate_operand"
.LC32:
	.string	"const_int_operand"
.LC33:
	.string	"const_double_operand"
.LC34:
	.string	"nonimmediate_operand"
.LC35:
	.string	"nonmemory_operand"
.LC36:
	.string	"push_operand"
.LC37:
	.string	"pop_operand"
.LC38:
	.string	"memory_operand"
.LC39:
	.string	"indirect_operand"
.LC40:
	.string	"comparison_operator"
.LC41:
	.string	"mode_independent_operand"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	preds, @object
	.size	preds, 27552
preds:
	.long	.LC0
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.long	80
	.zero	616
	.long	.LC1
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC2
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC3
	.long	71
	.long	64
	.long	73
	.zero	640
	.long	.LC4
	.long	71
	.long	64
	.long	65
	.long	73
	.zero	636
	.long	.LC5
	.long	71
	.long	64
	.long	65
	.long	73
	.zero	636
	.long	.LC6
	.long	64
	.zero	648
	.long	.LC7
	.long	64
	.zero	648
	.long	.LC8
	.long	65
	.zero	648
	.long	.LC9
	.long	65
	.zero	648
	.long	.LC10
	.long	76
	.long	73
	.zero	644
	.long	.LC11
	.long	113
	.long	112
	.zero	644
	.long	.LC12
	.long	113
	.long	112
	.long	115
	.long	114
	.long	119
	.long	118
	.long	117
	.long	116
	.long	121
	.long	120
	.zero	612
	.long	.LC13
	.long	113
	.long	112
	.long	114
	.long	118
	.long	117
	.long	121
	.zero	628
	.long	.LC14
	.long	69
	.long	77
	.zero	644
	.long	.LC15
	.long	64
	.long	68
	.long	78
	.long	71
	.zero	636
	.long	.LC16
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.zero	620
	.long	.LC17
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.long	130
	.zero	616
	.long	.LC18
	.long	73
	.long	71
	.long	130
	.zero	640
	.long	.LC19
	.long	71
	.long	64
	.long	65
	.long	73
	.long	130
	.zero	632
	.long	.LC20
	.long	71
	.long	64
	.long	73
	.long	130
	.zero	636
	.long	.LC21
	.long	71
	.long	64
	.long	73
	.long	130
	.zero	636
	.long	.LC22
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	130
	.zero	620
	.long	.LC23
	.long	77
	.long	78
	.long	64
	.long	65
	.long	68
	.zero	632
	.long	.LC24
	.long	71
	.long	73
	.zero	644
	.long	.LC25
	.long	130
	.long	131
	.zero	644
	.long	.LC26
	.long	99
	.long	100
	.long	101
	.long	98
	.zero	636
	.long	.LC27
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.long	80
	.long	85
	.long	86
	.long	88
	.zero	604
	.long	.LC28
	.long	73
	.long	71
	.long	80
	.zero	640
	.long	.LC29
	.long	73
	.long	71
	.long	80
	.zero	640
	.long	.LC30
	.long	72
	.long	71
	.zero	644
	.long	.LC31
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.zero	632
	.long	.LC32
	.long	64
	.zero	648
	.long	.LC33
	.long	64
	.long	65
	.zero	644
	.long	.LC34
	.long	73
	.long	71
	.long	76
	.long	80
	.zero	636
	.long	.LC35
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	80
	.zero	620
	.long	.LC36
	.long	76
	.zero	648
	.long	.LC37
	.long	76
	.zero	648
	.long	.LC38
	.long	73
	.long	76
	.zero	644
	.long	.LC39
	.long	73
	.long	76
	.zero	644
	.long	.LC40
	.long	113
	.long	112
	.long	116
	.long	117
	.long	114
	.long	115
	.long	120
	.long	121
	.long	118
	.long	119
	.long	122
	.long	123
	.long	124
	.long	125
	.long	126
	.long	127
	.long	128
	.long	129
	.zero	580
	.long	.LC41
	.long	64
	.long	65
	.long	68
	.long	78
	.long	77
	.long	73
	.long	71
	.long	76
	.long	80
	.zero	616
	.align 4
	.type	special_mode_pred_table, @object
	.size	special_mode_pred_table, 8
special_mode_pred_table:
	.long	.LC14
	.long	.LC29
	.text
	.type	new_decision, @function
new_decision:
.LFB15:
	.file 1 "../../../kgccfe/gnu/genrecog.c"
	.loc 1 326 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 328 0
	movl	$40, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 331 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 333 0
	movl	next_number@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	leal	1(%edx), %eax
	movl	%eax, next_number@GOTOFF(%ebx)
	.loc 1 335 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 336 0
	movl	-12(%ebp), %eax
	.loc 1 337 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	new_decision, .-new_decision
	.type	new_decision_test, @function
new_decision_test:
.LFB16:
	.loc 1 345 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$20, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 346 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 349 0
	movl	$20, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 350 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 351 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 352 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 354 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 355 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 357 0
	movl	-8(%ebp), %eax
	.loc 1 358 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	new_decision_test, .-new_decision_test
	.section	.rodata
	.type	__FUNCTION__.6878, @object
	.size	__FUNCTION__.6878, 13
__FUNCTION__.6878:
	.string	"find_operand"
	.align 4
.LC42:
	.string	"../../../kgccfe/gnu/genrecog.c"
	.text
	.type	find_operand, @function
find_operand:
.LFB17:
	.loc 1 366 0
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
	.loc 1 372 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 373 0
	cmpl	$6, -24(%ebp)
	je	.L6
	cmpl	$12, -24(%ebp)
	je	.L6
	cmpl	$5, -24(%ebp)
	je	.L6
	cmpl	$8, -24(%ebp)
	je	.L6
	cmpl	$9, -24(%ebp)
	jne	.L11
.L6:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L11
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L13
.L11:
	.loc 1 381 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 382 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 383 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L15:
	.loc 1 385 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -44(%ebp)
	cmpl	$71, -44(%ebp)
	ja	.L16
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L21@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L21:
	.long	.L24@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L18@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L19@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L20@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L24@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L16@GOTOFF
	.long	.L24@GOTOFF
	.long	.L16@GOTOFF
	.long	.L20@GOTOFF
	.long	.L16@GOTOFF
	.long	.L24@GOTOFF
	.text
.L20:
	.loc 1 388 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_operand
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L24
	.loc 1 389 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L13
.L19:
	.loc 1 393 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L24
.L18:
	.loc 1 398 0
	movl	$0, -16(%ebp)
	jmp	.L25
.L26:
	.loc 1 399 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_operand
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L27
	.loc 1 400 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L13
.L27:
	.loc 1 398 0
	addl	$1, -16(%ebp)
.L25:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L26
	.loc 1 401 0
	jmp	.L24
.L16:
	.loc 1 407 0
	leal	__FUNCTION__.6878@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$407, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L24:
	.loc 1 383 0
	addl	$1, -20(%ebp)
.L14:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L15
	.loc 1 411 0
	movl	$0, -40(%ebp)
.L13:
	movl	-40(%ebp), %eax
	.loc 1 412 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	find_operand, .-find_operand
	.section	.rodata
	.type	__FUNCTION__.6943, @object
	.size	__FUNCTION__.6943, 22
__FUNCTION__.6943:
	.string	"find_matching_operand"
	.text
	.type	find_matching_operand, @function
find_matching_operand:
.LFB18:
	.loc 1 421 0
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
	.loc 1 427 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 428 0
	cmpl	$5, -24(%ebp)
	jne	.L33
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	addl	$48, %eax
	cmpl	%eax, %edx
	je	.L35
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L33
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	addl	$48, %eax
	cmpl	%eax, %edx
	jne	.L33
.L35:
	.loc 1 432 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L38
.L33:
	.loc 1 434 0
	movl	-24(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 435 0
	movl	-24(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 436 0
	movl	$0, -20(%ebp)
	jmp	.L39
.L40:
	.loc 1 438 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -44(%ebp)
	cmpl	$71, -44(%ebp)
	ja	.L41
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L46@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L46:
	.long	.L49@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L43@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L44@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L45@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L49@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L41@GOTOFF
	.long	.L49@GOTOFF
	.long	.L41@GOTOFF
	.long	.L45@GOTOFF
	.long	.L41@GOTOFF
	.long	.L49@GOTOFF
	.text
.L45:
	.loc 1 441 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_matching_operand
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L49
	.loc 1 442 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L38
.L44:
	.loc 1 446 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L49
.L43:
	.loc 1 451 0
	movl	$0, -16(%ebp)
	jmp	.L50
.L51:
	.loc 1 452 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_matching_operand
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L52
	.loc 1 453 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L38
.L52:
	.loc 1 451 0
	addl	$1, -16(%ebp)
.L50:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L51
	.loc 1 454 0
	jmp	.L49
.L41:
	.loc 1 460 0
	leal	__FUNCTION__.6943@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$460, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L49:
	.loc 1 436 0
	addl	$1, -20(%ebp)
.L39:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L40
	.loc 1 464 0
	movl	$0, -40(%ebp)
.L38:
	movl	-40(%ebp), %eax
	.loc 1 465 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	find_matching_operand, .-find_matching_operand
	.section	.rodata
	.type	__FUNCTION__.7049, @object
	.size	__FUNCTION__.7049, 17
__FUNCTION__.7049:
	.string	"validate_pattern"
	.align 4
.LC43:
	.string	"warning: `%s' not in PREDICATE_CODES"
	.align 4
.LC44:
	.string	"warning: constraints not supported in %s"
	.align 4
.LC45:
	.string	"operand %d missing in-out reload"
	.align 4
.LC46:
	.string	"operand %d missing output reload"
	.align 4
.LC47:
	.string	"warning: destination operand %d allows non-lvalue"
.LC48:
	.string	"operands"
	.align 4
.LC49:
	.string	"warning: operand %d missing mode?"
	.align 4
.LC50:
	.string	"mode mismatch in set: %smode vs %smode"
.LC51:
	.string	"destination"
.LC52:
	.string	"source"
.LC53:
	.string	"warning: %s missing a mode?"
	.align 4
.LC54:
	.string	"operand to label_ref %smode not VOIDmode"
	.text
	.type	validate_pattern, @function
validate_pattern:
.LFB19:
	.loc 1 478 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$116, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 484 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -72(%ebp)
	.loc 1 485 0
	movl	-72(%ebp), %eax
	movl	%eax, -104(%ebp)
	cmpl	$57, -104(%ebp)
	je	.L61
	cmpl	$57, -104(%ebp)
	ja	.L66
	cmpl	$6, -104(%ebp)
	je	.L187
	cmpl	$6, -104(%ebp)
	ja	.L67
	cmpl	$5, -104(%ebp)
	je	.L59
	jmp	.L58
.L67:
	cmpl	$8, -104(%ebp)
	je	.L59
	cmpl	$12, -104(%ebp)
	je	.L59
	jmp	.L58
.L66:
	cmpl	$74, -104(%ebp)
	je	.L63
	cmpl	$74, -104(%ebp)
	ja	.L68
	cmpl	$59, -104(%ebp)
	je	.L62
	jmp	.L58
.L68:
	cmpl	$77, -104(%ebp)
	je	.L64
	cmpl	$143, -104(%ebp)
	je	.L65
	jmp	.L58
.L59:
.LBB2:
	.loc 1 494 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 495 0
	movl	$1, -52(%ebp)
	movl	$1, -48(%ebp)
	.loc 1 496 0
	movl	$0, -44(%ebp)
	.loc 1 499 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	jne	.L70
	.loc 1 500 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L72
.L70:
	.loc 1 502 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L72:
	.loc 1 504 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L73
	.loc 1 506 0
	movl	$0, -68(%ebp)
	jmp	.L75
.L76:
	.loc 1 507 0
	movl	-68(%ebp), %eax
	leal	preds@GOTOFF(%ebx), %edx
	imull	$656, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L77
	.loc 1 506 0
	addl	$1, -68(%ebp)
.L75:
	cmpl	$41, -68(%ebp)
	jbe	.L76
.L77:
	.loc 1 510 0
	cmpl	$41, -68(%ebp)
	ja	.L79
.LBB3:
	.loc 1 514 0
	movl	$0, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 515 0
	movl	$0, -36(%ebp)
	jmp	.L81
.L82:
.LBB4:
	.loc 1 517 0
	movl	-68(%ebp), %eax
	movl	-36(%ebp), %edx
	imull	$164, %eax, %eax
	addl	%edx, %eax
	movl	4+preds@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 518 0
	cmpl	$77, -32(%ebp)
	je	.L83
	cmpl	$78, -32(%ebp)
	je	.L83
	cmpl	$64, -32(%ebp)
	je	.L83
	cmpl	$65, -32(%ebp)
	je	.L83
	cmpl	$68, -32(%ebp)
	je	.L83
	cmpl	$144, -32(%ebp)
	je	.L83
	cmpl	$150, -32(%ebp)
	je	.L83
	.loc 1 525 0
	movl	$1, -48(%ebp)
.L83:
	.loc 1 527 0
	cmpl	$71, -32(%ebp)
	je	.L91
	cmpl	$73, -32(%ebp)
	je	.L91
	cmpl	$76, -32(%ebp)
	je	.L91
	cmpl	$80, -32(%ebp)
	je	.L91
	cmpl	$75, -32(%ebp)
	je	.L91
	cmpl	$49, -32(%ebp)
	je	.L91
	cmpl	$74, -32(%ebp)
	je	.L91
	.loc 1 534 0
	movl	$1, -52(%ebp)
.L91:
.LBE4:
	.loc 1 515 0
	addl	$1, -36(%ebp)
.L81:
	movl	-68(%ebp), %eax
	movl	-36(%ebp), %edx
	imull	$164, %eax, %eax
	addl	%edx, %eax
	movl	4+preds@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L82
	jmp	.L100
.L79:
.LBE3:
	.loc 1 542 0
	movl	pattern_lineno@GOTOFF(%ebx), %eax
	movl	-56(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	message_with_line@PLT
.L100:
	.loc 1 548 0
	movl	$0, -68(%ebp)
	jmp	.L101
.L102:
	.loc 1 549 0
	movl	-68(%ebp), %eax
	movl	special_mode_pred_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L103
	.loc 1 551 0
	movl	$1, -44(%ebp)
	.loc 1 552 0
	jmp	.L73
.L103:
	.loc 1 548 0
	addl	$1, -68(%ebp)
.L101:
	cmpl	$1, -68(%ebp)
	jbe	.L102
.L73:
	.loc 1 556 0
	cmpl	$5, -72(%ebp)
	jne	.L105
.LBB5:
	.loc 1 558 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 564 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$19, %ax
	je	.L107
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$15, %ax
	je	.L107
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	jne	.L110
.L107:
	.loc 1 568 0
	cmpb	$0, -5(%ebp)
	je	.L105
	.loc 1 569 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 564 0
	jmp	.L105
.L110:
	.loc 1 575 0
	cmpl	$0, 16(%ebp)
	je	.L105
	cmpb	$0, -5(%ebp)
	je	.L105
	.loc 1 577 0
	cmpl	$43, 20(%ebp)
	jne	.L115
	.loc 1 579 0
	cmpb	$43, -5(%ebp)
	je	.L105
	.loc 1 583 0
	cmpb	$61, -5(%ebp)
	jne	.L119
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_matching_operand
	testl	%eax, %eax
	je	.L119
	jmp	.L105
.L119:
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 591 0
	movl	error_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, error_count@GOTOFF(%ebx)
	jmp	.L105
.L115:
	.loc 1 594 0
	cmpb	$61, -5(%ebp)
	je	.L105
	cmpb	$43, -5(%ebp)
	je	.L105
	.loc 1 596 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 599 0
	movl	error_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, error_count@GOTOFF(%ebx)
.L105:
.LBE5:
	.loc 1 607 0
	cmpl	$0, 16(%ebp)
	je	.L124
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L124
	cmpl	$0, -52(%ebp)
	je	.L124
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
.L124:
	.loc 1 624 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L187
	cmpl	$5, -72(%ebp)
	jne	.L187
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	jne	.L187
	cmpl	$0, -48(%ebp)
	je	.L187
	cmpl	$0, -44(%ebp)
	jne	.L187
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L187
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L187
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	jne	.L187
	cmpl	$0, 16(%ebp)
	je	.L137
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L137
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	je	.L187
.L137:
	.loc 1 636 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 640 0
	jmp	.L187
.L61:
.LBE2:
.LBB6:
	.loc 1 648 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 649 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 653 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L140
	.loc 1 654 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L140:
	.loc 1 658 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	je	.L142
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$10, %ax
	je	.L142
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$11, %ax
	jne	.L145
.L142:
	.loc 1 661 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_operand
	movl	%eax, -20(%ebp)
.L145:
	.loc 1 663 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	je	.L146
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$10, %ax
	je	.L146
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$11, %ax
	jne	.L149
.L146:
	.loc 1 666 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_operand
	movl	%eax, -16(%ebp)
.L149:
	.loc 1 668 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 669 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 673 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$5, %ax
	jne	.L150
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L150
	jmp	.L153
.L150:
	.loc 1 679 0
	cmpl	$0, -28(%ebp)
	je	.L154
	cmpl	$0, -24(%ebp)
	je	.L154
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L154
	.loc 1 681 0
	movl	-24(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-28(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 684 0
	movl	error_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, error_count@GOTOFF(%ebx)
	.loc 1 679 0
	jmp	.L153
.L154:
	.loc 1 689 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L153
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L153
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L153
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L153
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L153
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L153
.LBB7:
	.loc 1 697 0
	cmpl	$0, -28(%ebp)
	jne	.L164
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L166
.L164:
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
.L166:
	movl	-100(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 698 0
	movl	pattern_lineno@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	message_with_line@PLT
.L153:
.LBE7:
	.loc 1 702 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L167
	.loc 1 703 0
	movl	$61, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_pattern
.L167:
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$61, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 706 0
	jmp	.L187
.L62:
.LBE6:
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$61, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 711 0
	jmp	.L187
.L65:
	.loc 1 714 0
	cmpl	$0, 16(%ebp)
	je	.L169
	movl	$43, -96(%ebp)
	jmp	.L171
.L169:
	movl	$0, -96(%ebp)
.L171:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 715 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 716 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 717 0
	jmp	.L187
.L63:
	.loc 1 720 0
	cmpl	$0, 16(%ebp)
	je	.L172
	movl	$43, -92(%ebp)
	jmp	.L174
.L172:
	movl	$0, -92(%ebp)
.L174:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 721 0
	jmp	.L187
.L64:
	.loc 1 724 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L58
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	message_with_line@PLT
	.loc 1 729 0
	movl	error_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, error_count@GOTOFF(%ebx)
.L58:
	.loc 1 737 0
	movl	-72(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 738 0
	movl	-72(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	.loc 1 739 0
	movl	$0, -68(%ebp)
	jmp	.L176
.L177:
	.loc 1 741 0
	movl	-68(%ebp), %eax
	addl	-76(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	cmpl	$105, -88(%ebp)
	je	.L183
	cmpl	$105, -88(%ebp)
	jg	.L182
	cmpl	$69, -88(%ebp)
	je	.L180
	cmpl	$101, -88(%ebp)
	je	.L181
	cmpl	$48, -88(%ebp)
	je	.L183
	jmp	.L178
.L182:
	cmpl	$117, -88(%ebp)
	je	.L181
	cmpl	$119, -88(%ebp)
	je	.L183
	cmpl	$115, -88(%ebp)
	je	.L183
	jmp	.L178
.L181:
	.loc 1 744 0
	movl	-68(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 745 0
	jmp	.L183
.L180:
	.loc 1 748 0
	movl	$0, -60(%ebp)
	jmp	.L184
.L185:
	.loc 1 749 0
	movl	-68(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-60(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_pattern
	.loc 1 748 0
	addl	$1, -60(%ebp)
.L184:
	movl	-68(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	jg	.L185
	.loc 1 750 0
	jmp	.L183
.L178:
	.loc 1 756 0
	leal	__FUNCTION__.7049@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$756, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L183:
	.loc 1 739 0
	addl	$1, -68(%ebp)
.L176:
	movl	-68(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jb	.L177
.L187:
	.loc 1 759 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	validate_pattern, .-validate_pattern
	.section	.rodata
	.type	__FUNCTION__.7357, @object
	.size	__FUNCTION__.7357, 16
__FUNCTION__.7357:
	.string	"add_to_sequence"
	.text
	.type	add_to_sequence, @function
add_to_sequence:
.LFB20:
	.loc 1 780 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%edi
.LCFI23:
	pushl	%esi
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$124, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 788 0
	movl	16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -112(%ebp)
	movl	$0, %eax
	cld
	movl	-112(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	.loc 1 792 0
	movl	max_depth@GOTOFF(%ebx), %eax
	cmpl	%eax, -52(%ebp)
	jle	.L189
	.loc 1 793 0
	movl	-52(%ebp), %eax
	movl	%eax, max_depth@GOTOFF(%ebx)
.L189:
	.loc 1 795 0
	movl	-52(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 796 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 797 0
	movl	-52(%ebp), %eax
	addl	-64(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 799 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	new_decision
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 800 0
	movl	-76(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -84(%ebp)
.L191:
	.loc 1 803 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 804 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -80(%ebp)
	.loc 1 806 0
	movl	-80(%ebp), %eax
	subl	$5, %eax
	movl	%eax, -116(%ebp)
	cmpl	$44, -116(%ebp)
	ja	.L192
	movl	-116(%ebp), %eax
	sall	$2, %eax
	movl	.L199@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L199:
	.long	.L193@GOTOFF
	.long	.L193@GOTOFF
	.long	.L194@GOTOFF
	.long	.L193@GOTOFF
	.long	.L195@GOTOFF
	.long	.L196@GOTOFF
	.long	.L194@GOTOFF
	.long	.L193@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L197@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L192@GOTOFF
	.long	.L198@GOTOFF
	.text
.L198:
	.loc 1 810 0
	cmpl	$2, 20(%ebp)
	jne	.L192
	cmpl	$0, 24(%ebp)
	je	.L192
	.loc 1 813 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 815 0
	movl	$0, -60(%ebp)
	jmp	.L203
.L204:
	.loc 1 820 0
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -108(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L205
	movl	-60(%ebp), %eax
	addl	$65, %eax
	movb	%al, -102(%ebp)
	jmp	.L207
.L205:
	movb	$0, -102(%ebp)
.L207:
	movzbl	-102(%ebp), %eax
	movl	-108(%ebp), %edx
	movb	%al, (%edx)
	.loc 1 821 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_sequence
	movl	%eax, -72(%ebp)
	.loc 1 823 0
	movl	-72(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 815 0
	addl	$1, -60(%ebp)
.L203:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	ja	.L204
	.loc 1 825 0
	jmp	.L209
.L195:
	.loc 1 837 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 838 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
.L193:
.LBB8:
	.loc 1 847 0
	movl	-80(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 848 0
	movl	$1, -32(%ebp)
	.loc 1 850 0
	cmpl	$6, -80(%ebp)
	jne	.L210
	.loc 1 852 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 853 0
	movl	$0, -80(%ebp)
	jmp	.L212
.L210:
	.loc 1 857 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 858 0
	cmpl	$9, -80(%ebp)
	jne	.L213
	.loc 1 859 0
	movl	$49, -80(%ebp)
	jmp	.L212
.L213:
	.loc 1 861 0
	movl	$0, -80(%ebp)
.L212:
	.loc 1 864 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L215
	.loc 1 866 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 867 0
	movl	-68(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 868 0
	movl	-68(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 881 0
	movl	$0, -60(%ebp)
	jmp	.L217
.L218:
	.loc 1 882 0
	movl	-60(%ebp), %eax
	leal	preds@GOTOFF(%ebx), %edx
	imull	$656, %eax, %eax
	movl	(%eax,%edx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L219
	.loc 1 881 0
	addl	$1, -60(%ebp)
.L217:
	cmpl	$41, -60(%ebp)
	jbe	.L218
.L219:
	.loc 1 885 0
	cmpl	$41, -60(%ebp)
	ja	.L221
.LBB9:
	.loc 1 889 0
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 891 0
	movl	-60(%ebp), %eax
	leal	preds@GOTOFF(%ebx), %edx
	imull	$656, %eax, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L223
	cmpl	$0, -80(%ebp)
	jne	.L223
	.loc 1 892 0
	movl	-60(%ebp), %eax
	leal	preds@GOTOFF(%ebx), %edx
	imull	$656, %eax, %eax
	movl	4(%eax,%edx), %eax
	movl	%eax, -80(%ebp)
.L223:
	.loc 1 894 0
	movl	$0, -32(%ebp)
	.loc 1 895 0
	movl	$0, -28(%ebp)
	jmp	.L226
.L227:
	.loc 1 896 0
	movl	-60(%ebp), %eax
	movl	-28(%ebp), %edx
	imull	$164, %eax, %eax
	addl	%edx, %eax
	movl	4+preds@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$64, %eax
	jne	.L228
	.loc 1 898 0
	movl	$1, -32(%ebp)
	.loc 1 899 0
	jmp	.L215
.L228:
	.loc 1 895 0
	addl	$1, -28(%ebp)
.L226:
	movl	-60(%ebp), %eax
	movl	-28(%ebp), %edx
	imull	$164, %eax, %eax
	addl	%edx, %eax
	movl	4+preds@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L227
	jmp	.L215
.L221:
.LBE9:
	.loc 1 903 0
	movl	-68(%ebp), %eax
	movl	$-1, 12(%eax)
.L215:
	.loc 1 907 0
	cmpl	$0, -32(%ebp)
	je	.L231
	.loc 1 908 0
	movl	$0, -44(%ebp)
.L231:
	.loc 1 911 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 912 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 914 0
	cmpl	$8, -36(%ebp)
	je	.L233
	cmpl	$9, -36(%ebp)
	jne	.L241
.L233:
.LBB10:
	.loc 1 916 0
	cmpl	$8, -36(%ebp)
	jne	.L236
	movb	$48, -101(%ebp)
	jmp	.L238
.L236:
	movb	$97, -101(%ebp)
.L238:
	movzbl	-101(%ebp), %eax
	movb	%al, -13(%ebp)
	.loc 1 917 0
	movl	$0, -60(%ebp)
	jmp	.L239
.L240:
	.loc 1 919 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	addb	-13(%ebp), %al
	movb	%al, (%edx)
	.loc 1 920 0
	movl	-72(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_sequence
	movl	%eax, -72(%ebp)
	.loc 1 917 0
	addl	$1, -60(%ebp)
.L239:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	ja	.L240
	.loc 1 924 0
	jmp	.L241
.L196:
.LBE10:
.LBE8:
	.loc 1 928 0
	movl	$0, -80(%ebp)
	.loc 1 930 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 931 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 933 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 934 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 936 0
	movl	$0, -60(%ebp)
	jmp	.L242
.L243:
	.loc 1 938 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	addl	$48, %eax
	movb	%al, (%edx)
	.loc 1 939 0
	movl	-72(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_sequence
	movl	%eax, -72(%ebp)
	.loc 1 936 0
	addl	$1, -60(%ebp)
.L242:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-60(%ebp), %eax
	ja	.L243
	.loc 1 942 0
	jmp	.L241
.L194:
	.loc 1 946 0
	movl	$0, -80(%ebp)
	.loc 1 948 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 949 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 950 0
	jmp	.L241
.L197:
	.loc 1 953 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 954 0
	jmp	.L191
.L192:
	.loc 1 960 0
	movl	-80(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 961 0
	movl	-80(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 964 0
	movl	$0, -60(%ebp)
	jmp	.L245
.L246:
	.loc 1 966 0
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L247
	.loc 1 968 0
	cmpl	$0, -60(%ebp)
	jne	.L249
	.loc 1 970 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 971 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-68(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	jmp	.L254
.L249:
	.loc 1 973 0
	cmpl	$1, -60(%ebp)
	jne	.L252
	.loc 1 975 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 976 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-68(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	jmp	.L254
.L252:
	.loc 1 979 0
	leal	__FUNCTION__.7357@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$979, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L247:
	.loc 1 981 0
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$119, %al
	jne	.L255
.LBB11:
	.loc 1 987 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L257
	movl	$6, -100(%ebp)
	jmp	.L259
.L257:
	movl	$5, -100(%ebp)
.L259:
	movl	-100(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 989 0
	cmpl	$0, -60(%ebp)
	je	.L260
	.loc 1 990 0
	leal	__FUNCTION__.7357@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$990, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L260:
	.loc 1 992 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 993 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-68(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	jmp	.L254
.L255:
.LBE11:
	.loc 1 995 0
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L254
	.loc 1 997 0
	cmpl	$0, -60(%ebp)
	je	.L263
	.loc 1 998 0
	leal	__FUNCTION__.7357@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$998, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L263:
	.loc 1 1000 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 1001 0
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
.L254:
	.loc 1 964 0
	addl	$1, -60(%ebp)
.L245:
	movl	-48(%ebp), %eax
	cmpl	-60(%ebp), %eax
	ja	.L246
	.loc 1 1006 0
	movl	$0, -60(%ebp)
	jmp	.L266
.L267:
	.loc 1 1008 0
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -96(%ebp)
	cmpl	$101, -96(%ebp)
	je	.L271
	cmpl	$101, -96(%ebp)
	jg	.L273
	cmpl	$48, -96(%ebp)
	je	.L274
	cmpl	$69, -96(%ebp)
	je	.L270
	jmp	.L268
.L273:
	cmpl	$117, -96(%ebp)
	je	.L271
	cmpl	$119, -96(%ebp)
	je	.L274
	cmpl	$105, -96(%ebp)
	je	.L274
	jmp	.L268
.L271:
	.loc 1 1011 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	addl	$48, %eax
	movb	%al, (%edx)
	.loc 1 1012 0
	movl	-72(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_sequence
	movl	%eax, -72(%ebp)
	.loc 1 1014 0
	jmp	.L274
.L270:
.LBB12:
	.loc 1 1019 0
	movl	$0, -20(%ebp)
	jmp	.L275
.L276:
	.loc 1 1021 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	$97, %eax
	movb	%al, (%edx)
	.loc 1 1022 0
	movl	-72(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_sequence
	movl	%eax, -72(%ebp)
	.loc 1 1019 0
	addl	$1, -20(%ebp)
.L275:
	movl	-60(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L276
	.loc 1 1025 0
	jmp	.L274
.L268:
.LBE12:
	.loc 1 1035 0
	leal	__FUNCTION__.7357@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1035, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L274:
	.loc 1 1006 0
	addl	$1, -60(%ebp)
.L266:
	movl	-48(%ebp), %eax
	cmpl	-60(%ebp), %eax
	ja	.L267
.L241:
	.loc 1 1042 0
	cmpl	$0, -80(%ebp)
	je	.L278
	.loc 1 1044 0
	movl	-76(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -84(%ebp)
	.loc 1 1045 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 1046 0
	movl	-68(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%edx)
.L278:
	.loc 1 1049 0
	cmpl	$0, -44(%ebp)
	je	.L280
	.loc 1 1051 0
	movl	-76(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -84(%ebp)
	.loc 1 1052 0
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	new_decision_test
	movl	%eax, -68(%ebp)
	.loc 1 1053 0
	movl	-68(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%edx)
.L280:
	.loc 1 1057 0
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L209
	.loc 1 1058 0
	leal	__FUNCTION__.7357@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1058, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L209:
	.loc 1 1061 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1062 0
	movl	-72(%ebp), %eax
	.loc 1 1063 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	add_to_sequence, .-add_to_sequence
	.type	maybe_both_true_2, @function
maybe_both_true_2:
.LFB21:
	.loc 1 1071 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%edi
.LCFI29:
	pushl	%esi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$60, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L285
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	cmpl	$6, -64(%ebp)
	ja	.L285
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L291@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L291:
	.long	.L287@GOTOFF
	.long	.L288@GOTOFF
	.long	.L289@GOTOFF
	.long	.L290@GOTOFF
	.long	.L290@GOTOFF
	.long	.L290@GOTOFF
	.long	.L290@GOTOFF
	.text
.L287:
	.loc 1 1077 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L288:
	.loc 1 1080 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L289:
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L290:
	.loc 1 1089 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	-56(%ebp), %eax
	xorl	%esi, %eax
	movl	-52(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L285:
	.loc 1 1100 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	je	.L293
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	jne	.L295
.L293:
	.loc 1 1102 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	jne	.L296
.LBB13:
	.loc 1 1105 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%ebp)
.L296:
.LBE13:
	.loc 1 1109 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L298
	.loc 1 1111 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L298
	.loc 1 1113 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L298
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L298
	.loc 1 1119 0
	movl	$0, -60(%ebp)
	jmp	.L292
.L298:
	.loc 1 1127 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	js	.L295
	.loc 1 1131 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L304
.LBB14:
	.loc 1 1133 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	imull	$656, %eax, %edx
	leal	preds@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1134 0
	jmp	.L306
.L307:
	.loc 1 1136 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L308
	.loc 1 1138 0
	addl	$4, -32(%ebp)
.L306:
	.loc 1 1134 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L307
.L308:
	.loc 1 1140 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L295
	.loc 1 1141 0
	movl	$0, -60(%ebp)
	jmp	.L292
.L304:
.LBE14:
	.loc 1 1145 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	jne	.L295
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	js	.L295
.LBB15:
	.loc 1 1147 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	imull	$656, %eax, %edx
	leal	preds@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1148 0
	movl	$0, -24(%ebp)
	.loc 1 1150 0
	jmp	.L314
.L315:
.LBB16:
	.loc 1 1152 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	imull	$656, %eax, %edx
	leal	preds@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1153 0
	jmp	.L316
.L317:
	.loc 1 1155 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1156 0
	addl	$4, -20(%ebp)
.L316:
	.loc 1 1153 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L318
	cmpl	$0, -24(%ebp)
	je	.L317
.L318:
	.loc 1 1158 0
	addl	$4, -28(%ebp)
.L314:
.LBE16:
	.loc 1 1150 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L320
	cmpl	$0, -24(%ebp)
	je	.L315
.L320:
	.loc 1 1161 0
	cmpl	$0, -24(%ebp)
	jne	.L295
	.loc 1 1162 0
	movl	$0, -60(%ebp)
	jmp	.L292
.L295:
.LBE15:
	.loc 1 1168 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	jne	.L323
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jne	.L323
	.loc 1 1169 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L323:
	.loc 1 1170 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$7, %eax
	jne	.L326
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$2, %eax
	jne	.L326
	.loc 1 1171 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	jmp	.L292
.L326:
	.loc 1 1173 0
	movl	$-1, -60(%ebp)
.L292:
	movl	-60(%ebp), %eax
	.loc 1 1174 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	maybe_both_true_2, .-maybe_both_true_2
	.type	maybe_both_true_1, @function
maybe_both_true_1:
.LFB22:
	.loc 1 1182 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	subl	$40, %esp
.LCFI35:
	.loc 1 1187 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	je	.L331
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	jne	.L335
.L331:
	.loc 1 1188 0
	movl	$1, -20(%ebp)
	jmp	.L334
.L336:
	.loc 1 1193 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true_2
	testl	%eax, %eax
	jne	.L337
	.loc 1 1194 0
	movl	$0, -20(%ebp)
	jmp	.L334
.L337:
	.loc 1 1195 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L335:
	.loc 1 1191 0
	cmpl	$0, 8(%ebp)
	je	.L339
	cmpl	$0, 12(%ebp)
	je	.L339
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L336
.L339:
	.loc 1 1199 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L342
.L343:
	.loc 1 1200 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L344
.L345:
	.loc 1 1201 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true_2
	testl	%eax, %eax
	jne	.L346
	.loc 1 1202 0
	movl	$0, -20(%ebp)
	jmp	.L334
.L346:
	.loc 1 1200 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L344:
	cmpl	$0, -4(%ebp)
	jne	.L345
	.loc 1 1199 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L342:
	cmpl	$0, -8(%ebp)
	jne	.L343
	.loc 1 1204 0
	movl	$-1, -20(%ebp)
.L334:
	movl	-20(%ebp), %eax
	.loc 1 1205 0
	leave
	ret
.LFE22:
	.size	maybe_both_true_1, .-maybe_both_true_1
	.section	.rodata
	.type	__FUNCTION__.7739, @object
	.size	__FUNCTION__.7739, 16
__FUNCTION__.7739:
	.string	"maybe_both_true"
	.text
	.type	maybe_both_true, @function
maybe_both_true:
.LFB23:
	.loc 1 1218 0
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
	.loc 1 1240 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1241 0
	cmpl	$0, -8(%ebp)
	je	.L352
	.loc 1 1243 0
	cmpl	$0, 16(%ebp)
	je	.L354
	.loc 1 1244 0
	leal	__FUNCTION__.7739@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1244, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L354:
	.loc 1 1247 0
	cmpl	$0, -8(%ebp)
	jle	.L356
	.loc 1 1248 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
.L356:
	.loc 1 1250 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L358
	.loc 1 1251 0
	movl	$1, -24(%ebp)
	jmp	.L360
.L358:
	.loc 1 1252 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L361
.L362:
	.loc 1 1253 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true
	testl	%eax, %eax
	je	.L363
	.loc 1 1254 0
	movl	$1, -24(%ebp)
	jmp	.L360
.L363:
	.loc 1 1252 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L361:
	cmpl	$0, -16(%ebp)
	jne	.L362
	.loc 1 1256 0
	movl	$0, -24(%ebp)
	jmp	.L360
.L352:
	.loc 1 1260 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	maybe_both_true_1
	movl	%eax, -8(%ebp)
	.loc 1 1261 0
	cmpl	$0, -8(%ebp)
	js	.L366
	.loc 1 1262 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L360
.L366:
	.loc 1 1270 0
	cmpl	$0, 16(%ebp)
	jne	.L368
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L368
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L371
.L368:
	.loc 1 1271 0
	movl	$1, -24(%ebp)
	jmp	.L360
.L371:
	.loc 1 1273 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L372
.L373:
	.loc 1 1274 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L374
.L375:
	.loc 1 1275 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true
	testl	%eax, %eax
	je	.L376
	.loc 1 1276 0
	movl	$1, -24(%ebp)
	jmp	.L360
.L376:
	.loc 1 1274 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L374:
	cmpl	$0, -12(%ebp)
	jne	.L375
	.loc 1 1273 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L372:
	cmpl	$0, -16(%ebp)
	jne	.L373
	.loc 1 1278 0
	movl	$0, -24(%ebp)
.L360:
	movl	-24(%ebp), %eax
	.loc 1 1279 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	maybe_both_true, .-maybe_both_true
	.section	.rodata
	.type	__FUNCTION__.7797, @object
	.size	__FUNCTION__.7797, 18
__FUNCTION__.7797:
	.string	"nodes_identical_1"
	.text
	.type	nodes_identical_1, @function
nodes_identical_1:
.LFB24:
	.loc 1 1286 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$44, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1287 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$12, -36(%ebp)
	ja	.L382
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L392@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L392:
	.long	.L383@GOTOFF
	.long	.L384@GOTOFF
	.long	.L385@GOTOFF
	.long	.L386@GOTOFF
	.long	.L386@GOTOFF
	.long	.L386@GOTOFF
	.long	.L386@GOTOFF
	.long	.L385@GOTOFF
	.long	.L387@GOTOFF
	.long	.L388@GOTOFF
	.long	.L389@GOTOFF
	.long	.L390@GOTOFF
	.long	.L391@GOTOFF
	.text
.L383:
	.loc 1 1290 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L384:
	.loc 1 1293 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L388:
	.loc 1 1296 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L394
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L394
	movl	$1, -28(%ebp)
	jmp	.L397
.L394:
	movl	$0, -28(%ebp)
.L397:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L389:
	.loc 1 1300 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L385:
	.loc 1 1304 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L387:
	.loc 1 1307 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L386:
	.loc 1 1313 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	-24(%ebp), %eax
	xorl	%esi, %eax
	movl	-20(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L390:
	.loc 1 1316 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L393
.L391:
	.loc 1 1320 0
	movl	$1, -32(%ebp)
	jmp	.L393
.L382:
	.loc 1 1323 0
	leal	__FUNCTION__.7797@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1323, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L393:
	movl	-32(%ebp), %eax
	.loc 1 1325 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	nodes_identical_1, .-nodes_identical_1
	.type	nodes_identical, @function
nodes_identical:
.LFB25:
	.loc 1 1334 0
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
	.loc 1 1337 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L400
.L401:
	.loc 1 1339 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L402
	.loc 1 1340 0
	movl	$0, -24(%ebp)
	jmp	.L404
.L402:
	.loc 1 1341 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	nodes_identical_1
	testl	%eax, %eax
	jne	.L405
	.loc 1 1342 0
	movl	$0, -24(%ebp)
	jmp	.L404
.L405:
	.loc 1 1337 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L400:
	cmpl	$0, -12(%ebp)
	je	.L407
	cmpl	$0, -8(%ebp)
	jne	.L401
.L407:
	.loc 1 1346 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L409
	.loc 1 1347 0
	movl	$0, -24(%ebp)
	jmp	.L404
.L409:
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L411
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L411
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L411
	.loc 1 1356 0
	movl	$0, -24(%ebp)
	jmp	.L404
.L411:
	.loc 1 1358 0
	movl	$1, -24(%ebp)
.L404:
	movl	-24(%ebp), %eax
	.loc 1 1359 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	nodes_identical, .-nodes_identical
	.section	.rodata
.LC55:
	.string	"`%s' matches `%s'"
.LC56:
	.string	"previous definition of `%s'"
	.text
	.type	merge_accept_insn, @function
merge_accept_insn:
.LFB26:
	.loc 1 1371 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$32, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1374 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L417
.L418:
	.loc 1 1375 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	je	.L419
	.loc 1 1374 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L417:
	cmpl	$0, -16(%ebp)
	jne	.L418
.L419:
	.loc 1 1377 0
	cmpl	$0, -16(%ebp)
	je	.L434
	.loc 1 1380 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L423
.L424:
	.loc 1 1381 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	je	.L425
	.loc 1 1380 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L423:
	cmpl	$0, -12(%ebp)
	jne	.L424
.L425:
	.loc 1 1383 0
	cmpl	$0, -12(%ebp)
	je	.L434
	.loc 1 1389 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L428
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L428
	jmp	.L434
.L428:
	.loc 1 1394 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jle	.L431
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L431
	.loc 1 1398 0
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	.loc 1 1394 0
	jmp	.L434
.L431:
	.loc 1 1402 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	get_insn_name@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	get_insn_name@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	message_with_line@PLT
	.loc 1 1405 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	get_insn_name@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	message_with_line@PLT
	.loc 1 1407 0
	movl	error_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, error_count@GOTOFF(%ebx)
.L434:
	.loc 1 1409 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	merge_accept_insn, .-merge_accept_insn
	.section	.rodata
	.type	__FUNCTION__.7907, @object
	.size	__FUNCTION__.7907, 12
__FUNCTION__.7907:
	.string	"merge_trees"
	.text
	.type	merge_trees, @function
merge_trees:
.LFB27:
	.loc 1 1416 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$36, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1419 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L458
	.loc 1 1421 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L438
	.loc 1 1423 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1424 0
	jmp	.L458
.L438:
	.loc 1 1428 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L440
	.loc 1 1429 0
	leal	__FUNCTION__.7907@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1429, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L440:
	.loc 1 1431 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L442
.L443:
.LBB17:
	.loc 1 1433 0
	movl	$0, -8(%ebp)
	.loc 1 1435 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L444
.L445:
	.loc 1 1455 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	nodes_identical
	testl	%eax, %eax
	je	.L446
	.loc 1 1457 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_accept_insn
	.loc 1 1458 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	merge_trees
	.loc 1 1459 0
	jmp	.L448
.L446:
	.loc 1 1462 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true
	testl	%eax, %eax
	jne	.L449
	.loc 1 1469 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jge	.L451
	.loc 1 1470 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L451:
	.loc 1 1453 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L444:
	cmpl	$0, -12(%ebp)
	jne	.L445
.L449:
	.loc 1 1473 0
	cmpl	$0, -8(%ebp)
	jne	.L453
	.loc 1 1475 0
	movl	-16(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1477 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1478 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L448
.L453:
	.loc 1 1482 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L455
	.loc 1 1483 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L457
.L455:
	.loc 1 1485 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L457:
	.loc 1 1486 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1487 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L448:
.LBE17:
	.loc 1 1431 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L442:
	cmpl	$0, -16(%ebp)
	jne	.L443
.L458:
	.loc 1 1492 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	merge_trees, .-merge_trees
	.type	factor_tests, @function
factor_tests:
.LFB28:
	.loc 1 1501 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	subl	$40, %esp
.LCFI61:
	.loc 1 1504 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L460
.L461:
.LBB18:
	.loc 1 1509 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1510 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1513 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L462
	.loc 1 1518 0
	cmpl	$0, -12(%ebp)
	je	.L464
	cmpl	$1, -12(%ebp)
	je	.L464
	cmpl	$2, -12(%ebp)
	je	.L464
	cmpl	$3, -12(%ebp)
	je	.L464
	cmpl	$4, -12(%ebp)
	je	.L464
	cmpl	$6, -12(%ebp)
	jne	.L462
.L464:
	.loc 1 1528 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L470
	.loc 1 1530 0
	movl	-20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_decision
	movl	%eax, -8(%ebp)
	.loc 1 1531 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1532 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, (%eax)
.L470:
	.loc 1 1536 0
	movl	-20(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1537 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1538 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
.L472:
.LBB19:
	.loc 1 1546 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L473
	.loc 1 1548 0
	movl	-16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_decision
	movl	%eax, -8(%ebp)
	.loc 1 1549 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1550 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, (%eax)
.L473:
	.loc 1 1552 0
	movl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1553 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1554 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1555 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1557 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_trees
.LBE19:
	.loc 1 1559 0
	cmpl	$0, -16(%ebp)
	je	.L475
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L472
.L475:
	.loc 1 1563 0
	cmpl	$0, -16(%ebp)
	je	.L462
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1566 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1567 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
.L462:
.LBE18:
	.loc 1 1504 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L460:
	cmpl	$0, -20(%ebp)
	je	.L478
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L461
.L478:
	.loc 1 1572 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L480
.L481:
	.loc 1 1573 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	factor_tests
	.loc 1 1572 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L480:
	cmpl	$0, -20(%ebp)
	jne	.L481
	.loc 1 1574 0
	leave
	ret
.LFE28:
	.size	factor_tests, .-factor_tests
	.type	simplify_tests, @function
simplify_tests:
.LFB29:
	.loc 1 1587 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	subl	$20, %esp
.LCFI64:
	.loc 1 1590 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L485
.L486:
.LBB20:
	.loc 1 1594 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1595 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1596 0
	cmpl	$0, -4(%ebp)
	je	.L487
	.loc 1 1600 0
	jmp	.L489
.L490:
	.loc 1 1601 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L489:
	.loc 1 1600 0
	cmpl	$0, -4(%ebp)
	je	.L491
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	jne	.L490
.L491:
	.loc 1 1602 0
	cmpl	$0, -4(%ebp)
	je	.L487
	.loc 1 1607 0
	jmp	.L494
.L495:
	.loc 1 1608 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L494:
	.loc 1 1607 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L495
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	je	.L495
	.loc 1 1609 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 24(%edx)
.L487:
.LBE20:
	.loc 1 1590 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L485:
	cmpl	$0, -12(%ebp)
	jne	.L486
	.loc 1 1614 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L499
.L500:
	.loc 1 1615 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_tests
	.loc 1 1614 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L499:
	cmpl	$0, -12(%ebp)
	jne	.L500
	.loc 1 1616 0
	leave
	ret
.LFE29:
	.size	simplify_tests, .-simplify_tests
	.type	break_out_subroutines, @function
break_out_subroutines:
.LFB30:
	.loc 1 1626 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$24, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1627 0
	movl	$0, -12(%ebp)
	.loc 1 1630 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L504
.L505:
	.loc 1 1631 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	break_out_subroutines
	addl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1630 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L504:
	cmpl	$0, -8(%ebp)
	jne	.L505
	.loc 1 1633 0
	cmpl	$100, -12(%ebp)
	jle	.L507
	cmpl	$0, 12(%ebp)
	jne	.L507
	.loc 1 1635 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	next_subroutine_number@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_subroutine_number@GOTOFF(%ebx)
	movl	next_subroutine_number@GOTOFF(%ebx), %eax
	movl	%eax, 32(%edx)
	.loc 1 1636 0
	movl	$1, -12(%ebp)
.L507:
	.loc 1 1638 0
	movl	-12(%ebp), %eax
	.loc 1 1639 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	break_out_subroutines, .-break_out_subroutines
	.type	find_afterward, @function
find_afterward:
.LFB31:
	.loc 1 1648 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	subl	$40, %esp
.LCFI71:
	.loc 1 1654 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1655 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jg	.L512
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L514
.L512:
	movl	$0, -20(%ebp)
.L514:
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1657 0
	jmp	.L515
.L516:
	.loc 1 1660 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L517
.L518:
	.loc 1 1661 0
	movl	$1, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_both_true
	testl	%eax, %eax
	jne	.L519
	.loc 1 1660 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L517:
	cmpl	$0, -8(%ebp)
	jne	.L518
.L519:
	.loc 1 1666 0
	cmpl	$0, -8(%ebp)
	jne	.L521
	.loc 1 1667 0
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L521:
	.loc 1 1668 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1669 0
	cmpl	$0, -8(%ebp)
	je	.L523
	.loc 1 1670 0
	movl	-8(%ebp), %eax
	movl	$1, 36(%eax)
.L523:
	.loc 1 1657 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L515:
	cmpl	$0, -12(%ebp)
	jne	.L516
	.loc 1 1674 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L526
.L527:
	.loc 1 1675 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L528
	.loc 1 1676 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_afterward
.L528:
	.loc 1 1674 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L526:
	cmpl	$0, -12(%ebp)
	jne	.L527
	.loc 1 1681 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1682 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jle	.L533
	.loc 1 1683 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
.L533:
	.loc 1 1684 0
	leave
	ret
.LFE31:
	.size	find_afterward, .-find_afterward
	.section	.rodata
	.align 4
.LC57:
	.string	"%stem = peep2_next_insn (%d);\n"
.LC58:
	.string	"%sif (tem == NULL_RTX)\n"
.LC59:
	.string	"%s  goto L%d;\n"
.LC60:
	.string	"%s  goto ret0;\n"
.LC61:
	.string	"%sx%d = PATTERN (tem);\n"
	.align 4
.LC62:
	.string	"%sx%d = XVECEXP (x%d, 0, %d);\n"
.LC63:
	.string	"%sx%d = XEXP (x%d, %c);\n"
	.text
	.type	change_state, @function
change_state:
.LFB32:
	.loc 1 1699 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%edi
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$64, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1700 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1701 0
	movl	12(%ebp), %eax
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
	movl	%eax, -24(%ebp)
	.loc 1 1706 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L535
.L536:
	subl	$1, -20(%ebp)
.L535:
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L536
	.loc 1 1710 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L538
.L539:
	.loc 1 1711 0
	movl	-16(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L540
	.loc 1 1710 0
	subl	$1, -16(%ebp)
.L538:
	cmpl	$0, -16(%ebp)
	jns	.L539
.L540:
	.loc 1 1713 0
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L542
.L543:
	.loc 1 1714 0
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L546
	.loc 1 1713 0
	subl	$1, -12(%ebp)
.L542:
	cmpl	$0, -12(%ebp)
	jns	.L543
	.loc 1 1718 0
	jmp	.L546
.L547:
	.loc 1 1721 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L548
	.loc 1 1724 0
	cmpl	$0, -16(%ebp)
	js	.L550
	movl	-16(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jb	.L550
	.loc 1 1726 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1724 0
	jmp	.L553
.L550:
	.loc 1 1731 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1733 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1734 0
	cmpl	$0, 16(%ebp)
	je	.L554
	.loc 1 1735 0
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L553
.L554:
	.loc 1 1737 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L553:
	.loc 1 1739 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L556
.L548:
	.loc 1 1741 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L557
	.loc 1 1742 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$97, %eax
	movl	-20(%ebp), %edx
	addl	$1, %edx
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L556
.L557:
	.loc 1 1745 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	-20(%ebp), %edx
	addl	$1, %edx
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L556:
	.loc 1 1747 0
	addl	$1, -20(%ebp)
.L546:
	.loc 1 1718 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L547
	.loc 1 1749 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	change_state, .-change_state
	.type	print_code, @function
print_code:
.LFB33:
	.loc 1 1757 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$20, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1759 0
	movl	8(%ebp), %eax
	movl	rtx_name@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	jmp	.L562
.L563:
	.loc 1 1760 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_toupper@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	putchar@PLT
	.loc 1 1759 0
	addl	$1, -8(%ebp)
.L562:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L563
	.loc 1 1761 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	print_code, .-print_code
	.section	.rodata
.LC64:
	.string	"%sgoto ret0;\n"
.LC65:
	.string	"%sgoto L%d;\n"
	.text
	.type	write_afterward, @function
write_afterward:
.LFB34:
	.loc 1 1770 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$20, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1771 0
	cmpl	$0, 12(%ebp)
	je	.L567
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jle	.L569
.L567:
	.loc 1 1772 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1771 0
	jmp	.L571
.L569:
	.loc 1 1775 0
	movl	12(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	change_state
	.loc 1 1776 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L571:
	.loc 1 1778 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	write_afterward, .-write_afterward
	.section	.rodata
	.type	__FUNCTION__.8273, @object
	.size	__FUNCTION__.8273, 13
__FUNCTION__.8273:
	.string	"write_switch"
	.align 4
.LC66:
	.string	"  switch (GET_CODE (x%d))\n    {\n"
.LC67:
	.string	"    case "
.LC68:
	.string	":\n      goto L%d;\n"
.LC69:
	.string	":"
.LC70:
	.string	"      goto L%d;\n"
.LC71:
	.string	"    default:"
.LC72:
	.string	"      "
.LC73:
	.string	"     break;"
.LC74:
	.string	"   }"
.LC75:
	.string	""
.LC76:
	.string	"  "
	.align 4
.LC77:
	.string	"  if ((int) XWINT (x%d, 0) == XWINT (x%d, 0))\n"
.LC78:
	.string	"%s  switch ("
.LC79:
	.string	"GET_MODE (x%d)"
.LC80:
	.string	"XVECLEN (x%d, 0)"
.LC81:
	.string	"XINT (x%d, 0)"
.LC82:
	.string	"XINT (x%d, 1)"
.LC83:
	.string	"(int) XWINT (x%d, 0)"
.LC84:
	.string	")\n%s    {\n"
.LC85:
	.string	"%s    case "
.LC86:
	.string	"%smode"
.LC87:
	.string	"%d"
.LC88:
	.string	"%lldLL"
.LC89:
	.string	":\n%s      goto L%d;\n"
	.align 4
.LC90:
	.string	"%s    default:\n%s      break;\n%s    }\n"
	.text
	.type	write_switch, @function
write_switch:
.LFB35:
	.loc 1 1787 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$244, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -216(%ebp)
	.loc 1 1787 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1788 0
	movl	-216(%ebp), %eax
	movl	%eax, -204(%ebp)
	.loc 1 1789 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -200(%ebp)
	.loc 1 1790 0
	movl	$0, -196(%ebp)
	.loc 1 1795 0
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L573
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L573
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-200(%ebp), %eax
	jne	.L573
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L573
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %edx
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	nodes_identical_1
	testl	%eax, %eax
	je	.L578
.L573:
	.loc 1 1800 0
	movl	-204(%ebp), %edx
	movl	%edx, -224(%ebp)
	jmp	.L579
.L578:
	.loc 1 1804 0
	cmpl	$1, -200(%ebp)
	jne	.L580
.LBB21:
	.loc 1 1810 0
	leal	-171(%ebp), %eax
	movl	%eax, %edx
	movl	$163, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 1812 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1813 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -188(%ebp)
.L582:
	.loc 1 1816 0
	movl	-204(%ebp), %eax
	cmpl	-216(%ebp), %eax
	je	.L583
	movl	-204(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L583
	cmpl	$0, -196(%ebp)
	jne	.L583
	.loc 1 1817 0
	movl	-204(%ebp), %eax
	movl	%eax, -196(%ebp)
.L583:
	.loc 1 1819 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1820 0
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	print_code
	.loc 1 1821 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1822 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 36(%eax)
	.loc 1 1824 0
	movl	-188(%ebp), %eax
	movb	$1, -171(%ebp,%eax)
	.loc 1 1825 0
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -204(%ebp)
	.loc 1 1830 0
	cmpl	$0, -204(%ebp)
	je	.L587
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L587
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$1, %eax
	jne	.L587
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -188(%ebp)
	movl	-188(%ebp), %eax
	movzbl	-171(%ebp,%eax), %eax
	testb	%al, %al
	je	.L582
.L587:
	.loc 1 1842 0
	cmpl	$0, -196(%ebp)
	je	.L591
	.loc 1 1843 0
	movl	-196(%ebp), %eax
	movl	%eax, -192(%ebp)
	jmp	.L594
.L591:
	.loc 1 1845 0
	movl	-204(%ebp), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1847 0
	jmp	.L594
.L595:
.LBB22:
	.loc 1 1852 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%eax), %eax
	imull	$656, %eax, %edx
	leal	preds@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -184(%ebp)
	jmp	.L596
.L597:
	.loc 1 1853 0
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	movzbl	-171(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L598
	.loc 1 1852 0
	addl	$4, -184(%ebp)
.L596:
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L597
	.loc 1 1856 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%eax), %eax
	imull	$656, %eax, %edx
	leal	preds@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, -184(%ebp)
	jmp	.L601
.L602:
	.loc 1 1858 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1859 0
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	print_code
	.loc 1 1860 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1861 0
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	movb	$1, -171(%ebp,%eax)
	.loc 1 1856 0
	addl	$4, -184(%ebp)
.L601:
	movl	-184(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L602
	.loc 1 1864 0
	movl	-204(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1865 0
	movl	-204(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 1866 0
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -204(%ebp)
.L594:
.LBE22:
	.loc 1 1847 0
	cmpl	$0, -204(%ebp)
	je	.L598
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$9, %eax
	jne	.L598
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L595
.L598:
	.loc 1 1872 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1873 0
	movl	-204(%ebp), %eax
	cmpl	-192(%ebp), %eax
	je	.L606
	.loc 1 1875 0
	cmpl	$0, -204(%ebp)
	je	.L608
	.loc 1 1877 0
	movl	-204(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1878 0
	movl	-204(%ebp), %eax
	movl	$1, 36(%eax)
	jmp	.L611
.L608:
	.loc 1 1881 0
	movl	-216(%ebp), %eax
	movl	16(%eax), %edx
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, (%esp)
	call	write_afterward
	jmp	.L611
.L606:
	.loc 1 1884 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L611:
	.loc 1 1885 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1887 0
	movl	-192(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L579
.L580:
.LBE21:
	.loc 1 1889 0
	cmpl	$0, -200(%ebp)
	je	.L612
	cmpl	$2, -200(%ebp)
	je	.L612
	cmpl	$3, -200(%ebp)
	je	.L612
	cmpl	$4, -200(%ebp)
	je	.L612
	cmpl	$6, -200(%ebp)
	jne	.L617
.L612:
.LBB23:
	.loc 1 1895 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1899 0
	cmpl	$6, -200(%ebp)
	jne	.L618
	.loc 1 1901 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1902 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L618:
	.loc 1 1904 0
	movl	-180(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1905 0
	cmpl	$6, -200(%ebp)
	ja	.L620
	movl	-200(%ebp), %eax
	sall	$2, %eax
	movl	.L626@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L626:
	.long	.L621@GOTOFF
	.long	.L620@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.long	.L620@GOTOFF
	.long	.L625@GOTOFF
	.text
.L621:
	.loc 1 1908 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1909 0
	jmp	.L627
.L622:
	.loc 1 1911 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1912 0
	jmp	.L627
.L623:
	.loc 1 1914 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1915 0
	jmp	.L627
.L624:
	.loc 1 1917 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1918 0
	jmp	.L627
.L625:
	.loc 1 1922 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1923 0
	jmp	.L627
.L620:
	.loc 1 1925 0
	leal	__FUNCTION__.8273@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1925, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L627:
	.loc 1 1927 0
	movl	-180(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L628:
.LBB24:
	.loc 1 1935 0
	movl	-216(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L629
.L630:
	.loc 1 1936 0
	movl	-176(%ebp), %eax
	movl	24(%eax), %edx
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	nodes_identical_1
	testl	%eax, %eax
	jne	.L631
	.loc 1 1935 0
	movl	-176(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -176(%ebp)
.L629:
	movl	-176(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jne	.L630
	.loc 1 1939 0
	movl	-204(%ebp), %eax
	cmpl	-216(%ebp), %eax
	je	.L634
	movl	-204(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L634
	cmpl	$0, -196(%ebp)
	jne	.L634
	.loc 1 1940 0
	movl	-204(%ebp), %eax
	movl	%eax, -196(%ebp)
.L634:
	.loc 1 1942 0
	movl	-180(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1943 0
	movl	-200(%ebp), %edx
	movl	%edx, -228(%ebp)
	cmpl	$2, -228(%ebp)
	je	.L640
	cmpl	$2, -228(%ebp)
	ja	.L642
	cmpl	$0, -228(%ebp)
	je	.L639
	jmp	.L638
.L642:
	cmpl	$6, -228(%ebp)
	ja	.L638
	jmp	.L641
.L639:
	.loc 1 1946 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1947 0
	jmp	.L643
.L640:
	.loc 1 1949 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1950 0
	jmp	.L643
.L641:
	.loc 1 1955 0
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1956 0
	jmp	.L643
.L638:
	.loc 1 1958 0
	leal	__FUNCTION__.8273@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1958, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L643:
	.loc 1 1960 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1961 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 36(%eax)
	.loc 1 1963 0
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -204(%ebp)
.LBE24:
	.loc 1 1965 0
	cmpl	$0, -204(%ebp)
	je	.L631
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-200(%ebp), %eax
	jne	.L631
	movl	-204(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L628
.L631:
	.loc 1 1968 0
	movl	-180(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1971 0
	cmpl	$0, -196(%ebp)
	je	.L646
	movl	-196(%ebp), %eax
	movl	%eax, -220(%ebp)
	jmp	.L648
.L646:
	movl	-204(%ebp), %edx
	movl	%edx, -220(%ebp)
.L648:
	movl	-220(%ebp), %eax
	movl	%eax, -224(%ebp)
	jmp	.L579
.L617:
.LBE23:
	.loc 1 1976 0
	movl	-204(%ebp), %edx
	movl	%edx, -224(%ebp)
.L579:
	movl	-224(%ebp), %eax
	.loc 1 1978 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L650
	call	__stack_chk_fail_local
.L650:
	addl	$244, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	write_switch, .-write_switch
	.section	.rodata
	.type	__FUNCTION__.8432, @object
	.size	__FUNCTION__.8432, 11
__FUNCTION__.8432:
	.string	"write_cond"
.LC91:
	.string	"GET_MODE (x%d) == %smode"
.LC92:
	.string	"GET_CODE (x%d) == "
.LC93:
	.string	"XVECLEN (x%d, 0) == %d"
.LC94:
	.string	"XINT (x%d, 0) == %d"
.LC95:
	.string	"XINT (x%d, 1) == %d"
.LC96:
	.string	"XWINT (x%d, 0) == "
.LC97:
	.string	"XVECLEN (x%d, 0) >= %d"
	.align 4
.LC98:
	.string	"rtx_equal_p (x%d, operands[%d])"
.LC99:
	.string	"%s (x%d, %smode)"
.LC100:
	.string	"(%s)"
.LC101:
	.string	"pnum_clobbers != NULL"
	.text
	.type	write_cond, @function
write_cond:
.LFB36:
	.loc 1 1987 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$20, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1988 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$12, -8(%ebp)
	ja	.L652
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	.L664@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L664:
	.long	.L653@GOTOFF
	.long	.L654@GOTOFF
	.long	.L655@GOTOFF
	.long	.L656@GOTOFF
	.long	.L657@GOTOFF
	.long	.L658@GOTOFF
	.long	.L658@GOTOFF
	.long	.L659@GOTOFF
	.long	.L660@GOTOFF
	.long	.L661@GOTOFF
	.long	.L662@GOTOFF
	.long	.L652@GOTOFF
	.long	.L663@GOTOFF
	.text
.L653:
	.loc 1 1991 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1992 0
	jmp	.L670
.L654:
	.loc 1 1995 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1996 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	print_code
	.loc 1 1997 0
	jmp	.L670
.L655:
	.loc 1 2000 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2001 0
	jmp	.L670
.L656:
	.loc 1 2004 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2005 0
	jmp	.L670
.L657:
	.loc 1 2008 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2009 0
	jmp	.L670
.L658:
	.loc 1 2013 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2014 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2015 0
	jmp	.L670
.L659:
	.loc 1 2018 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2019 0
	jmp	.L670
.L660:
	.loc 1 2022 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2023 0
	jmp	.L670
.L661:
	.loc 1 2026 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2028 0
	jmp	.L670
.L662:
	.loc 1 2031 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2032 0
	jmp	.L670
.L663:
	.loc 1 2035 0
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	.L667
	jmp	.L666
.L667:
	.loc 1 2038 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L668
	.loc 1 2039 0
	leal	__FUNCTION__.8432@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2039, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L668:
	.loc 1 2040 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2046 0
	jmp	.L670
.L666:
	.loc 1 2044 0
	leal	__FUNCTION__.8432@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2044, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L652:
	.loc 1 2049 0
	leal	__FUNCTION__.8432@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2049, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L670:
	.loc 1 2051 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	write_cond, .-write_cond
	.section	.rodata
	.type	__FUNCTION__.8467, @object
	.size	__FUNCTION__.8467, 13
__FUNCTION__.8467:
	.string	"write_action"
.LC102:
	.string	"    {\n"
.LC103:
	.string	"    "
.LC104:
	.string	"%soperands[%d] = x%d;\n"
.LC105:
	.string	"%s*pnum_clobbers = %d;\n"
.LC106:
	.string	"%sreturn %d;\n"
	.align 4
.LC107:
	.string	"%sreturn gen_split_%d (operands);\n"
.LC108:
	.string	"%s*_pmatch_len = %d;\n"
	.align 4
.LC109:
	.string	"%stem = gen_peephole2_%d (insn, operands);\n"
	.align 4
.LC110:
	.string	"%sif (tem != 0)\n%s  return tem;\n"
.LC111:
	.string	"    }\n"
	.text
	.type	write_action, @function
write_action:
.LFB37:
	.loc 1 2064 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%edi
.LCFI95:
	pushl	%ebx
.LCFI96:
	subl	$48, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2066 0
	movl	$0, -20(%ebp)
	.loc 1 2068 0
	cmpl	$0, 20(%ebp)
	je	.L672
	.loc 1 2069 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L674
.L672:
	.loc 1 2070 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	je	.L675
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	jne	.L677
.L675:
	.loc 1 2072 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2073 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2074 0
	movl	$1, -20(%ebp)
	.loc 1 2070 0
	jmp	.L674
.L677:
	.loc 1 2077 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L674:
	.loc 1 2079 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	jne	.L678
	.loc 1 2081 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2084 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L678
	.loc 1 2086 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 2087 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	je	.L678
	.loc 1 2088 0
	leal	__FUNCTION__.8467@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2088, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L678:
	.loc 1 2093 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L682
	.loc 1 2094 0
	leal	__FUNCTION__.8467@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2094, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L682:
	.loc 1 2096 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	jne	.L684
	.loc 1 2098 0
	movl	28(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$1, -28(%ebp)
	je	.L688
	cmpl	$1, -28(%ebp)
	jb	.L687
	cmpl	$2, -28(%ebp)
	je	.L689
	jmp	.L686
.L687:
	.loc 1 2101 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L690
	.loc 1 2102 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L690:
	.loc 1 2104 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2105 0
	jmp	.L698
.L688:
	.loc 1 2108 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2110 0
	jmp	.L698
.L689:
.LBB25:
	.loc 1 2114 0
	movl	$0, -16(%ebp)
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
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
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L693
.L694:
	.loc 1 2117 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L695
	.loc 1 2119 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2120 0
	jmp	.L697
.L695:
	.loc 1 2116 0
	subl	$1, -12(%ebp)
.L693:
	cmpl	$0, -12(%ebp)
	jns	.L694
.L697:
	.loc 1 2122 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2123 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2125 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2127 0
	jmp	.L698
.L686:
.LBE25:
	.loc 1 2130 0
	leal	__FUNCTION__.8467@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2130, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L684:
	.loc 1 2135 0
	movl	24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2136 0
	movl	24(%ebp), %eax
	movl	$1, 36(%eax)
.L698:
	.loc 1 2139 0
	cmpl	$0, -20(%ebp)
	je	.L701
	.loc 1 2140 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L701:
	.loc 1 2141 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	write_action, .-write_action
	.section	.rodata
	.type	__FUNCTION__.8544, @object
	.size	__FUNCTION__.8544, 17
__FUNCTION__.8544:
	.string	"is_unconditional"
	.text
	.type	is_unconditional, @function
is_unconditional:
.LFB38:
	.loc 1 2152 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$20, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2153 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	jne	.L703
	.loc 1 2154 0
	movl	$1, -8(%ebp)
	jmp	.L705
.L703:
	.loc 1 2156 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$12, %eax
	jne	.L706
	.loc 1 2158 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	.L710
	cmpl	$1, -12(%ebp)
	jb	.L709
	cmpl	$2, -12(%ebp)
	je	.L711
	jmp	.L708
.L709:
	.loc 1 2161 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L705
.L710:
	.loc 1 2163 0
	movl	$1, -8(%ebp)
	jmp	.L705
.L711:
	.loc 1 2165 0
	movl	$-1, -8(%ebp)
	jmp	.L705
.L708:
	.loc 1 2167 0
	leal	__FUNCTION__.8544@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2167, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L706:
	.loc 1 2171 0
	movl	$0, -8(%ebp)
.L705:
	movl	-8(%ebp), %eax
	.loc 1 2172 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	is_unconditional, .-is_unconditional
	.section	.rodata
.LC112:
	.string	"  if ("
.LC113:
	.string	"\n      && "
.LC114:
	.string	")"
	.text
	.type	write_node, @function
write_node:
.LFB39:
	.loc 1 2182 0
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
	.loc 1 2186 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2187 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_unconditional
	movl	%eax, -12(%ebp)
	.loc 1 2188 0
	cmpl	$0, -12(%ebp)
	jne	.L714
	.loc 1 2190 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2191 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	write_cond
	.loc 1 2193 0
	jmp	.L716
.L717:
.LBB26:
	.loc 1 2197 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2198 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_unconditional
	movl	%eax, -8(%ebp)
	.loc 1 2199 0
	cmpl	$0, -8(%ebp)
	jne	.L718
	.loc 1 2202 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2203 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	write_cond
.L716:
.LBE26:
	.loc 1 2193 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L717
.L718:
	.loc 1 2206 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L714:
	.loc 1 2209 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_action
	.loc 1 2211 0
	cmpl	$0, -12(%ebp)
	setg	%al
	movzbl	%al, %eax
	.loc 1 2212 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	write_node, .-write_node
	.section	.rodata
.LC115:
	.string	" "
	.align 4
.LC116:
	.string	"%sL%d: ATTRIBUTE_UNUSED_LABEL\n"
	.text
	.type	write_tree_1, @function
write_tree_1:
.LFB40:
	.loc 1 2221 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$36, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2223 0
	movl	$0, -8(%ebp)
	.loc 1 2225 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L722
.L723:
	.loc 1 2228 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L724
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L724
	.loc 1 2229 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L724:
	.loc 1 2232 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_switch
	movl	%eax, -12(%ebp)
	.loc 1 2233 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L727
	.loc 1 2234 0
	movl	$0, -8(%ebp)
	jmp	.L729
.L727:
	.loc 1 2238 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	write_node
	movl	%eax, -8(%ebp)
	.loc 1 2239 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L729:
	.loc 1 2225 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L722:
	cmpl	$0, -16(%ebp)
	jne	.L723
	.loc 1 2245 0
	cmpl	$0, -8(%ebp)
	jne	.L733
	.loc 1 2246 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	write_afterward
.L733:
	.loc 1 2247 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	write_tree_1, .-write_tree_1
	.section	.rodata
.LC117:
	.string	", pnum_clobbers"
.LC118:
	.string	", _pmatch_len"
	.section	.data.rel.ro.local
	.align 4
	.type	call_suffix.8610, @object
	.size	call_suffix.8610, 12
call_suffix.8610:
	.long	.LC117
	.long	.LC75
	.long	.LC118
	.section	.rodata
.LC119:
	.string	"recog"
.LC120:
	.string	"split"
.LC121:
	.string	"peephole2"
	.section	.data.rel.ro.local
	.align 4
	.type	name_prefix.8609, @object
	.size	name_prefix.8609, 12
name_prefix.8609:
	.long	.LC119
	.long	.LC120
	.long	.LC121
	.section	.rodata
.LC122:
	.string	"  tem = %s_%d (x0, insn%s);\n"
	.align 4
.LC123:
	.string	"  if (tem != 0)\n    return tem;"
	.align 4
.LC124:
	.string	"  if (tem >= 0)\n    return tem;"
.LC125:
	.string	"  goto L%d;\n"
.LC126:
	.string	"  return %s_%d (x0, insn%s);\n"
	.text
	.type	write_tree, @function
write_tree:
.LFB41:
	.loc 1 2258 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%edi
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$48, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2259 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2261 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 2262 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L735
	.loc 1 2263 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L735:
	.loc 1 2265 0
	cmpl	$0, 20(%ebp)
	jne	.L737
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jle	.L737
.LBB27:
	.loc 1 2278 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L740
	.loc 1 2280 0
	movl	16(%ebp), %eax
	movl	call_suffix.8610@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	32(%eax), %ecx
	movl	16(%ebp), %eax
	movl	name_prefix.8609@GOTOFF(%ebx,%eax,4), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2282 0
	cmpl	$0, 16(%ebp)
	je	.L742
	.loc 1 2283 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L744
.L742:
	.loc 1 2285 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L744:
	.loc 1 2287 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	change_state
	.loc 1 2288 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L751
.L740:
	.loc 1 2292 0
	movl	16(%ebp), %eax
	movl	call_suffix.8610@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	32(%eax), %ecx
	movl	16(%ebp), %eax
	movl	name_prefix.8609@GOTOFF(%ebx,%eax,4), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2265 0
	jmp	.L751
.L737:
.LBE27:
.LBB28:
	.loc 1 2298 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2300 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %ecx
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	change_state
	.loc 1 2301 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_tree_1
	.loc 1 2303 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L747
.L748:
	.loc 1 2304 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L749
	.loc 1 2305 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %ecx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	write_tree
.L749:
	.loc 1 2303 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L747:
	cmpl	$0, -16(%ebp)
	jne	.L748
.L751:
.LBE28:
	.loc 1 2307 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	write_tree, .-write_tree
	.section	.rodata
.LC127:
	.string	"static "
.LC128:
	.string	"_%d"
	.align 4
.LC129:
	.string	"%sint recog%s PARAMS ((rtx, rtx, int *));\n"
	.align 4
.LC130:
	.string	"%sint\nrecog%s (x0, insn, pnum_clobbers)\n     rtx x0 ATTRIBUTE_UNUSED;\n     rtx insn ATTRIBUTE_UNUSED;\n     int *pnum_clobbers ATTRIBUTE_UNUSED;\n"
	.align 4
.LC131:
	.string	"%srtx split%s PARAMS ((rtx, rtx));\n"
	.align 4
.LC132:
	.string	"%srtx\nsplit%s (x0, insn)\n     rtx x0 ATTRIBUTE_UNUSED;\n     rtx insn ATTRIBUTE_UNUSED;\n"
	.align 4
.LC133:
	.string	"%srtx peephole2%s PARAMS ((rtx, rtx, int *));\n"
	.align 4
.LC134:
	.string	"%srtx\npeephole2%s (x0, insn, _pmatch_len)\n     rtx x0 ATTRIBUTE_UNUSED;\n     rtx insn ATTRIBUTE_UNUSED;\n     int *_pmatch_len ATTRIBUTE_UNUSED;\n"
	.align 4
.LC135:
	.string	"{\n  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];"
.LC136:
	.string	"  rtx x%d ATTRIBUTE_UNUSED;\n"
.LC137:
	.string	"rtx"
.LC138:
	.string	"int"
.LC139:
	.string	"  %s tem ATTRIBUTE_UNUSED;\n"
.LC140:
	.string	"  recog_data.insn = NULL_RTX;"
.LC141:
	.string	"  goto ret0;"
.LC142:
	.string	" ret0:\n  return %d;\n}\n\n"
	.text
	.type	write_subroutine, @function
write_subroutine:
.LFB42:
	.loc 1 2316 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$100, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2316 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2317 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L753
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L755
.L753:
	movl	$0, -72(%ebp)
.L755:
	movl	-72(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2322 0
	cmpl	$0, -52(%ebp)
	je	.L756
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L758
.L756:
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
.L758:
	movl	-68(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2324 0
	cmpl	$0, -52(%ebp)
	je	.L759
	.loc 1 2325 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L761
.L759:
	.loc 1 2326 0
	cmpl	$0, 12(%ebp)
	jne	.L762
	.loc 1 2327 0
	movb	$0, -40(%ebp)
	jmp	.L761
.L762:
	.loc 1 2329 0
	leal	-40(%ebp), %eax
	movl	$1936615775, (%eax)
	movw	$29550, 4(%eax)
	movb	$0, 6(%eax)
.L761:
	.loc 1 2331 0
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
	cmpl	$1, -76(%ebp)
	je	.L766
	cmpl	$1, -76(%ebp)
	jb	.L765
	cmpl	$2, -76(%ebp)
	je	.L767
	jmp	.L764
.L765:
	.loc 1 2334 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2335 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2340 0
	jmp	.L764
.L766:
	.loc 1 2342 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2343 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2347 0
	jmp	.L764
.L767:
	.loc 1 2349 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2351 0
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L764:
	.loc 1 2359 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2360 0
	movl	$1, -44(%ebp)
	jmp	.L768
.L769:
	.loc 1 2361 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2360 0
	addl	$1, -44(%ebp)
.L768:
	movl	max_depth@GOTOFF(%ebx), %eax
	cmpl	%eax, -44(%ebp)
	jle	.L769
	.loc 1 2363 0
	cmpl	$0, 12(%ebp)
	je	.L771
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L773
.L771:
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L773:
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2365 0
	cmpl	$0, -52(%ebp)
	jne	.L774
	.loc 1 2366 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L774:
	.loc 1 2368 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L776
	.loc 1 2369 0
	movl	$1, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	write_tree
	jmp	.L778
.L776:
	.loc 1 2371 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L778:
	.loc 1 2373 0
	cmpl	$0, 12(%ebp)
	je	.L779
	movl	$0, -60(%ebp)
	jmp	.L781
.L779:
	movl	$-1, -60(%ebp)
.L781:
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2374 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L783
	call	__stack_chk_fail_local
.L783:
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	write_subroutine, .-write_subroutine
	.type	write_subroutines, @function
write_subroutines:
.LFB43:
	.loc 1 2383 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	subl	$24, %esp
.LCFI121:
	.loc 1 2386 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L785
.L786:
	.loc 1 2387 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L787
	.loc 1 2388 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	write_subroutines
.L787:
	.loc 1 2386 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L785:
	cmpl	$0, -4(%ebp)
	jne	.L786
	.loc 1 2390 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jle	.L792
	.loc 1 2391 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_subroutine
.L792:
	.loc 1 2392 0
	leave
	ret
.LFE43:
	.size	write_subroutines, .-write_subroutines
	.section	.rodata
	.align 4
.LC143:
	.ascii	"/* Generated automatically by the program `genrecog' from th"
	.ascii	"e target\n   machine description file.  */\n\n#include \"con"
	.ascii	"fig.h\"\n#include \"s"
	.string	"ystem.h\"\n#include \"rtl.h\"\n#include \"tm_p.h\"\n#include \"function.h\"\n#include \"insn-config.h\"\n#include \"recog.h\"\n#include \"real.h\"\n#include \"output.h\"\n#include \"flags.h\"\n#include \"hard-reg-set.h\"\n#include \"resource.h\"\n#include \"toplev.h\"\n#include \"reload.h\"\n\n"
	.align 4
.LC144:
	.ascii	"\n/* `recog' contains a decision tree that recognizes whethe"
	.ascii	"r the rtx\n   X0 is a valid instruction.\n\n   recog returns"
	.ascii	" -1 if the rtx is not valid.  If the rtx is valid, recog\n  "
	.string	" returns a nonnegative number which is the insn code number for the\n   pattern that matched.  This is the same as the order in the machine\n   description of the entry that matched.  This number can be used as an\n   index into `insn_data' and other tables.\n"
	.align 4
.LC145:
	.ascii	"   The third argument to recog is an optional pointer to an "
	.ascii	"int.  If\n   present, recog will accept a pa"
	.string	"ttern if it matches except for missing\n   CLOBBER expressions at the end.  In that case, the value pointed to by\n   the optional pointer will be set to the number of CLOBBERs that need\n   to be added (it should be initialized to zero by the caller).  If it"
	.align 4
.LC146:
	.string	"   is set nonzero, the caller should allocate a PARALLEL of the\n   appropriate size, copy the initial entries, and call add_clobbers\n   (found in insn-emit.c) to fill in the CLOBBERs.\n"
	.align 4
.LC147:
	.ascii	"\n   The function split_insns returns 0 if the rtl could not"
	.ascii	"\n   be split or the split r"
	.string	"tl as an INSN list if it can be.\n\n   The function peephole2_insns returns 0 if the rtl could not\n   be matched. If there was a match, the new rtl is returned in an INSN list,\n   and LAST_INSN will point to the last recognized insn in the old sequence.\n*/\n\n"
	.text
	.type	write_header, @function
write_header:
.LFB44:
	.loc 1 2398 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$4, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2399 0
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2419 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2428 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2434 0
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2440 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2448 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	write_header, .-write_header
	.section	.rodata
	.type	__FUNCTION__.8734, @object
	.size	__FUNCTION__.8734, 19
__FUNCTION__.8734:
	.string	"make_insn_sequence"
	.align 4
.LC148:
	.string	"extern rtx gen_split_%d PARAMS ((rtx *));\n"
	.align 4
.LC149:
	.string	"extern rtx gen_peephole2_%d PARAMS ((rtx, rtx *));\n"
	.text
	.type	make_insn_sequence, @function
make_insn_sequence:
.LFB45:
	.loc 1 2460 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%esi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$112, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2462 0
	cmpl	$0, 16(%ebp)
	jne	.L796
	movl	$2, -96(%ebp)
	jmp	.L798
.L796:
	movl	$1, -96(%ebp)
.L798:
	movl	-96(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2463 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_eval_c_test@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2470 0
	cmpl	$0, -52(%ebp)
	jne	.L799
	.loc 1 2471 0
	leal	__FUNCTION__.8734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2471, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L799:
	.loc 1 2473 0
	cmpl	$0, 16(%ebp)
	jne	.L801
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L803
.L801:
	movl	$0, -92(%ebp)
.L803:
	movl	next_insn_code@GOTOFF(%ebx), %eax
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	record_insn_name
	.loc 1 2475 0
	movb	$0, -10(%ebp)
	.loc 1 2476 0
	cmpl	$2, 16(%ebp)
	jne	.L804
.LBB29:
	.loc 1 2484 0
	movl	$49, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2485 0
	movl	-60(%ebp), %eax
	movb	$0, 2(%eax)
	.loc 1 2486 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2487 0
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L806
.L807:
.LBB30:
	.loc 1 2489 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2490 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$6, %ax
	je	.L808
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	je	.L808
	.loc 1 2492 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%ecx,%edx,4)
	.loc 1 2493 0
	addl	$1, -36(%ebp)
.L808:
.LBE30:
	.loc 1 2487 0
	addl	$1, -40(%ebp)
.L806:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L807
	.loc 1 2496 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2498 0
	movl	-36(%ebp), %eax
	addl	$64, %eax
	movb	%al, -10(%ebp)
	.loc 1 2499 0
	movb	$0, -9(%ebp)
	jmp	.L812
.L804:
.LBE29:
	.loc 1 2501 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L813
	.loc 1 2502 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L812
.L813:
	.loc 1 2505 0
	movl	$49, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2506 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2507 0
	movl	-60(%ebp), %eax
	movb	$0, 2(%eax)
.L812:
	.loc 1 2510 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_pattern
	.loc 1 2512 0
	leal	-72(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 2513 0
	movl	$1, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_sequence
	movl	%eax, -48(%ebp)
	.loc 1 2516 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L815
.L816:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L815:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L816
	.loc 1 2518 0
	movl	-44(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2521 0
	cmpl	$-1, -52(%ebp)
	jne	.L818
	.loc 1 2524 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	jne	.L820
	.loc 1 2526 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	new_decision
	movl	%eax, -48(%ebp)
	.loc 1 2527 0
	movl	-48(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -64(%ebp)
.L820:
	.loc 1 2529 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	new_decision_test
	movl	%eax, -44(%ebp)
	.loc 1 2530 0
	movl	-44(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 8(%edx)
.L818:
	.loc 1 2533 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$12, (%esp)
	call	new_decision_test
	movl	%eax, -44(%ebp)
	.loc 1 2534 0
	movl	next_insn_code@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2535 0
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2536 0
	movl	-44(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 2538 0
	movl	16(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	cmpl	$1, -100(%ebp)
	je	.L824
	cmpl	$1, -100(%ebp)
	jb	.L823
	cmpl	$2, -100(%ebp)
	je	.L825
	jmp	.L822
.L823:
	.loc 1 2545 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L822
.LBB31:
	.loc 1 2550 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L828
.L829:
.LBB32:
	.loc 1 2552 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2553 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L830
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L832
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$6, %ax
	jne	.L830
.L832:
.LBE32:
	.loc 1 2550 0
	subl	$1, -28(%ebp)
.L828:
	cmpl	$0, -28(%ebp)
	jg	.L829
.L830:
	.loc 1 2559 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L822
.LBB33:
	.loc 1 2565 0
	cmpl	$1, -28(%ebp)
	jne	.L835
	.loc 1 2566 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L837
.L835:
.LBB34:
	.loc 1 2571 0
	movl	$49, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2572 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2573 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L838
.L839:
	.loc 1 2574 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %esi
	movl	-16(%ebp), %ecx
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esi,%ecx,4)
	.loc 1 2573 0
	subl	$1, -16(%ebp)
.L838:
	cmpl	$0, -16(%ebp)
	jns	.L839
.L837:
.LBE34:
	.loc 1 2578 0
	leal	-80(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 2579 0
	movl	$1, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_to_sequence
	movl	%eax, -48(%ebp)
	.loc 1 2582 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L840
.L841:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L840:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L841
	.loc 1 2587 0
	movl	-44(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2588 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$11, %eax
	jne	.L843
	.loc 1 2590 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	new_decision
	movl	%eax, -48(%ebp)
	.loc 1 2591 0
	movl	-48(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -64(%ebp)
.L843:
	.loc 1 2596 0
	cmpl	$-1, -52(%ebp)
	jne	.L845
	.loc 1 2598 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	new_decision_test
	movl	%eax, -44(%ebp)
	.loc 1 2599 0
	movl	-44(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 8(%edx)
.L845:
	.loc 1 2602 0
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$12, (%esp)
	call	new_decision_test
	movl	%eax, -44(%ebp)
	.loc 1 2603 0
	movl	next_insn_code@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2604 0
	movl	pattern_lineno@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2605 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	subl	-28(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2607 0
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_trees
	.loc 1 2610 0
	jmp	.L822
.L824:
.LBE33:
.LBE31:
	.loc 1 2614 0
	movl	next_insn_code@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2615 0
	jmp	.L822
.L825:
	.loc 1 2619 0
	movl	next_insn_code@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L822:
	.loc 1 2624 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 2625 0
	movl	8(%ebp), %eax
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$4
.LFE45:
	.size	make_insn_sequence, .-make_insn_sequence
	.type	process_tree, @function
process_tree:
.LFB46:
	.loc 1 2631 0
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
	.loc 1 2632 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L849
	.loc 1 2635 0
	cmpl	$2, 12(%ebp)
	je	.L854
	.loc 1 2636 0
	jmp	.L853
.L849:
	.loc 1 2640 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	factor_tests
	.loc 1 2642 0
	movl	$0, next_subroutine_number@GOTOFF(%ebx)
	.loc 1 2643 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	break_out_subroutines
	.loc 1 2644 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_afterward
	.loc 1 2649 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_tests
	.loc 1 2651 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_subroutines
.L853:
	.loc 1 2654 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_subroutine
.L854:
	.loc 1 2655 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	process_tree, .-process_tree
	.section	.rodata
.LC150:
	.string	"genrecog"
.LC151:
	.string	"no input file name"
.LC152:
	.string	"\n\n"
	.text
.globl main
	.type	main, @function
main:
.LFB47:
	.loc 1 2663 0
	leal	4(%esp), %ecx
.LCFI135:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI136:
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	pushl	%ecx
.LCFI140:
	subl	$96, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -88(%ebp)
	.loc 1 2667 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 2669 0
	leal	-20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 2670 0
	leal	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 2671 0
	leal	-36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 2673 0
	movl	-88(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L856
	.loc 1 2674 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L856:
	.loc 1 2676 0
	movl	-88(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L858
	.loc 1 2677 0
	movl	$1, -84(%ebp)
	jmp	.L860
.L858:
	.loc 1 2679 0
	movl	$0, next_insn_code@GOTOFF(%ebx)
	.loc 1 2680 0
	movl	$0, next_index@GOTOFF(%ebx)
	.loc 1 2682 0
	call	write_header
.L861:
	.loc 1 2688 0
	leal	next_insn_code@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	pattern_lineno@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2689 0
	cmpl	$0, -12(%ebp)
	je	.L862
	.loc 1 2692 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	jne	.L864
	.loc 1 2694 0
	leal	-64(%ebp), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_insn_sequence
	subl	$4, %esp
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2695 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_trees
	jmp	.L866
.L864:
	.loc 1 2697 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$15, %ax
	jne	.L867
	.loc 1 2699 0
	leal	-72(%ebp), %edx
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_insn_sequence
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2700 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_trees
	jmp	.L866
.L867:
	.loc 1 2702 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$17, %ax
	jne	.L866
	.loc 1 2704 0
	leal	-80(%ebp), %edx
	movl	$2, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_insn_sequence
	subl	$4, %esp
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 2705 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_trees
.L866:
	.loc 1 2708 0
	movl	next_index@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_index@GOTOFF(%ebx)
	.loc 1 2709 0
	jmp	.L861
.L862:
	.loc 1 2711 0
	movl	error_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L870
	.loc 1 2712 0
	movl	$1, -84(%ebp)
	jmp	.L860
.L870:
	.loc 1 2714 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2716 0
	movl	$0, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	process_tree
	.loc 1 2717 0
	movl	$1, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	process_tree
	.loc 1 2718 0
	movl	$2, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	process_tree
	.loc 1 2720 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 2721 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
.L860:
	movl	-84(%ebp), %eax
	.loc 1 2722 0
	leal	-8(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE47:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB48:
	.loc 1 2728 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	subl	$4, %esp
.LCFI144:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2729 0
	movl	insn_name_ptr_size@GOTOFF(%ecx), %eax
	cmpl	%eax, 8(%ebp)
	jge	.L874
	.loc 1 2730 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L876
.L874:
	.loc 1 2732 0
	movl	$0, -4(%ebp)
.L876:
	movl	-4(%ebp), %eax
	.loc 1 2733 0
	leave
	ret
.LFE48:
	.size	get_insn_name, .-get_insn_name
	.local	last_real_code.8954
	.comm	last_real_code.8954,4,4
	.section	.rodata
.LC153:
	.string	"insn"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	last_real_name.8953, @object
	.size	last_real_name.8953, 4
last_real_name.8953:
	.long	.LC153
	.section	.rodata
.LC154:
	.string	"%s+%d"
	.text
	.type	record_insn_name, @function
record_insn_name:
.LFB49:
	.loc 1 2739 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%edi
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$48, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2744 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	cmpl	8(%ebp), %eax
	jg	.L879
.LBB35:
	.loc 1 2747 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L881
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, -28(%ebp)
	jmp	.L883
.L881:
	movl	$512, -28(%ebp)
.L883:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2748 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	insn_name_ptr@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, insn_name_ptr@GOTOFF(%ebx)
	.loc 1 2750 0
	movl	insn_name_ptr_size@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	subl	%edx, %eax
	leal	0(,%eax,4), %ecx
	movl	insn_name_ptr_size@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 2752 0
	movl	-12(%ebp), %eax
	movl	%eax, insn_name_ptr_size@GOTOFF(%ebx)
.L879:
.LBE35:
	.loc 1 2755 0
	cmpl	$0, 12(%ebp)
	je	.L884
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L886
.L884:
	.loc 1 2757 0
	movl	last_real_name.8953@GOTOFF(%ebx), %eax
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
	addl	$10, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2758 0
	movl	last_real_code.8954@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	subl	%edx, %eax
	movl	last_real_name.8953@GOTOFF(%ebx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2755 0
	jmp	.L887
.L886:
	.loc 1 2762 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, last_real_name.8953@GOTOFF(%ebx)
	.loc 1 2763 0
	movl	8(%ebp), %eax
	movl	%eax, last_real_code.8954@GOTOFF(%ebx)
.L887:
	.loc 1 2766 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_name_ptr@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2767 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	record_insn_name, .-record_insn_name
	.section	.rodata
	.type	__FUNCTION__.9018, @object
	.size	__FUNCTION__.9018, 17
__FUNCTION__.9018:
	.string	"debug_decision_2"
.LC155:
	.string	"mode=%s"
.LC156:
	.string	"code=%s"
.LC157:
	.string	"veclen=%d"
.LC158:
	.string	"elt0_i=%d"
.LC159:
	.string	"elt1_i=%d"
.LC160:
	.string	"elt0_w="
.LC161:
	.string	"%lld"
.LC162:
	.string	"elt0_ws="
.LC163:
	.string	"veclen>=%d"
.LC164:
	.string	"dup=%d"
.LC165:
	.string	"pred=(%s,%s)"
.LC166:
	.string	"c_test=\"%s\""
.LC167:
	.string	"A_op=%d"
.LC168:
	.string	"A_insn=(%d,%d)"
	.text
	.type	debug_decision_2, @function
debug_decision_2:
.LFB50:
	.loc 1 2772 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%esi
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$64, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2772 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2773 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$12, -48(%ebp)
	ja	.L890
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L904@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L904:
	.long	.L891@GOTOFF
	.long	.L892@GOTOFF
	.long	.L893@GOTOFF
	.long	.L894@GOTOFF
	.long	.L895@GOTOFF
	.long	.L896@GOTOFF
	.long	.L897@GOTOFF
	.long	.L898@GOTOFF
	.long	.L899@GOTOFF
	.long	.L900@GOTOFF
	.long	.L901@GOTOFF
	.long	.L902@GOTOFF
	.long	.L903@GOTOFF
	.text
.L891:
	.loc 1 2776 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2777 0
	jmp	.L906
.L892:
	.loc 1 2779 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2780 0
	jmp	.L906
.L893:
	.loc 1 2782 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2783 0
	jmp	.L906
.L894:
	.loc 1 2785 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2786 0
	jmp	.L906
.L895:
	.loc 1 2788 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2789 0
	jmp	.L906
.L896:
	.loc 1 2791 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2792 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2793 0
	jmp	.L906
.L897:
	.loc 1 2795 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 2796 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2797 0
	jmp	.L906
.L898:
	.loc 1 2799 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2800 0
	jmp	.L906
.L899:
	.loc 1 2802 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2803 0
	jmp	.L906
.L900:
	.loc 1 2805 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-44(%ebp), %eax
	movl	8(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2807 0
	jmp	.L906
.L901:
.LBB36:
	.loc 1 2811 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 2812 0
	leal	-32(%ebp), %eax
	addl	$16, %eax
	movl	$3026478, (%eax)
	.loc 1 2813 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2815 0
	jmp	.L906
.L902:
.LBE36:
	.loc 1 2817 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2818 0
	jmp	.L906
.L903:
	.loc 1 2820 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	8(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 2822 0
	jmp	.L906
.L890:
	.loc 1 2825 0
	leal	__FUNCTION__.9018@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2825, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L906:
	.loc 1 2827 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L907
	call	__stack_chk_fail_local
.L907:
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	debug_decision_2, .-debug_decision_2
	.section	.rodata
.LC169:
	.string	"(nil)\n"
.LC170:
	.string	" + "
.LC171:
	.string	"} %d n %d a %d\n"
	.text
	.type	debug_decision_1, @function
debug_decision_1:
.LFB51:
	.loc 1 2833 0
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
	.loc 1 2837 0
	cmpl	$0, 8(%ebp)
	jne	.L909
	.loc 1 2839 0
	movl	$0, -12(%ebp)
	jmp	.L911
.L912:
	.loc 1 2840 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2839 0
	addl	$1, -12(%ebp)
.L911:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L912
	.loc 1 2841 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2842 0
	jmp	.L928
.L909:
	.loc 1 2845 0
	movl	$0, -12(%ebp)
	jmp	.L915
.L916:
	.loc 1 2846 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2845 0
	addl	$1, -12(%ebp)
.L915:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L916
	.loc 1 2848 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2849 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2850 0
	cmpl	$0, -8(%ebp)
	je	.L918
	.loc 1 2852 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_2
	.loc 1 2853 0
	jmp	.L920
.L921:
	.loc 1 2855 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2856 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_2
.L920:
	.loc 1 2853 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L921
.L918:
	.loc 1 2859 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L922
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L924
.L922:
	movl	$-1, -28(%ebp)
.L924:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L925
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L927
.L925:
	movl	$-1, -24(%ebp)
.L927:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L928:
	.loc 1 2862 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	debug_decision_1, .-debug_decision_1
	.type	debug_decision_0, @function
debug_decision_0:
.LFB52:
	.loc 1 2868 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$36, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2872 0
	cmpl	$0, 16(%ebp)
	js	.L939
	.loc 1 2874 0
	cmpl	$0, 8(%ebp)
	jne	.L932
	.loc 1 2876 0
	movl	$0, -8(%ebp)
	jmp	.L934
.L935:
	.loc 1 2877 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	.loc 1 2876 0
	addl	$1, -8(%ebp)
.L934:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L935
	.loc 1 2878 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2879 0
	jmp	.L939
.L932:
	.loc 1 2882 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_1
	.loc 1 2883 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L937
.L938:
	.loc 1 2884 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	12(%ebp), %edx
	addl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_0
	.loc 1 2883 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L937:
	cmpl	$0, -12(%ebp)
	jne	.L938
.L939:
	.loc 1 2885 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	debug_decision_0, .-debug_decision_0
.globl debug_decision
	.type	debug_decision, @function
debug_decision:
.LFB53:
	.loc 1 2890 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	subl	$24, %esp
.LCFI165:
	.loc 1 2891 0
	movl	$1000000, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_0
	.loc 1 2892 0
	leave
	ret
.LFE53:
	.size	debug_decision, .-debug_decision
.globl debug_decision_list
	.type	debug_decision_list, @function
debug_decision_list:
.LFB54:
	.loc 1 2897 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	subl	$24, %esp
.LCFI168:
	.loc 1 2898 0
	jmp	.L943
.L944:
	.loc 1 2900 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_decision_0
	.loc 1 2901 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%ebp)
.L943:
	.loc 1 2898 0
	cmpl	$0, 8(%ebp)
	jne	.L944
	.loc 1 2903 0
	leave
	ret
.LFE54:
	.size	debug_decision_list, .-debug_decision_list
	.local	next_subroutine_number
	.comm	next_subroutine_number,4,4
	.local	next_number
	.comm	next_number,4,4
	.local	next_insn_code
	.comm	next_insn_code,4,4
	.local	next_index
	.comm	next_index,4,4
	.local	max_depth
	.comm	max_depth,4,4
	.local	pattern_lineno
	.comm	pattern_lineno,4,4
	.local	error_count
	.comm	error_count,4,4
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
	.long	.LCFI8-.LCFI6
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
	.long	.LCFI26-.LCFI22
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI27-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI28
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI36-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI40-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI41
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
	.long	.LCFI46-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI50-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI55-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI56
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
	.long	.LCFI59-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI62-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI65-.LFB30
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
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI72-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI73
	.byte	0x83
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
	.long	.LCFI77-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI81-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI85-.LFB35
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
	.long	.LCFI97-.LCFI94
	.byte	0x83
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
	.long	.LCFI98-.LFB38
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
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI102-.LFB39
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
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI106-.LFB40
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
	.long	.LCFI114-.LCFI111
	.byte	0x83
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
	.long	.LCFI115-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI119-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
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
	.long	.LCFI122-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI123
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
	.long	.LCFI134-.LCFI132
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
	.long	.LCFI135-.LFB47
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI137-.LCFI136
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
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI142-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
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
	.long	.LCFI145-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI149-.LCFI146
	.byte	0x83
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
	.long	.LCFI150-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI151-.LCFI150
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI151
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
	.long	.LCFI155-.LFB51
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI159-.LFB52
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
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI163-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
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
	.long	.LCFI166-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE78:
	.file 2 "../../../kgccfe/gnu/machmode.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "../../../include/gnu/safe-ctype.h"
	.file 10 "../../../kgccfe/gnu/errors.h"
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
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
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
.LLST31:
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
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI136-.Ltext0
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
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI143-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI150-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI151-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x31fa
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/genrecog.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0x867
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x61e
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x12c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x12d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x9
	.long	0x20e
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0x21d
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
	.byte	0x8
	.byte	0x3b
	.long	0x291
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x2db
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
	.byte	0x91
	.long	0x2bc
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0xd
	.long	0x57b
	.long	.LASF2
	.byte	0x94
	.byte	0x6
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x7
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x7
	.value	0x111
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x7
	.value	0x112
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x7
	.value	0x113
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x7
	.value	0x114
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x7
	.value	0x115
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x7
	.value	0x116
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x7
	.value	0x117
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x7
	.value	0x118
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x7
	.value	0x11a
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x7
	.value	0x11b
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x7
	.value	0x11c
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x7
	.value	0x11e
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x7
	.value	0x120
	.long	0x5d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x7
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x7
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x7
	.value	0x128
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x7
	.value	0x12c
	.long	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x7
	.value	0x12d
	.long	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x7
	.value	0x12e
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x7
	.value	0x132
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x7
	.value	0x13b
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x7
	.value	0x144
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x7
	.value	0x145
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x7
	.value	0x146
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x7
	.value	0x147
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x7
	.value	0x148
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x7
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x7
	.value	0x14c
	.long	0x5ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.string	"_IO_lock_t"
	.byte	0x7
	.byte	0xb0
	.uleb128 0x4
	.long	0x5cc
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x7
	.byte	0xb7
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x7
	.byte	0xb8
	.long	0x5d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x7
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x589
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0x10
	.long	0x5e8
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57b
	.uleb128 0x10
	.long	0x5fe
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x60e
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.long	0x61e
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x13
	.byte	0x0
	.uleb128 0x12
	.long	0x867
	.string	"machine_mode"
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.uleb128 0x13
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x13
	.string	"BImode"
	.sleb128 1
	.uleb128 0x13
	.string	"QImode"
	.sleb128 2
	.uleb128 0x13
	.string	"HImode"
	.sleb128 3
	.uleb128 0x13
	.string	"SImode"
	.sleb128 4
	.uleb128 0x13
	.string	"DImode"
	.sleb128 5
	.uleb128 0x13
	.string	"TImode"
	.sleb128 6
	.uleb128 0x13
	.string	"OImode"
	.sleb128 7
	.uleb128 0x13
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x13
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x13
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x13
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x13
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x13
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x13
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x13
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x13
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x13
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x13
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x13
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x13
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x13
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x13
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x13
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x13
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x13
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x13
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x13
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x13
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x13
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x13
	.string	"COImode"
	.sleb128 30
	.uleb128 0x13
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x13
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x13
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x13
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x13
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x13
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x13
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x13
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x13
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x13
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x13
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x13
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x13
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x13
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x13
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x13
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x13
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x13
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x13
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x13
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x13
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x13
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x13
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x13
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x12
	.long	0x1036
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x13
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x13
	.string	"NIL"
	.sleb128 1
	.uleb128 0x13
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x13
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x13
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x13
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x13
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x13
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x13
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x13
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x13
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x13
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x13
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x13
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x13
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x13
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x13
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x13
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x13
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x13
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x13
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x13
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x13
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x13
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x13
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x13
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x13
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x13
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x13
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x13
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x13
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x13
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x13
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x13
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x13
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x13
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x13
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x13
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x13
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x13
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x13
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x13
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x13
	.string	"INSN"
	.sleb128 42
	.uleb128 0x13
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x13
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x13
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x13
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x13
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x13
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x13
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x13
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x13
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x13
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x13
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x13
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x13
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x13
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x13
	.string	"SET"
	.sleb128 57
	.uleb128 0x13
	.string	"USE"
	.sleb128 58
	.uleb128 0x13
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x13
	.string	"CALL"
	.sleb128 60
	.uleb128 0x13
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x13
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x13
	.string	"RESX"
	.sleb128 63
	.uleb128 0x13
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x13
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x13
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x13
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x13
	.string	"CONST"
	.sleb128 68
	.uleb128 0x13
	.string	"PC"
	.sleb128 69
	.uleb128 0x13
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x13
	.string	"REG"
	.sleb128 71
	.uleb128 0x13
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x13
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x13
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x13
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x13
	.string	"MEM"
	.sleb128 76
	.uleb128 0x13
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x13
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x13
	.string	"CC0"
	.sleb128 79
	.uleb128 0x13
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x13
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x13
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x13
	.string	"COND"
	.sleb128 83
	.uleb128 0x13
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x13
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x13
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x13
	.string	"NEG"
	.sleb128 87
	.uleb128 0x13
	.string	"MULT"
	.sleb128 88
	.uleb128 0x13
	.string	"DIV"
	.sleb128 89
	.uleb128 0x13
	.string	"MOD"
	.sleb128 90
	.uleb128 0x13
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x13
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x13
	.string	"AND"
	.sleb128 93
	.uleb128 0x13
	.string	"IOR"
	.sleb128 94
	.uleb128 0x13
	.string	"XOR"
	.sleb128 95
	.uleb128 0x13
	.string	"NOT"
	.sleb128 96
	.uleb128 0x13
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x13
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x13
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x13
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x13
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x13
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x13
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x13
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x13
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x13
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x13
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x13
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x13
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x13
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x13
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x13
	.string	"NE"
	.sleb128 112
	.uleb128 0x13
	.string	"EQ"
	.sleb128 113
	.uleb128 0x13
	.string	"GE"
	.sleb128 114
	.uleb128 0x13
	.string	"GT"
	.sleb128 115
	.uleb128 0x13
	.string	"LE"
	.sleb128 116
	.uleb128 0x13
	.string	"LT"
	.sleb128 117
	.uleb128 0x13
	.string	"GEU"
	.sleb128 118
	.uleb128 0x13
	.string	"GTU"
	.sleb128 119
	.uleb128 0x13
	.string	"LEU"
	.sleb128 120
	.uleb128 0x13
	.string	"LTU"
	.sleb128 121
	.uleb128 0x13
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x13
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x13
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x13
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x13
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x13
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x13
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x13
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x13
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x13
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x13
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x13
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x13
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x13
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x13
	.string	"FIX"
	.sleb128 136
	.uleb128 0x13
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x13
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x13
	.string	"ABS"
	.sleb128 139
	.uleb128 0x13
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x13
	.string	"FFS"
	.sleb128 141
	.uleb128 0x13
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x13
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x13
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x13
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x13
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x13
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x13
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x13
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x13
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x13
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x13
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x13
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x13
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x13
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x13
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x13
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x13
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x13
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x13
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x13
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x13
	.string	"PHI"
	.sleb128 162
	.uleb128 0x13
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x14
	.long	0x1110
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x1036
	.uleb128 0xd
	.long	0x1187
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF3
	.byte	0x3
	.byte	0x6e
	.long	0x112b
	.uleb128 0x16
	.long	0x1264
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x17
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x291
	.uleb128 0x17
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x216
	.uleb128 0x17
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21d
	.uleb128 0x17
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x203
	.uleb128 0x17
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9d
	.uleb128 0x17
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19d
	.uleb128 0x17
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x61e
	.uleb128 0x17
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1110
	.uleb128 0x17
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1278
	.uleb128 0x17
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1290
	.uleb128 0x17
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x17
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x12a8
	.uleb128 0x17
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x12ae
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1264
	.uleb128 0x18
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x127e
	.uleb128 0x18
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1296
	.uleb128 0x3
	.byte	0x4
	.long	0x1187
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1192
	.uleb128 0x10
	.long	0x12d3
	.long	0x12b4
	.uleb128 0x11
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x12e3
	.long	0x9d
	.uleb128 0x11
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1319
	.string	"decision_head"
	.byte	0x8
	.byte	0x1
	.byte	0x4e
	.uleb128 0x7
	.string	"first"
	.byte	0x1
	.byte	0x4f
	.long	0x13c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x1
	.byte	0x50
	.long	0x13c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x13c9
	.string	"decision"
	.byte	0x28
	.byte	0x1
	.byte	0x4f
	.uleb128 0x7
	.string	"success"
	.byte	0x1
	.byte	0x83
	.long	0x12e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"next"
	.byte	0x1
	.byte	0x84
	.long	0x13c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"prev"
	.byte	0x1
	.byte	0x85
	.long	0x13c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.long	.LASF4
	.byte	0x1
	.byte	0x86
	.long	0x13c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF5
	.byte	0x1
	.byte	0x89
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"tests"
	.byte	0x1
	.byte	0x8b
	.long	0x15dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"number"
	.byte	0x1
	.byte	0x8d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"subroutine_number"
	.byte	0x1
	.byte	0x8e
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"need_label"
	.byte	0x1
	.byte	0x8f
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1319
	.uleb128 0x12
	.long	0x14a2
	.string	"decision_type"
	.byte	0x4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x13
	.string	"DT_mode"
	.sleb128 0
	.uleb128 0x13
	.string	"DT_code"
	.sleb128 1
	.uleb128 0x13
	.string	"DT_veclen"
	.sleb128 2
	.uleb128 0x13
	.string	"DT_elt_zero_int"
	.sleb128 3
	.uleb128 0x13
	.string	"DT_elt_one_int"
	.sleb128 4
	.uleb128 0x13
	.string	"DT_elt_zero_wide"
	.sleb128 5
	.uleb128 0x13
	.string	"DT_elt_zero_wide_safe"
	.sleb128 6
	.uleb128 0x13
	.string	"DT_veclen_ge"
	.sleb128 7
	.uleb128 0x13
	.string	"DT_dup"
	.sleb128 8
	.uleb128 0x13
	.string	"DT_pred"
	.sleb128 9
	.uleb128 0x13
	.string	"DT_c_test"
	.sleb128 10
	.uleb128 0x13
	.string	"DT_accept_op"
	.sleb128 11
	.uleb128 0x13
	.string	"DT_accept_insn"
	.sleb128 12
	.byte	0x0
	.uleb128 0x14
	.long	0x14d9
	.byte	0xc
	.byte	0x1
	.byte	0x6b
	.uleb128 0x7
	.string	"name"
	.byte	0x1
	.byte	0x6c
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"index"
	.byte	0x1
	.byte	0x6d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x1
	.byte	0x6e
	.long	0x61e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	0x1527
	.byte	0xc
	.byte	0x1
	.byte	0x77
	.uleb128 0x7
	.string	"code_number"
	.byte	0x1
	.byte	0x78
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"lineno"
	.byte	0x1
	.byte	0x79
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"num_clobbers_to_add"
	.byte	0x1
	.byte	0x7a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1a
	.long	0x159d
	.byte	0xc
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.string	"mode"
	.byte	0x1
	.byte	0x67
	.long	0x61e
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x1
	.byte	0x68
	.long	0x867
	.uleb128 0x17
	.string	"pred"
	.byte	0x1
	.byte	0x6f
	.long	0x14a2
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.byte	0x71
	.long	0x203
	.uleb128 0x17
	.string	"veclen"
	.byte	0x1
	.byte	0x72
	.long	0x216
	.uleb128 0x17
	.string	"dup"
	.byte	0x1
	.byte	0x73
	.long	0x216
	.uleb128 0x17
	.string	"intval"
	.byte	0x1
	.byte	0x74
	.long	0x291
	.uleb128 0x17
	.string	"opno"
	.byte	0x1
	.byte	0x75
	.long	0x216
	.uleb128 0x17
	.string	"insn"
	.byte	0x1
	.byte	0x7b
	.long	0x14d9
	.byte	0x0
	.uleb128 0x4
	.long	0x15dd
	.string	"decision_test"
	.byte	0x14
	.byte	0x1
	.byte	0x58
	.uleb128 0x7
	.string	"next"
	.byte	0x1
	.byte	0x5a
	.long	0x15dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF7
	.byte	0x1
	.byte	0x63
	.long	0x13cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"u"
	.byte	0x1
	.byte	0x7c
	.long	0x1527
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x159d
	.uleb128 0x12
	.long	0x1615
	.string	"routine_type"
	.byte	0x4
	.byte	0x1
	.byte	0x9a
	.uleb128 0x13
	.string	"RECOG"
	.sleb128 0
	.uleb128 0x13
	.string	"SPLIT"
	.sleb128 1
	.uleb128 0x13
	.string	"PEEPHOLE2"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1c
	.long	0x1649
	.string	"pred_table"
	.value	0x290
	.byte	0x1
	.byte	0xbf
	.uleb128 0x7
	.string	"name"
	.byte	0x1
	.byte	0xc0
	.long	0x1649
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"codes"
	.byte	0x1
	.byte	0xc1
	.long	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.long	0x203
	.uleb128 0x10
	.long	0x165e
	.long	0x867
	.uleb128 0x11
	.long	0x224
	.byte	0xa2
	.byte	0x0
	.uleb128 0x9
	.long	0x164e
	.uleb128 0x1d
	.long	0x16b8
	.string	"new_decision"
	.byte	0x1
	.value	0x146
	.byte	0x1
	.long	0x13c9
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x144
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"last"
	.byte	0x1
	.value	0x145
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"new"
	.byte	0x1
	.value	0x147
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12e3
	.uleb128 0x1d
	.long	0x172b
	.string	"new_decision_test"
	.byte	0x1
	.value	0x159
	.byte	0x1
	.long	0x15dd
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x157
	.long	0x13cf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"pplace"
	.byte	0x1
	.value	0x158
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"place"
	.byte	0x1
	.value	0x15a
	.long	0x1731
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF8
	.byte	0x1
	.value	0x15b
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1731
	.uleb128 0x3
	.byte	0x4
	.long	0x15dd
	.uleb128 0x1d
	.long	0x17de
	.string	"find_operand"
	.byte	0x1
	.value	0x16e
	.byte	0x1
	.long	0x9d
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x16c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x16d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"fmt"
	.byte	0x1
	.value	0x16f
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.value	0x170
	.long	0x867
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x171
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x171
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x171
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.value	0x172
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6878
	.byte	0x0
	.uleb128 0x1d
	.long	0x188e
	.string	"find_matching_operand"
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	0x9d
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x1a3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x1a4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"fmt"
	.byte	0x1
	.value	0x1a6
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.value	0x1a7
	.long	0x867
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x1a8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x1a8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x1a8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.value	0x1a9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f80
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.6943
	.byte	0x0
	.uleb128 0x23
	.long	0x1a93
	.string	"validate_pattern"
	.byte	0x1
	.value	0x1de
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x1da
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"insn"
	.byte	0x1
	.value	0x1db
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"set"
	.byte	0x1
	.value	0x1dc
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"set_code"
	.byte	0x1
	.value	0x1dd
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.string	"fmt"
	.byte	0x1
	.value	0x1df
	.long	0x203
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.value	0x1e0
	.long	0x867
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x1e1
	.long	0x22b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x1e1
	.long	0x22b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x1e2
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	0x1a18
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x21
	.long	.LASF11
	.byte	0x1
	.value	0x1ee
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"allows_non_lvalue"
	.byte	0x1
	.value	0x1ef
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"allows_non_const"
	.byte	0x1
	.value	0x1ef
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"special_mode_pred"
	.byte	0x1
	.value	0x1f0
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF6
	.byte	0x1
	.value	0x1f1
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	0x19f5
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x200
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x205
	.long	0x867
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x20
	.string	"constraints0"
	.byte	0x1
	.value	0x22e
	.long	0x209
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1a82
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x20
	.string	"dmode"
	.byte	0x1
	.value	0x285
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"smode"
	.byte	0x1
	.value	0x285
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"dest"
	.byte	0x1
	.value	0x286
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.value	0x286
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x20
	.string	"which"
	.byte	0x1
	.value	0x2b8
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7049
	.byte	0x0
	.uleb128 0x1d
	.long	0x1cb3
	.string	"add_to_sequence"
	.byte	0x1
	.value	0x30c
	.byte	0x1
	.long	0x13c9
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x307
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"last"
	.byte	0x1
	.value	0x308
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x309
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"insn_type"
	.byte	0x1
	.value	0x30a
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.string	"top"
	.byte	0x1
	.value	0x30b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.value	0x30d
	.long	0x867
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"this"
	.byte	0x1
	.value	0x30e
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.string	"sub"
	.byte	0x1
	.value	0x30e
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF8
	.byte	0x1
	.value	0x30f
	.long	0x15dd
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.string	"place"
	.byte	0x1
	.value	0x310
	.long	0x1731
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.string	"subpos"
	.byte	0x1
	.value	0x311
	.long	0x2fa
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x312
	.long	0x22b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.string	"fmt"
	.byte	0x1
	.value	0x313
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF12
	.byte	0x1
	.value	0x314
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.value	0x315
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"mode"
	.byte	0x1
	.value	0x316
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"restart"
	.byte	0x1
	.value	0x3ba
	.long	.L191
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x424
	.long	.L209
	.uleb128 0x26
	.string	"fini"
	.byte	0x1
	.value	0x40f
	.long	.L241
	.uleb128 0x24
	.long	0x1c6a
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x21
	.long	.LASF11
	.byte	0x1
	.value	0x34e
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"was_code"
	.byte	0x1
	.value	0x34f
	.long	0x867
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"allows_const_int"
	.byte	0x1
	.value	0x350
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	0x1c4f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x377
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x25
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x20
	.string	"base"
	.byte	0x1
	.value	0x394
	.long	0x20e
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1c87
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x21
	.long	.LASF7
	.byte	0x1
	.value	0x3d9
	.long	0x13cf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x1ca2
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x3fa
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7357
	.byte	0x0
	.uleb128 0x1d
	.long	0x1d75
	.string	"maybe_both_true_2"
	.byte	0x1
	.value	0x42f
	.byte	0x1
	.long	0x216
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1f
	.string	"d1"
	.byte	0x1
	.value	0x42e
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"d2"
	.byte	0x1
	.value	0x42e
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	0x1d17
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.value	0x450
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x24
	.long	0x1d32
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x46d
	.long	0x1d75
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x25
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x20
	.string	"c1"
	.byte	0x1
	.value	0x47b
	.long	0x1d75
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"common"
	.byte	0x1
	.value	0x47c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x20
	.string	"c2"
	.byte	0x1
	.value	0x480
	.long	0x1d75
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d7b
	.uleb128 0x9
	.long	0x867
	.uleb128 0x1d
	.long	0x1de4
	.string	"maybe_both_true_1"
	.byte	0x1
	.value	0x49e
	.byte	0x1
	.long	0x216
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1f
	.string	"d1"
	.byte	0x1
	.value	0x49d
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"d2"
	.byte	0x1
	.value	0x49d
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"t1"
	.byte	0x1
	.value	0x49f
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.string	"t2"
	.byte	0x1
	.value	0x49f
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1d
	.long	0x1e79
	.string	"maybe_both_true"
	.byte	0x1
	.value	0x4c2
	.byte	0x1
	.long	0x216
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1f
	.string	"d1"
	.byte	0x1
	.value	0x4c0
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"d2"
	.byte	0x1
	.value	0x4c0
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"toplevel"
	.byte	0x1
	.value	0x4c1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"p1"
	.byte	0x1
	.value	0x4c3
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"p2"
	.byte	0x1
	.value	0x4c3
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"cmp"
	.byte	0x1
	.value	0x4c4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f61
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7739
	.byte	0x0
	.uleb128 0x1d
	.long	0x1ed1
	.string	"nodes_identical_1"
	.byte	0x1
	.value	0x506
	.byte	0x1
	.long	0x216
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1f
	.string	"d1"
	.byte	0x1
	.value	0x505
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"d2"
	.byte	0x1
	.value	0x505
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7797
	.byte	0x0
	.uleb128 0x1d
	.long	0x1f33
	.string	"nodes_identical"
	.byte	0x1
	.value	0x536
	.byte	0x1
	.long	0x216
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x1f
	.string	"d1"
	.byte	0x1
	.value	0x535
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"d2"
	.byte	0x1
	.value	0x535
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"t1"
	.byte	0x1
	.value	0x537
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"t2"
	.byte	0x1
	.value	0x537
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x1f99
	.string	"merge_accept_insn"
	.byte	0x1
	.value	0x55b
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x1f
	.string	"oldd"
	.byte	0x1
	.value	0x55a
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"addd"
	.byte	0x1
	.value	0x55a
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"old"
	.byte	0x1
	.value	0x55c
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0x55c
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x23
	.long	0x2055
	.string	"merge_trees"
	.byte	0x1
	.value	0x588
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x1f
	.string	"oldh"
	.byte	0x1
	.value	0x587
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"addh"
	.byte	0x1
	.value	0x587
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"next"
	.byte	0x1
	.value	0x589
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"add"
	.byte	0x1
	.value	0x589
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"merged_nodes"
	.byte	0x1
	.value	0x5d2
	.long	.L448
	.uleb128 0x24
	.long	0x2044
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x20
	.string	"old"
	.byte	0x1
	.value	0x599
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"insert_before"
	.byte	0x1
	.value	0x599
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7907
	.byte	0x0
	.uleb128 0x23
	.long	0x20fb
	.string	"factor_tests"
	.byte	0x1
	.value	0x5dd
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x5dc
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"first"
	.byte	0x1
	.value	0x5de
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"next"
	.byte	0x1
	.value	0x5de
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x21
	.long	.LASF7
	.byte	0x1
	.value	0x5e2
	.long	0x13cf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"new"
	.byte	0x1
	.value	0x5e3
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.string	"old_last"
	.byte	0x1
	.value	0x5e3
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x20
	.string	"h"
	.byte	0x1
	.value	0x608
	.long	0x12e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x2163
	.string	"simplify_tests"
	.byte	0x1
	.value	0x633
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x632
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"tree"
	.byte	0x1
	.value	0x634
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.value	0x638
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.value	0x638
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x21d4
	.string	"break_out_subroutines"
	.byte	0x1
	.value	0x65a
	.byte	0x1
	.long	0x216
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x658
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"initial"
	.byte	0x1
	.value	0x659
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"size"
	.byte	0x1
	.value	0x65b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"sub"
	.byte	0x1
	.value	0x65c
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x224b
	.string	"find_afterward"
	.byte	0x1
	.value	0x670
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x66e
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"real_afterward"
	.byte	0x1
	.value	0x66f
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x671
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.value	0x671
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.long	.LASF4
	.byte	0x1
	.value	0x671
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x23
	.long	0x2313
	.string	"change_state"
	.byte	0x1
	.value	0x6a3
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x1f
	.string	"oldpos"
	.byte	0x1
	.value	0x69f
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"newpos"
	.byte	0x1
	.value	0x6a0
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x6a1
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0x6a2
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.string	"odepth"
	.byte	0x1
	.value	0x6a4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"ndepth"
	.byte	0x1
	.value	0x6a5
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF12
	.byte	0x1
	.value	0x6a6
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"old_has_insn"
	.byte	0x1
	.value	0x6a7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"new_has_insn"
	.byte	0x1
	.value	0x6a7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x23
	.long	0x2350
	.string	"print_code"
	.byte	0x1
	.value	0x6dd
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x1
	.value	0x6dc
	.long	0x867
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x6de
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x23a5
	.string	"write_afterward"
	.byte	0x1
	.value	0x6ea
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x1f
	.string	"start"
	.byte	0x1
	.value	0x6e7
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x6e8
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0x6e9
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x1d
	.long	0x24e7
	.string	"write_switch"
	.byte	0x1
	.value	0x6fb
	.byte	0x1
	.long	0x13c9
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x1f
	.string	"start"
	.byte	0x1
	.value	0x6f9
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x6fa
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x6fc
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x21
	.long	.LASF7
	.byte	0x1
	.value	0x6fd
	.long	0x13cf
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.string	"needs_label"
	.byte	0x1
	.value	0x6fe
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x26
	.string	"pred_done"
	.byte	0x1
	.value	0x74d
	.long	.L598
	.uleb128 0x26
	.string	"case_done"
	.byte	0x1
	.value	0x7af
	.long	.L631
	.uleb128 0x24
	.long	0x24a0
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x20
	.string	"codemap"
	.byte	0x1
	.value	0x70e
	.long	0x24e7
	.byte	0x3
	.byte	0x91
	.sleb128 -179
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.value	0x70f
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.value	0x710
	.long	0x867
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x25
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x73a
	.long	0x1d75
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x24d6
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x21
	.long	.LASF14
	.byte	0x1
	.value	0x767
	.long	0x203
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x25
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.value	0x78e
	.long	0x13c9
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8273
	.byte	0x0
	.uleb128 0x10
	.long	0x24f7
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0xa2
	.byte	0x0
	.uleb128 0x23
	.long	0x2553
	.string	"write_cond"
	.byte	0x1
	.value	0x7c3
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x7c0
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x7c1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x7c2
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8432
	.byte	0x0
	.uleb128 0x23
	.long	0x2637
	.string	"write_action"
	.byte	0x1
	.value	0x810
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x80b
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x80c
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x80d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.long	.LASF16
	.byte	0x1
	.value	0x80d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.string	"success"
	.byte	0x1
	.value	0x80e
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x80f
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x21
	.long	.LASF14
	.byte	0x1
	.value	0x811
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"want_close"
	.byte	0x1
	.value	0x812
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	0x2626
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x20
	.string	"match_len"
	.byte	0x1
	.value	0x842
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x842
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2f08
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8467
	.byte	0x0
	.uleb128 0x1d
	.long	0x268e
	.string	"is_unconditional"
	.byte	0x1
	.value	0x868
	.byte	0x1
	.long	0x216
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x866
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x867
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF10
	.long	0x2ef3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8544
	.byte	0x0
	.uleb128 0x1d
	.long	0x272e
	.string	"write_node"
	.byte	0x1
	.value	0x886
	.byte	0x1
	.long	0x216
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x883
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x884
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x885
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF8
	.byte	0x1
	.value	0x887
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"last_test"
	.byte	0x1
	.value	0x887
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF16
	.byte	0x1
	.value	0x888
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x20
	.string	"uncond2"
	.byte	0x1
	.value	0x893
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x27aa
	.string	"write_tree_1"
	.byte	0x1
	.value	0x8ad
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x8aa
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x8ab
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0x8ac
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x8ae
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"next"
	.byte	0x1
	.value	0x8ae
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF16
	.byte	0x1
	.value	0x8af
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x2876
	.string	"write_tree"
	.byte	0x1
	.value	0x8d2
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x8ce
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"prevpos"
	.byte	0x1
	.value	0x8cf
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x8d0
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"initial"
	.byte	0x1
	.value	0x8d1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x8d3
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x24
	.long	0x2841
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x21
	.long	.LASF12
	.byte	0x1
	.value	0x8fa
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.string	"name_prefix"
	.byte	0x1
	.value	0x8db
	.long	0x2ed9
	.byte	0x5
	.byte	0x3
	.long	name_prefix.8609
	.uleb128 0x20
	.string	"call_suffix"
	.byte	0x1
	.value	0x8df
	.long	0x2eee
	.byte	0x5
	.byte	0x3
	.long	call_suffix.8610
	.byte	0x0
	.uleb128 0x23
	.long	0x2906
	.string	"write_subroutine"
	.byte	0x1
	.value	0x90c
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x90a
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x90b
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"subfunction"
	.byte	0x1
	.value	0x90d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"s_or_e"
	.byte	0x1
	.value	0x90e
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"extension"
	.byte	0x1
	.value	0x90f
	.long	0x5fe
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x910
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x23
	.long	0x2959
	.string	"write_subroutines"
	.byte	0x1
	.value	0x94f
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0x94d
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x94e
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x950
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x28
	.string	"write_header"
	.byte	0x1
	.value	0x95e
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x1d
	.long	0x2b18
	.string	"make_insn_sequence"
	.byte	0x1
	.value	0x99c
	.byte	0x1
	.long	0x12e3
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x1f
	.string	"insn"
	.byte	0x1
	.value	0x99a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x1
	.value	0x99b
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x99d
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF6
	.byte	0x1
	.value	0x99e
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"truth"
	.byte	0x1
	.value	0x99f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"last"
	.byte	0x1
	.value	0x9a0
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF8
	.byte	0x1
	.value	0x9a1
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.string	"place"
	.byte	0x1
	.value	0x9a1
	.long	0x1731
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF13
	.byte	0x1
	.value	0x9a2
	.long	0x12e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"c_test_pos"
	.byte	0x1
	.value	0x9a3
	.long	0x2b18
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x24
	.long	0x2a88
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x9ae
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x9ae
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.value	0x9b9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2b07
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x9f3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0x2abd
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x9f8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x25
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x20
	.string	"new"
	.byte	0x1
	.value	0xa01
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"clobber_head"
	.byte	0x1
	.value	0xa02
	.long	0x12e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0xa09
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2ec4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8734
	.byte	0x0
	.uleb128 0x10
	.long	0x2b28
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x1
	.byte	0x0
	.uleb128 0x23
	.long	0x2b69
	.string	"process_tree"
	.byte	0x1
	.value	0xa47
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0xa45
	.long	0x16b8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0xa46
	.long	0x15e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	0x2c12
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0xa67
	.byte	0x1
	.long	0x216
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x1f
	.string	"argc"
	.byte	0x1
	.value	0xa65
	.long	0x216
	.byte	0x4
	.byte	0x75
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1f
	.string	"argv"
	.byte	0x1
	.value	0xa66
	.long	0x2c12
	.byte	0x6
	.byte	0x75
	.sleb128 -88
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.string	"desc"
	.byte	0x1
	.value	0xa68
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"recog_tree"
	.byte	0x1
	.value	0xa69
	.long	0x12e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"split_tree"
	.byte	0x1
	.value	0xa69
	.long	0x12e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"peephole2_tree"
	.byte	0x1
	.value	0xa69
	.long	0x12e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"h"
	.byte	0x1
	.value	0xa69
	.long	0x12e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fa
	.uleb128 0x29
	.long	0x2c50
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0xaa8
	.byte	0x1
	.long	0x203
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x1
	.value	0xaa7
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x2d01
	.string	"record_insn_name"
	.byte	0x1
	.value	0xab3
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x1
	.value	0xab1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"name"
	.byte	0x1
	.value	0xab2
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"new"
	.byte	0x1
	.value	0xab6
	.long	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	0x2cc6
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x20
	.string	"new_size"
	.byte	0x1
	.value	0xaba
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.string	"last_real_name"
	.byte	0x1
	.value	0xab4
	.long	0x203
	.byte	0x5
	.byte	0x3
	.long	last_real_name.8953
	.uleb128 0x20
	.string	"last_real_code"
	.byte	0x1
	.value	0xab5
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	last_real_code.8954
	.byte	0x0
	.uleb128 0x23
	.long	0x2d64
	.string	"debug_decision_2"
	.byte	0x1
	.value	0xad4
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0xad3
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	0x2d53
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x20
	.string	"sub"
	.byte	0x1
	.value	0xafa
	.long	0x60e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x22
	.long	.LASF10
	.long	0x2eaf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9018
	.byte	0x0
	.uleb128 0x23
	.long	0x2dc3
	.string	"debug_decision_1"
	.byte	0x1
	.value	0xb11
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0xb0f
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0xb10
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0xb12
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF8
	.byte	0x1
	.value	0xb13
	.long	0x15dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x2e34
	.string	"debug_decision_0"
	.byte	0x1
	.value	0xb34
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0xb32
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0xb33
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"maxdepth"
	.byte	0x1
	.value	0xb33
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.value	0xb35
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0xb36
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x2e67
	.byte	0x1
	.string	"debug_decision"
	.byte	0x1
	.value	0xb4a
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0xb49
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2e9f
	.byte	0x1
	.string	"debug_decision_list"
	.byte	0x1
	.value	0xb51
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0xb50
	.long	0x13c9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.long	0x2eaf
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x2e9f
	.uleb128 0x10
	.long	0x2ec4
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x12
	.byte	0x0
	.uleb128 0x9
	.long	0x2eb4
	.uleb128 0x10
	.long	0x2ed9
	.long	0x203
	.uleb128 0x11
	.long	0x224
	.byte	0x2
	.byte	0x0
	.uleb128 0x9
	.long	0x2ec9
	.uleb128 0x10
	.long	0x2eee
	.long	0x203
	.uleb128 0x11
	.long	0x224
	.byte	0x2
	.byte	0x0
	.uleb128 0x9
	.long	0x2ede
	.uleb128 0x9
	.long	0x2e9f
	.uleb128 0x10
	.long	0x2f08
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x2ef8
	.uleb128 0x10
	.long	0x2f1d
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0xa
	.byte	0x0
	.uleb128 0x9
	.long	0x2f0d
	.uleb128 0x9
	.long	0x2ef8
	.uleb128 0x10
	.long	0x2f37
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x2f27
	.uleb128 0x10
	.long	0x2f4c
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x2f3c
	.uleb128 0x10
	.long	0x2f61
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x2f51
	.uleb128 0x9
	.long	0x2f51
	.uleb128 0x9
	.long	0x2e9f
	.uleb128 0x10
	.long	0x2f80
	.long	0x20e
	.uleb128 0x11
	.long	0x224
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x2f70
	.uleb128 0x9
	.long	0x2ef8
	.uleb128 0x2b
	.string	"insn_name_ptr"
	.byte	0x1
	.byte	0x46
	.long	0x2c12
	.byte	0x5
	.byte	0x3
	.long	insn_name_ptr
	.uleb128 0x2b
	.string	"insn_name_ptr_size"
	.byte	0x1
	.byte	0x47
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	insn_name_ptr_size
	.uleb128 0x2b
	.string	"next_subroutine_number"
	.byte	0x1
	.byte	0x94
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	next_subroutine_number
	.uleb128 0x2b
	.string	"next_number"
	.byte	0x1
	.byte	0xa2
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	next_number
	.uleb128 0x2b
	.string	"next_insn_code"
	.byte	0x1
	.byte	0xa6
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	next_insn_code
	.uleb128 0x2b
	.string	"next_index"
	.byte	0x1
	.byte	0xab
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	next_index
	.uleb128 0x2b
	.string	"max_depth"
	.byte	0x1
	.byte	0xb0
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	max_depth
	.uleb128 0x2b
	.string	"pattern_lineno"
	.byte	0x1
	.byte	0xb3
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	pattern_lineno
	.uleb128 0x2b
	.string	"error_count"
	.byte	0x1
	.byte	0xb6
	.long	0x216
	.byte	0x5
	.byte	0x3
	.long	error_count
	.uleb128 0x10
	.long	0x3092
	.long	0x1615
	.uleb128 0x11
	.long	0x224
	.byte	0x29
	.byte	0x0
	.uleb128 0x2b
	.string	"preds"
	.byte	0x1
	.byte	0xc2
	.long	0x30a5
	.byte	0x5
	.byte	0x3
	.long	preds
	.uleb128 0x9
	.long	0x3082
	.uleb128 0x10
	.long	0x30ba
	.long	0x203
	.uleb128 0x11
	.long	0x224
	.byte	0x1
	.byte	0x0
	.uleb128 0x2b
	.string	"special_mode_pred_table"
	.byte	0x1
	.byte	0xe2
	.long	0x30df
	.byte	0x5
	.byte	0x3
	.long	special_mode_pred_table
	.uleb128 0x9
	.long	0x30aa
	.uleb128 0x2c
	.string	"stdout"
	.byte	0x6
	.byte	0x8f
	.long	0x5d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"stderr"
	.byte	0x6
	.byte	0x90
	.long	0x5d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x3114
	.long	0x24a
	.uleb128 0x11
	.long	0x224
	.byte	0xff
	.byte	0x0
	.uleb128 0x2c
	.string	"_sch_istable"
	.byte	0x9
	.byte	0x48
	.long	0x312a
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3104
	.uleb128 0x10
	.long	0x313f
	.long	0x239
	.uleb128 0x11
	.long	0x224
	.byte	0xff
	.byte	0x0
	.uleb128 0x2c
	.string	"_sch_toupper"
	.byte	0x9
	.byte	0x61
	.long	0x3155
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x312f
	.uleb128 0x10
	.long	0x316a
	.long	0x203
	.uleb128 0x11
	.long	0x224
	.byte	0x35
	.byte	0x0
	.uleb128 0x2c
	.string	"mode_name"
	.byte	0x2
	.byte	0x29
	.long	0x317d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x315a
	.uleb128 0x10
	.long	0x3192
	.long	0x239
	.uleb128 0x11
	.long	0x224
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2c
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x31a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3182
	.uleb128 0x10
	.long	0x31bb
	.long	0x203
	.uleb128 0x11
	.long	0x224
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2c
	.string	"rtx_name"
	.byte	0x3
	.byte	0x3f
	.long	0x31cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x31ab
	.uleb128 0x2c
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x31e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x31ab
	.uleb128 0x2c
	.string	"progname"
	.byte	0xa
	.byte	0x29
	.long	0x203
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x17
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.long	0x54
	.value	0x2
	.long	.Ldebug_info0
	.long	0x31fe
	.long	0x2b69
	.string	"main"
	.long	0x2c18
	.string	"get_insn_name"
	.long	0x2e34
	.string	"debug_decision"
	.long	0x2e67
	.string	"debug_decision_list"
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
.LASF4:
	.string	"afterward"
.LASF8:
	.string	"test"
.LASF15:
	.string	"subroutine_type"
.LASF3:
	.string	"mem_attrs"
.LASF14:
	.string	"indent"
.LASF0:
	.string	"code"
.LASF16:
	.string	"uncond"
.LASF6:
	.string	"c_test"
.LASF7:
	.string	"type"
.LASF9:
	.string	"pattern"
.LASF10:
	.string	"__FUNCTION__"
.LASF12:
	.string	"depth"
.LASF5:
	.string	"position"
.LASF2:
	.string	"_IO_FILE"
.LASF11:
	.string	"pred_name"
.LASF13:
	.string	"head"
.LASF1:
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
