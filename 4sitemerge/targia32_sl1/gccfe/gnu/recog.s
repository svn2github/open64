	.file	"recog.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_recog_no_volatile
	.type	init_recog_no_volatile, @function
init_recog_no_volatile:
.LFB15:
	.file 1 "../../../kgccfe/gnu/recog.c"
	.loc 1 105 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 106 0
	movl	volatile_ok@GOT(%ecx), %eax
	movl	$0, (%eax)
	.loc 1 107 0
	popl	%ebp
	ret
.LFE15:
	.size	init_recog_no_volatile, .-init_recog_no_volatile
.globl init_recog
	.type	init_recog, @function
init_recog:
.LFB16:
	.loc 1 111 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 112 0
	movl	volatile_ok@GOT(%ecx), %eax
	movl	$1, (%eax)
	.loc 1 113 0
	popl	%ebp
	ret
.LFE16:
	.size	init_recog, .-init_recog
.globl recog_memoized_1
	.type	recog_memoized_1, @function
recog_memoized_1:
.LFB17:
	.loc 1 127 0
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
	.loc 1 128 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jns	.L6
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	recog@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
.L6:
	.loc 1 130 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	.loc 1 131 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	recog_memoized_1, .-recog_memoized_1
.globl check_asm_operands
	.type	check_asm_operands, @function
check_asm_operands:
.LFB18:
	.loc 1 139 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$68, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 139 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 146 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 149 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	make_insn_raw@PLT
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 150 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	.loc 1 151 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -52(%ebp)
	jmp	.L12
.L10:
	.loc 1 154 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	movl	%eax, -28(%ebp)
	.loc 1 155 0
	cmpl	$0, -28(%ebp)
	jns	.L13
	.loc 1 156 0
	movl	$0, -52(%ebp)
	jmp	.L12
.L13:
	.loc 1 157 0
	cmpl	$0, -28(%ebp)
	jne	.L15
	.loc 1 158 0
	movl	$1, -52(%ebp)
	jmp	.L12
.L15:
	.loc 1 160 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 161 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 163 0
	movl	$0, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_asm_operands@PLT
	.loc 1 165 0
	movl	$0, -16(%ebp)
	jmp	.L17
.L18:
.LBB2:
	.loc 1 167 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 168 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L19
	.loc 1 169 0
	addl	$1, -12(%ebp)
.L19:
	.loc 1 170 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L21
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L21
	.loc 1 171 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	subl	$192, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L21:
	.loc 1 173 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	asm_operand_ok@PLT
	testl	%eax, %eax
	jne	.L24
	.loc 1 174 0
	movl	$0, -52(%ebp)
	jmp	.L12
.L24:
.LBE2:
	.loc 1 165 0
	addl	$1, -16(%ebp)
.L17:
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L18
	.loc 1 177 0
	movl	$1, -52(%ebp)
.L12:
	movl	-52(%ebp), %eax
	.loc 1 178 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L28
	call	__stack_chk_fail_local
.L28:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE18:
	.size	check_asm_operands, .-check_asm_operands
	.local	num_changes
	.comm	num_changes,4,4
	.section	.rodata
	.type	__FUNCTION__.11320, @object
	.size	__FUNCTION__.11320, 16
__FUNCTION__.11320:
	.string	"validate_change"
.LC0:
	.string	"../../../kgccfe/gnu/recog.c"
	.text
.globl validate_change
	.type	validate_change, @function
validate_change:
.LFB19:
	.loc 1 219 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$36, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 220 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 222 0
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L30
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L32
.L30:
	.loc 1 223 0
	movl	$1, -24(%ebp)
	jmp	.L33
.L32:
	.loc 1 225 0
	cmpl	$0, 20(%ebp)
	jne	.L34
	movl	num_changes@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L34
	.loc 1 226 0
	leal	__FUNCTION__.11320@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$226, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L34:
	.loc 1 228 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 231 0
	movl	num_changes@GOTOFF(%ebx), %edx
	movl	changes_allocated@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L37
	.loc 1 233 0
	movl	changes_allocated@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L39
	.loc 1 236 0
	movl	$150, changes_allocated@GOTOFF(%ebx)
	jmp	.L41
.L39:
	.loc 1 238 0
	movl	changes_allocated@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, changes_allocated@GOTOFF(%ebx)
.L41:
	.loc 1 240 0
	movl	changes_allocated@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	changes@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, changes@GOTOFF(%ebx)
.L37:
	.loc 1 245 0
	movl	num_changes@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 246 0
	movl	num_changes@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 247 0
	movl	num_changes@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 249 0
	cmpl	$0, 8(%ebp)
	je	.L42
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L42
	.loc 1 253 0
	movl	num_changes@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	$-1, 52(%eax)
.L42:
	.loc 1 257 0
	movl	num_changes@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_changes@GOTOFF(%ebx)
	.loc 1 262 0
	cmpl	$0, 20(%ebp)
	je	.L45
	.loc 1 263 0
	movl	$1, -24(%ebp)
	jmp	.L33
.L45:
	.loc 1 265 0
	call	apply_change_group@PLT
	movl	%eax, -24(%ebp)
.L33:
	movl	-24(%ebp), %eax
	.loc 1 266 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	validate_change, .-validate_change
.globl insn_invalid_p
	.type	insn_invalid_p, @function
insn_invalid_p:
.LFB20:
	.loc 1 274 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$68, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 275 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 276 0
	movl	$0, -24(%ebp)
	.loc 1 282 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L49
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L49
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L49
	leal	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L53
.L49:
	movl	$0, -48(%ebp)
.L53:
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	recog@PLT
	movl	%eax, -16(%ebp)
	.loc 1 283 0
	cmpl	$0, -16(%ebp)
	jns	.L54
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L54
	movl	$1, -44(%ebp)
	jmp	.L57
.L54:
	movl	$0, -44(%ebp)
.L57:
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 288 0
	cmpl	$0, -12(%ebp)
	je	.L58
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	check_asm_operands@PLT
	testl	%eax, %eax
	je	.L60
.L58:
	cmpl	$0, -12(%ebp)
	jne	.L61
	cmpl	$0, -16(%ebp)
	jns	.L61
.L60:
	.loc 1 290 0
	movl	$1, -40(%ebp)
	jmp	.L63
.L61:
	.loc 1 295 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	jle	.L64
.LBB3:
	.loc 1 299 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	added_clobbers_hard_reg_p@PLT
	testl	%eax, %eax
	je	.L66
	.loc 1 300 0
	movl	$1, -40(%ebp)
	jmp	.L63
.L66:
	.loc 1 302 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, -8(%ebp)
	.loc 1 303 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 304 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_clobbers@PLT
	.loc 1 305 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 44(%edx)
.L64:
.LBE3:
	.loc 1 309 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L68
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 313 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L68
	.loc 1 314 0
	movl	$1, -40(%ebp)
	jmp	.L63
.L68:
	.loc 1 317 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 318 0
	movl	$0, -40(%ebp)
.L63:
	movl	-40(%ebp), %eax
	.loc 1 319 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	insn_invalid_p, .-insn_invalid_p
.globl num_changes_pending
	.type	num_changes_pending, @function
num_changes_pending:
.LFB21:
	.loc 1 324 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 325 0
	movl	num_changes@GOTOFF(%ecx), %eax
	.loc 1 326 0
	popl	%ebp
	ret
.LFE21:
	.size	num_changes_pending, .-num_changes_pending
.globl apply_change_group
	.type	apply_change_group, @function
apply_change_group:
.LFB22:
	.loc 1 333 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%esi
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$64, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 335 0
	movl	$0, -32(%ebp)
	.loc 1 346 0
	movl	$0, -36(%ebp)
	jmp	.L75
.L76:
.LBB4:
	.loc 1 348 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 352 0
	cmpl	$0, -28(%ebp)
	je	.L77
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L77
	.loc 1 355 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L80
	.loc 1 357 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	testl	%eax, %eax
	je	.L82
	.loc 1 358 0
	jmp	.L84
.L80:
	.loc 1 360 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_invalid_p@PLT
	testl	%eax, %eax
	je	.L84
.LBB5:
	.loc 1 362 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 369 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L86
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L86
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jns	.L86
.LBB6:
	.loc 1 375 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L90
	.loc 1 376 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L92
.L90:
.LBB7:
	.loc 1 381 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$49, (%esp)
	call	gen_rtx_fmt_E@PLT
	movl	%eax, -20(%ebp)
	.loc 1 384 0
	movl	$0, -16(%ebp)
	jmp	.L93
.L94:
	.loc 1 385 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %esi
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esi,%ecx,4)
	.loc 1 384 0
	addl	$1, -16(%ebp)
.L93:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L94
.L92:
.LBE7:
	.loc 1 397 0
	movl	-28(%ebp), %eax
	addl	$44, %eax
	movl	$1, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 398 0
	jmp	.L77
.L86:
.LBE6:
	.loc 1 400 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L77
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L77
	jmp	.L82
.L84:
.LBE5:
	.loc 1 407 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L77:
.LBE4:
	.loc 1 346 0
	addl	$1, -36(%ebp)
.L75:
	movl	num_changes@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jl	.L76
.L82:
	.loc 1 410 0
	movl	num_changes@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L96
.LBB8:
	.loc 1 414 0
	movl	$0, -36(%ebp)
	jmp	.L98
