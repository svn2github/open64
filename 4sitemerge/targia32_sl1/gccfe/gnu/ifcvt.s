	.file	"ifcvt.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	count_bb_insns, @function
count_bb_insns:
.LFB15:
	.file 1 "../../../kgccfe/gnu/ifcvt.c"
	.loc 1 117 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$16, %esp
.LCFI2:
	.loc 1 118 0
	movl	$0, -8(%ebp)
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L2:
	.loc 1 123 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L3
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L5
.L3:
	.loc 1 124 0
	addl	$1, -8(%ebp)
.L5:
	.loc 1 126 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L6
	.loc 1 128 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 129 0
	jmp	.L2
.L6:
	.loc 1 131 0
	movl	-8(%ebp), %eax
	.loc 1 132 0
	leave
	ret
.LFE15:
	.size	count_bb_insns, .-count_bb_insns
	.type	first_active_insn, @function
first_active_insn:
.LFB16:
	.loc 1 139 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$20, %esp
.LCFI5:
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 142 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L15
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L12
	.loc 1 145 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L12:
	.loc 1 146 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 149 0
	jmp	.L15
.L16:
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L17
	.loc 1 152 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L17:
	.loc 1 153 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L15:
	.loc 1 149 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L16
	.loc 1 156 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L20
	.loc 1 157 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L20:
	.loc 1 159 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L14:
	movl	-20(%ebp), %eax
	.loc 1 160 0
	leave
	ret
.LFE16:
	.size	first_active_insn, .-first_active_insn
	.type	last_active_insn, @function
last_active_insn:
.LFB17:
	.loc 1 168 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$20, %esp
.LCFI8:
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 172 0
	jmp	.L24
.L25:
	.loc 1 178 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jne	.L26
	.loc 1 179 0
	movl	$0, -20(%ebp)
	jmp	.L28
.L26:
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L24:
	.loc 1 172 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L25
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L25
	cmpl	$0, 12(%ebp)
	je	.L31
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L31
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L25
.L31:
	.loc 1 183 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L34
	.loc 1 184 0
	movl	$0, -20(%ebp)
	jmp	.L28
.L34:
	.loc 1 186 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L28:
	movl	-20(%ebp), %eax
	.loc 1 187 0
	leave
	ret
.LFE17:
	.size	last_active_insn, .-last_active_insn
	.type	seq_contains_jump, @function
seq_contains_jump:
.LFB18:
	.loc 1 197 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	subl	$4, %esp
.LCFI11:
	.loc 1 198 0
	jmp	.L38
.L39:
	.loc 1 200 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L40
	.loc 1 201 0
	movl	$1, -4(%ebp)
	jmp	.L42
.L40:
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L38:
	.loc 1 198 0
	cmpl	$0, 8(%ebp)
	jne	.L39
	.loc 1 204 0
	movl	$0, -4(%ebp)
.L42:
	movl	-4(%ebp), %eax
	.loc 1 205 0
	leave
	ret
.LFE18:
	.size	seq_contains_jump, .-seq_contains_jump
	.type	block_fallthru, @function
block_fallthru:
.LFB19:
	.loc 1 210 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	subl	$20, %esp
.LCFI14:
	.loc 1 213 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 214 0
	jmp	.L46
.L47:
	.loc 1 215 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L46:
	.loc 1 214 0
	cmpl	$0, -4(%ebp)
	je	.L48
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L47
.L48:
	.loc 1 218 0
	cmpl	$0, -4(%ebp)
	je	.L50
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L52
.L50:
	movl	$0, -20(%ebp)
.L52:
	movl	-20(%ebp), %eax
	.loc 1 219 0
	leave
	ret
.LFE19:
	.size	block_fallthru, .-block_fallthru
	.section	.rodata
	.type	__FUNCTION__.11142, @object
	.size	__FUNCTION__.11142, 24
__FUNCTION__.11142:
	.string	"cond_exec_process_insns"
.LC0:
	.string	"../../../kgccfe/gnu/ifcvt.c"
	.text
	.type	cond_exec_process_insns, @function
cond_exec_process_insns:
.LFB20:
	.loc 1 233 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$36, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 234 0
	movl	$0, -20(%ebp)
	.loc 1 239 0
	cmpl	$0, 12(%ebp)
	je	.L55
	cmpl	$0, 16(%ebp)
	jne	.L57
.L55:
	.loc 1 240 0
	movl	$0, -24(%ebp)
	jmp	.L58