.L99:
	.loc 1 415 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L100
	movl	-36(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L100
	movl	-36(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L100
	.loc 1 418 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 76(%eax)
.L100:
	.loc 1 414 0
	addl	$1, -36(%ebp)
.L98:
	movl	num_changes@GOTOFF(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jl	.L99
	.loc 1 420 0
	movl	$0, num_changes@GOTOFF(%ebx)
	.loc 1 421 0
	movl	$1, -44(%ebp)
	jmp	.L105
.L96:
.LBE8:
	.loc 1 425 0
	movl	$0, (%esp)
	call	cancel_changes@PLT
	.loc 1 426 0
	movl	$0, -44(%ebp)
.L105:
	movl	-44(%ebp), %eax
	.loc 1 428 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	apply_change_group, .-apply_change_group
.globl num_validated_changes
	.type	num_validated_changes, @function
num_validated_changes:
.LFB23:
	.loc 1 434 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 435 0
	movl	num_changes@GOTOFF(%ecx), %eax
	.loc 1 436 0
	popl	%ebp
	ret
.LFE23:
	.size	num_validated_changes, .-num_validated_changes
.globl cancel_changes
	.type	cancel_changes, @function
cancel_changes:
.LFB24:
	.loc 1 443 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$16, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 448 0
	movl	num_changes@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L110
.L111:
	.loc 1 450 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %ecx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 451 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L112
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L112
	.loc 1 452 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	changes@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 52(%ecx)
.L112:
	.loc 1 448 0
	subl	$1, -8(%ebp)
.L110:
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jge	.L111
	.loc 1 454 0
	movl	8(%ebp), %eax
	movl	%eax, num_changes@GOTOFF(%ebx)
	.loc 1 455 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	cancel_changes, .-cancel_changes
	.type	validate_replace_rtx_1, @function
validate_replace_rtx_1:
.LFB25:
	.loc 1 464 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$112, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 467 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 469 0
	movl	$0, -48(%ebp)
	.loc 1 470 0
	movl	num_changes@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 473 0
	cmpl	$0, -56(%ebp)
	je	.L188
	.loc 1 476 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
	.loc 1 477 0
	movl	-52(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 478 0
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L120
	.loc 1 479 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
.L120:
	.loc 1 485 0
	movl	-56(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L122
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L124
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L124
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L124
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L122
.L124:
	movl	-56(%ebp), %eax
	movzwl	(%eax), %edx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L128
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L128
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L128
.L122:
	.loc 1 492 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 493 0
	jmp	.L188
.L128:
	.loc 1 498 0
	movl	-52(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -68(%ebp)
	jmp	.L131
.L132:
	.loc 1 500 0
	movl	-68(%ebp), %eax
	addl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L133
	.loc 1 501 0
	movl	-68(%ebp), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	leal	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx_1
	jmp	.L135
.L133:
	.loc 1 502 0
	movl	-68(%ebp), %eax
	addl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L135
	.loc 1 503 0
	movl	-68(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -64(%ebp)
	jmp	.L137
.L138:
	.loc 1 504 0
	movl	-68(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx_1
	.loc 1 503 0
	subl	$1, -64(%ebp)
.L137:
	cmpl	$0, -64(%ebp)
	jns	.L138
.L135:
	.loc 1 498 0
	subl	$1, -68(%ebp)
.L131:
	cmpl	$0, -68(%ebp)
	jns	.L132
	.loc 1 508 0
	movl	num_changes@GOTOFF(%ebx), %eax
	cmpl	-44(%ebp), %eax
	je	.L188
	.loc 1 513 0
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L141
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L141
	.loc 1 514 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
.L141:
	.loc 1 519 0
	movl	-52(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L144
	movl	-52(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$99, %al
	jne	.L146
.L144:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	swap_commutative_operands_p@PLT
	testl	%eax, %eax
	je	.L146
	.loc 1 522 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	movl	-52(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L148
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, -76(%ebp)
	jmp	.L150
.L148:
	movl	-52(%ebp), %eax
	movl	%eax, -76(%ebp)
.L150:
	movl	-88(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-84(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 527 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 528 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -52(%ebp)
.L146:
	.loc 1 531 0
	movl	-52(%ebp), %ecx
	subl	$73, %ecx
	movl	%ecx, -92(%ebp)
	cmpl	$70, -92(%ebp)
	ja	.L188
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L156@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L156:
	.long	.L151@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L152@GOTOFF
	.long	.L153@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L154@GOTOFF
	.long	.L154@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L155@GOTOFF
	.long	.L155@GOTOFF
	.text
.L152:
	.loc 1 538 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L188
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L188
	.loc 1 539 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 542 0
	jmp	.L188
.L153:
	.loc 1 544 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L160
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L188
.L160:
	.loc 1 546 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$87, (%esp)
	call	simplify_gen_unary@PLT
	movl	%eax, %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	simplify_gen_binary@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 552 0
	jmp	.L188
.L154:
	.loc 1 555 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L188
	.loc 1 557 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_gen_unary@PLT
	movl	%eax, -40(%ebp)
	.loc 1 561 0
	cmpl	$0, -40(%ebp)
	jne	.L165
	.loc 1 562 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -40(%ebp)
.L165:
	.loc 1 563 0
	movl	$1, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 565 0
	jmp	.L188
.L151:
	.loc 1 568 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %esi
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	%ecx, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -40(%ebp)
	.loc 1 572 0
	cmpl	$0, -40(%ebp)
	jne	.L167
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L167
	.loc 1 573 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -40(%ebp)
.L167:
	.loc 1 574 0
	cmpl	$0, -40(%ebp)
	je	.L188
	.loc 1 575 0
	movl	$1, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 576 0
	jmp	.L188
.L155:
	.loc 1 584 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L188
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L188
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L188
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	mode_dependent_address_p@PLT
	testl	%eax, %eax
	jne	.L188
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L188
.LBB9:
	.loc 1 590 0
	movl	$0, -36(%ebp)
	.loc 1 591 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 592 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 594 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L177
.LBB10:
	.loc 1 597 0
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -24(%ebp)
	.loc 1 598 0
	cmpl	$54, -24(%ebp)
	je	.L181
	.loc 1 599 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L181
.L177:
.LBE10:
	.loc 1 601 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	jne	.L181
.LBB11:
	.loc 1 604 0
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	mode_for_extraction@PLT
	movl	%eax, -20(%ebp)
	.loc 1 605 0
	cmpl	$54, -20(%ebp)
	je	.L181
	.loc 1 606 0
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
.L181:
.LBE11:
	.loc 1 610 0
	cmpl	$0, -36(%ebp)
	je	.L188
	movl	-36(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L188
.LBB12:
	.loc 1 613 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -16(%ebp)
	.loc 1 618 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L186
	.loc 1 619 0
	movl	-32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	-36(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	-16(%ebp), %eax
	movl	%eax, -16(%ebp)
.L186:
	.loc 1 623 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, -28(%ebp)
	.loc 1 625 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %esi
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, -12(%ebp)
	.loc 1 627 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	-56(%ebp), %edx
	addl	$20, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 628 0
	movl	-56(%ebp), %edx
	addl	$4, %edx
	movl	$1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L188:
.LBE12:
.LBE9:
	.loc 1 637 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	validate_replace_rtx_1, .-validate_replace_rtx_1
.globl validate_replace_rtx_subexp
	.type	validate_replace_rtx_subexp, @function
validate_replace_rtx_subexp:
.LFB26:
	.loc 1 646 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$20, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 647 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx_1
	.loc 1 648 0
	call	apply_change_group@PLT
	.loc 1 649 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	validate_replace_rtx_subexp, .-validate_replace_rtx_subexp
.globl validate_replace_rtx
	.type	validate_replace_rtx, @function
validate_replace_rtx:
.LFB27:
	.loc 1 657 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$20, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 658 0
	movl	16(%ebp), %edx
	addl	$44, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx_1
	.loc 1 659 0
	call	apply_change_group@PLT
	.loc 1 660 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	validate_replace_rtx, .-validate_replace_rtx
.globl validate_replace_rtx_group
	.type	validate_replace_rtx_group, @function
validate_replace_rtx_group:
.LFB28:
	.loc 1 667 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$24, %esp
.LCFI48:
	.loc 1 668 0
	movl	16(%ebp), %edx
	addl	$44, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_rtx_1
	.loc 1 669 0
	leave
	ret
.LFE28:
	.size	validate_replace_rtx_group, .-validate_replace_rtx_group
	.type	validate_replace_src_1, @function
validate_replace_src_1:
.LFB29:
	.loc 1 683 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	subl	$40, %esp
.LCFI51:
	.loc 1 685 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 687 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_rtx_1
	.loc 1 688 0
	leave
	ret
.LFE29:
	.size	validate_replace_src_1, .-validate_replace_src_1
.globl validate_replace_src_group
	.type	validate_replace_src_group, @function
validate_replace_src_group:
.LFB30:
	.loc 1 696 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$36, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 699 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 700 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 701 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 702 0
	movl	16(%ebp), %edx
	addl	$44, %edx
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	validate_replace_src_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_uses@PLT
	.loc 1 703 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	validate_replace_src_group, .-validate_replace_src_group
.globl validate_replace_src
	.type	validate_replace_src, @function
validate_replace_src:
.LFB31:
	.loc 1 710 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$20, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 711 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_replace_src_group@PLT
	.loc 1 712 0
	call	apply_change_group@PLT
	.loc 1 713 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	validate_replace_src, .-validate_replace_src
	.type	find_single_use_1, @function
find_single_use_1:
.LFB32:
	.loc 1 774 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$88, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 775 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 776 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 777 0
	movl	$0, -24(%ebp)
	.loc 1 782 0
	movl	-28(%ebp), %eax
	subl	$57, %eax
	movl	%eax, -80(%ebp)
	cmpl	$21, -80(%ebp)
	ja	.L202
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-80(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -84(%ebp)
	movl	-84(%ebp), %eax
	andl	$3148676, %eax
	testl	%eax, %eax
	jne	.L204
	movl	-84(%ebp), %eax
	andl	$589824, %eax
	testl	%eax, %eax
	jne	.L205
	movl	-84(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L203
	jmp	.L202
.L204:
	.loc 1 791 0
	movl	$0, -76(%ebp)
	jmp	.L206
.L203:
	.loc 1 798 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$79, %ax
	je	.L207
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L207
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L207
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L202
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L202
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L213
	movl	$7, -68(%ebp)
	jmp	.L215
.L213:
	movl	$3, -68(%ebp)
.L215:
	movl	-72(%ebp), %ecx
	addl	-68(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L216
	movl	$8, -60(%ebp)
	jmp	.L218
.L216:
	movl	$4, -60(%ebp)
.L218:
	movl	-64(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-60(%ebp)
	movl	%eax, -56(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L219
	movl	$7, -48(%ebp)
	jmp	.L221
.L219:
	movl	$3, -48(%ebp)
.L221:
	movl	-52(%ebp), %eax
	addl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L222
	movl	$8, -40(%ebp)
	jmp	.L224
.L222:
	movl	$4, -40(%ebp)
.L224:
	movl	-44(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-40(%ebp)
	cmpl	%eax, -56(%ebp)
	jne	.L202
.L207:
	.loc 1 809 0
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_1
	movl	%eax, -76(%ebp)
	jmp	.L206
.L205:
	.loc 1 813 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_1
	movl	%eax, -76(%ebp)
	jmp	.L206
.L202:
	.loc 1 822 0
	movl	-28(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 823 0
	movl	-28(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L225
.L226:
	.loc 1 825 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L227
	.loc 1 827 0
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	cmpl	8(%ebp), %eax
	je	.L229
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L231
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L231
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L231
.L229:
	.loc 1 830 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 827 0
	jmp	.L234
.L231:
	.loc 1 832 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_1
	movl	%eax, -20(%ebp)
.L234:
	.loc 1 834 0
	cmpl	$0, -24(%ebp)
	jne	.L235
	.loc 1 835 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L239
.L235:
	.loc 1 836 0
	cmpl	$0, -20(%ebp)
	je	.L239
	.loc 1 838 0
	movl	$0, -76(%ebp)
	jmp	.L206
.L227:
	.loc 1 840 0
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L239
.LBB13:
	.loc 1 844 0
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L241
.L242:
	.loc 1 846 0
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	cmpl	8(%ebp), %eax
	je	.L243
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L245
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L245
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L245
.L243:
	.loc 1 850 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 846 0
	jmp	.L248
.L245:
	.loc 1 852 0
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_1
	movl	%eax, -20(%ebp)
.L248:
	.loc 1 854 0
	cmpl	$0, -24(%ebp)
	jne	.L249
	.loc 1 855 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L251
.L249:
	.loc 1 856 0
	cmpl	$0, -20(%ebp)
	je	.L251
	.loc 1 857 0
	movl	$0, -76(%ebp)
	jmp	.L206
.L251:
	.loc 1 844 0
	subl	$1, -8(%ebp)
.L241:
	cmpl	$0, -8(%ebp)
	jns	.L242
.L239:
.LBE13:
	.loc 1 823 0
	subl	$1, -16(%ebp)
.L225:
	cmpl	$0, -16(%ebp)
	jns	.L226
	.loc 1 862 0
	movl	-24(%ebp), %edx
	movl	%edx, -76(%ebp)
.L206:
	movl	-76(%ebp), %eax
	.loc 1 863 0
	addl	$88, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	find_single_use_1, .-find_single_use_1
.globl find_single_use
	.type	find_single_use, @function
find_single_use:
.LFB33:
	.loc 1 888 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$36, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 908 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L256
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L256
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L259
.L256:
	.loc 1 909 0
	movl	$0, -24(%ebp)
	jmp	.L260
.L259:
	.loc 1 911 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 912 0
	jmp	.L261
.L262:
	.loc 1 914 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L263
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_set_p@PLT
	testl	%eax, %eax
	je	.L263
	.loc 1 916 0
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L266
.L267:
	.loc 1 917 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L268
	.loc 1 916 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L266:
	cmpl	$0, -8(%ebp)
	jne	.L267
.L268:
	.loc 1 920 0
	cmpl	$0, -8(%ebp)
	je	.L263
	.loc 1 922 0
	movl	-16(%ebp), %eax
	addl	$44, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_single_use_1
	movl	%eax, -12(%ebp)
	.loc 1 923 0
	cmpl	$0, 16(%ebp)
	je	.L271
	.loc 1 924 0
	movl	16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L271:
	.loc 1 925 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L260
.L263:
	.loc 1 913 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
.L261:
	.loc 1 912 0
	cmpl	$0, -16(%ebp)
	je	.L273
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L262
.L273:
	.loc 1 929 0
	movl	$0, -24(%ebp)
.L260:
	movl	-24(%ebp), %eax
	.loc 1 930 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	find_single_use, .-find_single_use
.globl general_operand
	.type	general_operand, @function
general_operand:
.LFB34:
	.loc 1 953 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%edi
.LCFI70:
	pushl	%esi
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$44, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 954 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 956 0
	cmpl	$0, 12(%ebp)
	jne	.L277
	.loc 1 957 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
.L277:
	.loc 1 961 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L279
	cmpl	$0, 12(%ebp)
	je	.L279
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L279
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L279
	.loc 1 964 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L279:
	.loc 1 966 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L285
	cmpl	$0, 12(%ebp)
	je	.L285
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L285
	.loc 1 969 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L285:
	.loc 1 971 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L289
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L297
.L289:
	.loc 1 972 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L298
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L298
	cmpl	$0, 12(%ebp)
	jne	.L301
.L298:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L302
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L301
.L302:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L304
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L301
.L304:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L306
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L306
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L301
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L301
.L306:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L310
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	je	.L301
.L310:
	movl	$1, -36(%ebp)
	jmp	.L312
.L301:
	movl	$0, -36(%ebp)
.L312:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L284
.L297:
	.loc 1 982 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L313
	.loc 1 983 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L313:
	.loc 1 985 0
	cmpl	$73, -24(%ebp)
	jne	.L315
.LBB14:
	.loc 1 987 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 992 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L317
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L317
	.loc 1 994 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L317:
	.loc 1 1002 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L320
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L320
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L320
	.loc 1 1004 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L320:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L324
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L324
	.loc 1 1010 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L324:
	.loc 1 1012 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
.L315:
.LBE14:
	.loc 1 1016 0
	cmpl	$71, -24(%ebp)
	jne	.L327
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L329
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L331
.L329:
	movl	$1, -32(%ebp)
	jmp	.L332
.L331:
	movl	$0, -32(%ebp)
.L332:
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L284
.L327:
	.loc 1 1021 0
	cmpl	$76, -24(%ebp)
	jne	.L333
.LBB15:
	.loc 1 1023 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1025 0
	movl	volatile_ok@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L335
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L335
	.loc 1 1026 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L335:
	.loc 1 1028 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L338
	.loc 1 1029 0
	movl	$1, -40(%ebp)
	jmp	.L284
.L338:
	.loc 1 1032 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
	.loc 1 1033 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_legitimate_address_p@PLT
	testl	%eax, %eax
	jne	.L340
.L333:
.LBE15:
	.loc 1 1038 0
	cmpl	$80, -24(%ebp)
	jne	.L341
	.loc 1 1039 0
	movl	$1, -40(%ebp)
	jmp	.L284
.L341:
	.loc 1 1041 0
	movl	$0, -40(%ebp)
	jmp	.L284
.L340:
	.loc 1 1044 0
	movl	$1, -40(%ebp)
.L284:
	movl	-40(%ebp), %eax
	.loc 1 1045 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	general_operand, .-general_operand
.globl address_operand
	.type	address_operand, @function
address_operand:
.LFB35:
	.loc 1 1057 0
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
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_address_p@PLT
	.loc 1 1059 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	address_operand, .-address_operand
.globl register_operand
	.type	register_operand, @function
register_operand:
.LFB36:
	.loc 1 1079 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$36, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1080 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L347
	cmpl	$0, 12(%ebp)
	je	.L347
	.loc 1 1081 0
	movl	$0, -28(%ebp)
	jmp	.L350
.L347:
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L351
.LBB16:
	.loc 1 1085 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1093 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L353
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L353
	.loc 1 1094 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	movl	%eax, -28(%ebp)
	jmp	.L350
.L353:
	.loc 1 1097 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L356
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L356
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	mips_cannot_change_mode_class@PLT
	testb	%al, %al
	je	.L356
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L356
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L356
	.loc 1 1102 0
	movl	$0, -28(%ebp)
	jmp	.L350
.L356:
	.loc 1 1107 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L362
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L362
	.loc 1 1109 0
	movl	$0, -28(%ebp)
	jmp	.L350
.L362:
	.loc 1 1111 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L351:
.LBE16:
	.loc 1 1116 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L365
	.loc 1 1117 0
	movl	$1, -28(%ebp)
	jmp	.L350
.L365:
	.loc 1 1121 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L367
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L369
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L367
.L369:
	movl	$1, -24(%ebp)
	jmp	.L371
.L367:
	movl	$0, -24(%ebp)
.L371:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L350:
	movl	-28(%ebp), %eax
	.loc 1 1124 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	register_operand, .-register_operand
.globl pmode_register_operand
	.type	pmode_register_operand, @function
pmode_register_operand:
.LFB37:
	.loc 1 1132 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$20, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1133 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L374
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L374
	movl	$5, -8(%ebp)
	jmp	.L377
.L374:
	movl	$4, -8(%ebp)
.L377:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	.loc 1 1134 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	pmode_register_operand, .-pmode_register_operand
.globl scratch_operand
	.type	scratch_operand, @function
scratch_operand:
.LFB38:
	.loc 1 1143 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	subl	$8, %esp
.LCFI88:
	.loc 1 1144 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L380
	cmpl	$0, 12(%ebp)
	je	.L380
	.loc 1 1145 0
	movl	$0, -8(%ebp)
	jmp	.L383
.L380:
	.loc 1 1147 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L384
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L386
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L386
.L384:
	movl	$1, -4(%ebp)
	jmp	.L388
.L386:
	movl	$0, -4(%ebp)
.L388:
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L383:
	movl	-8(%ebp), %eax
	.loc 1 1150 0
	leave
	ret
.LFE38:
	.size	scratch_operand, .-scratch_operand
.globl immediate_operand
	.type	immediate_operand, @function
immediate_operand:
.LFB39:
	.loc 1 1161 0
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
	subl	$28, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1164 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L391
	cmpl	$0, 12(%ebp)
	je	.L391
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L391
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L391
	.loc 1 1167 0
	movl	$0, -20(%ebp)
	jmp	.L396
.L391:
	.loc 1 1169 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L397
	cmpl	$0, 12(%ebp)
	je	.L397
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L397
	.loc 1 1172 0
	movl	$0, -20(%ebp)
	jmp	.L396
.L397:
	.loc 1 1177 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L401
	.loc 1 1178 0
	movl	$1, -20(%ebp)
	jmp	.L396
.L401:
	.loc 1 1180 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L403
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L411
.L403:
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L412
	cmpl	$0, 12(%ebp)
	je	.L412
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L411
.L412:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L415
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L411
.L415:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L417
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L411
.L417:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L419
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L419
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L411
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L411
.L419:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L423
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	je	.L411
.L423:
	movl	$1, -16(%ebp)
	jmp	.L425
.L411:
	movl	$0, -16(%ebp)
.L425:
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L396:
	movl	-20(%ebp), %eax
	.loc 1 1187 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	immediate_operand, .-immediate_operand
.globl const_int_operand
	.type	const_int_operand, @function
const_int_operand:
.LFB40:
	.loc 1 1195 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%edi
.LCFI97:
	pushl	%esi
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$28, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1196 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L428
	.loc 1 1197 0
	movl	$0, -16(%ebp)
	jmp	.L430
.L428:
	.loc 1 1199 0
	cmpl	$0, 12(%ebp)
	je	.L431
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L431
	.loc 1 1201 0
	movl	$0, -16(%ebp)
	jmp	.L430
.L431:
	.loc 1 1203 0
	movl	$1, -16(%ebp)
.L430:
	movl	-16(%ebp), %eax
	.loc 1 1204 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	const_int_operand, .-const_int_operand
.globl const_double_operand
	.type	const_double_operand, @function
const_double_operand:
.LFB41:
	.loc 1 1213 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	subl	$8, %esp
.LCFI103:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1216 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L436
	cmpl	$0, 12(%ebp)
	je	.L436
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L436
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L436
	.loc 1 1219 0
	movl	$0, -8(%ebp)
	jmp	.L441
.L436:
	.loc 1 1221 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L442
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L444
.L442:
	cmpl	$0, 12(%ebp)
	je	.L445
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L445
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L444
.L445:
	movl	$1, -4(%ebp)
	jmp	.L448
.L444:
	movl	$0, -4(%ebp)
.L448:
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L441:
	movl	-8(%ebp), %eax
	.loc 1 1224 0
	leave
	ret
.LFE41:
	.size	const_double_operand, .-const_double_operand
.globl nonimmediate_operand
	.type	nonimmediate_operand, @function
nonimmediate_operand:
.LFB42:
	.loc 1 1232 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$20, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1233 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L451
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L451
	movl	$1, -8(%ebp)
	jmp	.L461
.L451:
	movl	$0, -8(%ebp)
.L461:
	movl	-8(%ebp), %eax
	.loc 1 1234 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	nonimmediate_operand, .-nonimmediate_operand
.globl nonmemory_operand
	.type	nonmemory_operand, @function
nonmemory_operand:
.LFB43:
	.loc 1 1242 0
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
	subl	$28, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1243 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L464
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L472
.L464:
	.loc 1 1247 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L473
	cmpl	$0, 12(%ebp)
	je	.L473
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L473
	movl	12(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$3, %eax
	je	.L473
	.loc 1 1250 0
	movl	$0, -24(%ebp)
	jmp	.L478
.L473:
	.loc 1 1252 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L479
	cmpl	$0, 12(%ebp)
	je	.L479
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L479
	.loc 1 1255 0
	movl	$0, -24(%ebp)
	jmp	.L478
.L479:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L483
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L483
	cmpl	$0, 12(%ebp)
	jne	.L486
.L483:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L487
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L486
.L487:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L489
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_const_double_ok@PLT
	testl	%eax, %eax
	je	.L486
.L489:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L491
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L491
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L486
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L486
.L491:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L495
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_constant@PLT
	testl	%eax, %eax
	je	.L486
.L495:
	movl	$1, -20(%ebp)
	jmp	.L497
.L486:
	movl	$0, -20(%ebp)
.L497:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L478
.L472:
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L498
	cmpl	$0, 12(%ebp)
	je	.L498
	.loc 1 1266 0
	movl	$0, -24(%ebp)
	jmp	.L478
.L498:
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L501
	.loc 1 1276 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L503
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L503
	.loc 1 1277 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	movl	%eax, -24(%ebp)
	jmp	.L478
.L503:
	.loc 1 1278 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L501:
	.loc 1 1283 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L506
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L508
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L506
.L508:
	movl	$1, -16(%ebp)
	jmp	.L510
.L506:
	movl	$0, -16(%ebp)
.L510:
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L478:
	movl	-24(%ebp), %eax
	.loc 1 1286 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	nonmemory_operand, .-nonmemory_operand
.globl push_operand
	.type	push_operand, @function
push_operand:
.LFB44:
	.loc 1 1298 0
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
	subl	$20, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1299 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1305 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L513
	.loc 1 1306 0
	movl	$0, -32(%ebp)
	jmp	.L515
.L513:
	.loc 1 1308 0
	cmpl	$0, 12(%ebp)
	je	.L516
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L516
	.loc 1 1309 0
	movl	$0, -32(%ebp)
	jmp	.L515
.L516:
	.loc 1 1311 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1313 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-16(%ebp), %eax
	jne	.L519
	.loc 1 1315 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L523
	.loc 1 1316 0
	movl	$0, -32(%ebp)
	jmp	.L515
.L519:
	.loc 1 1320 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$110, %ax
	jne	.L524
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L524
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L524
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L524
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-16(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L523
.L524:
	.loc 1 1330 0
	movl	$0, -32(%ebp)
	jmp	.L515
.L523:
	.loc 1 1333 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
.L515:
	movl	-32(%ebp), %eax
	.loc 1 1334 0
	addl	$20, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	push_operand, .-push_operand
.globl pop_operand
	.type	pop_operand, @function
pop_operand:
.LFB45:
	.loc 1 1346 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	subl	$4, %esp
.LCFI122:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1347 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L531
	.loc 1 1348 0
	movl	$0, -4(%ebp)
	jmp	.L533
.L531:
	.loc 1 1350 0
	cmpl	$0, 12(%ebp)
	je	.L534
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L534
	.loc 1 1351 0
	movl	$0, -4(%ebp)
	jmp	.L533
.L534:
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1355 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$109, %ax
	je	.L537
	.loc 1 1356 0
	movl	$0, -4(%ebp)
	jmp	.L533
.L537:
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ecx), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%ebp)
.L533:
	movl	-4(%ebp), %eax
	.loc 1 1359 0
	leave
	ret
.LFE45:
	.size	pop_operand, .-pop_operand
.globl memory_address_p
	.type	memory_address_p, @function
memory_address_p:
.LFB46:
	.loc 1 1367 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$20, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1368 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$80, %ax
	jne	.L541
	.loc 1 1369 0
	movl	$1, -8(%ebp)
	jmp	.L543
.L541:
	.loc 1 1371 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_legitimate_address_p@PLT
	testl	%eax, %eax
	jne	.L544
	.loc 1 1372 0
	movl	$0, -8(%ebp)
	jmp	.L543
.L544:
	.loc 1 1375 0
	movl	$1, -8(%ebp)
.L543:
	movl	-8(%ebp), %eax
	.loc 1 1376 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	memory_address_p, .-memory_address_p
.globl memory_operand
	.type	memory_operand, @function
memory_operand:
.LFB47:
	.loc 1 1388 0
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
	.loc 1 1391 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L548
	.loc 1 1394 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L550
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L550
	movl	$1, -28(%ebp)
	jmp	.L553
.L550:
	movl	$0, -28(%ebp)
.L553:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L554
.L548:
	.loc 1 1396 0
	cmpl	$0, 12(%ebp)
	je	.L555
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L555
	.loc 1 1397 0
	movl	$0, -32(%ebp)
	jmp	.L554
.L555:
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1400 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L558
	.loc 1 1401 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L558:
	.loc 1 1403 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L560
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L560
	movl	$1, -24(%ebp)
	jmp	.L563
.L560:
	movl	$0, -24(%ebp)
.L563:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L554:
	movl	-32(%ebp), %eax
	.loc 1 1404 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	memory_operand, .-memory_operand
.globl indirect_operand
	.type	indirect_operand, @function
indirect_operand:
.LFB48:
	.loc 1 1413 0
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
	subl	$60, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1415 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L566
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L566
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L566
.LBB17:
	.loc 1 1418 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1419 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1421 0
	cmpl	$0, 12(%ebp)
	je	.L570
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L570
	.loc 1 1422 0
	movl	$0, -52(%ebp)
	jmp	.L573
.L570:
	.loc 1 1429 0
	cmpl	$0, -20(%ebp)
	jne	.L574
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L576
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L576
	movl	$5, -44(%ebp)
	jmp	.L579
.L576:
	movl	$4, -44(%ebp)
.L579:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L580
.L574:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L581
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L581
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-20(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L581
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L585
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L585
	movl	$5, -40(%ebp)
	jmp	.L588
.L585:
	movl	$4, -40(%ebp)
.L588:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L581
.L580:
	movl	$1, -48(%ebp)
	jmp	.L589
.L581:
	movl	$0, -48(%ebp)
.L589:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L573
.L566:
.LBE17:
	.loc 1 1436 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L590
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_operand@PLT
	testl	%eax, %eax
	je	.L590
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L593
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L593
	movl	$5, -32(%ebp)
	jmp	.L596
.L593:
	movl	$4, -32(%ebp)
.L596:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L590
	movl	$1, -36(%ebp)
	jmp	.L598
.L590:
	movl	$0, -36(%ebp)
.L598:
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
.L573:
	movl	-52(%ebp), %eax
	.loc 1 1439 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	indirect_operand, .-indirect_operand
.globl comparison_operator
	.type	comparison_operator, @function
comparison_operator:
.LFB49:
	.loc 1 1448 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	subl	$4, %esp
.LCFI139:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1449 0
	cmpl	$0, 12(%ebp)
	je	.L601
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L603
.L601:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L603
	movl	$1, -4(%ebp)
	jmp	.L605
.L603:
	movl	$0, -4(%ebp)
.L605:
	movl	-4(%ebp), %eax
	.loc 1 1451 0
	leave
	ret
.LFE49:
	.size	comparison_operator, .-comparison_operator
.globl asm_noperands
	.type	asm_noperands, @function
asm_noperands:
.LFB50:
	.loc 1 1460 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	subl	$24, %esp
.LCFI142:
	.loc 1 1461 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	cmpl	$51, -24(%ebp)
	je	.L610
	cmpl	$57, -24(%ebp)
	je	.L611
	cmpl	$49, -24(%ebp)
	je	.L609
	jmp	.L608
.L610:
	.loc 1 1465 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L612
.L611:
	.loc 1 1467 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L613
	.loc 1 1469 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L612
.L613:
	.loc 1 1471 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L609:
	.loc 1 1473 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L615
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L615
.LBB18:
	.loc 1 1482 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L618
.L619:
	.loc 1 1484 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L620
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L622
	.loc 1 1487 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L622:
	.loc 1 1482 0
	subl	$1, -16(%ebp)
.L618:
	cmpl	$0, -16(%ebp)
	jg	.L619
.L620:
	.loc 1 1491 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1496 0
	movl	$0, -16(%ebp)
	jmp	.L624
.L625:
.LBB19:
	.loc 1 1498 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1499 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L626
	.loc 1 1500 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L626:
	.loc 1 1501 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	je	.L628
	.loc 1 1502 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L628:
	.loc 1 1505 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	28(%eax), %eax
	cmpl	%eax, %edx
	je	.L630
	.loc 1 1507 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L630:
.LBE19:
	.loc 1 1496 0
	addl	$1, -16(%ebp)
.L624:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L625
	.loc 1 1509 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -20(%ebp)
	jmp	.L612
.L615:
.LBE18:
	.loc 1 1512 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L633
.LBB20:
	.loc 1 1519 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L635
.L636:
	.loc 1 1520 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L637
	.loc 1 1521 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L637:
	.loc 1 1519 0
	subl	$1, -4(%ebp)
.L635:
	cmpl	$0, -4(%ebp)
	jg	.L636
	.loc 1 1523 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L612
.L633:
.LBE20:
	.loc 1 1526 0
	movl	$-1, -20(%ebp)
	jmp	.L612
.L608:
	.loc 1 1528 0
	movl	$-1, -20(%ebp)
.L612:
	movl	-20(%ebp), %eax
	.loc 1 1530 0
	leave
	ret
.LFE50:
	.size	asm_noperands, .-asm_noperands
.globl decode_asm_operands
	.type	decode_asm_operands, @function
decode_asm_operands:
.LFB51:
	.loc 1 1549 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	subl	$48, %esp
.LCFI145:
	.loc 1 1552 0
	movl	$0, -36(%ebp)
	.loc 1 1554 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L642
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L642
.LBB21:
	.loc 1 1556 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1559 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1561 0
	movl	$1, -44(%ebp)
	jmp	.L645
.L646:
	.loc 1 1563 0
	cmpl	$0, 16(%ebp)
	je	.L647
	.loc 1 1564 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	%eax, (%ecx)
.L647:
	.loc 1 1565 0
	cmpl	$0, 12(%ebp)
	je	.L649
	.loc 1 1566 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%ecx)
.L649:
	.loc 1 1567 0
	cmpl	$0, 20(%ebp)
	je	.L651
	.loc 1 1568 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L651:
	.loc 1 1569 0
	cmpl	$0, 24(%ebp)
	je	.L653
	.loc 1 1570 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	24(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%ecx)
.L653:
	.loc 1 1561 0
	addl	$1, -44(%ebp)
.L645:
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L646
	.loc 1 1575 0
	cmpl	$0, 12(%ebp)
	je	.L656
	.loc 1 1576 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L656:
	.loc 1 1577 0
	cmpl	$0, 16(%ebp)
	je	.L658
	.loc 1 1578 0
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L658:
	.loc 1 1579 0
	cmpl	$0, 20(%ebp)
	je	.L660
	.loc 1 1580 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
.L660:
	.loc 1 1581 0
	cmpl	$0, 24(%ebp)
	je	.L662
	.loc 1 1582 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L662:
	.loc 1 1583 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1554 0
	jmp	.L664
.L642:
.LBE21:
	.loc 1 1585 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L665
.LBB22:
	.loc 1 1587 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1590 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1594 0
	movl	$0, -44(%ebp)
	jmp	.L667
.L668:
	.loc 1 1596 0
	cmpl	$0, 16(%ebp)
	je	.L669
	.loc 1 1597 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%ecx)
.L669:
	.loc 1 1598 0
	cmpl	$0, 12(%ebp)
	je	.L671
	.loc 1 1599 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%ecx)
.L671:
	.loc 1 1600 0
	cmpl	$0, 20(%ebp)
	je	.L673
	.loc 1 1601 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L673:
	.loc 1 1602 0
	cmpl	$0, 24(%ebp)
	je	.L675
	.loc 1 1603 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	24(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%ecx)
.L675:
	.loc 1 1594 0
	addl	$1, -44(%ebp)
.L667:
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L668
	.loc 1 1605 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L664
.L665:
.LBE22:
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L678
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L678
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L678
.LBB23:
	.loc 1 1611 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1612 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1613 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1614 0
	movl	$0, -12(%ebp)
	.loc 1 1620 0
	movl	$0, -44(%ebp)
	jmp	.L682
.L683:
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L684
	.loc 1 1625 0
	cmpl	$0, 12(%ebp)
	je	.L686
	.loc 1 1626 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L686:
	.loc 1 1627 0
	cmpl	$0, 16(%ebp)
	je	.L688
	.loc 1 1628 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	addl	$4, %eax
	movl	%eax, (%ecx)
.L688:
	.loc 1 1629 0
	cmpl	$0, 20(%ebp)
	je	.L690
	.loc 1 1630 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%ecx)
.L690:
	.loc 1 1631 0
	cmpl	$0, 24(%ebp)
	je	.L692
	.loc 1 1632 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	24(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%ecx)
.L692:
	.loc 1 1633 0
	addl	$1, -12(%ebp)
	.loc 1 1620 0
	addl	$1, -44(%ebp)
.L682:
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L683
.L684:
	.loc 1 1636 0
	movl	$0, -44(%ebp)
	jmp	.L694
.L695:
	.loc 1 1638 0
	cmpl	$0, 16(%ebp)
	je	.L696
	.loc 1 1639 0
	movl	-12(%ebp), %eax
	addl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%ecx)
.L696:
	.loc 1 1640 0
	cmpl	$0, 12(%ebp)
	je	.L698
	.loc 1 1641 0
	movl	-12(%ebp), %eax
	addl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%ecx)
.L698:
	.loc 1 1642 0
	cmpl	$0, 20(%ebp)
	je	.L700
	.loc 1 1643 0
	movl	-12(%ebp), %eax
	addl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L700:
	.loc 1 1644 0
	cmpl	$0, 24(%ebp)
	je	.L702
	.loc 1 1645 0
	movl	-12(%ebp), %eax
	addl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	24(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%ecx)
.L702:
	.loc 1 1636 0
	addl	$1, -44(%ebp)
.L694:
	movl	-44(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L695
	.loc 1 1648 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1607 0
	jmp	.L664
.L678:
.LBE23:
	.loc 1 1650 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L664
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L664
.LBB24:
	.loc 1 1655 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1656 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1658 0
	movl	$0, -44(%ebp)
	jmp	.L707
.L708:
	.loc 1 1660 0
	cmpl	$0, 16(%ebp)
	je	.L709
	.loc 1 1661 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	leal	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%ecx)
.L709:
	.loc 1 1662 0
	cmpl	$0, 12(%ebp)
	je	.L711
	.loc 1 1663 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%ecx)
.L711:
	.loc 1 1664 0
	cmpl	$0, 20(%ebp)
	je	.L713
	.loc 1 1665 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%ecx)
.L713:
	.loc 1 1666 0
	cmpl	$0, 24(%ebp)
	je	.L715
	.loc 1 1667 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	24(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%ecx)
.L715:
	.loc 1 1658 0
	addl	$1, -44(%ebp)
.L707:
	movl	-44(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jl	.L708
	.loc 1 1670 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L664:
.LBE24:
	.loc 1 1673 0
	movl	-36(%ebp), %eax
	.loc 1 1674 0
	leave
	ret
.LFE51:
	.size	decode_asm_operands, .-decode_asm_operands
	.section	.rodata
	.type	__FUNCTION__.13288, @object
	.size	__FUNCTION__.13288, 15
__FUNCTION__.13288:
	.string	"asm_operand_ok"
	.text
.globl asm_operand_ok
	.type	asm_operand_ok, @function
asm_operand_ok:
.LFB52:
	.loc 1 1683 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%edi
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$92, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1684 0
	movl	$0, -24(%ebp)
	.loc 1 1687 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L846
	.loc 1 1688 0
	leal	__FUNCTION__.13288@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1688, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L723:
.LBB25:
	.loc 1 1692 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -17(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 1693 0
	movzbl	-17(%ebp), %eax
	subl	$33, %eax
	movl	%eax, -88(%ebp)
	cmpl	$82, -88(%ebp)
	ja	.L724
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L749@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L749:
	.long	.L722@GOTOFF
	.long	.L724@GOTOFF
	.long	.L722@GOTOFF
	.long	.L724@GOTOFF
	.long	.L722@GOTOFF
	.long	.L722@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L722@GOTOFF
	.long	.L722@GOTOFF
	.long	.L722@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L750@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L727@GOTOFF
	.long	.L722@GOTOFF
	.long	.L728@GOTOFF
	.long	.L722@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L729@GOTOFF
	.long	.L729@GOTOFF
	.long	.L730@GOTOFF
	.long	.L722@GOTOFF
	.long	.L732@GOTOFF
	.long	.L733@GOTOFF
	.long	.L734@GOTOFF
	.long	.L735@GOTOFF
	.long	.L736@GOTOFF
	.long	.L737@GOTOFF
	.long	.L738@GOTOFF
	.long	.L739@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L740@GOTOFF
	.long	.L724@GOTOFF
	.long	.L741@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L742@GOTOFF
	.long	.L724@GOTOFF
	.long	.L743@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L724@GOTOFF
	.long	.L740@GOTOFF
	.long	.L744@GOTOFF
	.long	.L745@GOTOFF
	.long	.L746@GOTOFF
	.long	.L724@GOTOFF
	.long	.L747@GOTOFF
	.long	.L748@GOTOFF
	.text
.L751:
	.loc 1 1713 0
	addl	$1, 12(%ebp)
.L750:
	.loc 1 1712 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L751
	.loc 1 1714 0
	movl	$-1, -24(%ebp)
	.loc 1 1715 0
	jmp	.L722
.L746:
	.loc 1 1718 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	address_operand@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 1719 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L740:
	.loc 1 1724 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	memory_operand@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 1725 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L745:
	.loc 1 1729 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_nonstrict_memref_p@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 1730 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L727:
	.loc 1 1741 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L722
	.loc 1 1745 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L728:
	.loc 1 1749 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L722
	.loc 1 1753 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L729:
	.loc 1 1758 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L764
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L722
.L764:
	.loc 1 1761 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L730:
	.loc 1 1765 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	8(%ebp), %eax
	jne	.L722
	.loc 1 1767 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L748:
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L722
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L743
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L722
.L743:
	.loc 1 1783 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L773
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L722
.L773:
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L782
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L722
.L782:
	.loc 1 1788 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L744:
	.loc 1 1792 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L784
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L722
.L784:
	.loc 1 1795 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L732:
	.loc 1 1799 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$32768, %eax
	adcl	$0, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	cmpl	$0, -76(%ebp)
	ja	.L722
	cmpl	$0, -76(%ebp)
	jb	.L791
	cmpl	$65535, -80(%ebp)
	ja	.L722
.L791:
	.loc 1 1801 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L733:
	.loc 1 1804 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L722
	.loc 1 1806 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L734:
	.loc 1 1809 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	cmpl	$0, -68(%ebp)
	ja	.L722
	cmpl	$0, -68(%ebp)
	jb	.L798
	cmpl	$65535, -72(%ebp)
	ja	.L722
.L798:
	.loc 1 1811 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L735:
	.loc 1 1814 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L802
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L722
.L802:
	.loc 1 1816 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L736:
	.loc 1 1819 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-65536, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L808
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L722
.L808:
	.loc 1 1821 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L737:
	.loc 1 1824 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$65535, %eax
	adcl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, -60(%ebp)
	ja	.L722
	cmpl	$0, -60(%ebp)
	jb	.L814
	cmpl	$65534, -64(%ebp)
	ja	.L722
.L814:
	.loc 1 1826 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L738:
	.loc 1 1829 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$16384, %eax
	adcl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	cmpl	$0, -52(%ebp)
	ja	.L722
	cmpl	$0, -52(%ebp)
	jb	.L818
	cmpl	$32767, -56(%ebp)
	ja	.L722
.L818:
	.loc 1 1831 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L739:
	.loc 1 1834 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L722
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L722
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L722
	.loc 1 1836 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L741:
	.loc 1 1840 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L742:
	.loc 1 1843 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 1844 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L724:
	.loc 1 1850 0
	movzbl	-17(%ebp), %eax
	movl	mips_char_to_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L825
.L747:
	.loc 1 1853 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L722
	.loc 1 1855 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L825
	.loc 1 1856 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L825:
	.loc 1 1859 0
	cmpb	$84, -17(%ebp)
	jne	.L828
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	double_memory_operand@PLT
	testl	%eax, %eax
	setne	-42(%ebp)
	jmp	.L830
.L828:
	cmpb	$81, -17(%ebp)
	jne	.L831
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L833
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_gp_offset_p@PLT
	testl	%eax, %eax
	je	.L833
	movl	$1, -40(%ebp)
	jmp	.L836
.L833:
	movl	$0, -40(%ebp)
.L836:
	movzbl	-40(%ebp), %eax
	movb	%al, -41(%ebp)
	jmp	.L837
.L831:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L838
	cmpb	$82, -17(%ebp)
	jne	.L838
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_memory_operand@PLT
	testl	%eax, %eax
	je	.L838
	movl	$1, -36(%ebp)
	jmp	.L842
.L838:
	movl	$0, -36(%ebp)
.L842:
	movzbl	-36(%ebp), %eax
	movb	%al, -41(%ebp)
.L837:
	movzbl	-41(%ebp), %eax
	movb	%al, -42(%ebp)
.L830:
	cmpb	$0, -42(%ebp)
	je	.L722
	.loc 1 1860 0
	movl	$1, -84(%ebp)
	jmp	.L755
.L722:
.L846:
.LBE25:
	.loc 1 1690 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L723
	.loc 1 1878 0
	movl	-24(%ebp), %eax
	movl	%eax, -84(%ebp)
.L755:
	movl	-84(%ebp), %eax
	.loc 1 1879 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	asm_operand_ok, .-asm_operand_ok
.globl find_constant_term_loc
	.type	find_constant_term_loc, @function
find_constant_term_loc:
.LFB53:
	.loc 1 1888 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$24, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1890 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1894 0
	cmpl	$64, -8(%ebp)
	je	.L848
	cmpl	$78, -8(%ebp)
	je	.L848
	cmpl	$77, -8(%ebp)
	je	.L848
	cmpl	$68, -8(%ebp)
	jne	.L852
.L848:
	.loc 1 1896 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L853
.L852:
	.loc 1 1900 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L854
	.loc 1 1901 0
	movl	$0, -24(%ebp)
	jmp	.L853
.L854:
	.loc 1 1905 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L856
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L858
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L856
.L858:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L856
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L867
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L856
.L867:
	.loc 1 1907 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L853
.L856:
	.loc 1 1911 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L875
	.loc 1 1913 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	find_constant_term_loc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1914 0
	cmpl	$0, -12(%ebp)
	je	.L875
	.loc 1 1915 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L853
.L875:
	.loc 1 1918 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L878
	.loc 1 1920 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	find_constant_term_loc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1921 0
	cmpl	$0, -12(%ebp)
	je	.L878
	.loc 1 1922 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L853
.L878:
	.loc 1 1925 0
	movl	$0, -24(%ebp)
.L853:
	movl	-24(%ebp), %eax
	.loc 1 1926 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	find_constant_term_loc, .-find_constant_term_loc
.globl offsettable_memref_p
	.type	offsettable_memref_p, @function
offsettable_memref_p:
.LFB54:
	.loc 1 1942 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$20, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1943 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L883
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	offsettable_address_p@PLT
	testl	%eax, %eax
	je	.L883
	movl	$1, -8(%ebp)
	jmp	.L886
.L883:
	movl	$0, -8(%ebp)
.L886:
	movl	-8(%ebp), %eax
	.loc 1 1945 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	offsettable_memref_p, .-offsettable_memref_p
.globl offsettable_nonstrict_memref_p
	.type	offsettable_nonstrict_memref_p, @function
offsettable_nonstrict_memref_p:
.LFB55:
	.loc 1 1953 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$20, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1954 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L889
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	offsettable_address_p@PLT
	testl	%eax, %eax
	je	.L889
	movl	$1, -8(%ebp)
	jmp	.L892
.L889:
	movl	$0, -8(%ebp)
.L892:
	movl	-8(%ebp), %eax
	.loc 1 1956 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	offsettable_nonstrict_memref_p, .-offsettable_nonstrict_memref_p
.globl offsettable_address_p
	.type	offsettable_address_p, @function
offsettable_address_p:
.LFB56:
	.loc 1 1973 0
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
	.loc 1 1974 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1976 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1979 0
	cmpl	$0, 8(%ebp)
	je	.L895
	movl	strict_memory_address_p@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L897
.L895:
	movl	memory_address_p@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
.L897:
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1980 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1982 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L898
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L898
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L898
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L898
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L903
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L905
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L903
.L905:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L898
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L903
.L898:
	.loc 1 1983 0
	movl	$1, -44(%ebp)
	jmp	.L908
.L903:
	.loc 1 1988 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_dependent_address_p@PLT
	testl	%eax, %eax
	je	.L909
	.loc 1 1989 0
	movl	$0, -44(%ebp)
	jmp	.L908
.L909:
	.loc 1 1995 0
	cmpl	$0, -12(%ebp)
	jne	.L911
	.loc 1 1996 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L913
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L915
.L913:
	movl	$16, -40(%ebp)
	jmp	.L916
.L915:
	movl	$8, -40(%ebp)
.L916:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
.L911:
	.loc 1 2001 0
	cmpl	$85, -28(%ebp)
	jne	.L917
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_constant_term_loc@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L917
.LBB26:
	.loc 1 2005 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2006 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	$0, %ecx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2009 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	movl	%eax, -8(%ebp)
	.loc 1 2012 0
	movl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2013 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L908
.L917:
.LBE26:
	.loc 1 2016 0
	movl	-28(%ebp), %eax
	movl	rtx_class@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$97, %al
	jne	.L920
	.loc 1 2017 0
	movl	$0, -44(%ebp)
	jmp	.L908
.L920:
	.loc 1 2024 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$145, %ax
	jne	.L922
	cmpl	$52, 12(%ebp)
	je	.L922
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	shrl	$3, %eax
	cmpl	-12(%ebp), %eax
	jb	.L922
	.loc 1 2027 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	$0, %ecx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$145, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2024 0
	jmp	.L926
.L922:
	.loc 1 2030 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -24(%ebp)
.L926:
	.loc 1 2034 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	movl	%eax, -44(%ebp)
.L908:
	movl	-44(%ebp), %eax
	.loc 1 2035 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	offsettable_address_p, .-offsettable_address_p
.globl mode_dependent_address_p
	.type	mode_dependent_address_p, @function
mode_dependent_address_p:
.LFB57:
	.loc 1 2046 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	.loc 1 2048 0
	movl	$0, %eax
	.loc 1 2052 0
	popl	%ebp
	ret
.LFE57:
	.size	mode_dependent_address_p, .-mode_dependent_address_p
.globl mode_independent_operand
	.type	mode_independent_operand, @function
mode_independent_operand:
.LFB58:
	.loc 1 2061 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$36, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2064 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L931
	.loc 1 2065 0
	movl	$0, -24(%ebp)
	jmp	.L933
.L931:
	.loc 1 2067 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L934
	.loc 1 2068 0
	movl	$1, -24(%ebp)
	jmp	.L933
.L934:
	.loc 1 2070 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2072 0
	movl	$1, -24(%ebp)
.L933:
	movl	-24(%ebp), %eax
	.loc 1 2076 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	mode_independent_operand, .-mode_independent_operand
.globl extract_insn_cached
	.type	extract_insn_cached, @function
extract_insn_cached:
.LFB59:
	.loc 1 2085 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$4, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2086 0
	movl	recog_data@GOT(%ebx), %eax
	movl	624(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L938
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jns	.L941
.L938:
	.loc 1 2088 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 2089 0
	movl	recog_data@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 624(%edx)
.L941:
	.loc 1 2090 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	extract_insn_cached, .-extract_insn_cached
	.section	.rodata
	.type	__FUNCTION__.13808, @object
	.size	__FUNCTION__.13808, 30
__FUNCTION__.13808:
	.string	"extract_constrain_insn_cached"
	.text
.globl extract_constrain_insn_cached
	.type	extract_constrain_insn_cached, @function
extract_constrain_insn_cached:
.LFB60:
	.loc 1 2096 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$20, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2097 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn_cached@PLT
	.loc 1 2098 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L946
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L946
	.loc 1 2100 0
	leal	__FUNCTION__.13808@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2100, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L946:
	.loc 1 2101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	extract_constrain_insn_cached, .-extract_constrain_insn_cached
.globl constrain_operands_cached
	.type	constrain_operands_cached, @function
constrain_operands_cached:
.LFB61:
	.loc 1 2106 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$20, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2107 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L948
	.loc 1 2108 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constrain_operands@PLT
	movl	%eax, -8(%ebp)
	jmp	.L950
.L948:
	.loc 1 2110 0
	movl	$1, -8(%ebp)
.L950:
	movl	-8(%ebp), %eax
	.loc 1 2111 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	constrain_operands_cached, .-constrain_operands_cached
	.section	.rodata
	.type	__FUNCTION__.13842, @object
	.size	__FUNCTION__.13842, 13
__FUNCTION__.13842:
	.string	"extract_insn"
	.text
.globl extract_insn
	.type	extract_insn, @function
extract_insn:
.LFB62:
	.loc 1 2118 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%esi
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$80, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2122 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2124 0
	movl	recog_data@GOT(%ebx), %eax
	movl	$0, 624(%eax)
	.loc 1 2125 0
	movl	recog_data@GOT(%ebx), %eax
	movb	$0, 620(%eax)
	.loc 1 2126 0
	movl	recog_data@GOT(%ebx), %eax
	movb	$0, 622(%eax)
	.loc 1 2127 0
	movl	recog_data@GOT(%ebx), %eax
	movb	$0, 621(%eax)
	.loc 1 2128 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 2130 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$49, %eax
	movl	%eax, -60(%ebp)
	cmpl	$10, -60(%ebp)
	ja	.L953
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L958@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L958:
	.long	.L954@GOTOFF
	.long	.L990@GOTOFF
	.long	.L956@GOTOFF
	.long	.L953@GOTOFF
	.long	.L953@GOTOFF
	.long	.L990@GOTOFF
	.long	.L990@GOTOFF
	.long	.L953@GOTOFF
	.long	.L957@GOTOFF
	.long	.L990@GOTOFF
	.long	.L990@GOTOFF
	.text
.L957:
	.loc 1 2140 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	je	.L956
	.loc 1 2143 0
	jmp	.L953
.L954:
	.loc 1 2145 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L960
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	je	.L956
.L960:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L953
.L956:
	.loc 1 2153 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movb	%dl, 620(%eax)
	.loc 1 2154 0
	cmpl	$0, -20(%ebp)
	js	.L962
	.loc 1 2159 0
	cmpl	$30, -20(%ebp)
	jle	.L964
	.loc 1 2160 0
	leal	__FUNCTION__.13842@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2160, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L964:
	.loc 1 2163 0
	movl	recog_data@GOT(%ebx), %eax
	leal	360(%eax), %eax
	movl	%eax, 16(%esp)
	movl	recog_data@GOT(%ebx), %eax
	leal	240(%eax), %eax
	movl	%eax, 12(%esp)
	movl	recog_data@GOT(%ebx), %eax
	leal	120(%eax), %eax
	movl	%eax, 8(%esp)
	movl	recog_data@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_asm_operands@PLT
	.loc 1 2167 0
	cmpl	$0, -20(%ebp)
	jle	.L970
.LBB27:
	.loc 1 2169 0
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2170 0
	movl	recog_data@GOT(%ebx), %eax
	movb	$1, 622(%eax)
	.loc 1 2171 0
	jmp	.L968
.L969:
	.loc 1 2172 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	sete	%al
	addl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movb	%dl, 622(%eax)
	addl	$1, -12(%ebp)
.L968:
	.loc 1 2171 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L969
	.loc 1 2174 0
	jmp	.L970
.L962:
.LBE27:
	.loc 1 2176 0
	leal	__FUNCTION__.13842@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2176, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L953:
	.loc 1 2183 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L971
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L973
.L971:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -56(%ebp)
.L973:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2184 0
	cmpl	$0, -24(%ebp)
	jns	.L974
	.loc 1 2185 0
	leal	__FUNCTION__.13842@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2185, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L974:
	.loc 1 2187 0
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movb	%dl, 620(%eax)
	.loc 1 2188 0
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	2(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movb	%dl, 622(%eax)
	.loc 1 2189 0
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	1(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movb	%dl, 621(%eax)
	.loc 1 2191 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_extract@PLT
	.loc 1 2193 0
	movl	$0, -28(%ebp)
	jmp	.L976
.L977:
	.loc 1 2195 0
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, 240(%eax,%esi,4)
	.loc 1 2196 0
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzwl	8(%eax), %eax
	movzwl	%ax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, 360(%eax,%esi,4)
	.loc 1 2198 0
	movl	-28(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	360(%eax,%edx,4), %eax
	testl	%eax, %eax
	jne	.L978
	.loc 1 2199 0
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, 360(%eax,%ecx,4)
.L978:
	.loc 1 2193 0
	addl	$1, -28(%ebp)
.L976:
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L977
.L970:
	.loc 1 2202 0
	movl	$0, -28(%ebp)
	jmp	.L980
.L981:
	.loc 1 2203 0
	movl	-28(%ebp), %edx
	movl	%edx, -52(%ebp)
	movl	-28(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	je	.L982
	movl	-28(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L984
	movl	$2, -44(%ebp)
	jmp	.L986
.L984:
	movl	$0, -44(%ebp)
.L986:
	movl	-44(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	jmp	.L987
.L982:
	movl	$1, -48(%ebp)
.L987:
	movl	recog_data@GOT(%ebx), %eax
	movl	-48(%ebp), %ecx
	movl	-52(%ebp), %edx
	movl	%ecx, 480(%eax,%edx,4)
	.loc 1 2202 0
	addl	$1, -28(%ebp)
.L980:
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L981
	.loc 1 2208 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %eax
	cmpb	$30, %al
	jbe	.L990
	.loc 1 2209 0
	leal	__FUNCTION__.13842@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2209, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L990:
	.loc 1 2210 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE62:
	.size	extract_insn, .-extract_insn
.globl preprocess_constraints
	.type	preprocess_constraints, @function
preprocess_constraints:
.LFB63:
	.loc 1 2217 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%edi
.LCFI193:
	pushl	%esi
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$76, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2220 0
	movl	recog_op_alt@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	$21600, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 2221 0
	movl	$0, -32(%ebp)
	jmp	.L992
.L993:
.LBB28:
	.loc 1 2225 0
	movl	-32(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2227 0
	movl	-32(%ebp), %eax
	imull	$720, %eax, %eax
	movl	%eax, %edx
	movl	recog_op_alt@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2229 0
	movl	$0, -28(%ebp)
	jmp	.L994
.L995:
	.loc 1 2231 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 2232 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2233 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	$-1, 12(%eax)
	.loc 1 2234 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	$-1, 16(%eax)
	.loc 1 2236 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L996
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L1027
.L996:
	.loc 1 2238 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$-128, %eax
	movb	%al, 20(%edx)
	.loc 1 2239 0
	jmp	.L999
.L998:
.L1027:
.LBB29:
	.loc 1 2244 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -13(%ebp)
	addl	$1, -20(%ebp)
	.loc 1 2245 0
	cmpb	$35, -13(%ebp)
	jne	.L1000
.L1001:
	.loc 1 2247 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -13(%ebp)
	addl	$1, -20(%ebp)
	.loc 1 2248 0
	cmpb	$44, -13(%ebp)
	je	.L1000
	cmpb	$0, -13(%ebp)
	jne	.L1001
.L1000:
	.loc 1 2249 0
	cmpb	$44, -13(%ebp)
	je	.L999
	cmpb	$0, -13(%ebp)
	je	.L999
	.loc 1 2252 0
	movzbl	-13(%ebp), %eax
	subl	$33, %eax
	movl	%eax, -64(%ebp)
	cmpl	$82, -64(%ebp)
	ja	.L1005
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L1019@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1019:
	.long	.L1006@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1008@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1009@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1010@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1011@GOTOFF
	.long	.L1012@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1013@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1014@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1015@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1016@GOTOFF
	.long	.L998@GOTOFF
	.long	.L1017@GOTOFF
	.long	.L1018@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1015@GOTOFF
	.long	.L998@GOTOFF
	.text
.L1012:
	.loc 1 2263 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	8(%eax), %eax
	addl	$6, %eax
	movl	%eax, 8(%ecx)
	.loc 1 2264 0
	jmp	.L998
.L1006:
	.loc 1 2266 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	8(%eax), %eax
	addl	$600, %eax
	movl	%eax, 8(%ecx)
	.loc 1 2267 0
	jmp	.L998
.L1008:
	.loc 1 2269 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$1, %eax
	movb	%al, 20(%edx)
	.loc 1 2270 0
	jmp	.L998
.L1009:
.LBB30:
	.loc 1 2276 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %esi
	addl	-24(%ebp), %esi
	movl	-20(%ebp), %edx
	subl	$1, %edx
	movl	$10, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strtoul@PLT
	movl	%eax, 12(%esi)
	.loc 1 2277 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	leal	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2278 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2280 0
	jmp	.L998
.L1016:
.LBE30:
	.loc 1 2283 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$2, %eax
	movb	%al, 20(%edx)
	.loc 1 2284 0
	jmp	.L998
.L1010:
	.loc 1 2286 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$16, %eax
	movb	%al, 20(%edx)
	.loc 1 2287 0
	jmp	.L998
.L1011:
	.loc 1 2289 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$32, %eax
	movb	%al, 20(%edx)
	.loc 1 2290 0
	jmp	.L998
.L1013:
	.loc 1 2292 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$8, %eax
	movb	%al, 20(%edx)
	.loc 1 2293 0
	jmp	.L998
.L1017:
	.loc 1 2295 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$4, %eax
	movb	%al, 20(%edx)
	.loc 1 2296 0
	jmp	.L998
.L1014:
	.loc 1 2298 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$-128, %eax
	movb	%al, 20(%edx)
	.loc 1 2299 0
	jmp	.L998
.L1018:
	.loc 1 2302 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$64, %eax
	movb	%al, 20(%edx)
	.loc 1 2303 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -60(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1021
	movl	$2, -52(%ebp)
	jmp	.L1023
.L1021:
	movl	$5, -52(%ebp)
.L1023:
	movl	-52(%ebp), %ecx
	movl	reg_class_subunion@GOT(%ebx), %esi
	movl	-56(%ebp), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	(%esi,%eax,4), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 2305 0
	jmp	.L998
.L1015:
	.loc 1 2308 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	reg_class_subunion@GOT(%ebx), %edx
	imull	$100, %eax, %eax
	addl	%edx, %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%ecx)
	.loc 1 2309 0
	jmp	.L998
.L1005:
	.loc 1 2325 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -48(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movzbl	-13(%ebp), %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, %esi
	movl	reg_class_subunion@GOT(%ebx), %edi
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%esi, %eax
	movl	(%edi,%eax,4), %eax
	movl	-48(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 2328 0
	jmp	.L998
.L999:
.LBE29:
	.loc 1 2229 0
	addl	$1, -28(%ebp)
.L994:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jg	.L995
.LBE28:
	.loc 1 2221 0
	addl	$1, -32(%ebp)
.L992:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	jg	.L993
	.loc 1 2331 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE63:
	.size	preprocess_constraints, .-preprocess_constraints
.globl constrain_operands
	.type	constrain_operands, @function
constrain_operands:
.LFB64:
	.loc 1 2368 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%edi
.LCFI199:
	pushl	%esi
.LCFI200:
	pushl	%ebx
.LCFI201:
	subl	$812, %esp
.LCFI202:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2377 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2378 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	testb	%al, %al
	je	.L1029
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %eax
	testb	%al, %al
	jne	.L1031
.L1029:
	.loc 1 2379 0
	movl	$1, -792(%ebp)
	jmp	.L1032
.L1031:
	.loc 1 2381 0
	movl	$0, -80(%ebp)
	jmp	.L1033
.L1034:
	.loc 1 2383 0
	movl	-80(%ebp), %ecx
	movl	-80(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, -204(%ebp,%ecx,4)
	.loc 1 2384 0
	movl	-80(%ebp), %eax
	movl	$-1, -324(%ebp,%eax,4)
	.loc 1 2381 0
	addl	$1, -80(%ebp)
.L1033:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-80(%ebp), %eax
	jg	.L1034
.L1035:
.LBB31:
	.loc 1 2390 0
	movl	$0, -68(%ebp)
	.loc 1 2391 0
	movl	$0, -76(%ebp)
	.loc 1 2393 0
	movl	$0, -72(%ebp)
	jmp	.L1036
.L1037:
.LBB32:
	.loc 1 2395 0
	movl	-72(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2396 0
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 2397 0
	movl	-72(%ebp), %eax
	movl	-204(%ebp,%eax,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2398 0
	movl	$0, -52(%ebp)
	.loc 1 2399 0
	movl	$0, -48(%ebp)
	.loc 1 2402 0
	movl	-72(%ebp), %eax
	movl	$0, -444(%ebp,%eax,4)
	.loc 1 2406 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	jne	.L1038
	.loc 1 2407 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L1038:
	.loc 1 2409 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1040
	.loc 1 2411 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1042
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1042
	.loc 1 2413 0
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, -52(%ebp)
.L1042:
	.loc 1 2417 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L1040:
	.loc 1 2422 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1045
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L1287
.L1045:
	.loc 1 2423 0
	movl	$1, -48(%ebp)
	.loc 1 2425 0
	jmp	.L1287
.L1049:
	.loc 1 2426 0
	movl	-80(%ebp), %eax
	subl	$33, %eax
	movl	%eax, -796(%ebp)
	cmpl	$82, -796(%ebp)
	ja	.L1050
	movl	-796(%ebp), %eax
	sall	$2, %eax
	movl	.L1069@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1069:
	.long	.L1048@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1070@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1053@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1054@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1056@GOTOFF
	.long	.L1048@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1057@GOTOFF
	.long	.L1057@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1059@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1061@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1062@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1063@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1064@GOTOFF
	.long	.L1065@GOTOFF
	.long	.L1066@GOTOFF
	.long	.L1067@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1050@GOTOFF
	.long	.L1068@GOTOFF
	.text
.L1071:
	.loc 1 2436 0
	addl	$1, -56(%ebp)
.L1070:
	.loc 1 2435 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1048
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L1071
	.loc 1 2437 0
	jmp	.L1048
.L1053:
	.loc 1 2440 0
	movl	-72(%ebp), %eax
	movl	$1, -444(%ebp,%eax,4)
	.loc 1 2441 0
	jmp	.L1048
.L1054:
.LBB33:
	.loc 1 2458 0
	movl	-56(%ebp), %edx
	subl	$1, %edx
	movl	$10, 8(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strtoul@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2459 0
	movl	-84(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2461 0
	cmpl	$0, 8(%ebp)
	jns	.L1074
	.loc 1 2462 0
	movl	$1, -44(%ebp)
	jmp	.L1076
.L1074:
.LBB34:
	.loc 1 2465 0
	movl	-40(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2466 0
	movl	-72(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2470 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	jne	.L1077
	.loc 1 2471 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L1077:
	.loc 1 2472 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	jne	.L1079
	.loc 1 2473 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L1079:
	.loc 1 2475 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	movl	%eax, -44(%ebp)
.L1076:
.LBE34:
	.loc 1 2478 0
	movl	-72(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, -324(%ebp,%edx,4)
	.loc 1 2479 0
	movl	-40(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, -324(%ebp,%edx,4)
	.loc 1 2481 0
	cmpl	$0, -44(%ebp)
	je	.L1081
	.loc 1 2482 0
	movl	$1, -48(%ebp)
.L1081:
	.loc 1 2487 0
	cmpl	$2, -44(%ebp)
	jne	.L1048
	cmpl	$0, 8(%ebp)
	jle	.L1048
	.loc 1 2489 0
	movl	-76(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, -684(%ebp,%edx,8)
	.loc 1 2490 0
	movl	-76(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, -680(%ebp,%edx,8)
	addl	$1, -76(%ebp)
	.loc 1 2493 0
	jmp	.L1048
.L1067:
.LBE33:
	.loc 1 2500 0
	cmpl	$0, 8(%ebp)
	jle	.L1086
	movl	-72(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	360(%eax,%edx,4), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strict_memory_address_p@PLT
	testl	%eax, %eax
	je	.L1048
.L1086:
	.loc 1 2503 0
	movl	$1, -48(%ebp)
	.loc 1 2504 0
	jmp	.L1048
.L1062:
	.loc 1 2511 0
	cmpl	$0, 8(%ebp)
	js	.L1089
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1089
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1092
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1089
.L1092:
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$5, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_fits_class_p@PLT
	testl	%eax, %eax
	je	.L1048
.L1089:
	.loc 1 2517 0
	movl	$1, -48(%ebp)
	.loc 1 2518 0
	jmp	.L1048
.L1061:
	.loc 1 2524 0
	movl	$1, -48(%ebp)
	.loc 1 2525 0
	jmp	.L1048
.L1064:
	.loc 1 2528 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1095
	cmpl	$0, 8(%ebp)
	jns	.L1097
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1095
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1095
.L1097:
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1048
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1048
.L1095:
	.loc 1 2534 0
	movl	$1, -48(%ebp)
	.loc 1 2535 0
	jmp	.L1048
.L1055:
	.loc 1 2538 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$106, %ax
	je	.L1111
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$108, %ax
	jne	.L1048
.L1111:
	.loc 1 2541 0
	movl	$1, -48(%ebp)
	.loc 1 2542 0
	jmp	.L1048
.L1056:
	.loc 1 2545 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$107, %ax
	je	.L1115
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$109, %ax
	jne	.L1048
.L1115:
	.loc 1 2548 0
	movl	$1, -48(%ebp)
	.loc 1 2549 0
	jmp	.L1048
.L1057:
	.loc 1 2553 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1117
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1048
.L1117:
	.loc 1 2556 0
	movl	$1, -48(%ebp)
	.loc 1 2557 0
	jmp	.L1048
.L1058:
	.loc 1 2561 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1048
	cmpl	$71, -80(%ebp)
	jne	.L1048
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-64(%ebp), %eax
	jne	.L1048
	.loc 1 2563 0
	movl	$1, -48(%ebp)
	.loc 1 2564 0
	jmp	.L1048
.L1068:
	.loc 1 2567 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1048
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1063
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L1048
.L1063:
	.loc 1 2572 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1127
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L1048
.L1127:
	.loc 1 2573 0
	movl	$1, -48(%ebp)
	.loc 1 2574 0
	jmp	.L1048
.L1065:
	.loc 1 2577 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1136
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L1048
.L1136:
	.loc 1 2580 0
	movl	$1, -48(%ebp)
	.loc 1 2581 0
	jmp	.L1048
.L1059:
	.loc 1 2591 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L1048
	cmpl	$73, -80(%ebp)
	jne	.L1142
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$32768, %eax
	adcl	$0, %edx
	movl	%eax, -784(%ebp)
	movl	%edx, -780(%ebp)
	movb	$1, -785(%ebp)
	cmpl	$0, -780(%ebp)
	jb	.L1146
	cmpl	$0, -780(%ebp)
	ja	.L1145
	cmpl	$65535, -784(%ebp)
	jbe	.L1146
.L1145:
	movb	$0, -785(%ebp)
	jmp	.L1146
.L1142:
	cmpl	$74, -80(%ebp)
	jne	.L1147
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	sete	-770(%ebp)
	jmp	.L1149
.L1147:
	cmpl	$75, -80(%ebp)
	jne	.L1150
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -768(%ebp)
	movl	%edx, -764(%ebp)
	movb	$1, -769(%ebp)
	cmpl	$0, -764(%ebp)
	jb	.L1154
	cmpl	$0, -764(%ebp)
	ja	.L1153
	cmpl	$65535, -768(%ebp)
	jbe	.L1154
.L1153:
	movb	$0, -769(%ebp)
	jmp	.L1154
.L1150:
	cmpl	$76, -80(%ebp)
	jne	.L1155
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1157
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1159
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1157
.L1159:
	movl	$1, -752(%ebp)
	jmp	.L1161
.L1157:
	movl	$0, -752(%ebp)
.L1161:
	movzbl	-752(%ebp), %eax
	movb	%al, -753(%ebp)
	jmp	.L1162
.L1155:
	cmpl	$77, -80(%ebp)
	jne	.L1163
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1165
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-65536, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1165
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1168
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1165
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	andl	$-2147483648, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2147483648, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1165
.L1168:
	movl	$1, -744(%ebp)
	jmp	.L1171
.L1165:
	movl	$0, -744(%ebp)
.L1171:
	movzbl	-744(%ebp), %eax
	movb	%al, -745(%ebp)
	jmp	.L1172
.L1163:
	cmpl	$78, -80(%ebp)
	jne	.L1173
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$65535, %eax
	adcl	$0, %edx
	movl	%eax, -736(%ebp)
	movl	%edx, -732(%ebp)
	movb	$1, -737(%ebp)
	cmpl	$0, -732(%ebp)
	jb	.L1177
	cmpl	$0, -732(%ebp)
	ja	.L1176
	cmpl	$65534, -736(%ebp)
	jbe	.L1177
.L1176:
	movb	$0, -737(%ebp)
	jmp	.L1177
.L1173:
	cmpl	$79, -80(%ebp)
	jne	.L1178
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$16384, %eax
	adcl	$0, %edx
	movl	%eax, -720(%ebp)
	movl	%edx, -716(%ebp)
	movb	$1, -721(%ebp)
	cmpl	$0, -716(%ebp)
	jb	.L1182
	cmpl	$0, -716(%ebp)
	ja	.L1181
	cmpl	$32767, -720(%ebp)
	jbe	.L1182
.L1181:
	movb	$0, -721(%ebp)
	jmp	.L1182
.L1178:
	cmpl	$80, -80(%ebp)
	jne	.L1183
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1183
	movl	-64(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	movw	$0, %ax
	movl	%edi, %edx
	andb	$255, %dh
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1183
	movl	$1, -708(%ebp)
	jmp	.L1187
.L1183:
	movl	$0, -708(%ebp)
.L1187:
	movzbl	-708(%ebp), %eax
	movb	%al, -721(%ebp)
.L1182:
	movzbl	-721(%ebp), %eax
	movb	%al, -737(%ebp)
.L1177:
	movzbl	-737(%ebp), %eax
	movb	%al, -745(%ebp)
.L1172:
	movzbl	-745(%ebp), %eax
	movb	%al, -753(%ebp)
.L1162:
	movzbl	-753(%ebp), %eax
	movb	%al, -769(%ebp)
.L1154:
	movzbl	-769(%ebp), %eax
	movb	%al, -770(%ebp)
.L1149:
	movzbl	-770(%ebp), %eax
	movb	%al, -785(%ebp)
.L1146:
	cmpb	$0, -785(%ebp)
	je	.L1048
	.loc 1 2593 0
	movl	$1, -48(%ebp)
	.loc 1 2594 0
	jmp	.L1048
.L1060:
	.loc 1 2597 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1048
	cmpl	$0, 8(%ebp)
	jle	.L1191
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	je	.L1193
.L1191:
	cmpl	$0, 8(%ebp)
	jns	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1194
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1193
.L1194:
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1048
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1193
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1048
.L1193:
	.loc 1 2604 0
	movl	$1, -48(%ebp)
	.loc 1 2605 0
	jmp	.L1048
.L1066:
	.loc 1 2608 0
	cmpl	$0, 8(%ebp)
	jle	.L1206
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_memref_p@PLT
	testl	%eax, %eax
	jne	.L1208
.L1206:
	cmpl	$0, 8(%ebp)
	jne	.L1209
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	offsettable_nonstrict_memref_p@PLT
	testl	%eax, %eax
	jne	.L1208
.L1209:
	cmpl	$0, 8(%ebp)
	jns	.L1211
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L1208
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1208
.L1211:
	movl	reload_in_progress@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1048
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1048
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L1048
.L1208:
	.loc 1 2616 0
	movl	$1, -48(%ebp)
	.loc 1 2617 0
	jmp	.L1048
.L1050:
.LBB35:
	.loc 1 2623 0
	cmpl	$114, -80(%ebp)
	je	.L1224
	movl	-80(%ebp), %eax
	movzbl	%al, %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -704(%ebp)
	jmp	.L1226
.L1224:
	movl	$5, -704(%ebp)
.L1226:
	movl	-704(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2624 0
	cmpl	$0, -28(%ebp)
	je	.L1227
	.loc 1 2626 0
	cmpl	$0, 8(%ebp)
	js	.L1229
	cmpl	$0, 8(%ebp)
	jne	.L1231
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1231
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L1229
.L1231:
	cmpl	$0, 8(%ebp)
	jne	.L1234
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$72, %ax
	je	.L1229
.L1234:
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1048
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_fits_class_p@PLT
	testl	%eax, %eax
	je	.L1048
.L1229:
	.loc 1 2633 0
	movl	$1, -48(%ebp)
	jmp	.L1048
.L1227:
	.loc 1 2636 0
	cmpl	$84, -80(%ebp)
	jne	.L1239
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	double_memory_operand@PLT
	testl	%eax, %eax
	setne	-698(%ebp)
	jmp	.L1241
.L1239:
	cmpl	$81, -80(%ebp)
	jne	.L1242
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L1244
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	mips16_gp_offset_p@PLT
	testl	%eax, %eax
	je	.L1244
	movl	$1, -696(%ebp)
	jmp	.L1247
.L1244:
	movl	$0, -696(%ebp)
.L1247:
	movzbl	-696(%ebp), %eax
	movb	%al, -697(%ebp)
	jmp	.L1248
.L1242:
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L1249
	cmpl	$82, -80(%ebp)
	jne	.L1249
	movl	-64(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_memory_operand@PLT
	testl	%eax, %eax
	je	.L1249
	movl	$1, -692(%ebp)
	jmp	.L1253
.L1249:
	movl	$0, -692(%ebp)
.L1253:
	movzbl	-692(%ebp), %eax
	movb	%al, -697(%ebp)
.L1248:
	movzbl	-697(%ebp), %eax
	movb	%al, -698(%ebp)
.L1241:
	cmpb	$0, -698(%ebp)
	je	.L1048
	.loc 1 2637 0
	movl	$1, -48(%ebp)
.L1048:
.L1287:
.LBE35:
	.loc 1 2425 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1255
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	cmpl	$44, -80(%ebp)
	setne	%al
	addl	$1, -56(%ebp)
	testb	%al, %al
	jne	.L1049
.L1255:
	.loc 1 2665 0
	movl	-72(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, -204(%ebp,%edx,4)
	.loc 1 2668 0
	cmpl	$0, -48(%ebp)
	jne	.L1257
	.loc 1 2669 0
	movl	$1, -68(%ebp)
.L1257:
.LBE32:
	.loc 1 2393 0
	addl	$1, -72(%ebp)
.L1036:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-72(%ebp), %eax
	jg	.L1037
	.loc 1 2673 0
	cmpl	$0, -68(%ebp)
	jne	.L1260
.LBB36:
	.loc 1 2680 0
	cmpl	$0, 8(%ebp)
	jle	.L1262
	.loc 1 2681 0
	movl	$0, -20(%ebp)
	jmp	.L1264
.L1265:
	.loc 1 2685 0
	movl	-20(%ebp), %eax
	movl	-444(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L1266
	movl	-20(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L1266
	.loc 1 2687 0
	movl	$0, -24(%ebp)
	jmp	.L1269
.L1270:
	.loc 1 2688 0
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1271
	movl	-24(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	cmpl	$1, %eax
	je	.L1273
.L1271:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L1273
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1273
	movl	-24(%ebp), %eax
	movl	-324(%ebp,%eax,4), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1276
	movl	-20(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operands_match_p@PLT
	testl	%eax, %eax
	jne	.L1273
.L1276:
	movl	-20(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	safe_from_earlyclobber@PLT
	testl	%eax, %eax
	jne	.L1273
	.loc 1 2698 0
	movl	$1, -68(%ebp)
.L1273:
	.loc 1 2687 0
	addl	$1, -24(%ebp)
.L1269:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	jg	.L1270
.L1266:
	.loc 1 2681 0
	addl	$1, -20(%ebp)
.L1264:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	jg	.L1265
.L1262:
	.loc 1 2700 0
	cmpl	$0, -68(%ebp)
	jne	.L1260
	.loc 1 2702 0
	jmp	.L1280
.L1281:
	.loc 1 2704 0
	movl	-76(%ebp), %eax
	movl	-680(%ebp,%eax,8), %ecx
	movl	-76(%ebp), %eax
	movl	-684(%ebp,%eax,8), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
.L1280:
	.loc 1 2702 0
	subl	$1, -76(%ebp)
	cmpl	$0, -76(%ebp)
	jns	.L1281
	.loc 1 2708 0
	movl	$1, -792(%ebp)
	jmp	.L1032
.L1260:
.LBE36:
	.loc 1 2712 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	which_alternative@GOT(%ebx), %eax
	movl	%edx, (%eax)
.LBE31:
	.loc 1 2714 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	622(%eax), %eax
	movzbl	%al, %edx
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L1035
	.loc 1 2716 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 2719 0
	cmpl	$0, 8(%ebp)
	jne	.L1284
	.loc 1 2720 0
	movl	$-1, (%esp)
	call	constrain_operands@PLT
	movl	%eax, -792(%ebp)
	jmp	.L1032
.L1284:
	.loc 1 2722 0
	movl	$0, -792(%ebp)
.L1032:
	movl	-792(%ebp), %eax
	.loc 1 2723 0
	addl	$812, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	constrain_operands, .-constrain_operands
.globl reg_fits_class_p
	.type	reg_fits_class_p, @function
reg_fits_class_p:
.LFB65:
	.loc 1 2736 0
	pushl	%ebp
.LCFI203:
	movl	%esp, %ebp
.LCFI204:
	pushl	%edi
.LCFI205:
	pushl	%esi
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$28, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2737 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2738 0
	cmpl	$175, -20(%ebp)
	jg	.L1289
	movl	12(%ebp), %esi
	movl	16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1299
	movl	%edx, %eax
	xorl	%edx, %edx
.L1299:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1289
.LBB37:
	.loc 1 2743 0
	movl	16(%ebp), %eax
	addl	%eax, -20(%ebp)
	.loc 1 2744 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2745 0
	jmp	.L1292
.L1293:
	.loc 1 2746 0
	movl	12(%ebp), %esi
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	reg_class_contents@GOT(%ebx), %ecx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,8), %esi
	movl	4(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1298
	movl	%edx, %eax
	xorl	%edx, %edx
.L1298:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1294
	.loc 1 2745 0
	subl	$1, -16(%ebp)
.L1292:
	cmpl	$0, -16(%ebp)
	jg	.L1293
.L1294:
	.loc 1 2749 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1296
.L1289:
.LBE37:
	.loc 1 2752 0
	movl	$0, -32(%ebp)
.L1296:
	movl	-32(%ebp), %eax
	.loc 1 2753 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE65:
	.size	reg_fits_class_p, .-reg_fits_class_p
	.type	split_insn, @function
split_insn:
.LFB66:
	.loc 1 2760 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%ebx
.LCFI211:
	subl	$52, %esp
.LCFI212:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2762 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1301
	.loc 1 2768 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1303
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1305
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1307
.L1305:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -28(%ebp)
.L1307:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1308
.L1303:
	movl	$0, -32(%ebp)
.L1308:
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1309
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_noop_p@PLT
	testl	%eax, %eax
	je	.L1309
	.loc 1 2775 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1301
	.loc 1 2776 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_and_edges@PLT
	.loc 1 2768 0
	jmp	.L1301
.L1309:
.LBB38:
	.loc 1 2781 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2782 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	try_split@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2784 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1301
	.loc 1 2787 0
	movl	8(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 2788 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 2789 0
	movl	8(%ebp), %eax
	movl	$-99, 44(%eax)
	.loc 1 2794 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1315
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L1315
	.loc 1 2796 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L1318:
	.loc 1 2799 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1319
	.loc 1 2800 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_subreg_operands@PLT
.L1319:
	.loc 1 2801 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L1315
	.loc 1 2803 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2804 0
	jmp	.L1318
.L1315:
	.loc 1 2806 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1322
.L1301:
.LBE38:
	.loc 1 2809 0
	movl	$0, -24(%ebp)
.L1322:
	movl	-24(%ebp), %eax
	.loc 1 2810 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	split_insn, .-split_insn
.globl split_all_insns
	.type	split_all_insns, @function
split_all_insns:
.LFB67:
	.loc 1 2816 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	pushl	%edi
.LCFI215:
	pushl	%esi
.LCFI216:
	pushl	%ebx
.LCFI217:
	subl	$76, %esp
.LCFI218:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2821 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2822 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 2823 0
	movb	$0, -18(%ebp)
	.loc 1 2825 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1325
.L1326:
.LBB39:
	.loc 1 2828 0
	movb	$0, -17(%ebp)
	.loc 1 2830 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1327
.L1328:
.LBB40:
	.loc 1 2836 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2837 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	sete	%al
	movb	%al, -17(%ebp)
	.loc 1 2838 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	split_insn
	movl	%eax, -28(%ebp)
	.loc 1 2839 0
	cmpl	$0, -28(%ebp)
	je	.L1329
	.loc 1 2845 0
	jmp	.L1331
.L1332:
	.loc 1 2846 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L1331:
	.loc 1 2845 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L1332
	.loc 1 2847 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-40(%ebp), %eax
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
	je	.L1344
	movl	%esi, %edi
	xorl	%esi, %esi
.L1344:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2848 0
	movb	$1, -18(%ebp)
	.loc 1 2849 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1329:
.LBE40:
	.loc 1 2830 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1327:
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1328
.LBE39:
	.loc 1 2825 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
.L1325:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L1326
	.loc 1 2854 0
	cmpb	$0, -18(%ebp)
	je	.L1336
.LBB41:
	.loc 1 2856 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2858 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_many_sub_basic_blocks@PLT
	.loc 1 2860 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L1336
	cmpl	$0, 8(%ebp)
	je	.L1336
	.loc 1 2861 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_resize@PLT
	movl	%eax, -44(%ebp)
.L1336:
.LBE41:
	.loc 1 2864 0
	cmpb	$0, -18(%ebp)
	je	.L1340
	cmpl	$0, 8(%ebp)
	je	.L1340
	.loc 1 2865 0
	movl	$5, 8(%esp)
	movl	$2, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
.L1340:
	.loc 1 2872 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2873 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE67:
	.size	split_all_insns, .-split_all_insns
.globl split_all_insns_noflow
	.type	split_all_insns_noflow, @function
split_all_insns_noflow:
.LFB68:
	.loc 1 2880 0
	pushl	%ebp
.LCFI219:
	movl	%esp, %ebp
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$20, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2883 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1346
.L1347:
	.loc 1 2885 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2886 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_insn
	.loc 1 2883 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1346:
	cmpl	$0, -8(%ebp)
	jne	.L1347
	.loc 1 2889 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	split_all_insns_noflow, .-split_all_insns_noflow
	.section	.rodata
	.type	__FUNCTION__.14937, @object
	.size	__FUNCTION__.14937, 16
__FUNCTION__.14937:
	.string	"peep2_next_insn"
	.text
.globl peep2_next_insn
	.type	peep2_next_insn, @function
peep2_next_insn:
.LFB69:
	.loc 1 2913 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%ebx
.LCFI225:
	subl	$20, %esp
.LCFI226:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2914 0
	cmpl	$4, 8(%ebp)
	jle	.L1351
	.loc 1 2915 0
	leal	__FUNCTION__.14937@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2915, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1351:
	.loc 1 2917 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	%eax, 8(%ebp)
	.loc 1 2918 0
	cmpl	$4, 8(%ebp)
	jle	.L1353
	.loc 1 2919 0
	subl	$5, 8(%ebp)
.L1353:
	.loc 1 2921 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1355
	.loc 1 2922 0
	movl	$0, -8(%ebp)
	jmp	.L1357
.L1355:
	.loc 1 2923 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -8(%ebp)
.L1357:
	movl	-8(%ebp), %eax
	.loc 1 2924 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	peep2_next_insn, .-peep2_next_insn
	.section	.rodata
	.type	__FUNCTION__.14955, @object
	.size	__FUNCTION__.14955, 19
__FUNCTION__.14955:
	.string	"peep2_regno_dead_p"
	.text
.globl peep2_regno_dead_p
	.type	peep2_regno_dead_p, @function
peep2_regno_dead_p:
.LFB70:
	.loc 1 2933 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$20, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2934 0
	cmpl	$4, 8(%ebp)
	jle	.L1360
	.loc 1 2935 0
	leal	__FUNCTION__.14955@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2935, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1360:
	.loc 1 2937 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	%eax, 8(%ebp)
	.loc 1 2938 0
	cmpl	$4, 8(%ebp)
	jle	.L1362
	.loc 1 2939 0
	subl	$5, 8(%ebp)
.L1362:
	.loc 1 2941 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1364
	.loc 1 2942 0
	leal	__FUNCTION__.14955@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2942, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1364:
	.loc 1 2944 0
	movl	8(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 2945 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	peep2_regno_dead_p, .-peep2_regno_dead_p
	.section	.rodata
	.type	__FUNCTION__.14976, @object
	.size	__FUNCTION__.14976, 17
__FUNCTION__.14976:
	.string	"peep2_reg_dead_p"
	.text
.globl peep2_reg_dead_p
	.type	peep2_reg_dead_p, @function
peep2_reg_dead_p:
.LFB71:
	.loc 1 2953 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$36, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2956 0
	cmpl	$4, 8(%ebp)
	jle	.L1368
	.loc 1 2957 0
	leal	__FUNCTION__.14976@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2957, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1368:
	.loc 1 2959 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	%eax, 8(%ebp)
	.loc 1 2960 0
	cmpl	$4, 8(%ebp)
	jle	.L1370
	.loc 1 2961 0
	subl	$5, 8(%ebp)
.L1370:
	.loc 1 2963 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1372
	.loc 1 2964 0
	leal	__FUNCTION__.14976@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2964, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1372:
	.loc 1 2966 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2967 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2968 0
	jmp	.L1374
.L1375:
	.loc 1 2969 0
	movl	-8(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L1374
	.loc 1 2970 0
	movl	$0, -24(%ebp)
	jmp	.L1377
.L1374:
	.loc 1 2968 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jns	.L1375
	.loc 1 2971 0
	movl	$1, -24(%ebp)
.L1377:
	movl	-24(%ebp), %eax
	.loc 1 2972 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	peep2_reg_dead_p, .-peep2_reg_dead_p
	.section	.rodata
	.type	__FUNCTION__.15012, @object
	.size	__FUNCTION__.15012, 25
__FUNCTION__.15012:
	.string	"peep2_find_free_register"
	.local	search_ofs.15008
	.comm	search_ofs.15008,4,4
	.text
.globl peep2_find_free_register
	.type	peep2_find_free_register, @function
peep2_find_free_register:
.LFB72:
	.loc 1 2991 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%edi
.LCFI237:
	pushl	%esi
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$172, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2997 0
	cmpl	$4, 8(%ebp)
	jg	.L1381
	cmpl	$4, 12(%ebp)
	jle	.L1383
.L1381:
	.loc 1 2998 0
	leal	__FUNCTION__.15012@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2998, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1383:
	.loc 1 3000 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	%eax, 8(%ebp)
	.loc 1 3001 0
	cmpl	$4, 8(%ebp)
	jle	.L1384
	.loc 1 3002 0
	subl	$5, 8(%ebp)
.L1384:
	.loc 1 3003 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	%eax, 12(%ebp)
	.loc 1 3004 0
	cmpl	$4, 12(%ebp)
	jle	.L1386
	.loc 1 3005 0
	subl	$5, 12(%ebp)
.L1386:
	.loc 1 3007 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1388
	.loc 1 3008 0
	leal	__FUNCTION__.15012@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3008, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1388:
.LBB42:
	.loc 1 3009 0
	leal	-80(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE42:
	movl	8(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
	.loc 1 3011 0
	jmp	.L1390
.L1391:
.LBB43:
	.loc 1 3015 0
	addl	$1, 8(%ebp)
	cmpl	$4, 8(%ebp)
	jle	.L1392
	.loc 1 3016 0
	movl	$0, 8(%ebp)
.L1392:
	.loc 1 3017 0
	movl	8(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L1394
	.loc 1 3018 0
	leal	__FUNCTION__.15012@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3018, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1394:
.LBB44:
	.loc 1 3019 0
	leal	-104(%ebp), %eax
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
.LBE44:
	movl	8(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
.LBB45:
	.loc 1 3020 0
	leal	-80(%ebp), %eax
	movl	%eax, -40(%ebp)
	leal	-104(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
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
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L1390:
.LBE45:
.LBE43:
	.loc 1 3011 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L1391
	.loc 1 3023 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$114, %al
	je	.L1397
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	mips_char_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -140(%ebp)
	jmp	.L1399
.L1397:
	movl	$5, -140(%ebp)
.L1399:
	movl	-140(%ebp), %edi
	movl	%edi, -56(%ebp)
	.loc 1 3026 0
	movl	$0, -52(%ebp)
	jmp	.L1400
.L1401:
.LBB46:
	.loc 1 3031 0
	movl	search_ofs.15008@GOTOFF(%ebx), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3032 0
	cmpl	$175, -32(%ebp)
	jle	.L1402
	.loc 1 3033 0
	subl	$176, -32(%ebp)
.L1402:
	.loc 1 3035 0
	movl	-32(%ebp), %edx
	movl	reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3041 0
	movl	-28(%ebp), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L1404
	.loc 1 3044 0
	movl	-56(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edx
	movl	(%esi,%eax,8), %eax
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1435
	movl	%edx, %eax
	xorl	%edx, %edx
.L1435:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1404
	.loc 1 3047 0
	movl	20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L1404
	.loc 1 3050 0
	movl	-28(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L1408
	movl	-28(%ebp), %eax
	movl	regs_ever_live@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L1404
.L1408:
	.loc 1 3053 0
	cmpl	$1, -28(%ebp)
	je	.L1410
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1412
	movl	$17, -136(%ebp)
	jmp	.L1414
.L1412:
	movl	$30, -136(%ebp)
.L1414:
	movl	-136(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1415
.L1410:
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1404
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1404
.L1415:
	.loc 1 3057 0
	movl	$1, -24(%ebp)
	.loc 1 3058 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1417
.L1418:
	.loc 1 3060 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	24(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1434
	movl	%edx, %eax
	xorl	%edx, %edx
.L1434:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1419
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	-80(%ebp,%eax,8), %esi
	movl	-76(%ebp,%eax,8), %edi
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1433
	movl	%edx, %eax
	xorl	%edx, %edx
.L1433:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1421
.L1419:
	.loc 1 3063 0
	movl	$0, -24(%ebp)
	.loc 1 3064 0
	jmp	.L1422
.L1421:
	.loc 1 3058 0
	subl	$1, -20(%ebp)
.L1417:
	cmpl	$0, -20(%ebp)
	jns	.L1418
.L1422:
	.loc 1 3067 0
	cmpl	$0, -24(%ebp)
	je	.L1404
	.loc 1 3069 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L1424
.L1425:
	.loc 1 3070 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -132(%ebp)
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1432
	movl	%esi, %edi
	xorl	%esi, %esi
.L1432:
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	24(%ebp), %ecx
	movl	-132(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
	.loc 1 3069 0
	subl	$1, -20(%ebp)
.L1424:
	cmpl	$0, -20(%ebp)
	jns	.L1425
	.loc 1 3073 0
	addl	$1, -32(%ebp)
	cmpl	$175, -32(%ebp)
	jle	.L1427
	.loc 1 3074 0
	movl	$0, -32(%ebp)
.L1427:
	.loc 1 3075 0
	movl	-32(%ebp), %eax
	movl	%eax, search_ofs.15008@GOTOFF(%ebx)
	.loc 1 3077 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, -116(%ebp)
	jmp	.L1429
.L1404:
.LBE46:
	.loc 1 3026 0
	addl	$1, -52(%ebp)
.L1400:
	cmpl	$175, -52(%ebp)
	jle	.L1401
	.loc 1 3081 0
	movl	$0, search_ofs.15008@GOTOFF(%ebx)
	.loc 1 3082 0
	movl	$0, -116(%ebp)
.L1429:
	movl	-116(%ebp), %eax
	.loc 1 3083 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE72:
	.size	peep2_find_free_register, .-peep2_find_free_register
	.section	.rodata
	.type	__FUNCTION__.15199, @object
	.size	__FUNCTION__.15199, 19
__FUNCTION__.15199:
	.string	"peephole2_optimize"
	.text
.globl peephole2_optimize
	.type	peephole2_optimize, @function
peephole2_optimize:
.LFB73:
	.loc 1 3090 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%esi
.LCFI243:
	pushl	%ebx
.LCFI244:
	subl	$208, %esp
.LCFI245:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3100 0
	movb	$0, -11(%ebp)
	.loc 1 3101 0
	movb	$0, -10(%ebp)
	.loc 1 3104 0
	movl	$0, -76(%ebp)
	jmp	.L1437
.L1438:
	.loc 1 3105 0
	movl	-76(%ebp), %esi
	movl	-76(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	-184(%ebp), %eax
	addl	%edx, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, 4+peep2_insn_data@GOTOFF(%ebx,%esi,8)
	.loc 1 3104 0
	addl	$1, -76(%ebp)
.L1437:
	cmpl	$4, -76(%ebp)
	jle	.L1438
	.loc 1 3106 0
	movl	-76(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leal	-184(%ebp), %eax
	addl	%edx, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3113 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	count_or_remove_death_notes@PLT
	.loc 1 3116 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1440
.L1441:
.LBB47:
	.loc 1 3121 0
	movl	$0, -76(%ebp)
	jmp	.L1442
.L1443:
	.loc 1 3122 0
	movl	-76(%ebp), %eax
	movl	$0, peep2_insn_data@GOTOFF(%ebx,%eax,8)
	.loc 1 3121 0
	addl	$1, -76(%ebp)
.L1442:
	cmpl	$3, -76(%ebp)
	jle	.L1443
	.loc 1 3125 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 32+peep2_insn_data@GOTOFF(%ebx)
	.loc 1 3126 0
	movl	$4, peep2_current@GOTOFF(%ebx)
	.loc 1 3129 0
	movl	-72(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 3130 0
	movl	36+peep2_insn_data@GOTOFF(%ebx), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 3135 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	init_propagate_block_info@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3138 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
.L1445:
	.loc 1 3140 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 3141 0
	movl	-88(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1446
.LBB48:
	.loc 1 3146 0
	movb	$0, -9(%ebp)
	.loc 1 3149 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, peep2_current@GOTOFF(%ebx)
	movl	peep2_current@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L1448
	.loc 1 3150 0
	movl	$4, peep2_current@GOTOFF(%ebx)
.L1448:
	.loc 1 3151 0
	movl	peep2_current@GOTOFF(%ebx), %edx
	movl	-88(%ebp), %eax
	movl	%eax, peep2_insn_data@GOTOFF(%ebx,%edx,8)
	.loc 1 3152 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_one_insn@PLT
	.loc 1 3153 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
	.loc 1 3159 0
	movl	$0, -64(%ebp)
	.loc 1 3161 0
	cmpl	$0, -64(%ebp)
	je	.L1446
	.loc 1 3166 0
	movl	$0, -76(%ebp)
	jmp	.L1451
.L1452:
.LBB49:
	.loc 1 3171 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	-76(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3172 0
	cmpl	$4, -44(%ebp)
	jle	.L1453
	.loc 1 3173 0
	subl	$5, -44(%ebp)
.L1453:
	.loc 1 3174 0
	movl	-44(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3175 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1455
	.loc 1 3177 0
	movb	$1, -9(%ebp)
	.loc 1 3179 0
	movl	-64(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3180 0
	jmp	.L1457
.L1458:
	.loc 1 3182 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L1459
	.loc 1 3184 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1457:
	.loc 1 3180 0
	cmpl	$0, -36(%ebp)
	jne	.L1458
.L1459:
	.loc 1 3187 0
	cmpl	$0, -36(%ebp)
	jne	.L1461
	.loc 1 3188 0
	leal	__FUNCTION__.15199@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3188, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1461:
	.loc 1 3190 0
	movl	-40(%ebp), %eax
	movl	76(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 3193 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3194 0
	jmp	.L1463
.L1464:
	.loc 1 3196 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -188(%ebp)
	cmpl	$28, -188(%ebp)
	ja	.L1465
	movl	$1, %eax
	movzbl	-188(%ebp), %ecx
	sall	%cl, %eax
	andl	$436207616, %eax
	testl	%eax, %eax
	jne	.L1466
	jmp	.L1465
.L1466:
	.loc 1 3201 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 68(%eax)
.L1465:
	.loc 1 3195 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L1463:
	.loc 1 3194 0
	cmpl	$0, -32(%ebp)
	jne	.L1464
	.loc 1 3211 0
	jmp	.L1468
.L1469:
	.loc 1 3213 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	-76(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3214 0
	cmpl	$4, -44(%ebp)
	jle	.L1470
	.loc 1 3215 0
	subl	$5, -44(%ebp)
.L1470:
	.loc 1 3216 0
	movl	-44(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3217 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1468
	.loc 1 3218 0
	leal	__FUNCTION__.15199@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3218, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1468:
	.loc 1 3211 0
	addl	$1, -76(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jle	.L1469
	.loc 1 3220 0
	jmp	.L1474
.L1455:
.LBE49:
	.loc 1 3166 0
	addl	$1, -76(%ebp)
.L1451:
	movl	-76(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jle	.L1452
.L1474:
	.loc 1 3223 0
	movl	peep2_current@GOTOFF(%ebx), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 3224 0
	cmpl	$4, -76(%ebp)
	jle	.L1475
	.loc 1 3225 0
	subl	$5, -76(%ebp)
.L1475:
	.loc 1 3227 0
	movl	-76(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3231 0
	movl	-76(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	36(%eax), %edx
	movl	-76(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after_scope@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3233 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3234 0
	movl	-76(%ebp), %eax
	movl	peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 3237 0
	cmpl	$0, -48(%ebp)
	jne	.L1477
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1479
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L1479
.L1477:
.LBB50:
	.loc 1 3241 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1481
.L1482:
	.loc 1 3243 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$12, %eax
	testl	%eax, %eax
	jne	.L1483
	.loc 1 3242 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L1481:
	.loc 1 3241 0
	cmpl	$0, -28(%ebp)
	jne	.L1482
.L1483:
	.loc 1 3246 0
	movl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1485
.L1486:
	.loc 1 3247 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L1487
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1489
	movl	-56(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1489
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L1489
.L1487:
	.loc 1 3252 0
	cmpl	$0, -48(%ebp)
	je	.L1492
	.loc 1 3253 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$22, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 68(%eax)
.L1492:
	.loc 1 3258 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-56(%ebp), %eax
	je	.L1489
	cmpl	$0, -28(%ebp)
	je	.L1489
.LBB51:
	.loc 1 3263 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3264 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$10, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3266 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1496
	.loc 1 3267 0
	orl	$4, -16(%ebp)
.L1496:
	.loc 1 3268 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	make_edge@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3271 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 3272 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	$10000, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 3275 0
	movzbl	-11(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -11(%ebp)
	.loc 1 3280 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 3281 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1489:
.LBE51:
	.loc 1 3246 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
.L1485:
	movl	-56(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1486
	.loc 1 3287 0
	movzbl	-11(%ebp), %esi
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -11(%ebp)
.L1479:
.LBE50:
	.loc 1 3305 0
	addl	$1, -76(%ebp)
	cmpl	$4, -76(%ebp)
	jle	.L1499
	.loc 1 3306 0
	movl	$0, -76(%ebp)
.L1499:
	.loc 1 3307 0
	movl	-76(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 3310 0
	movl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1501:
	.loc 1 3313 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1502
	.loc 1 3315 0
	subl	$1, -76(%ebp)
	cmpl	$0, -76(%ebp)
	jns	.L1504
	.loc 1 3316 0
	movl	$4, -76(%ebp)
.L1504:
	.loc 1 3317 0
	movl	-76(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, peep2_insn_data@GOTOFF(%ebx,%edx,8)
	.loc 1 3318 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_one_insn@PLT
	.loc 1 3319 0
	movl	-76(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_copy@PLT
.L1502:
	.loc 1 3321 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3323 0
	movl	-56(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L1501
	.loc 1 3328 0
	movl	-76(%ebp), %eax
	movl	%eax, peep2_current@GOTOFF(%ebx)
	.loc 1 3333 0
	movl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1507
.L1508:
	.loc 1 3334 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1509
	.loc 1 3336 0
	movb	$1, -10(%ebp)
	.loc 1 3337 0
	jmp	.L1446
.L1509:
	.loc 1 3333 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
.L1507:
	movl	-56(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L1508
.L1446:
.LBE48:
	.loc 1 3342 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-88(%ebp), %eax
	je	.L1511
	.loc 1 3138 0
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 3344 0
	jmp	.L1445
.L1511:
	.loc 1 3346 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	free_propagate_block_info@PLT
.LBE47:
	.loc 1 3116 0
	movl	-72(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -72(%ebp)
.L1440:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -72(%ebp)
	jne	.L1441
	.loc 1 3349 0
	movl	$0, -76(%ebp)
	jmp	.L1514
.L1515:
	.loc 1 3350 0
	movl	-76(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	je	.L1516
	movl	-76(%ebp), %eax
	movl	4+peep2_insn_data@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-76(%ebp), %eax
	movl	$0, 4+peep2_insn_data@GOTOFF(%ebx,%eax,8)
.L1516:
	.loc 1 3349 0
	addl	$1, -76(%ebp)
.L1514:
	cmpl	$4, -76(%ebp)
	jle	.L1515
	.loc 1 3351 0
	cmpl	$0, -80(%ebp)
	je	.L1519
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -80(%ebp)
.L1519:
	.loc 1 3353 0
	cmpb	$0, -10(%ebp)
	je	.L1521
	.loc 1 3354 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
.L1521:
	.loc 1 3359 0
	cmpb	$0, -11(%ebp)
	je	.L1525
	.loc 1 3361 0
	movl	$0, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3362 0
	movl	$1, 8(%esp)
	movl	$2, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
.L1525:
	.loc 1 3372 0
	addl	$208, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE73:
	.size	peephole2_optimize, .-peephole2_optimize
	.section	.rodata
	.type	__FUNCTION__.15397, @object
	.size	__FUNCTION__.15397, 20
__FUNCTION__.15397:
	.string	"store_data_bypass_p"
	.text
.globl store_data_bypass_p
	.type	store_data_bypass_p, @function
store_data_bypass_p:
.LFB74:
	.loc 1 3385 0
	pushl	%ebp
.LCFI246:
	movl	%esp, %ebp
.LCFI247:
	pushl	%ebx
.LCFI248:
	subl	$68, %esp
.LCFI249:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3388 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1527
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1529
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1531
.L1529:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L1531:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1532
.L1527:
	movl	$0, -56(%ebp)
.L1532:
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3389 0
	cmpl	$0, -20(%ebp)
	jne	.L1533
	.loc 1 3390 0
	leal	__FUNCTION__.15397@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3390, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1533:
	.loc 1 3392 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L1535
	.loc 1 3393 0
	movl	$0, -48(%ebp)
	jmp	.L1537
.L1535:
	.loc 1 3395 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1538
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1540
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1542
.L1540:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L1542:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1543
.L1538:
	movl	$0, -44(%ebp)
.L1543:
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3396 0
	cmpl	$0, -24(%ebp)
	je	.L1544
	.loc 1 3398 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1548
	.loc 1 3399 0
	movl	$0, -48(%ebp)
	jmp	.L1537
.L1544:
.LBB52:
	.loc 1 3406 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3407 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	je	.L1549
	.loc 1 3408 0
	leal	__FUNCTION__.15397@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3408, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1549:
	.loc 1 3410 0
	movl	$0, -12(%ebp)
	jmp	.L1551
.L1552:
.LBB53:
	.loc 1 3412 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3414 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L1553
	.loc 1 3417 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1555
	.loc 1 3418 0
	leal	__FUNCTION__.15397@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3418, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1555:
	.loc 1 3420 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1553
	.loc 1 3421 0
	movl	$0, -48(%ebp)
	jmp	.L1537
.L1553:
.LBE53:
	.loc 1 3410 0
	addl	$1, -12(%ebp)
.L1551:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1552
.L1548:
.LBE52:
	.loc 1 3425 0
	movl	$1, -48(%ebp)
.L1537:
	movl	-48(%ebp), %eax
	.loc 1 3426 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	store_data_bypass_p, .-store_data_bypass_p
	.section	.rodata
	.type	__FUNCTION__.15474, @object
	.size	__FUNCTION__.15474, 17
__FUNCTION__.15474:
	.string	"if_test_bypass_p"
	.text
.globl if_test_bypass_p
	.type	if_test_bypass_p, @function
if_test_bypass_p:
.LFB75:
	.loc 1 3436 0
	pushl	%ebp
.LCFI250:
	movl	%esp, %ebp
.LCFI251:
	pushl	%ebx
.LCFI252:
	subl	$68, %esp
.LCFI253:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3439 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1560
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1562
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1564
.L1562:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -52(%ebp)
.L1564:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1565
.L1560:
	movl	$0, -56(%ebp)
.L1565:
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3440 0
	cmpl	$0, -20(%ebp)
	jne	.L1566
	.loc 1 3442 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L1568
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1570
.L1568:
	.loc 1 3443 0
	movl	$0, -48(%ebp)
	jmp	.L1571
.L1570:
	.loc 1 3444 0
	leal	__FUNCTION__.15474@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3444, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1566:
	.loc 1 3447 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L1572
	.loc 1 3448 0
	movl	$0, -48(%ebp)
	jmp	.L1571
.L1572:
	.loc 1 3449 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3451 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1574
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L1576
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1578
.L1576:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L1578:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1579
.L1574:
	movl	$0, -44(%ebp)
.L1579:
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3452 0
	cmpl	$0, -24(%ebp)
	je	.L1580
	.loc 1 3454 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1582
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1585
.L1582:
	.loc 1 3456 0
	movl	$0, -48(%ebp)
	jmp	.L1571
.L1580:
.LBB54:
	.loc 1 3463 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3464 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	je	.L1586
	.loc 1 3465 0
	leal	__FUNCTION__.15474@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3465, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1586:
	.loc 1 3467 0
	movl	$0, -12(%ebp)
	jmp	.L1588
.L1589:
.LBB55:
	.loc 1 3469 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3471 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L1590
	.loc 1 3474 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	je	.L1592
	.loc 1 3475 0
	leal	__FUNCTION__.15474@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3475, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1592:
	.loc 1 3477 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L1594
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L1590
.L1594:
	.loc 1 3479 0
	movl	$0, -48(%ebp)
	jmp	.L1571
.L1590:
.LBE55:
	.loc 1 3467 0
	addl	$1, -12(%ebp)
.L1588:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L1589
.L1585:
.LBE54:
	.loc 1 3483 0
	movl	$1, -48(%ebp)
.L1571:
	movl	-48(%ebp), %eax
	.loc 1 3484 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	if_test_bypass_p, .-if_test_bypass_p
	.local	changes
	.comm	changes,4,4
	.local	changes_allocated
	.comm	changes_allocated,4,4
	.local	peep2_insn_data
	.comm	peep2_insn_data,40,32
	.local	peep2_current
	.comm	peep2_current,4,4
	.comm	reload_completed,4,4
	.comm	volatile_ok,4,4
	.comm	which_alternative,4,4
	.comm	recog_data,628,32
	.comm	recog_op_alt,21600,32
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI4-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI8-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI12-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI16-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI20-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
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
	.long	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI27-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI29-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI33-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI34
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
	.long	.LCFI38-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
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
	.long	.LCFI42-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI46-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
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
	.long	.LCFI49-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
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
	.long	.LCFI52-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI53
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
	.long	.LCFI56-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
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
	.long	.LCFI60-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI61
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
	.long	.LCFI64-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI65
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
	.long	.LCFI68-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI69
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI74-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI78-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI79
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
	.long	.LCFI82-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI86-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
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
	.long	.LCFI89-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI95-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI96
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
	.long	.LCFI101-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI104-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI105
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
	.long	.LCFI108-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI114-.LFB44
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI120-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
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
	.long	.LCFI126-.LCFI124
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
	.long	.LCFI127-.LFB47
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
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI131-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI137-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
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
	.long	.LCFI140-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
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
	.long	.LCFI143-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI146-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI147
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
	.long	.LCFI152-.LFB53
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
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI156-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI160-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI164-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI168-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI170-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI171
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
	.long	.LCFI174-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI175
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
	.long	.LCFI178-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
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
	.long	.LCFI182-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
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
	.long	.LCFI186-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI187
	.byte	0x83
	.uleb128 0x4
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
	.long	.LCFI191-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI192
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI197-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI202-.LCFI198
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI203-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI204-.LCFI203
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI204
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI209-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI212-.LCFI210
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
	.long	.LCFI213-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI218-.LCFI214
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI240-.LCFI236
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI241-.LFB73
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
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI246-.LFB74
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
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI250-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI251-.LCFI250
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI253-.LCFI251
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE120:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/recog.h"
	.file 9 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 10 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../include/gnu/safe-ctype.h"
	.file 16 "../../../kgccfe/gnu/regs.h"
	.file 17 "../../../kgccfe/gnu/function.h"
	.file 18 "../../../kgccfe/gnu/flags.h"
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
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI209-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI210-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI213-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI214-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5648
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/recog.c"
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
	.long	0x19a
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0xba2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0x8d
	.long	0x8aa
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x17bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a7
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad
	.uleb128 0x4
	.long	0x1e2
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x17cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ee
	.uleb128 0x3
	.byte	0x4
	.long	0x1f4
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x206
	.uleb128 0x9
	.long	0x20b
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x390
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
	.long	0x462
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x479
	.long	0x9a
	.uleb128 0x11
	.long	0x479
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
	.long	0x390
	.uleb128 0x2
	.string	"size_t"
	.byte	0xe
	.byte	0xd6
	.long	0x462
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
	.byte	0xd
	.byte	0x3b
	.long	0x4fe
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x548
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x529
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x2
	.string	"FILE"
	.byte	0xb
	.byte	0x2e
	.long	0x579
	.uleb128 0x14
	.long	0x7f4
	.long	.LASF2
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x867
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x4e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x86d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x87d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x883
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x804
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a6
	.uleb128 0x3
	.byte	0x4
	.long	0x200
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x861
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x867
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xc
	.byte	0xbc
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81e
	.uleb128 0x3
	.byte	0x4
	.long	0x579
	.uleb128 0x10
	.long	0x87d
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x810
	.uleb128 0x10
	.long	0x893
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x8a3
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8a9
	.uleb128 0x16
	.uleb128 0x17
	.long	0xaf3
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
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
	.long	0xba2
	.long	.LASF3
	.byte	0x4
	.byte	0x4
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
	.long	0x1371
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
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
	.long	0x144b
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x462
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
	.long	0x1371
	.uleb128 0x14
	.long	0x14bf
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x3
	.byte	0x6b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x3
	.byte	0x6e
	.long	0x1466
	.uleb128 0x1c
	.long	0x159c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x4fe
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x213
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x462
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x200
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9a
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19a
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x8aa
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x144b
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x15b0
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1616
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e2
	.uleb128 0x1d
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x17a1
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x17a7
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x159c
	.uleb128 0x4
	.long	0x1616
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x5
	.byte	0x3d
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b6
	.uleb128 0x4
	.long	0x17a1
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1e5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1e5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x17a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x17a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x20d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1d98
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x161c
	.uleb128 0x3
	.byte	0x4
	.long	0x14bf
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x14ca
	.uleb128 0x10
	.long	0x17cc
	.long	0x17ad
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x17dc
	.long	0x9a
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x10
	.long	0x17f2
	.long	0x50f
	.uleb128 0x11
	.long	0x479
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x200
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xa
	.byte	0x29
	.long	0x50f
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xa
	.byte	0x34
	.long	0x1824
	.uleb128 0x10
	.long	0x1834
	.long	0x17f7
	.uleb128 0x11
	.long	0x479
	.byte	0x2
	.byte	0x0
	.uleb128 0x17
	.long	0x1861
	.string	"op_type"
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x4
	.long	0x1987
	.string	"operand_alternative"
	.byte	0x18
	.byte	0x8
	.byte	0x23
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x8
	.byte	0x26
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x8
	.byte	0x29
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"reject"
	.byte	0x8
	.byte	0x2d
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"matches"
	.byte	0x8
	.byte	0x30
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"matched"
	.byte	0x8
	.byte	0x34
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.long	.LASF9
	.byte	0x8
	.byte	0x37
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"memory_ok"
	.byte	0x8
	.byte	0x39
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"offmem_ok"
	.byte	0x8
	.byte	0x3b
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"nonoffmem_ok"
	.byte	0x8
	.byte	0x3d
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"decmem_ok"
	.byte	0x8
	.byte	0x3f
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"incmem_ok"
	.byte	0x8
	.byte	0x41
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"is_address"
	.byte	0x8
	.byte	0x43
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"anything_ok"
	.byte	0x8
	.byte	0x46
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	0x1a5d
	.long	.LASF10
	.value	0x274
	.byte	0x8
	.byte	0x9b
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x8
	.byte	0xa3
	.long	0x1a5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"operand_loc"
	.byte	0x8
	.byte	0xa6
	.long	0x1a6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x8
	.byte	0xa9
	.long	0x1a7d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"operand_mode"
	.byte	0x8
	.byte	0xac
	.long	0x1a8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x7
	.string	"operand_type"
	.byte	0x8
	.byte	0xaf
	.long	0x1a9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x7
	.string	"dup_loc"
	.byte	0x8
	.byte	0xb3
	.long	0x1aad
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x7
	.string	"dup_num"
	.byte	0x8
	.byte	0xb7
	.long	0x7f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x8
	.byte	0xc4
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x8
	.byte	0xc7
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x8
	.byte	0xca
	.long	0x20b
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x8
	.byte	0xcd
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0x10
	.long	0x1a6d
	.long	0x9a
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1a7d
	.long	0x17dc
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1a8d
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1a9d
	.long	0x8aa
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1aad
	.long	0x1834
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1abd
	.long	0x17dc
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x8
	.byte	0xd9
	.long	0x1ade
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae4
	.uleb128 0x20
	.long	0x1af9
	.byte	0x1
	.long	0x213
	.uleb128 0x21
	.long	0x9a
	.uleb128 0x21
	.long	0x8aa
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x8
	.byte	0xdb
	.long	0x1b0c
	.uleb128 0x3
	.byte	0x4
	.long	0x1b12
	.uleb128 0x20
	.long	0x1b23
	.byte	0x1
	.long	0x9a
	.uleb128 0x21
	.long	0x9a
	.uleb128 0x22
	.byte	0x0
	.uleb128 0x4
	.long	0x1b9b
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x8
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x8
	.byte	0xdf
	.long	0x1b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x8
	.byte	0xe1
	.long	0x17f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF0
	.byte	0x8
	.byte	0xe3
	.long	0x1ba0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x8
	.byte	0xe5
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x8
	.byte	0xe7
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x1abd
	.uleb128 0x9
	.long	0x8aa
	.uleb128 0x14
	.long	0x1c36
	.long	.LASF16
	.byte	0x14
	.byte	0x8
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x8
	.byte	0xf3
	.long	0x17f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x8
	.byte	0xf4
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x8
	.byte	0xf5
	.long	0x1c36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x8
	.byte	0xf6
	.long	0x1c3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x8
	.byte	0xf8
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x8
	.byte	0xf9
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x8
	.byte	0xfa
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x8
	.byte	0xfb
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x1af9
	.uleb128 0x9
	.long	0x1c40
	.uleb128 0x3
	.byte	0x4
	.long	0x1c46
	.uleb128 0x9
	.long	0x1b23
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x4cd
	.uleb128 0x4
	.long	0x1cb5
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x5
	.byte	0x35
	.long	0x1cb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x1cb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c5e
	.uleb128 0x10
	.long	0x1ccb
	.long	0x1c4b
	.uleb128 0x11
	.long	0x479
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1c5e
	.uleb128 0x3
	.byte	0x4
	.long	0x1ccb
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x5
	.byte	0x42
	.long	0x15b6
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x1616
	.uleb128 0x4
	.long	0x1d62
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x17e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1d71
	.uleb128 0x3
	.byte	0x4
	.long	0x1d08
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x6
	.byte	0x20
	.long	0x1ce7
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1cfa
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x4fe
	.uleb128 0x4
	.long	0x1e54
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1e54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1e54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x17a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x17a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1d98
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1da9
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1e54
	.uleb128 0x4
	.long	0x20d3
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x20ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF6
	.byte	0x6
	.value	0x18b
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x20d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x1d62
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x20ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x20ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x1d62
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x20f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x20d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x20d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x23
	.long	.LASF17
	.byte	0x6
	.value	0x1b7
	.long	0x20d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e66
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x17a1
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5a
	.uleb128 0x3
	.byte	0x4
	.long	0x20d3
	.uleb128 0x4
	.long	0x215d
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x11
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x11
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x11
	.byte	0x19
	.long	0x8aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x11
	.byte	0x1a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x11
	.byte	0x1b
	.long	0x215d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20f8
	.uleb128 0x14
	.long	0x21a9
	.long	.LASF18
	.byte	0x10
	.byte	0x11
	.byte	0x24
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x11
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x11
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x11
	.byte	0x28
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x11
	.byte	0x29
	.long	0x21a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2163
	.uleb128 0x4
	.long	0x22fe
	.string	"emit_status"
	.byte	0x34
	.byte	0x11
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x11
	.byte	0x3a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x11
	.byte	0x3d
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x11
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x11
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x11
	.byte	0x4a
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF18
	.byte	0x11
	.byte	0x50
	.long	0x21a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x11
	.byte	0x54
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x11
	.byte	0x58
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x11
	.byte	0x59
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x11
	.byte	0x5f
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x11
	.byte	0x65
	.long	0x804
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x11
	.byte	0x69
	.long	0x22fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x11
	.byte	0x70
	.long	0x17dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e2
	.uleb128 0x4
	.long	0x23e4
	.string	"expr_status"
	.byte	0x1c
	.byte	0x11
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x11
	.byte	0x80
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x11
	.byte	0x91
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x11
	.byte	0x97
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x11
	.byte	0x9c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x11
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x11
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x11
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x244e
	.long	.LASF20
	.byte	0x4
	.byte	0x11
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
	.uleb128 0x25
	.long	0x2e0d
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x11
	.byte	0xb5
	.long	0x2e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x11
	.byte	0xb6
	.long	0x2e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x11
	.byte	0xb7
	.long	0x2e33
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x11
	.byte	0xb8
	.long	0x2e39
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x11
	.byte	0xb9
	.long	0x2e4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x11
	.byte	0xbe
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x11
	.byte	0xc1
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x11
	.byte	0xc4
	.long	0x2e55
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x11
	.byte	0xc9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x11
	.byte	0xce
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x11
	.byte	0xd3
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x11
	.byte	0xd7
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x11
	.byte	0xdb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x11
	.byte	0xdf
	.long	0x480
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x11
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x11
	.byte	0xe8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x11
	.byte	0xec
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x11
	.byte	0xf0
	.long	0x2e72
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x11
	.byte	0xf3
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x11
	.byte	0xf8
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x11
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x11
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x11
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x11
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x11
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x11
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x11
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x11
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x11
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x11
	.value	0x121
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x11
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x11
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x11
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x11
	.value	0x133
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x11
	.value	0x138
	.long	0x4fe
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x11
	.value	0x13d
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x11
	.value	0x146
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x11
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x11
	.value	0x14d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x11
	.value	0x151
	.long	0x462
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x11
	.value	0x157
	.long	0x17dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x11
	.value	0x15a
	.long	0x2e84
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x11
	.value	0x15d
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x11
	.value	0x160
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x11
	.value	0x166
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x11
	.value	0x16a
	.long	0x215d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x11
	.value	0x16d
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x11
	.value	0x16e
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x11
	.value	0x16f
	.long	0x19a
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x11
	.value	0x170
	.long	0x1e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x11
	.value	0x173
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x11
	.value	0x175
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x11
	.value	0x178
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x11
	.value	0x17d
	.long	0x2e9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x11
	.value	0x17f
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x11
	.value	0x181
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x11
	.value	0x184
	.long	0x2eb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x11
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x26
	.string	"returns_struct"
	.byte	0x11
	.value	0x190
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"returns_pcc_struct"
	.byte	0x11
	.value	0x194
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"returns_pointer"
	.byte	0x11
	.value	0x197
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"needs_context"
	.byte	0x11
	.value	0x19a
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"calls_setjmp"
	.byte	0x11
	.value	0x19d
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"calls_longjmp"
	.byte	0x11
	.value	0x1a0
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"calls_alloca"
	.byte	0x11
	.value	0x1a4
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"calls_eh_return"
	.byte	0x11
	.value	0x1a7
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"has_nonlocal_label"
	.byte	0x11
	.value	0x1ab
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"has_nonlocal_goto"
	.byte	0x11
	.value	0x1af
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"contains_functions"
	.byte	0x11
	.value	0x1b2
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"has_computed_jump"
	.byte	0x11
	.value	0x1b5
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"is_thunk"
	.byte	0x11
	.value	0x1ba
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"all_throwers_are_sibcalls"
	.byte	0x11
	.value	0x1c1
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"instrument_entry_exit"
	.byte	0x11
	.value	0x1c5
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"arc_profile"
	.byte	0x11
	.value	0x1c8
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"profile"
	.byte	0x11
	.value	0x1cb
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"limit_stack"
	.byte	0x11
	.value	0x1cf
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"stdarg"
	.byte	0x11
	.value	0x1d2
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"x_whole_function_mode_p"
	.byte	0x11
	.value	0x1d8
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x11
	.value	0x1e1
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"uses_const_pool"
	.byte	0x11
	.value	0x1e4
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"uses_pic_offset_table"
	.byte	0x11
	.value	0x1e7
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"uses_eh_lsda"
	.byte	0x11
	.value	0x1ea
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x26
	.string	"arg_pointer_save_area_init"
	.byte	0x11
	.value	0x1ed
	.long	0x462
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.long	.LASF20
	.byte	0x11
	.value	0x1fa
	.long	0x23e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x11
	.value	0x1fe
	.long	0x213
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e0d
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e1f
	.uleb128 0x3
	.byte	0x4
	.long	0x2304
	.uleb128 0x3
	.byte	0x4
	.long	0x21af
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e3f
	.uleb128 0x3
	.byte	0x4
	.long	0x244e
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e5b
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e78
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e8a
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2ea3
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x27
	.byte	0x1
	.string	"init_recog_no_volatile"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x27
	.byte	0x1
	.string	"init_recog"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x28
	.long	0x2f43
	.byte	0x1
	.string	"recog_memoized_1"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x213
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF15
	.byte	0x1
	.byte	0x7e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x2fc8
	.byte	0x1
	.string	"check_asm_operands"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x213
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.byte	0x8a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF21
	.byte	0x1
	.byte	0x8c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF22
	.byte	0x1
	.byte	0x8d
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF12
	.byte	0x1
	.byte	0x8e
	.long	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x3012
	.long	.LASF23
	.byte	0x10
	.byte	0x1
	.byte	0xb7
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x1
	.byte	0xb8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"old_code"
	.byte	0x1
	.byte	0xb9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"loc"
	.byte	0x1
	.byte	0xba
	.long	0x17dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"old"
	.byte	0x1
	.byte	0xbb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x1
	.byte	0xbc
	.long	0x2fc8
	.uleb128 0x28
	.long	0x30a2
	.byte	0x1
	.string	"validate_change"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	0x213
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.byte	0xd7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"loc"
	.byte	0x1
	.byte	0xd8
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.byte	0xd9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"in_group"
	.byte	0x1
	.byte	0xda
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"old"
	.byte	0x1
	.byte	0xdc
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF25
	.long	0x5102
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11320
	.byte	0x0
	.uleb128 0x2f
	.long	0x3141
	.byte	0x1
	.string	"insn_invalid_p"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0x213
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x111
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x113
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"num_clobbers"
	.byte	0x1
	.value	0x114
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"icode"
	.byte	0x1
	.value	0x117
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"is_asm"
	.byte	0x1
	.value	0x11b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x31
	.string	"newpat"
	.byte	0x1
	.value	0x129
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.string	"num_changes_pending"
	.byte	0x1
	.value	0x144
	.byte	0x1
	.long	0x213
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.long	0x3241
	.byte	0x1
	.string	"apply_change_group"
	.byte	0x1
	.value	0x14d
	.byte	0x1
	.long	0x213
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x14e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"last_validated"
	.byte	0x1
	.value	0x14f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x3228
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x15c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x16a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x31
	.string	"newpat"
	.byte	0x1
	.value	0x175
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x17b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x19c
	.long	0x20d9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.string	"num_validated_changes"
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0x213
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.long	0x32af
	.byte	0x1
	.string	"cancel_changes"
	.byte	0x1
	.value	0x1bb
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x1ba
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1bc
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x3443
	.string	"validate_replace_rtx_1"
	.byte	0x1
	.value	0x1d0
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x1ce
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x1cf
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x1cf
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x1cf
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1d1
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x1d1
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.value	0x1d2
	.long	0x200
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1d3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x1d4
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"op0_mode"
	.byte	0x1
	.value	0x1d5
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"prev_changes"
	.byte	0x1
	.value	0x1d6
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"new"
	.byte	0x1
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"wanted_mode"
	.byte	0x1
	.value	0x24e
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"is_mode"
	.byte	0x1
	.value	0x24f
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"pos"
	.byte	0x1
	.value	0x250
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x33f9
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x254
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x33
	.long	0x3416
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x25b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x265
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"newmem"
	.byte	0x1
	.value	0x266
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x34b5
	.byte	0x1
	.string	"validate_replace_rtx_subexp"
	.byte	0x1
	.value	0x286
	.byte	0x1
	.long	0x213
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x285
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x285
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x285
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x285
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2f
	.long	0x3511
	.byte	0x1
	.string	"validate_replace_rtx"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	0x213
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x290
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x290
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x290
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0x356f
	.byte	0x1
	.string	"validate_replace_rtx_group"
	.byte	0x1
	.value	0x29b
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x29a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x29a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x29a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xd
	.long	0x35bf
	.string	"validate_replace_src_data"
	.byte	0xc
	.byte	0x1
	.value	0x2a1
	.uleb128 0x23
	.long	.LASF26
	.byte	0x1
	.value	0x2a2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to"
	.byte	0x1
	.value	0x2a3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF15
	.byte	0x1
	.value	0x2a4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x37
	.long	0x3616
	.string	"validate_replace_src_1"
	.byte	0x1
	.value	0x2ab
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.string	"x"
	.byte	0x1
	.value	0x2a9
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"data"
	.byte	0x1
	.value	0x2aa
	.long	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x2ac
	.long	0x3616
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x356f
	.uleb128 0x35
	.long	0x3687
	.byte	0x1
	.string	"validate_replace_src_group"
	.byte	0x1
	.value	0x2b8
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x2b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x2b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x2b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x2b9
	.long	0x356f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	0x36e3
	.byte	0x1
	.string	"validate_replace_src"
	.byte	0x1
	.value	0x2c6
	.byte	0x1
	.long	0x213
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x2c5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0x2c5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x2c5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x38
	.long	0x37a4
	.string	"find_single_use_1"
	.byte	0x1
	.value	0x306
	.byte	0x1
	.long	0x17dc
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x36
	.string	"dest"
	.byte	0x1
	.value	0x304
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"loc"
	.byte	0x1
	.value	0x305
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x307
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x308
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF28
	.byte	0x1
	.value	0x309
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"this_result"
	.byte	0x1
	.value	0x30a
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x30b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.value	0x30c
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x34a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x382c
	.byte	0x1
	.string	"find_single_use"
	.byte	0x1
	.value	0x378
	.byte	0x1
	.long	0x17dc
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.string	"dest"
	.byte	0x1
	.value	0x375
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x376
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"ploc"
	.byte	0x1
	.value	0x377
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF17
	.byte	0x1
	.value	0x379
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF28
	.byte	0x1
	.value	0x37a
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"link"
	.byte	0x1
	.value	0x37b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x38c4
	.byte	0x1
	.string	"general_operand"
	.byte	0x1
	.value	0x3b9
	.byte	0x1
	.long	0x213
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x3b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x3b8
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x3ba
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"win"
	.byte	0x1
	.value	0x413
	.long	.L340
	.uleb128 0x33
	.long	0x38ac
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"sub"
	.byte	0x1
	.value	0x3db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x3ff
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x390c
	.byte	0x1
	.string	"address_operand"
	.byte	0x1
	.value	0x421
	.byte	0x1
	.long	0x213
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x41f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x420
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x396e
	.byte	0x1
	.string	"register_operand"
	.byte	0x1
	.value	0x437
	.byte	0x1
	.long	0x213
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x435
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x436
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"sub"
	.byte	0x1
	.value	0x43d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x39bd
	.byte	0x1
	.string	"pmode_register_operand"
	.byte	0x1
	.value	0x46c
	.byte	0x1
	.long	0x213
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x46a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x46b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3a05
	.byte	0x1
	.string	"scratch_operand"
	.byte	0x1
	.value	0x477
	.byte	0x1
	.long	0x213
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x475
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x476
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3a4f
	.byte	0x1
	.string	"immediate_operand"
	.byte	0x1
	.value	0x489
	.byte	0x1
	.long	0x213
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x487
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x488
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3a99
	.byte	0x1
	.string	"const_int_operand"
	.byte	0x1
	.value	0x4ab
	.byte	0x1
	.long	0x213
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4a9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x4aa
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3ae6
	.byte	0x1
	.string	"const_double_operand"
	.byte	0x1
	.value	0x4bd
	.byte	0x1
	.long	0x213
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4bb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x4bc
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3b33
	.byte	0x1
	.string	"nonimmediate_operand"
	.byte	0x1
	.value	0x4d0
	.byte	0x1
	.long	0x213
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4ce
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x4cf
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3b7d
	.byte	0x1
	.string	"nonmemory_operand"
	.byte	0x1
	.value	0x4da
	.byte	0x1
	.long	0x213
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4d8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x4d9
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3bda
	.byte	0x1
	.string	"push_operand"
	.byte	0x1
	.value	0x512
	.byte	0x1
	.long	0x213
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x510
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x511
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"rounded_size"
	.byte	0x1
	.value	0x513
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	0x3c1e
	.byte	0x1
	.string	"pop_operand"
	.byte	0x1
	.value	0x542
	.byte	0x1
	.long	0x213
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x540
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x541
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3c75
	.byte	0x1
	.string	"memory_address_p"
	.byte	0x1
	.value	0x557
	.byte	0x1
	.long	0x213
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x555
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"addr"
	.byte	0x1
	.value	0x556
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"win"
	.byte	0x1
	.value	0x55e
	.long	.L544
	.byte	0x0
	.uleb128 0x2f
	.long	0x3ccd
	.byte	0x1
	.string	"memory_operand"
	.byte	0x1
	.value	0x56c
	.byte	0x1
	.long	0x213
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x56a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x56b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"inner"
	.byte	0x1
	.value	0x56d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x3d40
	.byte	0x1
	.string	"indirect_operand"
	.byte	0x1
	.value	0x585
	.byte	0x1
	.long	0x213
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x583
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x584
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x58a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"inner"
	.byte	0x1
	.value	0x58b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3d8c
	.byte	0x1
	.string	"comparison_operator"
	.byte	0x1
	.value	0x5a8
	.byte	0x1
	.long	0x213
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x5a6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x5a7
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3e22
	.byte	0x1
	.string	"asm_noperands"
	.byte	0x1
	.value	0x5b4
	.byte	0x1
	.long	0x213
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x36
	.string	"body"
	.byte	0x1
	.value	0x5b3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x3e0a
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5c6
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"n_sets"
	.byte	0x1
	.value	0x5c7
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x31
	.string	"elt"
	.byte	0x1
	.value	0x5da
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5ec
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3f8b
	.byte	0x1
	.string	"decode_asm_operands"
	.byte	0x1
	.value	0x60d
	.byte	0x1
	.long	0x200
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x36
	.string	"body"
	.byte	0x1
	.value	0x608
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF22
	.byte	0x1
	.value	0x609
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"operand_locs"
	.byte	0x1
	.value	0x60a
	.long	0x3f8b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF12
	.byte	0x1
	.value	0x60b
	.long	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.string	"modes"
	.byte	0x1
	.value	0x60c
	.long	0x3f91
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x60e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x60f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"template"
	.byte	0x1
	.value	0x610
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0x3ef4
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x34
	.long	.LASF29
	.byte	0x1
	.value	0x614
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	0x3f11
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x34
	.long	.LASF29
	.byte	0x1
	.value	0x633
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0x3f62
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x34
	.long	.LASF29
	.byte	0x1
	.value	0x64b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"nparallel"
	.byte	0x1
	.value	0x64c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"nin"
	.byte	0x1
	.value	0x64d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"nout"
	.byte	0x1
	.value	0x64e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x34
	.long	.LASF29
	.byte	0x1
	.value	0x677
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.string	"nin"
	.byte	0x1
	.value	0x678
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17dc
	.uleb128 0x3
	.byte	0x4
	.long	0x8aa
	.uleb128 0x2f
	.long	0x4018
	.byte	0x1
	.string	"asm_operand_ok"
	.byte	0x1
	.value	0x693
	.byte	0x1
	.long	0x213
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x691
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x692
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF28
	.byte	0x1
	.value	0x694
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x4007
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x69c
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13288
	.byte	0x0
	.uleb128 0x2f
	.long	0x4076
	.byte	0x1
	.string	"find_constant_term_loc"
	.byte	0x1
	.value	0x760
	.byte	0x1
	.long	0x17dc
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.value	0x75f
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x761
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"code"
	.byte	0x1
	.value	0x762
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x40b4
	.byte	0x1
	.string	"offsettable_memref_p"
	.byte	0x1
	.value	0x796
	.byte	0x1
	.long	0x213
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x795
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x40fc
	.byte	0x1
	.string	"offsettable_nonstrict_memref_p"
	.byte	0x1
	.value	0x7a1
	.byte	0x1
	.long	0x213
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x7a0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x41d7
	.byte	0x1
	.string	"offsettable_address_p"
	.byte	0x1
	.value	0x7b5
	.byte	0x1
	.long	0x213
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x36
	.string	"strictp"
	.byte	0x1
	.value	0x7b2
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x7b3
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"y"
	.byte	0x1
	.value	0x7b4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"ycode"
	.byte	0x1
	.value	0x7b6
	.long	0xba2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"z"
	.byte	0x1
	.value	0x7b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"y1"
	.byte	0x1
	.value	0x7b8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"y2"
	.byte	0x1
	.value	0x7b9
	.long	0x17dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"addressp"
	.byte	0x1
	.value	0x7ba
	.long	0x41ec
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"mode_sz"
	.byte	0x1
	.value	0x7bc
	.long	0x462
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.string	"good"
	.byte	0x1
	.value	0x7d3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x41ec
	.byte	0x1
	.long	0x213
	.uleb128 0x21
	.long	0x8aa
	.uleb128 0x21
	.long	0x9a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x41d7
	.uleb128 0x2f
	.long	0x423e
	.byte	0x1
	.string	"mode_dependent_address_p"
	.byte	0x1
	.value	0x7fe
	.byte	0x1
	.long	0x213
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x36
	.string	"addr"
	.byte	0x1
	.value	0x7fd
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"win"
	.byte	0x1
	.value	0x802
	.byte	0x0
	.uleb128 0x2f
	.long	0x42a8
	.byte	0x1
	.string	"mode_independent_operand"
	.byte	0x1
	.value	0x80d
	.byte	0x1
	.long	0x213
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x80c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x80b
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"addr"
	.byte	0x1
	.value	0x80e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3a
	.string	"lose"
	.byte	0x1
	.value	0x81a
	.byte	0x0
	.uleb128 0x35
	.long	0x42e2
	.byte	0x1
	.string	"extract_insn_cached"
	.byte	0x1
	.value	0x825
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x824
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x4336
	.byte	0x1
	.string	"extract_constrain_insn_cached"
	.byte	0x1
	.value	0x830
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x82f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13808
	.byte	0x0
	.uleb128 0x2f
	.long	0x437d
	.byte	0x1
	.string	"constrain_operands_cached"
	.byte	0x1
	.value	0x83a
	.byte	0x1
	.long	0x213
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x36
	.string	"strict"
	.byte	0x1
	.value	0x839
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x443d
	.byte	0x1
	.string	"extract_insn"
	.byte	0x1
	.value	0x846
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0x845
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x847
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"icode"
	.byte	0x1
	.value	0x848
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF21
	.byte	0x1
	.value	0x849
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x84a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"asm_insn"
	.byte	0x1
	.value	0x868
	.long	.L956
	.uleb128 0x39
	.string	"normal_insn"
	.byte	0x1
	.value	0x883
	.long	.L953
	.uleb128 0x33
	.long	0x442c
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x879
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13842
	.byte	0x0
	.uleb128 0x35
	.long	0x44de
	.byte	0x1
	.string	"preprocess_constraints"
	.byte	0x1
	.value	0x8a9
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x8aa
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x8af
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"op_alt"
	.byte	0x1
	.value	0x8b0
	.long	0x44de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x8b1
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x8c4
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x8e3
	.long	0x567
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1861
	.uleb128 0x3b
	.long	0x4513
	.long	.LASF30
	.byte	0x8
	.byte	0x1
	.value	0x939
	.uleb128 0xe
	.string	"this"
	.byte	0x1
	.value	0x93a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"other"
	.byte	0x1
	.value	0x93a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2f
	.long	0x46fb
	.byte	0x1
	.string	"constrain_operands"
	.byte	0x1
	.value	0x940
	.byte	0x1
	.long	0x213
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x36
	.string	"strict"
	.byte	0x1
	.value	0x93f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF12
	.byte	0x1
	.value	0x941
	.long	0x1a7d
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x31
	.string	"matching_operands"
	.byte	0x1
	.value	0x942
	.long	0x46fb
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x34
	.long	.LASF9
	.byte	0x1
	.value	0x943
	.long	0x46fb
	.byte	0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x944
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x946
	.long	0x470b
	.byte	0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x31
	.string	"funny_match_index"
	.byte	0x1
	.value	0x947
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x31
	.string	"opno"
	.byte	0x1
	.value	0x955
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"lose"
	.byte	0x1
	.value	0x956
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.long	0x46ce
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0x95b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x95c
	.long	0x8aa
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x95d
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x95e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"win"
	.byte	0x1
	.value	0x95f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x960
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	0x46b4
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x997
	.long	0x567
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"match"
	.byte	0x1
	.value	0x998
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x9a1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"op2"
	.byte	0x1
	.value	0x9a2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0xa3d
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x31
	.string	"opno"
	.byte	0x1
	.value	0xa73
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"eopno"
	.byte	0x1
	.value	0xa73
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x470b
	.long	0x213
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x471b
	.long	0x44e4
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x2f
	.long	0x47aa
	.byte	0x1
	.string	"reg_fits_class_p"
	.byte	0x1
	.value	0xab0
	.byte	0x1
	.long	0x213
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x30
	.long	.LASF11
	.byte	0x1
	.value	0xaac
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF8
	.byte	0x1
	.value	0xaad
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0xaae
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0xaaf
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xab1
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x31
	.string	"sr"
	.byte	0x1
	.value	0xab6
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x4816
	.string	"split_insn"
	.byte	0x1
	.value	0xac8
	.byte	0x1
	.long	0x9a
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x30
	.long	.LASF15
	.byte	0x1
	.value	0xac7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0xac9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x34
	.long	.LASF6
	.byte	0x1
	.value	0xadd
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"last"
	.byte	0x1
	.value	0xade
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x4906
	.byte	0x1
	.string	"split_all_insns"
	.byte	0x1
	.value	0xb00
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x36
	.string	"upd_life"
	.byte	0x1
	.value	0xaff
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"blocks"
	.byte	0x1
	.value	0xb01
	.long	0x1d62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"changed"
	.byte	0x1
	.value	0xb02
	.long	0x2ebd
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0xb03
	.long	0x20d9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0x48db
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x34
	.long	.LASF15
	.byte	0x1
	.value	0xb0b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF17
	.byte	0x1
	.value	0xb0b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"finish"
	.byte	0x1
	.value	0xb0c
	.long	0x2ebd
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2d
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x31
	.string	"last"
	.byte	0x1
	.value	0xb10
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x31
	.string	"old_last_basic_block"
	.byte	0x1
	.value	0xb28
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x4952
	.byte	0x1
	.string	"split_all_insns_noflow"
	.byte	0x1
	.value	0xb40
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x34
	.long	.LASF17
	.byte	0x1
	.value	0xb41
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF15
	.byte	0x1
	.value	0xb41
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x4986
	.long	.LASF32
	.byte	0x8
	.byte	0x1
	.value	0xb4d
	.uleb128 0x23
	.long	.LASF15
	.byte	0x1
	.value	0xb4e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"live_before"
	.byte	0x1
	.value	0xb4f
	.long	0x1d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2f
	.long	0x49ce
	.byte	0x1
	.string	"peep2_next_insn"
	.byte	0x1
	.value	0xb61
	.byte	0x1
	.long	0x9a
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0xb60
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14937
	.byte	0x0
	.uleb128 0x2f
	.long	0x4a2a
	.byte	0x1
	.string	"peep2_regno_dead_p"
	.byte	0x1
	.value	0xb75
	.byte	0x1
	.long	0x213
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x36
	.string	"ofs"
	.byte	0x1
	.value	0xb73
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0xb74
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14955
	.byte	0x0
	.uleb128 0x2f
	.long	0x4aa0
	.byte	0x1
	.string	"peep2_reg_dead_p"
	.byte	0x1
	.value	0xb89
	.byte	0x1
	.long	0x213
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x36
	.string	"ofs"
	.byte	0x1
	.value	0xb87
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"reg"
	.byte	0x1
	.value	0xb88
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xb8a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0xb8a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF25
	.long	0x50a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14976
	.byte	0x0
	.uleb128 0x2f
	.long	0x4c5b
	.byte	0x1
	.string	"peep2_find_free_register"
	.byte	0x1
	.value	0xbaf
	.byte	0x1
	.long	0x9a
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0xbab
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"to"
	.byte	0x1
	.value	0xbab
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"class_str"
	.byte	0x1
	.value	0xbac
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0xbad
	.long	0x8aa
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.string	"reg_set"
	.byte	0x1
	.value	0xbae
	.long	0x4c5b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0xbb1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"live"
	.byte	0x1
	.value	0xbb2
	.long	0x1810
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xbb3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0x4b71
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x34
	.long	.LASF33
	.byte	0x1
	.value	0xbc1
	.long	0x4c61
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x33
	.long	0x4bdf
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x31
	.string	"this_live"
	.byte	0x1
	.value	0xbc5
	.long	0x1810
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	0x4bb1
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x34
	.long	.LASF33
	.byte	0x1
	.value	0xbcb
	.long	0x4c61
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x34
	.long	.LASF33
	.byte	0x1
	.value	0xbcc
	.long	0x4c61
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"scan_fp_"
	.byte	0x1
	.value	0xbcc
	.long	0x4c61
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x4c31
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x31
	.string	"raw_regno"
	.byte	0x1
	.value	0xbd4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xbd4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"success"
	.byte	0x1
	.value	0xbd4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0xbd4
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.string	"search_ofs"
	.byte	0x1
	.value	0xbb0
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	search_ofs.15008
	.uleb128 0x2e
	.long	.LASF25
	.long	0x509f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15012
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1810
	.uleb128 0x3
	.byte	0x4
	.long	0x17f7
	.uleb128 0x35
	.long	0x4e96
	.byte	0x1
	.string	"peephole2_optimize"
	.byte	0x1
	.value	0xc12
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.string	"dump_file"
	.byte	0x1
	.value	0xc11
	.long	0x4e96
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"rs_heads"
	.byte	0x1
	.value	0xc13
	.long	0x4e9c
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.long	.LASF15
	.byte	0x1
	.value	0xc14
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0xc14
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"live"
	.byte	0x1
	.value	0xc15
	.long	0x1d8a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xc16
	.long	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0xc17
	.long	0x20d9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"do_cleanup_cfg"
	.byte	0x1
	.value	0xc1c
	.long	0x2ebd
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x31
	.string	"do_rebuild_jump_labels"
	.byte	0x1
	.value	0xc1d
	.long	0x2ebd
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x33
	.long	0x4e85
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x31
	.string	"pbi"
	.byte	0x1
	.value	0xc2e
	.long	0x4ec3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x31
	.string	"try"
	.byte	0x1
	.value	0xc47
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"before_try"
	.byte	0x1
	.value	0xc47
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc47
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"match_len"
	.byte	0x1
	.value	0xc48
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0xc49
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"was_call"
	.byte	0x1
	.value	0xc4a
	.long	0x2ebd
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.long	0x4e2b
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0xc60
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"old_insn"
	.byte	0x1
	.value	0xc61
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"new_insn"
	.byte	0x1
	.value	0xc61
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0xc61
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x31
	.string	"eh_edge"
	.byte	0x1
	.value	0xca7
	.long	0x1e5a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x31
	.string	"nfte"
	.byte	0x1
	.value	0xcbc
	.long	0x1e5a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"nehe"
	.byte	0x1
	.value	0xcbc
	.long	0x1e5a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"flags"
	.byte	0x1
	.value	0xcbd
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x508a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15199
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56d
	.uleb128 0x10
	.long	0x4eac
	.long	0x1d77
	.uleb128 0x11
	.long	0x479
	.byte	0x5
	.byte	0x0
	.uleb128 0x1e
	.string	"propagate_block_info"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4eac
	.uleb128 0x2f
	.long	0x4f96
	.byte	0x1
	.string	"store_data_bypass_p"
	.byte	0x1
	.value	0xd39
	.byte	0x1
	.long	0x213
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0xd38
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"in_insn"
	.byte	0x1
	.value	0xd38
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"out_set"
	.byte	0x1
	.value	0xd3a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"in_set"
	.byte	0x1
	.value	0xd3a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x4f85
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x31
	.string	"out_pat"
	.byte	0x1
	.value	0xd4b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xd4c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xd54
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x5075
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15397
	.byte	0x0
	.uleb128 0x2f
	.long	0x5060
	.byte	0x1
	.string	"if_test_bypass_p"
	.byte	0x1
	.value	0xd6c
	.byte	0x1
	.long	0x213
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x30
	.long	.LASF34
	.byte	0x1
	.value	0xd6b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"in_insn"
	.byte	0x1
	.value	0xd6b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"out_set"
	.byte	0x1
	.value	0xd6d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"in_set"
	.byte	0x1
	.value	0xd6d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x504f
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x31
	.string	"out_pat"
	.byte	0x1
	.value	0xd84
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xd85
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xd8d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF25
	.long	0x5070
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15474
	.byte	0x0
	.uleb128 0x10
	.long	0x5070
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x5060
	.uleb128 0x9
	.long	0x893
	.uleb128 0x10
	.long	0x508a
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x12
	.byte	0x0
	.uleb128 0x9
	.long	0x507a
	.uleb128 0x10
	.long	0x509f
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.byte	0x0
	.uleb128 0x9
	.long	0x508f
	.uleb128 0x9
	.long	0x5060
	.uleb128 0x9
	.long	0x507a
	.uleb128 0x10
	.long	0x50be
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x50ae
	.uleb128 0x10
	.long	0x50d3
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x50c3
	.uleb128 0x10
	.long	0x50e8
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x9
	.long	0x50d8
	.uleb128 0x10
	.long	0x50fd
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x50ed
	.uleb128 0x9
	.long	0x50ae
	.uleb128 0x2c
	.string	"changes"
	.byte	0x1
	.byte	0xbe
	.long	0x511c
	.byte	0x5
	.byte	0x3
	.long	changes
	.uleb128 0x3
	.byte	0x4
	.long	0x3012
	.uleb128 0x2c
	.string	"changes_allocated"
	.byte	0x1
	.byte	0xbf
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	changes_allocated
	.uleb128 0x2c
	.string	"num_changes"
	.byte	0x1
	.byte	0xc1
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	num_changes
	.uleb128 0x10
	.long	0x516a
	.long	0x4952
	.uleb128 0x11
	.long	0x479
	.byte	0x4
	.byte	0x0
	.uleb128 0x34
	.long	.LASF32
	.byte	0x1
	.value	0xb52
	.long	0x515a
	.byte	0x5
	.byte	0x3
	.long	peep2_insn_data
	.uleb128 0x31
	.string	"peep2_current"
	.byte	0x1
	.value	0xb53
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	peep2_current
	.uleb128 0x10
	.long	0x51a8
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"call_used_regs"
	.byte	0xa
	.value	0x196
	.long	0x5198
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"mips_abi"
	.byte	0x9
	.value	0x3ca
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x51fb
	.long	0x20b
	.uleb128 0x3e
	.uleb128 0x11
	.long	0x479
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"mips_hard_regno_mode_ok"
	.byte	0x9
	.value	0x778
	.long	0x51ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5228
	.long	0x21a
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x3c
	.string	"mips_regno_to_class"
	.byte	0x9
	.value	0x85d
	.long	0x5246
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x521d
	.uleb128 0x10
	.long	0x525b
	.long	0x21a
	.uleb128 0x11
	.long	0x479
	.byte	0xff
	.byte	0x0
	.uleb128 0x3c
	.string	"mips_char_to_class"
	.byte	0x9
	.value	0x8b0
	.long	0x524b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5288
	.long	0x4b7
	.uleb128 0x11
	.long	0x479
	.byte	0xff
	.byte	0x0
	.uleb128 0x3d
	.string	"_sch_istable"
	.byte	0xf
	.byte	0x48
	.long	0x529e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x5278
	.uleb128 0x10
	.long	0x52b3
	.long	0xaf3
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF3
	.byte	0x4
	.byte	0x34
	.long	0x52c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x52a3
	.uleb128 0x10
	.long	0x52d5
	.long	0x4a6
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x3d
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x52e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x52c5
	.uleb128 0x10
	.long	0x52fd
	.long	0x4b7
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x3d
	.string	"mode_bitsize"
	.byte	0x4
	.byte	0x69
	.long	0x5313
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x52ed
	.uleb128 0x10
	.long	0x5328
	.long	0x4a6
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3d
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x533c
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x5318
	.uleb128 0x10
	.long	0x5351
	.long	0x200
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3d
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x5365
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x5341
	.uleb128 0x10
	.long	0x537a
	.long	0x20b
	.uleb128 0x11
	.long	0x479
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3d
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x538d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x536a
	.uleb128 0x10
	.long	0x53a2
	.long	0x9a
	.uleb128 0x11
	.long	0x479
	.byte	0x80
	.byte	0x0
	.uleb128 0x3c
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x5392
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x53d0
	.long	0x9a
	.uleb128 0x11
	.long	0x479
	.byte	0x2
	.uleb128 0x11
	.long	0x479
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x53ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x53f9
	.long	0x9a
	.uleb128 0x11
	.long	0x479
	.byte	0xa
	.byte	0x0
	.uleb128 0x3c
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x53e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"reload_completed"
	.byte	0x1
	.byte	0x61
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reload_completed
	.uleb128 0x3c
	.string	"reload_in_progress"
	.byte	0x3
	.value	0x768
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"fixed_regs"
	.byte	0xa
	.value	0x18b
	.long	0x5198
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x546f
	.long	0x213
	.uleb128 0x11
	.long	0x479
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"reg_alloc_order"
	.byte	0xa
	.value	0x1c2
	.long	0x545f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x549f
	.long	0x17f7
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.uleb128 0x11
	.long	0x479
	.byte	0x2
	.byte	0x0
	.uleb128 0x3c
	.string	"reg_class_contents"
	.byte	0xa
	.value	0x1cb
	.long	0x5489
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x54d2
	.long	0x21a
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.uleb128 0x11
	.long	0x479
	.byte	0x18
	.byte	0x0
	.uleb128 0x3c
	.string	"reg_class_subunion"
	.byte	0xa
	.value	0x1dc
	.long	0x54bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"volatile_ok"
	.byte	0x1
	.byte	0x50
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	volatile_ok
	.uleb128 0x40
	.string	"which_alternative"
	.byte	0x1
	.byte	0x5b
	.long	0x213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	which_alternative
	.uleb128 0x41
	.long	.LASF10
	.byte	0x1
	.byte	0x52
	.long	0x1987
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	recog_data
	.uleb128 0x10
	.long	0x5551
	.long	0x1861
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.uleb128 0x11
	.long	0x479
	.byte	0x1d
	.byte	0x0
	.uleb128 0x40
	.string	"recog_op_alt"
	.byte	0x1
	.byte	0x56
	.long	0x553b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	recog_op_alt
	.uleb128 0x10
	.long	0x5577
	.long	0x1ba5
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF16
	.byte	0x8
	.byte	0xfe
	.long	0x5584
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x556c
	.uleb128 0x3d
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x55b3
	.long	0x161c
	.uleb128 0x11
	.long	0x479
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x55a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"regs_ever_live"
	.byte	0x10
	.byte	0x9f
	.long	0x5198
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"cfun"
	.byte	0x11
	.value	0x202
	.long	0x2e55
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_pic"
	.byte	0x12
	.value	0x1df
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"frame_pointer_needed"
	.byte	0x12
	.value	0x266
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_non_call_exceptions"
	.byte	0x12
	.value	0x2ae
	.long	0x213
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x30
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5a4
	.value	0x2
	.long	.Ldebug_info0
	.long	0x564c
	.long	0x2ec6
	.string	"init_recog_no_volatile"
	.long	0x2eee
	.string	"init_recog"
	.long	0x2f0a
	.string	"recog_memoized_1"
	.long	0x2f43
	.string	"check_asm_operands"
	.long	0x301d
	.string	"validate_change"
	.long	0x30a2
	.string	"insn_invalid_p"
	.long	0x3141
	.string	"num_changes_pending"
	.long	0x316b
	.string	"apply_change_group"
	.long	0x3241
	.string	"num_validated_changes"
	.long	0x326d
	.string	"cancel_changes"
	.long	0x3443
	.string	"validate_replace_rtx_subexp"
	.long	0x34b5
	.string	"validate_replace_rtx"
	.long	0x3511
	.string	"validate_replace_rtx_group"
	.long	0x361c
	.string	"validate_replace_src_group"
	.long	0x3687
	.string	"validate_replace_src"
	.long	0x37a4
	.string	"find_single_use"
	.long	0x382c
	.string	"general_operand"
	.long	0x38c4
	.string	"address_operand"
	.long	0x390c
	.string	"register_operand"
	.long	0x396e
	.string	"pmode_register_operand"
	.long	0x39bd
	.string	"scratch_operand"
	.long	0x3a05
	.string	"immediate_operand"
	.long	0x3a4f
	.string	"const_int_operand"
	.long	0x3a99
	.string	"const_double_operand"
	.long	0x3ae6
	.string	"nonimmediate_operand"
	.long	0x3b33
	.string	"nonmemory_operand"
	.long	0x3b7d
	.string	"push_operand"
	.long	0x3bda
	.string	"pop_operand"
	.long	0x3c1e
	.string	"memory_address_p"
	.long	0x3c75
	.string	"memory_operand"
	.long	0x3ccd
	.string	"indirect_operand"
	.long	0x3d40
	.string	"comparison_operator"
	.long	0x3d8c
	.string	"asm_noperands"
	.long	0x3e22
	.string	"decode_asm_operands"
	.long	0x3f97
	.string	"asm_operand_ok"
	.long	0x4018
	.string	"find_constant_term_loc"
	.long	0x4076
	.string	"offsettable_memref_p"
	.long	0x40b4
	.string	"offsettable_nonstrict_memref_p"
	.long	0x40fc
	.string	"offsettable_address_p"
	.long	0x41f2
	.string	"mode_dependent_address_p"
	.long	0x423e
	.string	"mode_independent_operand"
	.long	0x42a8
	.string	"extract_insn_cached"
	.long	0x42e2
	.string	"extract_constrain_insn_cached"
	.long	0x4336
	.string	"constrain_operands_cached"
	.long	0x437d
	.string	"extract_insn"
	.long	0x443d
	.string	"preprocess_constraints"
	.long	0x4513
	.string	"constrain_operands"
	.long	0x471b
	.string	"reg_fits_class_p"
	.long	0x4816
	.string	"split_all_insns"
	.long	0x4906
	.string	"split_all_insns_noflow"
	.long	0x4986
	.string	"peep2_next_insn"
	.long	0x49ce
	.string	"peep2_regno_dead_p"
	.long	0x4a2a
	.string	"peep2_reg_dead_p"
	.long	0x4aa0
	.string	"peep2_find_free_register"
	.long	0x4c67
	.string	"peephole2_optimize"
	.long	0x4ec9
	.string	"store_data_bypass_p"
	.long	0x4f96
	.string	"if_test_bypass_p"
	.long	0x540e
	.string	"reload_completed"
	.long	0x54ef
	.string	"volatile_ok"
	.long	0x5509
	.string	"which_alternative"
	.long	0x5529
	.string	"recog_data"
	.long	0x5551
	.string	"recog_op_alt"
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
.LASF34:
	.string	"out_insn"
.LASF17:
	.string	"next"
.LASF15:
	.string	"insn"
.LASF16:
	.string	"insn_data"
.LASF29:
	.string	"asmop"
.LASF24:
	.string	"object"
.LASF32:
	.string	"peep2_insn_data"
.LASF0:
	.string	"mode"
.LASF26:
	.string	"from"
.LASF8:
	.string	"class"
.LASF12:
	.string	"constraints"
.LASF11:
	.string	"operand"
.LASF5:
	.string	"offset"
.LASF33:
	.string	"scan_tp_"
.LASF4:
	.string	"mem_attrs"
.LASF9:
	.string	"earlyclobber"
.LASF14:
	.string	"n_alternatives"
.LASF30:
	.string	"funny_match"
.LASF7:
	.string	"constraint"
.LASF28:
	.string	"result"
.LASF10:
	.string	"recog_data"
.LASF18:
	.string	"sequence_stack"
.LASF25:
	.string	"__FUNCTION__"
.LASF6:
	.string	"first"
.LASF13:
	.string	"n_operands"
.LASF27:
	.string	"new_mode"
.LASF2:
	.string	"_IO_FILE"
.LASF23:
	.string	"change_t"
.LASF21:
	.string	"noperands"
.LASF22:
	.string	"operands"
.LASF3:
	.string	"mode_class"
.LASF31:
	.string	"regno"
.LASF20:
	.string	"function_frequency"
.LASF1:
	.string	"unsigned int"
.LASF19:
	.string	"sequence_rtl_expr"
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