.L57:
	.loc 1 242 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L59:
	.loc 1 244 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L60
	.loc 1 247 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L62
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L62
	.loc 1 248 0
	leal	__FUNCTION__.11142@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$248, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L62:
	.loc 1 251 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L65
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L65
	.loc 1 255 0
	movl	-16(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 256 0
	movl	-16(%ebp), %eax
	movl	$-99, 44(%eax)
	.loc 1 257 0
	movl	-16(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 258 0
	jmp	.L60
.L65:
	.loc 1 262 0
	cmpl	$0, -20(%ebp)
	je	.L68
	.loc 1 263 0
	movl	$0, -24(%ebp)
	jmp	.L58
.L68:
	.loc 1 265 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L70
	.loc 1 267 0
	cmpl	$0, 28(%ebp)
	jne	.L72
	.loc 1 268 0
	movl	$0, -24(%ebp)
	jmp	.L58
.L72:
	.loc 1 269 0
	movl	$1, -20(%ebp)
.L70:
	.loc 1 273 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 274 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 278 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L74
	.loc 1 280 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L76
	.loc 1 281 0
	movl	$0, -24(%ebp)
	jmp	.L58
.L76:
	.loc 1 283 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$93, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
	.loc 1 285 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L74:
	.loc 1 288 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$48, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 299 0
	movl	-16(%ebp), %edx
	addl	$44, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 301 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L60
	cmpl	$0, 24(%ebp)
	je	.L60
	.loc 1 302 0
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	alloc_EXPR_LIST@PLT
	movl	-16(%ebp), %edx
	addl	$68, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
.L60:
	.loc 1 307 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L80
	.loc 1 242 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 309 0
	jmp	.L59
.L80:
	.loc 1 311 0
	movl	$1, -24(%ebp)
.L58:
	movl	-24(%ebp), %eax
	.loc 1 312 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	cond_exec_process_insns, .-cond_exec_process_insns
	.type	cond_exec_get_condition, @function
cond_exec_get_condition:
.LFB21:
	.loc 1 319 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L84
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 326 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 330 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L86
	jmp	.L87
.L84:
	.loc 1 325 0
	movl	$0, -24(%ebp)
	jmp	.L88
.L86:
	.loc 1 330 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L87
.LBB2:
	.loc 1 333 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -8(%ebp)
	.loc 1 334 0
	cmpl	$0, -8(%ebp)
	jne	.L90
	.loc 1 335 0
	movl	$0, -24(%ebp)
	jmp	.L88
.L90:
	.loc 1 337 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -12(%ebp)
.L87:
.LBE2:
	.loc 1 341 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L88:
	movl	-24(%ebp), %eax
	.loc 1 342 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	cond_exec_get_condition, .-cond_exec_get_condition
	.section	.rodata
.LC1:
	.string	" was"
.LC2:
	.string	"s were"
	.align 4
.LC3:
	.string	"%d insn%s converted to conditional execution.\n"
	.text
	.type	cond_exec_process_if_block, @function
cond_exec_process_if_block:
.LFB22:
	.loc 1 352 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%edi
.LCFI25:
	pushl	%esi
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$140, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 359 0
	movl	$0, -76(%ebp)
	.loc 1 360 0
	movl	$0, -72(%ebp)
	.loc 1 373 0
	cmpl	$0, 12(%ebp)
	jne	.L94
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 375 0
	cmpl	$0, -92(%ebp)
	jne	.L97
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L99
.L97:
	.loc 1 376 0
	movl	$0, -124(%ebp)
	jmp	.L100
.L99:
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L94:
	.loc 1 386 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cond_exec_get_condition
	movl	%eax, -88(%ebp)
	.loc 1 387 0
	cmpl	$0, -88(%ebp)
	jne	.L101
	.loc 1 388 0
	movl	$0, -124(%ebp)
	jmp	.L100
.L101:
	.loc 1 392 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L103
	.loc 1 393 0
	movl	$0, -124(%ebp)
	jmp	.L100
.L103:
	.loc 1 398 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -84(%ebp)
	.loc 1 399 0
	movl	$1, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	last_active_insn
	movl	%eax, -80(%ebp)
	.loc 1 400 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	count_bb_insns
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 401 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L105
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L107
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L105
.L107:
	movl	$3, -120(%ebp)
	jmp	.L109
.L105:
	movl	$2, -120(%ebp)
.L109:
	movl	-120(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 403 0
	cmpl	$0, -92(%ebp)
	je	.L110
	.loc 1 405 0
	sall	-68(%ebp)
	.loc 1 406 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -76(%ebp)
	.loc 1 407 0
	movl	$1, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	last_active_insn
	movl	%eax, -72(%ebp)
	.loc 1 408 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	count_bb_insns
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	addl	%eax, -44(%ebp)
.L110:
	.loc 1 411 0
	movl	-44(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jle	.L112
	.loc 1 412 0
	movl	$0, -124(%ebp)
	jmp	.L100
.L112:
	.loc 1 417 0
	movl	-88(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 419 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -40(%ebp)
	.loc 1 420 0
	cmpl	$0, -40(%ebp)
	je	.L114
	.loc 1 421 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -56(%ebp)
	jmp	.L116
.L114:
	.loc 1 424 0
	movl	$0, -56(%ebp)
.L116:
	.loc 1 436 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -52(%ebp)
	.loc 1 437 0
	cmpl	$0, -52(%ebp)
	je	.L117
	.loc 1 439 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 440 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	$10000, %eax
	movl	$0, %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -48(%ebp)
	jmp	.L119
.L117:
	.loc 1 443 0
	movl	$0, -48(%ebp)
.L119:
	.loc 1 447 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jle	.L120
.LBB3:
	.loc 1 449 0
	movl	-100(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 452 0
	cmpl	$0, -56(%ebp)
	je	.L122
.L123:
.LBB4:
	.loc 1 460 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	block_fallthru
	movl	%eax, -36(%ebp)
	.loc 1 461 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -28(%ebp)
	.loc 1 462 0
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	last_active_insn
	movl	%eax, -24(%ebp)
	.loc 1 463 0
	cmpl	$0, -28(%ebp)
	je	.L124
	movl	$0, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cond_exec_process_insns
	testl	%eax, %eax
	je	.L122
.L124:
	.loc 1 470 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L122
	.loc 1 474 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cond_exec_get_condition
	movl	%eax, -20(%ebp)
	.loc 1 475 0
	cmpl	$0, -20(%ebp)
	je	.L122
	.loc 1 478 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%edi, 12(%esp)
	movl	-116(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	.loc 1 483 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L128
	.loc 1 485 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$93, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -20(%ebp)
	.loc 1 486 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$94, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
	jmp	.L130
.L128:
	.loc 1 490 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$94, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -20(%ebp)
	.loc 1 491 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$93, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -16(%ebp)
.L130:
	.loc 1 505 0
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 506 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
.LBE4:
	.loc 1 508 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L123
.L120:
.LBE3:
	.loc 1 513 0
	cmpl	$0, -92(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	.loc 1 518 0
	cmpl	$0, -80(%ebp)
	je	.L131
	cmpl	$0, -56(%ebp)
	je	.L122
	movl	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cond_exec_process_insns
	testl	%eax, %eax
	je	.L122
.L131:
	.loc 1 525 0
	cmpl	$0, -92(%ebp)
	je	.L134
	cmpl	$0, -72(%ebp)
	je	.L134
	movl	$1, 20(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cond_exec_process_insns
	testl	%eax, %eax
	je	.L122
.L134:
	.loc 1 532 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	jne	.L137
	.loc 1 538 0
	movl	$0, -124(%ebp)
	jmp	.L100
.L137:
	.loc 1 547 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 548 0
	cmpl	$1, -44(%ebp)
	jne	.L141
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	jmp	.L143
.L141:
	leal	.LC2@GOTOFF(%ebx), %edx
	movl	%edx, -112(%ebp)
.L143:
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L139:
	.loc 1 552 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_if_block
	.loc 1 553 0
	movl	$1, cond_exec_changed_p@GOTOFF(%ebx)
	.loc 1 554 0
	movl	$1, -124(%ebp)
	jmp	.L100
.L122:
	.loc 1 562 0
	movl	$0, (%esp)
	call	cancel_changes@PLT
	.loc 1 563 0
	movl	$0, -124(%ebp)
.L100:
	movl	-124(%ebp), %eax
	.loc 1 564 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	cond_exec_process_if_block, .-cond_exec_process_if_block
	.type	noce_emit_store_flag, @function
noce_emit_store_flag:
.LFB23:
	.loc 1 603 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$68, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 604 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 608 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L146
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L148
.L146:
	movl	$1, -36(%ebp)
	jmp	.L149
.L148:
	movl	$0, -36(%ebp)
.L149:
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 614 0
	cmpl	$0, -16(%ebp)
	je	.L150
	.loc 1 615 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L150:
	.loc 1 617 0
	cmpl	$0, 16(%ebp)
	je	.L152
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -12(%ebp)
	jmp	.L154
.L152:
	.loc 1 620 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
.L154:
	.loc 1 622 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	je	.L155
	cmpl	$0, -16(%ebp)
	je	.L157
.L155:
	cmpl	$0, 20(%ebp)
	je	.L158
	cmpl	$1, 20(%ebp)
	jne	.L157
.L158:
.LBB5:
	.loc 1 627 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 629 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 631 0
	call	start_sequence@PLT
	.loc 1 632 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 634 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L160
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -29(%ebp)
	jmp	.L162
.L160:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -29(%ebp)
.L162:
	cmpb	$0, -29(%ebp)
	je	.L163
	.loc 1 636 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 637 0
	call	end_sequence@PLT
	.loc 1 638 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 640 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 642 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L165
.L163:
	.loc 1 645 0
	call	end_sequence@PLT
.L157:
.LBE5:
	.loc 1 649 0
	cmpl	$0, -16(%ebp)
	jne	.L166
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L168
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L168
.L166:
	.loc 1 650 0
	movl	$0, -28(%ebp)
	jmp	.L165
.L168:
	.loc 1 652 0
	cmpl	$121, -12(%ebp)
	je	.L170
	cmpl	$120, -12(%ebp)
	je	.L170
	cmpl	$118, -12(%ebp)
	je	.L170
	cmpl	$119, -12(%ebp)
	jne	.L174
.L170:
	movl	$1, -24(%ebp)
	jmp	.L175
.L174:
	movl	$0, -24(%ebp)
.L175:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_store_flag@PLT
	movl	%eax, -28(%ebp)
.L165:
	movl	-28(%ebp), %eax
	.loc 1 656 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	noce_emit_store_flag, .-noce_emit_store_flag
	.type	noce_emit_move_insn, @function
noce_emit_move_insn:
.LFB24:
	.loc 1 662 0
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
	subl	$92, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 667 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L178
	.loc 1 669 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	.loc 1 670 0
	jmp	.L181
.L178:
	.loc 1 673 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 674 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 675 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 676 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 677 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	sall	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 678 0
	movl	-32(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %esi
	movl	$0, %edi
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -52(%ebp)
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	12(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	-36(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	store_bit_field@PLT
.L181:
	.loc 1 680 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	noce_emit_move_insn, .-noce_emit_move_insn
	.type	noce_try_store_flag, @function
noce_try_store_flag:
.LFB25:
	.loc 1 691 0
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
	.loc 1 695 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L183
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L183
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L183
	.loc 1 698 0
	movl	$0, -16(%ebp)
	.loc 1 695 0
	jmp	.L187
.L183:
	.loc 1 699 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L188
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L188
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L188
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	testl	%eax, %eax
	je	.L188
	.loc 1 704 0
	movl	$1, -16(%ebp)
	.loc 1 699 0
	jmp	.L187
.L188:
	.loc 1 706 0
	movl	$0, -24(%ebp)
	jmp	.L193
.L187:
	.loc 1 708 0
	call	start_sequence@PLT
	.loc 1 710 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_store_flag
	movl	%eax, -12(%ebp)
	.loc 1 711 0
	cmpl	$0, -12(%ebp)
	je	.L194
	.loc 1 713 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L196
	.loc 1 714 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L196:
	.loc 1 716 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 717 0
	call	end_sequence@PLT
	.loc 1 718 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 720 0
	movl	$1, -24(%ebp)
	jmp	.L193
.L194:
	.loc 1 724 0
	call	end_sequence@PLT
	.loc 1 725 0
	movl	$0, -24(%ebp)
.L193:
	movl	-24(%ebp), %eax
	.loc 1 727 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	noce_try_store_flag, .-noce_try_store_flag
	.type	noce_try_store_flag_constants, @function
noce_try_store_flag_constants:
.LFB26:
	.loc 1 734 0
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
	subl	$140, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 741 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L200
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L200
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L200
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 746 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 747 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 750 0
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	movl	%eax, -104(%ebp)
	movl	-60(%ebp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	shrl	$31, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	.L204
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -100(%ebp)
	jmp	.L206
.L204:
	movl	$1, -100(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %edx
	cmpl	-68(%ebp), %edx
	jl	.L206
	movl	-108(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jg	.L208
	movl	-112(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jb	.L206
.L208:
	movl	$0, -100(%ebp)
.L206:
	movl	-100(%ebp), %eax
	cmpl	%eax, -104(%ebp)
	je	.L209
	.loc 1 752 0
	movl	$0, -96(%ebp)
	jmp	.L211
.L209:
	.loc 1 754 0
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 756 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 759 0
	movl	$0, -32(%ebp)
	.loc 1 760 0
	movl	-56(%ebp), %eax
	xorl	$1, %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L212
	movl	-52(%ebp), %eax
	xorl	$-1, %eax
	movl	-56(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L214
.L212:
	.loc 1 761 0
	movl	$0, -28(%ebp)
	.loc 1 760 0
	jmp	.L215
.L214:
	.loc 1 762 0
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L216
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	js	.L216
	.loc 1 765 0
	movl	$1, -28(%ebp)
	.loc 1 762 0
	jmp	.L215
.L216:
	.loc 1 766 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L219
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	js	.L219
	cmpl	$0, -24(%ebp)
	je	.L219
	.loc 1 768 0
	movl	$1, -28(%ebp)
	movl	$1, -32(%ebp)
	.loc 1 766 0
	jmp	.L215
.L219:
	.loc 1 769 0
	movl	-68(%ebp), %eax
	xorl	$-1, %eax
	movl	-72(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L223
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L223
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L226
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L223
.L226:
	.loc 1 772 0
	movl	$-1, -28(%ebp)
	.loc 1 769 0
	jmp	.L215
.L223:
	.loc 1 773 0
	movl	-60(%ebp), %eax
	xorl	$-1, %eax
	movl	-64(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L228
	cmpl	$0, -24(%ebp)
	je	.L228
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L228
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L232
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L228
.L232:
	.loc 1 775 0
	movl	$-1, -28(%ebp)
	movl	$1, -32(%ebp)
	.loc 1 773 0
	jmp	.L215
.L228:
	.loc 1 780 0
	movl	$0, -96(%ebp)
	jmp	.L211
.L215:
	.loc 1 782 0
	cmpl	$0, -32(%ebp)
	je	.L234
	.loc 1 784 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 785 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	adcl	$0, %ecx
	negl	%ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	trunc_int_for_mode@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L234:
	.loc 1 788 0
	call	start_sequence@PLT
	.loc 1 789 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_store_flag
	movl	%eax, -40(%ebp)
	.loc 1 790 0
	cmpl	$0, -40(%ebp)
	jne	.L236
	.loc 1 792 0
	call	end_sequence@PLT
	.loc 1 793 0
	movl	$0, -96(%ebp)
	jmp	.L211
.L236:
	.loc 1 798 0
	movl	-56(%ebp), %eax
	xorl	$1, %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L238
	movl	-52(%ebp), %eax
	xorl	$-1, %eax
	movl	-56(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L240
.L238:
	.loc 1 800 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -88(%ebp)
	movl	-56(%ebp), %eax
	xorl	$1, %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L241
	movl	$85, -84(%ebp)
	jmp	.L243
.L241:
	movl	$86, -84(%ebp)
.L243:
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 798 0
	jmp	.L244
.L240:
	.loc 1 809 0
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L245
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	cmpl	$0, -44(%ebp)
	js	.L245
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$97, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 809 0
	jmp	.L244
.L245:
	.loc 1 818 0
	movl	-68(%ebp), %eax
	xorl	$-1, %eax
	movl	-72(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L248
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$94, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -40(%ebp)
	jmp	.L244
.L248:
	.loc 1 829 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$93, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -40(%ebp)
	.loc 1 832 0
	cmpl	$0, -40(%ebp)
	je	.L244
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$85, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -40(%ebp)
.L244:
	.loc 1 838 0
	cmpl	$0, -40(%ebp)
	jne	.L251
	.loc 1 840 0
	call	end_sequence@PLT
	.loc 1 841 0
	movl	$0, -96(%ebp)
	jmp	.L211
.L251:
	.loc 1 844 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L253
	.loc 1 845 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L253:
	.loc 1 847 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 848 0
	call	end_sequence@PLT
	.loc 1 850 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	seq_contains_jump
	testl	%eax, %eax
	je	.L255
	.loc 1 851 0
	movl	$0, -96(%ebp)
	jmp	.L211
.L255:
	.loc 1 853 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 855 0
	movl	$1, -96(%ebp)
	jmp	.L211
.L200:
	.loc 1 858 0
	movl	$0, -96(%ebp)
.L211:
	movl	-96(%ebp), %eax
	.loc 1 859 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	noce_try_store_flag_constants, .-noce_try_store_flag_constants
	.type	noce_try_store_flag_inc, @function
noce_try_store_flag_inc:
.LFB27:
	.loc 1 867 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$68, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 871 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L259
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L259
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L262
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L259
.L262:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L259
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L259
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	%eax, %edx
	je	.L266
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	%eax, %edx
	jne	.L259
.L266:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L259
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	testl	%eax, %eax
	je	.L259
	.loc 1 884 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L270
	.loc 1 885 0
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L272
.L270:
	.loc 1 886 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L273
	.loc 1 887 0
	movl	$1, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L272
.L273:
	.loc 1 889 0
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L272:
	.loc 1 891 0
	call	start_sequence@PLT
	.loc 1 893 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_store_flag
	movl	%eax, -20(%ebp)
	.loc 1 897 0
	cmpl	$0, -20(%ebp)
	je	.L275
	.loc 1 898 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L277
	movl	$86, -28(%ebp)
	jmp	.L279
.L277:
	movl	$85, -28(%ebp)
.L279:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -20(%ebp)
.L275:
	.loc 1 902 0
	cmpl	$0, -20(%ebp)
	je	.L280
	.loc 1 904 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L282
	.loc 1 905 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L282:
	.loc 1 907 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 908 0
	call	end_sequence@PLT
	.loc 1 910 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	seq_contains_jump
	testl	%eax, %eax
	je	.L284
	.loc 1 911 0
	movl	$0, -24(%ebp)
	jmp	.L286
.L284:
	.loc 1 913 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 916 0
	movl	$1, -24(%ebp)
	jmp	.L286
.L280:
	.loc 1 919 0
	call	end_sequence@PLT
.L259:
	.loc 1 922 0
	movl	$0, -24(%ebp)
.L286:
	movl	-24(%ebp), %eax
	.loc 1 923 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	noce_try_store_flag_inc, .-noce_try_store_flag_inc
	.type	noce_try_store_flag_mask, @function
noce_try_store_flag_mask:
.LFB28:
	.loc 1 930 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$48, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 934 0
	movl	$0, -12(%ebp)
	.loc 1 935 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L289
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L289
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L292
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L289
.L292:
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L294
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L296
.L294:
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L289
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	%eax, %edx
	jne	.L289
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L289
.L296:
	.loc 1 946 0
	call	start_sequence@PLT
	.loc 1 947 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	$-1, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_store_flag
	movl	%eax, -20(%ebp)
	.loc 1 950 0
	cmpl	$0, -20(%ebp)
	je	.L299
	.loc 1 951 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$93, 4(%esp)
	movl	%esi, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -20(%ebp)
.L299:
	.loc 1 955 0
	cmpl	$0, -20(%ebp)
	je	.L301
	.loc 1 957 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L303
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L303:
	.loc 1 960 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 961 0
	call	end_sequence@PLT
	.loc 1 963 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	seq_contains_jump
	testl	%eax, %eax
	je	.L305
	.loc 1 964 0
	movl	$0, -28(%ebp)
	jmp	.L307
.L305:
	.loc 1 966 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 969 0
	movl	$1, -28(%ebp)
	jmp	.L307
.L301:
	.loc 1 972 0
	call	end_sequence@PLT
.L289:
	.loc 1 975 0
	movl	$0, -28(%ebp)
.L307:
	movl	-28(%ebp), %eax
	.loc 1 976 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	noce_try_store_flag_mask, .-noce_try_store_flag_mask
	.type	noce_emit_cmove, @function
noce_emit_cmove:
.LFB29:
	.loc 1 985 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$68, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 991 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L310
.LBB6:
	.loc 1 995 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 996 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$82, (%esp)
	call	gen_rtx_fmt_eee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 997 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -8(%ebp)
	.loc 1 999 0
	call	start_sequence@PLT
	.loc 1 1000 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1002 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L312
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -29(%ebp)
	jmp	.L314
.L312:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -29(%ebp)
.L314:
	cmpb	$0, -29(%ebp)
	je	.L315
	.loc 1 1004 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1005 0
	call	end_sequence@PLT
	.loc 1 1006 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1008 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L317
.L315:
	.loc 1 1011 0
	call	end_sequence@PLT
.L310:
.LBE6:
	.loc 1 1015 0
	movl	20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L318
	movl	24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L320
.L318:
	.loc 1 1017 0
	movl	$0, -28(%ebp)
	jmp	.L317
.L320:
	.loc 1 1020 0
	cmpl	$121, 16(%ebp)
	je	.L321
	cmpl	$118, 16(%ebp)
	je	.L321
	cmpl	$120, 16(%ebp)
	je	.L321
	cmpl	$119, 16(%ebp)
	jne	.L325
.L321:
	movl	$1, -24(%ebp)
	jmp	.L326
.L325:
	movl	$0, -24(%ebp)
.L326:
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%edx, 32(%esp)
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_conditional_move@PLT
	movl	%eax, -28(%ebp)
.L317:
	movl	-28(%ebp), %eax
	.loc 1 1031 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	noce_emit_cmove, .-noce_emit_cmove
	.type	noce_try_cmove, @function
noce_try_cmove:
.LFB30:
	.loc 1 1040 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$60, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1044 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L329
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L338
.L329:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	je	.L339
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	register_operand@PLT
	testl	%eax, %eax
	je	.L338
.L339:
	.loc 1 1047 0
	call	start_sequence@PLT
	.loc 1 1049 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %edi
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_cmove
	movl	%eax, -20(%ebp)
	.loc 1 1055 0
	cmpl	$0, -20(%ebp)
	je	.L348
	.loc 1 1057 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L350
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L350:
	.loc 1 1060 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1061 0
	call	end_sequence@PLT
	.loc 1 1062 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 1064 0
	movl	$1, -32(%ebp)
	jmp	.L352
.L348:
	.loc 1 1068 0
	call	end_sequence@PLT
	.loc 1 1069 0
	movl	$0, -32(%ebp)
	jmp	.L352
.L338:
	.loc 1 1073 0
	movl	$0, -32(%ebp)
.L352:
	movl	-32(%ebp), %eax
	.loc 1 1074 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	noce_try_cmove, .-noce_try_cmove
	.type	noce_try_cmove_arith, @function
noce_try_cmove_arith:
.LFB31:
	.loc 1 1081 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$180, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1082 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1084 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1087 0
	movl	$0, -28(%ebp)
	.loc 1 1107 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L355
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L357
.L355:
	.loc 1 1108 0
	movl	$0, -148(%ebp)
	jmp	.L358
.L357:
	.loc 1 1117 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1118 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	testl	%eax, %eax
	je	.L359
.LBB7:
	.loc 1 1124 0
	movl	$0, -20(%ebp)
	.loc 1 1125 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L361
	.loc 1 1126 0
	movl	$1, -20(%ebp)
	jmp	.L363
.L361:
	.loc 1 1127 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	je	.L363
	.loc 1 1128 0
	movl	$1, -20(%ebp)
.L363:
	.loc 1 1130 0
	cmpl	$0, -20(%ebp)
	je	.L359
	.loc 1 1132 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1133 0
	movl	-56(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1134 0
	movl	-44(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
.L359:
.LBE7:
	.loc 1 1138 0
	call	start_sequence@PLT
	.loc 1 1144 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L366
.LBB8:
	.loc 1 1148 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L368
	.loc 1 1151 0
	cmpl	$0, -28(%ebp)
	je	.L370
	.loc 1 1153 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1154 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -36(%ebp)
	jmp	.L372
.L370:
	.loc 1 1156 0
	cmpl	$0, -44(%ebp)
	je	.L368
	.loc 1 1160 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1161 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1162 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L374
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L376
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L378
.L376:
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -140(%ebp)
.L378:
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L379
.L374:
	movl	$0, -144(%ebp)
.L379:
	movl	-144(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 1163 0
	movl	-16(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1164 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -36(%ebp)
.L372:
	.loc 1 1166 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L380
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -133(%ebp)
	jmp	.L382
.L380:
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -133(%ebp)
.L382:
	cmpb	$0, -133(%ebp)
	jne	.L368
.L366:
.LBE8:
	.loc 1 1169 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	general_operand@PLT
	testl	%eax, %eax
	jne	.L383
.LBB9:
	.loc 1 1173 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L368
	.loc 1 1176 0
	cmpl	$0, -28(%ebp)
	je	.L386
	.loc 1 1178 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1179 0
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$57, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -36(%ebp)
	jmp	.L388
.L386:
	.loc 1 1181 0
	cmpl	$0, -40(%ebp)
	je	.L368
	.loc 1 1194 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1195 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1196 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L390
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L392
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L394
.L392:
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -128(%ebp)
.L394:
	movl	-128(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	jmp	.L395
.L390:
	movl	$0, -132(%ebp)
.L395:
	movl	-132(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1197 0
	movl	-12(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1198 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -36(%ebp)
.L388:
	.loc 1 1200 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L396
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	shrl	$31, %eax
	movb	%al, -121(%ebp)
	jmp	.L398
.L396:
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	shrl	$31, %eax
	movb	%al, -121(%ebp)
.L398:
	cmpb	$0, -121(%ebp)
	jne	.L368
.L383:
.LBE9:
	.loc 1 1204 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_cmove
	movl	%eax, -32(%ebp)
	.loc 1 1207 0
	cmpl	$0, -32(%ebp)
	je	.L368
	.loc 1 1211 0
	cmpl	$0, -28(%ebp)
	je	.L400
	.loc 1 1213 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1216 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L402
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L404
.L402:
	.loc 1 1217 0
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$8, %edx
	movb	%dl, 3(%eax)
.L404:
	.loc 1 1218 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L405
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L405
	.loc 1 1219 0
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$16, %edx
	movb	%dl, 3(%eax)
.L405:
	.loc 1 1220 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L408
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L408
	.loc 1 1221 0
	movl	-36(%ebp), %eax
	movzbl	3(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 3(%eax)
.L408:
	.loc 1 1222 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L411
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	jmp	.L413
.L411:
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
.L413:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L414
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	jmp	.L416
.L414:
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
.L416:
	movl	-116(%ebp), %eax
	xorl	-108(%ebp), %eax
	movl	-120(%ebp), %edx
	xorl	-112(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L417
	.loc 1 1223 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L419
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	jmp	.L421
.L419:
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
.L421:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
.L417:
	.loc 1 1224 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L422
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L424
.L422:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L425
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -84(%ebp)
	jmp	.L427
.L425:
	movl	$8, -84(%ebp)
.L427:
	movl	-84(%ebp), %edx
	movl	%edx, -88(%ebp)
.L424:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L428
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L430
.L428:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L431
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -76(%ebp)
	jmp	.L433
.L431:
	movl	$8, -76(%ebp)
.L433:
	movl	-76(%ebp), %ecx
	movl	%ecx, -80(%ebp)
.L430:
	movl	-80(%ebp), %eax
	cmpl	%eax, -88(%ebp)
	jae	.L434
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L436
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L438
.L436:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L439
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -68(%ebp)
	jmp	.L441
.L439:
	movl	$8, -68(%ebp)
.L441:
	movl	-68(%ebp), %edx
	movl	%edx, -72(%ebp)
.L438:
	movl	-72(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	jmp	.L442
.L434:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L443
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L445
.L443:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L446
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -60(%ebp)
	jmp	.L448
.L446:
	movl	$8, -60(%ebp)
.L448:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
.L445:
	movl	-64(%ebp), %edx
	movl	%edx, -92(%ebp)
.L442:
	movl	-92(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_align@PLT
	.loc 1 1227 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
	jmp	.L449
.L400:
	.loc 1 1229 0
	movl	-32(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L449
	.loc 1 1230 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_emit_move_insn
.L449:
	.loc 1 1232 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1233 0
	call	end_sequence@PLT
	.loc 1 1234 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 1235 0
	movl	$1, -148(%ebp)
	jmp	.L358
.L368:
	.loc 1 1238 0
	call	end_sequence@PLT
	.loc 1 1239 0
	movl	$0, -148(%ebp)
.L358:
	movl	-148(%ebp), %eax
	.loc 1 1240 0
	addl	$180, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	noce_try_cmove_arith, .-noce_try_cmove_arith
	.type	noce_get_alt_condition, @function
noce_get_alt_condition:
.LFB32:
	.loc 1 1251 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$116, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1256 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	je	.L453
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1259 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L455
.L453:
	.loc 1 1262 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1263 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1264 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L456
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L456
	movl	$1, -76(%ebp)
	jmp	.L459
.L456:
	movl	$0, -76(%ebp)
.L459:
	movl	-76(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1282 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L460
.LBB10:
	.loc 1 1284 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1285 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1286 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1290 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1291 0
	cmpl	$0, -20(%ebp)
	je	.L462
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L462
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L462
.LBB11:
	.loc 1 1295 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1296 0
	cmpl	$0, -16(%ebp)
	jne	.L466
	.loc 1 1297 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L466:
	.loc 1 1298 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L462
	.loc 1 1300 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L469
	.loc 1 1301 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L471
.L469:
	.loc 1 1302 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L471
	.loc 1 1303 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L471:
	.loc 1 1305 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L462
.LBB12:
	.loc 1 1307 0
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1308 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1309 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1310 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, -32(%ebp)
.L462:
.LBE12:
.LBE11:
	.loc 1 1317 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L474
.LBB13:
	.loc 1 1319 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1320 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1322 0
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	cmpl	$115, -84(%ebp)
	je	.L477
	cmpl	$115, -84(%ebp)
	ja	.L480
	cmpl	$114, -84(%ebp)
	je	.L476
	jmp	.L474
.L480:
	cmpl	$116, -84(%ebp)
	je	.L478
	cmpl	$117, -84(%ebp)
	je	.L479
	jmp	.L474
.L479:
	.loc 1 1325 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%edx, %ecx
	xorl	-52(%ebp), %ecx
	xorl	-56(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L474
	.loc 1 1327 0
	movl	$116, -32(%ebp)
	.loc 1 1328 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1330 0
	jmp	.L474
.L478:
	.loc 1 1332 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-52(%ebp), %ecx
	xorl	-56(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L474
	.loc 1 1334 0
	movl	$117, -32(%ebp)
	.loc 1 1335 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1337 0
	jmp	.L474
.L477:
	.loc 1 1339 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-52(%ebp), %ecx
	xorl	-56(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L474
	.loc 1 1341 0
	movl	$114, -32(%ebp)
	.loc 1 1342 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1344 0
	jmp	.L474
.L476:
	.loc 1 1346 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%edx, %ecx
	xorl	-52(%ebp), %ecx
	xorl	-56(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L474
	.loc 1 1348 0
	movl	$115, -32(%ebp)
	.loc 1 1349 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -24(%ebp)
.L474:
.LBE13:
	.loc 1 1360 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-32(%ebp), %eax
	jne	.L488
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L488
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L460
.L488:
	.loc 1 1364 0
	movl	-48(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1365 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1366 0
	movl	-48(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L455
.L460:
.LBE10:
	.loc 1 1370 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	canonicalize_condition@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1372 0
	cmpl	$0, -48(%ebp)
	je	.L491
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L493
.L491:
	.loc 1 1373 0
	movl	$0, -80(%ebp)
	jmp	.L455
.L493:
	.loc 1 1379 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L494
.L495:
	.loc 1 1380 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L496
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	je	.L496
	.loc 1 1381 0
	movl	$0, -80(%ebp)
	jmp	.L455
.L496:
	.loc 1 1379 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L494:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L495
	.loc 1 1384 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L500
.L501:
	.loc 1 1385 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L502
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L504
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L502
.L504:
	.loc 1 1388 0
	movl	$0, -80(%ebp)
	jmp	.L455
.L502:
	.loc 1 1384 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L500:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L501
	.loc 1 1390 0
	movl	-48(%ebp), %eax
	movl	%eax, -80(%ebp)
.L455:
	movl	-80(%ebp), %eax
	.loc 1 1391 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	noce_get_alt_condition, .-noce_get_alt_condition
	.type	noce_try_minmax, @function
noce_try_minmax:
.LFB33:
	.loc 1 1398 0
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
	subl	$76, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1404 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L509
	.loc 1 1405 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L509:
	.loc 1 1410 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L512
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L512
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L515
.L512:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L516
.L515:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L517
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L517
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L520
.L517:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L520
.L516:
	.loc 1 1412 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L520:
	.loc 1 1414 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_get_alt_condition
	movl	%eax, -36(%ebp)
	.loc 1 1415 0
	cmpl	$0, -36(%ebp)
	jne	.L521
	.loc 1 1416 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L521:
	.loc 1 1420 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1421 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L523
	.loc 1 1423 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L527
	.loc 1 1424 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L523:
	.loc 1 1426 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L528
	.loc 1 1428 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L530
	.loc 1 1429 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L530:
	.loc 1 1430 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	movl	%eax, -24(%ebp)
	jmp	.L527
.L528:
	.loc 1 1433 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L527:
	.loc 1 1437 0
	movl	-24(%ebp), %eax
	subl	$114, %eax
	movl	%eax, -52(%ebp)
	cmpl	$14, -52(%ebp)
	ja	.L532
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L537@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L537:
	.long	.L533@GOTOFF
	.long	.L533@GOTOFF
	.long	.L534@GOTOFF
	.long	.L534@GOTOFF
	.long	.L535@GOTOFF
	.long	.L535@GOTOFF
	.long	.L536@GOTOFF
	.long	.L536@GOTOFF
	.long	.L532@GOTOFF
	.long	.L532@GOTOFF
	.long	.L532@GOTOFF
	.long	.L533@GOTOFF
	.long	.L533@GOTOFF
	.long	.L534@GOTOFF
	.long	.L534@GOTOFF
	.text
.L534:
	.loc 1 1443 0
	movl	$103, -20(%ebp)
	.loc 1 1444 0
	movl	$0, -16(%ebp)
	.loc 1 1445 0
	jmp	.L538
.L533:
	.loc 1 1450 0
	movl	$102, -20(%ebp)
	.loc 1 1451 0
	movl	$0, -16(%ebp)
	.loc 1 1452 0
	jmp	.L538
.L536:
	.loc 1 1455 0
	movl	$105, -20(%ebp)
	.loc 1 1456 0
	movl	$1, -16(%ebp)
	.loc 1 1457 0
	jmp	.L538
.L535:
	.loc 1 1460 0
	movl	$104, -20(%ebp)
	.loc 1 1461 0
	movl	$1, -16(%ebp)
	.loc 1 1462 0
	jmp	.L538
.L532:
	.loc 1 1464 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L538:
	.loc 1 1467 0
	call	start_sequence@PLT
	.loc 1 1469 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edi
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$2, 24(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1472 0
	cmpl	$0, -32(%ebp)
	jne	.L539
	.loc 1 1474 0
	call	end_sequence@PLT
	.loc 1 1475 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L539:
	.loc 1 1477 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L541
	.loc 1 1478 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L541:
	.loc 1 1480 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1481 0
	call	end_sequence@PLT
	.loc 1 1483 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	seq_contains_jump
	testl	%eax, %eax
	je	.L543
	.loc 1 1484 0
	movl	$0, -48(%ebp)
	jmp	.L511
.L543:
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 1487 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1488 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 1490 0
	movl	$1, -48(%ebp)
.L511:
	movl	-48(%ebp), %eax
	.loc 1 1491 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	noce_try_minmax, .-noce_try_minmax
	.type	noce_try_abs, @function
noce_try_abs:
.LFB34:
	.loc 1 1498 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$84, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1503 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L547
	.loc 1 1504 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L547:
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1508 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1509 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L550
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L550
	.loc 1 1510 0
	movl	$0, -16(%ebp)
	.loc 1 1509 0
	jmp	.L553
.L550:
	.loc 1 1511 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$87, %ax
	jne	.L554
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L554
	.loc 1 1513 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1514 0
	movl	$1, -16(%ebp)
	.loc 1 1511 0
	jmp	.L553
.L554:
	.loc 1 1517 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L553:
	.loc 1 1519 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_get_alt_condition
	movl	%eax, -40(%ebp)
	.loc 1 1520 0
	cmpl	$0, -40(%ebp)
	jne	.L557
	.loc 1 1521 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L557:
	.loc 1 1524 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L559
	.loc 1 1525 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L561
.L559:
	.loc 1 1526 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L562
	.loc 1 1527 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L561
.L562:
	.loc 1 1529 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L561:
	.loc 1 1533 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L564
.LBB14:
	.loc 1 1535 0
	movl	$0, -8(%ebp)
	.loc 1 1536 0
	movl	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1537 0
	jmp	.L566
.L567:
	.loc 1 1539 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L568
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L570
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L570
.L568:
	.loc 1 1538 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L566:
	.loc 1 1537 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L567
.L570:
	.loc 1 1543 0
	cmpl	$0, -8(%ebp)
	jne	.L572
	.loc 1 1544 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L572:
	.loc 1 1545 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L564:
.LBE14:
	.loc 1 1547 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L574
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L574
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L574
	.loc 1 1550 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_pool_constant@PLT
	movl	%eax, -20(%ebp)
.L574:
	.loc 1 1555 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L578
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$115, %ax
	jne	.L578
	jmp	.L581
.L578:
	.loc 1 1557 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L582
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$117, %ax
	jne	.L582
	jmp	.L581
.L582:
	.loc 1 1559 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	const_tiny_rtx@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	-20(%ebp), %eax
	je	.L581
	.loc 1 1560 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L581:
	.loc 1 1563 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$114, %eax
	movl	%eax, -60(%ebp)
	cmpl	$14, -60(%ebp)
	ja	.L586
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-60(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -64(%ebp)
	movl	-64(%ebp), %eax
	andl	$6147, %eax
	testl	%eax, %eax
	jne	.L589
	movl	-64(%ebp), %eax
	andl	$24588, %eax
	testl	%eax, %eax
	jne	.L588
	jmp	.L586
.L588:
	.loc 1 1569 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1570 0
	jmp	.L589
.L586:
	.loc 1 1577 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L589:
	.loc 1 1580 0
	call	start_sequence@PLT
	.loc 1 1582 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$139, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_simple_unop@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1586 0
	cmpl	$0, -36(%ebp)
	je	.L590
	cmpl	$0, -16(%ebp)
	je	.L590
	.loc 1 1587 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	$0, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$87, 4(%esp)
	movl	%ecx, (%esp)
	call	expand_simple_unop@PLT
	movl	%eax, -36(%ebp)
.L590:
	.loc 1 1589 0
	cmpl	$0, -36(%ebp)
	jne	.L593
	.loc 1 1591 0
	call	end_sequence@PLT
	.loc 1 1592 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L593:
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L595
	.loc 1 1596 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
.L595:
	.loc 1 1598 0
	call	get_insns@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1599 0
	call	end_sequence@PLT
	.loc 1 1601 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	seq_contains_jump
	testl	%eax, %eax
	je	.L597
	.loc 1 1602 0
	movl	$0, -56(%ebp)
	jmp	.L549
.L597:
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 1605 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 1606 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 1608 0
	movl	$1, -56(%ebp)
.L549:
	movl	-56(%ebp), %eax
	.loc 1 1609 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	noce_try_abs, .-noce_try_abs
	.type	noce_get_condition, @function
noce_get_condition:
.LFB35:
	.loc 1 1618 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%edi
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$60, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L601
	.loc 1 1623 0
	movl	$0, -52(%ebp)
	jmp	.L603
.L601:
	.loc 1 1625 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1629 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L604
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L604
	movl	$1, -48(%ebp)
	jmp	.L607
.L604:
	movl	$0, -48(%ebp)
.L607:
	movzbl	-48(%ebp), %eax
	movb	%al, -13(%ebp)
	.loc 1 1634 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1635 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1636 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L608
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L608
	.loc 1 1638 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1640 0
	cmpb	$0, -13(%ebp)
	je	.L611
	.loc 1 1641 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %esi
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edi
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	reverse_condition@PLT
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, -32(%ebp)
.L611:
	.loc 1 1643 0
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L603
.L608:
	.loc 1 1649 0
	movzbl	-13(%ebp), %edx
	movl	$0, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_condition@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1650 0
	cmpl	$0, -24(%ebp)
	jne	.L613
	.loc 1 1651 0
	movl	$0, -52(%ebp)
	jmp	.L603
.L613:
	.loc 1 1656 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L615
.L616:
	.loc 1 1657 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L617
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	jne	.L619
.L617:
	.loc 1 1656 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L615:
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L616
.L619:
	.loc 1 1659 0
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L620
	.loc 1 1660 0
	movl	-24(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L603
.L620:
	.loc 1 1665 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1666 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L622
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L624
.L622:
	.loc 1 1667 0
	movl	$0, -52(%ebp)
	jmp	.L603
.L624:
	.loc 1 1668 0
	movzbl	-13(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_condition@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1669 0
	cmpl	$0, -24(%ebp)
	jne	.L625
	.loc 1 1670 0
	movl	$0, -52(%ebp)
	jmp	.L603
.L625:
	.loc 1 1673 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L627
.L628:
	.loc 1 1674 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L629
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_in_p@PLT
	testl	%eax, %eax
	je	.L629
	.loc 1 1675 0
	movl	$0, -52(%ebp)
	jmp	.L603
.L629:
	.loc 1 1673 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L627:
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L628
	.loc 1 1677 0
	movl	-24(%ebp), %eax
	movl	%eax, -52(%ebp)
.L603:
	movl	-52(%ebp), %eax
	.loc 1 1678 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	noce_get_condition, .-noce_get_condition
	.type	noce_operand_ok, @function
noce_operand_ok:
.LFB36:
	.loc 1 1685 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$20, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1688 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L635
	.loc 1 1689 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L637
.L635:
	.loc 1 1691 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L638
	.loc 1 1692 0
	movl	$0, -8(%ebp)
	jmp	.L637
.L638:
	.loc 1 1694 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L637:
	movl	-8(%ebp), %eax
	.loc 1 1695 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	noce_operand_ok, .-noce_operand_ok
	.type	noce_process_if_block, @function
noce_process_if_block:
.LFB37:
	.loc 1 1704 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$148, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1705 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1706 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1707 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L642
	.loc 1 1728 0
	cmpl	$0, -52(%ebp)
	jne	.L644
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L646
.L644:
	.loc 1 1729 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L646:
	.loc 1 1731 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1732 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 1733 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 1734 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L642:
	.loc 1 1738 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1739 0
	leal	-96(%ebp), %eax
	addl	$32, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_get_condition
	movl	%eax, -12(%ebp)
	.loc 1 1740 0
	cmpl	$0, -12(%ebp)
	jne	.L648
	.loc 1 1741 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L648:
	.loc 1 1745 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L650
	.loc 1 1746 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L650:
	.loc 1 1749 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L652
	.loc 1 1750 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L652:
	.loc 1 1753 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -48(%ebp)
	.loc 1 1754 0
	cmpl	$0, -48(%ebp)
	je	.L654
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	last_active_insn
	cmpl	-48(%ebp), %eax
	jne	.L654
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L657
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L659
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L661
.L659:
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -128(%ebp)
.L661:
	movl	-128(%ebp), %eax
	movl	%eax, -132(%ebp)
	jmp	.L662
.L657:
	movl	$0, -132(%ebp)
.L662:
	movl	-132(%ebp), %edx
	movl	%edx, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L663
.L654:
	.loc 1 1757 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L663:
	.loc 1 1759 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1760 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1769 0
	movl	$0, -36(%ebp)
	.loc 1 1770 0
	cmpl	$0, -52(%ebp)
	je	.L664
	.loc 1 1772 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -44(%ebp)
	.loc 1 1773 0
	cmpl	$0, -44(%ebp)
	je	.L666
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	last_active_insn
	cmpl	-44(%ebp), %eax
	jne	.L666
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L669
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L671
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L673
.L671:
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -120(%ebp)
.L673:
	movl	-120(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L674
.L669:
	movl	$0, -124(%ebp)
.L674:
	movl	-124(%ebp), %edx
	movl	%edx, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L666
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L677
.L666:
	.loc 1 1777 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L664:
	.loc 1 1781 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1785 0
	cmpl	$0, -44(%ebp)
	je	.L678
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L678
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L681
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L683
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L685
.L683:
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -112(%ebp)
.L685:
	movl	-112(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L686
.L681:
	movl	$0, -116(%ebp)
.L686:
	movl	-116(%ebp), %edx
	movl	%edx, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L678
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L678
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L678
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	jne	.L678
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L678
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_overlap_mentioned_p@PLT
	testl	%eax, %eax
	jne	.L678
	movl	-64(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	modified_between_p@PLT
	testl	%eax, %eax
	je	.L677
.L678:
	.loc 1 1798 0
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
.L677:
	.loc 1 1806 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L693
	.loc 1 1807 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L693:
	.loc 1 1809 0
	cmpl	$0, -36(%ebp)
	je	.L695
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L697
.L695:
	movl	-28(%ebp), %eax
	movl	%eax, -108(%ebp)
.L697:
	movl	-108(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 1813 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1814 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L698
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L700
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L700
.L698:
	.loc 1 1818 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L702
	.loc 1 1819 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L702:
	.loc 1 1820 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L704
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L706
.L704:
	movl	-28(%ebp), %eax
	movl	%eax, -104(%ebp)
.L706:
	movl	-104(%ebp), %edx
	movzbl	2(%edx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -28(%ebp)
.L700:
	.loc 1 1825 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_operand_ok
	testl	%eax, %eax
	je	.L707
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_operand_ok
	testl	%eax, %eax
	jne	.L709
.L707:
	.loc 1 1826 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L709:
	.loc 1 1829 0
	movl	-60(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1830 0
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1831 0
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1832 0
	movl	-48(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1833 0
	movl	-44(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 1834 0
	movl	-28(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1835 0
	movl	-24(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 1836 0
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1844 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L710
	.loc 1 1850 0
	cmpl	$0, -44(%ebp)
	je	.L712
	cmpl	$0, -52(%ebp)
	je	.L712
.LBB15:
	.loc 1 1854 0
	cmpl	$0, -52(%ebp)
	je	.L715
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L715
	.loc 1 1855 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%eax)
.L715:
	.loc 1 1856 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
	.loc 1 1860 0
	movl	$0, 8(%esp)
	movl	$4, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L718
	.loc 1 1861 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L718:
	.loc 1 1863 0
	movl	$0, -44(%ebp)
	.loc 1 1850 0
	jmp	.L720
.L712:
.LBE15:
	.loc 1 1867 0
	cmpl	$0, -44(%ebp)
	je	.L720
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L720
	.loc 1 1868 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L720:
	.loc 1 1870 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1871 0
	jmp	.L723
.L710:
	.loc 1 1874 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_store_flag
	testl	%eax, %eax
	jne	.L723
	.loc 1 1876 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_minmax
	testl	%eax, %eax
	jne	.L723
	.loc 1 1878 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_abs
	testl	%eax, %eax
	jne	.L723
	.loc 1 1880 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_cmove
	testl	%eax, %eax
	jne	.L723
	.loc 1 1885 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_store_flag_constants
	testl	%eax, %eax
	jne	.L723
	.loc 1 1887 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_store_flag_inc
	testl	%eax, %eax
	jne	.L723
	.loc 1 1889 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_store_flag_mask
	testl	%eax, %eax
	jne	.L723
	.loc 1 1891 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_try_cmove_arith
	testl	%eax, %eax
	jne	.L723
	.loc 1 1896 0
	movl	$0, -136(%ebp)
	jmp	.L647
.L723:
	.loc 1 1900 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1908 0
	cmpl	$0, -44(%ebp)
	je	.L732
	cmpl	$0, -52(%ebp)
	je	.L732
	.loc 1 1909 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L732:
	.loc 1 1914 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 1917 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L735
	.loc 1 1919 0
	call	start_sequence@PLT
	.loc 1 1920 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	noce_emit_move_insn
	.loc 1 1921 0
	call	get_insns@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1922 0
	call	end_sequence@PLT
	.loc 1 1924 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after_scope@PLT
.L735:
	.loc 1 1928 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_if_block
	.loc 1 1930 0
	movl	$1, -136(%ebp)
.L647:
	movl	-136(%ebp), %eax
	.loc 1 1931 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	noce_process_if_block, .-noce_process_if_block
	.type	process_if_block, @function
process_if_block:
.LFB38:
	.loc 1 1939 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$20, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1940 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L739
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_process_if_block
	testl	%eax, %eax
	je	.L739
	.loc 1 1942 0
	movl	$1, -8(%ebp)
	jmp	.L742
.L739:
	.loc 1 1962 0
	movl	$0, -8(%ebp)
.L742:
	movl	-8(%ebp), %eax
	.loc 1 1963 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	process_if_block, .-process_if_block
	.section	.rodata
	.type	__FUNCTION__.13034, @object
	.size	__FUNCTION__.13034, 15
__FUNCTION__.13034:
	.string	"merge_if_block"
	.text
	.type	merge_if_block, @function
merge_if_block:
.LFB39:
	.loc 1 1970 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$68, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1971 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1972 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1973 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1974 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1979 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1983 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jle	.L745
.LBB16:
	.loc 1 1985 0
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1987 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	block_fallthru
	movl	%eax, -12(%ebp)
.L747:
	.loc 1 1991 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1992 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	block_fallthru
	movl	%eax, -12(%ebp)
	.loc 1 1993 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L748
	.loc 1 1994 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L748:
	.loc 1 1995 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 1996 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
	.loc 1 1998 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L747
.L745:
.LBE16:
	.loc 1 2005 0
	cmpl	$0, -36(%ebp)
	je	.L750
	.loc 1 2007 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L752
	.loc 1 2008 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L752:
	.loc 1 2010 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L754
	.loc 1 2011 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L754:
	.loc 1 2012 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 2013 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
.L750:
	.loc 1 2019 0
	cmpl	$0, -32(%ebp)
	je	.L756
	.loc 1 2021 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L758
	.loc 1 2022 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L758:
	.loc 1 2023 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 2024 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
.L756:
	.loc 1 2030 0
	cmpl	$0, -28(%ebp)
	jne	.L760
.LBB17:
	.loc 1 2032 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2036 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L762
	.loc 1 2038 0
	movl	$0, 8(%esp)
	movl	$25, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L779
	.loc 1 2040 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L766
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$62, %ax
	jne	.L766
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L766
	jmp	.L779
.L766:
	.loc 1 2045 0
	leal	__FUNCTION__.13034@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2045, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L762:
	.loc 1 2050 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L779
	.loc 1 2052 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L772
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L772
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L772
	jmp	.L779
.L772:
	.loc 1 2056 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L776
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L776
	jmp	.L779
.L776:
	.loc 1 2060 0
	leal	__FUNCTION__.13034@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2060, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L760:
.LBE17:
	.loc 1 2069 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L780
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L782
.L780:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	je	.L782
	.loc 1 2074 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L784
	.loc 1 2075 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L784:
	.loc 1 2078 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L786
	.loc 1 2079 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L786:
	.loc 1 2080 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 2081 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
	.loc 1 2069 0
	jmp	.L779
.L782:
	.loc 1 2089 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L788
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L790
.L788:
	.loc 1 2091 0
	leal	__FUNCTION__.13034@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2091, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L790:
	.loc 1 2094 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	je	.L779
	.loc 1 2095 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tidy_fallthru_edge@PLT
.L779:
	.loc 1 2098 0
	movl	num_updated_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_updated_if_blocks@GOTOFF(%ebx)
	.loc 1 2099 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	merge_if_block, .-merge_if_block
	.section	.rodata
	.align 4
.LC4:
	.string	"Conversion succeeded on pass %d.\n"
	.text
	.type	find_if_header, @function
find_if_header:
.LFB40:
	.loc 1 2110 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$80, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2116 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L794
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L794
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L797
.L794:
	.loc 1 2119 0
	movl	$0, -76(%ebp)
	jmp	.L798
.L797:
	.loc 1 2122 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L799
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L801
.L799:
	.loc 1 2124 0
	movl	$0, -76(%ebp)
	jmp	.L798
.L801:
	.loc 1 2127 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L802
	.loc 1 2129 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L804
.LBB18:
	.loc 1 2131 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2132 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2133 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L802
.L804:
.LBE18:
	.loc 1 2137 0
	movl	$0, -76(%ebp)
	jmp	.L798
.L802:
	.loc 1 2139 0
	leal	-72(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$13, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 2140 0
	movl	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2141 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2142 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2143 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2149 0
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_if_block
	testl	%eax, %eax
	jne	.L806
	.loc 1 2152 0
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L808
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L808
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_cond_trap
	testl	%eax, %eax
	jne	.L806
.L808:
	.loc 1 2156 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L811
	.loc 1 2159 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_if_case_1
	testl	%eax, %eax
	jne	.L806
	.loc 1 2161 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_if_case_2
	testl	%eax, %eax
	jne	.L806
.L811:
	.loc 1 2165 0
	movl	$0, -76(%ebp)
	jmp	.L798
.L806:
	.loc 1 2168 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L814
	.loc 1 2169 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L814:
	.loc 1 2170 0
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
.L798:
	movl	-76(%ebp), %eax
	.loc 1 2171 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	find_if_header, .-find_if_header
	.type	block_jumps_and_fallthru_p, @function
block_jumps_and_fallthru_p:
.LFB41:
	.loc 1 2182 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	subl	$36, %esp
.LCFI115:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2184 0
	movl	$0, -20(%ebp)
	.loc 1 2185 0
	movl	$0, -16(%ebp)
	.loc 1 2188 0
	movl	$0, -4(%ebp)
	.loc 1 2190 0
	cmpl	$0, 8(%ebp)
	je	.L818
	cmpl	$0, 12(%ebp)
	jne	.L820
.L818:
	.loc 1 2191 0
	movl	$-1, -36(%ebp)
	jmp	.L821
.L820:
	.loc 1 2194 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L822
	.loc 1 2195 0
	movl	$0, -36(%ebp)
	jmp	.L821
.L822:
	.loc 1 2197 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2198 0
	jmp	.L824
.L825:
	.loc 1 2201 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L826
	.loc 1 2203 0
	movl	$-1, -36(%ebp)
	jmp	.L821
.L826:
	.loc 1 2205 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L828
	.loc 1 2206 0
	movl	$1, -20(%ebp)
	jmp	.L830
.L828:
	.loc 1 2208 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L831
	.loc 1 2209 0
	movl	$1, -16(%ebp)
	jmp	.L830
.L831:
	.loc 1 2212 0
	movl	$-1, -36(%ebp)
	jmp	.L821
.L830:
	.loc 1 2199 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L824:
	.loc 1 2198 0
	cmpl	$0, -24(%ebp)
	jne	.L825
	.loc 1 2215 0
	movl	-20(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	.L834
	.loc 1 2216 0
	movl	$-1, -36(%ebp)
	jmp	.L821
.L834:
	.loc 1 2222 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2223 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2225 0
	jmp	.L836
.L837:
	.loc 1 2227 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L838
	.loc 1 2228 0
	movl	$-1, -36(%ebp)
	jmp	.L821
.L838:
	.loc 1 2230 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L840
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L840
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L840
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L840
	.loc 1 2234 0
	addl	$1, -4(%ebp)
.L840:
	.loc 1 2236 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L845
	.loc 1 2239 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L836:
	.loc 1 2225 0
	cmpl	$0, -12(%ebp)
	jne	.L837
.L845:
	.loc 1 2242 0
	movl	-4(%ebp), %eax
	movl	%eax, -36(%ebp)
.L821:
	movl	-36(%ebp), %eax
	.loc 1 2243 0
	leave
	ret
.LFE41:
	.size	block_jumps_and_fallthru_p, .-block_jumps_and_fallthru_p
	.section	.rodata
.LC5:
	.string	"-ELSE"
.LC6:
	.string	""
	.align 4
.LC7:
	.string	"\nIF-THEN%s block found, pass %d, start block %d [insn %d], then %d [%d]"
.LC8:
	.string	", else %d [%d]"
.LC9:
	.string	", join %d [%d]"
.LC10:
	.string	"s"
.LC11:
	.string	"&&"
.LC12:
	.string	"||"
	.align 4
.LC13:
	.string	", %d %s block%s last test %d [%d]"
	.text
	.type	find_if_block, @function
find_if_block:
.LFB42:
	.loc 1 2252 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$164, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2253 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2254 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2255 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2256 0
	movl	$0, -60(%ebp)
	.loc 1 2257 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2258 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2264 0
	movl	8(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2326 0
	movl	$0, -48(%ebp)
	.loc 1 2327 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2328 0
	jmp	.L849
.L850:
	.loc 1 2331 0
	addl	$1, -48(%ebp)
	.loc 1 2332 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L851
	.loc 1 2333 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L851:
	.loc 1 2329 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L849:
	.loc 1 2328 0
	cmpl	$0, -40(%ebp)
	jne	.L850
	.loc 1 2336 0
	movl	$0, -44(%ebp)
	.loc 1 2337 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2338 0
	jmp	.L855
.L856:
	.loc 1 2341 0
	addl	$1, -44(%ebp)
	.loc 1 2342 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L857
	.loc 1 2343 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L857:
	.loc 1 2339 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L855:
	.loc 1 2338 0
	cmpl	$0, -40(%ebp)
	jne	.L856
	.loc 1 2348 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-48(%ebp), %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	je	.L860
	.loc 1 2349 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L860:
	.loc 1 2352 0
	cmpl	$0, -56(%ebp)
	je	.L862
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L864
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L864
	movl	flow2_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L862
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	tablejump_p@PLT
	testl	%eax, %eax
	je	.L862
.L864:
	.loc 1 2356 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L862:
	.loc 1 2364 0
	cmpl	$0, -56(%ebp)
	jne	.L868
	.loc 1 2366 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L870
.LBB19:
	.loc 1 2368 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2370 0
	jmp	.L872
.L873:
	.loc 1 2373 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L872:
	.loc 1 2370 0
	cmpl	$0, -8(%ebp)
	je	.L874
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L874
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L873
.L874:
	.loc 1 2375 0
	cmpl	$0, -8(%ebp)
	je	.L877
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L877
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L877
	.loc 1 2378 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L877:
	.loc 1 2380 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2381 0
	movl	$0, -64(%ebp)
	jmp	.L881
.L870:
.LBE19:
	.loc 1 2384 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L868:
	.loc 1 2389 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L882
	.loc 1 2391 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2392 0
	movl	$0, -64(%ebp)
	jmp	.L881
.L882:
	.loc 1 2398 0
	cmpl	$0, -52(%ebp)
	je	.L884
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L884
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L884
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L884
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L884
	movl	flow2_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L890
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	tablejump_p@PLT
	testl	%eax, %eax
	jne	.L884
.L890:
	.loc 1 2404 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2398 0
	jmp	.L881
.L884:
	.loc 1 2408 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L881:
	.loc 1 2410 0
	movl	num_possible_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_possible_if_blocks@GOTOFF(%ebx)
	.loc 1 2412 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L892
	.loc 1 2414 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L894
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L896
.L894:
	movl	$-1, -132(%ebp)
.L896:
	movl	-68(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L897
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L899
.L897:
	movl	$-1, -124(%ebp)
.L899:
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -116(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L900
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	jmp	.L902
.L900:
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
.L902:
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2420 0
	cmpl	$0, -64(%ebp)
	je	.L903
	.loc 1 2421 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L905
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L907
.L905:
	movl	$-1, -108(%ebp)
.L907:
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L903:
	.loc 1 2424 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L908
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L910
.L908:
	movl	$-1, -104(%ebp)
.L910:
	movl	-60(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2427 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jle	.L911
	.loc 1 2428 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L913
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L915
.L913:
	movl	$-1, -100(%ebp)
.L915:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	.L916
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L918
.L916:
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
.L918:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L919
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L921
.L919:
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L921:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-100(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L911:
	.loc 1 2437 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L892:
	.loc 1 2448 0
	movl	-68(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2449 0
	cmpl	$0, -64(%ebp)
	je	.L922
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-64(%ebp), %eax
	je	.L922
	.loc 1 2450 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L922:
	.loc 1 2451 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L925
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -60(%ebp)
	je	.L925
	.loc 1 2453 0
	cmpl	$0, -64(%ebp)
	je	.L928
	.loc 1 2454 0
	movl	$0, -60(%ebp)
	jmp	.L925
.L928:
	.loc 1 2456 0
	movl	$0, -136(%ebp)
	jmp	.L853
.L925:
	.loc 1 2460 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2461 0
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2463 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	process_if_block
	movl	%eax, -136(%ebp)
.L853:
	movl	-136(%ebp), %eax
	.loc 1 2464 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	find_if_block, .-find_if_block
	.section	.rodata
	.align 4
.LC14:
	.string	"\nTRAP-IF block found, start %d, trap %d\n"
	.text
	.type	find_cond_trap, @function
find_cond_trap:
.LFB43:
	.loc 1 2473 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%edi
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$140, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2474 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2475 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2483 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	block_has_only_trap
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L932
	.loc 1 2484 0
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L934
.L932:
	.loc 1 2485 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	block_has_only_trap
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L935
	.loc 1 2486 0
	movl	-52(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L934
.L935:
	.loc 1 2488 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L934:
	.loc 1 2490 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L938
	.loc 1 2492 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L938:
	.loc 1 2497 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2498 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_get_condition
	movl	%eax, -32(%ebp)
	.loc 1 2499 0
	cmpl	$0, -32(%ebp)
	jne	.L940
	.loc 1 2500 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L940:
	.loc 1 2504 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L942
	.loc 1 2505 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L942:
	.loc 1 2508 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	jne	.L944
	.loc 1 2509 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L944:
	.loc 1 2512 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2513 0
	movl	-56(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L946
	.loc 1 2515 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2516 0
	cmpl	$0, -24(%ebp)
	jne	.L946
	.loc 1 2517 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L946:
	.loc 1 2521 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_cond_trap@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2523 0
	cmpl	$0, -28(%ebp)
	jne	.L949
	.loc 1 2524 0
	movl	$0, -132(%ebp)
	jmp	.L937
.L949:
	.loc 1 2527 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before_scope@PLT
	.loc 1 2530 0
	movl	-44(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L951
	movl	12(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L953
.L951:
	movl	16(%ebp), %eax
	movl	%eax, -128(%ebp)
.L953:
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 2531 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L954
	.loc 1 2533 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L956
	.loc 1 2534 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L956:
	.loc 1 2535 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 2536 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
.L954:
	.loc 1 2541 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L958
.LBB20:
	.loc 1 2544 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 2545 0
	leal	-112(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$13, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 2546 0
	movl	8(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 2547 0
	movl	$0, -108(%ebp)
	.loc 1 2548 0
	movl	$0, -104(%ebp)
	.loc 1 2549 0
	movl	-48(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 2550 0
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_if_block
	jmp	.L960
.L958:
.LBE20:
.LBB21:
	.loc 1 2556 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2557 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2558 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 2559 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 2560 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 2562 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L960:
.LBE21:
	.loc 1 2565 0
	movl	$1, -132(%ebp)
.L937:
	movl	-132(%ebp), %eax
	.loc 1 2566 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	find_cond_trap, .-find_cond_trap
	.type	block_has_only_trap, @function
block_has_only_trap:
.LFB44:
	.loc 1 2574 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$24, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2578 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L963
	.loc 1 2579 0
	movl	$0, -24(%ebp)
	jmp	.L965
.L963:
	.loc 1 2582 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L966
	.loc 1 2583 0
	movl	$0, -24(%ebp)
	jmp	.L965
.L966:
	.loc 1 2586 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	first_active_insn
	movl	%eax, -8(%ebp)
	.loc 1 2587 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L968
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$62, %ax
	jne	.L968
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	const_true_rtx@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L971
.L968:
	.loc 1 2590 0
	movl	$0, -24(%ebp)
	jmp	.L965
.L971:
	.loc 1 2592 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L965:
	movl	-24(%ebp), %eax
	.loc 1 2593 0
	addl	$24, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	block_has_only_trap, .-block_has_only_trap
	.section	.rodata
	.align 4
.LC15:
	.string	"\nIF-CASE-1 found, start %d, then %d\n"
	.text
	.type	find_if_case_1, @function
find_if_case_1:
.LFB45:
	.loc 1 2676 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%esi
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$80, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2677 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2678 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2679 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2683 0
	cmpl	$0, -16(%ebp)
	je	.L974
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L976
.L974:
	.loc 1 2684 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L976:
	.loc 1 2687 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$15, %eax
	testl	%eax, %eax
	je	.L978
	.loc 1 2688 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L978:
	.loc 1 2691 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L980
	.loc 1 2692 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L980:
	.loc 1 2695 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L982
	.loc 1 2696 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L982:
	.loc 1 2698 0
	movl	num_possible_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_possible_if_blocks@GOTOFF(%ebx)
	.loc 1 2699 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L984
	.loc 1 2700 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L984:
	.loc 1 2705 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	count_bb_insns
	movl	%eax, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L986
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L988
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L986
.L988:
	movl	$2, -48(%ebp)
	jmp	.L990
.L986:
	movl	$1, -48(%ebp)
.L990:
	movl	-48(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jle	.L991
	.loc 1 2706 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L991:
	.loc 1 2709 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	$1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_predicable
	testl	%eax, %eax
	jne	.L993
	.loc 1 2711 0
	movl	$0, -56(%ebp)
	jmp	.L977
.L993:
	.loc 1 2716 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$2, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 2720 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L995
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L997
.L995:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L997:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch_force@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2721 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2722 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L998
	.loc 1 2723 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L998:
	.loc 1 2724 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 2728 0
	cmpl	$0, -20(%ebp)
	je	.L1000
	.loc 1 2730 0
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 2731 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 2732 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1000
	.loc 1 2733 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_to_dominance_info@PLT
.L1000:
	.loc 1 2738 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
	.loc 1 2739 0
	movl	num_updated_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_updated_if_blocks@GOTOFF(%ebx)
	.loc 1 2741 0
	movl	$1, -56(%ebp)
.L977:
	movl	-56(%ebp), %eax
	.loc 1 2742 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE45:
	.size	find_if_case_1, .-find_if_case_1
	.section	.rodata
	.align 4
.LC16:
	.string	"\nIF-CASE-2 found, start %d, else %d\n"
	.text
	.type	find_if_case_2, @function
find_if_case_2:
.LFB46:
	.loc 1 2750 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$64, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2751 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2752 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2753 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2757 0
	cmpl	$0, -16(%ebp)
	je	.L1005
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1007
.L1005:
	.loc 1 2758 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1007:
	.loc 1 2761 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L1009
	.loc 1 2762 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1009:
	.loc 1 2765 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1011
	.loc 1 2766 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1011:
	.loc 1 2769 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L1013
	.loc 1 2770 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1013:
	.loc 1 2773 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2774 0
	cmpl	$0, -12(%ebp)
	je	.L1015
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	cmpl	$0, -36(%ebp)
	js	.L1015
	cmpl	$0, -36(%ebp)
	jg	.L1019
	cmpl	$4999, -40(%ebp)
	jbe	.L1015
	jmp	.L1019
.L1015:
	.loc 1 2776 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L1019
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1019
	.loc 1 2781 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1019:
	.loc 1 2783 0
	movl	num_possible_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_possible_if_blocks@GOTOFF(%ebx)
	.loc 1 2784 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1022
	.loc 1 2785 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L1022:
	.loc 1 2790 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	count_bb_insns
	movl	%eax, -32(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1024
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1026
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1024
.L1026:
	movl	$2, -28(%ebp)
	jmp	.L1028
.L1024:
	movl	$1, -28(%ebp)
.L1028:
	movl	-28(%ebp), %ecx
	cmpl	%ecx, -32(%ebp)
	jle	.L1029
	.loc 1 2791 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1029:
	.loc 1 2794 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dead_or_predicable
	testl	%eax, %eax
	jne	.L1031
	.loc 1 2795 0
	movl	$0, -44(%ebp)
	jmp	.L1008
.L1031:
	.loc 1 2800 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$2, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 2804 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1033
	.loc 1 2805 0
	movl	post_dominators@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_from_dominance_info@PLT
.L1033:
	.loc 1 2806 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 2808 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_removed_blocks@GOTOFF(%ebx)
	.loc 1 2809 0
	movl	num_updated_if_blocks@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_updated_if_blocks@GOTOFF(%ebx)
	.loc 1 2814 0
	movl	$1, -44(%ebp)
.L1008:
	movl	-44(%ebp), %eax
	.loc 1 2815 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE46:
	.size	find_if_case_2, .-find_if_case_2
	.type	find_memory, @function
find_memory:
.LFB47:
	.loc 1 2824 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	.loc 1 2825 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	sete	%al
	movzbl	%al, %eax
	.loc 1 2826 0
	popl	%ebp
	ret
.LFE47:
	.size	find_memory, .-find_memory
	.type	dead_or_predicable, @function
dead_or_predicable:
.LFB48:
	.loc 1 2841 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$324, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2842 0
	movl	$0, -136(%ebp)
	.loc 1 2844 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -144(%ebp)
	.loc 1 2847 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -148(%ebp)
	.loc 1 2848 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 2850 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L1039
	.loc 1 2851 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
.L1039:
	.loc 1 2852 0
	movl	-148(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L1041
	.loc 1 2854 0
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1043
	.loc 1 2856 0
	movl	$0, -152(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 2857 0
	jmp	.L1045
.L1043:
	.loc 1 2859 0
	movl	-148(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -148(%ebp)
.L1041:
	.loc 1 2862 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1046
.LBB22:
	.loc 1 2866 0
	movl	-148(%ebp), %edx
	movl	-152(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1048
	.loc 1 2868 0
	movl	$0, -152(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -148(%ebp)
	.loc 1 2869 0
	jmp	.L1045
.L1048:
	.loc 1 2875 0
	movl	-152(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -124(%ebp)
	cmpl	$0, -124(%ebp)
	je	.L1050
	movl	-124(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -132(%ebp)
	cmpl	$0, -132(%ebp)
	je	.L1050
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L1050
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L1054
	movl	-132(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L1050
.L1054:
	.loc 1 2881 0
	movl	-148(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	.L1056
.L1057:
	.loc 1 2882 0
	movl	-124(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L1058
	.loc 1 2883 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1058:
	.loc 1 2881 0
	movl	-128(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
.L1056:
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-128(%ebp), %eax
	jne	.L1057
.L1050:
	.loc 1 2886 0
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
.L1046:
.LBE22:
.LBB23:
	.loc 1 2938 0
	movl	$0, -84(%ebp)
	.loc 1 2941 0
	movl	-148(%ebp), %eax
	movl	%eax, -120(%ebp)
.L1061:
	.loc 1 2943 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L1062
	.loc 1 2944 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1062:
	.loc 1 2945 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1064
	.loc 1 2947 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L1066
	.loc 1 2948 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1066:
	.loc 1 2955 0
	movl	-120(%ebp), %eax
	addl	$44, %eax
	movl	$0, 8(%esp)
	leal	find_memory@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	je	.L1064
	.loc 1 2956 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1064:
	.loc 1 2958 0
	movl	-152(%ebp), %eax
	cmpl	%eax, -120(%ebp)
	je	.L1069
	.loc 1 2941 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 2960 0
	jmp	.L1061
.L1069:
	.loc 1 2962 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L1071
	.loc 1 2963 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1071:
	.loc 1 2966 0
	leal	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	noce_get_condition
	movl	%eax, -116(%ebp)
	.loc 1 2967 0
	cmpl	$0, -116(%ebp)
	jne	.L1073
	.loc 1 2968 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1073:
	.loc 1 2976 0
	movl	$1, 4(%esp)
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -104(%ebp)
	.loc 1 2977 0
	movl	$1, 4(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -108(%ebp)
	.loc 1 2978 0
	movl	$1, 4(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -100(%ebp)
	.loc 1 2979 0
	movl	$1, 4(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -96(%ebp)
	.loc 1 2984 0
	movl	$0, 16(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 2988 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1075
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1075
.LBB24:
	.loc 1 2990 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L1078
.L1079:
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L1078:
	cmpl	$0, -80(%ebp)
	je	.L1080
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-76(%ebp), %eax
	jb	.L1079
.L1080:
	cmpl	$0, -80(%ebp)
	je	.L1085
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L1085
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L1085
.L1088:
.LBB25:
	movl	-68(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -64(%ebp)
	cmpl	$0, -64(%ebp)
	je	.L1089
	jmp	.L1091
.L1092:
.LBB26:
	movl	-72(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	andl	-64(%ebp), %eax
	testl	%eax, %eax
	je	.L1093
	movl	-60(%ebp), %eax
	notl	%eax
	andl	%eax, -64(%ebp)
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-68(%ebp), %eax
	sall	$5, %eax
	addl	-72(%ebp), %eax
	movl	%eax, -88(%ebp)
	cmpl	$175, -88(%ebp)
	jg	.L1095
	movl	-88(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L1095
	movl	-88(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L1095
	movl	$1, -84(%ebp)
.L1095:
	cmpl	$0, -64(%ebp)
	je	.L1089
.L1093:
.LBE26:
	addl	$1, -72(%ebp)
.L1091:
	cmpl	$31, -72(%ebp)
	jbe	.L1092
.L1089:
	movl	$0, -72(%ebp)
.LBE25:
	addl	$1, -68(%ebp)
.L1087:
	cmpl	$3, -68(%ebp)
	jbe	.L1088
	movl	$0, -68(%ebp)
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L1085:
	cmpl	$0, -80(%ebp)
	jne	.L1087
.L1075:
.LBE24:
	.loc 1 3003 0
	movl	16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 3004 0
	movl	$0, 16(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_propagate_block_info@PLT
	movl	%eax, -92(%ebp)
	.loc 1 3007 0
	movl	-144(%ebp), %eax
	movl	%eax, -120(%ebp)
.L1100:
	.loc 1 3009 0
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_one_insn@PLT
	movl	%eax, -112(%ebp)
	.loc 1 3010 0
	movl	-156(%ebp), %eax
	cmpl	%eax, -120(%ebp)
	je	.L1101
	.loc 1 3007 0
	movl	-112(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 3012 0
	jmp	.L1100
.L1101:
	.loc 1 3014 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	free_propagate_block_info@PLT
	.loc 1 3022 0
	movl	$2, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 3023 0
	movl	$0, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.LBB27:
	.loc 1 3024 0
	movl	-104(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L1103
.L1104:
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1103:
	cmpl	$0, -56(%ebp)
	je	.L1105
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-52(%ebp), %eax
	jb	.L1104
.L1105:
	cmpl	$0, -56(%ebp)
	je	.L1110
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L1110
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L1110
.L1113:
.LBB28:
	movl	-44(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1114
	jmp	.L1116
.L1117:
.LBB29:
	movl	-48(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	andl	-40(%ebp), %eax
	testl	%eax, %eax
	je	.L1118
	movl	-36(%ebp), %eax
	notl	%eax
	andl	%eax, -40(%ebp)
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	sall	$5, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	$1, -84(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L1114
.L1118:
.LBE29:
	addl	$1, -48(%ebp)
.L1116:
	cmpl	$31, -48(%ebp)
	jbe	.L1117
.L1114:
	movl	$0, -48(%ebp)
.LBE28:
	addl	$1, -44(%ebp)
.L1112:
	cmpl	$3, -44(%ebp)
	jbe	.L1113
	movl	$0, -44(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1110:
	cmpl	$0, -56(%ebp)
	jne	.L1112
.LBE27:
	.loc 1 3026 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.LBB30:
	.loc 1 3028 0
	movl	-104(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1122
.L1123:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1122:
	cmpl	$0, -32(%ebp)
	je	.L1124
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	jb	.L1123
.L1124:
	cmpl	$0, -32(%ebp)
	je	.L1129
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L1129
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1129
.L1132:
.LBB31:
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1133
	jmp	.L1135
.L1136:
.LBB32:
	movl	-24(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L1137
	movl	-12(%ebp), %eax
	notl	%eax
	andl	%eax, -16(%ebp)
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	sall	$5, %eax
	addl	-24(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	$1, -84(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1133
.L1137:
.LBE32:
	addl	$1, -24(%ebp)
.L1135:
	cmpl	$31, -24(%ebp)
	jbe	.L1136
.L1133:
	movl	$0, -24(%ebp)
.LBE31:
	addl	$1, -20(%ebp)
.L1131:
	cmpl	$3, -20(%ebp)
	jbe	.L1132
	movl	$0, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1129:
	cmpl	$0, -32(%ebp)
	jne	.L1131
.LBE30:
	.loc 1 3030 0
	cmpl	$0, -104(%ebp)
	je	.L1141
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -104(%ebp)
.L1141:
	.loc 1 3031 0
	cmpl	$0, -108(%ebp)
	je	.L1143
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -108(%ebp)
.L1143:
	.loc 1 3032 0
	cmpl	$0, -100(%ebp)
	je	.L1145
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -100(%ebp)
.L1145:
	.loc 1 3033 0
	cmpl	$0, -96(%ebp)
	je	.L1147
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -96(%ebp)
.L1147:
	.loc 1 3035 0
	cmpl	$0, -84(%ebp)
	je	.L1045
	.loc 1 3036 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1045:
.LBE23:
	.loc 1 3044 0
	movl	-144(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 3045 0
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L1150
	.loc 1 3047 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -136(%ebp)
	.loc 1 3048 0
	cmpl	$0, 24(%ebp)
	je	.L1152
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump_1@PLT
	testl	%eax, %eax
	sete	-289(%ebp)
	jmp	.L1154
.L1152:
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump_1@PLT
	testl	%eax, %eax
	sete	-289(%ebp)
.L1154:
	cmpb	$0, -289(%ebp)
	jne	.L1155
.L1150:
	.loc 1 3054 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	jne	.L1156
	.loc 1 3055 0
	movl	$0, -296(%ebp)
	jmp	.L1060
.L1156:
	.loc 1 3057 0
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L1158
	.loc 1 3059 0
	cmpl	$0, -140(%ebp)
	je	.L1160
	.loc 1 3060 0
	movl	-140(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%edx, 36(%eax)
.L1160:
	.loc 1 3061 0
	cmpl	$0, -136(%ebp)
	je	.L1162
	.loc 1 3062 0
	movl	-136(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-136(%ebp), %eax
	movl	%edx, 36(%eax)
.L1162:
	.loc 1 3063 0
	movl	-144(%ebp), %edx
	movl	-136(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 3064 0
	cmpl	$0, 24(%ebp)
	je	.L1164
	.loc 1 3065 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_br_probabilities@PLT
.L1164:
	.loc 1 3067 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1166
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -288(%ebp)
	jmp	.L1168
.L1166:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -288(%ebp)
.L1168:
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
	.loc 1 3068 0
	cmpl	$0, 24(%ebp)
	je	.L1158
.LBB33:
	.loc 1 3071 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1170
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -284(%ebp)
	jmp	.L1172
.L1170:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -284(%ebp)
.L1172:
	movl	-284(%ebp), %ecx
	movl	32(%ecx), %eax
	movl	36(%ecx), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	.loc 1 3072 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1173
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -280(%ebp)
	jmp	.L1175
.L1173:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -280(%ebp)
.L1175:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1176
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -276(%ebp)
	jmp	.L1178
.L1176:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -276(%ebp)
.L1178:
	movl	-276(%ebp), %ecx
	movl	32(%ecx), %eax
	movl	36(%ecx), %edx
	movl	-280(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 3073 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1179
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -272(%ebp)
	jmp	.L1181
.L1179:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -272(%ebp)
.L1181:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	-272(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 3074 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1182
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -268(%ebp)
	jmp	.L1184
.L1182:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -268(%ebp)
.L1184:
	movl	-268(%ebp), %edx
	movl	28(%edx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	.loc 1 3075 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1185
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -264(%ebp)
	jmp	.L1187
.L1185:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -264(%ebp)
.L1187:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1188
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -260(%ebp)
	jmp	.L1190
.L1188:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -260(%ebp)
.L1190:
	movl	-260(%ebp), %ecx
	movl	28(%ecx), %eax
	movl	-264(%ebp), %edx
	movl	%eax, 28(%edx)
	.loc 1 3077 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1191
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -256(%ebp)
	jmp	.L1193
.L1191:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -256(%ebp)
.L1193:
	movl	-168(%ebp), %eax
	movl	-256(%ebp), %ecx
	movl	%eax, 28(%ecx)
	.loc 1 3078 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
.L1158:
.LBE33:
	.loc 1 3083 0
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	je	.L1194
	.loc 1 3085 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-152(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1196
	.loc 1 3086 0
	movl	-148(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L1196:
	.loc 1 3088 0
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	squeeze_notes@PLT
	testb	%al, %al
	je	.L1198
	.loc 1 3089 0
	movl	$1, -296(%ebp)
	jmp	.L1060
.L1198:
	.loc 1 3091 0
	movl	-156(%ebp), %eax
	movl	12(%eax), %eax
	movl	-152(%ebp), %edx
	movl	-148(%ebp), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	reorder_insns@PLT
.L1194:
	.loc 1 3095 0
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L1200
	.loc 1 3097 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 3098 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1202
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -252(%ebp)
	jmp	.L1204
.L1202:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -252(%ebp)
.L1204:
	movl	-252(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L1200:
	.loc 1 3103 0
	movl	$1, -296(%ebp)
	jmp	.L1060
.L1155:
	.loc 1 3106 0
	movl	$0, (%esp)
	call	cancel_changes@PLT
	.loc 1 3107 0
	movl	$0, -296(%ebp)
.L1060:
	movl	-296(%ebp), %eax
	.loc 1 3108 0
	addl	$324, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	dead_or_predicable, .-dead_or_predicable
	.section	.rodata
	.align 4
.LC17:
	.string	"\n%d possible IF blocks searched.\n"
.LC18:
	.string	"%d IF blocks converted.\n"
.LC19:
	.string	"%d basic blocks deleted.\n\n\n"
	.text
.globl if_convert
	.type	if_convert, @function
if_convert:
.LFB49:
	.loc 1 3115 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$36, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3119 0
	movl	$0, num_possible_if_blocks@GOTOFF(%ebx)
	.loc 1 3120 0
	movl	$0, num_updated_if_blocks@GOTOFF(%ebx)
	.loc 1 3121 0
	movl	$0, num_removed_blocks@GOTOFF(%ebx)
	.loc 1 3122 0
	cmpl	$0, 8(%ebp)
	setne	%al
	movb	%al, life_data_ok@GOTOFF(%ebx)
	.loc 1 3126 0
	movl	$1, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 3129 0
	movl	$0, post_dominators@GOTOFF(%ebx)
	.loc 1 3130 0
	movzbl	life_data_ok@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L1207
	.loc 1 3132 0
	movl	$1, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, post_dominators@GOTOFF(%ebx)
.L1207:
	.loc 1 3134 0
	movzbl	life_data_ok@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L1209
	.loc 1 3135 0
	call	clear_bb_flags@PLT
.L1209:
	.loc 1 3140 0
	movl	$0, -12(%ebp)
.L1211:
	.loc 1 3143 0
	movl	$0, cond_exec_changed_p@GOTOFF(%ebx)
	.loc 1 3144 0
	addl	$1, -12(%ebp)
	.loc 1 3151 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1212
.L1215:
.LBB34:
	.loc 1 3155 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1214:
	.loc 1 3154 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_if_header
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L1215
.LBE34:
	.loc 1 3151 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L1212:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L1214
	.loc 1 3163 0
	movl	cond_exec_changed_p@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1211
	.loc 1 3170 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1219
	.loc 1 3171 0
	movl	post_dominators@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
.L1219:
	.loc 1 3173 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1221
	.loc 1 3174 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L1221:
	.loc 1 3176 0
	call	clear_aux_for_blocks@PLT
	.loc 1 3179 0
	movl	num_removed_blocks@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1223
	movzbl	life_data_ok@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L1223
	.loc 1 3182 0
	call	max_reg_num@PLT
	movl	max_regno@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jle	.L1226
	.loc 1 3184 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3185 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
.L1226:
	.loc 1 3187 0
	movl	$25, 4(%esp)
	movl	$2, (%esp)
	call	update_life_info_in_dirty_blocks@PLT
.L1223:
	.loc 1 3193 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1231
	movl	num_possible_if_blocks@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jle	.L1231
	.loc 1 3195 0
	movl	num_possible_if_blocks@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3198 0
	movl	num_updated_if_blocks@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3201 0
	movl	num_removed_blocks@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1231:
	.loc 1 3209 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	if_convert, .-if_convert
	.local	num_possible_if_blocks
	.comm	num_possible_if_blocks,4,4
	.local	num_updated_if_blocks
	.comm	num_updated_if_blocks,4,4
	.local	num_removed_blocks
	.comm	num_removed_blocks,4,4
	.local	cond_exec_changed_p
	.comm	cond_exec_changed_p,4,4
	.local	life_data_ok
	.comm	life_data_ok,1,1
	.local	post_dominators
	.comm	post_dominators,4,4
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
	.long	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
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
	.long	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI9-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI15-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.long	.LCFI19-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI24
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI57-.LCFI54
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
	.long	.LCFI58-.LFB29
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI62-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI63
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
	.long	.LCFI68-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI69
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
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI81-.LCFI77
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI82-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI86-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI87
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
	.long	.LCFI92-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
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
	.long	.LCFI96-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
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
	.long	.LCFI100-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
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
	.long	.LCFI104-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI108-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI109
	.byte	0x83
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
	.long	.LCFI113-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
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
	.long	.LCFI119-.LCFI117
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
	.long	.LCFI120-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI121
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
	.long	.LCFI126-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI127
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
	.long	.LCFI130-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI131
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
	.long	.LCFI135-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI136
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI140-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
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
	.byte	0x4
	.long	.LCFI145-.LCFI143
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
	.long	.LCFI146-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI149-.LCFI147
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
	.file 2 "../../../kgccfe/gnu/basic-block.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/MIPS/config.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 9 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 10 "../../../kgccfe/gnu/varray.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kgccfe/gnu/regs.h"
	.file 13 "../../../kgccfe/gnu/flags.h"
	.file 14 "../../../kgccfe/gnu/output.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
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
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x41c3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/ifcvt.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa5
	.uleb128 0x3
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x8a
	.long	0xa8e
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
	.long	0x796
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x3
	.byte	0x94
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x16ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac
	.uleb128 0x4
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x16bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x9
	.long	0x37f
	.string	"processor_type"
	.byte	0x4
	.byte	0x8
	.byte	0x3b
	.uleb128 0xa
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0xa
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0xa
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0xa
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0xa
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0xa
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0xa
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0xa
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0xa
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0xa
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0xa
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0xa
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0xa
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0xa
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0xa
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0xa
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0xa
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0xa
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0xa
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0xa
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x385
	.uleb128 0xb
	.long	0x38a
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x399
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
	.byte	0x11
	.byte	0x3b
	.long	0x40d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x457
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x438
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x38a
	.uleb128 0x2
	.string	"FILE"
	.byte	0xf
	.byte	0x2e
	.long	0x488
	.uleb128 0xf
	.long	0x703
	.long	.LASF3
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0x10
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x448
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x3f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x10
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x760
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x10
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x770
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x776
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x11
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x754
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x711
	.uleb128 0x3
	.byte	0x4
	.long	0x488
	.uleb128 0x12
	.long	0x770
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x703
	.uleb128 0x12
	.long	0x786
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x27
	.byte	0x0
	.uleb128 0x12
	.long	0x796
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x17
	.byte	0x0
	.uleb128 0x9
	.long	0x9df
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0xa
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xa
	.string	"BImode"
	.sleb128 1
	.uleb128 0xa
	.string	"QImode"
	.sleb128 2
	.uleb128 0xa
	.string	"HImode"
	.sleb128 3
	.uleb128 0xa
	.string	"SImode"
	.sleb128 4
	.uleb128 0xa
	.string	"DImode"
	.sleb128 5
	.uleb128 0xa
	.string	"TImode"
	.sleb128 6
	.uleb128 0xa
	.string	"OImode"
	.sleb128 7
	.uleb128 0xa
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xa
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xa
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xa
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xa
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xa
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xa
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xa
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xa
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xa
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xa
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xa
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xa
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xa
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xa
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xa
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xa
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xa
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xa
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xa
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xa
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xa
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xa
	.string	"COImode"
	.sleb128 30
	.uleb128 0xa
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xa
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xa
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xa
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xa
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xa
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xa
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xa
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xa
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xa
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xa
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xa
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xa
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xa
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xa
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xa
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xa
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xa
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xa
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xa
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xa
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xa
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xa
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xa
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x14
	.long	0xa8e
	.long	.LASF4
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0xa
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xa
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xa
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xa
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xa
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xa
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xa
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xa
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xa
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xa
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x9
	.long	0x125d
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xa
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xa
	.string	"NIL"
	.sleb128 1
	.uleb128 0xa
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xa
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xa
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xa
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xa
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xa
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xa
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xa
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xa
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xa
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xa
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xa
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xa
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xa
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xa
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xa
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xa
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xa
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xa
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xa
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xa
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xa
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xa
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xa
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xa
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xa
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xa
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xa
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xa
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xa
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xa
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xa
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xa
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xa
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xa
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xa
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xa
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xa
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xa
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xa
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xa
	.string	"INSN"
	.sleb128 42
	.uleb128 0xa
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xa
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xa
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xa
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xa
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xa
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xa
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xa
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xa
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xa
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xa
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xa
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xa
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xa
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xa
	.string	"SET"
	.sleb128 57
	.uleb128 0xa
	.string	"USE"
	.sleb128 58
	.uleb128 0xa
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xa
	.string	"CALL"
	.sleb128 60
	.uleb128 0xa
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xa
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xa
	.string	"RESX"
	.sleb128 63
	.uleb128 0xa
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xa
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xa
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xa
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xa
	.string	"CONST"
	.sleb128 68
	.uleb128 0xa
	.string	"PC"
	.sleb128 69
	.uleb128 0xa
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xa
	.string	"REG"
	.sleb128 71
	.uleb128 0xa
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xa
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xa
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xa
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xa
	.string	"MEM"
	.sleb128 76
	.uleb128 0xa
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xa
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xa
	.string	"CC0"
	.sleb128 79
	.uleb128 0xa
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xa
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xa
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xa
	.string	"COND"
	.sleb128 83
	.uleb128 0xa
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xa
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xa
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xa
	.string	"NEG"
	.sleb128 87
	.uleb128 0xa
	.string	"MULT"
	.sleb128 88
	.uleb128 0xa
	.string	"DIV"
	.sleb128 89
	.uleb128 0xa
	.string	"MOD"
	.sleb128 90
	.uleb128 0xa
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xa
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xa
	.string	"AND"
	.sleb128 93
	.uleb128 0xa
	.string	"IOR"
	.sleb128 94
	.uleb128 0xa
	.string	"XOR"
	.sleb128 95
	.uleb128 0xa
	.string	"NOT"
	.sleb128 96
	.uleb128 0xa
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xa
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xa
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xa
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xa
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xa
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xa
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xa
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xa
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xa
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xa
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xa
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xa
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xa
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xa
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xa
	.string	"NE"
	.sleb128 112
	.uleb128 0xa
	.string	"EQ"
	.sleb128 113
	.uleb128 0xa
	.string	"GE"
	.sleb128 114
	.uleb128 0xa
	.string	"GT"
	.sleb128 115
	.uleb128 0xa
	.string	"LE"
	.sleb128 116
	.uleb128 0xa
	.string	"LT"
	.sleb128 117
	.uleb128 0xa
	.string	"GEU"
	.sleb128 118
	.uleb128 0xa
	.string	"GTU"
	.sleb128 119
	.uleb128 0xa
	.string	"LEU"
	.sleb128 120
	.uleb128 0xa
	.string	"LTU"
	.sleb128 121
	.uleb128 0xa
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xa
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xa
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xa
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xa
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xa
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xa
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xa
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xa
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xa
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xa
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xa
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xa
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xa
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xa
	.string	"FIX"
	.sleb128 136
	.uleb128 0xa
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xa
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xa
	.string	"ABS"
	.sleb128 139
	.uleb128 0xa
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xa
	.string	"FFS"
	.sleb128 141
	.uleb128 0xa
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xa
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xa
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xa
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xa
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xa
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xa
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xa
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xa
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xa
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xa
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xa
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xa
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xa
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xa
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xa
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xa
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xa
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xa
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xa
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xa
	.string	"PHI"
	.sleb128 162
	.uleb128 0xa
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x15
	.long	0x1337
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x399
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
	.long	0x125d
	.uleb128 0xf
	.long	0x13ae
	.long	.LASF5
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
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
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF5
	.byte	0x3
	.byte	0x6e
	.long	0x1352
	.uleb128 0x17
	.long	0x148b
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x40d
	.uleb128 0x18
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x392
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x399
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x37f
	.uleb128 0x18
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9a
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x199
	.uleb128 0x18
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x796
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1337
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x149f
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x1507
	.uleb128 0x18
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e1
	.uleb128 0x18
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1690
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1696
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x148b
	.uleb128 0x4
	.long	0x1507
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x1d03
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x1d03
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14a5
	.uleb128 0x4
	.long	0x1690
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x1e72
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x1e72
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x1dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x1dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x1dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x1dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x1690
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x1690
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x20ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x2
	.byte	0xdf
	.long	0x1dba
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x150d
	.uleb128 0x3
	.byte	0x4
	.long	0x13ae
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x13b9
	.uleb128 0x12
	.long	0x16bb
	.long	0x169c
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x16cb
	.long	0x9a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x1707
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0xa
	.byte	0x32
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0xa
	.byte	0x36
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.long	0x18a2
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.uleb128 0xa
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xa
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xa
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xa
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xa
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xa
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xa
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xa
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xa
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xa
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xa
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xa
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xa
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xa
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xa
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xa
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xa
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xa
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xa
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xa
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xa
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x17
	.long	0x199e
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.uleb128 0x18
	.string	"c"
	.byte	0xa
	.byte	0x56
	.long	0x760
	.uleb128 0x18
	.string	"uc"
	.byte	0xa
	.byte	0x58
	.long	0x199e
	.uleb128 0x18
	.string	"s"
	.byte	0xa
	.byte	0x5a
	.long	0x19ae
	.uleb128 0x18
	.string	"us"
	.byte	0xa
	.byte	0x5c
	.long	0x19be
	.uleb128 0x18
	.string	"i"
	.byte	0xa
	.byte	0x5e
	.long	0x19ce
	.uleb128 0x18
	.string	"u"
	.byte	0xa
	.byte	0x60
	.long	0x19de
	.uleb128 0x18
	.string	"l"
	.byte	0xa
	.byte	0x62
	.long	0x19ee
	.uleb128 0x18
	.string	"ul"
	.byte	0xa
	.byte	0x64
	.long	0x19fe
	.uleb128 0x18
	.string	"hint"
	.byte	0xa
	.byte	0x66
	.long	0x1a0e
	.uleb128 0x18
	.string	"uhint"
	.byte	0xa
	.byte	0x68
	.long	0x1a1e
	.uleb128 0x18
	.string	"generic"
	.byte	0xa
	.byte	0x6a
	.long	0x1a2e
	.uleb128 0x18
	.string	"cptr"
	.byte	0xa
	.byte	0x6c
	.long	0x1a3e
	.uleb128 0x18
	.string	"rtx"
	.byte	0xa
	.byte	0x6e
	.long	0x1a4e
	.uleb128 0x18
	.string	"rtvec"
	.byte	0xa
	.byte	0x70
	.long	0x1a5e
	.uleb128 0x18
	.string	"tree"
	.byte	0xa
	.byte	0x72
	.long	0x1a6e
	.uleb128 0x18
	.string	"bitmap"
	.byte	0xa
	.byte	0x74
	.long	0x1a7e
	.uleb128 0x18
	.string	"reg"
	.byte	0xa
	.byte	0x76
	.long	0x1a8e
	.uleb128 0x18
	.string	"const_equiv"
	.byte	0xa
	.byte	0x78
	.long	0x1b8a
	.uleb128 0x18
	.string	"bb"
	.byte	0xa
	.byte	0x7a
	.long	0x1b9a
	.uleb128 0x18
	.string	"te"
	.byte	0xa
	.byte	0x7c
	.long	0x1baa
	.byte	0x0
	.uleb128 0x12
	.long	0x19ae
	.long	0x3b5
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x19be
	.long	0x400
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x19ce
	.long	0x3c6
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x19de
	.long	0x392
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x19ee
	.long	0x399
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x19fe
	.long	0x457
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a0e
	.long	0x3dc
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a1e
	.long	0x40d
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a2e
	.long	0x41e
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a3e
	.long	0x474
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a4e
	.long	0x476
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a5e
	.long	0xa5
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a6e
	.long	0x1a6
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a7e
	.long	0x1ed
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a8e
	.long	0x1507
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1a9e
	.long	0x1b84
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1b84
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xa
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0xc
	.byte	0x31
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0xc
	.byte	0x32
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0xc
	.byte	0x33
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0xc
	.byte	0x36
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0xc
	.byte	0x39
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0xc
	.byte	0x3a
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0xc
	.byte	0x3b
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0xc
	.byte	0x3c
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0xc
	.byte	0x3d
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF7
	.byte	0xc
	.byte	0x3e
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0xc
	.byte	0x3f
	.long	0x38a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a9e
	.uleb128 0x12
	.long	0x1b9a
	.long	0x16d1
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1baa
	.long	0x1690
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x1bba
	.long	0x1bc5
	.uleb128 0x13
	.long	0x3a0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1bba
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xa
	.byte	0x7e
	.long	0x18a2
	.uleb128 0x4
	.long	0x1c53
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xa
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0xa
	.byte	0x82
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0xa
	.byte	0x83
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0xa
	.byte	0x85
	.long	0x1707
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0xa
	.byte	0x86
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0xa
	.byte	0x87
	.long	0x1bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xa
	.byte	0x8a
	.long	0x1c66
	.uleb128 0x3
	.byte	0x4
	.long	0x1bde
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x3dc
	.uleb128 0x4
	.long	0x1cd7
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x1cd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x1cd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x1cdd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c7f
	.uleb128 0x12
	.long	0x1ced
	.long	0x1c6c
	.uleb128 0x13
	.long	0x3a0
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x1c7f
	.uleb128 0x3
	.byte	0x4
	.long	0x1ced
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x6
	.byte	0x42
	.long	0x14a5
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x1507
	.uleb128 0x4
	.long	0x1d84
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1a1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1d93
	.uleb128 0x3
	.byte	0x4
	.long	0x1d2a
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x2
	.byte	0x20
	.long	0x1d09
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x1d1c
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x40d
	.uleb128 0x4
	.long	0x1e6c
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1e6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1e6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x1690
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x1690
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x2
	.byte	0x86
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x2
	.byte	0x87
	.long	0x1dba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dcb
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x1e6c
	.uleb128 0x4
	.long	0x20ee
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0x10
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x2117
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x1d84
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x2117
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x2117
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x1d84
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x211d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x20ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x20ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x20ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7e
	.uleb128 0x16
	.long	.LASF7
	.byte	0x2
	.byte	0xe6
	.long	0x1690
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x2
	.value	0x170
	.long	0x210b
	.uleb128 0x3
	.byte	0x4
	.long	0x2111
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1e72
	.uleb128 0x3
	.byte	0x4
	.long	0x20ee
	.uleb128 0x1d
	.long	0x225e
	.string	"ce_if_block"
	.byte	0x34
	.byte	0x2
	.value	0x217
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x2
	.value	0x218
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x2
	.value	0x219
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x2
	.value	0x21a
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x2
	.value	0x21b
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x2
	.value	0x21c
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"num_multiple_test_blocks"
	.byte	0x2
	.value	0x21d
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"num_and_and_blocks"
	.byte	0x2
	.value	0x21e
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"num_or_or_blocks"
	.byte	0x2
	.value	0x21f
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"num_multiple_test_insns"
	.byte	0x2
	.value	0x220
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"and_and_p"
	.byte	0x2
	.value	0x221
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"num_then_insns"
	.byte	0x2
	.value	0x222
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"num_else_insns"
	.byte	0x2
	.value	0x223
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"pass"
	.byte	0x2
	.value	0x224
	.long	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x1f
	.string	"ce_if_block_t"
	.byte	0x2
	.value	0x22a
	.long	0x2123
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x20
	.long	0x22ce
	.string	"count_bb_insns"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x392
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x74
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF6
	.byte	0x1
	.byte	0x76
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF15
	.byte	0x1
	.byte	0x77
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.long	0x2314
	.string	"first_active_insn"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x9a
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x8a
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF15
	.byte	0x1
	.byte	0x8c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.long	0x237d
	.string	"last_active_insn"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	0x9a
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0xa6
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"skip_use_p"
	.byte	0x1
	.byte	0xa7
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF15
	.byte	0x1
	.byte	0xa9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.string	"head"
	.byte	0x1
	.byte	0xaa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.long	0x23b6
	.string	"seq_contains_jump"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0x392
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x24
	.long	.LASF15
	.byte	0x1
	.byte	0xc4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0x23f7
	.string	"block_fallthru"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x20f4
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0xd1
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.byte	0xd3
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x20
	.long	0x24f0
	.string	"cond_exec_process_insns"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0x392
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x24
	.long	.LASF16
	.byte	0x1
	.byte	0xe3
	.long	0x24f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"start"
	.byte	0x1
	.byte	0xe4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"test"
	.byte	0x1
	.byte	0xe6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"prob_val"
	.byte	0x1
	.byte	0xe7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.string	"mod_ok"
	.byte	0x1
	.byte	0xe8
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x23
	.string	"must_be_last"
	.byte	0x1
	.byte	0xea
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF15
	.byte	0x1
	.byte	0xeb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"xtest"
	.byte	0x1
	.byte	0xec
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"pattern"
	.byte	0x1
	.byte	0xed
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"insn_done"
	.byte	0x1
	.value	0x132
	.long	.L60
	.uleb128 0x26
	.long	.LASF17
	.long	0x3e7e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11142
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x225e
	.uleb128 0x27
	.long	0x2572
	.string	"cond_exec_get_condition"
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	0x9a
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x13e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"test_if"
	.byte	0x1
	.value	0x140
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x140
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"rev"
	.byte	0x1
	.value	0x14d
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2795
	.string	"cond_exec_process_if_block"
	.byte	0x1
	.value	0x160
	.byte	0x1
	.long	0x392
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x15e
	.long	0x24f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"do_multiple_p"
	.byte	0x1
	.value	0x15f
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x161
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x162
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x163
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.string	"test_expr"
	.byte	0x1
	.value	0x164
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"then_start"
	.byte	0x1
	.value	0x165
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"then_end"
	.byte	0x1
	.value	0x166
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"else_start"
	.byte	0x1
	.value	0x167
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.string	"else_end"
	.byte	0x1
	.value	0x168
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"max"
	.byte	0x1
	.value	0x169
	.long	0x392
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"then_mod_ok"
	.byte	0x1
	.value	0x16a
	.long	0x392
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"true_expr"
	.byte	0x1
	.value	0x16b
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"false_expr"
	.byte	0x1
	.value	0x16c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"true_prob_val"
	.byte	0x1
	.value	0x16d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"false_prob_val"
	.byte	0x1
	.value	0x16e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"n_insns"
	.byte	0x1
	.value	0x16f
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"false_code"
	.byte	0x1
	.value	0x170
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"fail"
	.byte	0x1
	.value	0x22c
	.long	.L122
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1c1
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x1c2
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x29
	.string	"start"
	.byte	0x1
	.value	0x1c9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0x1c9
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x282d
	.string	"noce_if_info"
	.byte	0x24
	.byte	0x1
	.value	0x23d
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x23e
	.long	0x20f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x1
	.value	0x23f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x1
	.value	0x23f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x240
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.value	0x240
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.value	0x240
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x1
	.value	0x241
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x1
	.value	0x241
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x1
	.value	0x241
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x27
	.long	0x28e5
	.string	"noce_emit_store_flag"
	.byte	0x1
	.value	0x25b
	.byte	0x1
	.long	0x9a
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x258
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x259
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.value	0x25a
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LASF24
	.byte	0x1
	.value	0x25a
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x25c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"cond_complex"
	.byte	0x1
	.value	0x25d
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x25e
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x271
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2795
	.uleb128 0x2d
	.long	0x2988
	.string	"noce_emit_move_insn"
	.byte	0x1
	.value	0x296
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x295
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x295
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"outmode"
	.byte	0x1
	.value	0x297
	.long	0x796
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"inmode"
	.byte	0x1
	.value	0x297
	.long	0x796
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"outer"
	.byte	0x1
	.value	0x298
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"inner"
	.byte	0x1
	.value	0x298
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"bitpos"
	.byte	0x1
	.value	0x299
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.long	0x29f2
	.string	"noce_try_store_flag"
	.byte	0x1
	.value	0x2b3
	.byte	0x1
	.long	0x392
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x2b2
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x2b4
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x2b5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x2b5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x2ae0
	.string	"noce_try_store_flag_constants"
	.byte	0x1
	.value	0x2de
	.byte	0x1
	.long	0x392
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x2dd
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x2df
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x2df
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x2e0
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"itrue"
	.byte	0x1
	.value	0x2e1
	.long	0x40d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"ifalse"
	.byte	0x1
	.value	0x2e1
	.long	0x40d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"diff"
	.byte	0x1
	.value	0x2e1
	.long	0x40d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x2e1
	.long	0x40d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x2e2
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"can_reverse"
	.byte	0x1
	.value	0x2e2
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"mode"
	.byte	0x1
	.value	0x2e3
	.long	0x796
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.long	0x2b62
	.string	"noce_try_store_flag_inc"
	.byte	0x1
	.value	0x363
	.byte	0x1
	.long	0x392
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x362
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x364
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x364
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"subtract"
	.byte	0x1
	.value	0x365
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x365
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x2bd1
	.string	"noce_try_store_flag_mask"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	0x392
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x3a1
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x3a3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x3a3
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x3a4
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x2c84
	.string	"noce_emit_cmove"
	.byte	0x1
	.value	0x3d9
	.byte	0x1
	.long	0x9a
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x3d6
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x3d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x3d8
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"cmp_a"
	.byte	0x1
	.value	0x3d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"cmp_b"
	.byte	0x1
	.value	0x3d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.string	"vfalse"
	.byte	0x1
	.value	0x3d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2c
	.string	"vtrue"
	.byte	0x1
	.value	0x3d7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x3e1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2ce9
	.string	"noce_try_cmove"
	.byte	0x1
	.value	0x410
	.byte	0x1
	.long	0x392
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x40f
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x411
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x412
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x412
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x27
	.long	0x2e17
	.string	"noce_try_cmove_arith"
	.byte	0x1
	.value	0x439
	.byte	0x1
	.long	0x392
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x438
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x43a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x43b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x43c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x43d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x43d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x43e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x43e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"is_mem"
	.byte	0x1
	.value	0x43f
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x440
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"end_seq_and_fail"
	.byte	0x1
	.value	0x4d5
	.long	.L368
	.uleb128 0x2e
	.long	0x2de0
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x464
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x2dfd
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x47a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x493
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2f71
	.string	"noce_get_alt_condition"
	.byte	0x1
	.value	0x4e3
	.byte	0x1
	.long	0x9a
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x4e0
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.value	0x4e1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x4e2
	.long	0x16cb
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x4e4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x4e4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x4e4
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"reverse"
	.byte	0x1
	.value	0x4e5
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x504
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"op_a"
	.byte	0x1
	.value	0x505
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"op_b"
	.byte	0x1
	.value	0x506
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"prev_insn"
	.byte	0x1
	.value	0x507
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x2f37
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x50f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x51b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x29
	.string	"desired_val"
	.byte	0x1
	.value	0x527
	.long	0x40d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"actual_val"
	.byte	0x1
	.value	0x528
	.long	0x40d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3018
	.string	"noce_try_minmax"
	.byte	0x1
	.value	0x576
	.byte	0x1
	.long	0x392
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x575
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x577
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x577
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x577
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x577
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x578
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"op"
	.byte	0x1
	.value	0x578
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"unsignedp"
	.byte	0x1
	.value	0x579
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x27
	.long	0x30ec
	.string	"noce_try_abs"
	.byte	0x1
	.value	0x5da
	.byte	0x1
	.long	0x392
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x28
	.long	.LASF22
	.byte	0x1
	.value	0x5d9
	.long	0x28e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF25
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.value	0x5db
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"negate"
	.byte	0x1
	.value	0x5dc
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x5ff
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x5ff
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x3186
	.string	"noce_get_condition"
	.byte	0x1
	.value	0x652
	.byte	0x1
	.long	0x9a
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x650
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF26
	.byte	0x1
	.value	0x651
	.long	0x16cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x653
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"set"
	.byte	0x1
	.value	0x653
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0x653
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x653
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"reverse"
	.byte	0x1
	.value	0x654
	.long	0x2274
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.uleb128 0x27
	.long	0x31be
	.string	"noce_operand_ok"
	.byte	0x1
	.value	0x695
	.byte	0x1
	.long	0x392
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2c
	.string	"op"
	.byte	0x1
	.value	0x694
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x32fc
	.string	"noce_process_if_block"
	.byte	0x1
	.value	0x6a8
	.byte	0x1
	.long	0x392
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x6a7
	.long	0x32fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x6a9
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x6aa
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x6ab
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x6ac
	.long	0x2795
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x6ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x6ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"set_a"
	.byte	0x1
	.value	0x6ae
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"set_b"
	.byte	0x1
	.value	0x6ae
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"orig_x"
	.byte	0x1
	.value	0x6af
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x6af
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x6af
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x6af
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x6b0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x6b0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"success"
	.byte	0x1
	.value	0x76a
	.long	.L723
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x73c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2123
	.uleb128 0x27
	.long	0x333c
	.string	"process_if_block"
	.byte	0x1
	.value	0x793
	.byte	0x1
	.long	0x392
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x792
	.long	0x32fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x342d
	.string	"merge_if_block"
	.byte	0x1
	.value	0x7b2
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x7b1
	.long	0x32fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x7b3
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x7b4
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x7b5
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x7b6
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"combo_bb"
	.byte	0x1
	.value	0x7b7
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x33fe
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x7c1
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x7c2
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"fallthru"
	.byte	0x1
	.value	0x7c3
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0x341c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x29
	.string	"last"
	.byte	0x1
	.value	0x7f0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	.LASF17
	.long	0x3e79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13034
	.byte	0x0
	.uleb128 0x27
	.long	0x34ca
	.string	"find_if_header"
	.byte	0x1
	.value	0x83e
	.byte	0x1
	.long	0x20f4
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0x83c
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"pass"
	.byte	0x1
	.value	0x83d
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x83f
	.long	0x225e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF27
	.byte	0x1
	.value	0x840
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF28
	.byte	0x1
	.value	0x841
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"success"
	.byte	0x1
	.value	0x877
	.long	.L806
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x853
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x358e
	.string	"block_jumps_and_fallthru_p"
	.byte	0x1
	.value	0x886
	.byte	0x1
	.long	0x392
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2c
	.string	"cur_bb"
	.byte	0x1
	.value	0x884
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"target_bb"
	.byte	0x1
	.value	0x885
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x887
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"fallthru_p"
	.byte	0x1
	.value	0x888
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"jump_p"
	.byte	0x1
	.value	0x889
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0x88a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0x88b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.string	"n_insns"
	.byte	0x1
	.value	0x88c
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x27
	.long	0x369b
	.string	"find_if_block"
	.byte	0x1
	.value	0x8cc
	.byte	0x1
	.long	0x392
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x28
	.long	.LASF16
	.byte	0x1
	.value	0x8cb
	.long	0x32fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF10
	.byte	0x1
	.value	0x8cd
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x8ce
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x8cf
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x8d0
	.long	0x20f4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0x8d1
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.value	0x8d2
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"then_predecessors"
	.byte	0x1
	.value	0x8d3
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"else_predecessors"
	.byte	0x1
	.value	0x8d4
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF29
	.byte	0x1
	.value	0x8d5
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"next"
	.byte	0x1
	.value	0x8d6
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x29
	.string	"last_insn"
	.byte	0x1
	.value	0x940
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x37df
	.string	"find_cond_trap"
	.byte	0x1
	.value	0x9a9
	.byte	0x1
	.long	0x392
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0x9a7
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0x9a8
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0x9a8
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x9aa
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0x9ab
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x1
	.value	0x9ac
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"trap_bb"
	.byte	0x1
	.value	0x9ac
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"trap"
	.byte	0x1
	.value	0x9ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x9ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0x9ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x9ad
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"seq"
	.byte	0x1
	.value	0x9ad
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x9ae
	.long	0xa8e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x37b2
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x29
	.string	"new_ce_info"
	.byte	0x1
	.value	0x9ef
	.long	0x2123
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x29
	.string	"lab"
	.byte	0x1
	.value	0x9fa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"newjump"
	.byte	0x1
	.value	0x9fa
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x382b
	.string	"block_has_only_trap"
	.byte	0x1
	.value	0xa0e
	.byte	0x1
	.long	0x9a
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0xa0d
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"trap"
	.byte	0x1
	.value	0xa0f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x38d9
	.string	"find_if_case_1"
	.byte	0x1
	.value	0xa74
	.byte	0x1
	.long	0x392
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0xa72
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xa73
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xa73
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0xa75
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0xa76
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"new_bb"
	.byte	0x1
	.value	0xa76
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.value	0xa77
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"then_bb_index"
	.byte	0x1
	.value	0xa78
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x396c
	.string	"find_if_case_2"
	.byte	0x1
	.value	0xabe
	.byte	0x1
	.long	0x392
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0xabc
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.value	0xabd
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.value	0xabd
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0xabf
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF12
	.byte	0x1
	.value	0xac0
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.value	0xac1
	.long	0x1e72
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0xac2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	0x39b0
	.string	"find_memory"
	.byte	0x1
	.value	0xb08
	.byte	0x1
	.long	0x392
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2c
	.string	"px"
	.byte	0x1
	.value	0xb06
	.long	0x16cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"data"
	.byte	0x1
	.value	0xb07
	.long	0x474
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x27
	.long	0x3dd6
	.string	"dead_or_predicable"
	.byte	0x1
	.value	0xb19
	.byte	0x1
	.long	0x392
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0xb16
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"merge_bb"
	.byte	0x1
	.value	0xb16
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF32
	.byte	0x1
	.value	0xb16
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"new_dest"
	.byte	0x1
	.value	0xb17
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF23
	.byte	0x1
	.value	0xb18
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.string	"head"
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x29
	.string	"old_dest"
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.string	"new_label"
	.byte	0x1
	.value	0xb1a
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.string	"no_body"
	.byte	0x1
	.value	0xbdf
	.long	.L1045
	.uleb128 0x25
	.string	"cancel"
	.byte	0x1
	.value	0xc21
	.long	.L1155
	.uleb128 0x2e
	.long	0x3afc
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0xb30
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0xb30
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.value	0xb30
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x2e
	.long	0x3dab
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.value	0xb76
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.value	0xb76
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.string	"prev"
	.byte	0x1
	.value	0xb76
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"merge_set_head"
	.byte	0x1
	.value	0xb77
	.long	0x1d99
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.string	"tmp_head"
	.byte	0x1
	.value	0xb77
	.long	0x1d99
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x29
	.string	"test_live_head"
	.byte	0x1
	.value	0xb77
	.long	0x1d99
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x29
	.string	"test_set_head"
	.byte	0x1
	.value	0xb77
	.long	0x1d99
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x29
	.string	"merge_set"
	.byte	0x1
	.value	0xb78
	.long	0x1dac
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.value	0xb78
	.long	0x1dac
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.string	"test_live"
	.byte	0x1
	.value	0xb78
	.long	0x1dac
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.string	"test_set"
	.byte	0x1
	.value	0xb78
	.long	0x1dac
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"pbi"
	.byte	0x1
	.value	0xb79
	.long	0x3ded
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0xb7a
	.long	0x392
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"fail"
	.byte	0x1
	.value	0xb7a
	.long	0x392
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.long	0x3ca8
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x29
	.string	"ptr_"
	.byte	0x1
	.value	0xbae
	.long	0x1d03
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"indx_"
	.byte	0x1
	.value	0xbae
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0xbae
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0xbae
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x29
	.string	"word_"
	.byte	0x1
	.value	0xbae
	.long	0x1c6c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x29
	.string	"mask_"
	.byte	0x1
	.value	0xbae
	.long	0x1c6c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3d2b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x29
	.string	"ptr_"
	.byte	0x1
	.value	0xbd0
	.long	0x1d03
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"indx_"
	.byte	0x1
	.value	0xbd0
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0xbd0
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0xbd0
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x29
	.string	"word_"
	.byte	0x1
	.value	0xbd0
	.long	0x1c6c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x29
	.string	"mask_"
	.byte	0x1
	.value	0xbd0
	.long	0x1c6c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x29
	.string	"ptr_"
	.byte	0x1
	.value	0xbd4
	.long	0x1d03
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"indx_"
	.byte	0x1
	.value	0xbd4
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.value	0xbd4
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF34
	.byte	0x1
	.value	0xbd4
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x29
	.string	"word_"
	.byte	0x1
	.value	0xbd4
	.long	0x1c6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x29
	.string	"mask_"
	.byte	0x1
	.value	0xbd4
	.long	0x1c6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0xbfe
	.long	0x1dba
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.value	0xbfe
	.long	0x1dba
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"propagate_block_info"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3dd6
	.uleb128 0x2f
	.long	0x3e69
	.byte	0x1
	.string	"if_convert"
	.byte	0x1
	.value	0xc2b
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2c
	.string	"x_life_data_ok"
	.byte	0x1
	.value	0xc2a
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0xc2c
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"pass"
	.byte	0x1
	.value	0xc2d
	.long	0x392
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x29
	.string	"new_bb"
	.byte	0x1
	.value	0xc51
	.long	0x20f4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x3e79
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0x3e69
	.uleb128 0xb
	.long	0x786
	.uleb128 0x23
	.string	"num_possible_if_blocks"
	.byte	0x1
	.byte	0x43
	.long	0x392
	.byte	0x5
	.byte	0x3
	.long	num_possible_if_blocks
	.uleb128 0x23
	.string	"num_updated_if_blocks"
	.byte	0x1
	.byte	0x47
	.long	0x392
	.byte	0x5
	.byte	0x3
	.long	num_updated_if_blocks
	.uleb128 0x23
	.string	"num_removed_blocks"
	.byte	0x1
	.byte	0x4a
	.long	0x392
	.byte	0x5
	.byte	0x3
	.long	num_removed_blocks
	.uleb128 0x23
	.string	"cond_exec_changed_p"
	.byte	0x1
	.byte	0x4d
	.long	0x392
	.byte	0x5
	.byte	0x3
	.long	cond_exec_changed_p
	.uleb128 0x23
	.string	"life_data_ok"
	.byte	0x1
	.byte	0x50
	.long	0x2274
	.byte	0x5
	.byte	0x3
	.long	life_data_ok
	.uleb128 0x23
	.string	"post_dominators"
	.byte	0x1
	.byte	0x53
	.long	0x20ff
	.byte	0x5
	.byte	0x3
	.long	post_dominators
	.uleb128 0x30
	.string	"target_flags"
	.byte	0x8
	.byte	0x21
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"mips_tune"
	.byte	0x8
	.byte	0xa4
	.long	0x1ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"mips_isa"
	.byte	0x8
	.byte	0xa6
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x3f8d
	.long	0x9df
	.uleb128 0x13
	.long	0x3a0
	.byte	0x35
	.byte	0x0
	.uleb128 0x31
	.long	.LASF4
	.byte	0x5
	.byte	0x34
	.long	0x3f9a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x3f7d
	.uleb128 0x12
	.long	0x3faf
	.long	0x3c6
	.uleb128 0x13
	.long	0x3a0
	.byte	0x35
	.byte	0x0
	.uleb128 0x30
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0x3fc5
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x3f9f
	.uleb128 0x12
	.long	0x3fda
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x3fed
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x3fca
	.uleb128 0x12
	.long	0x4002
	.long	0x9a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x80
	.byte	0x0
	.uleb128 0x32
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x6a4
	.long	0x3ff2
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"const_true_rtx"
	.byte	0x3
	.value	0x6aa
	.long	0x9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x4049
	.long	0x9a
	.uleb128 0x13
	.long	0x3a0
	.byte	0x2
	.uleb128 0x13
	.long	0x3a0
	.byte	0x35
	.byte	0x0
	.uleb128 0x32
	.string	"const_tiny_rtx"
	.byte	0x3
	.value	0x6ac
	.long	0x4033
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flow2_completed"
	.byte	0x3
	.value	0x75e
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"reload_completed"
	.byte	0x3
	.value	0x763
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"cse_not_expected"
	.byte	0x3
	.value	0x770
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"no_new_pseudos"
	.byte	0x3
	.value	0x774
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x40db
	.long	0x38a
	.uleb128 0x13
	.long	0x3a0
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"fixed_regs"
	.byte	0x9
	.value	0x18b
	.long	0x40cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"global_regs"
	.byte	0x9
	.value	0x1b4
	.long	0x40cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"basic_block_info"
	.byte	0x2
	.byte	0xfe
	.long	0x1c53
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	0x4130
	.long	0x150d
	.uleb128 0x13
	.long	0x3a0
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x4120
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"max_regno"
	.byte	0xc
	.byte	0x2c
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_unsafe_math_optimizations"
	.byte	0xd
	.value	0x173
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_finite_math_only"
	.byte	0xd
	.value	0x177
	.long	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"rtl_dump_file"
	.byte	0xe
	.value	0x1b8
	.long	0x41c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x47c
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x41c7
	.long	0x3df3
	.string	"if_convert"
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
.LASF12:
	.string	"else_bb"
.LASF8:
	.string	"probability"
.LASF27:
	.string	"then_edge"
.LASF15:
	.string	"insn"
.LASF32:
	.string	"other_bb"
.LASF10:
	.string	"test_bb"
.LASF7:
	.string	"basic_block"
.LASF19:
	.string	"insn_a"
.LASF20:
	.string	"insn_b"
.LASF26:
	.string	"earliest"
.LASF30:
	.string	"then_succ"
.LASF25:
	.string	"target"
.LASF22:
	.string	"if_info"
.LASF9:
	.string	"dominance_info"
.LASF34:
	.string	"word_num_"
.LASF5:
	.string	"mem_attrs"
.LASF21:
	.string	"cond_earliest"
.LASF0:
	.string	"code"
.LASF28:
	.string	"else_edge"
.LASF23:
	.string	"reversep"
.LASF1:
	.string	"jump"
.LASF14:
	.string	"last_test_bb"
.LASF6:
	.string	"count"
.LASF17:
	.string	"__FUNCTION__"
.LASF18:
	.string	"cond"
.LASF3:
	.string	"_IO_FILE"
.LASF16:
	.string	"ce_info"
.LASF31:
	.string	"else_succ"
.LASF11:
	.string	"then_bb"
.LASF29:
	.string	"cur_edge"
.LASF24:
	.string	"normalize"
.LASF13:
	.string	"join_bb"
.LASF4:
	.string	"mode_class"
.LASF33:
	.string	"bit_num_"
.LASF2:
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
